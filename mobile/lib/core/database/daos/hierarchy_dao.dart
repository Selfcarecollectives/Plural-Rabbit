import 'package:drift/drift.dart' hide Type;
import '../app_database.dart';
import '../tables.dart';

part 'hierarchy_dao.g.dart';

@DriftAccessor(tables: [
  HierarchyLevelTable,
  ProfileHierarchyAssignmentTable,
  PermissionRuleTable,
])
class HierarchyDao extends DatabaseAccessor<AppDatabase>
    with _$HierarchyDaoMixin {
  HierarchyDao(super.db);

  // -------------------------------------------------------------------------
  // Hierarchy Levels
  // -------------------------------------------------------------------------

  Future<List<HierarchyLevelTableData>> getLevels({String? vaultId}) {
    if (vaultId != null) {
      return (select(hierarchyLevelTable)
            ..where((t) => t.vaultId.equals(vaultId))
            ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
          .get();
    }
    return (select(hierarchyLevelTable)
          ..where((t) => t.vaultId.isNull())
          ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
        .get();
  }

  Future<void> createLevel(HierarchyLevelTableCompanion entry) =>
      into(hierarchyLevelTable).insert(entry);

  Future<void> updateLevel(HierarchyLevelTableCompanion entry) =>
      update(hierarchyLevelTable).write(entry);

  Future<void> deleteLevel(String levelId) =>
      (delete(hierarchyLevelTable)
            ..where((t) => t.levelId.equals(levelId)))
          .go();

  Future<void> reorderLevels(List<String> levelIds) async {
    for (int i = 0; i < levelIds.length; i++) {
      await (update(hierarchyLevelTable)
            ..where((t) => t.levelId.equals(levelIds[i])))
          .write(HierarchyLevelTableCompanion(orderIndex: Value(i)));
    }
  }

  // -------------------------------------------------------------------------
  // Profile → Level assignments
  // -------------------------------------------------------------------------

  Future<void> assignProfileToLevel(String profileId, String levelId) =>
      into(profileHierarchyAssignmentTable).insertOnConflictUpdate(
        ProfileHierarchyAssignmentTableCompanion.insert(
          profileId: profileId,
          levelId: levelId,
        ),
      );

  Future<void> removeProfileFromLevel(String profileId, String levelId) =>
      (delete(profileHierarchyAssignmentTable)
            ..where((t) =>
                t.profileId.equals(profileId) & t.levelId.equals(levelId)))
          .go();

  Future<List<ProfileHierarchyAssignmentTableData>> getLevelAssignmentsForProfile(
          String profileId) =>
      (select(profileHierarchyAssignmentTable)
            ..where((t) => t.profileId.equals(profileId)))
          .get();

  // -------------------------------------------------------------------------
  // Permission Rules
  // -------------------------------------------------------------------------

  Future<List<PermissionRuleTableData>> getRulesForProfile(
          String subjectProfileId) =>
      (select(permissionRuleTable)
            ..where((t) => t.subjectProfileId.equals(subjectProfileId)))
          .get();

  Future<void> upsertPermissionRule(PermissionRuleTableCompanion entry) =>
      into(permissionRuleTable).insertOnConflictUpdate(entry);

  Future<void> deletePermissionRule(String ruleId) =>
      (delete(permissionRuleTable)
            ..where((t) => t.ruleId.equals(ruleId)))
          .go();
}
