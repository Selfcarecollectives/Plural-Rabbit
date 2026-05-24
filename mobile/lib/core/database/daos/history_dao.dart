import 'dart:convert';

import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables.dart';

part 'history_dao.g.dart';

@DriftAccessor(tables: [HistoryEntryTable])
class HistoryDao extends DatabaseAccessor<AppDatabase>
    with _$HistoryDaoMixin {
  HistoryDao(super.db);

  // -------------------------------------------------------------------------
  // Write (immutable — never delete or update)
  // -------------------------------------------------------------------------

  /// Atomically writes a history entry. Tutorial entries are silently dropped.
  Future<void> writeEntry(HistoryEntryTableCompanion entry) async {
    // Tutorial mode check: read system row's is_tutorial_mode flag.
    final system = await db.systemDao.getSystem();
    if (system?.isTutorialMode == true) return; // skip during tutorial
    await into(historyEntryTable).insert(entry);
  }

  // -------------------------------------------------------------------------
  // Read
  // -------------------------------------------------------------------------

  Future<List<HistoryEntryTableData>> getEntriesForArea(String area,
      {int limit = 100, int offset = 0}) =>
      (select(historyEntryTable)
            ..where((t) => t.area.equals(area))
            ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
            ..limit(limit, offset: offset))
          .get();

  Future<List<HistoryEntryTableData>> getAllEntries(
      {int limit = 100, int offset = 0}) =>
      (select(historyEntryTable)
            ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
            ..limit(limit, offset: offset))
          .get();

  Future<List<HistoryEntryTableData>> getEntriesForTarget(
          String targetType, String targetId) =>
      (select(historyEntryTable)
            ..where((t) =>
                t.targetType.equals(targetType) & t.targetId.equals(targetId))
            ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
          .get();

  // -------------------------------------------------------------------------
  // Censorship
  // -------------------------------------------------------------------------

  /// Updates the censorship_overrides JSON for an existing entry.
  /// This does NOT delete the entry — it only controls visibility per profile.
  ///
  /// Design note: history entries are semantically immutable in terms of their
  /// content (what happened and when). The censorship_overrides field is
  /// intentionally mutable: it is visibility metadata, not event content.
  /// Spec §14.2 explicitly permits this per-profile override mechanism.
  Future<void> setCensorshipOverride(
      String entryId, String profileId, String mode) async {
    final entry = await (select(historyEntryTable)
          ..where((t) => t.entryId.equals(entryId)))
        .getSingleOrNull();
    if (entry == null) return;

    final overrides = Map<String, dynamic>.from(
        (entry.censorshipOverrides.isNotEmpty
            ? _parseJson(entry.censorshipOverrides)
            : {}));
    overrides[profileId] = mode;

    await (update(historyEntryTable)
          ..where((t) => t.entryId.equals(entryId)))
        .write(HistoryEntryTableCompanion(
          censorshipOverrides: Value(_encodeJson(overrides)),
        ));
  }

  static Map<String, dynamic> _parseJson(String json) {
    try {
      final decoded = jsonDecode(json);
      if (decoded is Map<String, dynamic>) return decoded;
      return {};
    } catch (_) {
      return {};
    }
  }

  static String _encodeJson(Map<String, dynamic> map) {
    return jsonEncode(map);
  }
}
