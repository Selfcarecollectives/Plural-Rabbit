import 'package:drift/drift.dart' hide Type;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/providers.dart';
import '../../core/database/tables.dart';
import '../../core/encryption/password_hasher.dart';
import '../../core/history/history_writer.dart';

/// Service layer for profile CRUD, authentication, archival, and fusion.
class ProfileService {
  ProfileService(this._db, this._history);

  final AppDatabase _db;
  final HistoryWriter _history;
  final _uuid = const Uuid();

  // -------------------------------------------------------------------------
  // Create
  // -------------------------------------------------------------------------

  Future<String> createProfile({
    required String name,
    String? vaultId,
    String pronouns = '',
    String? profileImagePath,
    String? bannerImagePath,
    String description = '',
    String passwordType = 'none', // none | pin | password | pattern
    String? rawPassword,          // pre-hash
    String? themeHex,
    String? parentProfileId,
    String? subsystemType,        // A | B
    bool isCuratedView = false,
    bool isInfoHolder = false,
    bool isTutorial = false,
  }) async {
    final profileId = _uuid.v4();
    final now = DateTime.now();

    String? passwordHash;
    if (passwordType != 'none' &&
        rawPassword != null &&
        rawPassword.isNotEmpty) {
      passwordHash = PasswordHasher.hash(rawPassword);
    }

    await _db.profileDao.createProfile(ProfileTableCompanion.insert(
      profileId: profileId,
      vaultId: Value(vaultId),
      parentProfileId: Value(parentProfileId),
      subsystemType: Value(subsystemType),
      name: name,
      pronouns: Value(pronouns),
      profileImagePath: Value(profileImagePath),
      bannerImagePath: Value(bannerImagePath),
      description: Value(description),
      passwordHash: Value(passwordHash),
      passwordType: Value(passwordType),
      themeHex: Value(themeHex),
      isArchived: const Value(false),
      isCuratedView: Value(isCuratedView),
      isInfoHolder: Value(isInfoHolder),
      isTutorial: Value(isTutorial),
      createdAt: now,
      updatedAt: now,
    ));

    // Register profile in vault if provided
    if (vaultId != null) {
      await _db.vaultDao.addProfileToVault(profileId, vaultId, isPrimary: true);
    }

    await _history.logProfileCreate(profileId, vaultId: vaultId);
    return profileId;
  }

  // -------------------------------------------------------------------------
  // Update
  // -------------------------------------------------------------------------

  Future<void> updateProfile({
    required String profileId,
    String? actingProfileId,
    String? name,
    String? pronouns,
    String? profileImagePath,
    String? bannerImagePath,
    String? description,
    String? themeHex,
    String? statusComment,
  }) async {
    final existing = await _db.profileDao.getProfileById(profileId);
    if (existing == null) return;

    await _db.profileDao.updateProfile(ProfileTableCompanion(
      profileId: Value(profileId),
      name: name != null ? Value(name) : const Value.absent(),
      pronouns: pronouns != null ? Value(pronouns) : const Value.absent(),
      profileImagePath: profileImagePath != null
          ? Value(profileImagePath)
          : const Value.absent(),
      bannerImagePath: bannerImagePath != null
          ? Value(bannerImagePath)
          : const Value.absent(),
      description:
          description != null ? Value(description) : const Value.absent(),
      themeHex: themeHex != null ? Value(themeHex) : const Value.absent(),
      statusComment:
          statusComment != null ? Value(statusComment) : const Value.absent(),
      updatedAt: Value(DateTime.now()),
    ));

    await _history.logProfileEdit(
      profileId,
      actingProfileId: actingProfileId,
      before: {'name': existing.name},
      after: {'name': name ?? existing.name},
    );
  }

  // -------------------------------------------------------------------------
  // Password change
  // -------------------------------------------------------------------------

  Future<void> changePassword({
    required String profileId,
    required String newPasswordType,
    String? newRawPassword,
    String? actingProfileId,
  }) async {
    String? newHash;
    if (newPasswordType != 'none' &&
        newRawPassword != null &&
        newRawPassword.isNotEmpty) {
      newHash = PasswordHasher.hash(newRawPassword);
    }

    await _db.profileDao.updateProfile(ProfileTableCompanion(
      profileId: Value(profileId),
      passwordType: Value(newPasswordType),
      passwordHash: Value(newHash),
      updatedAt: Value(DateTime.now()),
    ));

    await _history.write(
      actionType: ActionType.passwordChange,
      targetType: 'profile',
      area: HistoryArea.profiles,
      actingProfileId: actingProfileId,
      targetId: profileId,
    );
  }

  // -------------------------------------------------------------------------
  // Authentication
  // -------------------------------------------------------------------------

  /// Returns true if the candidate credential matches this profile's stored
  /// password hash. Returns true if no password is set.
  Future<bool> authenticate(String profileId, String candidate) async {
    final profile = await _db.profileDao.getProfileById(profileId);
    if (profile == null) return false;
    if (profile.passwordType == 'none' || profile.passwordHash == null) {
      return true;
    }
    return PasswordHasher.verify(candidate, profile.passwordHash!);
  }

  /// Finds a profile by name within a vault (for closed login).
  Future<ProfileTableData?> findProfileByName(
      String name, String? vaultId) async {
    final profiles = vaultId != null
        ? await _db.profileDao.getProfilesInVault(vaultId)
        : await _db.profileDao.getAllProfiles();
    try {
      return profiles.firstWhere(
        (p) => p.name.toLowerCase() == name.toLowerCase(),
      );
    } catch (_) {
      return null;
    }
  }

  // -------------------------------------------------------------------------
  // Archival
  // -------------------------------------------------------------------------

  Future<void> archiveProfile({
    required String profileId,
    String? reason,
    String? reasonLabelId,
    String? actingProfileId,
    String? vaultId,
  }) async {
    await _db.profileDao.archiveProfile(profileId, reason, reasonLabelId);
    await _history.logProfileArchive(
      profileId,
      reason: reason,
      actingProfileId: actingProfileId,
      vaultId: vaultId,
    );
  }

  Future<void> unarchiveProfile(String profileId,
      {String? actingProfileId}) async {
    await _db.profileDao.unarchiveProfile(profileId);
    await _history.write(
      actionType: ActionType.unarchive,
      targetType: 'profile',
      area: HistoryArea.profiles,
      actingProfileId: actingProfileId,
      targetId: profileId,
    );
  }

  // -------------------------------------------------------------------------
  // Fusion
  // -------------------------------------------------------------------------

  Future<String> fuseProfiles({
    required List<String> sourceProfileIds,
    required String resultName,
    String? resultImagePath,
    String? resultPronouns,
    String? vaultId,
    String? actingProfileId,
  }) async {
    final resultId = _uuid.v4();

    // 1. Create the fused profile
    await createProfile(
      name: resultName,
      vaultId: vaultId,
      pronouns: resultPronouns ?? '',
      profileImagePath: resultImagePath,
    );

    // 2. Mark result as fusion and record source links
    await _db.profileDao.fuseProfiles(
      resultProfileId: resultId,
      fusionId: _uuid.v4(),
      sourceProfileIds: sourceProfileIds,
    );

    // 3. Mark result profile as fusion
    await _db.profileDao.updateProfile(ProfileTableCompanion(
      profileId: Value(resultId),
      isFusion: const Value(true),
      updatedAt: Value(DateTime.now()),
    ));

    await _history.logFusion(resultId, sourceProfileIds,
        actingProfileId: actingProfileId, vaultId: vaultId);

    return resultId;
  }

  // -------------------------------------------------------------------------
  // Vault sharing
  // -------------------------------------------------------------------------

  Future<void> shareProfileToVault(String profileId, String vaultId) async {
    await _db.vaultDao.addProfileToVault(profileId, vaultId);
    await _history.write(
      actionType: ActionType.edit,
      targetType: 'profile_vault_share',
      area: HistoryArea.vaults,
      targetId: profileId,
      detail: {'vaultId': vaultId},
    );
  }

  Future<void> removeProfileFromVault(
      String profileId, String vaultId) async {
    await _db.vaultDao.removeProfileFromVault(profileId, vaultId);
  }

  // -------------------------------------------------------------------------
  // Read helpers
  // -------------------------------------------------------------------------

  Future<List<ProfileTableData>> getProfilesInVault(String vaultId) =>
      _db.profileDao.getProfilesInVault(vaultId);

  Future<ProfileTableData?> getProfileById(String profileId) =>
      _db.profileDao.getProfileById(profileId);

  Future<List<ProfileTableData>> getArchivedProfiles(String vaultId) =>
      _db.profileDao.getArchivedProfiles(vaultId);

  Future<List<ProfileTableData>> getSubsystemProfiles(
          String parentProfileId) =>
      _db.profileDao.getSubsystemProfiles(parentProfileId);

  Future<void> touchLastActive(String profileId) =>
      _db.profileDao.touchLastActive(profileId);
}

final profileServiceProvider = Provider<ProfileService>((ref) => ProfileService(
      ref.watch(appDatabaseProvider),
      ref.watch(historyWriterProvider),
    ));
