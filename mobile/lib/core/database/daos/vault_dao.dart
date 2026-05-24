import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables.dart';

part 'vault_dao.g.dart';

@DriftAccessor(tables: [VaultTable, ProfileVaultMembershipTable])
class VaultDao extends DatabaseAccessor<AppDatabase> with _$VaultDaoMixin {
  VaultDao(super.db);

  // -------------------------------------------------------------------------
  // Vault CRUD
  // -------------------------------------------------------------------------

  Future<List<VaultTableData>> getTopLevelVaults(String systemId) =>
      (select(vaultTable)
            ..where((t) =>
                t.systemId.equals(systemId) &
                t.parentVaultId.isNull()))
          .get();

  Future<List<VaultTableData>> getChildVaults(String parentVaultId) =>
      (select(vaultTable)
            ..where((t) => t.parentVaultId.equals(parentVaultId)))
          .get();

  Future<VaultTableData?> getVaultById(String vaultId) =>
      (select(vaultTable)..where((t) => t.vaultId.equals(vaultId)))
          .getSingleOrNull();

  Future<void> createVault(VaultTableCompanion entry) =>
      into(vaultTable).insert(entry);

  Future<void> updateVault(VaultTableCompanion entry) =>
      update(vaultTable).write(entry);

  Future<void> deleteVault(String vaultId) =>
      (delete(vaultTable)..where((t) => t.vaultId.equals(vaultId))).go();

  // -------------------------------------------------------------------------
  // Profile-Vault sharing
  // -------------------------------------------------------------------------

  Future<List<String>> getVaultsForProfile(String profileId) async {
    final memberships = await (select(profileVaultMembershipTable)
          ..where((t) => t.profileId.equals(profileId)))
        .get();
    return memberships.map((m) => m.vaultId).toList();
  }

  Future<List<String>> getProfilesInVault(String vaultId) async {
    final memberships = await (select(profileVaultMembershipTable)
          ..where((t) => t.vaultId.equals(vaultId)))
        .get();
    return memberships.map((m) => m.profileId).toList();
  }

  Future<void> addProfileToVault(String profileId, String vaultId,
      {bool isPrimary = false}) =>
      into(profileVaultMembershipTable).insertOnConflictUpdate(
        ProfileVaultMembershipTableCompanion.insert(
          profileId: profileId,
          vaultId: vaultId,
          isPrimary: Value(isPrimary),
        ),
      );

  Future<void> removeProfileFromVault(String profileId, String vaultId) =>
      (delete(profileVaultMembershipTable)
            ..where((t) =>
                t.profileId.equals(profileId) & t.vaultId.equals(vaultId)))
          .go();
}
