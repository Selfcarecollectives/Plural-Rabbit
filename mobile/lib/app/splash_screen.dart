import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/database/app_database.dart';
import '../core/database/providers.dart';

/// Splash screen — shown briefly while the app initializes.
///
/// Decision tree on boot:
///  - No system row → /setup  (first launch)
///  - System row exists + is_tutorial_mode → /onboarding
///  - System row exists → /nav
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // Small delay so the splash is visible
    await Future.delayed(const Duration(milliseconds: 800));

    if (!mounted) return;

    try {
      final db = ref.read(appDatabaseProvider);
      final system = await db.systemDao.getSystem();

      if (system == null) {
        context.go('/setup');
      } else if (system.isTutorialMode) {
        // Mid-tutorial resume — OnboardingController handles the prompt
        context.go('/onboarding');
      } else {
        context.go('/nav');
      }
    } catch (e) {
      // DB not yet initialized — go to setup
      context.go('/setup');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.diversity_3,
                size: 80, color: const Color(0xFF6B3FA0)),
            const SizedBox(height: 24),
            const Text(
              'Plural Rabbit',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'v1.0.0',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              color: Color(0xFF6B3FA0),
            ),
          ],
        ),
      ),
    );
  }
}
