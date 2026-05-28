import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_share.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/app/onboarding/widgets/onboarding_dots.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  bool _showPageView = false;
  int _currentSlide = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool get _isLastSlide => _currentSlide == 2;

  Future<void> _exitOnboarding() async {
    await ref.read(onboardingProvider.notifier).markAsSeen();
  }

  void _onChatComplete() {
    setState(() => _showPageView = true);
  }

  void _goToSlide(int index) {
    setState(() => _currentSlide = index);
    _pageController.animateToPage(
      index,
      duration: DurationTokens.normal,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (!_showPageView)
              OnboardingAiChat(onChatComplete: _onChatComplete)
            else ...[
              PageView(
                controller: _pageController,
                physics: _isLastSlide
                    ? const NeverScrollableScrollPhysics()
                    : const PageScrollPhysics(),
                onPageChanged: (index) {
                  setState(() => _currentSlide = index);
                },
                children: [
                  OnboardingSlideLogin(
                    onLoggedIn: () => _goToSlide(1),
                    onSkipped: () => _goToSlide(1),
                  ),
                  const OnboardingSlideShare(),
                  const OnboardingSlidePremium(),
                ],
              ),
              Positioned(
                bottom: Spacing.xl,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OnboardingDots(
                      count: 3,
                      currentIndex: _currentSlide,
                      activeColor: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: Spacing.lg),
                    if (!_isLastSlide)
                      FilledButton.tonalIcon(
                        onPressed: () => _goToSlide(_currentSlide + 1),
                        icon: const Icon(Icons.arrow_forward),
                        label: const SizedBox.shrink(),
                      ),
                  ],
                ),
              ),
            ],
            Positioned(
              top: Spacing.sm,
              right: Spacing.sm,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: _exitOnboarding,
                style: IconButton.styleFrom(
                  foregroundColor: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            if (!_showPageView)
              Positioned(
                top: Spacing.sm,
                left: Spacing.sm,
                child: TextButton(
                  onPressed: _exitOnboarding,
                  child: Text(
                    l10n.onboardingSkipToApp,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
