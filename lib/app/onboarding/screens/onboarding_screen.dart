import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_welcome_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  bool _showAiChat = true;
  bool _hasCompletedOnboarding = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNext() {
    if (_currentSlide < _slideCount - 1) {
      _pageController.animateToPage(
        _currentSlide + 1,
        duration: DurationTokens.fast,
        curve: Curves.easeOutCubic,
      );
    }
  }

  void _finishOnboarding() async {
    if (_hasCompletedOnboarding) {
      return;
    }
    _hasCompletedOnboarding = true;
    await ref.read(onboardingProvider.notifier).markAsSeen();
    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
    });
  }

  int get _slideCount =>
      _showAiChat ? 3 : 2; // Login → Premium (after AI chat)

  @override
  Widget build(BuildContext context) {
    if (_showAiChat) {
      return OnboardingAiChat(
        onFinished: () {
          setState(() => _showAiChat = false);
        },
        onSkipped: _finishOnboarding,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: _handlePageChanged,
          children: [
            OnboardingSlideWelcomeLogin(
              onLoggedIn: _goToNext,
              onSkipped: _goToNext,
            ),
            const OnboardingSlidePremium(),
          ],
        ),
      ),
    );
  }
}
