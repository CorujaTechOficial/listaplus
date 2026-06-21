import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideHook extends StatelessWidget {
  const OnboardingSlideHook({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
                  'assets/images/kipi/kipi_welcome.png',
                  height: 160,
                  filterQuality: FilterQuality.high,
                )
                .animate()
                .fadeIn(duration: DurationTokens.normal)
                .scale(begin: const Offset(0.9, 0.9)),
            const SizedBox(height: Spacing.xl),
            Text(
              l10n.obHookTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate(delay: 150.ms).fadeIn().slideY(begin: 0.15),
            const SizedBox(height: Spacing.sm),
            Text(
              l10n.obHookSubtitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ).animate(delay: 300.ms).fadeIn(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  5,
                  (_) => const Icon(
                    Icons.star_rounded,
                    color: AppColors.premiumAmber,
                    size: 20,
                  ),
                ),
                const SizedBox(width: Spacing.xs),
                Flexible(
                  child: Text(
                    l10n.obHookSocial,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ).animate(delay: 450.ms).fadeIn(),
            const SizedBox(height: Spacing.md),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: Text(l10n.obHookCta),
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
