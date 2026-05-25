import 'dart:async';

import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import '../../../models/shopping_item.dart';
import '../../../models/category_data.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

enum ShoppingItemViewMode {
  full,
  compact,
  market,
}

class ShoppingItemTile extends ConsumerWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.viewMode = ShoppingItemViewMode.full,
    this.selectionMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
  });

  final String listId;
  final ShoppingItem item;
  final ShoppingItemViewMode viewMode;
  final bool selectionMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isPurchased = item.isPurchased;
    final isCompact = viewMode == ShoppingItemViewMode.compact;
    final isMarket = viewMode == ShoppingItemViewMode.market;

    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final categoryMap = <String, CategoryData>{for (final c in categories) c.id: c};
    final cat = categoryMap[item.categoryId];

    final tileContent = InkWell(
      onTap: selectionMode
          ? () => onSelectionChanged?.call(!isSelected)
          : (isCompact || isMarket)
              ? () {
                  unawaited(HapticFeedback.lightImpact());
                  ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
                }
              : null,
      onLongPress: selectionMode
          ? null
          : () {
              HapticFeedback.mediumImpact();
              onSelectionChanged?.call(true);
            },
      borderRadius: BorderRadius.circular(RadiusTokens.md),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isCompact ? 0 : Spacing.xs,
          vertical: isCompact ? 2 : Spacing.xxs,
        ),
        child: AnimatedContainer(
          duration: DurationTokens.fast,
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: isCompact
                ? Colors.transparent
                : (isDark ? const Color(0xFF1A1D24) : Colors.white),
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            border: (isCompact || isMarket)
                ? null
                : Border.all(
                    color: isPurchased
                        ? theme.colorScheme.outlineVariant.withAlpha((0.15 * 255).toInt())
                        : theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
                    width: isDark ? 0.5 : 1,
                  ),
            boxShadow: (isDark || isCompact || isMarket)
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha((0.04 * 255).toInt()),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              isCompact ? 0 : Spacing.sm,
              isCompact ? 2 : Spacing.xs,
              isCompact ? 0 : Spacing.xs,
              isCompact ? 2 : Spacing.xs,
            ),
            child: Row(
              children: [
                _AnimatedCheckbox(
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
                          if (v == true && context.mounted && !isCompact && !isMarket) {
                            _askToAddToPantry(context, ref);
                          }
                        },
                  isPurchased: !selectionMode && isPurchased,
                  size: isCompact ? 18 : 24,
                ),
                SizedBox(width: isCompact ? Spacing.xs : Spacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        item.name,
                        style: (isCompact ? theme.textTheme.bodyMedium : theme.textTheme.titleMedium)?.copyWith(
                          decoration: !selectionMode && isPurchased ? TextDecoration.lineThrough : null,
                          color: !selectionMode && isPurchased
                              ? theme.colorScheme.onSurface.withAlpha((0.5 * 255).toInt())
                              : theme.colorScheme.onSurface,
                          fontWeight: (isCompact || isPurchased) ? FontWeight.w400 : FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      if (!isCompact) ...[
                        const SizedBox(height: Spacing.xxs),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _QuantityControl(
                                quantity: item.quantity,
                                isMarket: isMarket,
                                onDecrement: () {
                                  HapticFeedback.selectionClick();
                                  ref.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(item.id);
                                },
                                onIncrement: () {
                                  HapticFeedback.selectionClick();
                                  ref.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(item.id);
                                },
                              ),
                              const SizedBox(width: Spacing.xs),
                              _ItemMetaBadge(
                                label: item.unit.label,
                                color: theme.colorScheme.secondary,
                              ),
                              if (!isMarket) ...[
                                const SizedBox(width: Spacing.xxs),
                                _ItemMetaBadge(
                                  label: cat?.name ?? item.categoryId,
                                  icon: cat?.icon,
                                  color: cat?.colorValue ?? theme.colorScheme.tertiary,
                                ),
                              ],
                              if (item.estimatedPrice != null) ...[
                                const SizedBox(width: Spacing.xxs),
                                _PriceBadge(
                                  price: item.estimatedPrice!,
                                  previousPrice: ref.watch(priceHistoryProvider)[item.name.trim().toLowerCase()],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (isCompact)
                  Text(
                    '${item.quantity} ${item.unit.label}',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                if (!isCompact)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit_outlined, size: isMarket ? 20 : 18, color: theme.colorScheme.onSurfaceVariant),
                        onPressed: () => _showEditDialog(context, ref),
                        visualDensity: VisualDensity.comfortable,
                        padding: const EdgeInsets.all(Spacing.xs),
                        constraints: const BoxConstraints(minWidth: 44, minHeight: 44),
                      ),
                      if (isMarket)
                        IconButton(
                          icon: const Icon(Icons.delete_outline, size: 20),
                          onPressed: () {
                            ref.read(shoppingListItemsProvider(listId).notifier).removeItem(item.id);
                          },
                          visualDensity: VisualDensity.comfortable,
                          padding: const EdgeInsets.all(Spacing.xs),
                          constraints: const BoxConstraints(minWidth: 44, minHeight: 44),
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );

    if (selectionMode || isCompact) {
      return tileContent;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      direction: isPurchased ? DismissDirection.endToStart : DismissDirection.horizontal,
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          await HapticFeedback.mediumImpact();
          await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
          return false; // Don't actually dismiss the widget
        }
        return true;
      },
      background: Container(
        margin: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: Spacing.xxs),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: Spacing.lg),
        child: Icon(
          isPurchased ? Icons.remove_done : Icons.done_all,
          color: theme.colorScheme.onPrimary,
          size: 22,
        ),
      ),
      secondaryBackground: Container(
        margin: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: Spacing.xxs),
        decoration: BoxDecoration(
          color: theme.colorScheme.error,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: Spacing.lg),
        child: Icon(Icons.delete_outline, color: theme.colorScheme.onError, size: 22),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
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

class _AnimatedCheckbox extends StatelessWidget {
  const _AnimatedCheckbox({
    required this.value,
    required this.onChanged,
    required this.isPurchased,
    this.size = 24,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isPurchased;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 44,
      height: 44,
      child: Center(
        child: SizedBox(
          width: size,
          height: size,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(RadiusTokens.xxs),
            ),
            activeColor: isPurchased
                ? theme.colorScheme.primary
                : null,
            side: BorderSide(
              color: theme.colorScheme.outline.withAlpha((0.5 * 255).toInt()),
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}

class _QuantityControl extends StatelessWidget {
  const _QuantityControl({
    required this.quantity,
    required this.onDecrement,
    required this.onIncrement,
    this.isMarket = false,
  });

  final int quantity;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final bool isMarket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      height: isMarket ? 36 : 28,
      decoration: BoxDecoration(
        color: isDark
            ? theme.colorScheme.surfaceContainerHighest.withAlpha((0.15 * 255).toInt())
            : theme.colorScheme.surfaceContainerHighest.withAlpha((0.6 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha((0.2 * 255).toInt()),
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _PressableIcon(
            icon: Icons.remove,
            onTap: onDecrement,
            isMarket: isMarket,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: isMarket ? Spacing.xs : Spacing.xxs),
            child: Text(
              '$quantity',
              style: (isMarket ? theme.textTheme.bodyMedium : theme.textTheme.labelLarge)?.copyWith(
                fontWeight: FontWeight.w700,
                fontFeatures: [const FontFeature.tabularFigures()],
              ),
            ),
          ),
          _PressableIcon(
            icon: Icons.add,
            onTap: onIncrement,
            isMarket: isMarket,
          ),
        ],
      ),
    );
  }
}

class _PressableIcon extends StatelessWidget {
  const _PressableIcon({
    required this.icon,
    required this.onTap,
    this.isMarket = false,
  });

  final IconData icon;
  final VoidCallback onTap;
  final bool isMarket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
      child: Container(
        width: isMarket ? 36 : 28,
        height: isMarket ? 36 : 28,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: isMarket ? 20 : 16,
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _ItemMetaBadge extends StatelessWidget {
  const _ItemMetaBadge({
    required this.label,
    this.icon,
    required this.color,
  });

  final String label;
  final IconData? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 3),
      decoration: BoxDecoration(
        color: isDark
            ? color.withAlpha((0.15 * 255).toInt())
            : color.withAlpha((0.1 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
        border: Border.all(
          color: color.withAlpha(((isDark ? 0.25 : 0.2) * 255).toInt()),
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 11, color: color),
            const SizedBox(width: 3),
          ],
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceBadge extends StatelessWidget {
  const _PriceBadge({required this.price, this.previousPrice});

  final double price;
  final double? previousPrice;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final primaryColor = theme.colorScheme.primary;
    
    Color badgeColor = primaryColor;
    IconData? trendIcon;
    
    if (previousPrice != null) {
      if (price > previousPrice!) {
        badgeColor = theme.colorScheme.error;
        trendIcon = Icons.trending_up;
      } else if (price < previousPrice!) {
        badgeColor = Colors.green;
        trendIcon = Icons.trending_down;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 3),
      decoration: BoxDecoration(
        color: isDark
            ? badgeColor.withAlpha((0.15 * 255).toInt())
            : badgeColor.withAlpha((0.08 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
        border: Border.all(
          color: badgeColor.withAlpha(((isDark ? 0.3 : 0.2) * 255).toInt()),
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trendIcon != null) ...[
            Icon(trendIcon, size: 10, color: badgeColor),
            const SizedBox(width: 2),
          ],
          Text(
            'R\$ ${price.toStringAsFixed(2)}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: badgeColor,
              fontWeight: FontWeight.w700,
              fontFeatures: [const FontFeature.tabularFigures()],
            ),
          ),
        ],
      ),
    );
  }
}
// coverage:ignore-end
