import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_hook.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_welcome_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_personalization.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_commitments.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_loading.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  static const int _slideCount = 7;

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

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _handlePageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingSlideHook(onFinished: _goToNext),
          OnboardingSlideWelcomeLogin(
            onLoggedIn: _goToNext,
            onSkipped: _goToNext,
          ),
          OnboardingSlidePersonalization(onNext: _goToNext),
          OnboardingAiChat(
            onFinished: _goToNext,
            onSkipped: _goToNext,
          ),
          OnboardingSlideCommitments(onNext: _goToNext),
          OnboardingSlidePlanLoading(onFinished: _goToNext),
          const OnboardingSlidePremium(),
        ],
      ),
    );
  }
}
