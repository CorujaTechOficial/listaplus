import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_welcome_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_setup.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_personalization.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_ai_show.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_share.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/app/onboarding/widgets/onboarding_dots.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Slide index that requires the food field to be filled before advancing.
const int _kPersonalizationSlideIndex = 2;

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  Timer? _exitTimer;
  bool _showExitButton = false;

  @override
  void dispose() {
    _pageController.dispose();
    _exitTimer?.cancel();
    super.dispose();
  }

  bool get _isLastSlide => _currentSlide == 5;

  /// Returns true if the user is allowed to advance from the current slide.
  /// On the personalization slide the food field must be non-empty.
  bool _canAdvance(String favoriteFood) {
    if (_currentSlide == _kPersonalizationSlideIndex) {
      return favoriteFood.trim().isNotEmpty;
    }
    return true;
  }

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
      _showExitButton = false;
    });

    _exitTimer?.cancel();
    if (index == 5) {
      _exitTimer = Timer(const Duration(seconds: 3), () {
        if (mounted && _currentSlide == 5) {
          setState(() => _showExitButton = true);
        }
      });
    }
  }

  Future<void> _exitOnboarding() async {
    await ref.read(onboardingProvider.notifier).markAsSeen();
  }

  void _goToSlide(int index) {
    _pageController.animateToPage(
      index,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    // Reactively watch the food field so the Next button updates immediately.
    final favoriteFood = ref.watch(onboardingDataProvider).favoriteFood;
    final canAdvance = _canAdvance(favoriteFood);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: PageView(
                controller: _pageController,
                // Disable swipe on the personalization slide until food is set.
                physics: (_currentSlide == _kPersonalizationSlideIndex &&
                        !canAdvance)
                    ? const NeverScrollableScrollPhysics()
                    : const BouncingScrollPhysics(),
                onPageChanged: _handlePageChanged,
                children: [
                  OnboardingSlideWelcomeLogin(
                    onLoggedIn: () => _goToSlide(1),
                    onSkipped: () => _goToSlide(1),
                  ),
                  const OnboardingSlideSetup(),
                  // No onNext callback — the bottom Next button drives it.
                  const OnboardingSlidePersonalization(),
                  OnboardingSlideAiShow(
                    onFinished: () => _goToSlide(4),
                  ),
                  const OnboardingSlideShare(),
                  const OnboardingSlidePremium(),
                ],
              ),
            ),

            // Exit button at top (Left)
            if (_showExitButton)
              Positioned(
                top: Spacing.xs,
                left: Spacing.xs,
                child: TextButton(
                  onPressed: _exitOnboarding,
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface.withAlpha(80),
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.sm,
                      vertical: Spacing.xs,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    l10n.onboardingExit.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),

            // Exit button at top (Right)
            if (_showExitButton)
              Positioned(
                top: Spacing.xs,
                right: Spacing.xs,
                child: IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: _exitOnboarding,
                  style: IconButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface.withAlpha(80),
                  ),
                ),
              ),

            // ── Bottom nav bar ─────────────────────────────────────────────
            Positioned(
              bottom: Spacing.lg,
              left: Spacing.lg,
              right: Spacing.lg,
              child: Row(
                children: [
                  // Back button
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: _currentSlide > 0
                          ? TextButton(
                              onPressed: () => _goToSlide(_currentSlide - 1),
                              child: Text(
                                l10n.feedbackBack.toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.1,
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),

                  // Dots
                  OnboardingDots(
                    count: 6,
                    currentIndex: _currentSlide,
                    activeColor: theme.colorScheme.primary,
                  ),

                  // Next button — disabled (greyed) when slide gate is locked
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: !_isLastSlide
                          ? AnimatedOpacity(
                              opacity: canAdvance ? 1.0 : 0.35,
                              duration: const Duration(milliseconds: 200),
                              child: TextButton(
                                onPressed: canAdvance
                                    ? () => _goToSlide(_currentSlide + 1)
                                    : null,
                                child: Text(
                                  l10n.next.toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.1,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
