import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final pages = [
      _OnboardingPageData(
        icon: Icons.list_alt,
        iconColor: theme.colorScheme.primary,
        title: 'Organize todas as suas compras',
        body: 'Crie quantas listas quiser — supermercado, feira, farmácia e mais',
      ),
      _OnboardingPageData(
        icon: Icons.smart_toy,
        iconColor: theme.colorScheme.secondary,
        title: 'Inteligência Artificial a seu favor',
        body: 'Categorize automaticamente e tire dúvidas no Chat AI integrado',
      ),
      _OnboardingPageData(
        icon: Icons.group,
        iconColor: theme.colorScheme.tertiary,
        title: 'Compartilhe com quem você ama',
        body: 'Sincronize listas com família e amigos em tempo real',
      ),
      _OnboardingPageData(
        icon: Icons.workspace_premium,
        iconColor: AppColors.premiumAmber,
        title: '7 dias GRÁTIS — Oferta exclusiva',
        body: 'Desbloqueie tudo: listas ilimitadas, IA, temas, backup e mais',
        isCta: true,
      ),
    ];

    final introPages = pages.map((page) {
      return PageViewModel(
        titleWidget: Text(
          page.title,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        bodyWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
          child: Text(
            page.body,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.transparent,
          bodyTextStyle: TextStyle(),
          titleTextStyle: TextStyle(),
        ),
        image: _buildIcon(page, theme),
      );
    }).toList();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IntroductionScreen(
              pages: introPages,
              showSkipButton: true,
              skip: Text(
                'Pular',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              next: Icon(
                Icons.arrow_forward,
                color: theme.colorScheme.primary,
              ),
              done: Text(
                'Começar',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                ),
              ),
              onDone: () => _goToPaywall(context, ref),
              onSkip: () => _enterApp(context, ref),
              dotsDecorator: DotsDecorator(
                size: const Size.square(10),
                activeSize: const Size(22, 10),
                activeColor: theme.colorScheme.primary,
                color: theme.colorScheme.onSurfaceVariant.withAlpha((0.3 * 255).toInt()),
                spacing: const EdgeInsets.symmetric(horizontal: 4),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              globalFooter: _buildGlobalFooter(context, ref, theme),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(_OnboardingPageData page, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.lg),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: page.iconColor.withAlpha((0.1 * 255).toInt()),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            page.icon,
            size: 64,
            color: page.iconColor,
          ),
        ),
      ),
    );
  }

  Widget _buildGlobalFooter(
    BuildContext context,
    WidgetRef ref,
    ThemeData theme,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.lg,
        vertical: Spacing.sm,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 52,
            child: FilledButton.icon(
              onPressed: () => _goToPaywall(context, ref),
              icon: const Icon(Icons.workspace_premium),
              label: const Text(
                'Começar 7 dias grátis',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.premiumAmber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            'Cancele quando quiser. Sem compromisso.',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToPaywall(BuildContext context, WidgetRef ref) async {
    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    await ref.read(onboardingProvider.notifier).markAsSeen();
    if (!context.mounted) {
      return;
    }
    await Navigator.pushReplacement(
      context,
      fadeSlideRoute<void>(const PaywallScreen()),
    );
  }

  Future<void> _enterApp(BuildContext context, WidgetRef ref) async {
    await ref.read(onboardingProvider.notifier).markAsSeen();
  }
}

class _OnboardingPageData {
  _OnboardingPageData({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.body,
    this.isCta = false,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String body;
  final bool isCta;
}
