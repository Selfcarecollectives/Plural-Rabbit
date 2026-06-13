import 'package:drift/drift.dart' hide Type;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/providers.dart';
import '../../core/database/tables.dart';
import '../../core/encryption/password_hasher.dart';
import '../../core/history/history_writer.dart';

/// Service layer for vault CRUD and vault login verification.
class VaultService {
  VaultService(this._db, this._history);

  final AppDatabase _db;
  final HistoryWriter _history;
  final _uuid = const Uuid();

  // -------------------------------------------------------------------------
  // Create
  // -------------------------------------------------------------------------

  Future<String> createVault({
    required String systemId,
    required String name,
    String? parentVaultId,
    String themeHex = '#6B3FA0',
    String loginMode = 'open',
    String? masterPassword,
    String? githubRepoUrl,
    bool isTutorial = false,
  }) async {
    final vaultId = _uuid.v4();
    final now = DateTime.now();

    String? masterHash;
    if (masterPassword != null && masterPassword.isNotEmpty) {
      masterHash = PasswordHasher.hash(masterPassword);
    }

    await _db.vaultDao.createVault(VaultTableCompanion.insert(
      vaultId: vaultId,
      systemId: systemId,
      parentVaultId: Value(parentVaultId),
      name: name,
      themeHex: Value(themeHex),
      loginMode: Value(loginMode),
      masterPasswordHash: Value(masterHash),
      githubRepoUrl: Value(githubRepoUrl),
      isTutorial: Value(isTutorial),
      createdAt: now,
      updatedAt: now,
    ));

    await _history.logVaultCreate(vaultId);
    return vaultId;
  }

  // -------------------------------------------------------------------------
  // Update
  // -------------------------------------------------------------------------

  Future<void> updateVault({
    required String vaultId,
    String? name,
    String? themeHex,
    String? loginMode,
    String? masterPassword,
  }) async {
    String? masterHash;
    if (masterPassword != null && masterPassword.isNotEmpty) {
      masterHash = PasswordHasher.hash(masterPassword);
    }

    await _db.vaultDao.updateVault(VaultTableCompanion(
      vaultId: Value(vaultId),
      name: name != null ? Value(name) : const Value.absent(),
      themeHex: themeHex != null ? Value(themeHex) : const Value.absent(),
      loginMode: loginMode != null ? Value(loginMode) : const Value.absent(),
      masterPasswordHash:
          masterHash != null ? Value(masterHash) : const Value.absent(),
      updatedAt: Value(DateTime.now()),
    ));

    await _history.write(
      actionType: ActionType.edit,
      targetType: 'vault',
      area: HistoryArea.vaults,
      targetId: vaultId,
    );
  }

  Future<void> deleteVault(String vaultId) async {
    await _db.vaultDao.deleteVault(vaultId);
    await _history.write(
      actionType: ActionType.delete,
      targetType: 'vault',
      area: HistoryArea.vaults,
      targetId: vaultId,
    );
  }

  // -------------------------------------------------------------------------
  // Login verification
  // -------------------------------------------------------------------------

  /// Verifies that [candidatePassword] is correct for vault [vaultId].
  /// Returns true if no vault password is set OR if the hash matches.
  Future<bool> verifyVaultPassword(
      String vaultId, String candidatePassword) async {
    final vault = await _db.vaultDao.getVaultById(vaultId);
    if (vault == null) return false;
    if (vault.masterPasswordHash == null) return true; // no password set
    return PasswordHasher.verify(candidatePassword, vault.masterPasswordHash!);
  }

  /// Read vaults for display.
  Future<List<VaultTableData>> getTopLevelVaults(String systemId) =>
      _db.vaultDao.getTopLevelVaults(systemId);

  Future<List<VaultTableData>> getChildVaults(String parentVaultId) =>
      _db.vaultDao.getChildVaults(parentVaultId);

  Future<VaultTableData?> getVaultById(String vaultId) =>
      _db.vaultDao.getVaultById(vaultId);
}

final vaultServiceProvider = Provider<VaultService>((ref) => VaultService(
      ref.watch(appDatabaseProvider),
      ref.watch(historyWriterProvider),
    ));
