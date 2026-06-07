import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_action.dart';
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

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNext() {
    _pageController.animateToPage(
      _currentSlide + 1,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: _handlePageChanged,
          children: [
            OnboardingSlideAction(onContinue: _goToNext),
            const OnboardingSlidePremium(),
          ],
        ),
      ),
    );
  }
}
