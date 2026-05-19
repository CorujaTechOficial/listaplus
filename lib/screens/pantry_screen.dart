import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../theme/colors.dart';
import '../providers/pantry_items_provider.dart';
import '../providers/pantry_suggestions_provider.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/current_list_provider.dart';
import '../models/pantry_item.dart';
import '../widgets/empty_state.dart';
import '../widgets/add_pantry_item_dialog.dart';

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
          if (pantryAsync.valueOrNull?.isNotEmpty == true)
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
                          ? theme.colorScheme.tertiaryContainer.withValues(alpha: 0.15)
                          : theme.colorScheme.tertiaryContainer.withValues(alpha: 0.3),
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
                  ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: Spacing.xs, bottom: Spacing.md),
                    itemCount: items.length,
                    itemBuilder: (context, index) => _PantryItemTile(item: items[index]),
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
        onPressed: () => showDialog<void>(
          context: context,
          builder: (_) => const AddPantryItemDialog(),
        ),
        child: const Icon(Icons.add),
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
    final listName = await showDialog<String>(
      context: context,
      builder: (_) => AlertDialog(
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
              decoration: InputDecoration(
                labelText: l10n.listNameLabel,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, nameController.text.trim()),
            child: Text(l10n.create),
          ),
        ],
      ),
    );
    nameController.dispose();

    if (listName == null || listName.isEmpty) {
      return;
    }

    try {
      final newList = await ref.read(shoppingListsProvider.notifier).createList(listName);
      final itemsNotifier = ref.read(shoppingListItemsProvider(newList.id).notifier);
      for (final suggestion in suggestions) {
        await itemsNotifier.addItem(
          listId: newList.id,
          name: suggestion.name,
          quantity: suggestion.quantity,
          category: suggestion.category,
          unit: suggestion.unit,
          estimatedPrice: suggestion.estimatedPrice,
        );
      }
      await ref.read(currentListIdProvider.notifier).setCurrentList(newList.id);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.listCreated(newList.name, suggestions.length))),
        );
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.error(e.toString()))),
        );
      }
    }
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

    final Color barColor;
    if (progress >= 0.8) {
      barColor = Colors.green;
    } else if (progress >= 0.4) {
      barColor = Colors.orange;
    } else {
      barColor = Colors.red;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.xxs),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.categoryColors[item.category.label]?.withValues(alpha: isDark ? 0.2 : 0.15) ?? theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(RadiusTokens.sm),
                    ),
                    child: Icon(
                      AppColors.categoryIcons[item.category.label] ?? Icons.category,
                      size: 18,
                      color: AppColors.categoryColors[item.category.label] ?? theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (!item.trackStock)
                          Text(
                            l10n.noTracking,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                      ],
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert, size: 20),
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
              const SizedBox(height: Spacing.sm),
              if (item.trackStock)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 8,
                        backgroundColor: isDark
                            ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.2)
                            : theme.colorScheme.surfaceContainerHighest,
                        valueColor: AlwaysStoppedAnimation<Color>(barColor),
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    Row(
                      children: [
                        Text(
                          '${item.currentQuantity} / ${item.idealQuantity} ${item.unit.label}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontFeatures: [const FontFeature.tabularFigures()],
                          ),
                        ),
                        const Spacer(),
                        if (item.deficit > 0)
                          Text(
                            'Faltam ${item.deficit}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: barColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: Spacing.xs),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _QuantityIconButton(
                          icon: Icons.remove,
                          onPressed: item.currentQuantity <= 0
                              ? null
                              : () => ref.read(pantryItemsProvider.notifier).decrementCurrent(item.id),
                        ),
                        const SizedBox(width: Spacing.xs),
                        Text(
                          '${item.currentQuantity}',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontFeatures: [const FontFeature.tabularFigures()],
                          ),
                        ),
                        const SizedBox(width: Spacing.xs),
                        _QuantityIconButton(
                          icon: Icons.add,
                          onPressed: item.currentQuantity >= item.idealQuantity
                              ? null
                              : () => ref.read(pantryItemsProvider.notifier).incrementCurrent(item.id),
                        ),
                        const SizedBox(width: Spacing.sm),
                        TextButton.icon(
                          onPressed: item.currentQuantity <= 0
                              ? null
                              : () => ref.read(pantryItemsProvider.notifier).consumeItem(item.id),
                          icon: Icon(Icons.arrow_downward, size: 16, color: theme.colorScheme.error),
                          label: Text(
                            l10n.consumed,
                            style: TextStyle(color: theme.colorScheme.error),
                          ),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: Spacing.sm),
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
    final l10n = AppLocalizations.of(context)!;
    final idealController = TextEditingController(text: item.idealQuantity.toString());
    final currentController = TextEditingController(text: item.currentQuantity.toString());

    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.editPantryItem(item.name)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: idealController,
              decoration: InputDecoration(
                labelText: l10n.idealQuantity,
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: Spacing.sm),
            TextField(
              controller: currentController,
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
              final ideal = int.tryParse(idealController.text);
              final current = int.tryParse(currentController.text);
              if (ideal != null && current != null) {
                await ref.read(pantryItemsProvider.notifier).updateItem(
                  item.copyWith(
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
      ),
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
          ? theme.colorScheme.secondaryContainer.withValues(alpha: 0.5)
          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
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
                : theme.colorScheme.onSurface.withValues(alpha: 0.3),
          ),
        ),
      ),
    );
  }
}
