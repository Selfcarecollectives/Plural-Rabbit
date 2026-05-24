import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/auth/system_setup_screen.dart';
import '../features/auth/vault_login_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/profiles/create_profile_screen.dart';
import '../features/settings/settings_screen.dart';
import 'navigation_screen.dart';
import 'splash_screen.dart';
import 'dashboard_screen.dart';

/// GoRouter configuration for Plural Rabbit.
///
/// Route tree:
///   /                  → SplashScreen (auto-redirects)
///   /setup             → SystemSetupScreen (first launch)
///   /onboarding        → OnboardingScreen (tutorial)
///   /nav               → NavigationScreen (root, pre-login)
///   /vault/:id         → VaultLoginScreen
///   /vault/:id/settings→ Vault settings (Phase 2)
///   /profile/create    → CreateProfileScreen
///   /dashboard         → DashboardScreen (logged in)
///   /settings          → SettingsScreen
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        builder: (ctx, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/setup',
        builder: (ctx, state) => const SystemSetupScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (ctx, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/nav',
        builder: (ctx, state) => const NavigationScreen(),
      ),
      GoRoute(
        path: '/vault/:id',
        builder: (ctx, state) =>
            VaultLoginScreen(vaultId: state.pathParameters['id']!),
        routes: [
          GoRoute(
            path: 'settings',
            builder: (ctx, state) => Scaffold(
              appBar: AppBar(title: const Text('Vault Settings')),
              body: const Center(
                  child: Text('Vault settings — Phase 2')),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/profile/create',
        builder: (ctx, state) {
          final vaultId =
              state.uri.queryParameters['vaultId'] ?? '';
          final tutorial =
              state.uri.queryParameters['tutorial'] == 'true';
          return CreateProfileScreen(
              vaultId: vaultId, isTutorial: tutorial);
        },
      ),
      GoRoute(
        path: '/dashboard',
        builder: (ctx, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (ctx, state) => const SettingsScreen(),
      ),
    ],
    errorBuilder: (ctx, state) => Scaffold(
      body: Center(child: Text('Page not found: ${state.error}')),
    ),
  );
});
