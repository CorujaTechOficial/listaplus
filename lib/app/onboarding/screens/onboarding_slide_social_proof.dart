import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideSocialProof extends StatelessWidget {
  const OnboardingSlideSocialProof({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final quotes = [
      l10n.obSocialQuote1,
      l10n.obSocialQuote2,
      l10n.obSocialQuote3,
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              l10n.obSocialTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn().slideY(begin: 0.1),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.obSocialSubtitle,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            for (final (index, quote) in quotes.indexed) ...[
              Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(Spacing.md),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (_) => const Icon(
                                Icons.star_rounded,
                                color: AppColors.premiumAmber,
                                size: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: Spacing.xs),
                          Text(quote, style: theme.textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  )
                  .animate(delay: Duration(milliseconds: 150 * index))
                  .fadeIn()
                  .slideY(begin: 0.2),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(flex: 2),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: Text(
                  MaterialLocalizations.of(context).continueButtonLabel,
                ),
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
