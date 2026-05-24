import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables.dart';

part 'system_dao.g.dart';

@DriftAccessor(tables: [SystemTable, ArchiveReasonLabelTable, AppSettingTable])
class SystemDao extends DatabaseAccessor<AppDatabase> with _$SystemDaoMixin {
  SystemDao(super.db);

  // -------------------------------------------------------------------------
  // System row
  // -------------------------------------------------------------------------

  Future<SystemTableData?> getSystem() =>
      (select(systemTable).get()).then((rows) => rows.isNotEmpty ? rows.first : null);

  Future<void> createSystem(SystemTableCompanion entry) =>
      into(systemTable).insert(entry);

  Future<void> updateSystem(SystemTableCompanion entry) =>
      update(systemTable).write(entry);

  // -------------------------------------------------------------------------
  // Tutorial mode
  // -------------------------------------------------------------------------

  Future<void> setTutorialMode(bool enabled) => updateSystem(
        SystemTableCompanion(
          isTutorialMode: Value(enabled),
          updatedAt: Value(DateTime.now()),
        ),
      );

  /// Deletes ALL rows across every tutorial-tagged table in one transaction.
  /// Called when the user completes OR skips the onboarding tutorial.
  Future<void> wipeTutorialData() => transaction(() async {
        await (delete(systemTable)
              ..where((t) => const Constant<bool>(false)))
            .go(); // system row is never tutorial-tagged
        // Vault, Profile, HierarchyLevel, PermissionRule, Folder:
        await (delete(db.vaultTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await (delete(db.profileTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await (delete(db.hierarchyLevelTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await (delete(db.permissionRuleTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await (delete(db.folderTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await (delete(db.archiveReasonLabelTable)
              ..where((t) => t.isTutorial.equals(true)))
            .go();
        await setTutorialMode(false);
      });

  // -------------------------------------------------------------------------
  // Archive Reason Labels
  // -------------------------------------------------------------------------

  Future<List<ArchiveReasonLabelTableData>> getArchiveReasonLabels(
          String systemId) =>
      (select(archiveReasonLabelTable)
            ..where((t) => t.systemId.equals(systemId)))
          .get();

  Future<void> seedDefaultArchiveLabels(
      String systemId, bool isTutorial) async {
    final now = DateTime.now();
    await batch((b) {
      b.insertAll(archiveReasonLabelTable, [
        ArchiveReasonLabelTableCompanion.insert(
          labelId: 'default_dormancy_$systemId',
          systemId: systemId,
          name: 'Dormancy',
          isDefault: const Value(true),
          isTutorial: Value(isTutorial),
          createdAt: now,
        ),
        ArchiveReasonLabelTableCompanion.insert(
          labelId: 'default_fusion_$systemId',
          systemId: systemId,
          name: 'Fusion',
          isDefault: const Value(true),
          isTutorial: Value(isTutorial),
          createdAt: now,
        ),
      ]);
    });
  }

  Future<void> createArchiveReasonLabel(
          ArchiveReasonLabelTableCompanion entry) =>
      into(archiveReasonLabelTable).insert(entry);

  Future<void> deleteArchiveReasonLabel(String labelId) =>
      (delete(archiveReasonLabelTable)
            ..where((t) => t.labelId.equals(labelId)))
          .go();

  // -------------------------------------------------------------------------
  // App settings (key-value)
  // -------------------------------------------------------------------------

  Future<String?> getSetting(String key) async {
    final row = await (select(appSettingTable)
          ..where((t) => t.settingKey.equals(key)))
        .getSingleOrNull();
    return row?.settingValue;
  }

  Future<void> setSetting(String key, String value) =>
      into(appSettingTable).insertOnConflictUpdate(
        AppSettingTableCompanion.insert(
          settingKey: key,
          settingValue: value,
          updatedAt: DateTime.now(),
        ),
      );
}
