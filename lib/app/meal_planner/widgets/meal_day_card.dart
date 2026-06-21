import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_type_chip.dart';
import 'package:shopping_list/app/meal_planner/widgets/pantry_status_badge.dart';
import 'package:shopping_list/app/recipes/screens/recipe_detail_screen.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Card representing a single day in the weekly meal planner view.
/// Organizes meals by type (breakfast, lunch, dinner, snack).
class MealDayCard extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final activeTypes = ref.watch(activeMealTypesProvider);

    return DragTarget<MealPlan>(
      onWillAcceptWithDetails:
          (details) => _isDifferentDay(details.data.date, date),
      onAcceptWithDetails: (details) {
        final plan = details.data;
        // Find current range from mealPlansProvider if possible or just use a generic update
        // The moveMealPlan method in notifier handles the update
        // We use the first provider instance found or invalidation
        ref
            .read(mealPlansProvider().notifier)
            .moveMealPlan(plan.id, date, plan.mealType);
      },
      builder: (context, candidateData, rejectedData) {
        final isHovering = candidateData.isNotEmpty;

        return TactileContainer(
          onTap: onTap,
          child: AnimatedContainer(
            duration: DurationTokens.fast,
            margin: const EdgeInsets.only(bottom: Spacing.sm),
            decoration: BoxDecoration(
              color:
                  isHovering
                      ? theme.colorScheme.primaryContainer.withAlpha(80)
                      : (isToday
                          ? theme.colorScheme.primaryContainer.withAlpha(50)
                          : theme.colorScheme.surfaceContainerLow),
              borderRadius: BorderRadius.circular(RadiusTokens.lg),
              border:
                  isHovering
                      ? Border.all(color: theme.colorScheme.primary, width: RadiusTokens.bar)
                      : (isToday
                          ? Border.all(
                            color: theme.colorScheme.primary,
                            width: RadiusTokens.bar,
                          )
                          : Border.all(
                            color: theme.colorScheme.outlineVariant.withAlpha(
                              100,
                            ),
                          )),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(
                    isToday || isHovering ? 20 : 10,
                  ),
                  blurRadius: isToday || isHovering ? Spacing.sm : Spacing.xxs,
                  offset: const Offset(0, RadiusTokens.bar),
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
                        width: Spacing.xl + Spacing.xxs,
                        height: Spacing.xl + Spacing.xxs,
                        decoration: BoxDecoration(
                          color:
                              isToday
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.surfaceContainerHigh,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '${date.day}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  isToday
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
                            _getWeekdayName(date, Localizations.localeOf(context).toString()),
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  isToday
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
                            vertical: RadiusTokens.bar,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withAlpha(30),
                            borderRadius: BorderRadius.circular(
                              RadiusTokens.full,
                            ),
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
                        size: Spacing.lg - RadiusTokens.bar,
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
                    activeTypes: activeTypes,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _isDifferentDay(DateTime? a, DateTime b) {
    if (a == null) {
      return false;
    }
    return a.year != b.year || a.month != b.month || a.day != b.day;
  }

  String _getWeekdayName(DateTime date, String locale) {
    final name = DateFormat.EEEE(locale).format(date);
    if (name.isEmpty) {
      return name;
    }
    return name[0].toUpperCase() + name.substring(1);
  }
}

class _EmptyDaySlot extends StatelessWidget {
  const _EmptyDaySlot({required this.l10n, required this.theme});

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
              color: theme.colorScheme.onSurfaceVariant.withAlpha(150),
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
    required this.activeTypes,
  });

  final List<MealPlan> plans;
  final ThemeData theme;
  final AppLocalizations l10n;
  final void Function(MealPlan) onDeleteMeal;
  final List<MealType> activeTypes;

  @override
  Widget build(BuildContext context) {
    // Sort by active meal types list order
    final sorted = [...plans]
      ..sort((a, b) {
        final idxA = activeTypes.indexWhere((t) => t.id == a.mealType);
        final idxB = activeTypes.indexWhere((t) => t.id == b.mealType);
        final valA = idxA == -1 ? 999 : idxA;
        final valB = idxB == -1 ? 999 : idxB;
        return valA.compareTo(valB);
      });

    return Column(
      children:
          sorted.map((plan) {
            return _MealEntryTile(
              plan: plan,
              theme: theme,
              l10n: l10n,
              onDelete: () => onDeleteMeal(plan),
              activeTypes: activeTypes,
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
    required this.activeTypes,
  });

  final MealPlan plan;
  final ThemeData theme;
  final AppLocalizations l10n;
  final VoidCallback onDelete;
  final List<MealType> activeTypes;

  @override
  Widget build(BuildContext context) {
    final color = getMealTypeColor(plan.mealType, activeTypes, theme.colorScheme);
    final icon = getMealTypeIcon(plan.mealType, activeTypes);
    final typeLabel = getMealTypeLabel(plan.mealType, activeTypes, l10n);

    return LongPressDraggable<MealPlan>(
      data: plan,
      axis: null,
      delay: const Duration(milliseconds: 300),
      feedback: Material(
        color: Colors.transparent,
        child: Transform.scale(
          scale: 1.05,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: _buildTile(context, color, icon, typeLabel),
          ),
        ),
      ),
      childWhenDragging: Opacity(
        opacity: 0.3,
        child: _buildTile(context, color, icon, typeLabel),
      ),
      child: Dismissible(
        key: Key('meal_${plan.id}'),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: Spacing.md),
          decoration: BoxDecoration(
            color: theme.colorScheme.error.withAlpha(30),
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
          ),
          child: Icon(Icons.delete_rounded, color: theme.colorScheme.error),
        ),
        onDismissed: (_) => onDelete(),
        child: _buildTile(context, color, icon, typeLabel),
      ),
    );
  }

  Widget _buildTile(
    BuildContext context,
    Color color,
    IconData icon,
    String typeLabel,
  ) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: 2),
      child: Material(
        color: color.withAlpha(15),
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: Spacing.sm,
            vertical: 0,
          ),
          onTap: () {
            Navigator.of(context).push(
              fadeSlideRoute<void>(RecipeDetailScreen(recipeId: plan.recipeId)),
            );
          },
          leading: Container(
            width: Spacing.xl,
            height: Spacing.xl,
            decoration: BoxDecoration(
              color: color.withAlpha(30),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: Spacing.md, color: color),
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
              const SizedBox(height: Spacing.xxs),
              PantryStatusBadge(
                recipeId: plan.recipeId,
                servings: plan.servings,
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.delete_outline_rounded,
              size: Spacing.sm + RadiusTokens.xs,
              color: theme.colorScheme.onSurfaceVariant.withAlpha(180),
            ),
            onPressed: onDelete,
            tooltip: l10n.mealPlannerDeleteMeal,
            visualDensity: VisualDensity.compact,
          ),
        ),
      ),
    );
  }
}
