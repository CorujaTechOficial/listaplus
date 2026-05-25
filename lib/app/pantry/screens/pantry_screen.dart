import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/pantry/widgets/add_pantry_item_dialog.dart';

class PantryScreen extends ConsumerWidget {
  const PantryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final pantryAsync = ref.watch(pantryItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.pantryAppBar),
        actions: [
          if (pantryAsync.value?.isNotEmpty == true)
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: l10n.generateShoppingList,
              onPressed: () => _generateShoppingList(context, ref),
            ),
        ],
      ),
      body: pantryAsync.when(
        data: (items) {
          if (items.isEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(pantryItemsProvider);
                await ref.read(pantryItemsProvider.future);
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: EmptyState(
                    icon: Icons.inventory_2_outlined,
                    title: l10n.pantryEmpty,
                    subtitle: l10n.pantryEmptySubtitle,
                  ),
                ),
              ),
            );
          }

          final deficitItems = items.where((i) => i.trackStock && i.deficit > 0).length;

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(pantryItemsProvider);
              await ref.read(pantryItemsProvider.future);
            },
            child: Column(
              children: [
                if (deficitItems > 0)
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
                    padding: const EdgeInsets.all(Spacing.sm),
                    decoration: BoxDecoration(
                      color: isDark
                          ? theme.colorScheme.tertiaryContainer.withAlpha((0.15 * 255).toInt())
                          : theme.colorScheme.tertiaryContainer.withAlpha((0.3 * 255).toInt()),
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, size: 18, color: theme.colorScheme.tertiary),
                        const SizedBox(width: Spacing.xs),
                        Text(
                          l10n.itemsNeedPurchase(deficitItems),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ).animate().slideY(
                    begin: -1,
                    end: 0,
                    duration: DurationTokens.normal,
                    curve: Curves.easeOutBack,
                  ).fadeIn(duration: DurationTokens.fast),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: Spacing.xs, bottom: Spacing.md),
                    itemCount: items.length,
                    itemBuilder: (context, index) => _PantryItemTile(item: items[index]).animate().fadeIn(
                      duration: DurationTokens.fast,
                      delay: Duration(milliseconds: index * 40),
                    ).slideY(
                      begin: 0.15,
                      end: 0,
                      duration: DurationTokens.fast,
                      delay: Duration(milliseconds: index * 40),
                      curve: Curves.easeOut,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'pantry_fab',
        onPressed: () => showDialog<void>(
          context: context,
          builder: (_) => const AddPantryItemDialog(),
        ),
        child: const Icon(Icons.add),
      ).animate().fadeIn(
        duration: DurationTokens.slow,
        delay: DurationTokens.normal,
      ).scale(
        begin: const Offset(0, 0),
        end: const Offset(1, 1),
        duration: DurationTokens.normal,
        curve: Curves.easeOutBack,
      ),
    );
  }

  Future<void> _generateShoppingList(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context)!;
    final suggestions = ref.read(pantrySuggestionsProvider);
    if (suggestions.isEmpty) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.noItemsToBuy)),
        );
      }
      return;
    }

    final theme = Theme.of(context);
    final nameController = TextEditingController(text: l10n.newPantryList);
    await showDialog<void>(
      context: context,
      builder: (ctx) {
        var isCreating = false;
        return StatefulBuilder(
          builder: (context, setDialogState) => AlertDialog(
            title: Text(l10n.newListTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  l10n.itemsWillBeAdded(suggestions.length),
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: Spacing.sm),
                TextField(
                  controller: nameController,
                  enabled: !isCreating,
                  decoration: InputDecoration(
                    labelText: l10n.listNameLabel,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: isCreating ? null : () => Navigator.pop(ctx),
                child: Text(l10n.cancel),
              ),
              FilledButton(
                onPressed: isCreating
                    ? null
                    : () async {
                        final name = nameController.text.trim();
                        if (name.isEmpty) {
                          return;
                        }
                        setDialogState(() => isCreating = true);
                        try {
                          final newList = await ref.read(shoppingListsProvider.notifier).createList(name);
                          final itemsNotifier = ref.read(shoppingListItemsProvider(newList.id).notifier);
                          for (final suggestion in suggestions) {
                            await itemsNotifier.addItem(
                              listId: newList.id,
                              name: suggestion.name,
                              quantity: suggestion.quantity,
                              categoryId: suggestion.categoryId,
                              unit: suggestion.unit,
                              estimatedPrice: suggestion.estimatedPrice,
                            );
                          }
                          await ref.read(currentListIdProvider.notifier).setCurrentList(newList.id);
                          if (ctx.mounted) {
                            ScaffoldMessenger.of(ctx).showSnackBar(
                              SnackBar(content: Text(l10n.listCreated(newList.name, suggestions.length))),
                            );
                          }
                          if (ctx.mounted) {
                            Navigator.pop(ctx, name);
                          }
                        } on Exception catch (e) {
                          if (ctx.mounted) {
                            setDialogState(() => isCreating = false);
                            ScaffoldMessenger.of(ctx).showSnackBar(
                              SnackBar(content: Text(l10n.error(e.toString()))),
                            );
                          }
                        }
                      },
                child: isCreating
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(l10n.create),
              ),
            ],
          ),
        );
      },
    );
    nameController.dispose();
  }
}

class _PantryItemTile extends ConsumerWidget {
  const _PantryItemTile({required this.item});

  final PantryItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final progress = item.idealQuantity > 0
        ? item.currentQuantity / item.idealQuantity
        : 0.0;
    final categoriesAsync = ref.watch(categoriesProvider);
    final cats = categoriesAsync.value ?? <CategoryData>[];
    final categoriesMap = <String, CategoryData>{
      for (final cat in cats) cat.id: cat,
    };

    final Color barColor;
    if (progress >= 0.8) {
      barColor = Colors.green;
    } else if (progress >= 0.4) {
      barColor = Colors.orange;
    } else {
      barColor = Colors.red;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xs),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: categoriesMap[item.categoryId]?.colorValue.withAlpha(((isDark ? 0.2 : 0.15) * 255).toInt()) ?? theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                    ),
                    child: Icon(
                      categoriesMap[item.categoryId]?.icon ?? Icons.category,
                      size: 14,
                      color: categoriesMap[item.categoryId]?.colorValue ?? theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: Spacing.xs),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (!item.trackStock)
                          Text(
                            l10n.noTracking,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                      ],
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert, size: 18),
                    itemBuilder: (_) => [
                      PopupMenuItem(value: 'edit', child: Text(l10n.edit)),
                      if (item.trackStock && item.deficit > 0)
                        PopupMenuItem(value: 'restock', child: Text(l10n.markAsPurchased)),
                      PopupMenuItem(value: 'delete', child: Text(l10n.remove)),
                    ],
                    onSelected: (value) async {
                      if (value == 'edit') {
                        _showEditDialog(context, ref);
                      } else if (value == 'delete') {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text(l10n.confirm),
                            content: Text(l10n.confirmRemovePantry(item.name)),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: Text(l10n.cancel),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: Text(l10n.remove),
                              ),
                            ],
                          ),
                        );
                        if (confirm == true) {
                          await ref.read(pantryItemsProvider.notifier).removeItem(item.id);
                        }
                      } else if (value == 'restock') {
                        await ref.read(pantryItemsProvider.notifier).restockItem(item.id, item.deficit);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.restocked(item.name, item.idealQuantity, item.unit.label))),
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: Spacing.xxs),
              if (item.trackStock)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                      child: TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0, end: progress),
                        duration: DurationTokens.normal,
                        curve: Curves.easeOut,
                        builder: (context, value, _) => LinearProgressIndicator(
                          value: value,
                          minHeight: 6,
                          backgroundColor: isDark
                              ? theme.colorScheme.surfaceContainerHighest.withAlpha((0.2 * 255).toInt())
                              : theme.colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation<Color>(barColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          '${item.currentQuantity} / ${item.idealQuantity} ${item.unit.label}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontFeatures: [const FontFeature.tabularFigures()],
                          ),
                        ),
                        const Spacer(),
                        if (item.deficit > 0)
                          Text(
                            'Faltam ${item.deficit}',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: barColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _QuantityIconButton(
                          icon: Icons.remove,
                          onPressed: item.currentQuantity <= 0
                              ? null
                              : () => ref.read(pantryItemsProvider.notifier).decrementCurrent(item.id),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            '${item.currentQuantity}',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontFeatures: [const FontFeature.tabularFigures()],
                            ),
                          ),
                        ),
                        _QuantityIconButton(
                          icon: Icons.add,
                          onPressed: () => ref.read(pantryItemsProvider.notifier).incrementCurrent(item.id),
                        ),
                        const SizedBox(width: Spacing.xs),
                        TextButton.icon(
                          onPressed: item.currentQuantity <= 0
                              ? null
                              : () => ref.read(pantryItemsProvider.notifier).consumeItem(item.id),
                          icon: Icon(Icons.arrow_downward, size: 14, color: theme.colorScheme.error),
                          label: Text(
                            l10n.consumed,
                            style: TextStyle(color: theme.colorScheme.error, fontSize: 12),
                          ),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    showDialog<void>(
      context: context,
      builder: (_) => _EditPantryItemDialog(item: item),
    );
  }
}

class _EditPantryItemDialog extends StatefulWidget {
  const _EditPantryItemDialog({required this.item});
  final PantryItem item;

  @override
  State<_EditPantryItemDialog> createState() => _EditPantryItemDialogState();
}

class _EditPantryItemDialogState extends State<_EditPantryItemDialog> {
  late final TextEditingController _idealController;
  late final TextEditingController _currentController;

  @override
  void initState() {
    super.initState();
    _idealController = TextEditingController(text: widget.item.idealQuantity.toString());
    _currentController = TextEditingController(text: widget.item.currentQuantity.toString());
  }

  @override
  void dispose() {
    _idealController.dispose();
    _currentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final l10n = AppLocalizations.of(context)!;
        return AlertDialog(
          title: Text(l10n.editPantryItem(widget.item.name)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _idealController,
                decoration: InputDecoration(
                  labelText: l10n.idealQuantity,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: Spacing.sm),
              TextField(
                controller: _currentController,
                decoration: InputDecoration(
                  labelText: l10n.currentQuantity,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () async {
                final ideal = int.tryParse(_idealController.text);
                final current = int.tryParse(_currentController.text);
                if (ideal != null && current != null) {
                  await ref.read(pantryItemsProvider.notifier).updateItem(
                        widget.item.copyWith(
                          idealQuantity: ideal.clamp(1, 999),
                          currentQuantity: current.clamp(0, 999),
                          updatedAt: DateTime.now(),
                        ),
                      );
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                }
              },
              child: Text(l10n.save),
            ),
          ],
        );
      },
    );
  }
}

class _QuantityIconButton extends StatelessWidget {
  const _QuantityIconButton({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: onPressed != null
          ? theme.colorScheme.secondaryContainer.withAlpha((0.5 * 255).toInt())
          : theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(
            icon,
            size: 18,
            color: onPressed != null
                ? theme.colorScheme.onSecondaryContainer
                : theme.colorScheme.onSurface.withAlpha((0.3 * 255).toInt()),
          ),
        ),
      ),
    );
  }
}
