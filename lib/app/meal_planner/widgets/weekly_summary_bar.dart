import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/theme/tokens.dart';

/// A summary bar showing how many of the 21 weekly meals (7 days × 3) are planned.
class WeeklySummaryBar extends StatelessWidget {
  const WeeklySummaryBar({
    super.key,
    required this.plans,
  });

  final List<MealPlan> plans;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    const totalMealSlots = 21; // 7 days × 3 main meals
    final count = plans.length.clamp(0, totalMealSlots);
    final progress = count / totalMealSlots;
    final progressColor = _progressColor(progress, theme.colorScheme);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.sm,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha(80),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.event_note_rounded,
                size: 16,
                color: progressColor,
              ),
              const SizedBox(width: Spacing.xs),
              Expanded(
                child: Text(
                  l10n.mealPlannerWeekProgress(count, totalMealSlots),
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                '${(progress * 100).round()}%',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: progressColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.xs),
          ClipRRect(
            borderRadius: BorderRadius.circular(RadiusTokens.full),
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: progress),
              duration: DurationTokens.slow,
              curve: Curves.easeOutCubic,
              builder: (context, value, _) {
                return LinearProgressIndicator(
                  value: value,
                  backgroundColor:
                      theme.colorScheme.surfaceContainerHigh,
                  valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                  minHeight: 6,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Color _progressColor(double progress, ColorScheme scheme) {
    if (progress >= 0.8) {
      return const Color(0xFF4CAF50); // Green — great!
    } else if (progress >= 0.5) {
      return scheme.primary;
    } else if (progress >= 0.25) {
      return const Color(0xFFFB8C00); // Orange — could be better
    } else {
      return scheme.onSurfaceVariant;
    }
  }
}
