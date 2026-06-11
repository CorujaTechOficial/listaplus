import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_ai_demo.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_pain_point.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_personalization.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_loading.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/theme/tokens.dart';

// Flow: WOW → SENTE → PERSONALIZA → IA DEMO → INVESTE → CONVERTE
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  static const int _slideCount = 6;

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
          // 1. WOW: AI demo animado — diferencia o produto imediatamente
          OnboardingSlideAiDemo(onFinished: _goToNext),
          // 2. SENTE: pain points emocionais — cria identificação pessoal
          OnboardingSlidePainPoint(onNext: _goToNext),
          // 3. PERSONALIZA: chips rápidos, sem teclado — baixa fricção
          OnboardingSlidePersonalization(onNext: _goToNext),
          // 4. IA DEMO: lista personalizada gerada ao vivo
          OnboardingAiChat(
            onFinished: _goToNext,
            onSkipped: _goToNext,
          ),
          // 5. INVESTE: loading + social proof — cria investimento
          OnboardingSlidePlanLoading(onFinished: _goToNext),
          // 6. CONVERTE: paywall com headline personalizada pelo pain point
          const OnboardingSlidePremium(),
        ],
      ),
    );
  }
}
