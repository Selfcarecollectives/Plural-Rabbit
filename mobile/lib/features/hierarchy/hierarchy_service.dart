import 'package:drift/drift.dart' hide Type;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/providers.dart';
import '../../core/database/tables.dart';
import '../../core/history/history_writer.dart';

/// Service for managing hierarchy levels and permission rules.
class HierarchyService {
  HierarchyService(this._db, this._history);

  final AppDatabase _db;
  final HistoryWriter _history;
  final _uuid = const Uuid();

  // -------------------------------------------------------------------------
  // Level CRUD
  // -------------------------------------------------------------------------

  Future<String> createLevel({
    required String name,
    required int orderIndex,
    String operationMode = 'top_down', // top_down | bottom_up | custom
    String? vaultId,
    bool isTutorial = false,
  }) async {
    final levelId = _uuid.v4();
    final now = DateTime.now();

    await _db.hierarchyDao.createLevel(HierarchyLevelTableCompanion.insert(
      levelId: levelId,
      vaultId: Value(vaultId),
      name: name,
      orderIndex: orderIndex,
      operationMode: Value(operationMode),
      isTutorial: Value(isTutorial),
      createdAt: now,
      updatedAt: now,
    ));

    await _history.logHierarchyChange(
      subAction: 'create_level',
      targetId: levelId,
      vaultId: vaultId,
      detail: {'name': name, 'mode': operationMode},
    );
    return levelId;
  }

  Future<void> updateLevel(String levelId, String name,
      {String? operationMode}) async {
    await _db.hierarchyDao.updateLevel(HierarchyLevelTableCompanion(
      levelId: Value(levelId),
      name: Value(name),
      operationMode:
          operationMode != null ? Value(operationMode) : const Value.absent(),
      updatedAt: Value(DateTime.now()),
    ));
    await _history.logHierarchyChange(
        subAction: 'edit_level', targetId: levelId);
  }

  Future<void> deleteLevel(String levelId) async {
    await _db.hierarchyDao.deleteLevel(levelId);
    await _history.logHierarchyChange(
        subAction: 'delete_level', targetId: levelId);
  }

  Future<void> reorderLevels(List<String> levelIds,
      {String? vaultId}) async {
    await _db.hierarchyDao.reorderLevels(levelIds);
    await _history.logHierarchyChange(
      subAction: 'reorder_levels',
      vaultId: vaultId,
    );
  }

  // -------------------------------------------------------------------------
  // Assignments
  // -------------------------------------------------------------------------

  Future<void> assignProfileToLevel(
      String profileId, String levelId) async {
    await _db.hierarchyDao.assignProfileToLevel(profileId, levelId);
    await _history.logHierarchyChange(
      subAction: 'assign_profile',
      targetId: profileId,
      detail: {'levelId': levelId},
    );
  }

  Future<void> removeProfileFromLevel(
      String profileId, String levelId) async {
    await _db.hierarchyDao.removeProfileFromLevel(profileId, levelId);
    await _history.logHierarchyChange(
      subAction: 'unassign_profile',
      targetId: profileId,
      detail: {'levelId': levelId},
    );
  }

  // -------------------------------------------------------------------------
  // Permission rules
  // -------------------------------------------------------------------------

  Future<String> upsertPermissionRule({
    required String subjectProfileId,
    String? targetProfileId,
    required String targetSection,
    String accessLevel = 'full',
    String censorshipMode = 'no_censorship',
    bool isTutorial = false,
  }) async {
    final ruleId = _uuid.v4();
    final now = DateTime.now();

    await _db.hierarchyDao.upsertPermissionRule(
      PermissionRuleTableCompanion.insert(
        ruleId: ruleId,
        subjectProfileId: subjectProfileId,
        targetProfileId: Value(targetProfileId),
        targetSection: targetSection,
        accessLevel: Value(accessLevel),
        censorshipMode: Value(censorshipMode),
        isTutorial: Value(isTutorial),
        createdAt: now,
        updatedAt: now,
      ),
    );

    await _history.write(
      actionType: ActionType.permissionChange,
      targetType: 'permission_rule',
      area: HistoryArea.hierarchy,
      actingProfileId: subjectProfileId,
      detail: {
        'targetProfileId': targetProfileId,
        'section': targetSection,
        'access': accessLevel,
      },
    );
    return ruleId;
  }

  Future<void> deletePermissionRule(String ruleId) async {
    await _db.hierarchyDao.deletePermissionRule(ruleId);
    await _history.logHierarchyChange(
        subAction: 'delete_rule', targetId: ruleId);
  }

  // -------------------------------------------------------------------------
  // Read helpers
  // -------------------------------------------------------------------------

  Future<List<HierarchyLevelTableData>> getLevels({String? vaultId}) =>
      _db.hierarchyDao.getLevels(vaultId: vaultId);

  Future<List<PermissionRuleTableData>> getRulesForProfile(
          String profileId) =>
      _db.hierarchyDao.getRulesForProfile(profileId);
}

final hierarchyServiceProvider =
    Provider<HierarchyService>((ref) => HierarchyService(
          ref.watch(appDatabaseProvider),
          ref.watch(historyWriterProvider),
        ));
