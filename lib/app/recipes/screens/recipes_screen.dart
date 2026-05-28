import 'dart:async';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';
import 'package:shopping_list/app/recipes/screens/recipe_detail_screen.dart';
import 'package:shopping_list/theme/page_transitions.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  String? _selectedTag;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Recipe> _filterRecipes(List<Recipe> recipes) {
    var filtered = recipes;
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      filtered = filtered.where((r) => r.name.toLowerCase().contains(query)).toList();
    }
    if (_selectedTag != null) {
      filtered = filtered.where((r) => r.tags.contains(_selectedTag)).toList();
    }
    return filtered;
  }

  Set<String> _allTags(List<Recipe> recipes) {
    final tags = <String>{};
    for (final r in recipes) {
      tags.addAll(r.tags);
    }
    return tags;
  }

  Future<void> _confirmDelete(BuildContext context, WidgetRef ref, Recipe recipe, AppLocalizations l10n) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteRecipeConfirm),
        content: Text(l10n.deleteRecipeConfirmMsg(recipe.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: FilledButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.error),
            child: Text(l10n.deleteRecipe),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      unawaited(ref.read(recipesProvider.notifier).deleteRecipe(recipe.id));
      if (context.mounted) {
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
      }
    }
  }

  void _shareApp() {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(ShareParams(
      text: l10n.shareReferralText('https://listaplus.com/invite'),
      subject: l10n.shareReferralSubject,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final l10n = AppLocalizations.of(context)!;
      final theme = Theme.of(context);
      final recipesAsync = ref.watch(recipesProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: l10n.openMenu,
        ),
        title: Text(l10n.myRecipes),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: _shareApp,
            tooltip: l10n.shareApp,
          ),
        ],
      ),
      body: SafeArea(
        child: recipesAsync.when(
          data: (recipes) {
          final filtered = _filterRecipes(recipes);
          final allTags = _allTags(recipes);

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, 0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: l10n.searchRecipes,
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                  onChanged: (v) => setState(() => _searchQuery = v),
                ),
              ),
              if (allTags.isNotEmpty)
                SizedBox(
                  height: 48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: FilterChip(
                          label: Text(l10n.allTags),
                          selected: _selectedTag == null,
                          onSelected: (_) => setState(() => _selectedTag = null),
                        ),
                      ),
                      ...allTags.map(
                        (tag) => Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: FilterChip(
                            label: Text(tag),
                            selected: _selectedTag == tag,
                            onSelected: (sel) => setState(() => _selectedTag = sel ? tag : null),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (filtered.isEmpty && recipes.isNotEmpty)
                Expanded(
                  child: Center(
                    child: Text(
                      l10n.noRecipesSaved,
                      style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                    ),
                  ),
                ),
              if (recipes.isEmpty)
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(Spacing.xl),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant_menu, size: 64,
                              color: theme.colorScheme.primary.withAlpha((0.3 * 255).toInt())),
                          const SizedBox(height: Spacing.md),
                          Text(
                            l10n.noRecipesSaved,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: Spacing.xs),
                          Text(
                            l10n.noRecipesSavedHint,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (filtered.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(Spacing.md),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final recipe = filtered[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: Spacing.md),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              fadeSlideRoute<void>(RecipeDetailScreen(recipeId: recipe.id)),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (recipe.imageUrl != null)
                                Image.network(
                                  recipe.imageUrl!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              Padding(
                                padding: const EdgeInsets.all(Spacing.md),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            recipe.name,
                                            style: theme.textTheme.titleMedium?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.edit_outlined, size: 20),
                                          tooltip: l10n.editRecipe,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              fadeSlideRoute<void>(AddRecipeDialog(recipe: recipe)),
                                            );
                                          },
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.delete_outline, size: 20),
                                          onPressed: () => _confirmDelete(context, ref, recipe, l10n),
                                        ),
                                      ],
                                    ),
                                    if (recipe.description.isNotEmpty) ...[
                                      const SizedBox(height: Spacing.xxs),
                                      Text(
                                        recipe.description,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: theme.colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                    if (recipe.tags.isNotEmpty) ...[
                                      const SizedBox(height: Spacing.xs),
                                      Wrap(
                                        spacing: 4,
                                        runSpacing: 2,
                                        children: recipe.tags.map(
                                          (tag) => Chip(
                                            label: Text(tag, style: const TextStyle(fontSize: 10)),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            visualDensity: VisualDensity.compact,
                                            padding: EdgeInsets.zero,
                                            labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                                          ),
                                        ).toList(),
                                      ),
                                    ],
                                    const SizedBox(height: Spacing.sm),
                                    Row(
                                      children: [
                                        Icon(Icons.timer_outlined, size: 14, color: theme.colorScheme.primary),
                                        const SizedBox(width: 4),
                                        Text(
                                          '${recipe.prepTimeMinutes} min',
                                          style: theme.textTheme.labelSmall?.copyWith(
                                            color: theme.colorScheme.primary,
                                          ),
                                        ),
                                        const SizedBox(width: Spacing.md),
                                        Icon(Icons.shopping_basket_outlined, size: 14,
                                            color: theme.colorScheme.primary),
                                        const SizedBox(width: 4),
                                        Text(
                                          '${recipe.ingredients.length} ${l10n.ingredients}',
                                          style: theme.textTheme.labelSmall?.copyWith(
                                            color: theme.colorScheme.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          );
        },
        loading: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: Spacing.md),
              Text(l10n.loadingRecipes),
            ],
          ),
        ),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.cloud_off, size: 48, color: Colors.red),
                const SizedBox(height: Spacing.md),
                Text(
                  l10n.errorLoadingRecipes,
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(height: Spacing.xs),
                Text(
                  err.toString().replaceFirst('Exception: ', ''),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Spacing.lg),
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
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        onPressed: () {
          Navigator.push(
            context,
            fadeSlideRoute<void>(const AddRecipeDialog()),
          );
        },
        label: Text(l10n.newRecipe),
        icon: const Icon(Icons.add),
      ),
    );
    });
  }
}
