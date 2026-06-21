import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_type.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Color getMealTypeColor(String typeId, List<MealType> activeTypes, ColorScheme scheme) {
  final type = activeTypes.firstWhere((t) => t.id == typeId, orElse: () {
    final def = MealType.defaults.firstWhere((d) => d.id == typeId, orElse: () => MealType(
      id: typeId,
      name: typeId,
      color: 0xFF9E9E9E,
      iconCodepoint: PhosphorIconsRegular.forkKnife.codePoint,
      sortOrder: 99,
    ));
    return def;
  });
  if (type.isBuiltIn && type.id == 'lunch') {
    return scheme.primary;
  }
  return type.colorValue;
}

IconData getMealTypeIcon(String typeId, List<MealType> activeTypes) {
  final type = activeTypes.firstWhere((t) => t.id == typeId, orElse: () {
    final def = MealType.defaults.firstWhere((d) => d.id == typeId, orElse: () => MealType(
      id: typeId,
      name: typeId,
      color: 0xFF9E9E9E,
      iconCodepoint: PhosphorIconsRegular.forkKnife.codePoint,
      sortOrder: 99,
    ));
    return def;
  });
  return type.iconData;
}

String getMealTypeLabel(String typeId, List<MealType> activeTypes, AppLocalizations l10n) {
  final type = activeTypes.firstWhere((t) => t.id == typeId, orElse: () {
    final def = MealType.defaults.firstWhere((d) => d.id == typeId, orElse: () => MealType(
      id: typeId,
      name: typeId,
      color: 0xFF9E9E9E,
      iconCodepoint: PhosphorIconsRegular.forkKnife.codePoint,
      sortOrder: 99,
    ));
    return def;
  });
  return type.localizedLabel(l10n);
}

class MealTypeChip extends StatelessWidget {
  const MealTypeChip({
    super.key,
    required this.mealType,
    required this.isSelected,
    required this.onTap,
  });

  final MealType mealType;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final color = (mealType.isBuiltIn && mealType.id == 'lunch') 
        ? theme.colorScheme.primary 
        : mealType.colorValue;
    final icon = mealType.iconData;
    final label = mealType.localizedLabel(l10n);

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
              Icon(icon, size: Spacing.md, color: isSelected ? Colors.white : color),
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

class MealTypeBadge extends StatelessWidget {
  const MealTypeBadge({
    super.key,
    required this.mealType,
  });

  final MealType mealType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = (mealType.isBuiltIn && mealType.id == 'lunch') 
        ? theme.colorScheme.primary 
        : mealType.colorValue;
    final icon = mealType.iconData;

    return Container(
      width: Spacing.lg,
      height: Spacing.lg,
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: Spacing.sm, color: color),
    );
  }
}
