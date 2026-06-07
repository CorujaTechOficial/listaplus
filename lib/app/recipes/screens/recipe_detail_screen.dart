import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';

class RecipeDetailScreen extends ConsumerStatefulWidget {
  const RecipeDetailScreen({super.key, required this.recipeId});

  final String recipeId;

  @override
  ConsumerState<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends ConsumerState<RecipeDetailScreen> {
  final Set<String> _preparedIngredients = {};

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final recipesAsync = ref.watch(recipesProvider);

    return recipesAsync.when(
      data: (recipes) {
        final recipe = recipes.where((r) => r.id == widget.recipeId).firstOrNull;
        if (recipe == null) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(child: Text(l10n.noRecipesSaved)),
          );
        }

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    recipe.name,
                    style: TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withAlpha((0.5 * 255).toInt()),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (recipe.imageUrl != null)
                        Image.network(
                          recipe.imageUrl!,
                          fit: BoxFit.cover,
                        )
                      else
                        Container(
                          color: theme.colorScheme.primaryContainer,
                          child: Icon(
                            Icons.restaurant,
                            size: 80,
                            color: theme.colorScheme.onPrimaryContainer.withAlpha((0.2 * 255).toInt()),
                          ),
                        ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                            ],
                            stops: [0.6, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    tooltip: l10n.editRecipe,
                    onPressed: () {
                      Navigator.push(
                        context,
                        fadeSlideRoute<void>(AddRecipeDialog(recipe: recipe)),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    tooltip: l10n.deleteRecipe,
                    onPressed: () => _confirmDelete(context, ref, recipe, l10n),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: _RecipeDetailBody(
                  recipe: recipe,
                  preparedIngredients: _preparedIngredients,
                  onToggleIngredient: (id) {
                    setState(() {
                      if (_preparedIngredients.contains(id)) {
                        _preparedIngredients.remove(id);
                      } else {
                        _preparedIngredients.add(id);
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
                const SizedBox(height: Spacing.md),
                Text(l10n.errorLoadingRecipes),
                const SizedBox(height: Spacing.md),
                FilledButton.icon(
                  onPressed: () => ref.invalidate(recipesProvider),
                  icon: const Icon(Icons.refresh),
                  label: Text(l10n.retry),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, Recipe recipe, AppLocalizations l10n) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteRecipeConfirm),
        content: Text(l10n.deleteRecipeConfirmMsg(recipe.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              ref.read(recipesProvider.notifier).deleteRecipe(recipe.id);
              Navigator.pop(ctx);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.recipeDeleted),
                  action: SnackBarAction(
                    label: l10n.undo,
                    onPressed: () {
                      ref.read(recipesProvider.notifier).saveRecipe(recipe);
                    },
                  ),
                ),
              );
            },
            style: FilledButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.error),
            child: Text(l10n.deleteRecipe),
          ),
        ],
      ),
    );
  }
}

class _RecipeDetailBody extends StatelessWidget {
  const _RecipeDetailBody({
    required this.recipe,
    required this.preparedIngredients,
    required this.onToggleIngredient,
  });

  final Recipe recipe;
  final Set<String> preparedIngredients;
  final ValueChanged<String> onToggleIngredient;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (recipe.description.isNotEmpty) ...[
            Text(
              recipe.description,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.md),
          ],
          Row(
            children: [
              _InfoChip(
                icon: Icons.timer_outlined,
                label: '${recipe.prepTimeMinutes} min',
              ),
              const SizedBox(width: Spacing.sm),
              _InfoChip(
                icon: Icons.shopping_basket_outlined,
                label: '${recipe.ingredients.length} ${l10n.ingredients}',
              ),
            ],
          ),
          if (recipe.tags.isNotEmpty) ...[
            const SizedBox(height: Spacing.md),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: recipe.tags.map(
                (tag) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer.withAlpha((0.5 * 255).toInt()),
                    borderRadius: BorderRadius.circular(RadiusTokens.sm),
                  ),
                  child: Text(
                    tag,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).toList(),
            ),
          ],
          const SizedBox(height: Spacing.xl),
          Text(
            l10n.ingredients,
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.sm),
          ...recipe.ingredients.map(
            (ingredient) => _IngredientTile(
              ingredient: ingredient,
              isPrepared: preparedIngredients.contains(ingredient.id),
              onToggle: () => onToggleIngredient(ingredient.id),
            ),
          ),
          const SizedBox(height: Spacing.xl),
          Text(
            l10n.instructions,
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.sm),
          ...recipe.instructions.asMap().entries.map(
            (entry) => _InstructionStep(
              number: entry.key + 1,
              text: entry.value,
            ),
          ),
          const SizedBox(height: Spacing.xxl),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.md),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: theme.colorScheme.primary),
          const SizedBox(width: 8),
          Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _IngredientTile extends ConsumerWidget {
  const _IngredientTile({
    required this.ingredient,
    required this.isPrepared,
    required this.onToggle,
  });

  final ShoppingItem ingredient;
  final bool isPrepared;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final pantryItem = ref.watch(findInPantryProvider(ingredient.name));
    final hasStock = pantryItem != null && pantryItem.currentQuantity > 0;
    final isLowStock = pantryItem != null && pantryItem.needsRestock;

    return InkWell(
      onTap: onToggle,
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
        child: Row(
          children: [
            Icon(
              isPrepared ? Icons.check_circle : Icons.circle_outlined,
              size: 20,
              color: isPrepared ? theme.colorScheme.primary : theme.colorScheme.outline,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                ingredient.quantity > 0
                    ? '${ingredient.quantity} ${ingredient.unit.label} ${ingredient.name}'
                    : ingredient.name,
                style: TextStyle(
                  decoration: isPrepared ? TextDecoration.lineThrough : null,
                  color: isPrepared ? theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()) : null,
                ),
              ),
            ),
            if (hasStock)
              Icon(
                Icons.inventory_2,
                size: 14,
                color: isLowStock ? Colors.orange : Colors.green,
              ),
            if (!hasStock && pantryItem != null)
              const Icon(
                Icons.inventory_2_outlined,
                size: 14,
                color: Colors.red,
              ),
          ],
        ),
      ),
    );
  }
}


class _InstructionStep extends StatelessWidget {
  const _InstructionStep({required this.number, required this.text});
  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Spacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$number',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
