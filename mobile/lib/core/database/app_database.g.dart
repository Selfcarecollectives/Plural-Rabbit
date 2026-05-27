// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SystemTableTable extends SystemTable
    with TableInfo<$SystemTableTable, SystemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SystemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _systemIdMeta =
      const VerificationMeta('systemId');
  @override
  late final GeneratedColumn<String> systemId = GeneratedColumn<String>(
      'system_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Plural Rabbit'));
  static const VerificationMeta _logoPathMeta =
      const VerificationMeta('logoPath');
  @override
  late final GeneratedColumn<String> logoPath = GeneratedColumn<String>(
      'logo_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _themeHexMeta =
      const VerificationMeta('themeHex');
  @override
  late final GeneratedColumn<String> themeHex = GeneratedColumn<String>(
      'theme_hex', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('#6B3FA0'));
  static const VerificationMeta _loginModeMeta =
      const VerificationMeta('loginMode');
  @override
  late final GeneratedColumn<String> loginMode = GeneratedColumn<String>(
      'login_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('open'));
  static const VerificationMeta _securityPasswordHashMeta =
      const VerificationMeta('securityPasswordHash');
  @override
  late final GeneratedColumn<String> securityPasswordHash =
      GeneratedColumn<String>('security_password_hash', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _masterPasswordHashMeta =
      const VerificationMeta('masterPasswordHash');
  @override
  late final GeneratedColumn<String> masterPasswordHash =
      GeneratedColumn<String>('master_password_hash', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _masterPasswordSaltMeta =
      const VerificationMeta('masterPasswordSalt');
  @override
  late final GeneratedColumn<String> masterPasswordSalt =
      GeneratedColumn<String>('master_password_salt', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _githubPatEncryptedMeta =
      const VerificationMeta('githubPatEncrypted');
  @override
  late final GeneratedColumn<String> githubPatEncrypted =
      GeneratedColumn<String>('github_pat_encrypted', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _githubRepoUrlMeta =
      const VerificationMeta('githubRepoUrl');
  @override
  late final GeneratedColumn<String> githubRepoUrl = GeneratedColumn<String>(
      'github_repo_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _githubPushModeMeta =
      const VerificationMeta('githubPushMode');
  @override
  late final GeneratedColumn<String> githubPushMode = GeneratedColumn<String>(
      'github_push_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('manual'));
  static const VerificationMeta _githubPushDelaySecondsMeta =
      const VerificationMeta('githubPushDelaySeconds');
  @override
  late final GeneratedColumn<int> githubPushDelaySeconds = GeneratedColumn<int>(
      'github_push_delay_seconds', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isTutorialModeMeta =
      const VerificationMeta('isTutorialMode');
  @override
  late final GeneratedColumn<bool> isTutorialMode = GeneratedColumn<bool>(
      'is_tutorial_mode', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_tutorial_mode" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        systemId,
        name,
        logoPath,
        themeHex,
        loginMode,
        securityPasswordHash,
        masterPasswordHash,
        masterPasswordSalt,
        githubPatEncrypted,
        githubRepoUrl,
        githubPushMode,
        githubPushDelaySeconds,
        isTutorialMode,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'system';
  @override
  VerificationContext validateIntegrity(Insertable<SystemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('system_id')) {
      context.handle(_systemIdMeta,
          systemId.isAcceptableOrUnknown(data['system_id']!, _systemIdMeta));
    } else if (isInserting) {
      context.missing(_systemIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('logo_path')) {
      context.handle(_logoPathMeta,
          logoPath.isAcceptableOrUnknown(data['logo_path']!, _logoPathMeta));
    }
    if (data.containsKey('theme_hex')) {
      context.handle(_themeHexMeta,
          themeHex.isAcceptableOrUnknown(data['theme_hex']!, _themeHexMeta));
    }
    if (data.containsKey('login_mode')) {
      context.handle(_loginModeMeta,
          loginMode.isAcceptableOrUnknown(data['login_mode']!, _loginModeMeta));
    }
    if (data.containsKey('security_password_hash')) {
      context.handle(
          _securityPasswordHashMeta,
          securityPasswordHash.isAcceptableOrUnknown(
              data['security_password_hash']!, _securityPasswordHashMeta));
    }
    if (data.containsKey('master_password_hash')) {
      context.handle(
          _masterPasswordHashMeta,
          masterPasswordHash.isAcceptableOrUnknown(
              data['master_password_hash']!, _masterPasswordHashMeta));
    }
    if (data.containsKey('master_password_salt')) {
      context.handle(
          _masterPasswordSaltMeta,
          masterPasswordSalt.isAcceptableOrUnknown(
              data['master_password_salt']!, _masterPasswordSaltMeta));
    }
    if (data.containsKey('github_pat_encrypted')) {
      context.handle(
          _githubPatEncryptedMeta,
          githubPatEncrypted.isAcceptableOrUnknown(
              data['github_pat_encrypted']!, _githubPatEncryptedMeta));
    }
    if (data.containsKey('github_repo_url')) {
      context.handle(
          _githubRepoUrlMeta,
          githubRepoUrl.isAcceptableOrUnknown(
              data['github_repo_url']!, _githubRepoUrlMeta));
    }
    if (data.containsKey('github_push_mode')) {
      context.handle(
          _githubPushModeMeta,
          githubPushMode.isAcceptableOrUnknown(
              data['github_push_mode']!, _githubPushModeMeta));
    }
    if (data.containsKey('github_push_delay_seconds')) {
      context.handle(
          _githubPushDelaySecondsMeta,
          githubPushDelaySeconds.isAcceptableOrUnknown(
              data['github_push_delay_seconds']!, _githubPushDelaySecondsMeta));
    }
    if (data.containsKey('is_tutorial_mode')) {
      context.handle(
          _isTutorialModeMeta,
          isTutorialMode.isAcceptableOrUnknown(
              data['is_tutorial_mode']!, _isTutorialModeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {systemId};
  @override
  SystemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SystemTableData(
      systemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}system_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      logoPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo_path']),
      themeHex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme_hex'])!,
      loginMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}login_mode'])!,
      securityPasswordHash: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}security_password_hash']),
      masterPasswordHash: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}master_password_hash']),
      masterPasswordSalt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}master_password_salt']),
      githubPatEncrypted: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}github_pat_encrypted']),
      githubRepoUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}github_repo_url']),
      githubPushMode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}github_push_mode'])!,
      githubPushDelaySeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}github_push_delay_seconds'])!,
      isTutorialMode: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial_mode'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SystemTableTable createAlias(String alias) {
    return $SystemTableTable(attachedDatabase, alias);
  }
}

class SystemTableData extends DataClass implements Insertable<SystemTableData> {
  final String systemId;
  final String name;
  final String? logoPath;
  final String themeHex;
  final String loginMode;
  final String? securityPasswordHash;
  final String? masterPasswordHash;
  final String? masterPasswordSalt;
  final String? githubPatEncrypted;
  final String? githubRepoUrl;
  final String githubPushMode;
  final int githubPushDelaySeconds;
  final bool isTutorialMode;
  final DateTime createdAt;
  final DateTime updatedAt;
  const SystemTableData(
      {required this.systemId,
      required this.name,
      this.logoPath,
      required this.themeHex,
      required this.loginMode,
      this.securityPasswordHash,
      this.masterPasswordHash,
      this.masterPasswordSalt,
      this.githubPatEncrypted,
      this.githubRepoUrl,
      required this.githubPushMode,
      required this.githubPushDelaySeconds,
      required this.isTutorialMode,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['system_id'] = Variable<String>(systemId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || logoPath != null) {
      map['logo_path'] = Variable<String>(logoPath);
    }
    map['theme_hex'] = Variable<String>(themeHex);
    map['login_mode'] = Variable<String>(loginMode);
    if (!nullToAbsent || securityPasswordHash != null) {
      map['security_password_hash'] = Variable<String>(securityPasswordHash);
    }
    if (!nullToAbsent || masterPasswordHash != null) {
      map['master_password_hash'] = Variable<String>(masterPasswordHash);
    }
    if (!nullToAbsent || masterPasswordSalt != null) {
      map['master_password_salt'] = Variable<String>(masterPasswordSalt);
    }
    if (!nullToAbsent || githubPatEncrypted != null) {
      map['github_pat_encrypted'] = Variable<String>(githubPatEncrypted);
    }
    if (!nullToAbsent || githubRepoUrl != null) {
      map['github_repo_url'] = Variable<String>(githubRepoUrl);
    }
    map['github_push_mode'] = Variable<String>(githubPushMode);
    map['github_push_delay_seconds'] = Variable<int>(githubPushDelaySeconds);
    map['is_tutorial_mode'] = Variable<bool>(isTutorialMode);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SystemTableCompanion toCompanion(bool nullToAbsent) {
    return SystemTableCompanion(
      systemId: Value(systemId),
      name: Value(name),
      logoPath: logoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(logoPath),
      themeHex: Value(themeHex),
      loginMode: Value(loginMode),
      securityPasswordHash: securityPasswordHash == null && nullToAbsent
          ? const Value.absent()
          : Value(securityPasswordHash),
      masterPasswordHash: masterPasswordHash == null && nullToAbsent
          ? const Value.absent()
          : Value(masterPasswordHash),
      masterPasswordSalt: masterPasswordSalt == null && nullToAbsent
          ? const Value.absent()
          : Value(masterPasswordSalt),
      githubPatEncrypted: githubPatEncrypted == null && nullToAbsent
          ? const Value.absent()
          : Value(githubPatEncrypted),
      githubRepoUrl: githubRepoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(githubRepoUrl),
      githubPushMode: Value(githubPushMode),
      githubPushDelaySeconds: Value(githubPushDelaySeconds),
      isTutorialMode: Value(isTutorialMode),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory SystemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SystemTableData(
      systemId: serializer.fromJson<String>(json['systemId']),
      name: serializer.fromJson<String>(json['name']),
      logoPath: serializer.fromJson<String?>(json['logoPath']),
      themeHex: serializer.fromJson<String>(json['themeHex']),
      loginMode: serializer.fromJson<String>(json['loginMode']),
      securityPasswordHash:
          serializer.fromJson<String?>(json['securityPasswordHash']),
      masterPasswordHash:
          serializer.fromJson<String?>(json['masterPasswordHash']),
      masterPasswordSalt:
          serializer.fromJson<String?>(json['masterPasswordSalt']),
      githubPatEncrypted:
          serializer.fromJson<String?>(json['githubPatEncrypted']),
      githubRepoUrl: serializer.fromJson<String?>(json['githubRepoUrl']),
      githubPushMode: serializer.fromJson<String>(json['githubPushMode']),
      githubPushDelaySeconds:
          serializer.fromJson<int>(json['githubPushDelaySeconds']),
      isTutorialMode: serializer.fromJson<bool>(json['isTutorialMode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'systemId': serializer.toJson<String>(systemId),
      'name': serializer.toJson<String>(name),
      'logoPath': serializer.toJson<String?>(logoPath),
      'themeHex': serializer.toJson<String>(themeHex),
      'loginMode': serializer.toJson<String>(loginMode),
      'securityPasswordHash': serializer.toJson<String?>(securityPasswordHash),
      'masterPasswordHash': serializer.toJson<String?>(masterPasswordHash),
      'masterPasswordSalt': serializer.toJson<String?>(masterPasswordSalt),
      'githubPatEncrypted': serializer.toJson<String?>(githubPatEncrypted),
      'githubRepoUrl': serializer.toJson<String?>(githubRepoUrl),
      'githubPushMode': serializer.toJson<String>(githubPushMode),
      'githubPushDelaySeconds': serializer.toJson<int>(githubPushDelaySeconds),
      'isTutorialMode': serializer.toJson<bool>(isTutorialMode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  SystemTableData copyWith(
          {String? systemId,
          String? name,
          Value<String?> logoPath = const Value.absent(),
          String? themeHex,
          String? loginMode,
          Value<String?> securityPasswordHash = const Value.absent(),
          Value<String?> masterPasswordHash = const Value.absent(),
          Value<String?> masterPasswordSalt = const Value.absent(),
          Value<String?> githubPatEncrypted = const Value.absent(),
          Value<String?> githubRepoUrl = const Value.absent(),
          String? githubPushMode,
          int? githubPushDelaySeconds,
          bool? isTutorialMode,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      SystemTableData(
        systemId: systemId ?? this.systemId,
        name: name ?? this.name,
        logoPath: logoPath.present ? logoPath.value : this.logoPath,
        themeHex: themeHex ?? this.themeHex,
        loginMode: loginMode ?? this.loginMode,
        securityPasswordHash: securityPasswordHash.present
            ? securityPasswordHash.value
            : this.securityPasswordHash,
        masterPasswordHash: masterPasswordHash.present
            ? masterPasswordHash.value
            : this.masterPasswordHash,
        masterPasswordSalt: masterPasswordSalt.present
            ? masterPasswordSalt.value
            : this.masterPasswordSalt,
        githubPatEncrypted: githubPatEncrypted.present
            ? githubPatEncrypted.value
            : this.githubPatEncrypted,
        githubRepoUrl:
            githubRepoUrl.present ? githubRepoUrl.value : this.githubRepoUrl,
        githubPushMode: githubPushMode ?? this.githubPushMode,
        githubPushDelaySeconds:
            githubPushDelaySeconds ?? this.githubPushDelaySeconds,
        isTutorialMode: isTutorialMode ?? this.isTutorialMode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  SystemTableData copyWithCompanion(SystemTableCompanion data) {
    return SystemTableData(
      systemId: data.systemId.present ? data.systemId.value : this.systemId,
      name: data.name.present ? data.name.value : this.name,
      logoPath: data.logoPath.present ? data.logoPath.value : this.logoPath,
      themeHex: data.themeHex.present ? data.themeHex.value : this.themeHex,
      loginMode: data.loginMode.present ? data.loginMode.value : this.loginMode,
      securityPasswordHash: data.securityPasswordHash.present
          ? data.securityPasswordHash.value
          : this.securityPasswordHash,
      masterPasswordHash: data.masterPasswordHash.present
          ? data.masterPasswordHash.value
          : this.masterPasswordHash,
      masterPasswordSalt: data.masterPasswordSalt.present
          ? data.masterPasswordSalt.value
          : this.masterPasswordSalt,
      githubPatEncrypted: data.githubPatEncrypted.present
          ? data.githubPatEncrypted.value
          : this.githubPatEncrypted,
      githubRepoUrl: data.githubRepoUrl.present
          ? data.githubRepoUrl.value
          : this.githubRepoUrl,
      githubPushMode: data.githubPushMode.present
          ? data.githubPushMode.value
          : this.githubPushMode,
      githubPushDelaySeconds: data.githubPushDelaySeconds.present
          ? data.githubPushDelaySeconds.value
          : this.githubPushDelaySeconds,
      isTutorialMode: data.isTutorialMode.present
          ? data.isTutorialMode.value
          : this.isTutorialMode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SystemTableData(')
          ..write('systemId: $systemId, ')
          ..write('name: $name, ')
          ..write('logoPath: $logoPath, ')
          ..write('themeHex: $themeHex, ')
          ..write('loginMode: $loginMode, ')
          ..write('securityPasswordHash: $securityPasswordHash, ')
          ..write('masterPasswordHash: $masterPasswordHash, ')
          ..write('masterPasswordSalt: $masterPasswordSalt, ')
          ..write('githubPatEncrypted: $githubPatEncrypted, ')
          ..write('githubRepoUrl: $githubRepoUrl, ')
          ..write('githubPushMode: $githubPushMode, ')
          ..write('githubPushDelaySeconds: $githubPushDelaySeconds, ')
          ..write('isTutorialMode: $isTutorialMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      systemId,
      name,
      logoPath,
      themeHex,
      loginMode,
      securityPasswordHash,
      masterPasswordHash,
      masterPasswordSalt,
      githubPatEncrypted,
      githubRepoUrl,
      githubPushMode,
      githubPushDelaySeconds,
      isTutorialMode,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SystemTableData &&
          other.systemId == this.systemId &&
          other.name == this.name &&
          other.logoPath == this.logoPath &&
          other.themeHex == this.themeHex &&
          other.loginMode == this.loginMode &&
          other.securityPasswordHash == this.securityPasswordHash &&
          other.masterPasswordHash == this.masterPasswordHash &&
          other.masterPasswordSalt == this.masterPasswordSalt &&
          other.githubPatEncrypted == this.githubPatEncrypted &&
          other.githubRepoUrl == this.githubRepoUrl &&
          other.githubPushMode == this.githubPushMode &&
          other.githubPushDelaySeconds == this.githubPushDelaySeconds &&
          other.isTutorialMode == this.isTutorialMode &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SystemTableCompanion extends UpdateCompanion<SystemTableData> {
  final Value<String> systemId;
  final Value<String> name;
  final Value<String?> logoPath;
  final Value<String> themeHex;
  final Value<String> loginMode;
  final Value<String?> securityPasswordHash;
  final Value<String?> masterPasswordHash;
  final Value<String?> masterPasswordSalt;
  final Value<String?> githubPatEncrypted;
  final Value<String?> githubRepoUrl;
  final Value<String> githubPushMode;
  final Value<int> githubPushDelaySeconds;
  final Value<bool> isTutorialMode;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SystemTableCompanion({
    this.systemId = const Value.absent(),
    this.name = const Value.absent(),
    this.logoPath = const Value.absent(),
    this.themeHex = const Value.absent(),
    this.loginMode = const Value.absent(),
    this.securityPasswordHash = const Value.absent(),
    this.masterPasswordHash = const Value.absent(),
    this.masterPasswordSalt = const Value.absent(),
    this.githubPatEncrypted = const Value.absent(),
    this.githubRepoUrl = const Value.absent(),
    this.githubPushMode = const Value.absent(),
    this.githubPushDelaySeconds = const Value.absent(),
    this.isTutorialMode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SystemTableCompanion.insert({
    required String systemId,
    this.name = const Value.absent(),
    this.logoPath = const Value.absent(),
    this.themeHex = const Value.absent(),
    this.loginMode = const Value.absent(),
    this.securityPasswordHash = const Value.absent(),
    this.masterPasswordHash = const Value.absent(),
    this.masterPasswordSalt = const Value.absent(),
    this.githubPatEncrypted = const Value.absent(),
    this.githubRepoUrl = const Value.absent(),
    this.githubPushMode = const Value.absent(),
    this.githubPushDelaySeconds = const Value.absent(),
    this.isTutorialMode = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : systemId = Value(systemId),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<SystemTableData> custom({
    Expression<String>? systemId,
    Expression<String>? name,
    Expression<String>? logoPath,
    Expression<String>? themeHex,
    Expression<String>? loginMode,
    Expression<String>? securityPasswordHash,
    Expression<String>? masterPasswordHash,
    Expression<String>? masterPasswordSalt,
    Expression<String>? githubPatEncrypted,
    Expression<String>? githubRepoUrl,
    Expression<String>? githubPushMode,
    Expression<int>? githubPushDelaySeconds,
    Expression<bool>? isTutorialMode,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (systemId != null) 'system_id': systemId,
      if (name != null) 'name': name,
      if (logoPath != null) 'logo_path': logoPath,
      if (themeHex != null) 'theme_hex': themeHex,
      if (loginMode != null) 'login_mode': loginMode,
      if (securityPasswordHash != null)
        'security_password_hash': securityPasswordHash,
      if (masterPasswordHash != null)
        'master_password_hash': masterPasswordHash,
      if (masterPasswordSalt != null)
        'master_password_salt': masterPasswordSalt,
      if (githubPatEncrypted != null)
        'github_pat_encrypted': githubPatEncrypted,
      if (githubRepoUrl != null) 'github_repo_url': githubRepoUrl,
      if (githubPushMode != null) 'github_push_mode': githubPushMode,
      if (githubPushDelaySeconds != null)
        'github_push_delay_seconds': githubPushDelaySeconds,
      if (isTutorialMode != null) 'is_tutorial_mode': isTutorialMode,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SystemTableCompanion copyWith(
      {Value<String>? systemId,
      Value<String>? name,
      Value<String?>? logoPath,
      Value<String>? themeHex,
      Value<String>? loginMode,
      Value<String?>? securityPasswordHash,
      Value<String?>? masterPasswordHash,
      Value<String?>? masterPasswordSalt,
      Value<String?>? githubPatEncrypted,
      Value<String?>? githubRepoUrl,
      Value<String>? githubPushMode,
      Value<int>? githubPushDelaySeconds,
      Value<bool>? isTutorialMode,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return SystemTableCompanion(
      systemId: systemId ?? this.systemId,
      name: name ?? this.name,
      logoPath: logoPath ?? this.logoPath,
      themeHex: themeHex ?? this.themeHex,
      loginMode: loginMode ?? this.loginMode,
      securityPasswordHash: securityPasswordHash ?? this.securityPasswordHash,
      masterPasswordHash: masterPasswordHash ?? this.masterPasswordHash,
      masterPasswordSalt: masterPasswordSalt ?? this.masterPasswordSalt,
      githubPatEncrypted: githubPatEncrypted ?? this.githubPatEncrypted,
      githubRepoUrl: githubRepoUrl ?? this.githubRepoUrl,
      githubPushMode: githubPushMode ?? this.githubPushMode,
      githubPushDelaySeconds:
          githubPushDelaySeconds ?? this.githubPushDelaySeconds,
      isTutorialMode: isTutorialMode ?? this.isTutorialMode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (systemId.present) {
      map['system_id'] = Variable<String>(systemId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (logoPath.present) {
      map['logo_path'] = Variable<String>(logoPath.value);
    }
    if (themeHex.present) {
      map['theme_hex'] = Variable<String>(themeHex.value);
    }
    if (loginMode.present) {
      map['login_mode'] = Variable<String>(loginMode.value);
    }
    if (securityPasswordHash.present) {
      map['security_password_hash'] =
          Variable<String>(securityPasswordHash.value);
    }
    if (masterPasswordHash.present) {
      map['master_password_hash'] = Variable<String>(masterPasswordHash.value);
    }
    if (masterPasswordSalt.present) {
      map['master_password_salt'] = Variable<String>(masterPasswordSalt.value);
    }
    if (githubPatEncrypted.present) {
      map['github_pat_encrypted'] = Variable<String>(githubPatEncrypted.value);
    }
    if (githubRepoUrl.present) {
      map['github_repo_url'] = Variable<String>(githubRepoUrl.value);
    }
    if (githubPushMode.present) {
      map['github_push_mode'] = Variable<String>(githubPushMode.value);
    }
    if (githubPushDelaySeconds.present) {
      map['github_push_delay_seconds'] =
          Variable<int>(githubPushDelaySeconds.value);
    }
    if (isTutorialMode.present) {
      map['is_tutorial_mode'] = Variable<bool>(isTutorialMode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SystemTableCompanion(')
          ..write('systemId: $systemId, ')
          ..write('name: $name, ')
          ..write('logoPath: $logoPath, ')
          ..write('themeHex: $themeHex, ')
          ..write('loginMode: $loginMode, ')
          ..write('securityPasswordHash: $securityPasswordHash, ')
          ..write('masterPasswordHash: $masterPasswordHash, ')
          ..write('masterPasswordSalt: $masterPasswordSalt, ')
          ..write('githubPatEncrypted: $githubPatEncrypted, ')
          ..write('githubRepoUrl: $githubRepoUrl, ')
          ..write('githubPushMode: $githubPushMode, ')
          ..write('githubPushDelaySeconds: $githubPushDelaySeconds, ')
          ..write('isTutorialMode: $isTutorialMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VaultTableTable extends VaultTable
    with TableInfo<$VaultTableTable, VaultTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VaultTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _systemIdMeta =
      const VerificationMeta('systemId');
  @override
  late final GeneratedColumn<String> systemId = GeneratedColumn<String>(
      'system_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES system (system_id) ON DELETE CASCADE'));
  static const VerificationMeta _parentVaultIdMeta =
      const VerificationMeta('parentVaultId');
  @override
  late final GeneratedColumn<String> parentVaultId = GeneratedColumn<String>(
      'parent_vault_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _themeHexMeta =
      const VerificationMeta('themeHex');
  @override
  late final GeneratedColumn<String> themeHex = GeneratedColumn<String>(
      'theme_hex', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('#6B3FA0'));
  static const VerificationMeta _loginModeMeta =
      const VerificationMeta('loginMode');
  @override
  late final GeneratedColumn<String> loginMode = GeneratedColumn<String>(
      'login_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('open'));
  static const VerificationMeta _masterPasswordHashMeta =
      const VerificationMeta('masterPasswordHash');
  @override
  late final GeneratedColumn<String> masterPasswordHash =
      GeneratedColumn<String>('master_password_hash', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _githubPatEncryptedMeta =
      const VerificationMeta('githubPatEncrypted');
  @override
  late final GeneratedColumn<String> githubPatEncrypted =
      GeneratedColumn<String>('github_pat_encrypted', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _githubRepoUrlMeta =
      const VerificationMeta('githubRepoUrl');
  @override
  late final GeneratedColumn<String> githubRepoUrl = GeneratedColumn<String>(
      'github_repo_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        isTutorial,
        vaultId,
        systemId,
        parentVaultId,
        name,
        themeHex,
        loginMode,
        masterPasswordHash,
        githubPatEncrypted,
        githubRepoUrl,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vault';
  @override
  VerificationContext validateIntegrity(Insertable<VaultTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    } else if (isInserting) {
      context.missing(_vaultIdMeta);
    }
    if (data.containsKey('system_id')) {
      context.handle(_systemIdMeta,
          systemId.isAcceptableOrUnknown(data['system_id']!, _systemIdMeta));
    } else if (isInserting) {
      context.missing(_systemIdMeta);
    }
    if (data.containsKey('parent_vault_id')) {
      context.handle(
          _parentVaultIdMeta,
          parentVaultId.isAcceptableOrUnknown(
              data['parent_vault_id']!, _parentVaultIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('theme_hex')) {
      context.handle(_themeHexMeta,
          themeHex.isAcceptableOrUnknown(data['theme_hex']!, _themeHexMeta));
    }
    if (data.containsKey('login_mode')) {
      context.handle(_loginModeMeta,
          loginMode.isAcceptableOrUnknown(data['login_mode']!, _loginModeMeta));
    }
    if (data.containsKey('master_password_hash')) {
      context.handle(
          _masterPasswordHashMeta,
          masterPasswordHash.isAcceptableOrUnknown(
              data['master_password_hash']!, _masterPasswordHashMeta));
    }
    if (data.containsKey('github_pat_encrypted')) {
      context.handle(
          _githubPatEncryptedMeta,
          githubPatEncrypted.isAcceptableOrUnknown(
              data['github_pat_encrypted']!, _githubPatEncryptedMeta));
    }
    if (data.containsKey('github_repo_url')) {
      context.handle(
          _githubRepoUrlMeta,
          githubRepoUrl.isAcceptableOrUnknown(
              data['github_repo_url']!, _githubRepoUrlMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {vaultId};
  @override
  VaultTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VaultTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id'])!,
      systemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}system_id'])!,
      parentVaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent_vault_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      themeHex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme_hex'])!,
      loginMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}login_mode'])!,
      masterPasswordHash: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}master_password_hash']),
      githubPatEncrypted: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}github_pat_encrypted']),
      githubRepoUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}github_repo_url']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $VaultTableTable createAlias(String alias) {
    return $VaultTableTable(attachedDatabase, alias);
  }
}

class VaultTableData extends DataClass implements Insertable<VaultTableData> {
  final bool isTutorial;
  final String vaultId;
  final String systemId;
  final String? parentVaultId;
  final String name;
  final String themeHex;
  final String loginMode;
  final String? masterPasswordHash;
  final String? githubPatEncrypted;
  final String? githubRepoUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  const VaultTableData(
      {required this.isTutorial,
      required this.vaultId,
      required this.systemId,
      this.parentVaultId,
      required this.name,
      required this.themeHex,
      required this.loginMode,
      this.masterPasswordHash,
      this.githubPatEncrypted,
      this.githubRepoUrl,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['vault_id'] = Variable<String>(vaultId);
    map['system_id'] = Variable<String>(systemId);
    if (!nullToAbsent || parentVaultId != null) {
      map['parent_vault_id'] = Variable<String>(parentVaultId);
    }
    map['name'] = Variable<String>(name);
    map['theme_hex'] = Variable<String>(themeHex);
    map['login_mode'] = Variable<String>(loginMode);
    if (!nullToAbsent || masterPasswordHash != null) {
      map['master_password_hash'] = Variable<String>(masterPasswordHash);
    }
    if (!nullToAbsent || githubPatEncrypted != null) {
      map['github_pat_encrypted'] = Variable<String>(githubPatEncrypted);
    }
    if (!nullToAbsent || githubRepoUrl != null) {
      map['github_repo_url'] = Variable<String>(githubRepoUrl);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  VaultTableCompanion toCompanion(bool nullToAbsent) {
    return VaultTableCompanion(
      isTutorial: Value(isTutorial),
      vaultId: Value(vaultId),
      systemId: Value(systemId),
      parentVaultId: parentVaultId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentVaultId),
      name: Value(name),
      themeHex: Value(themeHex),
      loginMode: Value(loginMode),
      masterPasswordHash: masterPasswordHash == null && nullToAbsent
          ? const Value.absent()
          : Value(masterPasswordHash),
      githubPatEncrypted: githubPatEncrypted == null && nullToAbsent
          ? const Value.absent()
          : Value(githubPatEncrypted),
      githubRepoUrl: githubRepoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(githubRepoUrl),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory VaultTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VaultTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      vaultId: serializer.fromJson<String>(json['vaultId']),
      systemId: serializer.fromJson<String>(json['systemId']),
      parentVaultId: serializer.fromJson<String?>(json['parentVaultId']),
      name: serializer.fromJson<String>(json['name']),
      themeHex: serializer.fromJson<String>(json['themeHex']),
      loginMode: serializer.fromJson<String>(json['loginMode']),
      masterPasswordHash:
          serializer.fromJson<String?>(json['masterPasswordHash']),
      githubPatEncrypted:
          serializer.fromJson<String?>(json['githubPatEncrypted']),
      githubRepoUrl: serializer.fromJson<String?>(json['githubRepoUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'vaultId': serializer.toJson<String>(vaultId),
      'systemId': serializer.toJson<String>(systemId),
      'parentVaultId': serializer.toJson<String?>(parentVaultId),
      'name': serializer.toJson<String>(name),
      'themeHex': serializer.toJson<String>(themeHex),
      'loginMode': serializer.toJson<String>(loginMode),
      'masterPasswordHash': serializer.toJson<String?>(masterPasswordHash),
      'githubPatEncrypted': serializer.toJson<String?>(githubPatEncrypted),
      'githubRepoUrl': serializer.toJson<String?>(githubRepoUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  VaultTableData copyWith(
          {bool? isTutorial,
          String? vaultId,
          String? systemId,
          Value<String?> parentVaultId = const Value.absent(),
          String? name,
          String? themeHex,
          String? loginMode,
          Value<String?> masterPasswordHash = const Value.absent(),
          Value<String?> githubPatEncrypted = const Value.absent(),
          Value<String?> githubRepoUrl = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      VaultTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        vaultId: vaultId ?? this.vaultId,
        systemId: systemId ?? this.systemId,
        parentVaultId:
            parentVaultId.present ? parentVaultId.value : this.parentVaultId,
        name: name ?? this.name,
        themeHex: themeHex ?? this.themeHex,
        loginMode: loginMode ?? this.loginMode,
        masterPasswordHash: masterPasswordHash.present
            ? masterPasswordHash.value
            : this.masterPasswordHash,
        githubPatEncrypted: githubPatEncrypted.present
            ? githubPatEncrypted.value
            : this.githubPatEncrypted,
        githubRepoUrl:
            githubRepoUrl.present ? githubRepoUrl.value : this.githubRepoUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  VaultTableData copyWithCompanion(VaultTableCompanion data) {
    return VaultTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      systemId: data.systemId.present ? data.systemId.value : this.systemId,
      parentVaultId: data.parentVaultId.present
          ? data.parentVaultId.value
          : this.parentVaultId,
      name: data.name.present ? data.name.value : this.name,
      themeHex: data.themeHex.present ? data.themeHex.value : this.themeHex,
      loginMode: data.loginMode.present ? data.loginMode.value : this.loginMode,
      masterPasswordHash: data.masterPasswordHash.present
          ? data.masterPasswordHash.value
          : this.masterPasswordHash,
      githubPatEncrypted: data.githubPatEncrypted.present
          ? data.githubPatEncrypted.value
          : this.githubPatEncrypted,
      githubRepoUrl: data.githubRepoUrl.present
          ? data.githubRepoUrl.value
          : this.githubRepoUrl,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VaultTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('vaultId: $vaultId, ')
          ..write('systemId: $systemId, ')
          ..write('parentVaultId: $parentVaultId, ')
          ..write('name: $name, ')
          ..write('themeHex: $themeHex, ')
          ..write('loginMode: $loginMode, ')
          ..write('masterPasswordHash: $masterPasswordHash, ')
          ..write('githubPatEncrypted: $githubPatEncrypted, ')
          ..write('githubRepoUrl: $githubRepoUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      isTutorial,
      vaultId,
      systemId,
      parentVaultId,
      name,
      themeHex,
      loginMode,
      masterPasswordHash,
      githubPatEncrypted,
      githubRepoUrl,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VaultTableData &&
          other.isTutorial == this.isTutorial &&
          other.vaultId == this.vaultId &&
          other.systemId == this.systemId &&
          other.parentVaultId == this.parentVaultId &&
          other.name == this.name &&
          other.themeHex == this.themeHex &&
          other.loginMode == this.loginMode &&
          other.masterPasswordHash == this.masterPasswordHash &&
          other.githubPatEncrypted == this.githubPatEncrypted &&
          other.githubRepoUrl == this.githubRepoUrl &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class VaultTableCompanion extends UpdateCompanion<VaultTableData> {
  final Value<bool> isTutorial;
  final Value<String> vaultId;
  final Value<String> systemId;
  final Value<String?> parentVaultId;
  final Value<String> name;
  final Value<String> themeHex;
  final Value<String> loginMode;
  final Value<String?> masterPasswordHash;
  final Value<String?> githubPatEncrypted;
  final Value<String?> githubRepoUrl;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const VaultTableCompanion({
    this.isTutorial = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.systemId = const Value.absent(),
    this.parentVaultId = const Value.absent(),
    this.name = const Value.absent(),
    this.themeHex = const Value.absent(),
    this.loginMode = const Value.absent(),
    this.masterPasswordHash = const Value.absent(),
    this.githubPatEncrypted = const Value.absent(),
    this.githubRepoUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VaultTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String vaultId,
    required String systemId,
    this.parentVaultId = const Value.absent(),
    required String name,
    this.themeHex = const Value.absent(),
    this.loginMode = const Value.absent(),
    this.masterPasswordHash = const Value.absent(),
    this.githubPatEncrypted = const Value.absent(),
    this.githubRepoUrl = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : vaultId = Value(vaultId),
        systemId = Value(systemId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<VaultTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? vaultId,
    Expression<String>? systemId,
    Expression<String>? parentVaultId,
    Expression<String>? name,
    Expression<String>? themeHex,
    Expression<String>? loginMode,
    Expression<String>? masterPasswordHash,
    Expression<String>? githubPatEncrypted,
    Expression<String>? githubRepoUrl,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (vaultId != null) 'vault_id': vaultId,
      if (systemId != null) 'system_id': systemId,
      if (parentVaultId != null) 'parent_vault_id': parentVaultId,
      if (name != null) 'name': name,
      if (themeHex != null) 'theme_hex': themeHex,
      if (loginMode != null) 'login_mode': loginMode,
      if (masterPasswordHash != null)
        'master_password_hash': masterPasswordHash,
      if (githubPatEncrypted != null)
        'github_pat_encrypted': githubPatEncrypted,
      if (githubRepoUrl != null) 'github_repo_url': githubRepoUrl,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VaultTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? vaultId,
      Value<String>? systemId,
      Value<String?>? parentVaultId,
      Value<String>? name,
      Value<String>? themeHex,
      Value<String>? loginMode,
      Value<String?>? masterPasswordHash,
      Value<String?>? githubPatEncrypted,
      Value<String?>? githubRepoUrl,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return VaultTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      vaultId: vaultId ?? this.vaultId,
      systemId: systemId ?? this.systemId,
      parentVaultId: parentVaultId ?? this.parentVaultId,
      name: name ?? this.name,
      themeHex: themeHex ?? this.themeHex,
      loginMode: loginMode ?? this.loginMode,
      masterPasswordHash: masterPasswordHash ?? this.masterPasswordHash,
      githubPatEncrypted: githubPatEncrypted ?? this.githubPatEncrypted,
      githubRepoUrl: githubRepoUrl ?? this.githubRepoUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (systemId.present) {
      map['system_id'] = Variable<String>(systemId.value);
    }
    if (parentVaultId.present) {
      map['parent_vault_id'] = Variable<String>(parentVaultId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (themeHex.present) {
      map['theme_hex'] = Variable<String>(themeHex.value);
    }
    if (loginMode.present) {
      map['login_mode'] = Variable<String>(loginMode.value);
    }
    if (masterPasswordHash.present) {
      map['master_password_hash'] = Variable<String>(masterPasswordHash.value);
    }
    if (githubPatEncrypted.present) {
      map['github_pat_encrypted'] = Variable<String>(githubPatEncrypted.value);
    }
    if (githubRepoUrl.present) {
      map['github_repo_url'] = Variable<String>(githubRepoUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VaultTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('vaultId: $vaultId, ')
          ..write('systemId: $systemId, ')
          ..write('parentVaultId: $parentVaultId, ')
          ..write('name: $name, ')
          ..write('themeHex: $themeHex, ')
          ..write('loginMode: $loginMode, ')
          ..write('masterPasswordHash: $masterPasswordHash, ')
          ..write('githubPatEncrypted: $githubPatEncrypted, ')
          ..write('githubRepoUrl: $githubRepoUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProfileTableTable extends ProfileTable
    with TableInfo<$ProfileTableTable, ProfileTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _profileIdMeta =
      const VerificationMeta('profileId');
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
      'profile_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES vault (vault_id) ON DELETE CASCADE'));
  static const VerificationMeta _parentProfileIdMeta =
      const VerificationMeta('parentProfileId');
  @override
  late final GeneratedColumn<String> parentProfileId = GeneratedColumn<String>(
      'parent_profile_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subsystemTypeMeta =
      const VerificationMeta('subsystemType');
  @override
  late final GeneratedColumn<String> subsystemType = GeneratedColumn<String>(
      'subsystem_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pronounsMeta =
      const VerificationMeta('pronouns');
  @override
  late final GeneratedColumn<String> pronouns = GeneratedColumn<String>(
      'pronouns', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _profileImagePathMeta =
      const VerificationMeta('profileImagePath');
  @override
  late final GeneratedColumn<String> profileImagePath = GeneratedColumn<String>(
      'profile_image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bannerImagePathMeta =
      const VerificationMeta('bannerImagePath');
  @override
  late final GeneratedColumn<String> bannerImagePath = GeneratedColumn<String>(
      'banner_image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _statusCommentMeta =
      const VerificationMeta('statusComment');
  @override
  late final GeneratedColumn<String> statusComment = GeneratedColumn<String>(
      'status_comment', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _passwordHashMeta =
      const VerificationMeta('passwordHash');
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
      'password_hash', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _passwordTypeMeta =
      const VerificationMeta('passwordType');
  @override
  late final GeneratedColumn<String> passwordType = GeneratedColumn<String>(
      'password_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('none'));
  static const VerificationMeta _themeHexMeta =
      const VerificationMeta('themeHex');
  @override
  late final GeneratedColumn<String> themeHex = GeneratedColumn<String>(
      'theme_hex', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isArchivedMeta =
      const VerificationMeta('isArchived');
  @override
  late final GeneratedColumn<bool> isArchived = GeneratedColumn<bool>(
      'is_archived', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_archived" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _archiveReasonMeta =
      const VerificationMeta('archiveReason');
  @override
  late final GeneratedColumn<String> archiveReason = GeneratedColumn<String>(
      'archive_reason', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _archiveReasonLabelIdMeta =
      const VerificationMeta('archiveReasonLabelId');
  @override
  late final GeneratedColumn<String> archiveReasonLabelId =
      GeneratedColumn<String>('archive_reason_label_id', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isCuratedViewMeta =
      const VerificationMeta('isCuratedView');
  @override
  late final GeneratedColumn<bool> isCuratedView = GeneratedColumn<bool>(
      'is_curated_view', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_curated_view" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isInfoHolderMeta =
      const VerificationMeta('isInfoHolder');
  @override
  late final GeneratedColumn<bool> isInfoHolder = GeneratedColumn<bool>(
      'is_info_holder', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_info_holder" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastActiveAtMeta =
      const VerificationMeta('lastActiveAt');
  @override
  late final GeneratedColumn<DateTime> lastActiveAt = GeneratedColumn<DateTime>(
      'last_active_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _isFusionMeta =
      const VerificationMeta('isFusion');
  @override
  late final GeneratedColumn<bool> isFusion = GeneratedColumn<bool>(
      'is_fusion', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_fusion" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        isTutorial,
        profileId,
        vaultId,
        parentProfileId,
        subsystemType,
        name,
        pronouns,
        profileImagePath,
        bannerImagePath,
        description,
        statusComment,
        passwordHash,
        passwordType,
        themeHex,
        isArchived,
        archiveReason,
        archiveReasonLabelId,
        isCuratedView,
        isInfoHolder,
        lastActiveAt,
        isFusion,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile';
  @override
  VerificationContext validateIntegrity(Insertable<ProfileTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta,
          profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    }
    if (data.containsKey('parent_profile_id')) {
      context.handle(
          _parentProfileIdMeta,
          parentProfileId.isAcceptableOrUnknown(
              data['parent_profile_id']!, _parentProfileIdMeta));
    }
    if (data.containsKey('subsystem_type')) {
      context.handle(
          _subsystemTypeMeta,
          subsystemType.isAcceptableOrUnknown(
              data['subsystem_type']!, _subsystemTypeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('pronouns')) {
      context.handle(_pronounsMeta,
          pronouns.isAcceptableOrUnknown(data['pronouns']!, _pronounsMeta));
    }
    if (data.containsKey('profile_image_path')) {
      context.handle(
          _profileImagePathMeta,
          profileImagePath.isAcceptableOrUnknown(
              data['profile_image_path']!, _profileImagePathMeta));
    }
    if (data.containsKey('banner_image_path')) {
      context.handle(
          _bannerImagePathMeta,
          bannerImagePath.isAcceptableOrUnknown(
              data['banner_image_path']!, _bannerImagePathMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('status_comment')) {
      context.handle(
          _statusCommentMeta,
          statusComment.isAcceptableOrUnknown(
              data['status_comment']!, _statusCommentMeta));
    }
    if (data.containsKey('password_hash')) {
      context.handle(
          _passwordHashMeta,
          passwordHash.isAcceptableOrUnknown(
              data['password_hash']!, _passwordHashMeta));
    }
    if (data.containsKey('password_type')) {
      context.handle(
          _passwordTypeMeta,
          passwordType.isAcceptableOrUnknown(
              data['password_type']!, _passwordTypeMeta));
    }
    if (data.containsKey('theme_hex')) {
      context.handle(_themeHexMeta,
          themeHex.isAcceptableOrUnknown(data['theme_hex']!, _themeHexMeta));
    }
    if (data.containsKey('is_archived')) {
      context.handle(
          _isArchivedMeta,
          isArchived.isAcceptableOrUnknown(
              data['is_archived']!, _isArchivedMeta));
    }
    if (data.containsKey('archive_reason')) {
      context.handle(
          _archiveReasonMeta,
          archiveReason.isAcceptableOrUnknown(
              data['archive_reason']!, _archiveReasonMeta));
    }
    if (data.containsKey('archive_reason_label_id')) {
      context.handle(
          _archiveReasonLabelIdMeta,
          archiveReasonLabelId.isAcceptableOrUnknown(
              data['archive_reason_label_id']!, _archiveReasonLabelIdMeta));
    }
    if (data.containsKey('is_curated_view')) {
      context.handle(
          _isCuratedViewMeta,
          isCuratedView.isAcceptableOrUnknown(
              data['is_curated_view']!, _isCuratedViewMeta));
    }
    if (data.containsKey('is_info_holder')) {
      context.handle(
          _isInfoHolderMeta,
          isInfoHolder.isAcceptableOrUnknown(
              data['is_info_holder']!, _isInfoHolderMeta));
    }
    if (data.containsKey('last_active_at')) {
      context.handle(
          _lastActiveAtMeta,
          lastActiveAt.isAcceptableOrUnknown(
              data['last_active_at']!, _lastActiveAtMeta));
    }
    if (data.containsKey('is_fusion')) {
      context.handle(_isFusionMeta,
          isFusion.isAcceptableOrUnknown(data['is_fusion']!, _isFusionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId};
  @override
  ProfileTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      profileId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id']),
      parentProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_profile_id']),
      subsystemType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subsystem_type']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      pronouns: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pronouns'])!,
      profileImagePath: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}profile_image_path']),
      bannerImagePath: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}banner_image_path']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      statusComment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status_comment']),
      passwordHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_hash']),
      passwordType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_type'])!,
      themeHex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme_hex']),
      isArchived: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_archived'])!,
      archiveReason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}archive_reason']),
      archiveReasonLabelId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}archive_reason_label_id']),
      isCuratedView: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_curated_view'])!,
      isInfoHolder: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_info_holder'])!,
      lastActiveAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_active_at']),
      isFusion: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_fusion'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $ProfileTableTable createAlias(String alias) {
    return $ProfileTableTable(attachedDatabase, alias);
  }
}

class ProfileTableData extends DataClass
    implements Insertable<ProfileTableData> {
  final bool isTutorial;
  final String profileId;
  final String? vaultId;
  final String? parentProfileId;
  final String? subsystemType;
  final String name;
  final String pronouns;
  final String? profileImagePath;
  final String? bannerImagePath;
  final String description;
  final String? statusComment;
  final String? passwordHash;
  final String passwordType;
  final String? themeHex;
  final bool isArchived;
  final String? archiveReason;
  final String? archiveReasonLabelId;
  final bool isCuratedView;
  final bool isInfoHolder;
  final DateTime? lastActiveAt;
  final bool isFusion;
  final DateTime createdAt;
  final DateTime updatedAt;
  const ProfileTableData(
      {required this.isTutorial,
      required this.profileId,
      this.vaultId,
      this.parentProfileId,
      this.subsystemType,
      required this.name,
      required this.pronouns,
      this.profileImagePath,
      this.bannerImagePath,
      required this.description,
      this.statusComment,
      this.passwordHash,
      required this.passwordType,
      this.themeHex,
      required this.isArchived,
      this.archiveReason,
      this.archiveReasonLabelId,
      required this.isCuratedView,
      required this.isInfoHolder,
      this.lastActiveAt,
      required this.isFusion,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['profile_id'] = Variable<String>(profileId);
    if (!nullToAbsent || vaultId != null) {
      map['vault_id'] = Variable<String>(vaultId);
    }
    if (!nullToAbsent || parentProfileId != null) {
      map['parent_profile_id'] = Variable<String>(parentProfileId);
    }
    if (!nullToAbsent || subsystemType != null) {
      map['subsystem_type'] = Variable<String>(subsystemType);
    }
    map['name'] = Variable<String>(name);
    map['pronouns'] = Variable<String>(pronouns);
    if (!nullToAbsent || profileImagePath != null) {
      map['profile_image_path'] = Variable<String>(profileImagePath);
    }
    if (!nullToAbsent || bannerImagePath != null) {
      map['banner_image_path'] = Variable<String>(bannerImagePath);
    }
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || statusComment != null) {
      map['status_comment'] = Variable<String>(statusComment);
    }
    if (!nullToAbsent || passwordHash != null) {
      map['password_hash'] = Variable<String>(passwordHash);
    }
    map['password_type'] = Variable<String>(passwordType);
    if (!nullToAbsent || themeHex != null) {
      map['theme_hex'] = Variable<String>(themeHex);
    }
    map['is_archived'] = Variable<bool>(isArchived);
    if (!nullToAbsent || archiveReason != null) {
      map['archive_reason'] = Variable<String>(archiveReason);
    }
    if (!nullToAbsent || archiveReasonLabelId != null) {
      map['archive_reason_label_id'] = Variable<String>(archiveReasonLabelId);
    }
    map['is_curated_view'] = Variable<bool>(isCuratedView);
    map['is_info_holder'] = Variable<bool>(isInfoHolder);
    if (!nullToAbsent || lastActiveAt != null) {
      map['last_active_at'] = Variable<DateTime>(lastActiveAt);
    }
    map['is_fusion'] = Variable<bool>(isFusion);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ProfileTableCompanion toCompanion(bool nullToAbsent) {
    return ProfileTableCompanion(
      isTutorial: Value(isTutorial),
      profileId: Value(profileId),
      vaultId: vaultId == null && nullToAbsent
          ? const Value.absent()
          : Value(vaultId),
      parentProfileId: parentProfileId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentProfileId),
      subsystemType: subsystemType == null && nullToAbsent
          ? const Value.absent()
          : Value(subsystemType),
      name: Value(name),
      pronouns: Value(pronouns),
      profileImagePath: profileImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImagePath),
      bannerImagePath: bannerImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(bannerImagePath),
      description: Value(description),
      statusComment: statusComment == null && nullToAbsent
          ? const Value.absent()
          : Value(statusComment),
      passwordHash: passwordHash == null && nullToAbsent
          ? const Value.absent()
          : Value(passwordHash),
      passwordType: Value(passwordType),
      themeHex: themeHex == null && nullToAbsent
          ? const Value.absent()
          : Value(themeHex),
      isArchived: Value(isArchived),
      archiveReason: archiveReason == null && nullToAbsent
          ? const Value.absent()
          : Value(archiveReason),
      archiveReasonLabelId: archiveReasonLabelId == null && nullToAbsent
          ? const Value.absent()
          : Value(archiveReasonLabelId),
      isCuratedView: Value(isCuratedView),
      isInfoHolder: Value(isInfoHolder),
      lastActiveAt: lastActiveAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastActiveAt),
      isFusion: Value(isFusion),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ProfileTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      profileId: serializer.fromJson<String>(json['profileId']),
      vaultId: serializer.fromJson<String?>(json['vaultId']),
      parentProfileId: serializer.fromJson<String?>(json['parentProfileId']),
      subsystemType: serializer.fromJson<String?>(json['subsystemType']),
      name: serializer.fromJson<String>(json['name']),
      pronouns: serializer.fromJson<String>(json['pronouns']),
      profileImagePath: serializer.fromJson<String?>(json['profileImagePath']),
      bannerImagePath: serializer.fromJson<String?>(json['bannerImagePath']),
      description: serializer.fromJson<String>(json['description']),
      statusComment: serializer.fromJson<String?>(json['statusComment']),
      passwordHash: serializer.fromJson<String?>(json['passwordHash']),
      passwordType: serializer.fromJson<String>(json['passwordType']),
      themeHex: serializer.fromJson<String?>(json['themeHex']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
      archiveReason: serializer.fromJson<String?>(json['archiveReason']),
      archiveReasonLabelId:
          serializer.fromJson<String?>(json['archiveReasonLabelId']),
      isCuratedView: serializer.fromJson<bool>(json['isCuratedView']),
      isInfoHolder: serializer.fromJson<bool>(json['isInfoHolder']),
      lastActiveAt: serializer.fromJson<DateTime?>(json['lastActiveAt']),
      isFusion: serializer.fromJson<bool>(json['isFusion']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'profileId': serializer.toJson<String>(profileId),
      'vaultId': serializer.toJson<String?>(vaultId),
      'parentProfileId': serializer.toJson<String?>(parentProfileId),
      'subsystemType': serializer.toJson<String?>(subsystemType),
      'name': serializer.toJson<String>(name),
      'pronouns': serializer.toJson<String>(pronouns),
      'profileImagePath': serializer.toJson<String?>(profileImagePath),
      'bannerImagePath': serializer.toJson<String?>(bannerImagePath),
      'description': serializer.toJson<String>(description),
      'statusComment': serializer.toJson<String?>(statusComment),
      'passwordHash': serializer.toJson<String?>(passwordHash),
      'passwordType': serializer.toJson<String>(passwordType),
      'themeHex': serializer.toJson<String?>(themeHex),
      'isArchived': serializer.toJson<bool>(isArchived),
      'archiveReason': serializer.toJson<String?>(archiveReason),
      'archiveReasonLabelId': serializer.toJson<String?>(archiveReasonLabelId),
      'isCuratedView': serializer.toJson<bool>(isCuratedView),
      'isInfoHolder': serializer.toJson<bool>(isInfoHolder),
      'lastActiveAt': serializer.toJson<DateTime?>(lastActiveAt),
      'isFusion': serializer.toJson<bool>(isFusion),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ProfileTableData copyWith(
          {bool? isTutorial,
          String? profileId,
          Value<String?> vaultId = const Value.absent(),
          Value<String?> parentProfileId = const Value.absent(),
          Value<String?> subsystemType = const Value.absent(),
          String? name,
          String? pronouns,
          Value<String?> profileImagePath = const Value.absent(),
          Value<String?> bannerImagePath = const Value.absent(),
          String? description,
          Value<String?> statusComment = const Value.absent(),
          Value<String?> passwordHash = const Value.absent(),
          String? passwordType,
          Value<String?> themeHex = const Value.absent(),
          bool? isArchived,
          Value<String?> archiveReason = const Value.absent(),
          Value<String?> archiveReasonLabelId = const Value.absent(),
          bool? isCuratedView,
          bool? isInfoHolder,
          Value<DateTime?> lastActiveAt = const Value.absent(),
          bool? isFusion,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ProfileTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        profileId: profileId ?? this.profileId,
        vaultId: vaultId.present ? vaultId.value : this.vaultId,
        parentProfileId: parentProfileId.present
            ? parentProfileId.value
            : this.parentProfileId,
        subsystemType:
            subsystemType.present ? subsystemType.value : this.subsystemType,
        name: name ?? this.name,
        pronouns: pronouns ?? this.pronouns,
        profileImagePath: profileImagePath.present
            ? profileImagePath.value
            : this.profileImagePath,
        bannerImagePath: bannerImagePath.present
            ? bannerImagePath.value
            : this.bannerImagePath,
        description: description ?? this.description,
        statusComment:
            statusComment.present ? statusComment.value : this.statusComment,
        passwordHash:
            passwordHash.present ? passwordHash.value : this.passwordHash,
        passwordType: passwordType ?? this.passwordType,
        themeHex: themeHex.present ? themeHex.value : this.themeHex,
        isArchived: isArchived ?? this.isArchived,
        archiveReason:
            archiveReason.present ? archiveReason.value : this.archiveReason,
        archiveReasonLabelId: archiveReasonLabelId.present
            ? archiveReasonLabelId.value
            : this.archiveReasonLabelId,
        isCuratedView: isCuratedView ?? this.isCuratedView,
        isInfoHolder: isInfoHolder ?? this.isInfoHolder,
        lastActiveAt:
            lastActiveAt.present ? lastActiveAt.value : this.lastActiveAt,
        isFusion: isFusion ?? this.isFusion,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  ProfileTableData copyWithCompanion(ProfileTableCompanion data) {
    return ProfileTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      parentProfileId: data.parentProfileId.present
          ? data.parentProfileId.value
          : this.parentProfileId,
      subsystemType: data.subsystemType.present
          ? data.subsystemType.value
          : this.subsystemType,
      name: data.name.present ? data.name.value : this.name,
      pronouns: data.pronouns.present ? data.pronouns.value : this.pronouns,
      profileImagePath: data.profileImagePath.present
          ? data.profileImagePath.value
          : this.profileImagePath,
      bannerImagePath: data.bannerImagePath.present
          ? data.bannerImagePath.value
          : this.bannerImagePath,
      description:
          data.description.present ? data.description.value : this.description,
      statusComment: data.statusComment.present
          ? data.statusComment.value
          : this.statusComment,
      passwordHash: data.passwordHash.present
          ? data.passwordHash.value
          : this.passwordHash,
      passwordType: data.passwordType.present
          ? data.passwordType.value
          : this.passwordType,
      themeHex: data.themeHex.present ? data.themeHex.value : this.themeHex,
      isArchived:
          data.isArchived.present ? data.isArchived.value : this.isArchived,
      archiveReason: data.archiveReason.present
          ? data.archiveReason.value
          : this.archiveReason,
      archiveReasonLabelId: data.archiveReasonLabelId.present
          ? data.archiveReasonLabelId.value
          : this.archiveReasonLabelId,
      isCuratedView: data.isCuratedView.present
          ? data.isCuratedView.value
          : this.isCuratedView,
      isInfoHolder: data.isInfoHolder.present
          ? data.isInfoHolder.value
          : this.isInfoHolder,
      lastActiveAt: data.lastActiveAt.present
          ? data.lastActiveAt.value
          : this.lastActiveAt,
      isFusion: data.isFusion.present ? data.isFusion.value : this.isFusion,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('profileId: $profileId, ')
          ..write('vaultId: $vaultId, ')
          ..write('parentProfileId: $parentProfileId, ')
          ..write('subsystemType: $subsystemType, ')
          ..write('name: $name, ')
          ..write('pronouns: $pronouns, ')
          ..write('profileImagePath: $profileImagePath, ')
          ..write('bannerImagePath: $bannerImagePath, ')
          ..write('description: $description, ')
          ..write('statusComment: $statusComment, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('passwordType: $passwordType, ')
          ..write('themeHex: $themeHex, ')
          ..write('isArchived: $isArchived, ')
          ..write('archiveReason: $archiveReason, ')
          ..write('archiveReasonLabelId: $archiveReasonLabelId, ')
          ..write('isCuratedView: $isCuratedView, ')
          ..write('isInfoHolder: $isInfoHolder, ')
          ..write('lastActiveAt: $lastActiveAt, ')
          ..write('isFusion: $isFusion, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        isTutorial,
        profileId,
        vaultId,
        parentProfileId,
        subsystemType,
        name,
        pronouns,
        profileImagePath,
        bannerImagePath,
        description,
        statusComment,
        passwordHash,
        passwordType,
        themeHex,
        isArchived,
        archiveReason,
        archiveReasonLabelId,
        isCuratedView,
        isInfoHolder,
        lastActiveAt,
        isFusion,
        createdAt,
        updatedAt
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileTableData &&
          other.isTutorial == this.isTutorial &&
          other.profileId == this.profileId &&
          other.vaultId == this.vaultId &&
          other.parentProfileId == this.parentProfileId &&
          other.subsystemType == this.subsystemType &&
          other.name == this.name &&
          other.pronouns == this.pronouns &&
          other.profileImagePath == this.profileImagePath &&
          other.bannerImagePath == this.bannerImagePath &&
          other.description == this.description &&
          other.statusComment == this.statusComment &&
          other.passwordHash == this.passwordHash &&
          other.passwordType == this.passwordType &&
          other.themeHex == this.themeHex &&
          other.isArchived == this.isArchived &&
          other.archiveReason == this.archiveReason &&
          other.archiveReasonLabelId == this.archiveReasonLabelId &&
          other.isCuratedView == this.isCuratedView &&
          other.isInfoHolder == this.isInfoHolder &&
          other.lastActiveAt == this.lastActiveAt &&
          other.isFusion == this.isFusion &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ProfileTableCompanion extends UpdateCompanion<ProfileTableData> {
  final Value<bool> isTutorial;
  final Value<String> profileId;
  final Value<String?> vaultId;
  final Value<String?> parentProfileId;
  final Value<String?> subsystemType;
  final Value<String> name;
  final Value<String> pronouns;
  final Value<String?> profileImagePath;
  final Value<String?> bannerImagePath;
  final Value<String> description;
  final Value<String?> statusComment;
  final Value<String?> passwordHash;
  final Value<String> passwordType;
  final Value<String?> themeHex;
  final Value<bool> isArchived;
  final Value<String?> archiveReason;
  final Value<String?> archiveReasonLabelId;
  final Value<bool> isCuratedView;
  final Value<bool> isInfoHolder;
  final Value<DateTime?> lastActiveAt;
  final Value<bool> isFusion;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ProfileTableCompanion({
    this.isTutorial = const Value.absent(),
    this.profileId = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.parentProfileId = const Value.absent(),
    this.subsystemType = const Value.absent(),
    this.name = const Value.absent(),
    this.pronouns = const Value.absent(),
    this.profileImagePath = const Value.absent(),
    this.bannerImagePath = const Value.absent(),
    this.description = const Value.absent(),
    this.statusComment = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.passwordType = const Value.absent(),
    this.themeHex = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.archiveReason = const Value.absent(),
    this.archiveReasonLabelId = const Value.absent(),
    this.isCuratedView = const Value.absent(),
    this.isInfoHolder = const Value.absent(),
    this.lastActiveAt = const Value.absent(),
    this.isFusion = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String profileId,
    this.vaultId = const Value.absent(),
    this.parentProfileId = const Value.absent(),
    this.subsystemType = const Value.absent(),
    required String name,
    this.pronouns = const Value.absent(),
    this.profileImagePath = const Value.absent(),
    this.bannerImagePath = const Value.absent(),
    this.description = const Value.absent(),
    this.statusComment = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.passwordType = const Value.absent(),
    this.themeHex = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.archiveReason = const Value.absent(),
    this.archiveReasonLabelId = const Value.absent(),
    this.isCuratedView = const Value.absent(),
    this.isInfoHolder = const Value.absent(),
    this.lastActiveAt = const Value.absent(),
    this.isFusion = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : profileId = Value(profileId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<ProfileTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? profileId,
    Expression<String>? vaultId,
    Expression<String>? parentProfileId,
    Expression<String>? subsystemType,
    Expression<String>? name,
    Expression<String>? pronouns,
    Expression<String>? profileImagePath,
    Expression<String>? bannerImagePath,
    Expression<String>? description,
    Expression<String>? statusComment,
    Expression<String>? passwordHash,
    Expression<String>? passwordType,
    Expression<String>? themeHex,
    Expression<bool>? isArchived,
    Expression<String>? archiveReason,
    Expression<String>? archiveReasonLabelId,
    Expression<bool>? isCuratedView,
    Expression<bool>? isInfoHolder,
    Expression<DateTime>? lastActiveAt,
    Expression<bool>? isFusion,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (profileId != null) 'profile_id': profileId,
      if (vaultId != null) 'vault_id': vaultId,
      if (parentProfileId != null) 'parent_profile_id': parentProfileId,
      if (subsystemType != null) 'subsystem_type': subsystemType,
      if (name != null) 'name': name,
      if (pronouns != null) 'pronouns': pronouns,
      if (profileImagePath != null) 'profile_image_path': profileImagePath,
      if (bannerImagePath != null) 'banner_image_path': bannerImagePath,
      if (description != null) 'description': description,
      if (statusComment != null) 'status_comment': statusComment,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (passwordType != null) 'password_type': passwordType,
      if (themeHex != null) 'theme_hex': themeHex,
      if (isArchived != null) 'is_archived': isArchived,
      if (archiveReason != null) 'archive_reason': archiveReason,
      if (archiveReasonLabelId != null)
        'archive_reason_label_id': archiveReasonLabelId,
      if (isCuratedView != null) 'is_curated_view': isCuratedView,
      if (isInfoHolder != null) 'is_info_holder': isInfoHolder,
      if (lastActiveAt != null) 'last_active_at': lastActiveAt,
      if (isFusion != null) 'is_fusion': isFusion,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? profileId,
      Value<String?>? vaultId,
      Value<String?>? parentProfileId,
      Value<String?>? subsystemType,
      Value<String>? name,
      Value<String>? pronouns,
      Value<String?>? profileImagePath,
      Value<String?>? bannerImagePath,
      Value<String>? description,
      Value<String?>? statusComment,
      Value<String?>? passwordHash,
      Value<String>? passwordType,
      Value<String?>? themeHex,
      Value<bool>? isArchived,
      Value<String?>? archiveReason,
      Value<String?>? archiveReasonLabelId,
      Value<bool>? isCuratedView,
      Value<bool>? isInfoHolder,
      Value<DateTime?>? lastActiveAt,
      Value<bool>? isFusion,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return ProfileTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      profileId: profileId ?? this.profileId,
      vaultId: vaultId ?? this.vaultId,
      parentProfileId: parentProfileId ?? this.parentProfileId,
      subsystemType: subsystemType ?? this.subsystemType,
      name: name ?? this.name,
      pronouns: pronouns ?? this.pronouns,
      profileImagePath: profileImagePath ?? this.profileImagePath,
      bannerImagePath: bannerImagePath ?? this.bannerImagePath,
      description: description ?? this.description,
      statusComment: statusComment ?? this.statusComment,
      passwordHash: passwordHash ?? this.passwordHash,
      passwordType: passwordType ?? this.passwordType,
      themeHex: themeHex ?? this.themeHex,
      isArchived: isArchived ?? this.isArchived,
      archiveReason: archiveReason ?? this.archiveReason,
      archiveReasonLabelId: archiveReasonLabelId ?? this.archiveReasonLabelId,
      isCuratedView: isCuratedView ?? this.isCuratedView,
      isInfoHolder: isInfoHolder ?? this.isInfoHolder,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      isFusion: isFusion ?? this.isFusion,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (parentProfileId.present) {
      map['parent_profile_id'] = Variable<String>(parentProfileId.value);
    }
    if (subsystemType.present) {
      map['subsystem_type'] = Variable<String>(subsystemType.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (pronouns.present) {
      map['pronouns'] = Variable<String>(pronouns.value);
    }
    if (profileImagePath.present) {
      map['profile_image_path'] = Variable<String>(profileImagePath.value);
    }
    if (bannerImagePath.present) {
      map['banner_image_path'] = Variable<String>(bannerImagePath.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (statusComment.present) {
      map['status_comment'] = Variable<String>(statusComment.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (passwordType.present) {
      map['password_type'] = Variable<String>(passwordType.value);
    }
    if (themeHex.present) {
      map['theme_hex'] = Variable<String>(themeHex.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    if (archiveReason.present) {
      map['archive_reason'] = Variable<String>(archiveReason.value);
    }
    if (archiveReasonLabelId.present) {
      map['archive_reason_label_id'] =
          Variable<String>(archiveReasonLabelId.value);
    }
    if (isCuratedView.present) {
      map['is_curated_view'] = Variable<bool>(isCuratedView.value);
    }
    if (isInfoHolder.present) {
      map['is_info_holder'] = Variable<bool>(isInfoHolder.value);
    }
    if (lastActiveAt.present) {
      map['last_active_at'] = Variable<DateTime>(lastActiveAt.value);
    }
    if (isFusion.present) {
      map['is_fusion'] = Variable<bool>(isFusion.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('profileId: $profileId, ')
          ..write('vaultId: $vaultId, ')
          ..write('parentProfileId: $parentProfileId, ')
          ..write('subsystemType: $subsystemType, ')
          ..write('name: $name, ')
          ..write('pronouns: $pronouns, ')
          ..write('profileImagePath: $profileImagePath, ')
          ..write('bannerImagePath: $bannerImagePath, ')
          ..write('description: $description, ')
          ..write('statusComment: $statusComment, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('passwordType: $passwordType, ')
          ..write('themeHex: $themeHex, ')
          ..write('isArchived: $isArchived, ')
          ..write('archiveReason: $archiveReason, ')
          ..write('archiveReasonLabelId: $archiveReasonLabelId, ')
          ..write('isCuratedView: $isCuratedView, ')
          ..write('isInfoHolder: $isInfoHolder, ')
          ..write('lastActiveAt: $lastActiveAt, ')
          ..write('isFusion: $isFusion, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProfileVaultMembershipTableTable extends ProfileVaultMembershipTable
    with
        TableInfo<$ProfileVaultMembershipTableTable,
            ProfileVaultMembershipTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileVaultMembershipTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _profileIdMeta =
      const VerificationMeta('profileId');
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
      'profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES vault (vault_id) ON DELETE CASCADE'));
  static const VerificationMeta _isPrimaryMeta =
      const VerificationMeta('isPrimary');
  @override
  late final GeneratedColumn<bool> isPrimary = GeneratedColumn<bool>(
      'is_primary', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_primary" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [profileId, vaultId, isPrimary];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile_vault_membership';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProfileVaultMembershipTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta,
          profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    } else if (isInserting) {
      context.missing(_vaultIdMeta);
    }
    if (data.containsKey('is_primary')) {
      context.handle(_isPrimaryMeta,
          isPrimary.isAcceptableOrUnknown(data['is_primary']!, _isPrimaryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId, vaultId};
  @override
  ProfileVaultMembershipTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileVaultMembershipTableData(
      profileId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id'])!,
      isPrimary: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_primary'])!,
    );
  }

  @override
  $ProfileVaultMembershipTableTable createAlias(String alias) {
    return $ProfileVaultMembershipTableTable(attachedDatabase, alias);
  }
}

class ProfileVaultMembershipTableData extends DataClass
    implements Insertable<ProfileVaultMembershipTableData> {
  final String profileId;
  final String vaultId;
  final bool isPrimary;
  const ProfileVaultMembershipTableData(
      {required this.profileId,
      required this.vaultId,
      required this.isPrimary});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['profile_id'] = Variable<String>(profileId);
    map['vault_id'] = Variable<String>(vaultId);
    map['is_primary'] = Variable<bool>(isPrimary);
    return map;
  }

  ProfileVaultMembershipTableCompanion toCompanion(bool nullToAbsent) {
    return ProfileVaultMembershipTableCompanion(
      profileId: Value(profileId),
      vaultId: Value(vaultId),
      isPrimary: Value(isPrimary),
    );
  }

  factory ProfileVaultMembershipTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileVaultMembershipTableData(
      profileId: serializer.fromJson<String>(json['profileId']),
      vaultId: serializer.fromJson<String>(json['vaultId']),
      isPrimary: serializer.fromJson<bool>(json['isPrimary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'profileId': serializer.toJson<String>(profileId),
      'vaultId': serializer.toJson<String>(vaultId),
      'isPrimary': serializer.toJson<bool>(isPrimary),
    };
  }

  ProfileVaultMembershipTableData copyWith(
          {String? profileId, String? vaultId, bool? isPrimary}) =>
      ProfileVaultMembershipTableData(
        profileId: profileId ?? this.profileId,
        vaultId: vaultId ?? this.vaultId,
        isPrimary: isPrimary ?? this.isPrimary,
      );
  ProfileVaultMembershipTableData copyWithCompanion(
      ProfileVaultMembershipTableCompanion data) {
    return ProfileVaultMembershipTableData(
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      isPrimary: data.isPrimary.present ? data.isPrimary.value : this.isPrimary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileVaultMembershipTableData(')
          ..write('profileId: $profileId, ')
          ..write('vaultId: $vaultId, ')
          ..write('isPrimary: $isPrimary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(profileId, vaultId, isPrimary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileVaultMembershipTableData &&
          other.profileId == this.profileId &&
          other.vaultId == this.vaultId &&
          other.isPrimary == this.isPrimary);
}

class ProfileVaultMembershipTableCompanion
    extends UpdateCompanion<ProfileVaultMembershipTableData> {
  final Value<String> profileId;
  final Value<String> vaultId;
  final Value<bool> isPrimary;
  final Value<int> rowid;
  const ProfileVaultMembershipTableCompanion({
    this.profileId = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.isPrimary = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileVaultMembershipTableCompanion.insert({
    required String profileId,
    required String vaultId,
    this.isPrimary = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : profileId = Value(profileId),
        vaultId = Value(vaultId);
  static Insertable<ProfileVaultMembershipTableData> custom({
    Expression<String>? profileId,
    Expression<String>? vaultId,
    Expression<bool>? isPrimary,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (profileId != null) 'profile_id': profileId,
      if (vaultId != null) 'vault_id': vaultId,
      if (isPrimary != null) 'is_primary': isPrimary,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileVaultMembershipTableCompanion copyWith(
      {Value<String>? profileId,
      Value<String>? vaultId,
      Value<bool>? isPrimary,
      Value<int>? rowid}) {
    return ProfileVaultMembershipTableCompanion(
      profileId: profileId ?? this.profileId,
      vaultId: vaultId ?? this.vaultId,
      isPrimary: isPrimary ?? this.isPrimary,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (isPrimary.present) {
      map['is_primary'] = Variable<bool>(isPrimary.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileVaultMembershipTableCompanion(')
          ..write('profileId: $profileId, ')
          ..write('vaultId: $vaultId, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ArchiveReasonLabelTableTable extends ArchiveReasonLabelTable
    with TableInfo<$ArchiveReasonLabelTableTable, ArchiveReasonLabelTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArchiveReasonLabelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _labelIdMeta =
      const VerificationMeta('labelId');
  @override
  late final GeneratedColumn<String> labelId = GeneratedColumn<String>(
      'label_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _systemIdMeta =
      const VerificationMeta('systemId');
  @override
  late final GeneratedColumn<String> systemId = GeneratedColumn<String>(
      'system_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES system (system_id) ON DELETE CASCADE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [isTutorial, labelId, systemId, name, isDefault, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'archive_reason_label';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArchiveReasonLabelTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('label_id')) {
      context.handle(_labelIdMeta,
          labelId.isAcceptableOrUnknown(data['label_id']!, _labelIdMeta));
    } else if (isInserting) {
      context.missing(_labelIdMeta);
    }
    if (data.containsKey('system_id')) {
      context.handle(_systemIdMeta,
          systemId.isAcceptableOrUnknown(data['system_id']!, _systemIdMeta));
    } else if (isInserting) {
      context.missing(_systemIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {labelId};
  @override
  ArchiveReasonLabelTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArchiveReasonLabelTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      labelId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label_id'])!,
      systemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}system_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ArchiveReasonLabelTableTable createAlias(String alias) {
    return $ArchiveReasonLabelTableTable(attachedDatabase, alias);
  }
}

class ArchiveReasonLabelTableData extends DataClass
    implements Insertable<ArchiveReasonLabelTableData> {
  final bool isTutorial;
  final String labelId;
  final String systemId;
  final String name;
  final bool isDefault;
  final DateTime createdAt;
  const ArchiveReasonLabelTableData(
      {required this.isTutorial,
      required this.labelId,
      required this.systemId,
      required this.name,
      required this.isDefault,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['label_id'] = Variable<String>(labelId);
    map['system_id'] = Variable<String>(systemId);
    map['name'] = Variable<String>(name);
    map['is_default'] = Variable<bool>(isDefault);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ArchiveReasonLabelTableCompanion toCompanion(bool nullToAbsent) {
    return ArchiveReasonLabelTableCompanion(
      isTutorial: Value(isTutorial),
      labelId: Value(labelId),
      systemId: Value(systemId),
      name: Value(name),
      isDefault: Value(isDefault),
      createdAt: Value(createdAt),
    );
  }

  factory ArchiveReasonLabelTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArchiveReasonLabelTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      labelId: serializer.fromJson<String>(json['labelId']),
      systemId: serializer.fromJson<String>(json['systemId']),
      name: serializer.fromJson<String>(json['name']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'labelId': serializer.toJson<String>(labelId),
      'systemId': serializer.toJson<String>(systemId),
      'name': serializer.toJson<String>(name),
      'isDefault': serializer.toJson<bool>(isDefault),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ArchiveReasonLabelTableData copyWith(
          {bool? isTutorial,
          String? labelId,
          String? systemId,
          String? name,
          bool? isDefault,
          DateTime? createdAt}) =>
      ArchiveReasonLabelTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        labelId: labelId ?? this.labelId,
        systemId: systemId ?? this.systemId,
        name: name ?? this.name,
        isDefault: isDefault ?? this.isDefault,
        createdAt: createdAt ?? this.createdAt,
      );
  ArchiveReasonLabelTableData copyWithCompanion(
      ArchiveReasonLabelTableCompanion data) {
    return ArchiveReasonLabelTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      labelId: data.labelId.present ? data.labelId.value : this.labelId,
      systemId: data.systemId.present ? data.systemId.value : this.systemId,
      name: data.name.present ? data.name.value : this.name,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ArchiveReasonLabelTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('labelId: $labelId, ')
          ..write('systemId: $systemId, ')
          ..write('name: $name, ')
          ..write('isDefault: $isDefault, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(isTutorial, labelId, systemId, name, isDefault, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArchiveReasonLabelTableData &&
          other.isTutorial == this.isTutorial &&
          other.labelId == this.labelId &&
          other.systemId == this.systemId &&
          other.name == this.name &&
          other.isDefault == this.isDefault &&
          other.createdAt == this.createdAt);
}

class ArchiveReasonLabelTableCompanion
    extends UpdateCompanion<ArchiveReasonLabelTableData> {
  final Value<bool> isTutorial;
  final Value<String> labelId;
  final Value<String> systemId;
  final Value<String> name;
  final Value<bool> isDefault;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ArchiveReasonLabelTableCompanion({
    this.isTutorial = const Value.absent(),
    this.labelId = const Value.absent(),
    this.systemId = const Value.absent(),
    this.name = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ArchiveReasonLabelTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String labelId,
    required String systemId,
    required String name,
    this.isDefault = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : labelId = Value(labelId),
        systemId = Value(systemId),
        name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<ArchiveReasonLabelTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? labelId,
    Expression<String>? systemId,
    Expression<String>? name,
    Expression<bool>? isDefault,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (labelId != null) 'label_id': labelId,
      if (systemId != null) 'system_id': systemId,
      if (name != null) 'name': name,
      if (isDefault != null) 'is_default': isDefault,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ArchiveReasonLabelTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? labelId,
      Value<String>? systemId,
      Value<String>? name,
      Value<bool>? isDefault,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ArchiveReasonLabelTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      labelId: labelId ?? this.labelId,
      systemId: systemId ?? this.systemId,
      name: name ?? this.name,
      isDefault: isDefault ?? this.isDefault,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (labelId.present) {
      map['label_id'] = Variable<String>(labelId.value);
    }
    if (systemId.present) {
      map['system_id'] = Variable<String>(systemId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArchiveReasonLabelTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('labelId: $labelId, ')
          ..write('systemId: $systemId, ')
          ..write('name: $name, ')
          ..write('isDefault: $isDefault, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FusionRecordTableTable extends FusionRecordTable
    with TableInfo<$FusionRecordTableTable, FusionRecordTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FusionRecordTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _fusionIdMeta =
      const VerificationMeta('fusionId');
  @override
  late final GeneratedColumn<String> fusionId = GeneratedColumn<String>(
      'fusion_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resultProfileIdMeta =
      const VerificationMeta('resultProfileId');
  @override
  late final GeneratedColumn<String> resultProfileId = GeneratedColumn<String>(
      'result_profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [isTutorial, fusionId, resultProfileId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fusion_record';
  @override
  VerificationContext validateIntegrity(
      Insertable<FusionRecordTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('fusion_id')) {
      context.handle(_fusionIdMeta,
          fusionId.isAcceptableOrUnknown(data['fusion_id']!, _fusionIdMeta));
    } else if (isInserting) {
      context.missing(_fusionIdMeta);
    }
    if (data.containsKey('result_profile_id')) {
      context.handle(
          _resultProfileIdMeta,
          resultProfileId.isAcceptableOrUnknown(
              data['result_profile_id']!, _resultProfileIdMeta));
    } else if (isInserting) {
      context.missing(_resultProfileIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fusionId};
  @override
  FusionRecordTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FusionRecordTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      fusionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fusion_id'])!,
      resultProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}result_profile_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FusionRecordTableTable createAlias(String alias) {
    return $FusionRecordTableTable(attachedDatabase, alias);
  }
}

class FusionRecordTableData extends DataClass
    implements Insertable<FusionRecordTableData> {
  final bool isTutorial;
  final String fusionId;
  final String resultProfileId;
  final DateTime createdAt;
  const FusionRecordTableData(
      {required this.isTutorial,
      required this.fusionId,
      required this.resultProfileId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['fusion_id'] = Variable<String>(fusionId);
    map['result_profile_id'] = Variable<String>(resultProfileId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FusionRecordTableCompanion toCompanion(bool nullToAbsent) {
    return FusionRecordTableCompanion(
      isTutorial: Value(isTutorial),
      fusionId: Value(fusionId),
      resultProfileId: Value(resultProfileId),
      createdAt: Value(createdAt),
    );
  }

  factory FusionRecordTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FusionRecordTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      fusionId: serializer.fromJson<String>(json['fusionId']),
      resultProfileId: serializer.fromJson<String>(json['resultProfileId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'fusionId': serializer.toJson<String>(fusionId),
      'resultProfileId': serializer.toJson<String>(resultProfileId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FusionRecordTableData copyWith(
          {bool? isTutorial,
          String? fusionId,
          String? resultProfileId,
          DateTime? createdAt}) =>
      FusionRecordTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        fusionId: fusionId ?? this.fusionId,
        resultProfileId: resultProfileId ?? this.resultProfileId,
        createdAt: createdAt ?? this.createdAt,
      );
  FusionRecordTableData copyWithCompanion(FusionRecordTableCompanion data) {
    return FusionRecordTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      fusionId: data.fusionId.present ? data.fusionId.value : this.fusionId,
      resultProfileId: data.resultProfileId.present
          ? data.resultProfileId.value
          : this.resultProfileId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FusionRecordTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('fusionId: $fusionId, ')
          ..write('resultProfileId: $resultProfileId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(isTutorial, fusionId, resultProfileId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FusionRecordTableData &&
          other.isTutorial == this.isTutorial &&
          other.fusionId == this.fusionId &&
          other.resultProfileId == this.resultProfileId &&
          other.createdAt == this.createdAt);
}

class FusionRecordTableCompanion
    extends UpdateCompanion<FusionRecordTableData> {
  final Value<bool> isTutorial;
  final Value<String> fusionId;
  final Value<String> resultProfileId;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FusionRecordTableCompanion({
    this.isTutorial = const Value.absent(),
    this.fusionId = const Value.absent(),
    this.resultProfileId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FusionRecordTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String fusionId,
    required String resultProfileId,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : fusionId = Value(fusionId),
        resultProfileId = Value(resultProfileId),
        createdAt = Value(createdAt);
  static Insertable<FusionRecordTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? fusionId,
    Expression<String>? resultProfileId,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (fusionId != null) 'fusion_id': fusionId,
      if (resultProfileId != null) 'result_profile_id': resultProfileId,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FusionRecordTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? fusionId,
      Value<String>? resultProfileId,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return FusionRecordTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      fusionId: fusionId ?? this.fusionId,
      resultProfileId: resultProfileId ?? this.resultProfileId,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (fusionId.present) {
      map['fusion_id'] = Variable<String>(fusionId.value);
    }
    if (resultProfileId.present) {
      map['result_profile_id'] = Variable<String>(resultProfileId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FusionRecordTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('fusionId: $fusionId, ')
          ..write('resultProfileId: $resultProfileId, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FusionSourceTableTable extends FusionSourceTable
    with TableInfo<$FusionSourceTableTable, FusionSourceTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FusionSourceTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fusionIdMeta =
      const VerificationMeta('fusionId');
  @override
  late final GeneratedColumn<String> fusionId = GeneratedColumn<String>(
      'fusion_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES fusion_record (fusion_id) ON DELETE CASCADE'));
  static const VerificationMeta _sourceProfileIdMeta =
      const VerificationMeta('sourceProfileId');
  @override
  late final GeneratedColumn<String> sourceProfileId = GeneratedColumn<String>(
      'source_profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE SET NULL'));
  @override
  List<GeneratedColumn> get $columns => [fusionId, sourceProfileId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fusion_source';
  @override
  VerificationContext validateIntegrity(
      Insertable<FusionSourceTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('fusion_id')) {
      context.handle(_fusionIdMeta,
          fusionId.isAcceptableOrUnknown(data['fusion_id']!, _fusionIdMeta));
    } else if (isInserting) {
      context.missing(_fusionIdMeta);
    }
    if (data.containsKey('source_profile_id')) {
      context.handle(
          _sourceProfileIdMeta,
          sourceProfileId.isAcceptableOrUnknown(
              data['source_profile_id']!, _sourceProfileIdMeta));
    } else if (isInserting) {
      context.missing(_sourceProfileIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fusionId, sourceProfileId};
  @override
  FusionSourceTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FusionSourceTableData(
      fusionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fusion_id'])!,
      sourceProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}source_profile_id'])!,
    );
  }

  @override
  $FusionSourceTableTable createAlias(String alias) {
    return $FusionSourceTableTable(attachedDatabase, alias);
  }
}

class FusionSourceTableData extends DataClass
    implements Insertable<FusionSourceTableData> {
  final String fusionId;
  final String sourceProfileId;
  const FusionSourceTableData(
      {required this.fusionId, required this.sourceProfileId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['fusion_id'] = Variable<String>(fusionId);
    map['source_profile_id'] = Variable<String>(sourceProfileId);
    return map;
  }

  FusionSourceTableCompanion toCompanion(bool nullToAbsent) {
    return FusionSourceTableCompanion(
      fusionId: Value(fusionId),
      sourceProfileId: Value(sourceProfileId),
    );
  }

  factory FusionSourceTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FusionSourceTableData(
      fusionId: serializer.fromJson<String>(json['fusionId']),
      sourceProfileId: serializer.fromJson<String>(json['sourceProfileId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fusionId': serializer.toJson<String>(fusionId),
      'sourceProfileId': serializer.toJson<String>(sourceProfileId),
    };
  }

  FusionSourceTableData copyWith({String? fusionId, String? sourceProfileId}) =>
      FusionSourceTableData(
        fusionId: fusionId ?? this.fusionId,
        sourceProfileId: sourceProfileId ?? this.sourceProfileId,
      );
  FusionSourceTableData copyWithCompanion(FusionSourceTableCompanion data) {
    return FusionSourceTableData(
      fusionId: data.fusionId.present ? data.fusionId.value : this.fusionId,
      sourceProfileId: data.sourceProfileId.present
          ? data.sourceProfileId.value
          : this.sourceProfileId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FusionSourceTableData(')
          ..write('fusionId: $fusionId, ')
          ..write('sourceProfileId: $sourceProfileId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(fusionId, sourceProfileId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FusionSourceTableData &&
          other.fusionId == this.fusionId &&
          other.sourceProfileId == this.sourceProfileId);
}

class FusionSourceTableCompanion
    extends UpdateCompanion<FusionSourceTableData> {
  final Value<String> fusionId;
  final Value<String> sourceProfileId;
  final Value<int> rowid;
  const FusionSourceTableCompanion({
    this.fusionId = const Value.absent(),
    this.sourceProfileId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FusionSourceTableCompanion.insert({
    required String fusionId,
    required String sourceProfileId,
    this.rowid = const Value.absent(),
  })  : fusionId = Value(fusionId),
        sourceProfileId = Value(sourceProfileId);
  static Insertable<FusionSourceTableData> custom({
    Expression<String>? fusionId,
    Expression<String>? sourceProfileId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fusionId != null) 'fusion_id': fusionId,
      if (sourceProfileId != null) 'source_profile_id': sourceProfileId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FusionSourceTableCompanion copyWith(
      {Value<String>? fusionId,
      Value<String>? sourceProfileId,
      Value<int>? rowid}) {
    return FusionSourceTableCompanion(
      fusionId: fusionId ?? this.fusionId,
      sourceProfileId: sourceProfileId ?? this.sourceProfileId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fusionId.present) {
      map['fusion_id'] = Variable<String>(fusionId.value);
    }
    if (sourceProfileId.present) {
      map['source_profile_id'] = Variable<String>(sourceProfileId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FusionSourceTableCompanion(')
          ..write('fusionId: $fusionId, ')
          ..write('sourceProfileId: $sourceProfileId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HierarchyLevelTableTable extends HierarchyLevelTable
    with TableInfo<$HierarchyLevelTableTable, HierarchyLevelTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HierarchyLevelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _levelIdMeta =
      const VerificationMeta('levelId');
  @override
  late final GeneratedColumn<String> levelId = GeneratedColumn<String>(
      'level_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vault (vault_id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderIndexMeta =
      const VerificationMeta('orderIndex');
  @override
  late final GeneratedColumn<int> orderIndex = GeneratedColumn<int>(
      'order_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationModeMeta =
      const VerificationMeta('operationMode');
  @override
  late final GeneratedColumn<String> operationMode = GeneratedColumn<String>(
      'operation_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('top_down'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        isTutorial,
        levelId,
        vaultId,
        name,
        orderIndex,
        operationMode,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hierarchy_level';
  @override
  VerificationContext validateIntegrity(
      Insertable<HierarchyLevelTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('level_id')) {
      context.handle(_levelIdMeta,
          levelId.isAcceptableOrUnknown(data['level_id']!, _levelIdMeta));
    } else if (isInserting) {
      context.missing(_levelIdMeta);
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('order_index')) {
      context.handle(
          _orderIndexMeta,
          orderIndex.isAcceptableOrUnknown(
              data['order_index']!, _orderIndexMeta));
    } else if (isInserting) {
      context.missing(_orderIndexMeta);
    }
    if (data.containsKey('operation_mode')) {
      context.handle(
          _operationModeMeta,
          operationMode.isAcceptableOrUnknown(
              data['operation_mode']!, _operationModeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {levelId};
  @override
  HierarchyLevelTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HierarchyLevelTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      levelId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}level_id'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      orderIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_index'])!,
      operationMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation_mode'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $HierarchyLevelTableTable createAlias(String alias) {
    return $HierarchyLevelTableTable(attachedDatabase, alias);
  }
}

class HierarchyLevelTableData extends DataClass
    implements Insertable<HierarchyLevelTableData> {
  final bool isTutorial;
  final String levelId;
  final String? vaultId;
  final String name;
  final int orderIndex;
  final String operationMode;
  final DateTime createdAt;
  final DateTime updatedAt;
  const HierarchyLevelTableData(
      {required this.isTutorial,
      required this.levelId,
      this.vaultId,
      required this.name,
      required this.orderIndex,
      required this.operationMode,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['level_id'] = Variable<String>(levelId);
    if (!nullToAbsent || vaultId != null) {
      map['vault_id'] = Variable<String>(vaultId);
    }
    map['name'] = Variable<String>(name);
    map['order_index'] = Variable<int>(orderIndex);
    map['operation_mode'] = Variable<String>(operationMode);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  HierarchyLevelTableCompanion toCompanion(bool nullToAbsent) {
    return HierarchyLevelTableCompanion(
      isTutorial: Value(isTutorial),
      levelId: Value(levelId),
      vaultId: vaultId == null && nullToAbsent
          ? const Value.absent()
          : Value(vaultId),
      name: Value(name),
      orderIndex: Value(orderIndex),
      operationMode: Value(operationMode),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory HierarchyLevelTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HierarchyLevelTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      levelId: serializer.fromJson<String>(json['levelId']),
      vaultId: serializer.fromJson<String?>(json['vaultId']),
      name: serializer.fromJson<String>(json['name']),
      orderIndex: serializer.fromJson<int>(json['orderIndex']),
      operationMode: serializer.fromJson<String>(json['operationMode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'levelId': serializer.toJson<String>(levelId),
      'vaultId': serializer.toJson<String?>(vaultId),
      'name': serializer.toJson<String>(name),
      'orderIndex': serializer.toJson<int>(orderIndex),
      'operationMode': serializer.toJson<String>(operationMode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  HierarchyLevelTableData copyWith(
          {bool? isTutorial,
          String? levelId,
          Value<String?> vaultId = const Value.absent(),
          String? name,
          int? orderIndex,
          String? operationMode,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      HierarchyLevelTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        levelId: levelId ?? this.levelId,
        vaultId: vaultId.present ? vaultId.value : this.vaultId,
        name: name ?? this.name,
        orderIndex: orderIndex ?? this.orderIndex,
        operationMode: operationMode ?? this.operationMode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  HierarchyLevelTableData copyWithCompanion(HierarchyLevelTableCompanion data) {
    return HierarchyLevelTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      levelId: data.levelId.present ? data.levelId.value : this.levelId,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      name: data.name.present ? data.name.value : this.name,
      orderIndex:
          data.orderIndex.present ? data.orderIndex.value : this.orderIndex,
      operationMode: data.operationMode.present
          ? data.operationMode.value
          : this.operationMode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HierarchyLevelTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('levelId: $levelId, ')
          ..write('vaultId: $vaultId, ')
          ..write('name: $name, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('operationMode: $operationMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(isTutorial, levelId, vaultId, name,
      orderIndex, operationMode, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HierarchyLevelTableData &&
          other.isTutorial == this.isTutorial &&
          other.levelId == this.levelId &&
          other.vaultId == this.vaultId &&
          other.name == this.name &&
          other.orderIndex == this.orderIndex &&
          other.operationMode == this.operationMode &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HierarchyLevelTableCompanion
    extends UpdateCompanion<HierarchyLevelTableData> {
  final Value<bool> isTutorial;
  final Value<String> levelId;
  final Value<String?> vaultId;
  final Value<String> name;
  final Value<int> orderIndex;
  final Value<String> operationMode;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const HierarchyLevelTableCompanion({
    this.isTutorial = const Value.absent(),
    this.levelId = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.name = const Value.absent(),
    this.orderIndex = const Value.absent(),
    this.operationMode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HierarchyLevelTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String levelId,
    this.vaultId = const Value.absent(),
    required String name,
    required int orderIndex,
    this.operationMode = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : levelId = Value(levelId),
        name = Value(name),
        orderIndex = Value(orderIndex),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<HierarchyLevelTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? levelId,
    Expression<String>? vaultId,
    Expression<String>? name,
    Expression<int>? orderIndex,
    Expression<String>? operationMode,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (levelId != null) 'level_id': levelId,
      if (vaultId != null) 'vault_id': vaultId,
      if (name != null) 'name': name,
      if (orderIndex != null) 'order_index': orderIndex,
      if (operationMode != null) 'operation_mode': operationMode,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HierarchyLevelTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? levelId,
      Value<String?>? vaultId,
      Value<String>? name,
      Value<int>? orderIndex,
      Value<String>? operationMode,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return HierarchyLevelTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      levelId: levelId ?? this.levelId,
      vaultId: vaultId ?? this.vaultId,
      name: name ?? this.name,
      orderIndex: orderIndex ?? this.orderIndex,
      operationMode: operationMode ?? this.operationMode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (levelId.present) {
      map['level_id'] = Variable<String>(levelId.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (orderIndex.present) {
      map['order_index'] = Variable<int>(orderIndex.value);
    }
    if (operationMode.present) {
      map['operation_mode'] = Variable<String>(operationMode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HierarchyLevelTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('levelId: $levelId, ')
          ..write('vaultId: $vaultId, ')
          ..write('name: $name, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('operationMode: $operationMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProfileHierarchyAssignmentTableTable
    extends ProfileHierarchyAssignmentTable
    with
        TableInfo<$ProfileHierarchyAssignmentTableTable,
            ProfileHierarchyAssignmentTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileHierarchyAssignmentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _profileIdMeta =
      const VerificationMeta('profileId');
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
      'profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _levelIdMeta =
      const VerificationMeta('levelId');
  @override
  late final GeneratedColumn<String> levelId = GeneratedColumn<String>(
      'level_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES hierarchy_level (level_id) ON DELETE CASCADE'));
  @override
  List<GeneratedColumn> get $columns => [profileId, levelId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile_hierarchy_assignment';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProfileHierarchyAssignmentTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta,
          profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('level_id')) {
      context.handle(_levelIdMeta,
          levelId.isAcceptableOrUnknown(data['level_id']!, _levelIdMeta));
    } else if (isInserting) {
      context.missing(_levelIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId, levelId};
  @override
  ProfileHierarchyAssignmentTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileHierarchyAssignmentTableData(
      profileId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      levelId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}level_id'])!,
    );
  }

  @override
  $ProfileHierarchyAssignmentTableTable createAlias(String alias) {
    return $ProfileHierarchyAssignmentTableTable(attachedDatabase, alias);
  }
}

class ProfileHierarchyAssignmentTableData extends DataClass
    implements Insertable<ProfileHierarchyAssignmentTableData> {
  final String profileId;
  final String levelId;
  const ProfileHierarchyAssignmentTableData(
      {required this.profileId, required this.levelId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['profile_id'] = Variable<String>(profileId);
    map['level_id'] = Variable<String>(levelId);
    return map;
  }

  ProfileHierarchyAssignmentTableCompanion toCompanion(bool nullToAbsent) {
    return ProfileHierarchyAssignmentTableCompanion(
      profileId: Value(profileId),
      levelId: Value(levelId),
    );
  }

  factory ProfileHierarchyAssignmentTableData.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileHierarchyAssignmentTableData(
      profileId: serializer.fromJson<String>(json['profileId']),
      levelId: serializer.fromJson<String>(json['levelId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'profileId': serializer.toJson<String>(profileId),
      'levelId': serializer.toJson<String>(levelId),
    };
  }

  ProfileHierarchyAssignmentTableData copyWith(
          {String? profileId, String? levelId}) =>
      ProfileHierarchyAssignmentTableData(
        profileId: profileId ?? this.profileId,
        levelId: levelId ?? this.levelId,
      );
  ProfileHierarchyAssignmentTableData copyWithCompanion(
      ProfileHierarchyAssignmentTableCompanion data) {
    return ProfileHierarchyAssignmentTableData(
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      levelId: data.levelId.present ? data.levelId.value : this.levelId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileHierarchyAssignmentTableData(')
          ..write('profileId: $profileId, ')
          ..write('levelId: $levelId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(profileId, levelId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileHierarchyAssignmentTableData &&
          other.profileId == this.profileId &&
          other.levelId == this.levelId);
}

class ProfileHierarchyAssignmentTableCompanion
    extends UpdateCompanion<ProfileHierarchyAssignmentTableData> {
  final Value<String> profileId;
  final Value<String> levelId;
  final Value<int> rowid;
  const ProfileHierarchyAssignmentTableCompanion({
    this.profileId = const Value.absent(),
    this.levelId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileHierarchyAssignmentTableCompanion.insert({
    required String profileId,
    required String levelId,
    this.rowid = const Value.absent(),
  })  : profileId = Value(profileId),
        levelId = Value(levelId);
  static Insertable<ProfileHierarchyAssignmentTableData> custom({
    Expression<String>? profileId,
    Expression<String>? levelId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (profileId != null) 'profile_id': profileId,
      if (levelId != null) 'level_id': levelId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileHierarchyAssignmentTableCompanion copyWith(
      {Value<String>? profileId, Value<String>? levelId, Value<int>? rowid}) {
    return ProfileHierarchyAssignmentTableCompanion(
      profileId: profileId ?? this.profileId,
      levelId: levelId ?? this.levelId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (levelId.present) {
      map['level_id'] = Variable<String>(levelId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileHierarchyAssignmentTableCompanion(')
          ..write('profileId: $profileId, ')
          ..write('levelId: $levelId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PermissionRuleTableTable extends PermissionRuleTable
    with TableInfo<$PermissionRuleTableTable, PermissionRuleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PermissionRuleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _ruleIdMeta = const VerificationMeta('ruleId');
  @override
  late final GeneratedColumn<String> ruleId = GeneratedColumn<String>(
      'rule_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subjectProfileIdMeta =
      const VerificationMeta('subjectProfileId');
  @override
  late final GeneratedColumn<String> subjectProfileId = GeneratedColumn<String>(
      'subject_profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _targetProfileIdMeta =
      const VerificationMeta('targetProfileId');
  @override
  late final GeneratedColumn<String> targetProfileId = GeneratedColumn<String>(
      'target_profile_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _targetSectionMeta =
      const VerificationMeta('targetSection');
  @override
  late final GeneratedColumn<String> targetSection = GeneratedColumn<String>(
      'target_section', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accessLevelMeta =
      const VerificationMeta('accessLevel');
  @override
  late final GeneratedColumn<String> accessLevel = GeneratedColumn<String>(
      'access_level', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('full'));
  static const VerificationMeta _censorshipModeMeta =
      const VerificationMeta('censorshipMode');
  @override
  late final GeneratedColumn<String> censorshipMode = GeneratedColumn<String>(
      'censorship_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('no_censorship'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        isTutorial,
        ruleId,
        subjectProfileId,
        targetProfileId,
        targetSection,
        accessLevel,
        censorshipMode,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'permission_rule';
  @override
  VerificationContext validateIntegrity(
      Insertable<PermissionRuleTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('rule_id')) {
      context.handle(_ruleIdMeta,
          ruleId.isAcceptableOrUnknown(data['rule_id']!, _ruleIdMeta));
    } else if (isInserting) {
      context.missing(_ruleIdMeta);
    }
    if (data.containsKey('subject_profile_id')) {
      context.handle(
          _subjectProfileIdMeta,
          subjectProfileId.isAcceptableOrUnknown(
              data['subject_profile_id']!, _subjectProfileIdMeta));
    } else if (isInserting) {
      context.missing(_subjectProfileIdMeta);
    }
    if (data.containsKey('target_profile_id')) {
      context.handle(
          _targetProfileIdMeta,
          targetProfileId.isAcceptableOrUnknown(
              data['target_profile_id']!, _targetProfileIdMeta));
    }
    if (data.containsKey('target_section')) {
      context.handle(
          _targetSectionMeta,
          targetSection.isAcceptableOrUnknown(
              data['target_section']!, _targetSectionMeta));
    } else if (isInserting) {
      context.missing(_targetSectionMeta);
    }
    if (data.containsKey('access_level')) {
      context.handle(
          _accessLevelMeta,
          accessLevel.isAcceptableOrUnknown(
              data['access_level']!, _accessLevelMeta));
    }
    if (data.containsKey('censorship_mode')) {
      context.handle(
          _censorshipModeMeta,
          censorshipMode.isAcceptableOrUnknown(
              data['censorship_mode']!, _censorshipModeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ruleId};
  @override
  PermissionRuleTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PermissionRuleTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      ruleId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rule_id'])!,
      subjectProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}subject_profile_id'])!,
      targetProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}target_profile_id']),
      targetSection: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_section'])!,
      accessLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}access_level'])!,
      censorshipMode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}censorship_mode'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $PermissionRuleTableTable createAlias(String alias) {
    return $PermissionRuleTableTable(attachedDatabase, alias);
  }
}

class PermissionRuleTableData extends DataClass
    implements Insertable<PermissionRuleTableData> {
  final bool isTutorial;
  final String ruleId;
  final String subjectProfileId;
  final String? targetProfileId;
  final String targetSection;
  final String accessLevel;
  final String censorshipMode;
  final DateTime createdAt;
  final DateTime updatedAt;
  const PermissionRuleTableData(
      {required this.isTutorial,
      required this.ruleId,
      required this.subjectProfileId,
      this.targetProfileId,
      required this.targetSection,
      required this.accessLevel,
      required this.censorshipMode,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['rule_id'] = Variable<String>(ruleId);
    map['subject_profile_id'] = Variable<String>(subjectProfileId);
    if (!nullToAbsent || targetProfileId != null) {
      map['target_profile_id'] = Variable<String>(targetProfileId);
    }
    map['target_section'] = Variable<String>(targetSection);
    map['access_level'] = Variable<String>(accessLevel);
    map['censorship_mode'] = Variable<String>(censorshipMode);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PermissionRuleTableCompanion toCompanion(bool nullToAbsent) {
    return PermissionRuleTableCompanion(
      isTutorial: Value(isTutorial),
      ruleId: Value(ruleId),
      subjectProfileId: Value(subjectProfileId),
      targetProfileId: targetProfileId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetProfileId),
      targetSection: Value(targetSection),
      accessLevel: Value(accessLevel),
      censorshipMode: Value(censorshipMode),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory PermissionRuleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PermissionRuleTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      ruleId: serializer.fromJson<String>(json['ruleId']),
      subjectProfileId: serializer.fromJson<String>(json['subjectProfileId']),
      targetProfileId: serializer.fromJson<String?>(json['targetProfileId']),
      targetSection: serializer.fromJson<String>(json['targetSection']),
      accessLevel: serializer.fromJson<String>(json['accessLevel']),
      censorshipMode: serializer.fromJson<String>(json['censorshipMode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'ruleId': serializer.toJson<String>(ruleId),
      'subjectProfileId': serializer.toJson<String>(subjectProfileId),
      'targetProfileId': serializer.toJson<String?>(targetProfileId),
      'targetSection': serializer.toJson<String>(targetSection),
      'accessLevel': serializer.toJson<String>(accessLevel),
      'censorshipMode': serializer.toJson<String>(censorshipMode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PermissionRuleTableData copyWith(
          {bool? isTutorial,
          String? ruleId,
          String? subjectProfileId,
          Value<String?> targetProfileId = const Value.absent(),
          String? targetSection,
          String? accessLevel,
          String? censorshipMode,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      PermissionRuleTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        ruleId: ruleId ?? this.ruleId,
        subjectProfileId: subjectProfileId ?? this.subjectProfileId,
        targetProfileId: targetProfileId.present
            ? targetProfileId.value
            : this.targetProfileId,
        targetSection: targetSection ?? this.targetSection,
        accessLevel: accessLevel ?? this.accessLevel,
        censorshipMode: censorshipMode ?? this.censorshipMode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  PermissionRuleTableData copyWithCompanion(PermissionRuleTableCompanion data) {
    return PermissionRuleTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      ruleId: data.ruleId.present ? data.ruleId.value : this.ruleId,
      subjectProfileId: data.subjectProfileId.present
          ? data.subjectProfileId.value
          : this.subjectProfileId,
      targetProfileId: data.targetProfileId.present
          ? data.targetProfileId.value
          : this.targetProfileId,
      targetSection: data.targetSection.present
          ? data.targetSection.value
          : this.targetSection,
      accessLevel:
          data.accessLevel.present ? data.accessLevel.value : this.accessLevel,
      censorshipMode: data.censorshipMode.present
          ? data.censorshipMode.value
          : this.censorshipMode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PermissionRuleTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('ruleId: $ruleId, ')
          ..write('subjectProfileId: $subjectProfileId, ')
          ..write('targetProfileId: $targetProfileId, ')
          ..write('targetSection: $targetSection, ')
          ..write('accessLevel: $accessLevel, ')
          ..write('censorshipMode: $censorshipMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      isTutorial,
      ruleId,
      subjectProfileId,
      targetProfileId,
      targetSection,
      accessLevel,
      censorshipMode,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PermissionRuleTableData &&
          other.isTutorial == this.isTutorial &&
          other.ruleId == this.ruleId &&
          other.subjectProfileId == this.subjectProfileId &&
          other.targetProfileId == this.targetProfileId &&
          other.targetSection == this.targetSection &&
          other.accessLevel == this.accessLevel &&
          other.censorshipMode == this.censorshipMode &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PermissionRuleTableCompanion
    extends UpdateCompanion<PermissionRuleTableData> {
  final Value<bool> isTutorial;
  final Value<String> ruleId;
  final Value<String> subjectProfileId;
  final Value<String?> targetProfileId;
  final Value<String> targetSection;
  final Value<String> accessLevel;
  final Value<String> censorshipMode;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const PermissionRuleTableCompanion({
    this.isTutorial = const Value.absent(),
    this.ruleId = const Value.absent(),
    this.subjectProfileId = const Value.absent(),
    this.targetProfileId = const Value.absent(),
    this.targetSection = const Value.absent(),
    this.accessLevel = const Value.absent(),
    this.censorshipMode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PermissionRuleTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String ruleId,
    required String subjectProfileId,
    this.targetProfileId = const Value.absent(),
    required String targetSection,
    this.accessLevel = const Value.absent(),
    this.censorshipMode = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : ruleId = Value(ruleId),
        subjectProfileId = Value(subjectProfileId),
        targetSection = Value(targetSection),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<PermissionRuleTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? ruleId,
    Expression<String>? subjectProfileId,
    Expression<String>? targetProfileId,
    Expression<String>? targetSection,
    Expression<String>? accessLevel,
    Expression<String>? censorshipMode,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (ruleId != null) 'rule_id': ruleId,
      if (subjectProfileId != null) 'subject_profile_id': subjectProfileId,
      if (targetProfileId != null) 'target_profile_id': targetProfileId,
      if (targetSection != null) 'target_section': targetSection,
      if (accessLevel != null) 'access_level': accessLevel,
      if (censorshipMode != null) 'censorship_mode': censorshipMode,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PermissionRuleTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? ruleId,
      Value<String>? subjectProfileId,
      Value<String?>? targetProfileId,
      Value<String>? targetSection,
      Value<String>? accessLevel,
      Value<String>? censorshipMode,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return PermissionRuleTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      ruleId: ruleId ?? this.ruleId,
      subjectProfileId: subjectProfileId ?? this.subjectProfileId,
      targetProfileId: targetProfileId ?? this.targetProfileId,
      targetSection: targetSection ?? this.targetSection,
      accessLevel: accessLevel ?? this.accessLevel,
      censorshipMode: censorshipMode ?? this.censorshipMode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (ruleId.present) {
      map['rule_id'] = Variable<String>(ruleId.value);
    }
    if (subjectProfileId.present) {
      map['subject_profile_id'] = Variable<String>(subjectProfileId.value);
    }
    if (targetProfileId.present) {
      map['target_profile_id'] = Variable<String>(targetProfileId.value);
    }
    if (targetSection.present) {
      map['target_section'] = Variable<String>(targetSection.value);
    }
    if (accessLevel.present) {
      map['access_level'] = Variable<String>(accessLevel.value);
    }
    if (censorshipMode.present) {
      map['censorship_mode'] = Variable<String>(censorshipMode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PermissionRuleTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('ruleId: $ruleId, ')
          ..write('subjectProfileId: $subjectProfileId, ')
          ..write('targetProfileId: $targetProfileId, ')
          ..write('targetSection: $targetSection, ')
          ..write('accessLevel: $accessLevel, ')
          ..write('censorshipMode: $censorshipMode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FolderTableTable extends FolderTable
    with TableInfo<$FolderTableTable, FolderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FolderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isTutorialMeta =
      const VerificationMeta('isTutorial');
  @override
  late final GeneratedColumn<bool> isTutorial = GeneratedColumn<bool>(
      'is_tutorial', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_tutorial" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _folderIdMeta =
      const VerificationMeta('folderId');
  @override
  late final GeneratedColumn<String> folderId = GeneratedColumn<String>(
      'folder_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vault (vault_id)'));
  static const VerificationMeta _parentFolderIdMeta =
      const VerificationMeta('parentFolderId');
  @override
  late final GeneratedColumn<String> parentFolderId = GeneratedColumn<String>(
      'parent_folder_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _iconEmojiMeta =
      const VerificationMeta('iconEmoji');
  @override
  late final GeneratedColumn<String> iconEmoji = GeneratedColumn<String>(
      'icon_emoji', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('📁'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _visibilityRulesMeta =
      const VerificationMeta('visibilityRules');
  @override
  late final GeneratedColumn<String> visibilityRules = GeneratedColumn<String>(
      'visibility_rules', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('{}'));
  static const VerificationMeta _orderIndexMeta =
      const VerificationMeta('orderIndex');
  @override
  late final GeneratedColumn<int> orderIndex = GeneratedColumn<int>(
      'order_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        isTutorial,
        folderId,
        vaultId,
        parentFolderId,
        name,
        iconEmoji,
        description,
        visibilityRules,
        orderIndex,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'folder';
  @override
  VerificationContext validateIntegrity(Insertable<FolderTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_tutorial')) {
      context.handle(
          _isTutorialMeta,
          isTutorial.isAcceptableOrUnknown(
              data['is_tutorial']!, _isTutorialMeta));
    }
    if (data.containsKey('folder_id')) {
      context.handle(_folderIdMeta,
          folderId.isAcceptableOrUnknown(data['folder_id']!, _folderIdMeta));
    } else if (isInserting) {
      context.missing(_folderIdMeta);
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    }
    if (data.containsKey('parent_folder_id')) {
      context.handle(
          _parentFolderIdMeta,
          parentFolderId.isAcceptableOrUnknown(
              data['parent_folder_id']!, _parentFolderIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon_emoji')) {
      context.handle(_iconEmojiMeta,
          iconEmoji.isAcceptableOrUnknown(data['icon_emoji']!, _iconEmojiMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('visibility_rules')) {
      context.handle(
          _visibilityRulesMeta,
          visibilityRules.isAcceptableOrUnknown(
              data['visibility_rules']!, _visibilityRulesMeta));
    }
    if (data.containsKey('order_index')) {
      context.handle(
          _orderIndexMeta,
          orderIndex.isAcceptableOrUnknown(
              data['order_index']!, _orderIndexMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {folderId};
  @override
  FolderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FolderTableData(
      isTutorial: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tutorial'])!,
      folderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}folder_id'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id']),
      parentFolderId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_folder_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      iconEmoji: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_emoji'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      visibilityRules: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}visibility_rules'])!,
      orderIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_index'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $FolderTableTable createAlias(String alias) {
    return $FolderTableTable(attachedDatabase, alias);
  }
}

class FolderTableData extends DataClass implements Insertable<FolderTableData> {
  final bool isTutorial;
  final String folderId;
  final String? vaultId;
  final String? parentFolderId;
  final String name;
  final String iconEmoji;
  final String description;
  final String visibilityRules;
  final int orderIndex;
  final DateTime createdAt;
  final DateTime updatedAt;
  const FolderTableData(
      {required this.isTutorial,
      required this.folderId,
      this.vaultId,
      this.parentFolderId,
      required this.name,
      required this.iconEmoji,
      required this.description,
      required this.visibilityRules,
      required this.orderIndex,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_tutorial'] = Variable<bool>(isTutorial);
    map['folder_id'] = Variable<String>(folderId);
    if (!nullToAbsent || vaultId != null) {
      map['vault_id'] = Variable<String>(vaultId);
    }
    if (!nullToAbsent || parentFolderId != null) {
      map['parent_folder_id'] = Variable<String>(parentFolderId);
    }
    map['name'] = Variable<String>(name);
    map['icon_emoji'] = Variable<String>(iconEmoji);
    map['description'] = Variable<String>(description);
    map['visibility_rules'] = Variable<String>(visibilityRules);
    map['order_index'] = Variable<int>(orderIndex);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  FolderTableCompanion toCompanion(bool nullToAbsent) {
    return FolderTableCompanion(
      isTutorial: Value(isTutorial),
      folderId: Value(folderId),
      vaultId: vaultId == null && nullToAbsent
          ? const Value.absent()
          : Value(vaultId),
      parentFolderId: parentFolderId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentFolderId),
      name: Value(name),
      iconEmoji: Value(iconEmoji),
      description: Value(description),
      visibilityRules: Value(visibilityRules),
      orderIndex: Value(orderIndex),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory FolderTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FolderTableData(
      isTutorial: serializer.fromJson<bool>(json['isTutorial']),
      folderId: serializer.fromJson<String>(json['folderId']),
      vaultId: serializer.fromJson<String?>(json['vaultId']),
      parentFolderId: serializer.fromJson<String?>(json['parentFolderId']),
      name: serializer.fromJson<String>(json['name']),
      iconEmoji: serializer.fromJson<String>(json['iconEmoji']),
      description: serializer.fromJson<String>(json['description']),
      visibilityRules: serializer.fromJson<String>(json['visibilityRules']),
      orderIndex: serializer.fromJson<int>(json['orderIndex']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isTutorial': serializer.toJson<bool>(isTutorial),
      'folderId': serializer.toJson<String>(folderId),
      'vaultId': serializer.toJson<String?>(vaultId),
      'parentFolderId': serializer.toJson<String?>(parentFolderId),
      'name': serializer.toJson<String>(name),
      'iconEmoji': serializer.toJson<String>(iconEmoji),
      'description': serializer.toJson<String>(description),
      'visibilityRules': serializer.toJson<String>(visibilityRules),
      'orderIndex': serializer.toJson<int>(orderIndex),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  FolderTableData copyWith(
          {bool? isTutorial,
          String? folderId,
          Value<String?> vaultId = const Value.absent(),
          Value<String?> parentFolderId = const Value.absent(),
          String? name,
          String? iconEmoji,
          String? description,
          String? visibilityRules,
          int? orderIndex,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      FolderTableData(
        isTutorial: isTutorial ?? this.isTutorial,
        folderId: folderId ?? this.folderId,
        vaultId: vaultId.present ? vaultId.value : this.vaultId,
        parentFolderId:
            parentFolderId.present ? parentFolderId.value : this.parentFolderId,
        name: name ?? this.name,
        iconEmoji: iconEmoji ?? this.iconEmoji,
        description: description ?? this.description,
        visibilityRules: visibilityRules ?? this.visibilityRules,
        orderIndex: orderIndex ?? this.orderIndex,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  FolderTableData copyWithCompanion(FolderTableCompanion data) {
    return FolderTableData(
      isTutorial:
          data.isTutorial.present ? data.isTutorial.value : this.isTutorial,
      folderId: data.folderId.present ? data.folderId.value : this.folderId,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      parentFolderId: data.parentFolderId.present
          ? data.parentFolderId.value
          : this.parentFolderId,
      name: data.name.present ? data.name.value : this.name,
      iconEmoji: data.iconEmoji.present ? data.iconEmoji.value : this.iconEmoji,
      description:
          data.description.present ? data.description.value : this.description,
      visibilityRules: data.visibilityRules.present
          ? data.visibilityRules.value
          : this.visibilityRules,
      orderIndex:
          data.orderIndex.present ? data.orderIndex.value : this.orderIndex,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FolderTableData(')
          ..write('isTutorial: $isTutorial, ')
          ..write('folderId: $folderId, ')
          ..write('vaultId: $vaultId, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('name: $name, ')
          ..write('iconEmoji: $iconEmoji, ')
          ..write('description: $description, ')
          ..write('visibilityRules: $visibilityRules, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      isTutorial,
      folderId,
      vaultId,
      parentFolderId,
      name,
      iconEmoji,
      description,
      visibilityRules,
      orderIndex,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FolderTableData &&
          other.isTutorial == this.isTutorial &&
          other.folderId == this.folderId &&
          other.vaultId == this.vaultId &&
          other.parentFolderId == this.parentFolderId &&
          other.name == this.name &&
          other.iconEmoji == this.iconEmoji &&
          other.description == this.description &&
          other.visibilityRules == this.visibilityRules &&
          other.orderIndex == this.orderIndex &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class FolderTableCompanion extends UpdateCompanion<FolderTableData> {
  final Value<bool> isTutorial;
  final Value<String> folderId;
  final Value<String?> vaultId;
  final Value<String?> parentFolderId;
  final Value<String> name;
  final Value<String> iconEmoji;
  final Value<String> description;
  final Value<String> visibilityRules;
  final Value<int> orderIndex;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const FolderTableCompanion({
    this.isTutorial = const Value.absent(),
    this.folderId = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    this.name = const Value.absent(),
    this.iconEmoji = const Value.absent(),
    this.description = const Value.absent(),
    this.visibilityRules = const Value.absent(),
    this.orderIndex = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FolderTableCompanion.insert({
    this.isTutorial = const Value.absent(),
    required String folderId,
    this.vaultId = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    required String name,
    this.iconEmoji = const Value.absent(),
    this.description = const Value.absent(),
    this.visibilityRules = const Value.absent(),
    this.orderIndex = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : folderId = Value(folderId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<FolderTableData> custom({
    Expression<bool>? isTutorial,
    Expression<String>? folderId,
    Expression<String>? vaultId,
    Expression<String>? parentFolderId,
    Expression<String>? name,
    Expression<String>? iconEmoji,
    Expression<String>? description,
    Expression<String>? visibilityRules,
    Expression<int>? orderIndex,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isTutorial != null) 'is_tutorial': isTutorial,
      if (folderId != null) 'folder_id': folderId,
      if (vaultId != null) 'vault_id': vaultId,
      if (parentFolderId != null) 'parent_folder_id': parentFolderId,
      if (name != null) 'name': name,
      if (iconEmoji != null) 'icon_emoji': iconEmoji,
      if (description != null) 'description': description,
      if (visibilityRules != null) 'visibility_rules': visibilityRules,
      if (orderIndex != null) 'order_index': orderIndex,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FolderTableCompanion copyWith(
      {Value<bool>? isTutorial,
      Value<String>? folderId,
      Value<String?>? vaultId,
      Value<String?>? parentFolderId,
      Value<String>? name,
      Value<String>? iconEmoji,
      Value<String>? description,
      Value<String>? visibilityRules,
      Value<int>? orderIndex,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return FolderTableCompanion(
      isTutorial: isTutorial ?? this.isTutorial,
      folderId: folderId ?? this.folderId,
      vaultId: vaultId ?? this.vaultId,
      parentFolderId: parentFolderId ?? this.parentFolderId,
      name: name ?? this.name,
      iconEmoji: iconEmoji ?? this.iconEmoji,
      description: description ?? this.description,
      visibilityRules: visibilityRules ?? this.visibilityRules,
      orderIndex: orderIndex ?? this.orderIndex,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isTutorial.present) {
      map['is_tutorial'] = Variable<bool>(isTutorial.value);
    }
    if (folderId.present) {
      map['folder_id'] = Variable<String>(folderId.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (parentFolderId.present) {
      map['parent_folder_id'] = Variable<String>(parentFolderId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (iconEmoji.present) {
      map['icon_emoji'] = Variable<String>(iconEmoji.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (visibilityRules.present) {
      map['visibility_rules'] = Variable<String>(visibilityRules.value);
    }
    if (orderIndex.present) {
      map['order_index'] = Variable<int>(orderIndex.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FolderTableCompanion(')
          ..write('isTutorial: $isTutorial, ')
          ..write('folderId: $folderId, ')
          ..write('vaultId: $vaultId, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('name: $name, ')
          ..write('iconEmoji: $iconEmoji, ')
          ..write('description: $description, ')
          ..write('visibilityRules: $visibilityRules, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProfileFolderMembershipTableTable extends ProfileFolderMembershipTable
    with
        TableInfo<$ProfileFolderMembershipTableTable,
            ProfileFolderMembershipTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileFolderMembershipTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _profileIdMeta =
      const VerificationMeta('profileId');
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
      'profile_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES profile (profile_id) ON DELETE CASCADE'));
  static const VerificationMeta _folderIdMeta =
      const VerificationMeta('folderId');
  @override
  late final GeneratedColumn<String> folderId = GeneratedColumn<String>(
      'folder_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES folder (folder_id) ON DELETE CASCADE'));
  static const VerificationMeta _orderIndexMeta =
      const VerificationMeta('orderIndex');
  @override
  late final GeneratedColumn<int> orderIndex = GeneratedColumn<int>(
      'order_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [profileId, folderId, orderIndex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile_folder_membership';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProfileFolderMembershipTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta,
          profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('folder_id')) {
      context.handle(_folderIdMeta,
          folderId.isAcceptableOrUnknown(data['folder_id']!, _folderIdMeta));
    } else if (isInserting) {
      context.missing(_folderIdMeta);
    }
    if (data.containsKey('order_index')) {
      context.handle(
          _orderIndexMeta,
          orderIndex.isAcceptableOrUnknown(
              data['order_index']!, _orderIndexMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId, folderId};
  @override
  ProfileFolderMembershipTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileFolderMembershipTableData(
      profileId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      folderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}folder_id'])!,
      orderIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_index'])!,
    );
  }

  @override
  $ProfileFolderMembershipTableTable createAlias(String alias) {
    return $ProfileFolderMembershipTableTable(attachedDatabase, alias);
  }
}

class ProfileFolderMembershipTableData extends DataClass
    implements Insertable<ProfileFolderMembershipTableData> {
  final String profileId;
  final String folderId;
  final int orderIndex;
  const ProfileFolderMembershipTableData(
      {required this.profileId,
      required this.folderId,
      required this.orderIndex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['profile_id'] = Variable<String>(profileId);
    map['folder_id'] = Variable<String>(folderId);
    map['order_index'] = Variable<int>(orderIndex);
    return map;
  }

  ProfileFolderMembershipTableCompanion toCompanion(bool nullToAbsent) {
    return ProfileFolderMembershipTableCompanion(
      profileId: Value(profileId),
      folderId: Value(folderId),
      orderIndex: Value(orderIndex),
    );
  }

  factory ProfileFolderMembershipTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileFolderMembershipTableData(
      profileId: serializer.fromJson<String>(json['profileId']),
      folderId: serializer.fromJson<String>(json['folderId']),
      orderIndex: serializer.fromJson<int>(json['orderIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'profileId': serializer.toJson<String>(profileId),
      'folderId': serializer.toJson<String>(folderId),
      'orderIndex': serializer.toJson<int>(orderIndex),
    };
  }

  ProfileFolderMembershipTableData copyWith(
          {String? profileId, String? folderId, int? orderIndex}) =>
      ProfileFolderMembershipTableData(
        profileId: profileId ?? this.profileId,
        folderId: folderId ?? this.folderId,
        orderIndex: orderIndex ?? this.orderIndex,
      );
  ProfileFolderMembershipTableData copyWithCompanion(
      ProfileFolderMembershipTableCompanion data) {
    return ProfileFolderMembershipTableData(
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      folderId: data.folderId.present ? data.folderId.value : this.folderId,
      orderIndex:
          data.orderIndex.present ? data.orderIndex.value : this.orderIndex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileFolderMembershipTableData(')
          ..write('profileId: $profileId, ')
          ..write('folderId: $folderId, ')
          ..write('orderIndex: $orderIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(profileId, folderId, orderIndex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileFolderMembershipTableData &&
          other.profileId == this.profileId &&
          other.folderId == this.folderId &&
          other.orderIndex == this.orderIndex);
}

class ProfileFolderMembershipTableCompanion
    extends UpdateCompanion<ProfileFolderMembershipTableData> {
  final Value<String> profileId;
  final Value<String> folderId;
  final Value<int> orderIndex;
  final Value<int> rowid;
  const ProfileFolderMembershipTableCompanion({
    this.profileId = const Value.absent(),
    this.folderId = const Value.absent(),
    this.orderIndex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileFolderMembershipTableCompanion.insert({
    required String profileId,
    required String folderId,
    this.orderIndex = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : profileId = Value(profileId),
        folderId = Value(folderId);
  static Insertable<ProfileFolderMembershipTableData> custom({
    Expression<String>? profileId,
    Expression<String>? folderId,
    Expression<int>? orderIndex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (profileId != null) 'profile_id': profileId,
      if (folderId != null) 'folder_id': folderId,
      if (orderIndex != null) 'order_index': orderIndex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileFolderMembershipTableCompanion copyWith(
      {Value<String>? profileId,
      Value<String>? folderId,
      Value<int>? orderIndex,
      Value<int>? rowid}) {
    return ProfileFolderMembershipTableCompanion(
      profileId: profileId ?? this.profileId,
      folderId: folderId ?? this.folderId,
      orderIndex: orderIndex ?? this.orderIndex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (folderId.present) {
      map['folder_id'] = Variable<String>(folderId.value);
    }
    if (orderIndex.present) {
      map['order_index'] = Variable<int>(orderIndex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileFolderMembershipTableCompanion(')
          ..write('profileId: $profileId, ')
          ..write('folderId: $folderId, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HistoryEntryTableTable extends HistoryEntryTable
    with TableInfo<$HistoryEntryTableTable, HistoryEntryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HistoryEntryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _entryIdMeta =
      const VerificationMeta('entryId');
  @override
  late final GeneratedColumn<String> entryId = GeneratedColumn<String>(
      'entry_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vaultIdMeta =
      const VerificationMeta('vaultId');
  @override
  late final GeneratedColumn<String> vaultId = GeneratedColumn<String>(
      'vault_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _actingProfileIdMeta =
      const VerificationMeta('actingProfileId');
  @override
  late final GeneratedColumn<String> actingProfileId = GeneratedColumn<String>(
      'acting_profile_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _actionTypeMeta =
      const VerificationMeta('actionType');
  @override
  late final GeneratedColumn<String> actionType = GeneratedColumn<String>(
      'action_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetTypeMeta =
      const VerificationMeta('targetType');
  @override
  late final GeneratedColumn<String> targetType = GeneratedColumn<String>(
      'target_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetIdMeta =
      const VerificationMeta('targetId');
  @override
  late final GeneratedColumn<String> targetId = GeneratedColumn<String>(
      'target_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _detailMeta = const VerificationMeta('detail');
  @override
  late final GeneratedColumn<String> detail = GeneratedColumn<String>(
      'detail', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('{}'));
  static const VerificationMeta _censorshipOverridesMeta =
      const VerificationMeta('censorshipOverrides');
  @override
  late final GeneratedColumn<String> censorshipOverrides =
      GeneratedColumn<String>('censorship_overrides', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('{}'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        entryId,
        vaultId,
        actingProfileId,
        actionType,
        targetType,
        targetId,
        area,
        detail,
        censorshipOverrides,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'history_entry';
  @override
  VerificationContext validateIntegrity(
      Insertable<HistoryEntryTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('entry_id')) {
      context.handle(_entryIdMeta,
          entryId.isAcceptableOrUnknown(data['entry_id']!, _entryIdMeta));
    } else if (isInserting) {
      context.missing(_entryIdMeta);
    }
    if (data.containsKey('vault_id')) {
      context.handle(_vaultIdMeta,
          vaultId.isAcceptableOrUnknown(data['vault_id']!, _vaultIdMeta));
    }
    if (data.containsKey('acting_profile_id')) {
      context.handle(
          _actingProfileIdMeta,
          actingProfileId.isAcceptableOrUnknown(
              data['acting_profile_id']!, _actingProfileIdMeta));
    }
    if (data.containsKey('action_type')) {
      context.handle(
          _actionTypeMeta,
          actionType.isAcceptableOrUnknown(
              data['action_type']!, _actionTypeMeta));
    } else if (isInserting) {
      context.missing(_actionTypeMeta);
    }
    if (data.containsKey('target_type')) {
      context.handle(
          _targetTypeMeta,
          targetType.isAcceptableOrUnknown(
              data['target_type']!, _targetTypeMeta));
    } else if (isInserting) {
      context.missing(_targetTypeMeta);
    }
    if (data.containsKey('target_id')) {
      context.handle(_targetIdMeta,
          targetId.isAcceptableOrUnknown(data['target_id']!, _targetIdMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    } else if (isInserting) {
      context.missing(_areaMeta);
    }
    if (data.containsKey('detail')) {
      context.handle(_detailMeta,
          detail.isAcceptableOrUnknown(data['detail']!, _detailMeta));
    }
    if (data.containsKey('censorship_overrides')) {
      context.handle(
          _censorshipOverridesMeta,
          censorshipOverrides.isAcceptableOrUnknown(
              data['censorship_overrides']!, _censorshipOverridesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {entryId};
  @override
  HistoryEntryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HistoryEntryTableData(
      entryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_id'])!,
      vaultId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vault_id']),
      actingProfileId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}acting_profile_id']),
      actionType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}action_type'])!,
      targetType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_type'])!,
      targetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_id']),
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area'])!,
      detail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}detail'])!,
      censorshipOverrides: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}censorship_overrides'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $HistoryEntryTableTable createAlias(String alias) {
    return $HistoryEntryTableTable(attachedDatabase, alias);
  }
}

class HistoryEntryTableData extends DataClass
    implements Insertable<HistoryEntryTableData> {
  final String entryId;
  final String? vaultId;
  final String? actingProfileId;
  final String actionType;
  final String targetType;
  final String? targetId;
  final String area;
  final String detail;
  final String censorshipOverrides;
  final DateTime createdAt;
  const HistoryEntryTableData(
      {required this.entryId,
      this.vaultId,
      this.actingProfileId,
      required this.actionType,
      required this.targetType,
      this.targetId,
      required this.area,
      required this.detail,
      required this.censorshipOverrides,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['entry_id'] = Variable<String>(entryId);
    if (!nullToAbsent || vaultId != null) {
      map['vault_id'] = Variable<String>(vaultId);
    }
    if (!nullToAbsent || actingProfileId != null) {
      map['acting_profile_id'] = Variable<String>(actingProfileId);
    }
    map['action_type'] = Variable<String>(actionType);
    map['target_type'] = Variable<String>(targetType);
    if (!nullToAbsent || targetId != null) {
      map['target_id'] = Variable<String>(targetId);
    }
    map['area'] = Variable<String>(area);
    map['detail'] = Variable<String>(detail);
    map['censorship_overrides'] = Variable<String>(censorshipOverrides);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HistoryEntryTableCompanion toCompanion(bool nullToAbsent) {
    return HistoryEntryTableCompanion(
      entryId: Value(entryId),
      vaultId: vaultId == null && nullToAbsent
          ? const Value.absent()
          : Value(vaultId),
      actingProfileId: actingProfileId == null && nullToAbsent
          ? const Value.absent()
          : Value(actingProfileId),
      actionType: Value(actionType),
      targetType: Value(targetType),
      targetId: targetId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetId),
      area: Value(area),
      detail: Value(detail),
      censorshipOverrides: Value(censorshipOverrides),
      createdAt: Value(createdAt),
    );
  }

  factory HistoryEntryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HistoryEntryTableData(
      entryId: serializer.fromJson<String>(json['entryId']),
      vaultId: serializer.fromJson<String?>(json['vaultId']),
      actingProfileId: serializer.fromJson<String?>(json['actingProfileId']),
      actionType: serializer.fromJson<String>(json['actionType']),
      targetType: serializer.fromJson<String>(json['targetType']),
      targetId: serializer.fromJson<String?>(json['targetId']),
      area: serializer.fromJson<String>(json['area']),
      detail: serializer.fromJson<String>(json['detail']),
      censorshipOverrides:
          serializer.fromJson<String>(json['censorshipOverrides']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'entryId': serializer.toJson<String>(entryId),
      'vaultId': serializer.toJson<String?>(vaultId),
      'actingProfileId': serializer.toJson<String?>(actingProfileId),
      'actionType': serializer.toJson<String>(actionType),
      'targetType': serializer.toJson<String>(targetType),
      'targetId': serializer.toJson<String?>(targetId),
      'area': serializer.toJson<String>(area),
      'detail': serializer.toJson<String>(detail),
      'censorshipOverrides': serializer.toJson<String>(censorshipOverrides),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  HistoryEntryTableData copyWith(
          {String? entryId,
          Value<String?> vaultId = const Value.absent(),
          Value<String?> actingProfileId = const Value.absent(),
          String? actionType,
          String? targetType,
          Value<String?> targetId = const Value.absent(),
          String? area,
          String? detail,
          String? censorshipOverrides,
          DateTime? createdAt}) =>
      HistoryEntryTableData(
        entryId: entryId ?? this.entryId,
        vaultId: vaultId.present ? vaultId.value : this.vaultId,
        actingProfileId: actingProfileId.present
            ? actingProfileId.value
            : this.actingProfileId,
        actionType: actionType ?? this.actionType,
        targetType: targetType ?? this.targetType,
        targetId: targetId.present ? targetId.value : this.targetId,
        area: area ?? this.area,
        detail: detail ?? this.detail,
        censorshipOverrides: censorshipOverrides ?? this.censorshipOverrides,
        createdAt: createdAt ?? this.createdAt,
      );
  HistoryEntryTableData copyWithCompanion(HistoryEntryTableCompanion data) {
    return HistoryEntryTableData(
      entryId: data.entryId.present ? data.entryId.value : this.entryId,
      vaultId: data.vaultId.present ? data.vaultId.value : this.vaultId,
      actingProfileId: data.actingProfileId.present
          ? data.actingProfileId.value
          : this.actingProfileId,
      actionType:
          data.actionType.present ? data.actionType.value : this.actionType,
      targetType:
          data.targetType.present ? data.targetType.value : this.targetType,
      targetId: data.targetId.present ? data.targetId.value : this.targetId,
      area: data.area.present ? data.area.value : this.area,
      detail: data.detail.present ? data.detail.value : this.detail,
      censorshipOverrides: data.censorshipOverrides.present
          ? data.censorshipOverrides.value
          : this.censorshipOverrides,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HistoryEntryTableData(')
          ..write('entryId: $entryId, ')
          ..write('vaultId: $vaultId, ')
          ..write('actingProfileId: $actingProfileId, ')
          ..write('actionType: $actionType, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('area: $area, ')
          ..write('detail: $detail, ')
          ..write('censorshipOverrides: $censorshipOverrides, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(entryId, vaultId, actingProfileId, actionType,
      targetType, targetId, area, detail, censorshipOverrides, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HistoryEntryTableData &&
          other.entryId == this.entryId &&
          other.vaultId == this.vaultId &&
          other.actingProfileId == this.actingProfileId &&
          other.actionType == this.actionType &&
          other.targetType == this.targetType &&
          other.targetId == this.targetId &&
          other.area == this.area &&
          other.detail == this.detail &&
          other.censorshipOverrides == this.censorshipOverrides &&
          other.createdAt == this.createdAt);
}

class HistoryEntryTableCompanion
    extends UpdateCompanion<HistoryEntryTableData> {
  final Value<String> entryId;
  final Value<String?> vaultId;
  final Value<String?> actingProfileId;
  final Value<String> actionType;
  final Value<String> targetType;
  final Value<String?> targetId;
  final Value<String> area;
  final Value<String> detail;
  final Value<String> censorshipOverrides;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const HistoryEntryTableCompanion({
    this.entryId = const Value.absent(),
    this.vaultId = const Value.absent(),
    this.actingProfileId = const Value.absent(),
    this.actionType = const Value.absent(),
    this.targetType = const Value.absent(),
    this.targetId = const Value.absent(),
    this.area = const Value.absent(),
    this.detail = const Value.absent(),
    this.censorshipOverrides = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HistoryEntryTableCompanion.insert({
    required String entryId,
    this.vaultId = const Value.absent(),
    this.actingProfileId = const Value.absent(),
    required String actionType,
    required String targetType,
    this.targetId = const Value.absent(),
    required String area,
    this.detail = const Value.absent(),
    this.censorshipOverrides = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : entryId = Value(entryId),
        actionType = Value(actionType),
        targetType = Value(targetType),
        area = Value(area),
        createdAt = Value(createdAt);
  static Insertable<HistoryEntryTableData> custom({
    Expression<String>? entryId,
    Expression<String>? vaultId,
    Expression<String>? actingProfileId,
    Expression<String>? actionType,
    Expression<String>? targetType,
    Expression<String>? targetId,
    Expression<String>? area,
    Expression<String>? detail,
    Expression<String>? censorshipOverrides,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (entryId != null) 'entry_id': entryId,
      if (vaultId != null) 'vault_id': vaultId,
      if (actingProfileId != null) 'acting_profile_id': actingProfileId,
      if (actionType != null) 'action_type': actionType,
      if (targetType != null) 'target_type': targetType,
      if (targetId != null) 'target_id': targetId,
      if (area != null) 'area': area,
      if (detail != null) 'detail': detail,
      if (censorshipOverrides != null)
        'censorship_overrides': censorshipOverrides,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HistoryEntryTableCompanion copyWith(
      {Value<String>? entryId,
      Value<String?>? vaultId,
      Value<String?>? actingProfileId,
      Value<String>? actionType,
      Value<String>? targetType,
      Value<String?>? targetId,
      Value<String>? area,
      Value<String>? detail,
      Value<String>? censorshipOverrides,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return HistoryEntryTableCompanion(
      entryId: entryId ?? this.entryId,
      vaultId: vaultId ?? this.vaultId,
      actingProfileId: actingProfileId ?? this.actingProfileId,
      actionType: actionType ?? this.actionType,
      targetType: targetType ?? this.targetType,
      targetId: targetId ?? this.targetId,
      area: area ?? this.area,
      detail: detail ?? this.detail,
      censorshipOverrides: censorshipOverrides ?? this.censorshipOverrides,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (entryId.present) {
      map['entry_id'] = Variable<String>(entryId.value);
    }
    if (vaultId.present) {
      map['vault_id'] = Variable<String>(vaultId.value);
    }
    if (actingProfileId.present) {
      map['acting_profile_id'] = Variable<String>(actingProfileId.value);
    }
    if (actionType.present) {
      map['action_type'] = Variable<String>(actionType.value);
    }
    if (targetType.present) {
      map['target_type'] = Variable<String>(targetType.value);
    }
    if (targetId.present) {
      map['target_id'] = Variable<String>(targetId.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (detail.present) {
      map['detail'] = Variable<String>(detail.value);
    }
    if (censorshipOverrides.present) {
      map['censorship_overrides'] = Variable<String>(censorshipOverrides.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryEntryTableCompanion(')
          ..write('entryId: $entryId, ')
          ..write('vaultId: $vaultId, ')
          ..write('actingProfileId: $actingProfileId, ')
          ..write('actionType: $actionType, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('area: $area, ')
          ..write('detail: $detail, ')
          ..write('censorshipOverrides: $censorshipOverrides, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AppSettingTableTable extends AppSettingTable
    with TableInfo<$AppSettingTableTable, AppSettingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _settingKeyMeta =
      const VerificationMeta('settingKey');
  @override
  late final GeneratedColumn<String> settingKey = GeneratedColumn<String>(
      'setting_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _settingValueMeta =
      const VerificationMeta('settingValue');
  @override
  late final GeneratedColumn<String> settingValue = GeneratedColumn<String>(
      'setting_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [settingKey, settingValue, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_setting';
  @override
  VerificationContext validateIntegrity(
      Insertable<AppSettingTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('setting_key')) {
      context.handle(
          _settingKeyMeta,
          settingKey.isAcceptableOrUnknown(
              data['setting_key']!, _settingKeyMeta));
    } else if (isInserting) {
      context.missing(_settingKeyMeta);
    }
    if (data.containsKey('setting_value')) {
      context.handle(
          _settingValueMeta,
          settingValue.isAcceptableOrUnknown(
              data['setting_value']!, _settingValueMeta));
    } else if (isInserting) {
      context.missing(_settingValueMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {settingKey};
  @override
  AppSettingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSettingTableData(
      settingKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}setting_key'])!,
      settingValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}setting_value'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $AppSettingTableTable createAlias(String alias) {
    return $AppSettingTableTable(attachedDatabase, alias);
  }
}

class AppSettingTableData extends DataClass
    implements Insertable<AppSettingTableData> {
  final String settingKey;
  final String settingValue;
  final DateTime updatedAt;
  const AppSettingTableData(
      {required this.settingKey,
      required this.settingValue,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['setting_key'] = Variable<String>(settingKey);
    map['setting_value'] = Variable<String>(settingValue);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  AppSettingTableCompanion toCompanion(bool nullToAbsent) {
    return AppSettingTableCompanion(
      settingKey: Value(settingKey),
      settingValue: Value(settingValue),
      updatedAt: Value(updatedAt),
    );
  }

  factory AppSettingTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSettingTableData(
      settingKey: serializer.fromJson<String>(json['settingKey']),
      settingValue: serializer.fromJson<String>(json['settingValue']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'settingKey': serializer.toJson<String>(settingKey),
      'settingValue': serializer.toJson<String>(settingValue),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  AppSettingTableData copyWith(
          {String? settingKey, String? settingValue, DateTime? updatedAt}) =>
      AppSettingTableData(
        settingKey: settingKey ?? this.settingKey,
        settingValue: settingValue ?? this.settingValue,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AppSettingTableData copyWithCompanion(AppSettingTableCompanion data) {
    return AppSettingTableData(
      settingKey:
          data.settingKey.present ? data.settingKey.value : this.settingKey,
      settingValue: data.settingValue.present
          ? data.settingValue.value
          : this.settingValue,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingTableData(')
          ..write('settingKey: $settingKey, ')
          ..write('settingValue: $settingValue, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(settingKey, settingValue, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSettingTableData &&
          other.settingKey == this.settingKey &&
          other.settingValue == this.settingValue &&
          other.updatedAt == this.updatedAt);
}

class AppSettingTableCompanion extends UpdateCompanion<AppSettingTableData> {
  final Value<String> settingKey;
  final Value<String> settingValue;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const AppSettingTableCompanion({
    this.settingKey = const Value.absent(),
    this.settingValue = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppSettingTableCompanion.insert({
    required String settingKey,
    required String settingValue,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : settingKey = Value(settingKey),
        settingValue = Value(settingValue),
        updatedAt = Value(updatedAt);
  static Insertable<AppSettingTableData> custom({
    Expression<String>? settingKey,
    Expression<String>? settingValue,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (settingKey != null) 'setting_key': settingKey,
      if (settingValue != null) 'setting_value': settingValue,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppSettingTableCompanion copyWith(
      {Value<String>? settingKey,
      Value<String>? settingValue,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return AppSettingTableCompanion(
      settingKey: settingKey ?? this.settingKey,
      settingValue: settingValue ?? this.settingValue,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (settingKey.present) {
      map['setting_key'] = Variable<String>(settingKey.value);
    }
    if (settingValue.present) {
      map['setting_value'] = Variable<String>(settingValue.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingTableCompanion(')
          ..write('settingKey: $settingKey, ')
          ..write('settingValue: $settingValue, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SystemTableTable systemTable = $SystemTableTable(this);
  late final $VaultTableTable vaultTable = $VaultTableTable(this);
  late final $ProfileTableTable profileTable = $ProfileTableTable(this);
  late final $ProfileVaultMembershipTableTable profileVaultMembershipTable =
      $ProfileVaultMembershipTableTable(this);
  late final $ArchiveReasonLabelTableTable archiveReasonLabelTable =
      $ArchiveReasonLabelTableTable(this);
  late final $FusionRecordTableTable fusionRecordTable =
      $FusionRecordTableTable(this);
  late final $FusionSourceTableTable fusionSourceTable =
      $FusionSourceTableTable(this);
  late final $HierarchyLevelTableTable hierarchyLevelTable =
      $HierarchyLevelTableTable(this);
  late final $ProfileHierarchyAssignmentTableTable
      profileHierarchyAssignmentTable =
      $ProfileHierarchyAssignmentTableTable(this);
  late final $PermissionRuleTableTable permissionRuleTable =
      $PermissionRuleTableTable(this);
  late final $FolderTableTable folderTable = $FolderTableTable(this);
  late final $ProfileFolderMembershipTableTable profileFolderMembershipTable =
      $ProfileFolderMembershipTableTable(this);
  late final $HistoryEntryTableTable historyEntryTable =
      $HistoryEntryTableTable(this);
  late final $AppSettingTableTable appSettingTable =
      $AppSettingTableTable(this);
  late final SystemDao systemDao = SystemDao(this as AppDatabase);
  late final VaultDao vaultDao = VaultDao(this as AppDatabase);
  late final ProfileDao profileDao = ProfileDao(this as AppDatabase);
  late final HierarchyDao hierarchyDao = HierarchyDao(this as AppDatabase);
  late final HistoryDao historyDao = HistoryDao(this as AppDatabase);
  late final FolderDao folderDao = FolderDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        systemTable,
        vaultTable,
        profileTable,
        profileVaultMembershipTable,
        archiveReasonLabelTable,
        fusionRecordTable,
        fusionSourceTable,
        hierarchyLevelTable,
        profileHierarchyAssignmentTable,
        permissionRuleTable,
        folderTable,
        profileFolderMembershipTable,
        historyEntryTable,
        appSettingTable
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('system',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('vault', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('vault',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_vault_membership', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('vault',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_vault_membership', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('system',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('archive_reason_label', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('fusion_record', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('fusion_record',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('fusion_source', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('fusion_source', kind: UpdateKind.update),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_hierarchy_assignment',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('hierarchy_level',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_hierarchy_assignment',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('permission_rule', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('permission_rule', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('profile',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_folder_membership', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('folder',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profile_folder_membership', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$SystemTableTableCreateCompanionBuilder = SystemTableCompanion
    Function({
  required String systemId,
  Value<String> name,
  Value<String?> logoPath,
  Value<String> themeHex,
  Value<String> loginMode,
  Value<String?> securityPasswordHash,
  Value<String?> masterPasswordHash,
  Value<String?> masterPasswordSalt,
  Value<String?> githubPatEncrypted,
  Value<String?> githubRepoUrl,
  Value<String> githubPushMode,
  Value<int> githubPushDelaySeconds,
  Value<bool> isTutorialMode,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$SystemTableTableUpdateCompanionBuilder = SystemTableCompanion
    Function({
  Value<String> systemId,
  Value<String> name,
  Value<String?> logoPath,
  Value<String> themeHex,
  Value<String> loginMode,
  Value<String?> securityPasswordHash,
  Value<String?> masterPasswordHash,
  Value<String?> masterPasswordSalt,
  Value<String?> githubPatEncrypted,
  Value<String?> githubRepoUrl,
  Value<String> githubPushMode,
  Value<int> githubPushDelaySeconds,
  Value<bool> isTutorialMode,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$SystemTableTableReferences
    extends BaseReferences<_$AppDatabase, $SystemTableTable, SystemTableData> {
  $$SystemTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VaultTableTable, List<VaultTableData>>
      _vaultTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.vaultTable,
              aliasName: $_aliasNameGenerator(
                  db.systemTable.systemId, db.vaultTable.systemId));

  $$VaultTableTableProcessedTableManager get vaultTableRefs {
    final manager = $$VaultTableTableTableManager($_db, $_db.vaultTable).filter(
        (f) =>
            f.systemId.systemId.sqlEquals($_itemColumn<String>('system_id')!));

    final cache = $_typedResult.readTableOrNull(_vaultTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ArchiveReasonLabelTableTable,
      List<ArchiveReasonLabelTableData>> _archiveReasonLabelTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.archiveReasonLabelTable,
          aliasName: $_aliasNameGenerator(
              db.systemTable.systemId, db.archiveReasonLabelTable.systemId));

  $$ArchiveReasonLabelTableTableProcessedTableManager
      get archiveReasonLabelTableRefs {
    final manager = $$ArchiveReasonLabelTableTableTableManager(
            $_db, $_db.archiveReasonLabelTable)
        .filter((f) =>
            f.systemId.systemId.sqlEquals($_itemColumn<String>('system_id')!));

    final cache =
        $_typedResult.readTableOrNull(_archiveReasonLabelTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SystemTableTableFilterComposer
    extends Composer<_$AppDatabase, $SystemTableTable> {
  $$SystemTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get systemId => $composableBuilder(
      column: $table.systemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get logoPath => $composableBuilder(
      column: $table.logoPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get loginMode => $composableBuilder(
      column: $table.loginMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get securityPasswordHash => $composableBuilder(
      column: $table.securityPasswordHash,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get masterPasswordSalt => $composableBuilder(
      column: $table.masterPasswordSalt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get githubPushMode => $composableBuilder(
      column: $table.githubPushMode,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get githubPushDelaySeconds => $composableBuilder(
      column: $table.githubPushDelaySeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isTutorialMode => $composableBuilder(
      column: $table.isTutorialMode,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> vaultTableRefs(
      Expression<bool> Function($$VaultTableTableFilterComposer f) f) {
    final $$VaultTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableFilterComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> archiveReasonLabelTableRefs(
      Expression<bool> Function($$ArchiveReasonLabelTableTableFilterComposer f)
          f) {
    final $$ArchiveReasonLabelTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.systemId,
            referencedTable: $db.archiveReasonLabelTable,
            getReferencedColumn: (t) => t.systemId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ArchiveReasonLabelTableTableFilterComposer(
                  $db: $db,
                  $table: $db.archiveReasonLabelTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$SystemTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SystemTableTable> {
  $$SystemTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get systemId => $composableBuilder(
      column: $table.systemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get logoPath => $composableBuilder(
      column: $table.logoPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get loginMode => $composableBuilder(
      column: $table.loginMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get securityPasswordHash => $composableBuilder(
      column: $table.securityPasswordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get masterPasswordSalt => $composableBuilder(
      column: $table.masterPasswordSalt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get githubPushMode => $composableBuilder(
      column: $table.githubPushMode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get githubPushDelaySeconds => $composableBuilder(
      column: $table.githubPushDelaySeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isTutorialMode => $composableBuilder(
      column: $table.isTutorialMode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$SystemTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SystemTableTable> {
  $$SystemTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get systemId =>
      $composableBuilder(column: $table.systemId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get logoPath =>
      $composableBuilder(column: $table.logoPath, builder: (column) => column);

  GeneratedColumn<String> get themeHex =>
      $composableBuilder(column: $table.themeHex, builder: (column) => column);

  GeneratedColumn<String> get loginMode =>
      $composableBuilder(column: $table.loginMode, builder: (column) => column);

  GeneratedColumn<String> get securityPasswordHash => $composableBuilder(
      column: $table.securityPasswordHash, builder: (column) => column);

  GeneratedColumn<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash, builder: (column) => column);

  GeneratedColumn<String> get masterPasswordSalt => $composableBuilder(
      column: $table.masterPasswordSalt, builder: (column) => column);

  GeneratedColumn<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted, builder: (column) => column);

  GeneratedColumn<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl, builder: (column) => column);

  GeneratedColumn<String> get githubPushMode => $composableBuilder(
      column: $table.githubPushMode, builder: (column) => column);

  GeneratedColumn<int> get githubPushDelaySeconds => $composableBuilder(
      column: $table.githubPushDelaySeconds, builder: (column) => column);

  GeneratedColumn<bool> get isTutorialMode => $composableBuilder(
      column: $table.isTutorialMode, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> vaultTableRefs<T extends Object>(
      Expression<T> Function($$VaultTableTableAnnotationComposer a) f) {
    final $$VaultTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableAnnotationComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> archiveReasonLabelTableRefs<T extends Object>(
      Expression<T> Function($$ArchiveReasonLabelTableTableAnnotationComposer a)
          f) {
    final $$ArchiveReasonLabelTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.systemId,
            referencedTable: $db.archiveReasonLabelTable,
            getReferencedColumn: (t) => t.systemId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ArchiveReasonLabelTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.archiveReasonLabelTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$SystemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SystemTableTable,
    SystemTableData,
    $$SystemTableTableFilterComposer,
    $$SystemTableTableOrderingComposer,
    $$SystemTableTableAnnotationComposer,
    $$SystemTableTableCreateCompanionBuilder,
    $$SystemTableTableUpdateCompanionBuilder,
    (SystemTableData, $$SystemTableTableReferences),
    SystemTableData,
    PrefetchHooks Function(
        {bool vaultTableRefs, bool archiveReasonLabelTableRefs})> {
  $$SystemTableTableTableManager(_$AppDatabase db, $SystemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SystemTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SystemTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SystemTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> systemId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> logoPath = const Value.absent(),
            Value<String> themeHex = const Value.absent(),
            Value<String> loginMode = const Value.absent(),
            Value<String?> securityPasswordHash = const Value.absent(),
            Value<String?> masterPasswordHash = const Value.absent(),
            Value<String?> masterPasswordSalt = const Value.absent(),
            Value<String?> githubPatEncrypted = const Value.absent(),
            Value<String?> githubRepoUrl = const Value.absent(),
            Value<String> githubPushMode = const Value.absent(),
            Value<int> githubPushDelaySeconds = const Value.absent(),
            Value<bool> isTutorialMode = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SystemTableCompanion(
            systemId: systemId,
            name: name,
            logoPath: logoPath,
            themeHex: themeHex,
            loginMode: loginMode,
            securityPasswordHash: securityPasswordHash,
            masterPasswordHash: masterPasswordHash,
            masterPasswordSalt: masterPasswordSalt,
            githubPatEncrypted: githubPatEncrypted,
            githubRepoUrl: githubRepoUrl,
            githubPushMode: githubPushMode,
            githubPushDelaySeconds: githubPushDelaySeconds,
            isTutorialMode: isTutorialMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String systemId,
            Value<String> name = const Value.absent(),
            Value<String?> logoPath = const Value.absent(),
            Value<String> themeHex = const Value.absent(),
            Value<String> loginMode = const Value.absent(),
            Value<String?> securityPasswordHash = const Value.absent(),
            Value<String?> masterPasswordHash = const Value.absent(),
            Value<String?> masterPasswordSalt = const Value.absent(),
            Value<String?> githubPatEncrypted = const Value.absent(),
            Value<String?> githubRepoUrl = const Value.absent(),
            Value<String> githubPushMode = const Value.absent(),
            Value<int> githubPushDelaySeconds = const Value.absent(),
            Value<bool> isTutorialMode = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SystemTableCompanion.insert(
            systemId: systemId,
            name: name,
            logoPath: logoPath,
            themeHex: themeHex,
            loginMode: loginMode,
            securityPasswordHash: securityPasswordHash,
            masterPasswordHash: masterPasswordHash,
            masterPasswordSalt: masterPasswordSalt,
            githubPatEncrypted: githubPatEncrypted,
            githubRepoUrl: githubRepoUrl,
            githubPushMode: githubPushMode,
            githubPushDelaySeconds: githubPushDelaySeconds,
            isTutorialMode: isTutorialMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SystemTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {vaultTableRefs = false, archiveReasonLabelTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (vaultTableRefs) db.vaultTable,
                if (archiveReasonLabelTableRefs) db.archiveReasonLabelTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (vaultTableRefs)
                    await $_getPrefetchedData<SystemTableData,
                            $SystemTableTable, VaultTableData>(
                        currentTable: table,
                        referencedTable: $$SystemTableTableReferences
                            ._vaultTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SystemTableTableReferences(db, table, p0)
                                .vaultTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.systemId == item.systemId),
                        typedResults: items),
                  if (archiveReasonLabelTableRefs)
                    await $_getPrefetchedData<SystemTableData,
                            $SystemTableTable, ArchiveReasonLabelTableData>(
                        currentTable: table,
                        referencedTable: $$SystemTableTableReferences
                            ._archiveReasonLabelTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SystemTableTableReferences(db, table, p0)
                                .archiveReasonLabelTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.systemId == item.systemId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SystemTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SystemTableTable,
    SystemTableData,
    $$SystemTableTableFilterComposer,
    $$SystemTableTableOrderingComposer,
    $$SystemTableTableAnnotationComposer,
    $$SystemTableTableCreateCompanionBuilder,
    $$SystemTableTableUpdateCompanionBuilder,
    (SystemTableData, $$SystemTableTableReferences),
    SystemTableData,
    PrefetchHooks Function(
        {bool vaultTableRefs, bool archiveReasonLabelTableRefs})>;
typedef $$VaultTableTableCreateCompanionBuilder = VaultTableCompanion Function({
  Value<bool> isTutorial,
  required String vaultId,
  required String systemId,
  Value<String?> parentVaultId,
  required String name,
  Value<String> themeHex,
  Value<String> loginMode,
  Value<String?> masterPasswordHash,
  Value<String?> githubPatEncrypted,
  Value<String?> githubRepoUrl,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$VaultTableTableUpdateCompanionBuilder = VaultTableCompanion Function({
  Value<bool> isTutorial,
  Value<String> vaultId,
  Value<String> systemId,
  Value<String?> parentVaultId,
  Value<String> name,
  Value<String> themeHex,
  Value<String> loginMode,
  Value<String?> masterPasswordHash,
  Value<String?> githubPatEncrypted,
  Value<String?> githubRepoUrl,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$VaultTableTableReferences
    extends BaseReferences<_$AppDatabase, $VaultTableTable, VaultTableData> {
  $$VaultTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SystemTableTable _systemIdTable(_$AppDatabase db) =>
      db.systemTable.createAlias($_aliasNameGenerator(
          db.vaultTable.systemId, db.systemTable.systemId));

  $$SystemTableTableProcessedTableManager get systemId {
    final $_column = $_itemColumn<String>('system_id')!;

    final manager = $$SystemTableTableTableManager($_db, $_db.systemTable)
        .filter((f) => f.systemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_systemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ProfileTableTable, List<ProfileTableData>>
      _profileTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileTable,
              aliasName: $_aliasNameGenerator(
                  db.vaultTable.vaultId, db.profileTable.vaultId));

  $$ProfileTableTableProcessedTableManager get profileTableRefs {
    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) =>
            f.vaultId.vaultId.sqlEquals($_itemColumn<String>('vault_id')!));

    final cache = $_typedResult.readTableOrNull(_profileTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProfileVaultMembershipTableTable,
          List<ProfileVaultMembershipTableData>>
      _profileVaultMembershipTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileVaultMembershipTable,
              aliasName: $_aliasNameGenerator(db.vaultTable.vaultId,
                  db.profileVaultMembershipTable.vaultId));

  $$ProfileVaultMembershipTableTableProcessedTableManager
      get profileVaultMembershipTableRefs {
    final manager = $$ProfileVaultMembershipTableTableTableManager(
            $_db, $_db.profileVaultMembershipTable)
        .filter((f) =>
            f.vaultId.vaultId.sqlEquals($_itemColumn<String>('vault_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileVaultMembershipTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$HierarchyLevelTableTable,
      List<HierarchyLevelTableData>> _hierarchyLevelTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.hierarchyLevelTable,
          aliasName: $_aliasNameGenerator(
              db.vaultTable.vaultId, db.hierarchyLevelTable.vaultId));

  $$HierarchyLevelTableTableProcessedTableManager get hierarchyLevelTableRefs {
    final manager =
        $$HierarchyLevelTableTableTableManager($_db, $_db.hierarchyLevelTable)
            .filter((f) =>
                f.vaultId.vaultId.sqlEquals($_itemColumn<String>('vault_id')!));

    final cache =
        $_typedResult.readTableOrNull(_hierarchyLevelTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$FolderTableTable, List<FolderTableData>>
      _folderTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.folderTable,
              aliasName: $_aliasNameGenerator(
                  db.vaultTable.vaultId, db.folderTable.vaultId));

  $$FolderTableTableProcessedTableManager get folderTableRefs {
    final manager = $$FolderTableTableTableManager($_db, $_db.folderTable)
        .filter((f) =>
            f.vaultId.vaultId.sqlEquals($_itemColumn<String>('vault_id')!));

    final cache = $_typedResult.readTableOrNull(_folderTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$VaultTableTableFilterComposer
    extends Composer<_$AppDatabase, $VaultTableTable> {
  $$VaultTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get vaultId => $composableBuilder(
      column: $table.vaultId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parentVaultId => $composableBuilder(
      column: $table.parentVaultId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get loginMode => $composableBuilder(
      column: $table.loginMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$SystemTableTableFilterComposer get systemId {
    final $$SystemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableFilterComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> profileTableRefs(
      Expression<bool> Function($$ProfileTableTableFilterComposer f) f) {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> profileVaultMembershipTableRefs(
      Expression<bool> Function(
              $$ProfileVaultMembershipTableTableFilterComposer f)
          f) {
    final $$ProfileVaultMembershipTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.vaultId,
            referencedTable: $db.profileVaultMembershipTable,
            getReferencedColumn: (t) => t.vaultId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileVaultMembershipTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileVaultMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<bool> hierarchyLevelTableRefs(
      Expression<bool> Function($$HierarchyLevelTableTableFilterComposer f) f) {
    final $$HierarchyLevelTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.hierarchyLevelTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HierarchyLevelTableTableFilterComposer(
              $db: $db,
              $table: $db.hierarchyLevelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> folderTableRefs(
      Expression<bool> Function($$FolderTableTableFilterComposer f) f) {
    final $$FolderTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.folderTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FolderTableTableFilterComposer(
              $db: $db,
              $table: $db.folderTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VaultTableTableOrderingComposer
    extends Composer<_$AppDatabase, $VaultTableTable> {
  $$VaultTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get vaultId => $composableBuilder(
      column: $table.vaultId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parentVaultId => $composableBuilder(
      column: $table.parentVaultId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get loginMode => $composableBuilder(
      column: $table.loginMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$SystemTableTableOrderingComposer get systemId {
    final $$SystemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableOrderingComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VaultTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $VaultTableTable> {
  $$VaultTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get vaultId =>
      $composableBuilder(column: $table.vaultId, builder: (column) => column);

  GeneratedColumn<String> get parentVaultId => $composableBuilder(
      column: $table.parentVaultId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get themeHex =>
      $composableBuilder(column: $table.themeHex, builder: (column) => column);

  GeneratedColumn<String> get loginMode =>
      $composableBuilder(column: $table.loginMode, builder: (column) => column);

  GeneratedColumn<String> get masterPasswordHash => $composableBuilder(
      column: $table.masterPasswordHash, builder: (column) => column);

  GeneratedColumn<String> get githubPatEncrypted => $composableBuilder(
      column: $table.githubPatEncrypted, builder: (column) => column);

  GeneratedColumn<String> get githubRepoUrl => $composableBuilder(
      column: $table.githubRepoUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$SystemTableTableAnnotationComposer get systemId {
    final $$SystemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> profileTableRefs<T extends Object>(
      Expression<T> Function($$ProfileTableTableAnnotationComposer a) f) {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> profileVaultMembershipTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileVaultMembershipTableTableAnnotationComposer a)
          f) {
    final $$ProfileVaultMembershipTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.vaultId,
            referencedTable: $db.profileVaultMembershipTable,
            getReferencedColumn: (t) => t.vaultId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileVaultMembershipTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileVaultMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> hierarchyLevelTableRefs<T extends Object>(
      Expression<T> Function($$HierarchyLevelTableTableAnnotationComposer a)
          f) {
    final $$HierarchyLevelTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.vaultId,
            referencedTable: $db.hierarchyLevelTable,
            getReferencedColumn: (t) => t.vaultId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$HierarchyLevelTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.hierarchyLevelTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> folderTableRefs<T extends Object>(
      Expression<T> Function($$FolderTableTableAnnotationComposer a) f) {
    final $$FolderTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.folderTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FolderTableTableAnnotationComposer(
              $db: $db,
              $table: $db.folderTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VaultTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VaultTableTable,
    VaultTableData,
    $$VaultTableTableFilterComposer,
    $$VaultTableTableOrderingComposer,
    $$VaultTableTableAnnotationComposer,
    $$VaultTableTableCreateCompanionBuilder,
    $$VaultTableTableUpdateCompanionBuilder,
    (VaultTableData, $$VaultTableTableReferences),
    VaultTableData,
    PrefetchHooks Function(
        {bool systemId,
        bool profileTableRefs,
        bool profileVaultMembershipTableRefs,
        bool hierarchyLevelTableRefs,
        bool folderTableRefs})> {
  $$VaultTableTableTableManager(_$AppDatabase db, $VaultTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VaultTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VaultTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VaultTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> vaultId = const Value.absent(),
            Value<String> systemId = const Value.absent(),
            Value<String?> parentVaultId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> themeHex = const Value.absent(),
            Value<String> loginMode = const Value.absent(),
            Value<String?> masterPasswordHash = const Value.absent(),
            Value<String?> githubPatEncrypted = const Value.absent(),
            Value<String?> githubRepoUrl = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VaultTableCompanion(
            isTutorial: isTutorial,
            vaultId: vaultId,
            systemId: systemId,
            parentVaultId: parentVaultId,
            name: name,
            themeHex: themeHex,
            loginMode: loginMode,
            masterPasswordHash: masterPasswordHash,
            githubPatEncrypted: githubPatEncrypted,
            githubRepoUrl: githubRepoUrl,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String vaultId,
            required String systemId,
            Value<String?> parentVaultId = const Value.absent(),
            required String name,
            Value<String> themeHex = const Value.absent(),
            Value<String> loginMode = const Value.absent(),
            Value<String?> masterPasswordHash = const Value.absent(),
            Value<String?> githubPatEncrypted = const Value.absent(),
            Value<String?> githubRepoUrl = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              VaultTableCompanion.insert(
            isTutorial: isTutorial,
            vaultId: vaultId,
            systemId: systemId,
            parentVaultId: parentVaultId,
            name: name,
            themeHex: themeHex,
            loginMode: loginMode,
            masterPasswordHash: masterPasswordHash,
            githubPatEncrypted: githubPatEncrypted,
            githubRepoUrl: githubRepoUrl,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$VaultTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {systemId = false,
              profileTableRefs = false,
              profileVaultMembershipTableRefs = false,
              hierarchyLevelTableRefs = false,
              folderTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (profileTableRefs) db.profileTable,
                if (profileVaultMembershipTableRefs)
                  db.profileVaultMembershipTable,
                if (hierarchyLevelTableRefs) db.hierarchyLevelTable,
                if (folderTableRefs) db.folderTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (systemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.systemId,
                    referencedTable:
                        $$VaultTableTableReferences._systemIdTable(db),
                    referencedColumn:
                        $$VaultTableTableReferences._systemIdTable(db).systemId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (profileTableRefs)
                    await $_getPrefetchedData<VaultTableData, $VaultTableTable,
                            ProfileTableData>(
                        currentTable: table,
                        referencedTable: $$VaultTableTableReferences
                            ._profileTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VaultTableTableReferences(db, table, p0)
                                .profileTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vaultId == item.vaultId),
                        typedResults: items),
                  if (profileVaultMembershipTableRefs)
                    await $_getPrefetchedData<VaultTableData, $VaultTableTable,
                            ProfileVaultMembershipTableData>(
                        currentTable: table,
                        referencedTable: $$VaultTableTableReferences
                            ._profileVaultMembershipTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VaultTableTableReferences(db, table, p0)
                                .profileVaultMembershipTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vaultId == item.vaultId),
                        typedResults: items),
                  if (hierarchyLevelTableRefs)
                    await $_getPrefetchedData<VaultTableData, $VaultTableTable,
                            HierarchyLevelTableData>(
                        currentTable: table,
                        referencedTable: $$VaultTableTableReferences
                            ._hierarchyLevelTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VaultTableTableReferences(db, table, p0)
                                .hierarchyLevelTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vaultId == item.vaultId),
                        typedResults: items),
                  if (folderTableRefs)
                    await $_getPrefetchedData<VaultTableData, $VaultTableTable,
                            FolderTableData>(
                        currentTable: table,
                        referencedTable: $$VaultTableTableReferences
                            ._folderTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VaultTableTableReferences(db, table, p0)
                                .folderTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vaultId == item.vaultId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$VaultTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VaultTableTable,
    VaultTableData,
    $$VaultTableTableFilterComposer,
    $$VaultTableTableOrderingComposer,
    $$VaultTableTableAnnotationComposer,
    $$VaultTableTableCreateCompanionBuilder,
    $$VaultTableTableUpdateCompanionBuilder,
    (VaultTableData, $$VaultTableTableReferences),
    VaultTableData,
    PrefetchHooks Function(
        {bool systemId,
        bool profileTableRefs,
        bool profileVaultMembershipTableRefs,
        bool hierarchyLevelTableRefs,
        bool folderTableRefs})>;
typedef $$ProfileTableTableCreateCompanionBuilder = ProfileTableCompanion
    Function({
  Value<bool> isTutorial,
  required String profileId,
  Value<String?> vaultId,
  Value<String?> parentProfileId,
  Value<String?> subsystemType,
  required String name,
  Value<String> pronouns,
  Value<String?> profileImagePath,
  Value<String?> bannerImagePath,
  Value<String> description,
  Value<String?> statusComment,
  Value<String?> passwordHash,
  Value<String> passwordType,
  Value<String?> themeHex,
  Value<bool> isArchived,
  Value<String?> archiveReason,
  Value<String?> archiveReasonLabelId,
  Value<bool> isCuratedView,
  Value<bool> isInfoHolder,
  Value<DateTime?> lastActiveAt,
  Value<bool> isFusion,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$ProfileTableTableUpdateCompanionBuilder = ProfileTableCompanion
    Function({
  Value<bool> isTutorial,
  Value<String> profileId,
  Value<String?> vaultId,
  Value<String?> parentProfileId,
  Value<String?> subsystemType,
  Value<String> name,
  Value<String> pronouns,
  Value<String?> profileImagePath,
  Value<String?> bannerImagePath,
  Value<String> description,
  Value<String?> statusComment,
  Value<String?> passwordHash,
  Value<String> passwordType,
  Value<String?> themeHex,
  Value<bool> isArchived,
  Value<String?> archiveReason,
  Value<String?> archiveReasonLabelId,
  Value<bool> isCuratedView,
  Value<bool> isInfoHolder,
  Value<DateTime?> lastActiveAt,
  Value<bool> isFusion,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$ProfileTableTableReferences extends BaseReferences<_$AppDatabase,
    $ProfileTableTable, ProfileTableData> {
  $$ProfileTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VaultTableTable _vaultIdTable(_$AppDatabase db) =>
      db.vaultTable.createAlias(
          $_aliasNameGenerator(db.profileTable.vaultId, db.vaultTable.vaultId));

  $$VaultTableTableProcessedTableManager? get vaultId {
    final $_column = $_itemColumn<String>('vault_id');
    if ($_column == null) return null;
    final manager = $$VaultTableTableTableManager($_db, $_db.vaultTable)
        .filter((f) => f.vaultId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vaultIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ProfileVaultMembershipTableTable,
          List<ProfileVaultMembershipTableData>>
      _profileVaultMembershipTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileVaultMembershipTable,
              aliasName: $_aliasNameGenerator(db.profileTable.profileId,
                  db.profileVaultMembershipTable.profileId));

  $$ProfileVaultMembershipTableTableProcessedTableManager
      get profileVaultMembershipTableRefs {
    final manager = $$ProfileVaultMembershipTableTableTableManager(
            $_db, $_db.profileVaultMembershipTable)
        .filter((f) => f.profileId.profileId
            .sqlEquals($_itemColumn<String>('profile_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileVaultMembershipTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$FusionRecordTableTable,
      List<FusionRecordTableData>> _fusionRecordTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.fusionRecordTable,
          aliasName: $_aliasNameGenerator(
              db.profileTable.profileId, db.fusionRecordTable.resultProfileId));

  $$FusionRecordTableTableProcessedTableManager get fusionRecordTableRefs {
    final manager =
        $$FusionRecordTableTableTableManager($_db, $_db.fusionRecordTable)
            .filter((f) => f.resultProfileId.profileId
                .sqlEquals($_itemColumn<String>('profile_id')!));

    final cache =
        $_typedResult.readTableOrNull(_fusionRecordTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$FusionSourceTableTable,
      List<FusionSourceTableData>> _fusionSourceTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.fusionSourceTable,
          aliasName: $_aliasNameGenerator(
              db.profileTable.profileId, db.fusionSourceTable.sourceProfileId));

  $$FusionSourceTableTableProcessedTableManager get fusionSourceTableRefs {
    final manager =
        $$FusionSourceTableTableTableManager($_db, $_db.fusionSourceTable)
            .filter((f) => f.sourceProfileId.profileId
                .sqlEquals($_itemColumn<String>('profile_id')!));

    final cache =
        $_typedResult.readTableOrNull(_fusionSourceTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProfileHierarchyAssignmentTableTable,
          List<ProfileHierarchyAssignmentTableData>>
      _profileHierarchyAssignmentTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileHierarchyAssignmentTable,
              aliasName: $_aliasNameGenerator(db.profileTable.profileId,
                  db.profileHierarchyAssignmentTable.profileId));

  $$ProfileHierarchyAssignmentTableTableProcessedTableManager
      get profileHierarchyAssignmentTableRefs {
    final manager = $$ProfileHierarchyAssignmentTableTableTableManager(
            $_db, $_db.profileHierarchyAssignmentTable)
        .filter((f) => f.profileId.profileId
            .sqlEquals($_itemColumn<String>('profile_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileHierarchyAssignmentTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProfileFolderMembershipTableTable,
          List<ProfileFolderMembershipTableData>>
      _profileFolderMembershipTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileFolderMembershipTable,
              aliasName: $_aliasNameGenerator(db.profileTable.profileId,
                  db.profileFolderMembershipTable.profileId));

  $$ProfileFolderMembershipTableTableProcessedTableManager
      get profileFolderMembershipTableRefs {
    final manager = $$ProfileFolderMembershipTableTableTableManager(
            $_db, $_db.profileFolderMembershipTable)
        .filter((f) => f.profileId.profileId
            .sqlEquals($_itemColumn<String>('profile_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileFolderMembershipTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProfileTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProfileTableTable> {
  $$ProfileTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get profileId => $composableBuilder(
      column: $table.profileId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parentProfileId => $composableBuilder(
      column: $table.parentProfileId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subsystemType => $composableBuilder(
      column: $table.subsystemType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pronouns => $composableBuilder(
      column: $table.pronouns, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get profileImagePath => $composableBuilder(
      column: $table.profileImagePath,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bannerImagePath => $composableBuilder(
      column: $table.bannerImagePath,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get statusComment => $composableBuilder(
      column: $table.statusComment, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordType => $composableBuilder(
      column: $table.passwordType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isArchived => $composableBuilder(
      column: $table.isArchived, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get archiveReason => $composableBuilder(
      column: $table.archiveReason, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get archiveReasonLabelId => $composableBuilder(
      column: $table.archiveReasonLabelId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCuratedView => $composableBuilder(
      column: $table.isCuratedView, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isInfoHolder => $composableBuilder(
      column: $table.isInfoHolder, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastActiveAt => $composableBuilder(
      column: $table.lastActiveAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFusion => $composableBuilder(
      column: $table.isFusion, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$VaultTableTableFilterComposer get vaultId {
    final $$VaultTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableFilterComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> profileVaultMembershipTableRefs(
      Expression<bool> Function(
              $$ProfileVaultMembershipTableTableFilterComposer f)
          f) {
    final $$ProfileVaultMembershipTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileVaultMembershipTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileVaultMembershipTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileVaultMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<bool> fusionRecordTableRefs(
      Expression<bool> Function($$FusionRecordTableTableFilterComposer f) f) {
    final $$FusionRecordTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.fusionRecordTable,
        getReferencedColumn: (t) => t.resultProfileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FusionRecordTableTableFilterComposer(
              $db: $db,
              $table: $db.fusionRecordTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> fusionSourceTableRefs(
      Expression<bool> Function($$FusionSourceTableTableFilterComposer f) f) {
    final $$FusionSourceTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.fusionSourceTable,
        getReferencedColumn: (t) => t.sourceProfileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FusionSourceTableTableFilterComposer(
              $db: $db,
              $table: $db.fusionSourceTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> profileHierarchyAssignmentTableRefs(
      Expression<bool> Function(
              $$ProfileHierarchyAssignmentTableTableFilterComposer f)
          f) {
    final $$ProfileHierarchyAssignmentTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileHierarchyAssignmentTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileHierarchyAssignmentTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileHierarchyAssignmentTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<bool> profileFolderMembershipTableRefs(
      Expression<bool> Function(
              $$ProfileFolderMembershipTableTableFilterComposer f)
          f) {
    final $$ProfileFolderMembershipTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileFolderMembershipTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileFolderMembershipTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileFolderMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ProfileTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfileTableTable> {
  $$ProfileTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get profileId => $composableBuilder(
      column: $table.profileId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parentProfileId => $composableBuilder(
      column: $table.parentProfileId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subsystemType => $composableBuilder(
      column: $table.subsystemType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pronouns => $composableBuilder(
      column: $table.pronouns, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get profileImagePath => $composableBuilder(
      column: $table.profileImagePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bannerImagePath => $composableBuilder(
      column: $table.bannerImagePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get statusComment => $composableBuilder(
      column: $table.statusComment,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordType => $composableBuilder(
      column: $table.passwordType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get themeHex => $composableBuilder(
      column: $table.themeHex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isArchived => $composableBuilder(
      column: $table.isArchived, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get archiveReason => $composableBuilder(
      column: $table.archiveReason,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get archiveReasonLabelId => $composableBuilder(
      column: $table.archiveReasonLabelId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCuratedView => $composableBuilder(
      column: $table.isCuratedView,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isInfoHolder => $composableBuilder(
      column: $table.isInfoHolder,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastActiveAt => $composableBuilder(
      column: $table.lastActiveAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFusion => $composableBuilder(
      column: $table.isFusion, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$VaultTableTableOrderingComposer get vaultId {
    final $$VaultTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableOrderingComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfileTableTable> {
  $$ProfileTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get profileId =>
      $composableBuilder(column: $table.profileId, builder: (column) => column);

  GeneratedColumn<String> get parentProfileId => $composableBuilder(
      column: $table.parentProfileId, builder: (column) => column);

  GeneratedColumn<String> get subsystemType => $composableBuilder(
      column: $table.subsystemType, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get pronouns =>
      $composableBuilder(column: $table.pronouns, builder: (column) => column);

  GeneratedColumn<String> get profileImagePath => $composableBuilder(
      column: $table.profileImagePath, builder: (column) => column);

  GeneratedColumn<String> get bannerImagePath => $composableBuilder(
      column: $table.bannerImagePath, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get statusComment => $composableBuilder(
      column: $table.statusComment, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => column);

  GeneratedColumn<String> get passwordType => $composableBuilder(
      column: $table.passwordType, builder: (column) => column);

  GeneratedColumn<String> get themeHex =>
      $composableBuilder(column: $table.themeHex, builder: (column) => column);

  GeneratedColumn<bool> get isArchived => $composableBuilder(
      column: $table.isArchived, builder: (column) => column);

  GeneratedColumn<String> get archiveReason => $composableBuilder(
      column: $table.archiveReason, builder: (column) => column);

  GeneratedColumn<String> get archiveReasonLabelId => $composableBuilder(
      column: $table.archiveReasonLabelId, builder: (column) => column);

  GeneratedColumn<bool> get isCuratedView => $composableBuilder(
      column: $table.isCuratedView, builder: (column) => column);

  GeneratedColumn<bool> get isInfoHolder => $composableBuilder(
      column: $table.isInfoHolder, builder: (column) => column);

  GeneratedColumn<DateTime> get lastActiveAt => $composableBuilder(
      column: $table.lastActiveAt, builder: (column) => column);

  GeneratedColumn<bool> get isFusion =>
      $composableBuilder(column: $table.isFusion, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$VaultTableTableAnnotationComposer get vaultId {
    final $$VaultTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableAnnotationComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> profileVaultMembershipTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileVaultMembershipTableTableAnnotationComposer a)
          f) {
    final $$ProfileVaultMembershipTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileVaultMembershipTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileVaultMembershipTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileVaultMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> fusionRecordTableRefs<T extends Object>(
      Expression<T> Function($$FusionRecordTableTableAnnotationComposer a) f) {
    final $$FusionRecordTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.fusionRecordTable,
            getReferencedColumn: (t) => t.resultProfileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$FusionRecordTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.fusionRecordTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> fusionSourceTableRefs<T extends Object>(
      Expression<T> Function($$FusionSourceTableTableAnnotationComposer a) f) {
    final $$FusionSourceTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.fusionSourceTable,
            getReferencedColumn: (t) => t.sourceProfileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$FusionSourceTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.fusionSourceTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> profileHierarchyAssignmentTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileHierarchyAssignmentTableTableAnnotationComposer a)
          f) {
    final $$ProfileHierarchyAssignmentTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileHierarchyAssignmentTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileHierarchyAssignmentTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileHierarchyAssignmentTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> profileFolderMembershipTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileFolderMembershipTableTableAnnotationComposer a)
          f) {
    final $$ProfileFolderMembershipTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.profileId,
            referencedTable: $db.profileFolderMembershipTable,
            getReferencedColumn: (t) => t.profileId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileFolderMembershipTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileFolderMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ProfileTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfileTableTable,
    ProfileTableData,
    $$ProfileTableTableFilterComposer,
    $$ProfileTableTableOrderingComposer,
    $$ProfileTableTableAnnotationComposer,
    $$ProfileTableTableCreateCompanionBuilder,
    $$ProfileTableTableUpdateCompanionBuilder,
    (ProfileTableData, $$ProfileTableTableReferences),
    ProfileTableData,
    PrefetchHooks Function(
        {bool vaultId,
        bool profileVaultMembershipTableRefs,
        bool fusionRecordTableRefs,
        bool fusionSourceTableRefs,
        bool profileHierarchyAssignmentTableRefs,
        bool profileFolderMembershipTableRefs})> {
  $$ProfileTableTableTableManager(_$AppDatabase db, $ProfileTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> profileId = const Value.absent(),
            Value<String?> vaultId = const Value.absent(),
            Value<String?> parentProfileId = const Value.absent(),
            Value<String?> subsystemType = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> pronouns = const Value.absent(),
            Value<String?> profileImagePath = const Value.absent(),
            Value<String?> bannerImagePath = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String?> statusComment = const Value.absent(),
            Value<String?> passwordHash = const Value.absent(),
            Value<String> passwordType = const Value.absent(),
            Value<String?> themeHex = const Value.absent(),
            Value<bool> isArchived = const Value.absent(),
            Value<String?> archiveReason = const Value.absent(),
            Value<String?> archiveReasonLabelId = const Value.absent(),
            Value<bool> isCuratedView = const Value.absent(),
            Value<bool> isInfoHolder = const Value.absent(),
            Value<DateTime?> lastActiveAt = const Value.absent(),
            Value<bool> isFusion = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileTableCompanion(
            isTutorial: isTutorial,
            profileId: profileId,
            vaultId: vaultId,
            parentProfileId: parentProfileId,
            subsystemType: subsystemType,
            name: name,
            pronouns: pronouns,
            profileImagePath: profileImagePath,
            bannerImagePath: bannerImagePath,
            description: description,
            statusComment: statusComment,
            passwordHash: passwordHash,
            passwordType: passwordType,
            themeHex: themeHex,
            isArchived: isArchived,
            archiveReason: archiveReason,
            archiveReasonLabelId: archiveReasonLabelId,
            isCuratedView: isCuratedView,
            isInfoHolder: isInfoHolder,
            lastActiveAt: lastActiveAt,
            isFusion: isFusion,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String profileId,
            Value<String?> vaultId = const Value.absent(),
            Value<String?> parentProfileId = const Value.absent(),
            Value<String?> subsystemType = const Value.absent(),
            required String name,
            Value<String> pronouns = const Value.absent(),
            Value<String?> profileImagePath = const Value.absent(),
            Value<String?> bannerImagePath = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String?> statusComment = const Value.absent(),
            Value<String?> passwordHash = const Value.absent(),
            Value<String> passwordType = const Value.absent(),
            Value<String?> themeHex = const Value.absent(),
            Value<bool> isArchived = const Value.absent(),
            Value<String?> archiveReason = const Value.absent(),
            Value<String?> archiveReasonLabelId = const Value.absent(),
            Value<bool> isCuratedView = const Value.absent(),
            Value<bool> isInfoHolder = const Value.absent(),
            Value<DateTime?> lastActiveAt = const Value.absent(),
            Value<bool> isFusion = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileTableCompanion.insert(
            isTutorial: isTutorial,
            profileId: profileId,
            vaultId: vaultId,
            parentProfileId: parentProfileId,
            subsystemType: subsystemType,
            name: name,
            pronouns: pronouns,
            profileImagePath: profileImagePath,
            bannerImagePath: bannerImagePath,
            description: description,
            statusComment: statusComment,
            passwordHash: passwordHash,
            passwordType: passwordType,
            themeHex: themeHex,
            isArchived: isArchived,
            archiveReason: archiveReason,
            archiveReasonLabelId: archiveReasonLabelId,
            isCuratedView: isCuratedView,
            isInfoHolder: isInfoHolder,
            lastActiveAt: lastActiveAt,
            isFusion: isFusion,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProfileTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {vaultId = false,
              profileVaultMembershipTableRefs = false,
              fusionRecordTableRefs = false,
              fusionSourceTableRefs = false,
              profileHierarchyAssignmentTableRefs = false,
              profileFolderMembershipTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (profileVaultMembershipTableRefs)
                  db.profileVaultMembershipTable,
                if (fusionRecordTableRefs) db.fusionRecordTable,
                if (fusionSourceTableRefs) db.fusionSourceTable,
                if (profileHierarchyAssignmentTableRefs)
                  db.profileHierarchyAssignmentTable,
                if (profileFolderMembershipTableRefs)
                  db.profileFolderMembershipTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (vaultId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vaultId,
                    referencedTable:
                        $$ProfileTableTableReferences._vaultIdTable(db),
                    referencedColumn:
                        $$ProfileTableTableReferences._vaultIdTable(db).vaultId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (profileVaultMembershipTableRefs)
                    await $_getPrefetchedData<
                            ProfileTableData,
                            $ProfileTableTable,
                            ProfileVaultMembershipTableData>(
                        currentTable: table,
                        referencedTable: $$ProfileTableTableReferences
                            ._profileVaultMembershipTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProfileTableTableReferences(db, table, p0)
                                .profileVaultMembershipTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.profileId == item.profileId),
                        typedResults: items),
                  if (fusionRecordTableRefs)
                    await $_getPrefetchedData<ProfileTableData,
                            $ProfileTableTable, FusionRecordTableData>(
                        currentTable: table,
                        referencedTable: $$ProfileTableTableReferences
                            ._fusionRecordTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProfileTableTableReferences(db, table, p0)
                                .fusionRecordTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems.where(
                                (e) => e.resultProfileId == item.profileId),
                        typedResults: items),
                  if (fusionSourceTableRefs)
                    await $_getPrefetchedData<ProfileTableData,
                            $ProfileTableTable, FusionSourceTableData>(
                        currentTable: table,
                        referencedTable: $$ProfileTableTableReferences
                            ._fusionSourceTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProfileTableTableReferences(db, table, p0)
                                .fusionSourceTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems.where(
                                (e) => e.sourceProfileId == item.profileId),
                        typedResults: items),
                  if (profileHierarchyAssignmentTableRefs)
                    await $_getPrefetchedData<
                            ProfileTableData,
                            $ProfileTableTable,
                            ProfileHierarchyAssignmentTableData>(
                        currentTable: table,
                        referencedTable: $$ProfileTableTableReferences
                            ._profileHierarchyAssignmentTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProfileTableTableReferences(db, table, p0)
                                .profileHierarchyAssignmentTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.profileId == item.profileId),
                        typedResults: items),
                  if (profileFolderMembershipTableRefs)
                    await $_getPrefetchedData<
                            ProfileTableData,
                            $ProfileTableTable,
                            ProfileFolderMembershipTableData>(
                        currentTable: table,
                        referencedTable: $$ProfileTableTableReferences
                            ._profileFolderMembershipTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProfileTableTableReferences(db, table, p0)
                                .profileFolderMembershipTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.profileId == item.profileId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProfileTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProfileTableTable,
    ProfileTableData,
    $$ProfileTableTableFilterComposer,
    $$ProfileTableTableOrderingComposer,
    $$ProfileTableTableAnnotationComposer,
    $$ProfileTableTableCreateCompanionBuilder,
    $$ProfileTableTableUpdateCompanionBuilder,
    (ProfileTableData, $$ProfileTableTableReferences),
    ProfileTableData,
    PrefetchHooks Function(
        {bool vaultId,
        bool profileVaultMembershipTableRefs,
        bool fusionRecordTableRefs,
        bool fusionSourceTableRefs,
        bool profileHierarchyAssignmentTableRefs,
        bool profileFolderMembershipTableRefs})>;
typedef $$ProfileVaultMembershipTableTableCreateCompanionBuilder
    = ProfileVaultMembershipTableCompanion Function({
  required String profileId,
  required String vaultId,
  Value<bool> isPrimary,
  Value<int> rowid,
});
typedef $$ProfileVaultMembershipTableTableUpdateCompanionBuilder
    = ProfileVaultMembershipTableCompanion Function({
  Value<String> profileId,
  Value<String> vaultId,
  Value<bool> isPrimary,
  Value<int> rowid,
});

final class $$ProfileVaultMembershipTableTableReferences extends BaseReferences<
    _$AppDatabase,
    $ProfileVaultMembershipTableTable,
    ProfileVaultMembershipTableData> {
  $$ProfileVaultMembershipTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProfileTableTable _profileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.profileVaultMembershipTable.profileId, db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get profileId {
    final $_column = $_itemColumn<String>('profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $VaultTableTable _vaultIdTable(_$AppDatabase db) =>
      db.vaultTable.createAlias($_aliasNameGenerator(
          db.profileVaultMembershipTable.vaultId, db.vaultTable.vaultId));

  $$VaultTableTableProcessedTableManager get vaultId {
    final $_column = $_itemColumn<String>('vault_id')!;

    final manager = $$VaultTableTableTableManager($_db, $_db.vaultTable)
        .filter((f) => f.vaultId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vaultIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProfileVaultMembershipTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProfileVaultMembershipTableTable> {
  $$ProfileVaultMembershipTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isPrimary => $composableBuilder(
      column: $table.isPrimary, builder: (column) => ColumnFilters(column));

  $$ProfileTableTableFilterComposer get profileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$VaultTableTableFilterComposer get vaultId {
    final $$VaultTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableFilterComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileVaultMembershipTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfileVaultMembershipTableTable> {
  $$ProfileVaultMembershipTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isPrimary => $composableBuilder(
      column: $table.isPrimary, builder: (column) => ColumnOrderings(column));

  $$ProfileTableTableOrderingComposer get profileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$VaultTableTableOrderingComposer get vaultId {
    final $$VaultTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableOrderingComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileVaultMembershipTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfileVaultMembershipTableTable> {
  $$ProfileVaultMembershipTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isPrimary =>
      $composableBuilder(column: $table.isPrimary, builder: (column) => column);

  $$ProfileTableTableAnnotationComposer get profileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$VaultTableTableAnnotationComposer get vaultId {
    final $$VaultTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableAnnotationComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileVaultMembershipTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfileVaultMembershipTableTable,
    ProfileVaultMembershipTableData,
    $$ProfileVaultMembershipTableTableFilterComposer,
    $$ProfileVaultMembershipTableTableOrderingComposer,
    $$ProfileVaultMembershipTableTableAnnotationComposer,
    $$ProfileVaultMembershipTableTableCreateCompanionBuilder,
    $$ProfileVaultMembershipTableTableUpdateCompanionBuilder,
    (
      ProfileVaultMembershipTableData,
      $$ProfileVaultMembershipTableTableReferences
    ),
    ProfileVaultMembershipTableData,
    PrefetchHooks Function({bool profileId, bool vaultId})> {
  $$ProfileVaultMembershipTableTableTableManager(
      _$AppDatabase db, $ProfileVaultMembershipTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileVaultMembershipTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileVaultMembershipTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileVaultMembershipTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> profileId = const Value.absent(),
            Value<String> vaultId = const Value.absent(),
            Value<bool> isPrimary = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileVaultMembershipTableCompanion(
            profileId: profileId,
            vaultId: vaultId,
            isPrimary: isPrimary,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String profileId,
            required String vaultId,
            Value<bool> isPrimary = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileVaultMembershipTableCompanion.insert(
            profileId: profileId,
            vaultId: vaultId,
            isPrimary: isPrimary,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProfileVaultMembershipTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({profileId = false, vaultId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable:
                        $$ProfileVaultMembershipTableTableReferences
                            ._profileIdTable(db),
                    referencedColumn:
                        $$ProfileVaultMembershipTableTableReferences
                            ._profileIdTable(db)
                            .profileId,
                  ) as T;
                }
                if (vaultId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vaultId,
                    referencedTable:
                        $$ProfileVaultMembershipTableTableReferences
                            ._vaultIdTable(db),
                    referencedColumn:
                        $$ProfileVaultMembershipTableTableReferences
                            ._vaultIdTable(db)
                            .vaultId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProfileVaultMembershipTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProfileVaultMembershipTableTable,
    ProfileVaultMembershipTableData,
    $$ProfileVaultMembershipTableTableFilterComposer,
    $$ProfileVaultMembershipTableTableOrderingComposer,
    $$ProfileVaultMembershipTableTableAnnotationComposer,
    $$ProfileVaultMembershipTableTableCreateCompanionBuilder,
    $$ProfileVaultMembershipTableTableUpdateCompanionBuilder,
    (
      ProfileVaultMembershipTableData,
      $$ProfileVaultMembershipTableTableReferences
    ),
    ProfileVaultMembershipTableData,
    PrefetchHooks Function({bool profileId, bool vaultId})>;
typedef $$ArchiveReasonLabelTableTableCreateCompanionBuilder
    = ArchiveReasonLabelTableCompanion Function({
  Value<bool> isTutorial,
  required String labelId,
  required String systemId,
  required String name,
  Value<bool> isDefault,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$ArchiveReasonLabelTableTableUpdateCompanionBuilder
    = ArchiveReasonLabelTableCompanion Function({
  Value<bool> isTutorial,
  Value<String> labelId,
  Value<String> systemId,
  Value<String> name,
  Value<bool> isDefault,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$ArchiveReasonLabelTableTableReferences extends BaseReferences<
    _$AppDatabase, $ArchiveReasonLabelTableTable, ArchiveReasonLabelTableData> {
  $$ArchiveReasonLabelTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SystemTableTable _systemIdTable(_$AppDatabase db) =>
      db.systemTable.createAlias($_aliasNameGenerator(
          db.archiveReasonLabelTable.systemId, db.systemTable.systemId));

  $$SystemTableTableProcessedTableManager get systemId {
    final $_column = $_itemColumn<String>('system_id')!;

    final manager = $$SystemTableTableTableManager($_db, $_db.systemTable)
        .filter((f) => f.systemId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_systemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ArchiveReasonLabelTableTableFilterComposer
    extends Composer<_$AppDatabase, $ArchiveReasonLabelTableTable> {
  $$ArchiveReasonLabelTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get labelId => $composableBuilder(
      column: $table.labelId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$SystemTableTableFilterComposer get systemId {
    final $$SystemTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableFilterComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArchiveReasonLabelTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ArchiveReasonLabelTableTable> {
  $$ArchiveReasonLabelTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get labelId => $composableBuilder(
      column: $table.labelId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$SystemTableTableOrderingComposer get systemId {
    final $$SystemTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableOrderingComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArchiveReasonLabelTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ArchiveReasonLabelTableTable> {
  $$ArchiveReasonLabelTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get labelId =>
      $composableBuilder(column: $table.labelId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$SystemTableTableAnnotationComposer get systemId {
    final $$SystemTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.systemId,
        referencedTable: $db.systemTable,
        getReferencedColumn: (t) => t.systemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SystemTableTableAnnotationComposer(
              $db: $db,
              $table: $db.systemTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArchiveReasonLabelTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ArchiveReasonLabelTableTable,
    ArchiveReasonLabelTableData,
    $$ArchiveReasonLabelTableTableFilterComposer,
    $$ArchiveReasonLabelTableTableOrderingComposer,
    $$ArchiveReasonLabelTableTableAnnotationComposer,
    $$ArchiveReasonLabelTableTableCreateCompanionBuilder,
    $$ArchiveReasonLabelTableTableUpdateCompanionBuilder,
    (ArchiveReasonLabelTableData, $$ArchiveReasonLabelTableTableReferences),
    ArchiveReasonLabelTableData,
    PrefetchHooks Function({bool systemId})> {
  $$ArchiveReasonLabelTableTableTableManager(
      _$AppDatabase db, $ArchiveReasonLabelTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ArchiveReasonLabelTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$ArchiveReasonLabelTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ArchiveReasonLabelTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> labelId = const Value.absent(),
            Value<String> systemId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ArchiveReasonLabelTableCompanion(
            isTutorial: isTutorial,
            labelId: labelId,
            systemId: systemId,
            name: name,
            isDefault: isDefault,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String labelId,
            required String systemId,
            required String name,
            Value<bool> isDefault = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ArchiveReasonLabelTableCompanion.insert(
            isTutorial: isTutorial,
            labelId: labelId,
            systemId: systemId,
            name: name,
            isDefault: isDefault,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ArchiveReasonLabelTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({systemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (systemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.systemId,
                    referencedTable: $$ArchiveReasonLabelTableTableReferences
                        ._systemIdTable(db),
                    referencedColumn: $$ArchiveReasonLabelTableTableReferences
                        ._systemIdTable(db)
                        .systemId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ArchiveReasonLabelTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $ArchiveReasonLabelTableTable,
        ArchiveReasonLabelTableData,
        $$ArchiveReasonLabelTableTableFilterComposer,
        $$ArchiveReasonLabelTableTableOrderingComposer,
        $$ArchiveReasonLabelTableTableAnnotationComposer,
        $$ArchiveReasonLabelTableTableCreateCompanionBuilder,
        $$ArchiveReasonLabelTableTableUpdateCompanionBuilder,
        (ArchiveReasonLabelTableData, $$ArchiveReasonLabelTableTableReferences),
        ArchiveReasonLabelTableData,
        PrefetchHooks Function({bool systemId})>;
typedef $$FusionRecordTableTableCreateCompanionBuilder
    = FusionRecordTableCompanion Function({
  Value<bool> isTutorial,
  required String fusionId,
  required String resultProfileId,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$FusionRecordTableTableUpdateCompanionBuilder
    = FusionRecordTableCompanion Function({
  Value<bool> isTutorial,
  Value<String> fusionId,
  Value<String> resultProfileId,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$FusionRecordTableTableReferences extends BaseReferences<
    _$AppDatabase, $FusionRecordTableTable, FusionRecordTableData> {
  $$FusionRecordTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProfileTableTable _resultProfileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.fusionRecordTable.resultProfileId, db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get resultProfileId {
    final $_column = $_itemColumn<String>('result_profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_resultProfileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$FusionSourceTableTable,
      List<FusionSourceTableData>> _fusionSourceTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.fusionSourceTable,
          aliasName: $_aliasNameGenerator(
              db.fusionRecordTable.fusionId, db.fusionSourceTable.fusionId));

  $$FusionSourceTableTableProcessedTableManager get fusionSourceTableRefs {
    final manager = $$FusionSourceTableTableTableManager(
            $_db, $_db.fusionSourceTable)
        .filter((f) =>
            f.fusionId.fusionId.sqlEquals($_itemColumn<String>('fusion_id')!));

    final cache =
        $_typedResult.readTableOrNull(_fusionSourceTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$FusionRecordTableTableFilterComposer
    extends Composer<_$AppDatabase, $FusionRecordTableTable> {
  $$FusionRecordTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fusionId => $composableBuilder(
      column: $table.fusionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ProfileTableTableFilterComposer get resultProfileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.resultProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> fusionSourceTableRefs(
      Expression<bool> Function($$FusionSourceTableTableFilterComposer f) f) {
    final $$FusionSourceTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.fusionId,
        referencedTable: $db.fusionSourceTable,
        getReferencedColumn: (t) => t.fusionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FusionSourceTableTableFilterComposer(
              $db: $db,
              $table: $db.fusionSourceTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$FusionRecordTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FusionRecordTableTable> {
  $$FusionRecordTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fusionId => $composableBuilder(
      column: $table.fusionId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ProfileTableTableOrderingComposer get resultProfileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.resultProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FusionRecordTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FusionRecordTableTable> {
  $$FusionRecordTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get fusionId =>
      $composableBuilder(column: $table.fusionId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProfileTableTableAnnotationComposer get resultProfileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.resultProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> fusionSourceTableRefs<T extends Object>(
      Expression<T> Function($$FusionSourceTableTableAnnotationComposer a) f) {
    final $$FusionSourceTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.fusionId,
            referencedTable: $db.fusionSourceTable,
            getReferencedColumn: (t) => t.fusionId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$FusionSourceTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.fusionSourceTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$FusionRecordTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FusionRecordTableTable,
    FusionRecordTableData,
    $$FusionRecordTableTableFilterComposer,
    $$FusionRecordTableTableOrderingComposer,
    $$FusionRecordTableTableAnnotationComposer,
    $$FusionRecordTableTableCreateCompanionBuilder,
    $$FusionRecordTableTableUpdateCompanionBuilder,
    (FusionRecordTableData, $$FusionRecordTableTableReferences),
    FusionRecordTableData,
    PrefetchHooks Function(
        {bool resultProfileId, bool fusionSourceTableRefs})> {
  $$FusionRecordTableTableTableManager(
      _$AppDatabase db, $FusionRecordTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FusionRecordTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FusionRecordTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FusionRecordTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> fusionId = const Value.absent(),
            Value<String> resultProfileId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FusionRecordTableCompanion(
            isTutorial: isTutorial,
            fusionId: fusionId,
            resultProfileId: resultProfileId,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String fusionId,
            required String resultProfileId,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              FusionRecordTableCompanion.insert(
            isTutorial: isTutorial,
            fusionId: fusionId,
            resultProfileId: resultProfileId,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FusionRecordTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {resultProfileId = false, fusionSourceTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (fusionSourceTableRefs) db.fusionSourceTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (resultProfileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.resultProfileId,
                    referencedTable: $$FusionRecordTableTableReferences
                        ._resultProfileIdTable(db),
                    referencedColumn: $$FusionRecordTableTableReferences
                        ._resultProfileIdTable(db)
                        .profileId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (fusionSourceTableRefs)
                    await $_getPrefetchedData<FusionRecordTableData,
                            $FusionRecordTableTable, FusionSourceTableData>(
                        currentTable: table,
                        referencedTable: $$FusionRecordTableTableReferences
                            ._fusionSourceTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FusionRecordTableTableReferences(db, table, p0)
                                .fusionSourceTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.fusionId == item.fusionId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$FusionRecordTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FusionRecordTableTable,
    FusionRecordTableData,
    $$FusionRecordTableTableFilterComposer,
    $$FusionRecordTableTableOrderingComposer,
    $$FusionRecordTableTableAnnotationComposer,
    $$FusionRecordTableTableCreateCompanionBuilder,
    $$FusionRecordTableTableUpdateCompanionBuilder,
    (FusionRecordTableData, $$FusionRecordTableTableReferences),
    FusionRecordTableData,
    PrefetchHooks Function({bool resultProfileId, bool fusionSourceTableRefs})>;
typedef $$FusionSourceTableTableCreateCompanionBuilder
    = FusionSourceTableCompanion Function({
  required String fusionId,
  required String sourceProfileId,
  Value<int> rowid,
});
typedef $$FusionSourceTableTableUpdateCompanionBuilder
    = FusionSourceTableCompanion Function({
  Value<String> fusionId,
  Value<String> sourceProfileId,
  Value<int> rowid,
});

final class $$FusionSourceTableTableReferences extends BaseReferences<
    _$AppDatabase, $FusionSourceTableTable, FusionSourceTableData> {
  $$FusionSourceTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $FusionRecordTableTable _fusionIdTable(_$AppDatabase db) =>
      db.fusionRecordTable.createAlias($_aliasNameGenerator(
          db.fusionSourceTable.fusionId, db.fusionRecordTable.fusionId));

  $$FusionRecordTableTableProcessedTableManager get fusionId {
    final $_column = $_itemColumn<String>('fusion_id')!;

    final manager =
        $$FusionRecordTableTableTableManager($_db, $_db.fusionRecordTable)
            .filter((f) => f.fusionId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_fusionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ProfileTableTable _sourceProfileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.fusionSourceTable.sourceProfileId, db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get sourceProfileId {
    final $_column = $_itemColumn<String>('source_profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sourceProfileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$FusionSourceTableTableFilterComposer
    extends Composer<_$AppDatabase, $FusionSourceTableTable> {
  $$FusionSourceTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$FusionRecordTableTableFilterComposer get fusionId {
    final $$FusionRecordTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.fusionId,
        referencedTable: $db.fusionRecordTable,
        getReferencedColumn: (t) => t.fusionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FusionRecordTableTableFilterComposer(
              $db: $db,
              $table: $db.fusionRecordTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfileTableTableFilterComposer get sourceProfileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sourceProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FusionSourceTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FusionSourceTableTable> {
  $$FusionSourceTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$FusionRecordTableTableOrderingComposer get fusionId {
    final $$FusionRecordTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.fusionId,
        referencedTable: $db.fusionRecordTable,
        getReferencedColumn: (t) => t.fusionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FusionRecordTableTableOrderingComposer(
              $db: $db,
              $table: $db.fusionRecordTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfileTableTableOrderingComposer get sourceProfileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sourceProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FusionSourceTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FusionSourceTableTable> {
  $$FusionSourceTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$FusionRecordTableTableAnnotationComposer get fusionId {
    final $$FusionRecordTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.fusionId,
            referencedTable: $db.fusionRecordTable,
            getReferencedColumn: (t) => t.fusionId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$FusionRecordTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.fusionRecordTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  $$ProfileTableTableAnnotationComposer get sourceProfileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sourceProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FusionSourceTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FusionSourceTableTable,
    FusionSourceTableData,
    $$FusionSourceTableTableFilterComposer,
    $$FusionSourceTableTableOrderingComposer,
    $$FusionSourceTableTableAnnotationComposer,
    $$FusionSourceTableTableCreateCompanionBuilder,
    $$FusionSourceTableTableUpdateCompanionBuilder,
    (FusionSourceTableData, $$FusionSourceTableTableReferences),
    FusionSourceTableData,
    PrefetchHooks Function({bool fusionId, bool sourceProfileId})> {
  $$FusionSourceTableTableTableManager(
      _$AppDatabase db, $FusionSourceTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FusionSourceTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FusionSourceTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FusionSourceTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> fusionId = const Value.absent(),
            Value<String> sourceProfileId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FusionSourceTableCompanion(
            fusionId: fusionId,
            sourceProfileId: sourceProfileId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String fusionId,
            required String sourceProfileId,
            Value<int> rowid = const Value.absent(),
          }) =>
              FusionSourceTableCompanion.insert(
            fusionId: fusionId,
            sourceProfileId: sourceProfileId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FusionSourceTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({fusionId = false, sourceProfileId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (fusionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.fusionId,
                    referencedTable:
                        $$FusionSourceTableTableReferences._fusionIdTable(db),
                    referencedColumn: $$FusionSourceTableTableReferences
                        ._fusionIdTable(db)
                        .fusionId,
                  ) as T;
                }
                if (sourceProfileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sourceProfileId,
                    referencedTable: $$FusionSourceTableTableReferences
                        ._sourceProfileIdTable(db),
                    referencedColumn: $$FusionSourceTableTableReferences
                        ._sourceProfileIdTable(db)
                        .profileId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$FusionSourceTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FusionSourceTableTable,
    FusionSourceTableData,
    $$FusionSourceTableTableFilterComposer,
    $$FusionSourceTableTableOrderingComposer,
    $$FusionSourceTableTableAnnotationComposer,
    $$FusionSourceTableTableCreateCompanionBuilder,
    $$FusionSourceTableTableUpdateCompanionBuilder,
    (FusionSourceTableData, $$FusionSourceTableTableReferences),
    FusionSourceTableData,
    PrefetchHooks Function({bool fusionId, bool sourceProfileId})>;
typedef $$HierarchyLevelTableTableCreateCompanionBuilder
    = HierarchyLevelTableCompanion Function({
  Value<bool> isTutorial,
  required String levelId,
  Value<String?> vaultId,
  required String name,
  required int orderIndex,
  Value<String> operationMode,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$HierarchyLevelTableTableUpdateCompanionBuilder
    = HierarchyLevelTableCompanion Function({
  Value<bool> isTutorial,
  Value<String> levelId,
  Value<String?> vaultId,
  Value<String> name,
  Value<int> orderIndex,
  Value<String> operationMode,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$HierarchyLevelTableTableReferences extends BaseReferences<
    _$AppDatabase, $HierarchyLevelTableTable, HierarchyLevelTableData> {
  $$HierarchyLevelTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $VaultTableTable _vaultIdTable(_$AppDatabase db) =>
      db.vaultTable.createAlias($_aliasNameGenerator(
          db.hierarchyLevelTable.vaultId, db.vaultTable.vaultId));

  $$VaultTableTableProcessedTableManager? get vaultId {
    final $_column = $_itemColumn<String>('vault_id');
    if ($_column == null) return null;
    final manager = $$VaultTableTableTableManager($_db, $_db.vaultTable)
        .filter((f) => f.vaultId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vaultIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ProfileHierarchyAssignmentTableTable,
          List<ProfileHierarchyAssignmentTableData>>
      _profileHierarchyAssignmentTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileHierarchyAssignmentTable,
              aliasName: $_aliasNameGenerator(db.hierarchyLevelTable.levelId,
                  db.profileHierarchyAssignmentTable.levelId));

  $$ProfileHierarchyAssignmentTableTableProcessedTableManager
      get profileHierarchyAssignmentTableRefs {
    final manager = $$ProfileHierarchyAssignmentTableTableTableManager(
            $_db, $_db.profileHierarchyAssignmentTable)
        .filter((f) =>
            f.levelId.levelId.sqlEquals($_itemColumn<String>('level_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileHierarchyAssignmentTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$HierarchyLevelTableTableFilterComposer
    extends Composer<_$AppDatabase, $HierarchyLevelTableTable> {
  $$HierarchyLevelTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get levelId => $composableBuilder(
      column: $table.levelId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operationMode => $composableBuilder(
      column: $table.operationMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$VaultTableTableFilterComposer get vaultId {
    final $$VaultTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableFilterComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> profileHierarchyAssignmentTableRefs(
      Expression<bool> Function(
              $$ProfileHierarchyAssignmentTableTableFilterComposer f)
          f) {
    final $$ProfileHierarchyAssignmentTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.levelId,
            referencedTable: $db.profileHierarchyAssignmentTable,
            getReferencedColumn: (t) => t.levelId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileHierarchyAssignmentTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileHierarchyAssignmentTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$HierarchyLevelTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HierarchyLevelTableTable> {
  $$HierarchyLevelTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get levelId => $composableBuilder(
      column: $table.levelId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operationMode => $composableBuilder(
      column: $table.operationMode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$VaultTableTableOrderingComposer get vaultId {
    final $$VaultTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableOrderingComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HierarchyLevelTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HierarchyLevelTableTable> {
  $$HierarchyLevelTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get levelId =>
      $composableBuilder(column: $table.levelId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => column);

  GeneratedColumn<String> get operationMode => $composableBuilder(
      column: $table.operationMode, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$VaultTableTableAnnotationComposer get vaultId {
    final $$VaultTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableAnnotationComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> profileHierarchyAssignmentTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileHierarchyAssignmentTableTableAnnotationComposer a)
          f) {
    final $$ProfileHierarchyAssignmentTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.levelId,
            referencedTable: $db.profileHierarchyAssignmentTable,
            getReferencedColumn: (t) => t.levelId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileHierarchyAssignmentTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileHierarchyAssignmentTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$HierarchyLevelTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HierarchyLevelTableTable,
    HierarchyLevelTableData,
    $$HierarchyLevelTableTableFilterComposer,
    $$HierarchyLevelTableTableOrderingComposer,
    $$HierarchyLevelTableTableAnnotationComposer,
    $$HierarchyLevelTableTableCreateCompanionBuilder,
    $$HierarchyLevelTableTableUpdateCompanionBuilder,
    (HierarchyLevelTableData, $$HierarchyLevelTableTableReferences),
    HierarchyLevelTableData,
    PrefetchHooks Function(
        {bool vaultId, bool profileHierarchyAssignmentTableRefs})> {
  $$HierarchyLevelTableTableTableManager(
      _$AppDatabase db, $HierarchyLevelTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HierarchyLevelTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HierarchyLevelTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HierarchyLevelTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> levelId = const Value.absent(),
            Value<String?> vaultId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> orderIndex = const Value.absent(),
            Value<String> operationMode = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              HierarchyLevelTableCompanion(
            isTutorial: isTutorial,
            levelId: levelId,
            vaultId: vaultId,
            name: name,
            orderIndex: orderIndex,
            operationMode: operationMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String levelId,
            Value<String?> vaultId = const Value.absent(),
            required String name,
            required int orderIndex,
            Value<String> operationMode = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              HierarchyLevelTableCompanion.insert(
            isTutorial: isTutorial,
            levelId: levelId,
            vaultId: vaultId,
            name: name,
            orderIndex: orderIndex,
            operationMode: operationMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$HierarchyLevelTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {vaultId = false, profileHierarchyAssignmentTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (profileHierarchyAssignmentTableRefs)
                  db.profileHierarchyAssignmentTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (vaultId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vaultId,
                    referencedTable:
                        $$HierarchyLevelTableTableReferences._vaultIdTable(db),
                    referencedColumn: $$HierarchyLevelTableTableReferences
                        ._vaultIdTable(db)
                        .vaultId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (profileHierarchyAssignmentTableRefs)
                    await $_getPrefetchedData<
                            HierarchyLevelTableData,
                            $HierarchyLevelTableTable,
                            ProfileHierarchyAssignmentTableData>(
                        currentTable: table,
                        referencedTable: $$HierarchyLevelTableTableReferences
                            ._profileHierarchyAssignmentTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$HierarchyLevelTableTableReferences(db, table, p0)
                                .profileHierarchyAssignmentTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.levelId == item.levelId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$HierarchyLevelTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HierarchyLevelTableTable,
    HierarchyLevelTableData,
    $$HierarchyLevelTableTableFilterComposer,
    $$HierarchyLevelTableTableOrderingComposer,
    $$HierarchyLevelTableTableAnnotationComposer,
    $$HierarchyLevelTableTableCreateCompanionBuilder,
    $$HierarchyLevelTableTableUpdateCompanionBuilder,
    (HierarchyLevelTableData, $$HierarchyLevelTableTableReferences),
    HierarchyLevelTableData,
    PrefetchHooks Function(
        {bool vaultId, bool profileHierarchyAssignmentTableRefs})>;
typedef $$ProfileHierarchyAssignmentTableTableCreateCompanionBuilder
    = ProfileHierarchyAssignmentTableCompanion Function({
  required String profileId,
  required String levelId,
  Value<int> rowid,
});
typedef $$ProfileHierarchyAssignmentTableTableUpdateCompanionBuilder
    = ProfileHierarchyAssignmentTableCompanion Function({
  Value<String> profileId,
  Value<String> levelId,
  Value<int> rowid,
});

final class $$ProfileHierarchyAssignmentTableTableReferences
    extends BaseReferences<_$AppDatabase, $ProfileHierarchyAssignmentTableTable,
        ProfileHierarchyAssignmentTableData> {
  $$ProfileHierarchyAssignmentTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProfileTableTable _profileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.profileHierarchyAssignmentTable.profileId,
          db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get profileId {
    final $_column = $_itemColumn<String>('profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $HierarchyLevelTableTable _levelIdTable(_$AppDatabase db) =>
      db.hierarchyLevelTable.createAlias($_aliasNameGenerator(
          db.profileHierarchyAssignmentTable.levelId,
          db.hierarchyLevelTable.levelId));

  $$HierarchyLevelTableTableProcessedTableManager get levelId {
    final $_column = $_itemColumn<String>('level_id')!;

    final manager =
        $$HierarchyLevelTableTableTableManager($_db, $_db.hierarchyLevelTable)
            .filter((f) => f.levelId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_levelIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProfileHierarchyAssignmentTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProfileHierarchyAssignmentTableTable> {
  $$ProfileHierarchyAssignmentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProfileTableTableFilterComposer get profileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$HierarchyLevelTableTableFilterComposer get levelId {
    final $$HierarchyLevelTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.levelId,
        referencedTable: $db.hierarchyLevelTable,
        getReferencedColumn: (t) => t.levelId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HierarchyLevelTableTableFilterComposer(
              $db: $db,
              $table: $db.hierarchyLevelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileHierarchyAssignmentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfileHierarchyAssignmentTableTable> {
  $$ProfileHierarchyAssignmentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProfileTableTableOrderingComposer get profileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$HierarchyLevelTableTableOrderingComposer get levelId {
    final $$HierarchyLevelTableTableOrderingComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.levelId,
            referencedTable: $db.hierarchyLevelTable,
            getReferencedColumn: (t) => t.levelId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$HierarchyLevelTableTableOrderingComposer(
                  $db: $db,
                  $table: $db.hierarchyLevelTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$ProfileHierarchyAssignmentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfileHierarchyAssignmentTableTable> {
  $$ProfileHierarchyAssignmentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProfileTableTableAnnotationComposer get profileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$HierarchyLevelTableTableAnnotationComposer get levelId {
    final $$HierarchyLevelTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.levelId,
            referencedTable: $db.hierarchyLevelTable,
            getReferencedColumn: (t) => t.levelId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$HierarchyLevelTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.hierarchyLevelTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$ProfileHierarchyAssignmentTableTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $ProfileHierarchyAssignmentTableTable,
        ProfileHierarchyAssignmentTableData,
        $$ProfileHierarchyAssignmentTableTableFilterComposer,
        $$ProfileHierarchyAssignmentTableTableOrderingComposer,
        $$ProfileHierarchyAssignmentTableTableAnnotationComposer,
        $$ProfileHierarchyAssignmentTableTableCreateCompanionBuilder,
        $$ProfileHierarchyAssignmentTableTableUpdateCompanionBuilder,
        (
          ProfileHierarchyAssignmentTableData,
          $$ProfileHierarchyAssignmentTableTableReferences
        ),
        ProfileHierarchyAssignmentTableData,
        PrefetchHooks Function({bool profileId, bool levelId})> {
  $$ProfileHierarchyAssignmentTableTableTableManager(
      _$AppDatabase db, $ProfileHierarchyAssignmentTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileHierarchyAssignmentTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileHierarchyAssignmentTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileHierarchyAssignmentTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> profileId = const Value.absent(),
            Value<String> levelId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileHierarchyAssignmentTableCompanion(
            profileId: profileId,
            levelId: levelId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String profileId,
            required String levelId,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileHierarchyAssignmentTableCompanion.insert(
            profileId: profileId,
            levelId: levelId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProfileHierarchyAssignmentTableTableReferences(
                        db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({profileId = false, levelId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable:
                        $$ProfileHierarchyAssignmentTableTableReferences
                            ._profileIdTable(db),
                    referencedColumn:
                        $$ProfileHierarchyAssignmentTableTableReferences
                            ._profileIdTable(db)
                            .profileId,
                  ) as T;
                }
                if (levelId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.levelId,
                    referencedTable:
                        $$ProfileHierarchyAssignmentTableTableReferences
                            ._levelIdTable(db),
                    referencedColumn:
                        $$ProfileHierarchyAssignmentTableTableReferences
                            ._levelIdTable(db)
                            .levelId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProfileHierarchyAssignmentTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $ProfileHierarchyAssignmentTableTable,
        ProfileHierarchyAssignmentTableData,
        $$ProfileHierarchyAssignmentTableTableFilterComposer,
        $$ProfileHierarchyAssignmentTableTableOrderingComposer,
        $$ProfileHierarchyAssignmentTableTableAnnotationComposer,
        $$ProfileHierarchyAssignmentTableTableCreateCompanionBuilder,
        $$ProfileHierarchyAssignmentTableTableUpdateCompanionBuilder,
        (
          ProfileHierarchyAssignmentTableData,
          $$ProfileHierarchyAssignmentTableTableReferences
        ),
        ProfileHierarchyAssignmentTableData,
        PrefetchHooks Function({bool profileId, bool levelId})>;
typedef $$PermissionRuleTableTableCreateCompanionBuilder
    = PermissionRuleTableCompanion Function({
  Value<bool> isTutorial,
  required String ruleId,
  required String subjectProfileId,
  Value<String?> targetProfileId,
  required String targetSection,
  Value<String> accessLevel,
  Value<String> censorshipMode,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$PermissionRuleTableTableUpdateCompanionBuilder
    = PermissionRuleTableCompanion Function({
  Value<bool> isTutorial,
  Value<String> ruleId,
  Value<String> subjectProfileId,
  Value<String?> targetProfileId,
  Value<String> targetSection,
  Value<String> accessLevel,
  Value<String> censorshipMode,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$PermissionRuleTableTableReferences extends BaseReferences<
    _$AppDatabase, $PermissionRuleTableTable, PermissionRuleTableData> {
  $$PermissionRuleTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProfileTableTable _subjectProfileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.permissionRuleTable.subjectProfileId, db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get subjectProfileId {
    final $_column = $_itemColumn<String>('subject_profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_subjectProfileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ProfileTableTable _targetProfileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.permissionRuleTable.targetProfileId, db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager? get targetProfileId {
    final $_column = $_itemColumn<String>('target_profile_id');
    if ($_column == null) return null;
    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_targetProfileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PermissionRuleTableTableFilterComposer
    extends Composer<_$AppDatabase, $PermissionRuleTableTable> {
  $$PermissionRuleTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ruleId => $composableBuilder(
      column: $table.ruleId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetSection => $composableBuilder(
      column: $table.targetSection, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accessLevel => $composableBuilder(
      column: $table.accessLevel, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get censorshipMode => $composableBuilder(
      column: $table.censorshipMode,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$ProfileTableTableFilterComposer get subjectProfileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfileTableTableFilterComposer get targetProfileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.targetProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PermissionRuleTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PermissionRuleTableTable> {
  $$PermissionRuleTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ruleId => $composableBuilder(
      column: $table.ruleId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetSection => $composableBuilder(
      column: $table.targetSection,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accessLevel => $composableBuilder(
      column: $table.accessLevel, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get censorshipMode => $composableBuilder(
      column: $table.censorshipMode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$ProfileTableTableOrderingComposer get subjectProfileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfileTableTableOrderingComposer get targetProfileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.targetProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PermissionRuleTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PermissionRuleTableTable> {
  $$PermissionRuleTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get ruleId =>
      $composableBuilder(column: $table.ruleId, builder: (column) => column);

  GeneratedColumn<String> get targetSection => $composableBuilder(
      column: $table.targetSection, builder: (column) => column);

  GeneratedColumn<String> get accessLevel => $composableBuilder(
      column: $table.accessLevel, builder: (column) => column);

  GeneratedColumn<String> get censorshipMode => $composableBuilder(
      column: $table.censorshipMode, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$ProfileTableTableAnnotationComposer get subjectProfileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfileTableTableAnnotationComposer get targetProfileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.targetProfileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PermissionRuleTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PermissionRuleTableTable,
    PermissionRuleTableData,
    $$PermissionRuleTableTableFilterComposer,
    $$PermissionRuleTableTableOrderingComposer,
    $$PermissionRuleTableTableAnnotationComposer,
    $$PermissionRuleTableTableCreateCompanionBuilder,
    $$PermissionRuleTableTableUpdateCompanionBuilder,
    (PermissionRuleTableData, $$PermissionRuleTableTableReferences),
    PermissionRuleTableData,
    PrefetchHooks Function({bool subjectProfileId, bool targetProfileId})> {
  $$PermissionRuleTableTableTableManager(
      _$AppDatabase db, $PermissionRuleTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PermissionRuleTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PermissionRuleTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PermissionRuleTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> ruleId = const Value.absent(),
            Value<String> subjectProfileId = const Value.absent(),
            Value<String?> targetProfileId = const Value.absent(),
            Value<String> targetSection = const Value.absent(),
            Value<String> accessLevel = const Value.absent(),
            Value<String> censorshipMode = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PermissionRuleTableCompanion(
            isTutorial: isTutorial,
            ruleId: ruleId,
            subjectProfileId: subjectProfileId,
            targetProfileId: targetProfileId,
            targetSection: targetSection,
            accessLevel: accessLevel,
            censorshipMode: censorshipMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String ruleId,
            required String subjectProfileId,
            Value<String?> targetProfileId = const Value.absent(),
            required String targetSection,
            Value<String> accessLevel = const Value.absent(),
            Value<String> censorshipMode = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              PermissionRuleTableCompanion.insert(
            isTutorial: isTutorial,
            ruleId: ruleId,
            subjectProfileId: subjectProfileId,
            targetProfileId: targetProfileId,
            targetSection: targetSection,
            accessLevel: accessLevel,
            censorshipMode: censorshipMode,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PermissionRuleTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {subjectProfileId = false, targetProfileId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (subjectProfileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.subjectProfileId,
                    referencedTable: $$PermissionRuleTableTableReferences
                        ._subjectProfileIdTable(db),
                    referencedColumn: $$PermissionRuleTableTableReferences
                        ._subjectProfileIdTable(db)
                        .profileId,
                  ) as T;
                }
                if (targetProfileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.targetProfileId,
                    referencedTable: $$PermissionRuleTableTableReferences
                        ._targetProfileIdTable(db),
                    referencedColumn: $$PermissionRuleTableTableReferences
                        ._targetProfileIdTable(db)
                        .profileId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PermissionRuleTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PermissionRuleTableTable,
    PermissionRuleTableData,
    $$PermissionRuleTableTableFilterComposer,
    $$PermissionRuleTableTableOrderingComposer,
    $$PermissionRuleTableTableAnnotationComposer,
    $$PermissionRuleTableTableCreateCompanionBuilder,
    $$PermissionRuleTableTableUpdateCompanionBuilder,
    (PermissionRuleTableData, $$PermissionRuleTableTableReferences),
    PermissionRuleTableData,
    PrefetchHooks Function({bool subjectProfileId, bool targetProfileId})>;
typedef $$FolderTableTableCreateCompanionBuilder = FolderTableCompanion
    Function({
  Value<bool> isTutorial,
  required String folderId,
  Value<String?> vaultId,
  Value<String?> parentFolderId,
  required String name,
  Value<String> iconEmoji,
  Value<String> description,
  Value<String> visibilityRules,
  Value<int> orderIndex,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$FolderTableTableUpdateCompanionBuilder = FolderTableCompanion
    Function({
  Value<bool> isTutorial,
  Value<String> folderId,
  Value<String?> vaultId,
  Value<String?> parentFolderId,
  Value<String> name,
  Value<String> iconEmoji,
  Value<String> description,
  Value<String> visibilityRules,
  Value<int> orderIndex,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$FolderTableTableReferences
    extends BaseReferences<_$AppDatabase, $FolderTableTable, FolderTableData> {
  $$FolderTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VaultTableTable _vaultIdTable(_$AppDatabase db) =>
      db.vaultTable.createAlias(
          $_aliasNameGenerator(db.folderTable.vaultId, db.vaultTable.vaultId));

  $$VaultTableTableProcessedTableManager? get vaultId {
    final $_column = $_itemColumn<String>('vault_id');
    if ($_column == null) return null;
    final manager = $$VaultTableTableTableManager($_db, $_db.vaultTable)
        .filter((f) => f.vaultId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vaultIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ProfileFolderMembershipTableTable,
          List<ProfileFolderMembershipTableData>>
      _profileFolderMembershipTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.profileFolderMembershipTable,
              aliasName: $_aliasNameGenerator(db.folderTable.folderId,
                  db.profileFolderMembershipTable.folderId));

  $$ProfileFolderMembershipTableTableProcessedTableManager
      get profileFolderMembershipTableRefs {
    final manager = $$ProfileFolderMembershipTableTableTableManager(
            $_db, $_db.profileFolderMembershipTable)
        .filter((f) =>
            f.folderId.folderId.sqlEquals($_itemColumn<String>('folder_id')!));

    final cache = $_typedResult
        .readTableOrNull(_profileFolderMembershipTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$FolderTableTableFilterComposer
    extends Composer<_$AppDatabase, $FolderTableTable> {
  $$FolderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get folderId => $composableBuilder(
      column: $table.folderId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parentFolderId => $composableBuilder(
      column: $table.parentFolderId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get iconEmoji => $composableBuilder(
      column: $table.iconEmoji, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get visibilityRules => $composableBuilder(
      column: $table.visibilityRules,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$VaultTableTableFilterComposer get vaultId {
    final $$VaultTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableFilterComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> profileFolderMembershipTableRefs(
      Expression<bool> Function(
              $$ProfileFolderMembershipTableTableFilterComposer f)
          f) {
    final $$ProfileFolderMembershipTableTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.folderId,
            referencedTable: $db.profileFolderMembershipTable,
            getReferencedColumn: (t) => t.folderId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileFolderMembershipTableTableFilterComposer(
                  $db: $db,
                  $table: $db.profileFolderMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$FolderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FolderTableTable> {
  $$FolderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get folderId => $composableBuilder(
      column: $table.folderId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parentFolderId => $composableBuilder(
      column: $table.parentFolderId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get iconEmoji => $composableBuilder(
      column: $table.iconEmoji, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get visibilityRules => $composableBuilder(
      column: $table.visibilityRules,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$VaultTableTableOrderingComposer get vaultId {
    final $$VaultTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableOrderingComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FolderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FolderTableTable> {
  $$FolderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isTutorial => $composableBuilder(
      column: $table.isTutorial, builder: (column) => column);

  GeneratedColumn<String> get folderId =>
      $composableBuilder(column: $table.folderId, builder: (column) => column);

  GeneratedColumn<String> get parentFolderId => $composableBuilder(
      column: $table.parentFolderId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get iconEmoji =>
      $composableBuilder(column: $table.iconEmoji, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get visibilityRules => $composableBuilder(
      column: $table.visibilityRules, builder: (column) => column);

  GeneratedColumn<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$VaultTableTableAnnotationComposer get vaultId {
    final $$VaultTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vaultId,
        referencedTable: $db.vaultTable,
        getReferencedColumn: (t) => t.vaultId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaultTableTableAnnotationComposer(
              $db: $db,
              $table: $db.vaultTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> profileFolderMembershipTableRefs<T extends Object>(
      Expression<T> Function(
              $$ProfileFolderMembershipTableTableAnnotationComposer a)
          f) {
    final $$ProfileFolderMembershipTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.folderId,
            referencedTable: $db.profileFolderMembershipTable,
            getReferencedColumn: (t) => t.folderId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProfileFolderMembershipTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.profileFolderMembershipTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$FolderTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FolderTableTable,
    FolderTableData,
    $$FolderTableTableFilterComposer,
    $$FolderTableTableOrderingComposer,
    $$FolderTableTableAnnotationComposer,
    $$FolderTableTableCreateCompanionBuilder,
    $$FolderTableTableUpdateCompanionBuilder,
    (FolderTableData, $$FolderTableTableReferences),
    FolderTableData,
    PrefetchHooks Function(
        {bool vaultId, bool profileFolderMembershipTableRefs})> {
  $$FolderTableTableTableManager(_$AppDatabase db, $FolderTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FolderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FolderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FolderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            Value<String> folderId = const Value.absent(),
            Value<String?> vaultId = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> iconEmoji = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> visibilityRules = const Value.absent(),
            Value<int> orderIndex = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FolderTableCompanion(
            isTutorial: isTutorial,
            folderId: folderId,
            vaultId: vaultId,
            parentFolderId: parentFolderId,
            name: name,
            iconEmoji: iconEmoji,
            description: description,
            visibilityRules: visibilityRules,
            orderIndex: orderIndex,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isTutorial = const Value.absent(),
            required String folderId,
            Value<String?> vaultId = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            required String name,
            Value<String> iconEmoji = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> visibilityRules = const Value.absent(),
            Value<int> orderIndex = const Value.absent(),
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              FolderTableCompanion.insert(
            isTutorial: isTutorial,
            folderId: folderId,
            vaultId: vaultId,
            parentFolderId: parentFolderId,
            name: name,
            iconEmoji: iconEmoji,
            description: description,
            visibilityRules: visibilityRules,
            orderIndex: orderIndex,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FolderTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {vaultId = false, profileFolderMembershipTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (profileFolderMembershipTableRefs)
                  db.profileFolderMembershipTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (vaultId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vaultId,
                    referencedTable:
                        $$FolderTableTableReferences._vaultIdTable(db),
                    referencedColumn:
                        $$FolderTableTableReferences._vaultIdTable(db).vaultId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (profileFolderMembershipTableRefs)
                    await $_getPrefetchedData<
                            FolderTableData,
                            $FolderTableTable,
                            ProfileFolderMembershipTableData>(
                        currentTable: table,
                        referencedTable: $$FolderTableTableReferences
                            ._profileFolderMembershipTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FolderTableTableReferences(db, table, p0)
                                .profileFolderMembershipTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.folderId == item.folderId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$FolderTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FolderTableTable,
    FolderTableData,
    $$FolderTableTableFilterComposer,
    $$FolderTableTableOrderingComposer,
    $$FolderTableTableAnnotationComposer,
    $$FolderTableTableCreateCompanionBuilder,
    $$FolderTableTableUpdateCompanionBuilder,
    (FolderTableData, $$FolderTableTableReferences),
    FolderTableData,
    PrefetchHooks Function(
        {bool vaultId, bool profileFolderMembershipTableRefs})>;
typedef $$ProfileFolderMembershipTableTableCreateCompanionBuilder
    = ProfileFolderMembershipTableCompanion Function({
  required String profileId,
  required String folderId,
  Value<int> orderIndex,
  Value<int> rowid,
});
typedef $$ProfileFolderMembershipTableTableUpdateCompanionBuilder
    = ProfileFolderMembershipTableCompanion Function({
  Value<String> profileId,
  Value<String> folderId,
  Value<int> orderIndex,
  Value<int> rowid,
});

final class $$ProfileFolderMembershipTableTableReferences
    extends BaseReferences<_$AppDatabase, $ProfileFolderMembershipTableTable,
        ProfileFolderMembershipTableData> {
  $$ProfileFolderMembershipTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProfileTableTable _profileIdTable(_$AppDatabase db) =>
      db.profileTable.createAlias($_aliasNameGenerator(
          db.profileFolderMembershipTable.profileId,
          db.profileTable.profileId));

  $$ProfileTableTableProcessedTableManager get profileId {
    final $_column = $_itemColumn<String>('profile_id')!;

    final manager = $$ProfileTableTableTableManager($_db, $_db.profileTable)
        .filter((f) => f.profileId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FolderTableTable _folderIdTable(_$AppDatabase db) =>
      db.folderTable.createAlias($_aliasNameGenerator(
          db.profileFolderMembershipTable.folderId, db.folderTable.folderId));

  $$FolderTableTableProcessedTableManager get folderId {
    final $_column = $_itemColumn<String>('folder_id')!;

    final manager = $$FolderTableTableTableManager($_db, $_db.folderTable)
        .filter((f) => f.folderId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_folderIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProfileFolderMembershipTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProfileFolderMembershipTableTable> {
  $$ProfileFolderMembershipTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnFilters(column));

  $$ProfileTableTableFilterComposer get profileId {
    final $$ProfileTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableFilterComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$FolderTableTableFilterComposer get folderId {
    final $$FolderTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.folderId,
        referencedTable: $db.folderTable,
        getReferencedColumn: (t) => t.folderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FolderTableTableFilterComposer(
              $db: $db,
              $table: $db.folderTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileFolderMembershipTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfileFolderMembershipTableTable> {
  $$ProfileFolderMembershipTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnOrderings(column));

  $$ProfileTableTableOrderingComposer get profileId {
    final $$ProfileTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableOrderingComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$FolderTableTableOrderingComposer get folderId {
    final $$FolderTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.folderId,
        referencedTable: $db.folderTable,
        getReferencedColumn: (t) => t.folderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FolderTableTableOrderingComposer(
              $db: $db,
              $table: $db.folderTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileFolderMembershipTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfileFolderMembershipTableTable> {
  $$ProfileFolderMembershipTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => column);

  $$ProfileTableTableAnnotationComposer get profileId {
    final $$ProfileTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profileTable,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfileTableTableAnnotationComposer(
              $db: $db,
              $table: $db.profileTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$FolderTableTableAnnotationComposer get folderId {
    final $$FolderTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.folderId,
        referencedTable: $db.folderTable,
        getReferencedColumn: (t) => t.folderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FolderTableTableAnnotationComposer(
              $db: $db,
              $table: $db.folderTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfileFolderMembershipTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfileFolderMembershipTableTable,
    ProfileFolderMembershipTableData,
    $$ProfileFolderMembershipTableTableFilterComposer,
    $$ProfileFolderMembershipTableTableOrderingComposer,
    $$ProfileFolderMembershipTableTableAnnotationComposer,
    $$ProfileFolderMembershipTableTableCreateCompanionBuilder,
    $$ProfileFolderMembershipTableTableUpdateCompanionBuilder,
    (
      ProfileFolderMembershipTableData,
      $$ProfileFolderMembershipTableTableReferences
    ),
    ProfileFolderMembershipTableData,
    PrefetchHooks Function({bool profileId, bool folderId})> {
  $$ProfileFolderMembershipTableTableTableManager(
      _$AppDatabase db, $ProfileFolderMembershipTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileFolderMembershipTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileFolderMembershipTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileFolderMembershipTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> profileId = const Value.absent(),
            Value<String> folderId = const Value.absent(),
            Value<int> orderIndex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileFolderMembershipTableCompanion(
            profileId: profileId,
            folderId: folderId,
            orderIndex: orderIndex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String profileId,
            required String folderId,
            Value<int> orderIndex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileFolderMembershipTableCompanion.insert(
            profileId: profileId,
            folderId: folderId,
            orderIndex: orderIndex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProfileFolderMembershipTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({profileId = false, folderId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable:
                        $$ProfileFolderMembershipTableTableReferences
                            ._profileIdTable(db),
                    referencedColumn:
                        $$ProfileFolderMembershipTableTableReferences
                            ._profileIdTable(db)
                            .profileId,
                  ) as T;
                }
                if (folderId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.folderId,
                    referencedTable:
                        $$ProfileFolderMembershipTableTableReferences
                            ._folderIdTable(db),
                    referencedColumn:
                        $$ProfileFolderMembershipTableTableReferences
                            ._folderIdTable(db)
                            .folderId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProfileFolderMembershipTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $ProfileFolderMembershipTableTable,
        ProfileFolderMembershipTableData,
        $$ProfileFolderMembershipTableTableFilterComposer,
        $$ProfileFolderMembershipTableTableOrderingComposer,
        $$ProfileFolderMembershipTableTableAnnotationComposer,
        $$ProfileFolderMembershipTableTableCreateCompanionBuilder,
        $$ProfileFolderMembershipTableTableUpdateCompanionBuilder,
        (
          ProfileFolderMembershipTableData,
          $$ProfileFolderMembershipTableTableReferences
        ),
        ProfileFolderMembershipTableData,
        PrefetchHooks Function({bool profileId, bool folderId})>;
typedef $$HistoryEntryTableTableCreateCompanionBuilder
    = HistoryEntryTableCompanion Function({
  required String entryId,
  Value<String?> vaultId,
  Value<String?> actingProfileId,
  required String actionType,
  required String targetType,
  Value<String?> targetId,
  required String area,
  Value<String> detail,
  Value<String> censorshipOverrides,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$HistoryEntryTableTableUpdateCompanionBuilder
    = HistoryEntryTableCompanion Function({
  Value<String> entryId,
  Value<String?> vaultId,
  Value<String?> actingProfileId,
  Value<String> actionType,
  Value<String> targetType,
  Value<String?> targetId,
  Value<String> area,
  Value<String> detail,
  Value<String> censorshipOverrides,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$HistoryEntryTableTableFilterComposer
    extends Composer<_$AppDatabase, $HistoryEntryTableTable> {
  $$HistoryEntryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get vaultId => $composableBuilder(
      column: $table.vaultId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get actingProfileId => $composableBuilder(
      column: $table.actingProfileId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get detail => $composableBuilder(
      column: $table.detail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get censorshipOverrides => $composableBuilder(
      column: $table.censorshipOverrides,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$HistoryEntryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HistoryEntryTableTable> {
  $$HistoryEntryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get vaultId => $composableBuilder(
      column: $table.vaultId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get actingProfileId => $composableBuilder(
      column: $table.actingProfileId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get detail => $composableBuilder(
      column: $table.detail, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get censorshipOverrides => $composableBuilder(
      column: $table.censorshipOverrides,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$HistoryEntryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HistoryEntryTableTable> {
  $$HistoryEntryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get entryId =>
      $composableBuilder(column: $table.entryId, builder: (column) => column);

  GeneratedColumn<String> get vaultId =>
      $composableBuilder(column: $table.vaultId, builder: (column) => column);

  GeneratedColumn<String> get actingProfileId => $composableBuilder(
      column: $table.actingProfileId, builder: (column) => column);

  GeneratedColumn<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => column);

  GeneratedColumn<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => column);

  GeneratedColumn<String> get targetId =>
      $composableBuilder(column: $table.targetId, builder: (column) => column);

  GeneratedColumn<String> get area =>
      $composableBuilder(column: $table.area, builder: (column) => column);

  GeneratedColumn<String> get detail =>
      $composableBuilder(column: $table.detail, builder: (column) => column);

  GeneratedColumn<String> get censorshipOverrides => $composableBuilder(
      column: $table.censorshipOverrides, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$HistoryEntryTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HistoryEntryTableTable,
    HistoryEntryTableData,
    $$HistoryEntryTableTableFilterComposer,
    $$HistoryEntryTableTableOrderingComposer,
    $$HistoryEntryTableTableAnnotationComposer,
    $$HistoryEntryTableTableCreateCompanionBuilder,
    $$HistoryEntryTableTableUpdateCompanionBuilder,
    (
      HistoryEntryTableData,
      BaseReferences<_$AppDatabase, $HistoryEntryTableTable,
          HistoryEntryTableData>
    ),
    HistoryEntryTableData,
    PrefetchHooks Function()> {
  $$HistoryEntryTableTableTableManager(
      _$AppDatabase db, $HistoryEntryTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HistoryEntryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HistoryEntryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HistoryEntryTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> entryId = const Value.absent(),
            Value<String?> vaultId = const Value.absent(),
            Value<String?> actingProfileId = const Value.absent(),
            Value<String> actionType = const Value.absent(),
            Value<String> targetType = const Value.absent(),
            Value<String?> targetId = const Value.absent(),
            Value<String> area = const Value.absent(),
            Value<String> detail = const Value.absent(),
            Value<String> censorshipOverrides = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              HistoryEntryTableCompanion(
            entryId: entryId,
            vaultId: vaultId,
            actingProfileId: actingProfileId,
            actionType: actionType,
            targetType: targetType,
            targetId: targetId,
            area: area,
            detail: detail,
            censorshipOverrides: censorshipOverrides,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String entryId,
            Value<String?> vaultId = const Value.absent(),
            Value<String?> actingProfileId = const Value.absent(),
            required String actionType,
            required String targetType,
            Value<String?> targetId = const Value.absent(),
            required String area,
            Value<String> detail = const Value.absent(),
            Value<String> censorshipOverrides = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              HistoryEntryTableCompanion.insert(
            entryId: entryId,
            vaultId: vaultId,
            actingProfileId: actingProfileId,
            actionType: actionType,
            targetType: targetType,
            targetId: targetId,
            area: area,
            detail: detail,
            censorshipOverrides: censorshipOverrides,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$HistoryEntryTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HistoryEntryTableTable,
    HistoryEntryTableData,
    $$HistoryEntryTableTableFilterComposer,
    $$HistoryEntryTableTableOrderingComposer,
    $$HistoryEntryTableTableAnnotationComposer,
    $$HistoryEntryTableTableCreateCompanionBuilder,
    $$HistoryEntryTableTableUpdateCompanionBuilder,
    (
      HistoryEntryTableData,
      BaseReferences<_$AppDatabase, $HistoryEntryTableTable,
          HistoryEntryTableData>
    ),
    HistoryEntryTableData,
    PrefetchHooks Function()>;
typedef $$AppSettingTableTableCreateCompanionBuilder = AppSettingTableCompanion
    Function({
  required String settingKey,
  required String settingValue,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$AppSettingTableTableUpdateCompanionBuilder = AppSettingTableCompanion
    Function({
  Value<String> settingKey,
  Value<String> settingValue,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$AppSettingTableTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingTableTable> {
  $$AppSettingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get settingKey => $composableBuilder(
      column: $table.settingKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get settingValue => $composableBuilder(
      column: $table.settingValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$AppSettingTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingTableTable> {
  $$AppSettingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get settingKey => $composableBuilder(
      column: $table.settingKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get settingValue => $composableBuilder(
      column: $table.settingValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$AppSettingTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingTableTable> {
  $$AppSettingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get settingKey => $composableBuilder(
      column: $table.settingKey, builder: (column) => column);

  GeneratedColumn<String> get settingValue => $composableBuilder(
      column: $table.settingValue, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$AppSettingTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AppSettingTableTable,
    AppSettingTableData,
    $$AppSettingTableTableFilterComposer,
    $$AppSettingTableTableOrderingComposer,
    $$AppSettingTableTableAnnotationComposer,
    $$AppSettingTableTableCreateCompanionBuilder,
    $$AppSettingTableTableUpdateCompanionBuilder,
    (
      AppSettingTableData,
      BaseReferences<_$AppDatabase, $AppSettingTableTable, AppSettingTableData>
    ),
    AppSettingTableData,
    PrefetchHooks Function()> {
  $$AppSettingTableTableTableManager(
      _$AppDatabase db, $AppSettingTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> settingKey = const Value.absent(),
            Value<String> settingValue = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingTableCompanion(
            settingKey: settingKey,
            settingValue: settingValue,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String settingKey,
            required String settingValue,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingTableCompanion.insert(
            settingKey: settingKey,
            settingValue: settingValue,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AppSettingTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AppSettingTableTable,
    AppSettingTableData,
    $$AppSettingTableTableFilterComposer,
    $$AppSettingTableTableOrderingComposer,
    $$AppSettingTableTableAnnotationComposer,
    $$AppSettingTableTableCreateCompanionBuilder,
    $$AppSettingTableTableUpdateCompanionBuilder,
    (
      AppSettingTableData,
      BaseReferences<_$AppDatabase, $AppSettingTableTable, AppSettingTableData>
    ),
    AppSettingTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SystemTableTableTableManager get systemTable =>
      $$SystemTableTableTableManager(_db, _db.systemTable);
  $$VaultTableTableTableManager get vaultTable =>
      $$VaultTableTableTableManager(_db, _db.vaultTable);
  $$ProfileTableTableTableManager get profileTable =>
      $$ProfileTableTableTableManager(_db, _db.profileTable);
  $$ProfileVaultMembershipTableTableTableManager
      get profileVaultMembershipTable =>
          $$ProfileVaultMembershipTableTableTableManager(
              _db, _db.profileVaultMembershipTable);
  $$ArchiveReasonLabelTableTableTableManager get archiveReasonLabelTable =>
      $$ArchiveReasonLabelTableTableTableManager(
          _db, _db.archiveReasonLabelTable);
  $$FusionRecordTableTableTableManager get fusionRecordTable =>
      $$FusionRecordTableTableTableManager(_db, _db.fusionRecordTable);
  $$FusionSourceTableTableTableManager get fusionSourceTable =>
      $$FusionSourceTableTableTableManager(_db, _db.fusionSourceTable);
  $$HierarchyLevelTableTableTableManager get hierarchyLevelTable =>
      $$HierarchyLevelTableTableTableManager(_db, _db.hierarchyLevelTable);
  $$ProfileHierarchyAssignmentTableTableTableManager
      get profileHierarchyAssignmentTable =>
          $$ProfileHierarchyAssignmentTableTableTableManager(
              _db, _db.profileHierarchyAssignmentTable);
  $$PermissionRuleTableTableTableManager get permissionRuleTable =>
      $$PermissionRuleTableTableTableManager(_db, _db.permissionRuleTable);
  $$FolderTableTableTableManager get folderTable =>
      $$FolderTableTableTableManager(_db, _db.folderTable);
  $$ProfileFolderMembershipTableTableTableManager
      get profileFolderMembershipTable =>
          $$ProfileFolderMembershipTableTableTableManager(
              _db, _db.profileFolderMembershipTable);
  $$HistoryEntryTableTableTableManager get historyEntryTable =>
      $$HistoryEntryTableTableTableManager(_db, _db.historyEntryTable);
  $$AppSettingTableTableTableManager get appSettingTable =>
      $$AppSettingTableTableTableManager(_db, _db.appSettingTable);
}
