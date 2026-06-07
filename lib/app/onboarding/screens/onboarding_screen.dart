import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/app/onboarding/widgets/onboarding_slide_value_prop.dart';
import 'package:shopping_list/app/onboarding/widgets/onboarding_dots.dart';
import 'package:shopping_list/theme/tokens.dart';

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

  bool get _isLastSlide => _currentSlide == 2;

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
      _showExitButton = false;
    });

    _exitTimer?.cancel();
    if (index == 2) {
      _exitTimer = Timer(const Duration(seconds: 3), () {
        if (mounted && _currentSlide == 2) {
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

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: PageView(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: _handlePageChanged,
                children: [
                  OnboardingSlideValueProp(
                    icon: Icons.checklist_rounded,
                    title: l10n.onboardingSlide1Title,
                    body: l10n.onboardingSlide1Body,
                    iconColor: theme.colorScheme.primary,
                  ),
                  OnboardingSlideValueProp(
                    icon: Icons.auto_awesome_rounded,
                    title: l10n.onboardingSlide2Title,
                    body: l10n.onboardingSlide2Body,
                    iconColor: theme.colorScheme.tertiary,
                  ),
                  OnboardingSlideValueProp(
                    icon: Icons.kitchen_rounded,
                    title: l10n.onboardingSlide3Title,
                    body: l10n.onboardingSlide3Body,
                    iconColor: theme.colorScheme.secondary,
                  ),
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
                    count: 3,
                    currentIndex: _currentSlide,
                    activeColor: theme.colorScheme.primary,
                  ),

                  // Next / Get Started button
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: !_isLastSlide
                          ? TextButton(
                              onPressed: () => _goToSlide(_currentSlide + 1),
                              child: Text(
                                l10n.next.toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.1,
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
