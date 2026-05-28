import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';

class RecipeDetailScreen extends ConsumerWidget {
  const RecipeDetailScreen({super.key, required this.recipeId});

  final String recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final recipesAsync = ref.watch(recipesProvider);

    return Scaffold(
      appBar: AppBar(
        title: recipesAsync.whenOrNull(
          data: (recipes) {
            final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
            return Text(recipe?.name ?? '');
          },
        ),
        actions: recipesAsync.whenOrNull(
          data: (recipes) {
            final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
            if (recipe == null) {
              return null;
            }
            return [
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
            ];
          },
        ),
      ),
      body: SafeArea(
        child: recipesAsync.when(
          data: (recipes) {
          final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
          if (recipe == null) {
            return Center(
              child: Text(l10n.noRecipesSaved),
            );
          }
          return _RecipeContent(recipe: recipe, l10n: l10n, theme: theme);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
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

class _RecipeContent extends StatelessWidget {
  const _RecipeContent({
    required this.recipe,
    required this.l10n,
    required this.theme,
  });

  final Recipe recipe;
  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (recipe.imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusTokens.md),
              child: Image.network(
                recipe.imageUrl!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          if (recipe.imageUrl != null)
            const SizedBox(height: Spacing.md),
          Text(
            recipe.description,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (recipe.tags.isNotEmpty) ...[
            const SizedBox(height: Spacing.sm),
            Wrap(
              spacing: 4,
              runSpacing: 2,
              children: recipe.tags.map(
                (tag) => Chip(
                  label: Text(tag, style: const TextStyle(fontSize: 11)),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ).toList(),
            ),
          ],
          const SizedBox(height: Spacing.md),
          Row(
            children: [
              Icon(Icons.timer_outlined, size: 16, color: theme.colorScheme.primary),
              const SizedBox(width: 4),
              Text(
                '${l10n.prepTime}: ${recipe.prepTimeMinutes} min',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: Spacing.md),
              Icon(Icons.shopping_basket_outlined, size: 16, color: theme.colorScheme.primary),
              const SizedBox(width: 4),
              Text(
                '${recipe.ingredients.length}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.lg),
          Text(
            l10n.ingredients,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.sm),
          ...recipe.ingredients.map(
            (ingredient) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                children: [
                  Icon(Icons.circle, size: 6, color: theme.colorScheme.primary),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ingredient.quantity > 0
                          ? '${ingredient.quantity} ${ingredient.unit.name} ${ingredient.name}'
                          : ingredient.name,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Text(
            l10n.instructions,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.sm),
          ...recipe.instructions.asMap().entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${entry.key + 1}. ',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  Expanded(
                    child: Text(entry.value),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
