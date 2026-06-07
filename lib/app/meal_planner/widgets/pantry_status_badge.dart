import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/utils/string_extensions.dart';

class PantryStatusBadge extends ConsumerWidget {
  const PantryStatusBadge({
    super.key,
    required this.recipeId,
    required this.servings,
  });

  final String recipeId;
  final int servings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipesAsync = ref.watch(recipesProvider);
    final pantryAsync = ref.watch(pantryItemsProvider);
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return recipesAsync.when(
      data: (recipes) {
        final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
        if (recipe == null) return const SizedBox.shrink();

        return pantryAsync.when(
          data: (pantryItems) {
            int missingCount = 0;
            for (final ingredient in recipe.ingredients) {
              final normalizedName = ingredient.name.normalize();
              final pantryItem = pantryItems.where(
                (p) => p.name.normalize() == normalizedName && p.unit == ingredient.unit,
              ).firstOrNull;

              // Basic check: if item not in pantry or quantity insufficient
              // scaledQty logic matches generateShoppingListFromWeek
              final scaledQty = (ingredient.quantity > 0
                      ? ingredient.quantity * servings
                      : servings)
                  .clamp(1, 9999);

              if (pantryItem == null || pantryItem.currentQuantity < scaledQty) {
                missingCount++;
              }
            }

            final bool allAvailable = missingCount == 0;
            final color = allAvailable ? Colors.green : Colors.orange;

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: color.withAlpha(30),
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
                border: Border.all(color: color.withAlpha(100)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    allAvailable ? Icons.check_circle_outline_rounded : Icons.info_outline_rounded,
                    size: 12,
                    color: color,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    allAvailable ? l10n.mealPlannerPantryAllAvailable : l10n.mealPlannerPantryMissing(missingCount),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const SizedBox(
            width: 12, 
            height: 12, 
            child: CircularProgressIndicator(strokeWidth: 1),
          ),
          error: (_, __) => const SizedBox.shrink(),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
