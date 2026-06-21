import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BudgetSummaryCard extends ConsumerStatefulWidget {
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
  ConsumerState<BudgetSummaryCard> createState() => _BudgetSummaryCardState();
}

class _BudgetSummaryCardState extends ConsumerState<BudgetSummaryCard> {
  bool? _isExpanded;

  Color _budgetProgressColor({
    required double ratio,
    required ThemeData theme,
    required AppSemanticColors semanticColors,
  }) {
    if (ratio >= 1.0) {
      return theme.colorScheme.error;
    }
    if (ratio >= 0.9) {
      return semanticColors.warning;
    }
    return semanticColors.success;
  }

  Color _mealProgressColor({
    required double progress,
    required ColorScheme scheme,
    required AppSemanticColors semanticColors,
  }) {
    if (progress >= 0.8) {
      return semanticColors.success;
    } else if (progress >= 0.5) {
      return scheme.primary;
    } else if (progress >= 0.25) {
      return semanticColors.warning;
    } else {
      return scheme.onSurfaceVariant;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final summaryAsync = ref.watch(
      mealPlannerSummaryProvider(
        weekStart: widget.weekStart,
        weekEnd: widget.weekEnd,
        monthStart: widget.monthStart,
        monthEnd: widget.monthEnd,
        focusedDay: widget.focusedDay,
      ),
    );
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);
    final mealPlansAsync = ref.watch(
      mealPlansProvider(start: widget.weekStart, end: widget.weekEnd),
    );
    final activeTypes = ref.watch(activeMealTypesProvider);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    final goal = goalAsync.value;
    final semanticColors = AppSemanticColors.of(context);
    final hasValidGoal = goal != null && goal > 0;

    // Stable skeleton while summary loads — prevents blink/layout shift
    if (!summaryAsync.hasValue || !mealPlansAsync.hasValue) {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.xs,
        ),
        height: 56,
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
        ),
      );
    }

    final summary = summaryAsync.value!;
    final mealPlans = mealPlansAsync.value ?? [];
    final monthCost = summary.plannedMonthCost;
    final weekCost = summary.weekCost;
    final todayCost = summary.todayCost;
    final monthPartial = summary.monthHasPartialPricing ? '~' : '';
    final weekPartial = summary.weekHasPartialPricing ? '~' : '';
    final hasAnyPartial = summary.monthHasPartialPricing || summary.weekHasPartialPricing;

    final totalMealSlots = activeTypes.isEmpty ? 21 : 7 * activeTypes.length;
    final plannedMealsCount = mealPlans.length.clamp(0, totalMealSlots);
    final mealProgress = totalMealSlots == 0 ? 0.0 : plannedMealsCount / totalMealSlots;

    // Default to collapsed (false) when goal is set, otherwise expanded (true)
    _isExpanded ??= !hasValidGoal;

    if (!_isExpanded!) {
      final String budgetLabel;
      if (hasValidGoal) {
        final percent = ((monthCost / goal) * 100).clamp(0, 999).round();
        budgetLabel = '${formatCurrency(weekCost, currencyCode)}$weekPartial ($percent%)';
      } else {
        budgetLabel = '${formatCurrency(weekCost, currencyCode)}$weekPartial';
      }

      final mealPercent = (mealProgress * 100).round();
      final labelText = '${l10n.mealPlannerBudgetWeekCost(budgetLabel)} · $plannedMealsCount/$totalMealSlots ($mealPercent%)';

      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.xs,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withAlpha(80),
          ),
        ),
        child: InkWell(
          onTap: () => setState(() => _isExpanded = true),
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
            child: Row(
              children: [
                Icon(
                  PhosphorIconsRegular.piggyBank,
                  size: Spacing.md,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: Spacing.xs),
                Expanded(
                  child: Text(
                    labelText,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(
                  PhosphorIconsRegular.caretDown,
                  size: Spacing.md,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
      );
    }

    final budgetRatio = hasValidGoal ? monthCost / goal : 0.0;
    final budgetProgColor = _budgetProgressColor(
      ratio: budgetRatio,
      theme: theme,
      semanticColors: semanticColors,
    );
    final mealProgColor = _mealProgressColor(
      progress: mealProgress,
      scheme: theme.colorScheme,
      semanticColors: semanticColors,
    );

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
          // Header row with collapse trigger
          InkWell(
            onTap: () => setState(() => _isExpanded = false),
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Spacing.xxs),
              child: Row(
                children: [
                  Icon(
                    PhosphorIconsRegular.piggyBank,
                    size: Spacing.md,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: Spacing.xs),
                  Expanded(
                    child: Text(
                      l10n.mealPlannerTitle,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (hasValidGoal) ...[
                    OutlinedButton.icon(
                      onPressed: () => BudgetGoalSheet.show(context),
                      icon: const Icon(PhosphorIconsRegular.pencilSimple, size: Spacing.sm),
                      label: Text(l10n.edit),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.sm,
                          vertical: Spacing.xs,
                        ),
                        minimumSize: const Size(Spacing.xxl, Spacing.xl),
                        tapTargetSize: MaterialTapTargetSize.padded,
                      ),
                    ),
                    const SizedBox(width: Spacing.xs),
                  ],
                  Icon(
                    PhosphorIconsRegular.caretUp,
                    size: Spacing.md,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: Spacing.sm),

          // Two-column dashboard widgets
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column 1: Budget Progress
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hasValidGoal ? l10n.mealPlannerBudgetGoalNav : l10n.mealPlannerBudgetMonthCost(''),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    if (hasValidGoal) ...[
                      Text(
                        l10n.budgetAmountSpent(
                          '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                          formatCurrency(goal, currencyCode),
                        ),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: Spacing.xxs),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(RadiusTokens.xs),
                        child: LinearProgressIndicator(
                          value: budgetRatio.clamp(0.0, 1.0),
                          backgroundColor: theme.colorScheme.surfaceContainerHigh,
                          valueColor: AlwaysStoppedAnimation<Color>(budgetProgColor),
                          minHeight: RadiusTokens.xs,
                        ),
                      ),
                    ] else ...[
                      Text(
                        '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: Spacing.xxs),
                      TextButton.icon(
                        onPressed: () => BudgetGoalSheet.show(context),
                        icon: const Icon(PhosphorIconsRegular.plus, size: Spacing.sm + Spacing.xxs / 2),
                        label: Text(l10n.setBudgetButton),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, Spacing.lg),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: Spacing.md),
              // Column 2: Meal Progress
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.mealPlannerTitle,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    Text(
                      l10n.mealPlannerWeekProgress(plannedMealsCount, totalMealSlots),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(RadiusTokens.xs),
                      child: LinearProgressIndicator(
                        value: mealProgress,
                        backgroundColor: theme.colorScheme.surfaceContainerHigh,
                        valueColor: AlwaysStoppedAnimation<Color>(mealProgColor),
                        minHeight: RadiusTokens.xs,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.md),

          const Divider(height: 1),
          const SizedBox(height: Spacing.sm),

          // Detail rows
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

          if (hasAnyPartial) ...[
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.budgetPartialEstimateHint,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: theme.colorScheme.onSurfaceVariant.withAlpha(180),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
