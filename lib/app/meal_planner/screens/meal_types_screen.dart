import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_type.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/theme/tokens.dart';

class MealTypesScreen extends ConsumerStatefulWidget {
  const MealTypesScreen({super.key});

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const MealTypesScreen(),
      ),
    );
  }

  @override
  ConsumerState<MealTypesScreen> createState() => _MealTypesScreenState();
}

class _MealTypesScreenState extends ConsumerState<MealTypesScreen> {
  final List<int> _presetColors = const [
    0xFFFB8C00, // Amber/Orange
    0xFF4CAF50, // Green
    0xFF5C6BC0, // Indigo
    0xFF8D6E63, // Brown
    0xFFE53935, // Red
    0xFF8E24AA, // Purple
    0xFF00ACC1, // Cyan
    0xFFD81B60, // Pink
    0xFF7CB342, // Lime
    0xFF546E7A, // Slate
  ];

  final List<IconData> _presetIcons = const [
    Icons.restaurant_menu_rounded,
    Icons.wb_sunny_rounded,
    Icons.wb_twilight_rounded,
    Icons.nightlight_round,
    Icons.coffee_rounded,
    Icons.bakery_dining_rounded,
    Icons.breakfast_dining_rounded,
    Icons.lunch_dining_rounded,
    Icons.dinner_dining_rounded,
    Icons.cake_rounded,
    Icons.icecream_rounded,
    Icons.cookie_rounded,
    Icons.fastfood_rounded,
    Icons.local_pizza_rounded,
    Icons.apple_rounded,
  ];

  Future<void> _openAddEditDialog([MealType? existing]) async {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final nameController = TextEditingController(text: existing?.name ?? '');
    int selectedColor = existing?.color ?? _presetColors.first;
    int selectedIconCodepoint = existing?.iconCodepoint ?? _presetIcons.first.codePoint;

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: Text(existing == null ? l10n.mealPlannerAddType : l10n.mealPlannerEditType),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: l10n.mealPlannerTypeName,
                        border: const OutlineInputBorder(),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(
                      l10n.mealPlannerTypeColor,
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    Wrap(
                      spacing: Spacing.xs,
                      runSpacing: Spacing.xs,
                      children: _presetColors.map((colorVal) {
                        final isSelected = selectedColor == colorVal;
                        return InkWell(
                          onTap: () => setStateDialog(() => selectedColor = colorVal),
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                          child: Container(
                            width: Spacing.xl,
                            height: Spacing.xl,
                            decoration: BoxDecoration(
                              color: Color(colorVal),
                              shape: BoxShape.circle,
                              border: isSelected
                                  ? Border.all(color: theme.colorScheme.onSurface, width: 2)
                                  : null,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(
                      l10n.mealPlannerTypeIcon,
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    Wrap(
                      spacing: Spacing.xs,
                      runSpacing: Spacing.xs,
                      children: _presetIcons.map((iconData) {
                        final isSelected = selectedIconCodepoint == iconData.codePoint;
                        return InkWell(
                          onTap: () => setStateDialog(() => selectedIconCodepoint = iconData.codePoint),
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          child: Container(
                            width: Spacing.xl + Spacing.xxs,
                            height: Spacing.xl + Spacing.xxs,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? theme.colorScheme.primaryContainer
                                  : theme.colorScheme.surfaceContainerLow,
                              borderRadius: BorderRadius.circular(RadiusTokens.sm),
                              border: isSelected
                                  ? Border.all(color: theme.colorScheme.primary, width: 1.5)
                                  : null,
                            ),
                            child: Icon(
                              iconData,
                              size: Spacing.md + Spacing.xxs,
                              color: isSelected
                                  ? theme.colorScheme.onPrimaryContainer
                                  : theme.colorScheme.onSurface,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(false),
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed: () {
                    if (nameController.text.trim().isEmpty) {
                      showKipiSnackBar(
                        context,
                        message: l10n.mealPlannerTypeNameEmpty,
                        type: SnackBarType.warning,
                      );
                      return;
                    }
                    Navigator.of(ctx).pop(true);
                  },
                  child: Text(l10n.save),
                ),
              ],
            );
          },
        );
      },
    );

    if (result == true) {
      final activeTypes = ref.read(activeMealTypesProvider);
      final newType = MealType(
        id: existing?.id ?? const Uuid().v4(),
        name: nameController.text.trim(),
        color: selectedColor,
        iconCodepoint: selectedIconCodepoint,
        sortOrder: existing?.sortOrder ?? activeTypes.length,
        isBuiltIn: existing?.isBuiltIn ?? false,
      );

      await ref.read(mealTypesProvider.notifier).saveMealType(newType);
    }
  }

  Future<void> _deleteType(MealType type) async {
    final l10n = AppLocalizations.of(context)!;
    final activeTypes = ref.read(activeMealTypesProvider);

    // Keep at least one meal type
    if (activeTypes.length <= 1) {
      showKipiSnackBar(
        context,
        message: l10n.mealPlannerTypeDeleteError,
        type: SnackBarType.warning,
      );
      return;
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.mealPlannerDeleteMeal),
        content: Text(l10n.mealPlannerTypeDeleteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(mealTypesProvider.notifier).deleteMealType(type.id);
    }
  }

  Future<void> _onReorder(int oldIndex, int newIndex) async {
    final activeTypes = ref.read(activeMealTypesProvider);
    final list = List<MealType>.from(activeTypes);

    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = list.removeAt(oldIndex);
    list.insert(newIndex, item);

    // Update sortOrder for all elements
    final updatedList = <MealType>[];
    for (var i = 0; i < list.length; i++) {
      updatedList.add(list[i].copyWith(sortOrder: i));
    }

    await ref.read(mealTypesProvider.notifier).saveMealTypes(updatedList);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final activeTypes = ref.watch(activeMealTypesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.mealPlannerManageTypes),
      ),
      body: SafeArea(
        child: activeTypes.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ReorderableListView.builder(
                padding: const EdgeInsets.only(bottom: Spacing.xxl + Spacing.xl),
                itemCount: activeTypes.length,
                onReorder: _onReorder,
                itemBuilder: (context, index) {
                  final type = activeTypes[index];
                  final color = (type.isBuiltIn && type.id == 'lunch')
                      ? theme.colorScheme.primary
                      : type.colorValue;

                  return Container(
                    key: ValueKey(type.id),
                    margin: const EdgeInsets.symmetric(
                      horizontal: Spacing.md,
                      vertical: Spacing.xxs,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant.withAlpha(80),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.md,
                        vertical: Spacing.xxs,
                      ),
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.drag_indicator_rounded),
                          const SizedBox(width: Spacing.xs),
                          Container(
                            width: Spacing.xl + Spacing.xxs,
                            height: Spacing.xl + Spacing.xxs,
                            decoration: BoxDecoration(
                              color: color.withAlpha(30),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(type.iconData, size: Spacing.md + Spacing.xxs / 2, color: color),
                          ),
                        ],
                      ),
                      title: Text(
                        type.localizedLabel(l10n),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        type.isBuiltIn
                            ? l10n.mealPlannerDefaultTypeLabel
                            : l10n.mealPlannerCustomTypeLabel,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit_outlined, size: Spacing.md + Spacing.xxs),
                            onPressed: () => _openAddEditDialog(type),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline_rounded, size: Spacing.md + Spacing.xxs),
                            onPressed: () => _deleteType(type),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openAddEditDialog(),
        icon: const Icon(Icons.add_rounded),
        label: Text(l10n.mealPlannerAddType),
      ),
    );
  }
}
