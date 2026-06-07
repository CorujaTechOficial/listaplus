import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_type_chip.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Bottom sheet for adding or editing a [MealPlan].
class AddMealPlanSheet extends ConsumerStatefulWidget {
  const AddMealPlanSheet({
    super.key,
    required this.initialDate,
    this.existingPlan,
  });

  final DateTime initialDate;
  final MealPlan? existingPlan;

  @override
  ConsumerState<AddMealPlanSheet> createState() => _AddMealPlanSheetState();
}

class _AddMealPlanSheetState extends ConsumerState<AddMealPlanSheet> {
  late DateTime _selectedDate;
  late MealType _selectedType;
  int _servings = 1;
  Recipe? _selectedRecipe;
  final _noteController = TextEditingController();
  final _searchController = TextEditingController();
  String _searchQuery = '';
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;

    if (widget.existingPlan != null) {
      _selectedType = widget.existingPlan!.mealType;
    } else {
      final hour = DateTime.now().hour;
      if (hour < 11) {
        _selectedType = MealType.breakfast;
      } else if (hour < 15) {
        _selectedType = MealType.lunch;
      } else if (hour < 19) {
        _selectedType = MealType.snack;
      } else {
        _selectedType = MealType.dinner;
      }
    }

    _servings = widget.existingPlan?.servings ?? 1;
    _noteController.text = widget.existingPlan?.note ?? '';
  }

  @override
  void dispose() {
    _noteController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  bool get _canSave => _selectedRecipe != null || widget.existingPlan != null;

  Future<void> _save() async {
    final recipe = _selectedRecipe;
    if (recipe == null && widget.existingPlan == null) {
      return;
    }
    setState(() => _isSaving = true);

    try {
      final start = _selectedDate.subtract(
          Duration(days: _selectedDate.weekday - 1));
      final end = start.add(const Duration(days: 6));
      final notifier = ref.read(
        mealPlansProvider(start: start, end: end).notifier,
      );

      final plan = MealPlan(
        id: widget.existingPlan?.id,
        date: _selectedDate,
        recipeId: recipe?.id ?? widget.existingPlan!.recipeId,
        recipeName: recipe?.name ?? widget.existingPlan!.recipeName,
        servings: _servings,
        mealType: _selectedType,
        note: _noteController.text.trim().isEmpty
            ? null
            : _noteController.text.trim(),
      );

      await notifier.saveMealPlan(plan);

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on Exception {
      setState(() => _isSaving = false);
    }
  }

  List<Recipe> _filteredRecipes(List<Recipe> recipes) {
    if (_searchQuery.isEmpty) {
      return recipes;
    }
    final q = _searchQuery.toLowerCase();
    return recipes.where((r) => r.name.toLowerCase().contains(q)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final recipesAsync = ref.watch(recipesProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(RadiusTokens.xl),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Handle bar
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: Spacing.sm),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
              ),

              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    Spacing.md, Spacing.sm, Spacing.md, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.existingPlan == null
                            ? l10n.mealPlannerAddMeal
                            : l10n.mealPlannerEditMeal,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),

              const Divider(height: 1),

              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(Spacing.md),
                  children: [
                    // --- Meal Type selector ---
                    Text(
                      'Tipo de refeição',
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    Wrap(
                      spacing: Spacing.xs,
                      runSpacing: Spacing.xs,
                      children: MealType.values.map((type) {
                        return MealTypeChip(
                          type: type,
                          isSelected: _selectedType == type,
                          onTap: () => setState(() => _selectedType = type),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: Spacing.md),

                    // --- Date picker ---
                    Text(
                      l10n.mealPlannerDateLabel,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    InkWell(
                      onTap: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: _selectedDate,
                          firstDate: DateTime.now()
                              .subtract(const Duration(days: 30)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 90)),
                        );
                        if (picked != null) {
                          setState(() => _selectedDate = picked);
                        }
                      },
                      borderRadius:
                          BorderRadius.circular(RadiusTokens.md),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.md,
                          vertical: Spacing.sm,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainerLow,
                          borderRadius:
                              BorderRadius.circular(RadiusTokens.md),
                          border: Border.all(
                            color: theme.colorScheme.outline.withAlpha(128),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 18,
                              color: theme.colorScheme.primary,
                            ),
                            const SizedBox(width: Spacing.sm),
                            Text(
                              _formatDate(_selectedDate),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.edit_rounded,
                              size: 16,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: Spacing.md),

                    // --- Servings ---
                    Text(
                      l10n.mealPlannerServingsLabel,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    Row(
                      children: [
                        _StepperButton(
                          icon: Icons.remove,
                          onPressed: _servings > 1
                              ? () =>
                                  setState(() => _servings--)
                              : null,
                        ),
                        const SizedBox(width: Spacing.sm),
                        AnimatedSwitcher(
                          duration: DurationTokens.fast,
                          child: Text(
                            '$_servings',
                            key: ValueKey(_servings),
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        const SizedBox(width: Spacing.sm),
                        _StepperButton(
                          icon: Icons.add,
                          onPressed: _servings < 20
                              ? () =>
                                  setState(() => _servings++)
                              : null,
                        ),
                        const SizedBox(width: Spacing.sm),
                        Text(
                          l10n.mealPlannerServings(_servings),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: Spacing.md),

                    // --- Recipe search ---
                    Text(
                      l10n.mealPlannerSelectRecipe,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: l10n.mealPlannerSearchRecipes,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusTokens.md),
                        ),
                        isDense: true,
                      ),
                      onChanged: (v) =>
                          setState(() => _searchQuery = v),
                    ),
                    const SizedBox(height: Spacing.xs),
                    recipesAsync.when(
                      data: (recipes) {
                        final filtered = _filteredRecipes(recipes);
                        if (recipes.isEmpty) {
                          return _EmptyRecipesHint(l10n: l10n, theme: theme);
                        }
                        if (filtered.isEmpty) {
                          return Padding(
                            padding:
                                const EdgeInsets.all(Spacing.md),
                            child: Text(
                              l10n.mealPlannerNoRecipesFound,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        return Column(
                          children: filtered.map((recipe) {
                            final isSelected =
                                _selectedRecipe?.id == recipe.id;
                            return _RecipeListItem(
                              recipe: recipe,
                              isSelected: isSelected,
                              theme: theme,
                              l10n: l10n,
                              onTap: () => setState(
                                  () => _selectedRecipe = recipe),
                            );
                          }).toList(),
                        );
                      },
                      loading: () => const Padding(
                        padding: EdgeInsets.all(Spacing.xl),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      error: (_, _) => const SizedBox.shrink(),
                    ),

                    const SizedBox(height: Spacing.md),

                    // --- Note ---
                    TextField(
                      controller: _noteController,
                      decoration: InputDecoration(
                        labelText: l10n.mealPlannerNoteLabel,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusTokens.md),
                        ),
                        prefixIcon:
                            const Icon(Icons.note_outlined),
                      ),
                      maxLines: 2,
                    ),

                    const SizedBox(height: Spacing.xl),
                  ],
                ),
              ),

              // --- Save button ---
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Spacing.md, Spacing.xs, Spacing.md, Spacing.md),
                  child: FilledButton.icon(
                    onPressed: _canSave && !_isSaving ? _save : null,
                    icon: _isSaving
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Icon(Icons.check_rounded),
                    label: Text(l10n.mealPlannerSave),
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(RadiusTokens.md),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    const weekdays = [
      '',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado',
      'Domingo'
    ];
    return '${weekdays[date.weekday]}, ${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}

class _StepperButton extends StatelessWidget {
  const _StepperButton({
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: onPressed != null
          ? theme.colorScheme.primaryContainer
          : theme.colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xs),
          child: Icon(
            icon,
            size: 20,
            color: onPressed != null
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.onSurfaceVariant.withAlpha(100),
          ),
        ),
      ),
    );
  }
}

class _RecipeListItem extends StatelessWidget {
  const _RecipeListItem({
    required this.recipe,
    required this.isSelected,
    required this.theme,
    required this.l10n,
    required this.onTap,
  });

  final Recipe recipe;
  final bool isSelected;
  final ThemeData theme;
  final AppLocalizations l10n;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TactileContainer(
      onTap: onTap,
      child: AnimatedContainer(
        duration: DurationTokens.fast,
        margin: const EdgeInsets.only(bottom: Spacing.xs),
        decoration: BoxDecoration(
          color: isSelected
              ? theme.colorScheme.primaryContainer.withAlpha(120)
              : theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(
            color: isSelected
                ? theme.colorScheme.primary
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.sm),
          child: Row(
            children: [
              // Image or icon
              ClipRRect(
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
                child: recipe.imageUrl != null
                    ? Image.network(
                        recipe.imageUrl!,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) =>
                            _RecipeIconPlaceholder(theme: theme),
                      )
                    : _RecipeIconPlaceholder(theme: theme),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Icon(Icons.timer_outlined,
                            size: 12,
                            color: theme.colorScheme.onSurfaceVariant),
                        const SizedBox(width: 2),
                        Text(
                          l10n.mealPlannerPrepTime(recipe.prepTimeMinutes),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(width: Spacing.xs),
                        Icon(Icons.shopping_basket_outlined,
                            size: 12,
                            color: theme.colorScheme.onSurfaceVariant),
                        const SizedBox(width: 2),
                        Text(
                          '${recipe.ingredients.length} ${l10n.ingredients}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Icon(
                  Icons.check_circle_rounded,
                  color: theme.colorScheme.primary,
                  size: 22,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecipeIconPlaceholder extends StatelessWidget {
  const _RecipeIconPlaceholder({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      color: theme.colorScheme.primaryContainer.withAlpha(80),
      child: Icon(
        Icons.restaurant_menu_rounded,
        color: theme.colorScheme.primary.withAlpha(150),
        size: 24,
      ),
    );
  }
}

class _EmptyRecipesHint extends StatelessWidget {
  const _EmptyRecipesHint({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.lg),
      child: Column(
        children: [
          Icon(
            Icons.restaurant_menu_rounded,
            size: 48,
            color: theme.colorScheme.primary.withAlpha(80),
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            l10n.mealPlannerNoRecipesHint,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
