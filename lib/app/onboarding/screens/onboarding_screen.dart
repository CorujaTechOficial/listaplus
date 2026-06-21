import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_create_list.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_hook.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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

  static const int _slideCount = 3;
  static const int _paywallIndex = 2;
  static const _stepNames = <String>[
    'hook',
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

  bool get _canGoBack =>
      _currentSlide > 0 && _currentSlide <= _paywallIndex;

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
    await ref.read(onboardingDataProvider.notifier).clearDraft();
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
              physics: null,
              children: [
                OnboardingSlideHook(onFinished: _goToNext),
                OnboardingSlideCreateList(
                  onCreate: _createFirstList,
                  onSkip: _goToNext,
                ),
                OnboardingSlidePaywall(
                  onPurchased: _completeOnboarding,
                  onRestored: _completeOnboarding,
                  onSkip: _completeOnboarding,
                ),
              ],
            ),
            if (_currentSlide > 0 && _currentSlide <= _paywallIndex)
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
                        icon: const Icon(PhosphorIconsRegular.arrowLeft),
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
