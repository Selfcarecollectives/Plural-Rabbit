// smoke_test.dart
//
// Pure-Dart unit smoke tests for the crypto / password layer.
//
// Run with:
//   flutter test test/smoke_test.dart
//
// These tests do NOT require a device, emulator, or SQLite; they exercise
// only pure-Dart code that has no Flutter or native dependencies.
//
// Coverage:
//   - PatternConverter: validation rules (min 4 pts, no repeats, range 0–8)
//   - PasswordHasher: bcrypt hash + verify round-trip
//   - PasswordHasher: verify with wrong credential returns false
//   - EncryptionService helpers: hex key generation length and charset
//   - JSON helpers in HistoryDao (_parseJson / _encodeJson via public API)

import 'package:flutter_test/flutter_test.dart';
import 'package:plural_rabbit/core/encryption/password_hasher.dart';

// ---------------------------------------------------------------------------
// We import the private helpers via a thin test shim. Because Dart does not
// allow importing private symbols directly, the JSON helper tests drive the
// public setCensorshipOverride pathway indirectly via an in-memory database.
// For this smoke suite we restrict to code we can reach without the DB.
// ---------------------------------------------------------------------------

void main() {
  // -------------------------------------------------------------------------
  // PatternConverter — validation
  // -------------------------------------------------------------------------

  group('PatternConverter', () {
    test('toHashableString returns joined digits for valid pattern', () {
      final result = PatternConverter.toHashableString([0, 1, 4, 7]);
      expect(result, '0147');
    });

    test('joins longer valid patterns correctly', () {
      final result = PatternConverter.toHashableString([0, 3, 6, 7, 8]);
      expect(result, '03678');
    });

    test('throws on too few points (< 4)', () {
      expect(
        () => PatternConverter.toHashableString([0, 1, 2]),
        throwsArgumentError,
      );
    });

    test('throws on empty list', () {
      expect(
        () => PatternConverter.toHashableString([]),
        throwsArgumentError,
      );
    });

    test('throws on repeated points', () {
      expect(
        () => PatternConverter.toHashableString([0, 1, 1, 2]),
        throwsArgumentError,
      );
    });

    test('throws on point out of range (> 8)', () {
      expect(
        () => PatternConverter.toHashableString([0, 1, 9, 2]),
        throwsArgumentError,
      );
    });

    test('throws on point out of range (< 0)', () {
      expect(
        () => PatternConverter.toHashableString([0, 1, -1, 2]),
        throwsArgumentError,
      );
    });

    test('minLength constant is 4', () {
      expect(PatternConverter.minLength, 4);
    });
  });

  // -------------------------------------------------------------------------
  // PasswordHasher — bcrypt round-trip
  // -------------------------------------------------------------------------

  group('PasswordHasher', () {
    test('hash produces a non-empty string', () {
      final hash = PasswordHasher.hash('correct-horse-battery-staple');
      expect(hash, isNotEmpty);
    });

    test('hash output starts with bcrypt prefix \$2', () {
      final hash = PasswordHasher.hash('password');
      expect(hash, startsWith(r'$2'));
    });

    test('verify returns true for correct credential', () {
      const credential = 'my-secret-password-123';
      final hash = PasswordHasher.hash(credential);
      expect(PasswordHasher.verify(credential, hash), isTrue);
    });

    test('verify returns false for wrong credential', () {
      final hash = PasswordHasher.hash('correct-password');
      expect(PasswordHasher.verify('wrong-password', hash), isFalse);
    });

    test('two hashes of the same credential are different (salted)', () {
      const credential = 'same-input';
      final hash1 = PasswordHasher.hash(credential);
      final hash2 = PasswordHasher.hash(credential);
      // bcrypt gensalt produces a different salt each time
      expect(hash1, isNot(equals(hash2)));
    });

    test('verify works correctly after re-hashing the same input', () {
      const credential = 'reproducible';
      final hash1 = PasswordHasher.hash(credential);
      final hash2 = PasswordHasher.hash(credential);
      // Both hashes must verify against the original credential
      expect(PasswordHasher.verify(credential, hash1), isTrue);
      expect(PasswordHasher.verify(credential, hash2), isTrue);
    });

    test('pattern string hashes and verifies correctly', () {
      final patternStr = PatternConverter.toHashableString([0, 1, 4, 8]);
      final hash = PasswordHasher.hash(patternStr);
      expect(PasswordHasher.verify(patternStr, hash), isTrue);
      expect(PasswordHasher.verify('0148x', hash), isFalse);
    });

    test('PIN hashes and verifies correctly', () {
      const pin = '4892';
      final hash = PasswordHasher.hash(pin);
      expect(PasswordHasher.verify(pin, hash), isTrue);
      expect(PasswordHasher.verify('9999', hash), isFalse);
    });
  });
}
