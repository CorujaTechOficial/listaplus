import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanReveal extends ConsumerWidget {
  const OnboardingSlidePlanReveal({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final data = ref.watch(onboardingDataProvider);

    // Curva de economia projetada: cresce conforme a ambição da meta.
    final multiplier = switch (data.savingsGoal) {
      'saveLarge' => 1.0,
      'saveMedium' => 0.7,
      _ => 0.45,
    };
    final bars = [0.25, 0.45, 0.7, 1.0].map((v) => v * multiplier).toList();

    final features = [
      (Icons.auto_awesome_rounded, l10n.obRevealFeatureAi),
      (Icons.savings_rounded, l10n.obRevealFeatureBudget),
      (Icons.kitchen_rounded, l10n.obRevealFeaturePantry),
      (Icons.group_rounded, l10n.obRevealFeatureShare),
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.obRevealTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn().slideY(begin: 0.1),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.obRevealSubtitle,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.obRevealSavingsCaption,
                      style: theme.textTheme.labelLarge,
                    ),
                    const SizedBox(height: Spacing.md),
                    SizedBox(
                      height: 144,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          for (final (index, value) in bars.indexed) ...[
                            Expanded(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  const labelHeight = 16.0;
                                  const gapHeight = 4.0;
                                  final maxBarHeight =
                                      constraints.maxHeight -
                                      labelHeight -
                                      gapHeight;

                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                            height: maxBarHeight * value,
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.primary,
                                              borderRadius:
                                                  const BorderRadius.vertical(
                                                    top: Radius.circular(6),
                                                  ),
                                            ),
                                          )
                                          .animate(
                                            delay: Duration(
                                              milliseconds: 150 * index,
                                            ),
                                          )
                                          .scaleY(
                                            begin: 0,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                      const SizedBox(height: Spacing.xxs),
                                      SizedBox(
                                        height: labelHeight,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            l10n.obRevealMonth(index + 1),
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            if (index < bars.length - 1)
                              const SizedBox(width: Spacing.sm),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ).animate().fadeIn(),
            const SizedBox(height: Spacing.lg),
            for (final (index, feature) in features.indexed)
              Padding(
                    padding: const EdgeInsets.only(bottom: Spacing.sm),
                    child: Row(
                      children: [
                        Icon(feature.$1, color: theme.colorScheme.primary),
                        const SizedBox(width: Spacing.sm),
                        Expanded(
                          child: Text(
                            feature.$2,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  )
                  .animate(delay: Duration(milliseconds: 100 * index))
                  .fadeIn()
                  .slideX(begin: 0.1),
            const Spacer(),
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
