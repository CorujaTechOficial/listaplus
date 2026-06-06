import 'dart:async';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';
import 'package:shopping_list/app/recipes/widgets/recipe_card_skeleton.dart';
import 'package:shopping_list/app/recipes/screens/recipe_detail_screen.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shopping_list/utils/string_extensions.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';

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
      text: l10n.shareReferralText('https://kipilist.com/invite'),
      subject: l10n.shareReferralSubject,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final l10n = AppLocalizations.of(context)!;
      final theme = Theme.of(context);
      final recipesAsync = ref.watch(recipesProvider);
      final isDark = theme.brightness == Brightness.dark;

      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () => AccountMenuSheet.show(context),
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
                    padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, Spacing.xs),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: l10n.searchRecipes,
                        prefixIcon: const Icon(Icons.search, size: 20),
                        filled: true,
                        fillColor: theme.colorScheme.surfaceContainerHighest.withAlpha((isDark ? 0.3 * 255 : 0.5 * 255).toInt()),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.lg),
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      ),
                      onChanged: (v) => setState(() => _searchQuery = v),
                    ),
                  ),
                  if (allTags.isNotEmpty)
                    Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: FilterChip(
                              label: Text(l10n.allTags),
                              selected: _selectedTag == null,
                              onSelected: (_) => setState(() => _selectedTag = null),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
                            ),
                          ),
                          ...allTags.map(
                            (tag) => Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: FilterChip(
                                label: Text(tag),
                                selected: _selectedTag == tag,
                                onSelected: (sel) => setState(() => _selectedTag = sel ? tag : null),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (filtered.isEmpty && recipes.isNotEmpty)
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search_off, size: 48, color: theme.colorScheme.outline),
                            const SizedBox(height: Spacing.sm),
                            Text(
                              l10n.noRecipesSaved,
                              style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                            ),
                          ],
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
                              Icon(Icons.restaurant_menu, size: 80,
                                  color: theme.colorScheme.primary.withAlpha((0.2 * 255).toInt())),
                              const SizedBox(height: Spacing.md),
                              Text(
                                l10n.noRecipesSaved,
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onSurface,
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
                              const SizedBox(height: Spacing.xl),
                              FilledButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    fadeSlideRoute<void>(const AddRecipeDialog()),
                                  );
                                },
                                icon: const Icon(Icons.add),
                                label: Text(l10n.newRecipe),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (filtered.isNotEmpty)
                    Expanded(
                      child: AnimationLimiter(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final ratio = constraints.maxWidth < 380 ? 0.65 : 0.75;
                            return GridView.builder(
                              padding: const EdgeInsets.all(Spacing.md),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: ratio,
                                crossAxisSpacing: Spacing.md,
                                mainAxisSpacing: Spacing.md,
                              ),
                              itemCount: filtered.length,
                              itemBuilder: (context, index) {
                                final recipe = filtered[index];
                                return AnimationConfiguration.staggeredGrid(
                                  position: index,
                                  duration: DurationTokens.normal,
                                  columnCount: 2,
                                  child: ScaleAnimation(
                                    child: FadeInAnimation(
                                      child: _RecipeGridCard(
                                        recipe: recipe,
                                        onDelete: () => _confirmDelete(context, ref, recipe, l10n),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                ],
              );
            },
            loading: () => GridView.builder(
              padding: const EdgeInsets.all(Spacing.md),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: Spacing.md,
                mainAxisSpacing: Spacing.md,
              ),
              itemCount: 4,
              itemBuilder: (_, _) => const RecipeCardSkeleton(),
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
        floatingActionButton: recipesAsync.maybeWhen(
          data: (recipes) => recipes.isEmpty 
            ? null 
            : FloatingActionButton.extended(
                heroTag: 'recipe_fab',
                onPressed: () {
                  Navigator.push(
                    context,
                    fadeSlideRoute<void>(const AddRecipeDialog()),
                  );
                },
                label: Text(l10n.newRecipe),
                icon: const Icon(Icons.add),
              ),
          orElse: () => null,
        ),
      );
    });
  }
}

class _RecipeGridCard extends StatelessWidget {
  const _RecipeGridCard({
    required this.recipe,
    required this.onDelete,
  });

  final Recipe recipe;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        side: BorderSide(color: theme.colorScheme.outlineVariant.withAlpha((0.5 * 255).toInt())),
      ),
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
            Expanded(
              child: Stack(
                children: [
                  if (recipe.imageUrl != null)
                    Positioned.fill(
                      child: Image.network(
                        recipe.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => _ImagePlaceholder(),
                      ),
                    )
                  else
                    _ImagePlaceholder(),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha((0.3 * 255).toInt()),
                        shape: BoxShape.circle,
                      ),
                      child: _RecipeCardMenu(recipe: recipe, onDelete: onDelete),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha((0.5 * 255).toInt()),
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.timer_outlined, size: 12, color: Colors.white),
                          const SizedBox(width: 4),
                          Text(
                            '${recipe.prepTimeMinutes} min',
                            style: theme.textTheme.labelSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  _PantryAvailabilityBadge(ingredients: recipe.ingredients),
                  if (recipe.tags.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      recipe.tags.join(', '),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecipeCardMenu extends StatelessWidget {
  const _RecipeCardMenu({required this.recipe, required this.onDelete});
  final Recipe recipe;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert, size: 18, color: Colors.white),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(minWidth: 140),
      onSelected: (val) {
        if (val == 'edit') {
          Navigator.push(
            context,
            fadeSlideRoute<void>(AddRecipeDialog(recipe: recipe)),
          );
        } else if (val == 'delete') {
          onDelete();
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              const Icon(Icons.edit_outlined, size: 18),
              const SizedBox(width: 8),
              Text(l10n.edit),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete_outline, size: 18, color: Theme.of(context).colorScheme.error),
              const SizedBox(width: 8),
              Text(l10n.remove, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
          ),
        ),
      ],
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.surfaceContainerHighest,
      child: Center(
        child: Icon(
          Icons.restaurant_outlined,
          size: 40,
          color: theme.colorScheme.onSurfaceVariant.withAlpha((0.2 * 255).toInt()),
        ),
      ),
    );
  }
}

class _PantryAvailabilityBadge extends ConsumerWidget {
  const _PantryAvailabilityBadge({required this.ingredients});
  final List<ShoppingItem> ingredients;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final pantryAsync = ref.watch(pantryItemsProvider);
    final pantryItems = pantryAsync.value ?? <PantryItem>[];
    
    if (pantryItems.isEmpty) {
      return Text(
        '${ingredients.length} ingredientes',
        style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
      );
    }

    var availableCount = 0;
    for (final ing in ingredients) {
      final normalized = ing.name.normalize();
      final inPantry = pantryItems.any((PantryItem p) => p.name.normalize() == normalized && p.currentQuantity > 0);
      if (inPantry) {
        availableCount++;
      }
    }

    final allAvailable = availableCount == ingredients.length;
    final color = allAvailable ? Colors.green : theme.colorScheme.onSurfaceVariant;

    return Row(
      children: [
        Icon(
          allAvailable ? Icons.check_circle : Icons.inventory_2_outlined,
          size: 10,
          color: color,
        ),
        const SizedBox(width: 4),
        Text(
          allAvailable ? 'Tem tudo!' : '$availableCount/${ingredients.length} na despensa',
          style: theme.textTheme.labelSmall?.copyWith(
            color: color,
            fontWeight: allAvailable ? FontWeight.bold : null,
          ),
        ),
      ],
    );
  }
}

