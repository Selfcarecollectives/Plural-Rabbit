import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables.dart';

part 'profile_dao.g.dart';

@DriftAccessor(tables: [
  ProfileTable,
  ProfileVaultMembershipTable,
  ProfileFolderMembershipTable,
  FusionRecordTable,
  FusionSourceTable,
])
class ProfileDao extends DatabaseAccessor<AppDatabase> with _$ProfileDaoMixin {
  ProfileDao(super.db);

  // -------------------------------------------------------------------------
  // Profile CRUD
  // -------------------------------------------------------------------------

  Future<List<ProfileTableData>> getProfilesInVault(String vaultId) async {
    final memberships = await (select(profileVaultMembershipTable)
          ..where((t) => t.vaultId.equals(vaultId)))
        .get();
    if (memberships.isEmpty) return [];
    final ids = memberships.map((m) => m.profileId).toList();
    return (select(profileTable)
          ..where((t) => t.profileId.isIn(ids) & t.isArchived.equals(false)))
        .get();
  }

  Future<List<ProfileTableData>> getAllProfiles({bool includeArchived = false}) {
    if (includeArchived) return select(profileTable).get();
    return (select(profileTable)
          ..where((t) => t.isArchived.equals(false)))
        .get();
  }

  Future<ProfileTableData?> getProfileById(String profileId) =>
      (select(profileTable)
            ..where((t) => t.profileId.equals(profileId)))
          .getSingleOrNull();

  Future<List<ProfileTableData>> getSubsystemProfiles(
          String parentProfileId) =>
      (select(profileTable)
            ..where((t) => t.parentProfileId.equals(parentProfileId)))
          .get();

  Future<void> createProfile(ProfileTableCompanion entry) =>
      into(profileTable).insert(entry);

  Future<void> updateProfile(ProfileTableCompanion entry) =>
      update(profileTable).write(entry);

  Future<void> deleteProfile(String profileId) =>
      (delete(profileTable)
            ..where((t) => t.profileId.equals(profileId)))
          .go();

  // -------------------------------------------------------------------------
  // Archival
  // -------------------------------------------------------------------------

  Future<void> archiveProfile(
      String profileId, String? reason, String? reasonLabelId) =>
      (update(profileTable)..where((t) => t.profileId.equals(profileId)))
          .write(ProfileTableCompanion(
            isArchived: const Value(true),
            archiveReason: Value(reason),
            archiveReasonLabelId: Value(reasonLabelId),
            updatedAt: Value(DateTime.now()),
          ));

  Future<void> unarchiveProfile(String profileId) =>
      (update(profileTable)..where((t) => t.profileId.equals(profileId)))
          .write(ProfileTableCompanion(
            isArchived: const Value(false),
            archiveReason: const Value(null),
            archiveReasonLabelId: const Value(null),
            updatedAt: Value(DateTime.now()),
          ));

  Future<List<ProfileTableData>> getArchivedProfiles(String vaultId) async {
    final memberships = await (select(profileVaultMembershipTable)
          ..where((t) => t.vaultId.equals(vaultId)))
        .get();
    if (memberships.isEmpty) return [];
    final ids = memberships.map((m) => m.profileId).toList();
    return (select(profileTable)
          ..where((t) => t.profileId.isIn(ids) & t.isArchived.equals(true)))
        .get();
  }

  // -------------------------------------------------------------------------
  // Fusion
  // -------------------------------------------------------------------------

  Future<void> fuseProfiles({
    required String resultProfileId,
    required String fusionId,
    required List<String> sourceProfileIds,
  }) async {
    await transaction(() async {
      await into(fusionRecordTable).insert(
        FusionRecordTableCompanion.insert(
          fusionId: fusionId,
          resultProfileId: resultProfileId,
          createdAt: DateTime.now(),
        ),
      );
      for (final sourceId in sourceProfileIds) {
        await into(fusionSourceTable).insert(
          FusionSourceTableCompanion.insert(
            fusionId: fusionId,
            sourceProfileId: sourceId,
          ),
        );
        // Archive each source profile as Fusion
        await archiveProfile(sourceId, 'Fusion', 'default_fusion_');
      }
    });
  }

  Future<List<FusionSourceTableData>> getFusionSources(String fusionId) =>
      (select(fusionSourceTable)
            ..where((t) => t.fusionId.equals(fusionId)))
          .get();

  // -------------------------------------------------------------------------
  // Folder membership
  // -------------------------------------------------------------------------

  Future<List<ProfileFolderMembershipTableData>> getFolderMembershipsForProfile(
          String profileId) =>
      (select(profileFolderMembershipTable)
            ..where((t) => t.profileId.equals(profileId)))
          .get();

  Future<void> addProfileToFolder(
      String profileId, String folderId, int orderIndex) =>
      into(profileFolderMembershipTable).insertOnConflictUpdate(
        ProfileFolderMembershipTableCompanion.insert(
          profileId: profileId,
          folderId: folderId,
          orderIndex: Value(orderIndex),
        ),
      );

  Future<void> removeProfileFromFolder(String profileId, String folderId) =>
      (delete(profileFolderMembershipTable)
            ..where((t) =>
                t.profileId.equals(profileId) & t.folderId.equals(folderId)))
          .go();

  // -------------------------------------------------------------------------
  // Status comment
  // -------------------------------------------------------------------------

  Future<void> setStatusComment(String profileId, String? comment) =>
      (update(profileTable)..where((t) => t.profileId.equals(profileId)))
          .write(ProfileTableCompanion(
            statusComment: Value(comment),
            updatedAt: Value(DateTime.now()),
          ));

  // -------------------------------------------------------------------------
  // Last active timestamp
  // -------------------------------------------------------------------------

  Future<void> touchLastActive(String profileId) =>
      (update(profileTable)..where((t) => t.profileId.equals(profileId)))
          .write(ProfileTableCompanion(
            lastActiveAt: Value(DateTime.now()),
            updatedAt: Value(DateTime.now()),
          ));
}
