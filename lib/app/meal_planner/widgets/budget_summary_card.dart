import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';

class BudgetSummaryCard extends ConsumerWidget {
  const BudgetSummaryCard({
    super.key,
    required this.weekStart,
    required this.weekEnd,
    required this.monthStart,
    required this.monthEnd,
    required this.focusedDay,
  });

  final DateTime weekStart;
  final DateTime weekEnd;
  final DateTime monthStart;
  final DateTime monthEnd;
  final DateTime focusedDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final summaryAsync = ref.watch(
      mealPlannerSummaryProvider(
        weekStart: weekStart,
        weekEnd: weekEnd,
        monthStart: monthStart,
        monthEnd: monthEnd,
        focusedDay: focusedDay,
      ),
    );
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    final summary = summaryAsync.value;
    final goal = goalAsync.value;
    final semanticColors = Theme.of(context).extension<AppSemanticColors>()!;

    if (summary == null) {
      return const SizedBox.shrink();
    }

    final monthCost = summary.plannedMonthCost;
    final weekCost = summary.weekCost;
    final todayCost = summary.todayCost;
    final monthPartial = summary.monthHasPartialPricing ? '~' : '';
    final weekPartial = summary.weekHasPartialPricing ? '~' : '';
    final hasValidGoal = goal != null && goal > 0;

    Color progressColor(double ratio) {
      if (ratio >= 1.0) return theme.colorScheme.error;
      if (ratio >= 0.9) return semanticColors.warning;
      return semanticColors.success;
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      padding: const EdgeInsets.all(Spacing.md),
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
                Icons.savings_outlined,
                size: 16,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: Spacing.xs),
              Expanded(
                child: Text(
                  l10n.mealPlannerBudgetGoalNav,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (hasValidGoal)
                IconButton(
                  onPressed: () => BudgetGoalSheet.show(context),
                  icon: const Icon(Icons.edit_outlined, size: 16),
                  color: theme.colorScheme.primary,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                ),
            ],
          ),
          const SizedBox(height: Spacing.xs),

          if (hasValidGoal) ...[
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.budgetAmountSpent(
                      '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                      formatCurrency(goal, currencyCode),
                    ),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '${((monthCost / goal) * 100).clamp(0, 999).round()}%',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: progressColor(monthCost / goal),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spacing.xs),
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusTokens.bar),
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(
                  begin: 0,
                  end: (monthCost / goal).clamp(0.0, 1.0),
                ),
                duration: DurationTokens.slow,
                curve: Curves.easeOutCubic,
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  backgroundColor: theme.colorScheme.surfaceContainerHigh,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    progressColor(monthCost / goal),
                  ),
                  minHeight: 6,
                ),
              ),
            ),
            const SizedBox(height: Spacing.xs),
          ],

          Row(
            children: [
              Expanded(
                child: Text(
                  l10n.mealPlannerBudgetWeekCost(
                    '${formatCurrency(weekCost, currencyCode)}$weekPartial',
                  ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              Text(
                l10n.mealPlannerBudgetTodayCost(
                  formatCurrency(todayCost, currencyCode),
                ),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),

          if (!hasValidGoal) ...[
            const SizedBox(height: Spacing.xs),
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.mealPlannerBudgetMonthCost(
                      '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                    ),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => BudgetGoalSheet.show(context),
                  icon: const Icon(Icons.add, size: 14),
                  label: Text(l10n.setBudgetButton),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.xs,
                      vertical: Spacing.xxs,
                    ),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

}
