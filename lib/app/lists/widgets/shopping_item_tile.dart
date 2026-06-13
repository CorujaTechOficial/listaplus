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
import 'package:shopping_list/core/theme/tokens.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';

const double _kQuantityControlsBreakpoint = 380;

class ShoppingItemTile extends ConsumerWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.selectionMode = false,
    this.isShoppingMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
    this.dragHandleIndex,
  });

  final String listId;
  final ShoppingItem item;
  final bool selectionMode;
  final bool isShoppingMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;
  final int? dragHandleIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isPurchased = item.isPurchased;

    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final categoryMap = <String, CategoryData>{for (final c in categories) c.id: c};
    final cat = categoryMap[item.categoryId];
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    final tileContent = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xxs),
          child: Material(
            elevation: isSelected ? 2 : 0,
            surfaceTintColor: theme.colorScheme.surfaceTint,
            color: isSelected
                ? theme.colorScheme.primaryContainer.withAlpha(isDark ? 80 : 180)
                : (isDark ? theme.colorScheme.surfaceContainerLow : theme.colorScheme.surface),
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: selectionMode
                  ? () => onSelectionChanged?.call(!isSelected)
                  : () async {
                      if (isPurchased) {
                        unawaited(HapticFeedback.lightImpact());
                      } else {
                        unawaited(HapticFeedback.mediumImpact());
                      }
                      await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
                      if (isShoppingMode && !isPurchased && context.mounted) {
                        _askToAddToPantry(context, ref);
                      }
                    },
              onLongPress: selectionMode
                  ? null
                  : () {
                      HapticFeedback.mediumImpact();
                      onSelectionChanged?.call(true);
                    },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Spacing.sm,
                  vertical: isShoppingMode ? Spacing.md : Spacing.sm,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: isSelected || (!selectionMode && isPurchased),
                      onChanged: selectionMode
                          ? (v) {
                              HapticFeedback.selectionClick();
                              onSelectionChanged?.call(v ?? false);
                            }
                          : (v) async {
                              if (isPurchased) {
                                unawaited(HapticFeedback.lightImpact());
                              } else {
                                unawaited(HapticFeedback.mediumImpact());
                              }
                              await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
                              if (isShoppingMode && !isPurchased && context.mounted) {
                                _askToAddToPantry(context, ref);
                              }
                            },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.xxs)),
                    ),
                    const SizedBox(width: Spacing.xs),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.name,
                            style: (isShoppingMode ? theme.textTheme.titleLarge : theme.textTheme.titleMedium)?.copyWith(
                              decoration: !selectionMode && isPurchased ? TextDecoration.lineThrough : null,
                              color: !selectionMode && isPurchased
                                  ? theme.colorScheme.onSurface.withAlpha((0.38 * 255).toInt())
                                  : theme.colorScheme.onSurface,
                              fontWeight: isPurchased ? FontWeight.w500 : FontWeight.w700,
                              height: 1.1,
                            ),
                          ),
                          if (item.estimatedPrice != null || cat != null || (!isShoppingMode && !selectionMode)) ...[
                            const SizedBox(height: Spacing.xxs),
                            Row(
                              children: [
                                if (cat != null) ...[
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: (isPurchased ? theme.colorScheme.outlineVariant : theme.colorScheme.secondaryContainer)
                                          .withAlpha(isDark ? 100 : 150),
                                      borderRadius: BorderRadius.circular(RadiusTokens.xs),
                                    ),
                                    child: Text(
                                      cat.name,
                                      style: theme.textTheme.labelSmall?.copyWith(
                                        color: isPurchased
                                            ? theme.colorScheme.onSurfaceVariant
                                            : theme.colorScheme.onSecondaryContainer,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 6), // 6px — unique value
                                ],
                                if (!isShoppingMode && !selectionMode)
                                  _InlinePriceField(item: item, listId: listId)
                                else if (item.estimatedPrice != null)
                                  Text(
                                    formatCurrency(item.estimatedPrice! * item.quantity, currencyCode),
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: isPurchased ? theme.colorScheme.outline : theme.colorScheme.primary,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(width: Spacing.xs),
                    if (!selectionMode && !isShoppingMode)
                      Builder(
                        builder: (context) {
                          final screenWidth = MediaQuery.sizeOf(context).width;
                          final isSmallScreen = screenWidth < _kQuantityControlsBreakpoint;
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!isSmallScreen)
                                _SmallIconButton(
                                  icon: Icons.remove,
                                  onPressed: () {
                                    HapticFeedback.selectionClick();
                                    ref.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(item.id);
                                  },
                                ),
                              _InlineQtyField(item: item, listId: listId),
                              if (!isSmallScreen)
                                _SmallIconButton(
                                  icon: Icons.add,
                                  onPressed: () {
                                    HapticFeedback.selectionClick();
                                    ref.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(item.id);
                                  },
                                ),
                              const SizedBox(width: Spacing.xxs),
                              IconButton(
                                icon: const Icon(Icons.more_vert, size: 20),
                                onPressed: () => _showEditDialog(context, ref),
                                visualDensity: VisualDensity.compact,
                              ),
                              if (dragHandleIndex != null)
                                ReorderableDragStartListener(
                                  index: dragHandleIndex!,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: Icon(
                                      Icons.drag_handle,
                                      size: 20,
                                      color: theme.colorScheme.onSurfaceVariant.withAlpha(160),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    if (!selectionMode && isShoppingMode)
                      Text(
                        '${item.quantity}${item.unit.label}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: isPurchased ? theme.colorScheme.outline : theme.colorScheme.onSurface,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (!selectionMode)
          Positioned(
            right: Spacing.md,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete_outline,
                size: 18,
                color: theme.colorScheme.error.withAlpha(80),
              ),
            ),
          ),
      ],
    );

    if (selectionMode) {
      return tileContent;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xxs),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: Spacing.lg),
        child: Icon(Icons.delete_outline, color: theme.colorScheme.onErrorContainer),
      ),
      onDismissed: (direction) {
        HapticFeedback.mediumImpact();
        final removedItem = item;
        final notifier = ref.read(shoppingListItemsProvider(listId).notifier);
        notifier.removeItem(item.id);
        showUniqueSnackBar(
          context,
          content: Text(l10n.itemRemoved),
          action: SnackBarAction(
            label: l10n.undo,
            onPressed: () => notifier.restoreItem(removedItem),
          ),
        );
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

class _SmallIconButton extends StatelessWidget {
  const _SmallIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 44,
      height: 44,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(RadiusTokens.xl), // 22 -> 20 (xl)
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(Spacing.xs), // 6 -> 8 (xs)
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withAlpha(100),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
          ),
        ),
      ),
    );
  }
}

class _InlinePriceField extends ConsumerStatefulWidget {
  const _InlinePriceField({required this.item, required this.listId});

  final ShoppingItem item;
  final String listId;

  @override
  ConsumerState<_InlinePriceField> createState() => _InlinePriceFieldState();
}

class _InlinePriceFieldState extends ConsumerState<_InlinePriceField> {
  bool _editing = false;
  late TextEditingController _ctrl;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final price = widget.item.estimatedPrice;
    _ctrl = TextEditingController(
      text: price != null ? price.toStringAsFixed(2) : '',
    );
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _editing) {
        _save();
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final text = _ctrl.text.trim().replaceAll(',', '.');
    final newPrice = double.tryParse(text);
    setState(() => _editing = false);
    if (newPrice == widget.item.estimatedPrice) {
      return;
    }
    final updated = widget.item.copyWith(
      estimatedPrice: (newPrice != null && newPrice > 0) ? newPrice : null,
      updatedAt: DateTime.now(),
    );
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .updateItem(updated);
    } on Exception catch (e) {
      _ctrl.text = widget.item.estimatedPrice?.toStringAsFixed(2) ?? '';
      if (mounted) {
        showUniqueSnackBar(
          context,
          content: Text(
            AppLocalizations.of(context)!.errorGeneric(e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    if (_editing) {
      return SizedBox(
        width: 72,
        height: Spacing.lg,
        child: TextField(
          controller: _ctrl,
          focusNode: _focusNode,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => _save(),
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: Spacing.xxs, vertical: Spacing.xxs),
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    final price = widget.item.estimatedPrice;
    return GestureDetector(
      onTap: () {
        setState(() => _editing = true);
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => _focusNode.requestFocus(),
        );
      },
      child: price != null
          ? Text(
              formatCurrency(price * widget.item.quantity, currencyCode),
              style: theme.textTheme.labelSmall?.copyWith(
                color: widget.item.isPurchased
                    ? theme.colorScheme.outline
                    : theme.colorScheme.primary,
                fontWeight: FontWeight.w800,
              ),
            )
          : Icon(
              Icons.add_circle_outline,
              size: 14,
              color: theme.colorScheme.outlineVariant,
            ),
    );
  }
}

class _InlineQtyField extends ConsumerStatefulWidget {
  const _InlineQtyField({required this.item, required this.listId});

  final ShoppingItem item;
  final String listId;

  @override
  ConsumerState<_InlineQtyField> createState() => _InlineQtyFieldState();
}

class _InlineQtyFieldState extends ConsumerState<_InlineQtyField> {
  bool _editing = false;
  late TextEditingController _ctrl;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _ctrl = TextEditingController(text: '${widget.item.quantity}');
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _editing) {
        _save();
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final newQty = int.tryParse(_ctrl.text.trim());
    setState(() => _editing = false);
    if (newQty == null || newQty < 1 || newQty == widget.item.quantity) {
      _ctrl.text = '${widget.item.quantity}';
      return;
    }
    final updated = widget.item.copyWith(
      quantity: newQty,
      updatedAt: DateTime.now(),
    );
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .updateItem(updated);
    } on Exception catch (e) {
      _ctrl.text = '${widget.item.quantity}';
      if (mounted) {
        showUniqueSnackBar(
          context,
          content: Text(
            AppLocalizations.of(context)!.errorGeneric(e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallScreen = screenWidth < _kQuantityControlsBreakpoint;

    if (_editing) {
      return SizedBox(
        width: isSmallScreen ? 36 : Spacing.xl,
        height: Spacing.lg,
        child: TextField(
          controller: _ctrl,
          focusNode: _focusNode,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => _save(),
          style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w800),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: Spacing.xxs),
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        _ctrl.text = '${widget.item.quantity}';
        setState(() => _editing = true);
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => _focusNode.requestFocus(),
        );
      },
      child: SizedBox(
        width: isSmallScreen ? null : Spacing.xl,
        child: Center(
          child: Text(
            '${widget.item.quantity}',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w800,
              fontFeatures: isSmallScreen
                  ? null
                  : [const FontFeature.tabularFigures()],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedEntryWrapper extends StatefulWidget {
  const AnimatedEntryWrapper({super.key, required this.child});
  final Widget child;

  @override
  State<AnimatedEntryWrapper> createState() => _AnimatedEntryWrapperState();
}

class _AnimatedEntryWrapperState extends State<AnimatedEntryWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _fade;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.12),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fade,
      child: SlideTransition(
        position: _slide,
        child: widget.child,
      ),
    );
  }
}
