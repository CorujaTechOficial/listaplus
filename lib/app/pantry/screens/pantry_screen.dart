import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/domain/entities/category_data.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/pantry/widgets/add_pantry_item_dialog.dart';
import 'package:collection/collection.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () => AccountMenuSheet.show(context),
        ),
        title: Text(l10n.pantryAppBar),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => _shareApp(context),
            tooltip: l10n.shareApp,
          ),
          if (pantryAsync.value?.isNotEmpty == true)
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: l10n.generateShoppingList,
              onPressed: () => _generateShoppingList(context, ref),
            ),
        ],
      ),
      body: SafeArea(
        child: pantryAsync.when(
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

            final deficitItems = items.where((i) => i.trackStock && i.deficit > 0).toList();
            
            // Group items by category
            final categoriesAsync = ref.watch(categoriesProvider);
            final cats = categoriesAsync.value ?? <CategoryData>[];
            final categoriesMap = {for (final cat in cats) cat.id: cat};
            
            final groupedItems = groupBy(items, (PantryItem i) => i.categoryId);
            final sortedCategoryIds = groupedItems.keys.toList()
              ..sort((a, b) {
                final catA = categoriesMap[a];
                final catB = categoriesMap[b];
                if (catA == null) {
                  return 1;
                }
                if (catB == null) {
                  return -1;
                }
                return catA.name.compareTo(catB.name);
              });

            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(pantryItemsProvider);
                await ref.read(pantryItemsProvider.future);
              },
              child: CustomScrollView(
                slivers: [
                  if (deficitItems.isNotEmpty)
                    SliverToBoxAdapter(
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, Spacing.xs),
                        padding: const EdgeInsets.all(Spacing.sm),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.tertiaryContainer.withAlpha((isDark ? 0.15 : 0.3 * 255).toInt()),
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          border: Border.all(
                            color: theme.colorScheme.tertiary.withAlpha((0.2 * 255).toInt()),
                          ),
                        ),
                        child: InkWell(
                          onTap: () => _generateShoppingList(context, ref),
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(Spacing.xxs),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.tertiary,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.shopping_cart_outlined, size: 16, color: theme.colorScheme.onTertiary),
                              ),
                              const SizedBox(width: Spacing.sm),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      l10n.itemsNeedPurchase(deficitItems.length),
                                      style: theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: theme.colorScheme.onTertiaryContainer,
                                      ),
                                    ),
                                    Text(
                                      l10n.generateShoppingList,
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: theme.colorScheme.onTertiaryContainer.withAlpha((0.8 * 255).toInt()),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.chevron_right, color: theme.colorScheme.tertiary),
                            ],
                          ),
                        ),
                      ).animate().slideY(
                        begin: -0.2,
                        end: 0,
                        duration: DurationTokens.normal,
                        curve: Curves.easeOutBack,
                      ).fadeIn(duration: DurationTokens.fast),
                    ),
                  
                  for (final catId in sortedCategoryIds) ...[
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, Spacing.xs),
                        child: Row(
                          children: [
                            Icon(
                              categoriesMap[catId]?.icon ?? Icons.category_outlined,
                              size: 16,
                              color: categoriesMap[catId]?.colorValue ?? theme.colorScheme.primary,
                            ),
                            const SizedBox(width: Spacing.xs),
                            Text(
                              categoriesMap[catId]?.name ?? l10n.catOthers,
                              style: theme.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSurfaceVariant,
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: Spacing.xs),
                            Expanded(child: Divider(color: theme.colorScheme.outlineVariant, thickness: 0.5)),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final categoryItems = groupedItems[catId]!;
                          return _PantryItemTile(item: categoryItems[index]).animate().fadeIn(
                            duration: DurationTokens.fast,
                            delay: Duration(milliseconds: index * 30),
                          ).slideX(
                            begin: 0.05,
                            end: 0,
                            duration: DurationTokens.fast,
                            delay: Duration(milliseconds: index * 30),
                          );
                        },
                        childCount: groupedItems[catId]!.length,
                      ),
                    ),
                  ],
                  const SliverPadding(padding: EdgeInsets.only(bottom: Spacing.xxl + Spacing.md)),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
        ),
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

  void _shareApp(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(ShareParams(
      text: l10n.shareReferralText('https://kipilist.com/invite'),
      subject: l10n.shareReferralSubject,
    ));
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
                          
                          final newItems = suggestions.map((suggestion) => ShoppingItem(
                            shoppingListId: newList.id,
                            name: suggestion.name,
                            quantity: suggestion.quantity,
                            categoryId: suggestion.categoryId,
                            unit: suggestion.unit,
                            estimatedPrice: suggestion.estimatedPrice,
                          )).toList();
                          
                          await itemsNotifier.addItems(newItems);
                          
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
    final progress = item.idealQuantity > 0
        ? (item.currentQuantity / item.idealQuantity).clamp(0.0, 1.0)
        : 0.0;
    
    final Color barColor;
    if (progress >= 0.8) {
      barColor = Colors.green;
    } else if (progress >= 0.3) {
      barColor = Colors.orange;
    } else {
      barColor = theme.colorScheme.error;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.xxs),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(
            color: item.deficit > 0 
              ? barColor.withAlpha((0.3 * 255).toInt())
              : theme.colorScheme.outlineVariant.withAlpha((0.5 * 255).toInt()),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((0.03 * 255).toInt()),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: InkWell(
          onTap: () => _showEditDialog(context, ref),
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              decoration: item.currentQuantity == 0 && item.trackStock 
                                ? TextDecoration.none 
                                : null,
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
                    if (item.trackStock && item.deficit > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 2),
                        decoration: BoxDecoration(
                          color: barColor.withAlpha((0.1 * 255).toInt()),
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                        ),
                        child: Text(
                          'Faltam ${item.deficit}${item.unit.label}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: barColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SizedBox(width: Spacing.xs),
                    _ItemMenuButton(item: item),
                  ],
                ),
                if (item.trackStock) ...[
                  const SizedBox(height: Spacing.sm),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${item.currentQuantity} / ${item.idealQuantity} ${item.unit.label}',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                Text(
                                  '${(progress * 100).toInt()}%',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: barColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(RadiusTokens.full),
                              child: LinearProgressIndicator(
                                value: progress,
                                minHeight: 8,
                                backgroundColor: theme.colorScheme.surfaceContainerHighest,
                                valueColor: AlwaysStoppedAnimation<Color>(barColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: Spacing.md),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _QuantityControl(
                            icon: Icons.remove,
                            onPressed: item.currentQuantity <= 0
                                ? null
                                : () async {
                                    await HapticFeedback.lightImpact();
                                    await ref.read(pantryItemsProvider.notifier).decrementCurrent(item.id);
                                  },
                          ),
                          const SizedBox(width: Spacing.sm),
                          _QuantityControl(
                            icon: Icons.add,
                            isPrimary: true,
                            onPressed: () async {
                              await HapticFeedback.lightImpact();
                              await ref.read(pantryItemsProvider.notifier).incrementCurrent(item.id);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ],
            ),
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

class _ItemMenuButton extends ConsumerWidget {
  const _ItemMenuButton({required this.item});
  final PantryItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert, size: 20),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.md)),
      itemBuilder: (_) => [
        PopupMenuItem(
          value: 'edit', 
          child: Row(
            children: [
              const Icon(Icons.edit_outlined, size: 18),
              const SizedBox(width: Spacing.sm),
              Text(l10n.edit),
            ],
          ),
        ),
        if (item.trackStock && item.deficit > 0)
          PopupMenuItem(
            value: 'restock', 
            child: Row(
              children: [
                const Icon(Icons.inventory_outlined, size: 18),
                const SizedBox(width: Spacing.sm),
                Text(l10n.markAsPurchased),
              ],
            ),
          ),
        const PopupMenuDivider(),
        PopupMenuItem(
          value: 'delete', 
          child: Row(
            children: [
              Icon(Icons.delete_outline, size: 18, color: Theme.of(context).colorScheme.error),
              const SizedBox(width: Spacing.sm),
              Text(l10n.remove, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
          ),
        ),
      ],
      onSelected: (value) async {
        if (value == 'edit') {
          await showDialog<void>(
            context: context,
            builder: (_) => _EditPantryItemDialog(item: item),
          );
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
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(l10n.restocked(item.name, item.idealQuantity, item.unit.label)),
              ),
            );
          }
        }
      },
    );
  }
}

class _QuantityControl extends StatelessWidget {
  const _QuantityControl({
    required this.icon,
    this.onPressed,
    this.isPrimary = false,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Material(
      color: onPressed == null
          ? theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt())
          : isPrimary 
              ? theme.colorScheme.primaryContainer 
              : theme.colorScheme.secondaryContainer.withAlpha((0.5 * 255).toInt()),
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xs),
          child: Icon(
            icon,
            size: 20,
            color: onPressed == null
                ? theme.colorScheme.onSurface.withAlpha((0.3 * 255).toInt())
                : isPrimary 
                    ? theme.colorScheme.onPrimaryContainer
                    : theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ),
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
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: Spacing.sm),
              TextField(
                controller: _currentController,
                decoration: InputDecoration(
                  labelText: l10n.currentQuantity,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
