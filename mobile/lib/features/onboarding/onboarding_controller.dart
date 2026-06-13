import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/database/app_database.dart';
import '../../core/database/providers.dart';
import '../../core/history/history_writer.dart';

// ---------------------------------------------------------------------------
// Tutorial step model
// ---------------------------------------------------------------------------

enum TutorialStep {
  welcome,
  whatIsHierarchy,
  createFirstProfile,
  setLoginMode,
  exploreVaults,
  exploreMessaging,
  exploreMedical,
  exploreMemory,
  complete,
}

class TutorialState {
  const TutorialState({
    this.step = TutorialStep.welcome,
    this.isActive = false,
  });

  final TutorialStep step;
  final bool isActive;

  TutorialState copyWith({TutorialStep? step, bool? isActive}) =>
      TutorialState(
        step: step ?? this.step,
        isActive: isActive ?? this.isActive,
      );
}

// ---------------------------------------------------------------------------
// Controller
// ---------------------------------------------------------------------------

class OnboardingController extends StateNotifier<TutorialState> {
  OnboardingController(this._db, this._history)
      : super(const TutorialState());

  final AppDatabase _db;
  final HistoryWriter _history;

  /// Called on app start. If is_tutorial_mode is true, resumes the tutorial.
  Future<void> checkTutorialState() async {
    final system = await _db.systemDao.getSystem();
    if (system == null) return;
    if (system.isTutorialMode) {
      state = state.copyWith(isActive: true, step: TutorialStep.welcome);
    }
  }

  /// User chose to begin the tutorial from the welcome screen.
  Future<void> startTutorial() async {
    await _db.systemDao.setTutorialMode(true);
    state = state.copyWith(isActive: true, step: TutorialStep.welcome);
  }

  /// Advances to the next step.
  void nextStep() {
    final steps = TutorialStep.values;
    final idx = steps.indexOf(state.step);
    if (idx < steps.length - 1) {
      state = state.copyWith(step: steps[idx + 1]);
    }
  }

  void previousStep() {
    final steps = TutorialStep.values;
    final idx = steps.indexOf(state.step);
    if (idx > 0) {
      state = state.copyWith(step: steps[idx - 1]);
    }
  }

  /// User completed the tutorial normally.
  Future<void> completeTutorial() async {
    await _wipeTutorialData(skipped: false);
  }

  /// User skipped the tutorial.
  Future<void> skipTutorial() async {
    await _wipeTutorialData(skipped: true);
  }

  /// Called on cold start when is_tutorial_mode == true and user must choose
  /// whether to resume or wipe and restart.
  Future<void> resumeTutorial() async {
    state = state.copyWith(isActive: true, step: TutorialStep.welcome);
  }

  Future<void> _wipeTutorialData({required bool skipped}) async {
    // Wipe all tutorial-tagged data atomically
    await _db.systemDao.wipeTutorialData();

    // Log the event — tutorial mode is now false, so HistoryDao will write it
    await _history.write(
      actionType: skipped ? ActionType.tutorialSkip : ActionType.tutorialComplete,
      targetType: 'tutorial',
      area: HistoryArea.system,
    );

    state = const TutorialState(isActive: false);
  }
}

// ---------------------------------------------------------------------------
// Riverpod providers
// ---------------------------------------------------------------------------

final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, TutorialState>(
  (ref) => OnboardingController(
    ref.watch(appDatabaseProvider),
    ref.watch(historyWriterProvider),
  ),
);
