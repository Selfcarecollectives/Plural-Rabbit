import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart';
import '../database/providers.dart';
import '../database/tables.dart';

/// Result of a permission evaluation.
enum AccessLevel {
  full,
  readOnly,
  none,
}

/// How inaccessible content should be rendered.
enum CensorshipMode {
  noCensorship,  // entry exists but profile can't reach it
  blurred,       // visible but unreadable
  invisible,     // does not appear to the profile at all
}

/// The permission evaluation engine.
///
/// Design rules (Technical doc §11.3):
/// - Permission layer MUST be evaluated on every data read
/// - No caching of permission state across profile switches
/// - The censorship layer is a separate rendering pass — not baked into data
///
/// Hierarchy applies in three modes:
///   top_down  — higher orderIndex levels control lower ones
///   bottom_up — lower orderIndex levels control higher ones
///   custom    — direct profile-to-profile rules only
class PermissionEngine {
  PermissionEngine(this._db);

  final AppDatabase _db;

  // -------------------------------------------------------------------------
  // Main evaluation entry point
  // -------------------------------------------------------------------------

  /// Returns the [AccessLevel] that [subjectProfileId] has over [targetSection]
  /// (optionally scoped to [targetProfileId]).
  ///
  /// Evaluation order:
  /// 1. Explicit profile-to-profile rule (highest priority)
  /// 2. Hierarchy-level rule
  /// 3. Default: full access (hierarchy exists but is unconfigured)
  Future<AccessLevel> evaluate({
    required String subjectProfileId,
    required String targetSection,
    String? targetProfileId,
    String? vaultId,
  }) async {
    // 1. Direct profile-to-profile rule
    final rules =
        await _db.hierarchyDao.getRulesForProfile(subjectProfileId);

    if (targetProfileId != null) {
      final direct = rules.where((r) =>
          r.targetProfileId == targetProfileId &&
          r.targetSection == targetSection);
      if (direct.isNotEmpty) {
        return _parseAccessLevel(direct.first.accessLevel);
      }
    }

    // 2. Section-level rule (no specific target profile)
    final sectionRule = rules.where((r) =>
        r.targetProfileId == null &&
        r.targetSection == targetSection);
    if (sectionRule.isNotEmpty) {
      return _parseAccessLevel(sectionRule.first.accessLevel);
    }

    // 3. Hierarchy-level comparison
    final hierarchyAccess = await _evaluateHierarchy(
      subjectProfileId: subjectProfileId,
      targetProfileId: targetProfileId,
      targetSection: targetSection,
      vaultId: vaultId,
    );
    return hierarchyAccess;
  }

  /// Returns the censorship mode [subjectProfileId] should see for
  /// a specific content item controlled by [ownerProfileId].
  Future<CensorshipMode> getCensorshipMode({
    required String subjectProfileId,
    required String ownerProfileId,
    required String targetSection,
    String? vaultId,
  }) async {
    final rules =
        await _db.hierarchyDao.getRulesForProfile(subjectProfileId);

    // Check for a specific rule between this subject and this owner
    final rule = rules.where((r) =>
        r.targetProfileId == ownerProfileId &&
        r.targetSection == targetSection);

    if (rule.isNotEmpty) {
      return _parseCensorshipMode(rule.first.censorshipMode);
    }

    final access = await evaluate(
      subjectProfileId: subjectProfileId,
      targetSection: targetSection,
      targetProfileId: ownerProfileId,
      vaultId: vaultId,
    );

    if (access == AccessLevel.none) {
      return CensorshipMode.invisible; // default for no access
    }
    return CensorshipMode.noCensorship;
  }

  // -------------------------------------------------------------------------
  // Hierarchy-level comparison
  // -------------------------------------------------------------------------

  Future<AccessLevel> _evaluateHierarchy({
    required String subjectProfileId,
    String? targetProfileId,
    required String targetSection,
    String? vaultId,
  }) async {
    if (targetProfileId == null) return AccessLevel.full;

    // Get levels for this vault
    final levels = await _db.hierarchyDao.getLevels(vaultId: vaultId);
    if (levels.isEmpty) return AccessLevel.full; // unconfigured = equal access

    // Get assignments.
    // Note: targetProfileId is guaranteed non-null here — the null case
    // is handled by the early return above.
    final subjectAssignments = await _db.hierarchyDao
        .getLevelAssignmentsForProfile(subjectProfileId);
    final targetAssignments = await _db.hierarchyDao
        .getLevelAssignmentsForProfile(targetProfileId);

    if (subjectAssignments.isEmpty || targetAssignments.isEmpty) {
      return AccessLevel.full; // unassigned = equal access
    }

    final subjectLevelIds =
        subjectAssignments.map((a) => a.levelId).toSet();
    final targetLevelIds =
        targetAssignments.map((a) => a.levelId).toSet();

    final subjectLevels =
        levels.where((l) => subjectLevelIds.contains(l.levelId)).toList();
    final targetLevels =
        levels.where((l) => targetLevelIds.contains(l.levelId)).toList();

    if (subjectLevels.isEmpty || targetLevels.isEmpty) {
      return AccessLevel.full;
    }

    final operationMode = levels.first.operationMode;
    final subjectOrder = subjectLevels.map((l) => l.orderIndex).reduce(
        (a, b) => operationMode == 'top_down'
            ? (a < b ? a : b)
            : (a > b ? a : b));
    final targetOrder = targetLevels.map((l) => l.orderIndex).reduce(
        (a, b) => operationMode == 'top_down'
            ? (a < b ? a : b)
            : (a > b ? a : b));

    if (operationMode == 'top_down') {
      // Lower orderIndex = higher authority
      return subjectOrder <= targetOrder
          ? AccessLevel.full
          : AccessLevel.readOnly;
    } else if (operationMode == 'bottom_up') {
      // Higher orderIndex = higher authority
      return subjectOrder >= targetOrder
          ? AccessLevel.full
          : AccessLevel.readOnly;
    }

    // custom mode falls through to explicit rules only
    return AccessLevel.full;
  }

  // -------------------------------------------------------------------------
  // Helpers
  // -------------------------------------------------------------------------

  static AccessLevel _parseAccessLevel(String value) {
    switch (value) {
      case 'full':
        return AccessLevel.full;
      case 'read_only':
        return AccessLevel.readOnly;
      case 'none':
        return AccessLevel.none;
      default:
        return AccessLevel.full;
    }
  }

  static CensorshipMode _parseCensorshipMode(String value) {
    switch (value) {
      case 'blurred':
        return CensorshipMode.blurred;
      case 'invisible':
        return CensorshipMode.invisible;
      default:
        return CensorshipMode.noCensorship;
    }
  }
}

final permissionEngineProvider = Provider<PermissionEngine>(
  (ref) => PermissionEngine(ref.watch(appDatabaseProvider)),
);
