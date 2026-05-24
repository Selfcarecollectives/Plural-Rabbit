import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../history/history_writer.dart';
import 'app_database.dart';

/// Global provider for the AppDatabase instance.
/// Initialized once at app startup with the derived encryption key.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError(
    'appDatabaseProvider must be overridden in ProviderScope with the '
    'initialized AppDatabase instance.',
  );
});

/// Global provider for the HistoryWriter.
final historyWriterProvider = Provider<HistoryWriter>((ref) {
  return HistoryWriter(ref.watch(appDatabaseProvider));
});
