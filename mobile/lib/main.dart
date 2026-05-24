import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'core/database/app_database.dart';
import 'core/database/providers.dart';
import 'core/encryption/encryption_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Derive or generate the SQLCipher encryption key.
  // Master password is null here — if the user has one, it will be read
  // after the splash screen verifies the system row exists. On first run
  // the device key path is used.
  final dbKey = await EncryptionService.getDatabaseKey();
  final db = await openAppDatabase(dbKey);

  runApp(
    ProviderScope(
      overrides: [
        appDatabaseProvider.overrideWithValue(db),
      ],
      child: const PluralRabbitApp(),
    ),
  );
}
