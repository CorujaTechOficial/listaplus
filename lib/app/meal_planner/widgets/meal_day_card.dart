import 'package:flutter/material.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_type_chip.dart';
import 'package:shopping_list/app/meal_planner/widgets/pantry_status_badge.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Card representing a single day in the weekly meal planner view.
/// Organizes meals by type (breakfast, lunch, dinner, snack).
class MealDayCard extends StatelessWidget {
  const MealDayCard({
    super.key,
    required this.date,
    required this.plans,
    required this.isToday,
    required this.onTap,
    required this.onDeleteMeal,
  });

  final DateTime date;
  final List<MealPlan> plans;
  final bool isToday;
  final VoidCallback onTap;
  final void Function(MealPlan plan) onDeleteMeal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return TactileContainer(
      onTap: onTap,
      child: AnimatedContainer(
        duration: DurationTokens.fast,
        margin: const EdgeInsets.only(bottom: Spacing.sm),
        decoration: BoxDecoration(
          color: isToday
              ? theme.colorScheme.primaryContainer.withAlpha(50)
              : theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: isToday
              ? Border.all(
                  color: theme.colorScheme.primary,
                  width: 2,
                )
              : Border.all(
                  color: theme.colorScheme.outlineVariant.withAlpha(100),
                ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(isToday ? 20 : 10),
              blurRadius: isToday ? 12 : 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day header
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.sm,
              ),
              child: Row(
                children: [
                  // Day number circle
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: isToday
                          ? theme.colorScheme.primary
                          : theme.colorScheme.surfaceContainerHigh,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${date.day}',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isToday
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getWeekdayName(date.weekday),
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isToday
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        '${date.month.toString().padLeft(2, '0')}/${date.year}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Meal count badge
                  if (plans.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withAlpha(30),
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                      ),
                      child: Text(
                        '${plans.length}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  const SizedBox(width: Spacing.xs),
                  Icon(
                    Icons.add_circle_rounded,
                    color: theme.colorScheme.primary,
                    size: 22,
                  ),
                ],
              ),
            ),

            // Divider
            Divider(
              height: 1,
              color: theme.colorScheme.outlineVariant.withAlpha(80),
              indent: Spacing.md,
              endIndent: Spacing.md,
            ),

            // Meal slots by type
            if (plans.isEmpty)
              _EmptyDaySlot(l10n: l10n, theme: theme)
            else
              _MealsByTypeList(
                plans: plans,
                theme: theme,
                l10n: l10n,
                onDeleteMeal: onDeleteMeal,
              ),
          ],
        ),
      ),
    );
  }

  String _getWeekdayName(int weekday) {
    const names = [
      '',
      'Segunda-feira',
      'Terça-feira',
      'Quarta-feira',
      'Quinta-feira',
      'Sexta-feira',
      'Sábado',
      'Domingo'
    ];
    return names[weekday];
  }
}

class _EmptyDaySlot extends StatelessWidget {
  const _EmptyDaySlot({
    required this.l10n,
    required this.theme,
  });

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.sm,
      ),
      child: Row(
        children: [
          Icon(
            Icons.add_rounded,
            size: 16,
            color: theme.colorScheme.onSurfaceVariant.withAlpha(150),
          ),
          const SizedBox(width: Spacing.xs),
          Text(
            l10n.mealPlannerNoMealsHint,
            style: theme.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
              color:
                  theme.colorScheme.onSurfaceVariant.withAlpha(150),
            ),
          ),
        ],
      ),
    );
  }
}

class _MealsByTypeList extends StatelessWidget {
  const _MealsByTypeList({
    required this.plans,
    required this.theme,
    required this.l10n,
    required this.onDeleteMeal,
  });

  final List<MealPlan> plans;
  final ThemeData theme;
  final AppLocalizations l10n;
  final void Function(MealPlan) onDeleteMeal;

  @override
  Widget build(BuildContext context) {
    // Sort by meal type order: breakfast → lunch → dinner → snack
    final sorted = [...plans]..sort(
        (a, b) => a.mealType.index.compareTo(b.mealType.index));

    return Column(
      children: sorted.map((plan) {
        return _MealEntryTile(
          plan: plan,
          theme: theme,
          l10n: l10n,
          onDelete: () => onDeleteMeal(plan),
        );
      }).toList(),
    );
  }
}

class _MealEntryTile extends StatelessWidget {
  const _MealEntryTile({
    required this.plan,
    required this.theme,
    required this.l10n,
    required this.onDelete,
  });

  final MealPlan plan;
  final ThemeData theme;
  final AppLocalizations l10n;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final color = mealTypeColor(plan.mealType, theme.colorScheme);
    final icon = mealTypeIcon(plan.mealType);
    final typeLabel = mealTypeLabel(plan.mealType, l10n);

    return Dismissible(
      key: Key('meal_${plan.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: Spacing.md),
        decoration: BoxDecoration(
          color: theme.colorScheme.error.withAlpha(30),
          borderRadius: BorderRadius.circular(RadiusTokens.sm),
        ),
        child: Icon(
          Icons.delete_rounded,
          color: theme.colorScheme.error,
        ),
      ),
      onDismissed: (_) => onDelete(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.sm,
          vertical: 2,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color.withAlpha(15),
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
          ),
          child: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Spacing.sm,
              vertical: 0,
            ),
            leading: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color.withAlpha(30),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 16, color: color),
            ),
            title: Text(
              plan.recipeName,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      typeLabel,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (plan.servings > 1) ...[
                      Text(
                        ' · ',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        l10n.mealPlannerServings(plan.servings),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                PantryStatusBadge(
                  recipeId: plan.recipeId,
                  servings: plan.servings,
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_outline_rounded,
                size: 18,
                color: theme.colorScheme.onSurfaceVariant.withAlpha(180),
              ),
              onPressed: onDelete,
              tooltip: l10n.mealPlannerDeleteMeal,
              visualDensity: VisualDensity.compact,
            ),
          ),
        ),
      ),
    );
  }
}
