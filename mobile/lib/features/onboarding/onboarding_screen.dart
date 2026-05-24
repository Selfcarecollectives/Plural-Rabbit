import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'onboarding_controller.dart';

/// The full tutorial onboarding flow.
///
/// Spec requirements:
/// - First launch shows introduction/tutorial screen
/// - User is warned BEFORE starting that tutorial data will be auto-deleted
/// - User can skip and explore freely, or go through the guided tutorial
/// - Tutorial covers every major feature with interactive examples
/// - All tutorial data is automatically wiped after completion or skipping
/// - The app states this verbatim to the user
/// - Opting out of hierarchy is not available
class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    final ctrl = ref.read(onboardingControllerProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      body: SafeArea(
        child: _buildStep(context, state, ctrl),
      ),
    );
  }

  Widget _buildStep(BuildContext context, TutorialState state,
      OnboardingController ctrl) {
    switch (state.step) {
      case TutorialStep.welcome:
        return _WelcomeStep(ctrl: ctrl);
      case TutorialStep.whatIsHierarchy:
        return _HierarchyInfoStep(ctrl: ctrl);
      case TutorialStep.createFirstProfile:
        return _CreateProfileStep(ctrl: ctrl);
      case TutorialStep.setLoginMode:
        return _LoginModeStep(ctrl: ctrl);
      case TutorialStep.exploreVaults:
        return _VaultsStep(ctrl: ctrl);
      case TutorialStep.exploreMessaging:
        return _MessagingStep(ctrl: ctrl);
      case TutorialStep.exploreMedical:
        return _MedicalStep(ctrl: ctrl);
      case TutorialStep.exploreMemory:
        return _MemoryStep(ctrl: ctrl);
      case TutorialStep.complete:
        return _CompleteStep(ctrl: ctrl);
    }
  }
}

// ---------------------------------------------------------------------------
// Step widgets
// ---------------------------------------------------------------------------

class _WelcomeStep extends StatelessWidget {
  const _WelcomeStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Center(
            child: Icon(Icons.diversity_3,
                size: 80, color: const Color(0xFF6B3FA0)),
          ),
          const SizedBox(height: 24),
          Text(
            'Welcome to Plural Rabbit',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1A2E),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'A free, private, offline-first app for plural systems of all kinds.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          // ⚠️ Spec: app must state tutorial-wipe verbatim before starting
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF3CD),
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: const Color(0xFFFFCA2C)),
            ),
            child: const Text(
              'Heads up: Any data you create during this tutorial will be '
              'automatically deleted once you finish or skip it. '
              'This keeps your app clean before you start for real.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: ctrl.nextStep,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF6B3FA0),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text('Start Tutorial'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: ctrl.skipTutorial,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text('Skip & Explore Freely'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _HierarchyInfoStep extends StatelessWidget {
  const _HierarchyInfoStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'About Hierarchy',
      icon: Icons.account_tree,
      body: const Text(
        'Plural Rabbit uses a hierarchy system to control what each headmate '
        'can see, edit, and access.\n\n'
        'Hierarchy is always present — even if unconfigured, all profiles '
        'default to equal access. You cannot opt out of hierarchy, but you '
        'can shape it to fit how your system works.\n\n'
        'You can use top-down, bottom-up, or fully custom per-profile rules.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _CreateProfileStep extends StatelessWidget {
  const _CreateProfileStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'Creating a Profile',
      icon: Icons.person_add,
      body: const Text(
        'Each headmate (or system member) has their own Profile.\n\n'
        'Profiles have a name, pronouns, image, description, and custom '
        'fields. You can protect each profile with a PIN, password, or '
        'drawn pattern — or leave it open.\n\n'
        'Try creating a sample profile on the next screen.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _LoginModeStep extends StatelessWidget {
  const _LoginModeStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'Open vs Closed Login',
      icon: Icons.lock_open,
      body: const Text(
        'Open Login: All profile names are visible as a horizontal scroll. '
        'Tap yours and enter your password.\n\n'
        'Closed Login: Nothing is shown. Type your profile name manually — '
        'no one else can see who is in the app.\n\n'
        'You can switch modes any time in Settings.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _VaultsStep extends StatelessWidget {
  const _VaultsStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'Vaults',
      icon: Icons.layers,
      body: const Text(
        'Vaults are self-contained environments. Each vault has its own '
        'profiles, settings, chats, medical center, and memory tools.\n\n'
        'You can have multiple vaults, nest vaults inside vaults, and share '
        'profiles between them. Profile changes sync automatically.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _MessagingStep extends StatelessWidget {
  const _MessagingStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'In-App Messaging',
      icon: Icons.chat_bubble_outline,
      body: const Text(
        'Send messages between profiles — all local, no internet needed.\n\n'
        'You can have direct chats, group chats, and Discord-style channels '
        'with moderation controls. Messages support markdown, images, voice '
        'notes, and scheduling.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _MedicalStep extends StatelessWidget {
  const _MedicalStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'Medical Center',
      icon: Icons.health_and_safety_outlined,
      body: const Text(
        'Track health and safety information privately.\n\n'
        'The body map lets you mark and record body-related information with '
        'a coordinate grid. Store contacts, medical history, medications, '
        'and build your own custom tracking templates.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _MemoryStep extends StatelessWidget {
  const _MemoryStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return _TutorialScaffold(
      ctrl: ctrl,
      title: 'Memory Center',
      icon: Icons.book_outlined,
      body: const Text(
        'Calendars, bulletin boards, notebooks, and message boards — all '
        'in one place.\n\n'
        'Calendar events can be assigned to specific profiles. Notebooks '
        'support full markdown. All content has visibility controls so each '
        'headmate sees only what they should.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _CompleteStep extends StatelessWidget {
  const _CompleteStep({required this.ctrl});
  final OnboardingController ctrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Center(
            child: Icon(Icons.check_circle_outline,
                size: 80, color: const Color(0xFF6B3FA0)),
          ),
          const SizedBox(height: 24),
          Text(
            "You're all set!",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1A2E),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            'Tutorial data will now be deleted and you can start fresh.\n'
            'Your app is ready to use.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: ctrl.completeTutorial,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF6B3FA0),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text('Get Started'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

/// Reusable scaffold for interior tutorial steps.
class _TutorialScaffold extends StatelessWidget {
  const _TutorialScaffold({
    required this.ctrl,
    required this.title,
    required this.icon,
    required this.body,
  });

  final OnboardingController ctrl;
  final String title;
  final IconData icon;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Center(child: Icon(icon, size: 60, color: const Color(0xFF6B3FA0))),
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1A2E),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.bodyLarge!,
                child: body,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              OutlinedButton(
                onPressed: ctrl.previousStep,
                child: const Text('Back'),
              ),
              const Spacer(),
              FilledButton(
                onPressed: ctrl.nextStep,
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF6B3FA0),
                ),
                child: const Text('Next'),
              ),
            ],
          ),
          TextButton(
            onPressed: ctrl.skipTutorial,
            child: const Text('Skip Tutorial'),
          ),
        ],
      ),
    );
  }
}
