import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Handles all key derivation and storage for Plural Rabbit's encrypted SQLite.
///
/// Strategy (Technical doc §16.1):
/// ─────────────────────────────────────────────────────────────────────────
/// WITH master password:
///   key = PBKDF2-HMAC-SHA256(password, salt, iterations=310_000, keyLen=32)
///   salt is a random 32-byte value stored in SharedPreferences (not sensitive)
///   The derived key is used directly as the SQLCipher passphrase
///
/// WITHOUT master password:
///   A random 256-bit key is generated on first launch
///   It is stored in the Android Keystore via flutter_secure_storage
///   (accessible only to this app, bound to the device)
/// ─────────────────────────────────────────────────────────────────────────
class EncryptionService {
  static const _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
      keyCipherAlgorithm:
          KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding,
      storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding,
    ),
  );

  static const _keyAlias = 'com.pluralrabbit.app.db_key';
  static const _saltAlias = 'com.pluralrabbit.app.db_salt';

  // -------------------------------------------------------------------------
  // Public API
  // -------------------------------------------------------------------------

  /// Returns the hex-encoded 256-bit SQLCipher key, deriving or generating
  /// it as needed on first call.
  ///
  /// [masterPassword] — if the user has set a master password, pass it here.
  /// If null, falls back to device-stored random key.
  static Future<String> getDatabaseKey({String? masterPassword}) async {
    if (masterPassword != null) {
      return _deriveKeyFromPassword(masterPassword);
    }
    return _getOrCreateRandomKey();
  }

  /// Re-derives the key after a master password change. Old DB must be
  /// re-encrypted externally — this method only updates the stored key.
  static Future<String> rederiveKey(String newMasterPassword) =>
      _deriveKeyFromPassword(newMasterPassword);

  /// Verifies a candidate master password matches the stored derivation.
  /// [storedKeyHex] is what was used to open the DB last time.
  static Future<bool> verifyMasterPassword(
      String candidate, String storedKeyHex) async {
    final derived = await _deriveKeyFromPassword(candidate);
    return derived == storedKeyHex;
  }

  /// Encrypts a short string (e.g. GitHub PAT) using AES-GCM with the
  /// device key as the wrapping key.
  static Future<String> encryptString(String plaintext) async {
    final keyHex = await _getOrCreateRandomKey();
    final keyBytes = _hexToBytes(keyHex);
    final algorithm = AesGcm.with256bits();
    final secretKey = await algorithm.newSecretKeyFromBytes(keyBytes);
    final secretBox =
        await algorithm.encrypt(utf8.encode(plaintext), secretKey: secretKey);
    // Pack nonce + ciphertext + mac into a single base64 string
    final packed = secretBox.nonce +
        secretBox.cipherText +
        secretBox.mac.bytes;
    return base64Encode(packed);
  }

  static Future<String> decryptString(String cipherBase64) async {
    final keyHex = await _getOrCreateRandomKey();
    final keyBytes = _hexToBytes(keyHex);
    final algorithm = AesGcm.with256bits();
    final secretKey = await algorithm.newSecretKeyFromBytes(keyBytes);
    final packed = base64Decode(cipherBase64);

    // Nonce = first 12 bytes, MAC = last 16 bytes, ciphertext = middle
    const nonceLen = 12;
    const macLen = 16;
    final nonce = packed.sublist(0, nonceLen);
    final mac = packed.sublist(packed.length - macLen);
    final cipherText = packed.sublist(nonceLen, packed.length - macLen);

    final secretBox = SecretBox(cipherText,
        nonce: nonce, mac: Mac(mac));
    final plainBytes =
        await algorithm.decrypt(secretBox, secretKey: secretKey);
    return utf8.decode(plainBytes);
  }

  // -------------------------------------------------------------------------
  // PBKDF2 key derivation
  // -------------------------------------------------------------------------

  static Future<String> _deriveKeyFromPassword(String password) async {
    final salt = await _getOrCreateSalt();
    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac.sha256(),
      iterations: 310000,
      bits: 256,
    );
    final secretKey = await pbkdf2.deriveKey(
      secretKey: SecretKey(utf8.encode(password)),
      nonce: salt,
    );
    final keyBytes = await secretKey.extractBytes();
    return _bytesToHex(keyBytes);
  }

  static Future<List<int>> _getOrCreateSalt() async {
    final stored = await _secureStorage.read(key: _saltAlias);
    if (stored != null) return base64Decode(stored);
    final salt = _generateRandomBytes(32);
    await _secureStorage.write(key: _saltAlias, value: base64Encode(salt));
    return salt;
  }

  // -------------------------------------------------------------------------
  // Random device key (no master password path)
  // -------------------------------------------------------------------------

  static Future<String> _getOrCreateRandomKey() async {
    final stored = await _secureStorage.read(key: _keyAlias);
    if (stored != null) return stored;
    final keyBytes = _generateRandomBytes(32);
    final keyHex = _bytesToHex(keyBytes);
    await _secureStorage.write(key: _keyAlias, value: keyHex);
    return keyHex;
  }

  // -------------------------------------------------------------------------
  // Helpers
  // -------------------------------------------------------------------------

  static List<int> _generateRandomBytes(int count) {
    final rng = Random.secure();
    return List<int>.generate(count, (_) => rng.nextInt(256));
  }

  static String _bytesToHex(List<int> bytes) =>
      bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();

  static Uint8List _hexToBytes(String hex) {
    final result = Uint8List(hex.length ~/ 2);
    for (var i = 0; i < result.length; i++) {
      result[i] = int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16);
    }
    return result;
  }
}
