import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_create_list.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_hook.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_loading.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_reveal.dart';
import 'package:shopping_list/app/onboarding/widgets/quiz_slide.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  DateTime _stepStartedAt = DateTime.now();
  bool _hydrated = false;

  static const int _slideCount = 11;
  static const int _paywallIndex = 10;
  static const _stepNames = <String>[
    'hook',
    'quiz_household',
    'quiz_frequency',
    'quiz_pain',
    'quiz_savings',
    'quiz_method',
    'plan_loading',
    'plan_reveal',
    'login',
    'create_first_list',
    'paywall',
  ];

  @override
  void initState() {
    super.initState();
    unawaited(_initialize());
  }

  Future<void> _initialize() async {
    final notifier = ref.read(onboardingDataProvider.notifier);
    await notifier.hydrate();
    if (!mounted) {
      return;
    }
    final restoredStep = ref
        .read(onboardingDataProvider)
        .currentStep
        .clamp(0, _slideCount - 1);
    setState(() {
      _currentSlide = restoredStep;
      _hydrated = true;
      _stepStartedAt = DateTime.now();
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _pageController.hasClients) {
        _pageController.jumpToPage(restoredStep);
      }
    });
    final analytics = ref.read(analyticsServiceProvider);
    unawaited(analytics.logOnboardingStarted());
    unawaited(
      analytics.logOnboardingStepViewed(
        step: restoredStep,
        name: _stepNames[restoredStep],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNext() {
    if (_currentSlide >= _slideCount - 1) {
      return;
    }
    final duration = DateTime.now().difference(_stepStartedAt).inMilliseconds;
    unawaited(
      ref
          .read(analyticsServiceProvider)
          .logOnboardingStepCompleted(
            step: _currentSlide,
            name: _stepNames[_currentSlide],
            durationMs: duration,
          ),
    );
    _pageController.animateToPage(
      _currentSlide + 1,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  void _selectQuizAnswer(void Function(String) save, String id) {
    save(id);
    Future<void>.delayed(const Duration(milliseconds: 250), () {
      if (mounted) {
        _goToNext();
      }
    });
  }

  bool get _canGoBack => _currentSlide > 0 && _currentSlide < _paywallIndex;

  void _goBack() {
    if (!_canGoBack) {
      return;
    }
    unawaited(
      ref
          .read(analyticsServiceProvider)
          .logEvent(
            name: 'onboarding_back_tapped',
            parameters: {'step': _currentSlide},
          ),
    );
    _pageController.animateToPage(
      _currentSlide - 1,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
      _stepStartedAt = DateTime.now();
    });
    ref.read(onboardingDataProvider.notifier).updateCurrentStep(index);
    unawaited(
      ref
          .read(analyticsServiceProvider)
          .logOnboardingStepViewed(step: index, name: _stepNames[index]),
    );
  }

  Future<void> _createFirstList(String name) async {
    final existingListId = ref.read(onboardingDataProvider).createdListId;
    if (existingListId == null) {
      final list = await ref
          .read(shoppingListsProvider.notifier)
          .createList(name);
      ref
          .read(onboardingDataProvider.notifier)
          .recordCreatedList(
            listId: list.id,
            itemCount: 0,
            source: 'onboarding',
          );
      unawaited(
        ref
            .read(analyticsServiceProvider)
            .logEvent(
              name: 'onboarding_first_list_created',
              parameters: {'name_length': name.length},
            ),
      );
    }
    _goToNext();
  }

  Future<void> _completeOnboarding() async {
    final data = ref.read(onboardingDataProvider);
    final firestore = ref.read(firestoreServiceProvider);
    bool syncSuccess = false;

    if (firestore != null) {
      try {
        await firestore.updateUserData({
          'onboardingQuiz': {
            'householdSize': data.householdSize,
            'shoppingFrequency': data.shoppingFrequency,
            'mainPain': data.mainPain,
            'savingsGoal': data.savingsGoal,
            'listMethod': data.listMethod,
          },
        });
        syncSuccess = true;
      } on Exception catch (e) {
        debugPrint('Onboarding: Failed to sync quiz data: $e');
        // We continue to allow entry, but don't clear the draft.
      }
    }

    if (syncSuccess) {
      await ref.read(onboardingDataProvider.notifier).clearDraft();
    }

    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    await ref.read(onboardingProvider.notifier).markAsSeen();
  }

  @override
  Widget build(BuildContext context) {
    if (!_hydrated) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      );
    }

    final l10n = AppLocalizations.of(context)!;
    final data = ref.watch(onboardingDataProvider);
    final notifier = ref.read(onboardingDataProvider.notifier);
    final showProgress = _currentSlide >= 1 && _currentSlide <= 7;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, Object? result) {
        if (!didPop) {
          _goBack();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: _handlePageChanged,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                OnboardingSlideHook(onNext: _goToNext),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizHouseholdTitle,
                    selectedId: data.householdSize,
                    onSelected:
                        (id) =>
                            _selectQuizAnswer(notifier.updateHouseholdSize, id),
                    options: [
                      QuizOption(
                        id: 'solo',
                        emoji: '🙋',
                        label: l10n.obQuizHouseholdSolo,
                      ),
                      QuizOption(
                        id: 'couple',
                        emoji: '💑',
                        label: l10n.obQuizHouseholdCouple,
                      ),
                      QuizOption(
                        id: 'family3to4',
                        emoji: '👨‍👩‍👧',
                        label: l10n.obQuizHouseholdFamilySmall,
                      ),
                      QuizOption(
                        id: 'family5plus',
                        emoji: '👨‍👩‍👧‍👦',
                        label: l10n.obQuizHouseholdFamilyLarge,
                      ),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizFrequencyTitle,
                    selectedId: data.shoppingFrequency,
                    onSelected:
                        (id) => _selectQuizAnswer(
                          notifier.updateShoppingFrequency,
                          id,
                        ),
                    options: [
                      QuizOption(
                        id: 'daily',
                        emoji: '🗓️',
                        label: l10n.obQuizFrequencyDaily,
                      ),
                      QuizOption(
                        id: 'weekly',
                        emoji: '📅',
                        label: l10n.obQuizFrequencyWeekly,
                      ),
                      QuizOption(
                        id: 'biweekly',
                        emoji: '🛒',
                        label: l10n.obQuizFrequencyBiweekly,
                      ),
                      QuizOption(
                        id: 'monthly',
                        emoji: '📦',
                        label: l10n.obQuizFrequencyMonthly,
                      ),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizPainTitle,
                    selectedId: data.mainPain,
                    onSelected:
                        (id) => _selectQuizAnswer(notifier.updateMainPain, id),
                    options: [
                      QuizOption(
                        id: 'forget',
                        emoji: '🤦',
                        label: l10n.obQuizPainForget,
                      ),
                      QuizOption(
                        id: 'overspend',
                        emoji: '💸',
                        label: l10n.obQuizPainOverspend,
                      ),
                      QuizOption(
                        id: 'waste',
                        emoji: '🗑️',
                        label: l10n.obQuizPainWaste,
                      ),
                      QuizOption(
                        id: 'time',
                        emoji: '⏰',
                        label: l10n.obQuizPainTime,
                      ),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizSavingsTitle,
                    selectedId: data.savingsGoal,
                    onSelected:
                        (id) =>
                            _selectQuizAnswer(notifier.updateSavingsGoal, id),
                    options: [
                      QuizOption(
                        id: 'saveSmall',
                        emoji: '🪙',
                        label: l10n.obQuizSavingsSmall,
                      ),
                      QuizOption(
                        id: 'saveMedium',
                        emoji: '💰',
                        label: l10n.obQuizSavingsMedium,
                      ),
                      QuizOption(
                        id: 'saveLarge',
                        emoji: '🏆',
                        label: l10n.obQuizSavingsLarge,
                      ),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizMethodTitle,
                    selectedId: data.listMethod,
                    onSelected:
                        (id) =>
                            _selectQuizAnswer(notifier.updateListMethod, id),
                    options: [
                      QuizOption(
                        id: 'paper',
                        emoji: '📝',
                        label: l10n.obQuizMethodPaper,
                      ),
                      QuizOption(
                        id: 'notes',
                        emoji: '📱',
                        label: l10n.obQuizMethodNotes,
                      ),
                      QuizOption(
                        id: 'memory',
                        emoji: '🧠',
                        label: l10n.obQuizMethodMemory,
                      ),
                      QuizOption(
                        id: 'none',
                        emoji: '🤷',
                        label: l10n.obQuizMethodNone,
                      ),
                    ],
                  ),
                ),
                OnboardingSlidePlanLoading(
                  active: _currentSlide == 6,
                  onFinished: _goToNext,
                ),
                OnboardingSlidePlanReveal(onNext: _goToNext),
                OnboardingSlideLogin(onDone: _goToNext),
                OnboardingSlideCreateList(onCreate: _createFirstList),
                OnboardingSlidePaywall(
                  onPurchased: _completeOnboarding,
                  onRestored: _completeOnboarding,
                  onSkip: _completeOnboarding,
                ),
              ],
            ),
            if (showProgress)
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Spacing.sm,
                    Spacing.xs,
                    Spacing.lg,
                    0,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _goBack,
                        tooltip:
                            MaterialLocalizations.of(context).backButtonTooltip,
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                      const SizedBox(width: Spacing.xs),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                          child: LinearProgressIndicator(
                            value: _currentSlide / (_slideCount - 1),
                            minHeight: 5,
                          ),
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Semantics(
                        label: l10n.onboardingProgress(
                          _currentSlide,
                          _slideCount - 2,
                        ),
                        child: Text(
                          '$_currentSlide/${_slideCount - 2}',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
