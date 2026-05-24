import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/theme/app_theme.dart';
import 'router.dart';

/// Root MaterialApp — wired to GoRouter and the hex-based theme engine.
class PluralRabbitApp extends ConsumerWidget {
  const PluralRabbitApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Plural Rabbit',
      theme: theme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
