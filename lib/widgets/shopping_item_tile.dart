import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../theme/colors.dart';
import '../providers/shopping_list_provider.dart';
import '../models/shopping_item.dart';
import 'edit_item_dialog.dart';

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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isPurchased = item.isPurchased;

    final tileContent = Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: Spacing.xxs),
      child: Container(
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF1A1D24)
              : Colors.white,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(
            color: isPurchased
                ? theme.colorScheme.outlineVariant.withValues(alpha: 0.15)
                : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: isDark ? 0.5 : 1,
          ),
          boxShadow: isDark
              ? null
              : [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(Spacing.sm, Spacing.xs, Spacing.xs, Spacing.xs),
          child: Row(
            children: [
              _AnimatedCheckbox(
                value: selectionMode ? isSelected : isPurchased,
                onChanged: selectionMode
                    ? (v) => onSelectionChanged?.call(v ?? false)
                    : (_) {
                        HapticFeedback.lightImpact();
                        ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
                      },
                isPurchased: !selectionMode && isPurchased,
              ),
              const SizedBox(width: Spacing.xs),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        decoration: !selectionMode && isPurchased ? TextDecoration.lineThrough : null,
                        color: !selectionMode && isPurchased
                            ? theme.colorScheme.onSurface.withValues(alpha: 0.4)
                            : theme.colorScheme.onSurface,
                        fontWeight: !selectionMode && isPurchased ? FontWeight.w400 : FontWeight.w600,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    Row(
                      children: [
                        _QuantityControl(
                          quantity: item.quantity,
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
                        const SizedBox(width: Spacing.xxs),
                        _ItemMetaBadge(
                          label: item.category.label,
                          icon: AppColors.categoryIcons[item.category.label],
                          color: AppColors.categoryColors[item.category.label] ??
                              theme.colorScheme.tertiary,
                        ),
                        if (item.estimatedPrice != null) ...[
                          const SizedBox(width: Spacing.xxs),
                          _PriceBadge(price: item.estimatedPrice!),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit_outlined, size: 18, color: theme.colorScheme.onSurfaceVariant),
                onPressed: () => _showEditDialog(context, ref),
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ),
      ),
    );

    final tile = selectionMode ? tileContent : tileContent;

    if (selectionMode) {
      return tile;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: Spacing.xxs),
        decoration: BoxDecoration(
          color: theme.colorScheme.error,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: Spacing.lg),
        child: Icon(Icons.delete_outline, color: theme.colorScheme.onError, size: 22),
      ),
      onDismissed: (_) {
        HapticFeedback.mediumImpact();
        final removedItem = item;
        final notifier = ref.read(shoppingListItemsProvider(listId).notifier);
        notifier.removeItem(item.id);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Item removido'),
            action: SnackBarAction(
              label: 'Desfazer',
              onPressed: () => notifier.restoreItem(removedItem),
            ),
          ),
        );
      },
      child: tile,
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => EditItemDialog(listId: listId, item: item),
    );
  }
}

class _AnimatedCheckbox extends StatelessWidget {
  const _AnimatedCheckbox({
    required this.value,
    required this.onChanged,
    required this.isPurchased,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isPurchased;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Checkbox(
      value: value,
      onChanged: onChanged,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
      ),
      activeColor: isPurchased
          ? theme.colorScheme.primary
          : null,
      side: BorderSide(
        color: theme.colorScheme.outline.withValues(alpha: 0.5),
        width: 1.5,
      ),
    );
  }
}

class _QuantityControl extends StatelessWidget {
  const _QuantityControl({
    required this.quantity,
    required this.onDecrement,
    required this.onIncrement,
  });

  final int quantity;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: isDark
            ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.15)
            : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _PressableIcon(
            icon: Icons.remove,
            onTap: onDecrement,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.xxs),
            child: Text(
              '$quantity',
              style: theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
                fontFeatures: [const FontFeature.tabularFigures()],
              ),
            ),
          ),
          _PressableIcon(
            icon: Icons.add,
            onTap: onIncrement,
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
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.xxs),
        child: Icon(
          icon,
          size: 16,
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
            ? color.withValues(alpha: 0.15)
            : color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
        border: Border.all(
          color: color.withValues(alpha: isDark ? 0.25 : 0.2),
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
  const _PriceBadge({required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final primaryColor = theme.colorScheme.primary;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 3),
      decoration: BoxDecoration(
        color: isDark
            ? primaryColor.withValues(alpha: 0.15)
            : primaryColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
        border: Border.all(
          color: primaryColor.withValues(alpha: isDark ? 0.3 : 0.2),
          width: 0.5,
        ),
      ),
      child: Text(
        'R\$ ${price.toStringAsFixed(2)}',
        style: theme.textTheme.labelSmall?.copyWith(
          color: primaryColor,
          fontWeight: FontWeight.w700,
          fontFeatures: [const FontFeature.tabularFigures()],
        ),
      ),
    );
  }
}
// coverage:ignore-end
