import 'dart:convert';
import 'package:uuid/uuid.dart';

import '../database/app_database.dart';
import '../database/tables.dart';

/// All valid action type constants for the Master History Log.
abstract class ActionType {
  static const create = 'create';
  static const edit = 'edit';
  static const delete = 'delete';
  static const login = 'login';
  static const logout = 'logout';
  static const import_ = 'import';
  static const export_ = 'export';
  static const merge = 'merge';
  static const archive = 'archive';
  static const unarchive = 'unarchive';
  static const settingChange = 'setting_change';
  static const message = 'message';
  static const friendAction = 'friend_action';
  static const fusionCreate = 'fusion_create';
  static const hierarchyChange = 'hierarchy_change';
  static const permissionChange = 'permission_change';
  static const passwordChange = 'password_change';
  static const tutorialComplete = 'tutorial_complete';
  static const tutorialSkip = 'tutorial_skip';
}

/// All valid area constants.
abstract class HistoryArea {
  static const messages = 'messages';
  static const profiles = 'profiles';
  static const mapping = 'mapping';
  static const medical = 'medical';
  static const memory = 'memory';
  static const hierarchy = 'hierarchy';
  static const settings = 'settings';
  static const friends = 'friends';
  static const system = 'system';
  static const vaults = 'vaults';
  static const folders = 'folders';
  static const auth = 'auth';
}

/// The single writer for the Master History Log.
///
/// Critical design rules (Technical doc §11.3 & Addendum §14.11):
/// 1. Every state-changing action MUST call [write] BEFORE returning.
/// 2. Entries are immutable — HistoryDao never exposes delete/update.
/// 3. Tutorial-mode entries are silently skipped (checked in HistoryDao).
/// 4. [detail] must contain a before/after snapshot for edit actions.
class HistoryWriter {
  HistoryWriter(this._db);

  final AppDatabase _db;
  final _uuid = const Uuid();

  /// Writes an immutable history entry.
  ///
  /// [actingProfileId] — the profile performing the action (null = system).
  /// [actionType]      — one of [ActionType] constants.
  /// [targetType]      — e.g. 'profile', 'vault', 'message'.
  /// [targetId]        — UUID of the affected object (nullable).
  /// [area]            — one of [HistoryArea] constants.
  /// [detail]          — arbitrary before/after data, encoded to JSON.
  /// [vaultId]         — null for system-level actions.
  Future<void> write({
    required String actionType,
    required String targetType,
    required String area,
    String? actingProfileId,
    String? targetId,
    String? vaultId,
    Map<String, dynamic>? detail,
  }) async {
    final entry = HistoryEntryTableCompanion.insert(
      entryId: _uuid.v4(),
      actionType: actionType,
      targetType: targetType,
      area: area,
      actingProfileId: Value(actingProfileId),
      targetId: Value(targetId),
      vaultId: Value(vaultId),
      detail: Value(detail != null ? jsonEncode(detail) : '{}'),
      censorshipOverrides: const Value('{}'),
      createdAt: DateTime.now(),
    );
    await _db.historyDao.writeEntry(entry);
  }

  // -------------------------------------------------------------------------
  // Convenience wrappers for the most common actions
  // -------------------------------------------------------------------------

  Future<void> logProfileCreate(String profileId,
          {String? actingProfileId, String? vaultId}) =>
      write(
        actionType: ActionType.create,
        targetType: 'profile',
        area: HistoryArea.profiles,
        actingProfileId: actingProfileId,
        targetId: profileId,
        vaultId: vaultId,
      );

  Future<void> logProfileEdit(
    String profileId, {
    required Map<String, dynamic> before,
    required Map<String, dynamic> after,
    String? actingProfileId,
    String? vaultId,
  }) =>
      write(
        actionType: ActionType.edit,
        targetType: 'profile',
        area: HistoryArea.profiles,
        actingProfileId: actingProfileId,
        targetId: profileId,
        vaultId: vaultId,
        detail: {'before': before, 'after': after},
      );

  Future<void> logProfileArchive(String profileId,
          {String? reason,
          String? actingProfileId,
          String? vaultId}) =>
      write(
        actionType: ActionType.archive,
        targetType: 'profile',
        area: HistoryArea.profiles,
        actingProfileId: actingProfileId,
        targetId: profileId,
        vaultId: vaultId,
        detail: {'reason': reason},
      );

  Future<void> logVaultCreate(String vaultId,
          {String? actingProfileId}) =>
      write(
        actionType: ActionType.create,
        targetType: 'vault',
        area: HistoryArea.vaults,
        actingProfileId: actingProfileId,
        targetId: vaultId,
        vaultId: vaultId,
      );

  Future<void> logLogin(String profileId, {String? vaultId}) =>
      write(
        actionType: ActionType.login,
        targetType: 'profile',
        area: HistoryArea.auth,
        actingProfileId: profileId,
        targetId: profileId,
        vaultId: vaultId,
      );

  Future<void> logLogout(String profileId, {String? vaultId}) =>
      write(
        actionType: ActionType.logout,
        targetType: 'profile',
        area: HistoryArea.auth,
        actingProfileId: profileId,
        targetId: profileId,
        vaultId: vaultId,
      );

  Future<void> logSettingChange(String settingKey,
          {String? before,
          String? after,
          String? actingProfileId}) =>
      write(
        actionType: ActionType.settingChange,
        targetType: 'setting',
        area: HistoryArea.settings,
        actingProfileId: actingProfileId,
        detail: {'key': settingKey, 'before': before, 'after': after},
      );

  Future<void> logHierarchyChange({
    required String subAction,
    String? actingProfileId,
    String? targetId,
    String? vaultId,
    Map<String, dynamic>? detail,
  }) =>
      write(
        actionType: ActionType.hierarchyChange,
        targetType: 'hierarchy',
        area: HistoryArea.hierarchy,
        actingProfileId: actingProfileId,
        targetId: targetId,
        vaultId: vaultId,
        detail: {'subAction': subAction, ...?detail},
      );

  Future<void> logSystemCreate(String systemId) =>
      write(
        actionType: ActionType.create,
        targetType: 'system',
        area: HistoryArea.system,
        targetId: systemId,
      );

  Future<void> logFusion(String resultProfileId,
          List<String> sourceProfileIds,
          {String? actingProfileId,
          String? vaultId}) =>
      write(
        actionType: ActionType.fusionCreate,
        targetType: 'profile',
        area: HistoryArea.profiles,
        actingProfileId: actingProfileId,
        targetId: resultProfileId,
        vaultId: vaultId,
        detail: {'sourceProfiles': sourceProfileIds},
      );
}
