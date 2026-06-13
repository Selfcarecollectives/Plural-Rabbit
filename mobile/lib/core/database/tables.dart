import 'package:drift/drift.dart' hide Type;

// ---------------------------------------------------------------------------
// Shared column helpers
// ---------------------------------------------------------------------------

/// Reusable mixin for tutorial-mode tagging — every table that holds
/// user-generated content gets this column so tutorial data can be
/// batch-deleted atomically.
mixin TutorialTaggable on Table {
  BoolColumn get isTutorial => boolean().withDefault(const Constant(false))();
}

// ---------------------------------------------------------------------------
// System (root singleton)
// ---------------------------------------------------------------------------
class SystemTable extends Table {
  @override
  String get tableName => 'system';

  TextColumn get systemId => text()();
  TextColumn get name => text().withDefault(const Constant('Plural Rabbit'))();
  TextColumn get logoPath => text().nullable()();
  TextColumn get themeHex => text().withDefault(const Constant('#6B3FA0'))();
  TextColumn get loginMode =>
      text().withDefault(const Constant('open'))(); // open | closed
  TextColumn get securityPasswordHash => text().nullable()();
  TextColumn get masterPasswordHash => text().nullable()();
  TextColumn get masterPasswordSalt => text().nullable()();
  TextColumn get githubPatEncrypted => text().nullable()();
  TextColumn get githubRepoUrl => text().nullable()();
  TextColumn get githubPushMode =>
      text().withDefault(const Constant('manual'))(); // auto | delayed | manual
  IntColumn get githubPushDelaySeconds => integer().withDefault(const Constant(0))();
  BoolColumn get isTutorialMode => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {systemId};
}

// ---------------------------------------------------------------------------
// Vault
// ---------------------------------------------------------------------------
class VaultTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'vault';

  TextColumn get vaultId => text()();
  TextColumn get systemId =>
      text().references(SystemTable, #systemId, onDelete: KeyAction.cascade)();
  TextColumn get parentVaultId => text().nullable()(); // self-ref — checked in DAO
  TextColumn get name => text()();
  TextColumn get themeHex => text().withDefault(const Constant('#6B3FA0'))();
  TextColumn get loginMode => text().withDefault(const Constant('open'))();
  TextColumn get masterPasswordHash => text().nullable()();
  TextColumn get githubPatEncrypted => text().nullable()();
  TextColumn get githubRepoUrl => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {vaultId};
}

// ---------------------------------------------------------------------------
// Profile
// ---------------------------------------------------------------------------
class ProfileTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'profile';

  TextColumn get profileId => text()();
  TextColumn get vaultId =>
      text().nullable().references(VaultTable, #vaultId, onDelete: KeyAction.cascade)();
  TextColumn get parentProfileId => text().nullable()(); // subsystem nesting
  TextColumn get subsystemType => text().nullable()(); // A | B
  TextColumn get name => text()();
  TextColumn get pronouns => text().withDefault(const Constant(''))();
  TextColumn get profileImagePath => text().nullable()();
  TextColumn get bannerImagePath => text().nullable()();
  TextColumn get description => text().withDefault(const Constant(''))();
  TextColumn get statusComment => text().nullable()();
  TextColumn get passwordHash => text().nullable()();
  TextColumn get passwordType =>
      text().withDefault(const Constant('none'))(); // none | pin | password | pattern
  TextColumn get themeHex => text().nullable()();
  BoolColumn get isArchived => boolean().withDefault(const Constant(false))();
  TextColumn get archiveReason => text().nullable()();
  TextColumn get archiveReasonLabelId => text().nullable()();
  BoolColumn get isCuratedView => boolean().withDefault(const Constant(false))();
  BoolColumn get isInfoHolder => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastActiveAt => dateTime().nullable()();
  BoolColumn get isFusion => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {profileId};
}

// ---------------------------------------------------------------------------
// Profile-Vault membership table (for shared profiles across vaults)
// ---------------------------------------------------------------------------
class ProfileVaultMembershipTable extends Table {
  @override
  String get tableName => 'profile_vault_membership';

  TextColumn get profileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  TextColumn get vaultId =>
      text().references(VaultTable, #vaultId, onDelete: KeyAction.cascade)();
  BoolColumn get isPrimary => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {profileId, vaultId};
}

// ---------------------------------------------------------------------------
// Archive Reason Label (user-defined labels)
// ---------------------------------------------------------------------------
class ArchiveReasonLabelTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'archive_reason_label';

  TextColumn get labelId => text()();
  TextColumn get systemId =>
      text().references(SystemTable, #systemId, onDelete: KeyAction.cascade)();
  TextColumn get name => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {labelId};
}

// ---------------------------------------------------------------------------
// Fusion Record
// ---------------------------------------------------------------------------
class FusionRecordTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'fusion_record';

  TextColumn get fusionId => text()();
  TextColumn get resultProfileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {fusionId};
}

class FusionSourceTable extends Table {
  @override
  String get tableName => 'fusion_source';

  TextColumn get fusionId =>
      text().references(FusionRecordTable, #fusionId, onDelete: KeyAction.cascade)();
  TextColumn get sourceProfileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.setNull)();

  @override
  Set<Column> get primaryKey => {fusionId, sourceProfileId};
}

// ---------------------------------------------------------------------------
// Hierarchy Level
// ---------------------------------------------------------------------------
class HierarchyLevelTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'hierarchy_level';

  TextColumn get levelId => text()();
  TextColumn get vaultId => text().nullable().references(VaultTable, #vaultId)();
  TextColumn get name => text()();
  IntColumn get orderIndex => integer()();
  TextColumn get operationMode =>
      text().withDefault(const Constant('top_down'))(); // top_down | bottom_up | custom
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {levelId};
}

// ---------------------------------------------------------------------------
// Profile Hierarchy Assignment
// ---------------------------------------------------------------------------
class ProfileHierarchyAssignmentTable extends Table {
  @override
  String get tableName => 'profile_hierarchy_assignment';

  TextColumn get profileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  TextColumn get levelId =>
      text().references(HierarchyLevelTable, #levelId, onDelete: KeyAction.cascade)();

  @override
  Set<Column> get primaryKey => {profileId, levelId};
}

// ---------------------------------------------------------------------------
// Permission Rule
// ---------------------------------------------------------------------------
class PermissionRuleTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'permission_rule';

  TextColumn get ruleId => text()();
  TextColumn get subjectProfileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  TextColumn get targetProfileId =>
      text().nullable().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  // target_section: messages|profiles|mapping|medical|memory|history|hierarchy|settings|friends
  TextColumn get targetSection => text()();
  // access_level: full | read_only | none
  TextColumn get accessLevel => text().withDefault(const Constant('full'))();
  // censorship_mode: no_censorship | blurred | invisible
  TextColumn get censorshipMode =>
      text().withDefault(const Constant('no_censorship'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {ruleId};
}

// ---------------------------------------------------------------------------
// Folder
// ---------------------------------------------------------------------------
class FolderTable extends Table with TutorialTaggable {
  @override
  String get tableName => 'folder';

  TextColumn get folderId => text()();
  TextColumn get vaultId => text().nullable().references(VaultTable, #vaultId)();
  TextColumn get parentFolderId => text().nullable()(); // self-ref
  TextColumn get name => text()();
  TextColumn get iconEmoji => text().withDefault(const Constant('📁'))();
  TextColumn get description => text().withDefault(const Constant(''))();
  TextColumn get visibilityRules =>
      text().withDefault(const Constant('{}'))(); // JSON
  IntColumn get orderIndex => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {folderId};
}

// ---------------------------------------------------------------------------
// Profile Folder Membership
// ---------------------------------------------------------------------------
class ProfileFolderMembershipTable extends Table {
  @override
  String get tableName => 'profile_folder_membership';

  TextColumn get profileId =>
      text().references(ProfileTable, #profileId, onDelete: KeyAction.cascade)();
  TextColumn get folderId =>
      text().references(FolderTable, #folderId, onDelete: KeyAction.cascade)();
  IntColumn get orderIndex => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {profileId, folderId};
}

// ---------------------------------------------------------------------------
// Master History Log
// ---------------------------------------------------------------------------
class HistoryEntryTable extends Table {
  @override
  String get tableName => 'history_entry';

  TextColumn get entryId => text()();
  TextColumn get vaultId => text().nullable()();
  TextColumn get actingProfileId => text().nullable()();
  // action_type enum values
  TextColumn get actionType => text()();
  // target_type: e.g. 'profile', 'vault', 'message', ...
  TextColumn get targetType => text()();
  TextColumn get targetId => text().nullable()();
  // area: messages|profiles|mapping|medical|memory|hierarchy|settings|friends|system
  TextColumn get area => text()();
  TextColumn get detail => text().withDefault(const Constant('{}'))(); // JSON
  TextColumn get censorshipOverrides =>
      text().withDefault(const Constant('{}'))(); // JSON: {profileId: mode}
  DateTimeColumn get createdAt => dateTime()();
  // NO updatedAt — immutable

  @override
  Set<Column> get primaryKey => {entryId};
}

// ---------------------------------------------------------------------------
// App Settings (key-value store for non-structural settings)
// ---------------------------------------------------------------------------
class AppSettingTable extends Table {
  @override
  String get tableName => 'app_setting';

  TextColumn get settingKey => text()();
  TextColumn get settingValue => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {settingKey};
}
