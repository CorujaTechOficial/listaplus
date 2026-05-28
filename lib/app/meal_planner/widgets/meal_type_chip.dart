import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Returns the color associated with a [MealType].
Color mealTypeColor(MealType type, ColorScheme scheme) {
  switch (type) {
    case MealType.breakfast:
      return const Color(0xFFFB8C00); // Amber/Orange
    case MealType.lunch:
      return scheme.primary; // App green
    case MealType.dinner:
      return const Color(0xFF5C6BC0); // Indigo
    case MealType.snack:
      return const Color(0xFF8D6E63); // Brown
  }
}

/// Returns the icon associated with a [MealType].
IconData mealTypeIcon(MealType type) {
  switch (type) {
    case MealType.breakfast:
      return Icons.wb_twilight_rounded;
    case MealType.lunch:
      return Icons.wb_sunny_rounded;
    case MealType.dinner:
      return Icons.nightlight_round;
    case MealType.snack:
      return Icons.coffee_rounded;
  }
}

/// Returns the localized label for a [MealType].
String mealTypeLabel(MealType type, AppLocalizations l10n) {
  switch (type) {
    case MealType.breakfast:
      return l10n.mealPlannerMealTypeBreakfast;
    case MealType.lunch:
      return l10n.mealPlannerMealTypeLunch;
    case MealType.dinner:
      return l10n.mealPlannerMealTypeDinner;
    case MealType.snack:
      return l10n.mealPlannerMealTypeSnack;
  }
}

class MealTypeChip extends StatelessWidget {
  const MealTypeChip({
    super.key,
    required this.type,
    required this.isSelected,
    required this.onTap,
  });

  final MealType type;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final color = mealTypeColor(type, theme.colorScheme);
    final icon = mealTypeIcon(type);
    final label = mealTypeLabel(type, l10n);

    return AnimatedContainer(
      duration: DurationTokens.fast,
      curve: Curves.easeOut,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(RadiusTokens.full),
        child: AnimatedContainer(
          duration: DurationTokens.fast,
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.sm,
            vertical: Spacing.xs,
          ),
          decoration: BoxDecoration(
            color: isSelected ? color : color.withAlpha(30),
            borderRadius: BorderRadius.circular(RadiusTokens.full),
            border: Border.all(
              color: isSelected ? color : color.withAlpha(80),
              width: 1.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16,
                color: isSelected ? Colors.white : color,
              ),
              const SizedBox(width: Spacing.xxs),
              Text(
                label,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: isSelected ? Colors.white : color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A compact icon badge for meal type, used inside day cards.
class MealTypeBadge extends StatelessWidget {
  const MealTypeBadge({super.key, required this.type});

  final MealType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = mealTypeColor(type, theme.colorScheme);
    final icon = mealTypeIcon(type);

    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 13, color: color),
    );
  }
}
