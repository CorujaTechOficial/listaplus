import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import '../../../models/shopping_item.dart';
import '../../../models/category_data.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class ShoppingItemTile extends ConsumerWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.selectionMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
  });

  final String listId;
  final ShoppingItem item;
  final bool selectionMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isPurchased = item.isPurchased;

    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final categoryMap = <String, CategoryData>{for (final c in categories) c.id: c};
    final cat = categoryMap[item.categoryId];
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    final tileContent = Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: selectionMode
            ? () => onSelectionChanged?.call(!isSelected)
            : () {
                unawaited(HapticFeedback.lightImpact());
                ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
              },
        onLongPress: selectionMode
            ? null
            : () {
                HapticFeedback.mediumImpact();
                onSelectionChanged?.call(true);
              },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              _CustomCheckbox(
                value: selectionMode ? isSelected : isPurchased,
                onChanged: selectionMode
                    ? (v) {
                        HapticFeedback.selectionClick();
                        onSelectionChanged?.call(v ?? false);
                      }
                    : (v) async {
                        if (v == true) {
                          unawaited(HapticFeedback.mediumImpact());
                        } else {
                          unawaited(HapticFeedback.lightImpact());
                        }
                        await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
                        if (v == true && context.mounted) {
                          _askToAddToPantry(context, ref);
                        }
                      },
                activeColor: isPurchased ? theme.colorScheme.primary : null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        decoration: !selectionMode && isPurchased ? TextDecoration.lineThrough : null,
                        color: !selectionMode && isPurchased
                            ? theme.colorScheme.onSurface.withAlpha((0.38 * 255).toInt())
                            : theme.colorScheme.onSurface,
                        fontWeight: isPurchased ? FontWeight.w400 : FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                    if (item.estimatedPrice != null || cat != null) ...[
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          if (cat != null) ...[
                            Text(
                              cat.name,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text('•', style: TextStyle(color: theme.colorScheme.outlineVariant, fontSize: 8)),
                            const SizedBox(width: 4),
                          ],
                          if (item.estimatedPrice != null)
                            Text(
                              formatCurrency(item.estimatedPrice! * item.quantity, currencyCode),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 16),
              if (!selectionMode)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _SmallIconButton(
                      icon: Icons.remove,
                      onPressed: () {
                        HapticFeedback.selectionClick();
                        ref.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(item.id);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${item.quantity}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontFeatures: [const FontFeature.tabularFigures()],
                        ),
                      ),
                    ),
                    _SmallIconButton(
                      icon: Icons.add,
                      onPressed: () {
                        HapticFeedback.selectionClick();
                        ref.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(item.id);
                      },
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.more_vert, size: 20),
                      onPressed: () => _showEditDialog(context, ref),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );

    if (selectionMode) {
      return tileContent;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        color: theme.colorScheme.errorContainer,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        child: Icon(Icons.delete_outline, color: theme.colorScheme.onErrorContainer),
      ),
      onDismissed: (direction) {
        HapticFeedback.mediumImpact();
        final removedItem = item;
        final notifier = ref.read(shoppingListItemsProvider(listId).notifier);
        notifier.removeItem(item.id);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.itemRemoved),
              action: SnackBarAction(
                label: l10n.undo,
                onPressed: () => notifier.restoreItem(removedItem),
              ),
            ),
          );
        }
      },
      child: tileContent,
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    showDialog<void>(
      context: context,
      builder: (_) => EditItemDialog(listId: listId, item: item),
    );
  }

  void _askToAddToPantry(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.addToPantryPrompt(item.name)),
        action: SnackBarAction(
          label: l10n.yes,
          onPressed: () {
            ref.read(pantryItemsProvider.notifier).addItem(
              name: item.name,
              idealQuantity: item.quantity,
              currentQuantity: item.quantity,
              categoryId: item.categoryId,
              unit: item.unit,
              estimatedPrice: item.estimatedPrice,
            );
          },
        ),
      ),
    );
  }
}

class _CustomCheckbox extends StatelessWidget {
  const _CustomCheckbox({required this.value, required this.onChanged, this.activeColor});
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}

class _SmallIconButton extends StatelessWidget {
  const _SmallIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outlineVariant, width: 0.5),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
      ),
    );
  }
}
