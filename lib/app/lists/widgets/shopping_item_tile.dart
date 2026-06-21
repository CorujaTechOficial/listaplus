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
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';

const double _kQuantityControlsBreakpoint = 380;

class ShoppingItemTile extends ConsumerStatefulWidget {
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
  ConsumerState<ShoppingItemTile> createState() => _ShoppingItemTileState();
}

class _ShoppingItemTileState extends ConsumerState<ShoppingItemTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _exitController;
  late Animation<double> _sizeAnim;
  late Animation<double> _opacityAnim;
  bool _exiting = false;

  @override
  void initState() {
    super.initState();
    _exitController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _sizeAnim = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _exitController, curve: Curves.easeIn));
    _opacityAnim = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _exitController, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _exitController.dispose();
    super.dispose();
  }

  Future<void> _handleToggle() async {
    if (widget.item.isPurchased) {
      unawaited(HapticFeedback.lightImpact());
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .togglePurchased(widget.item.id);
    } else {
      if (_exiting) return;
      setState(() => _exiting = true);
      unawaited(HapticFeedback.mediumImpact());
      await _exitController.forward();
      if (!mounted) return;
      try {
        await ref
            .read(shoppingListItemsProvider(widget.listId).notifier)
            .togglePurchased(widget.item.id);
        if (widget.isShoppingMode && mounted) {
          _askToAddToPantry();
        }
      } on Exception {
        if (mounted) {
          _exitController.reset();
          setState(() => _exiting = false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isPurchased = widget.item.isPurchased;

    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final categoryMap = <String, CategoryData>{
      for (final c in categories) c.id: c,
    };
    final cat = categoryMap[widget.item.categoryId];
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    final tileContent = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.sm,
            vertical: Spacing.xxs,
          ),
          child: Material(
            elevation: widget.isSelected ? 2 : 0,
            surfaceTintColor: theme.colorScheme.surfaceTint,
            color:
                widget.isSelected
                    ? theme.colorScheme.primaryContainer.withAlpha(
                      isDark ? 80 : 180,
                    )
                    : (isDark
                        ? theme.colorScheme.surfaceContainerLow
                        : theme.colorScheme.surface),
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap:
                  widget.selectionMode
                      ? () =>
                          widget.onSelectionChanged?.call(!widget.isSelected)
                      : _handleToggle,
              onLongPress:
                  widget.selectionMode
                      ? null
                      : () {
                        HapticFeedback.mediumImpact();
                        widget.onSelectionChanged?.call(true);
                      },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Spacing.sm,
                  vertical: widget.isShoppingMode ? Spacing.md : Spacing.sm,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value:
                          widget.isSelected ||
                          (!widget.selectionMode && isPurchased),
                      onChanged:
                          widget.selectionMode
                              ? (v) {
                                HapticFeedback.selectionClick();
                                widget.onSelectionChanged?.call(v ?? false);
                              }
                              : (_) => _handleToggle(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                      ),
                    ),
                    const SizedBox(width: Spacing.xs),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.item.name,
                            style: (widget.isShoppingMode
                                    ? theme.textTheme.titleLarge
                                    : theme.textTheme.titleMedium)
                                ?.copyWith(
                                  decoration:
                                      !widget.selectionMode && isPurchased
                                          ? TextDecoration.lineThrough
                                          : null,
                                  color:
                                      !widget.selectionMode && isPurchased
                                          ? theme.colorScheme.onSurface
                                              .withAlpha((0.38 * 255).toInt())
                                          : theme.colorScheme.onSurface,
                                  fontWeight:
                                      isPurchased
                                          ? FontWeight.w500
                                          : FontWeight.w700,
                                  height: 1.1,
                                ),
                          ),
                          if (widget.item.estimatedPrice != null ||
                              cat != null ||
                              (!widget.isShoppingMode &&
                                  !widget.selectionMode)) ...[
                            const SizedBox(height: Spacing.xxs),
                            Row(
                              children: [
                                if (cat != null) ...[
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: (isPurchased
                                              ? theme.colorScheme.outlineVariant
                                              : theme
                                                  .colorScheme
                                                  .secondaryContainer)
                                          .withAlpha(isDark ? 100 : 150),
                                      borderRadius: BorderRadius.circular(
                                        RadiusTokens.xs,
                                      ),
                                    ),
                                    child: Text(
                                      cat.localizedName(l10n),
                                      style: theme.textTheme.labelSmall
                                          ?.copyWith(
                                            color:
                                                isPurchased
                                                    ? theme
                                                        .colorScheme
                                                        .onSurfaceVariant
                                                    : theme
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ), // 6px — unique value
                                ],
                                if (!widget.isShoppingMode &&
                                    !widget.selectionMode)
                                  _InlinePriceField(
                                    item: widget.item,
                                    listId: widget.listId,
                                  )
                                else if (widget.item.estimatedPrice != null)
                                  Text(
                                    formatCurrency(
                                      widget.item.estimatedPrice! *
                                          widget.item.quantity,
                                      currencyCode,
                                    ),
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color:
                                          isPurchased
                                              ? theme.colorScheme.outline
                                              : theme.colorScheme.primary,
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
                    if (!widget.selectionMode && !widget.isShoppingMode)
                      Builder(
                        builder: (context) {
                          final screenWidth = MediaQuery.sizeOf(context).width;
                          final isSmallScreen =
                              screenWidth < _kQuantityControlsBreakpoint;
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!isSmallScreen)
                                _SmallIconButton(
                                  icon: Icons.remove,
                                  onPressed: () {
                                    HapticFeedback.selectionClick();
                                    ref
                                        .read(
                                          shoppingListItemsProvider(
                                            widget.listId,
                                          ).notifier,
                                        )
                                        .decrementQuantity(widget.item.id);
                                  },
                                ),
                              _InlineQtyField(
                                item: widget.item,
                                listId: widget.listId,
                              ),
                              if (!isSmallScreen)
                                _SmallIconButton(
                                  icon: Icons.add,
                                  onPressed: () {
                                    HapticFeedback.selectionClick();
                                    ref
                                        .read(
                                          shoppingListItemsProvider(
                                            widget.listId,
                                          ).notifier,
                                        )
                                        .incrementQuantity(widget.item.id);
                                  },
                                ),
                              const SizedBox(width: Spacing.xxs),
                              IconButton(
                                icon: const Icon(Icons.more_vert, size: 20),
                                onPressed: () => _showEditDialog(context),
                                visualDensity: VisualDensity.compact,
                              ),
                              if (widget.dragHandleIndex != null)
                                ReorderableDragStartListener(
                                  index: widget.dragHandleIndex!,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Spacing.xxs,
                                    ),
                                    child: Icon(
                                      Icons.drag_handle,
                                      size: 20,
                                      color: theme.colorScheme.onSurfaceVariant
                                          .withAlpha(160),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    if (!widget.selectionMode && widget.isShoppingMode)
                      Text(
                        '${widget.item.quantity}${widget.item.unit.label}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color:
                              isPurchased
                                  ? theme.colorScheme.outline
                                  : theme.colorScheme.onSurface,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (!widget.selectionMode)
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

    final tactileTile = TactileContainer(passThrough: true, child: tileContent);

    Widget child;
    if (widget.selectionMode) {
      child = tactileTile;
    } else {
      child = Dismissible(
        key: ValueKey('dismiss_${widget.item.id}'),
        direction: DismissDirection.endToStart,
        background: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: Spacing.sm,
            vertical: Spacing.xxs,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
          ),
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: Spacing.lg),
          child: Icon(
            Icons.delete_outline,
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        onDismissed: (direction) {
          HapticFeedback.mediumImpact();
          final removedItem = widget.item;
          final notifier = ref.read(
            shoppingListItemsProvider(widget.listId).notifier,
          );
          notifier.removeItem(widget.item.id);
          showUniqueSnackBar(
            context,
            content: Text(l10n.itemRemoved),
            action: SnackBarAction(
              label: l10n.undo,
              onPressed: () => notifier.restoreItem(removedItem),
            ),
          );
        },
        child: tactileTile,
      );
    }

    return SizeTransition(
      sizeFactor: _sizeAnim,
      alignment: Alignment.topCenter,
      child: FadeTransition(opacity: _opacityAnim, child: child),
    );
  }

  void _showEditDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => EditItemDialog(listId: widget.listId, item: widget.item),
    );
  }

  void _askToAddToPantry() {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.addToPantryPrompt(widget.item.name)),
        action: SnackBarAction(
          label: l10n.yes,
          onPressed: () {
            ref
                .read(pantryItemsProvider.notifier)
                .addItem(
                  name: widget.item.name,
                  idealQuantity: widget.item.quantity,
                  currentQuantity: widget.item.quantity,
                  categoryId: widget.item.categoryId,
                  unit: widget.item.unit,
                  estimatedPrice: widget.item.estimatedPrice,
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
            child: Icon(
              icon,
              size: 14,
              color: theme.colorScheme.onSurfaceVariant,
            ),
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
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

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
            contentPadding: EdgeInsets.symmetric(
              horizontal: Spacing.xxs,
              vertical: Spacing.xxs,
            ),
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
      child:
          price != null
              ? Text(
                formatCurrency(price * widget.item.quantity, currencyCode),
                style: theme.textTheme.labelSmall?.copyWith(
                  color:
                      widget.item.isPurchased
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
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w800,
          ),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 2,
              vertical: Spacing.xxs,
            ),
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
              fontFeatures:
                  isSmallScreen ? null : [const FontFeature.tabularFigures()],
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
      key: const ValueKey('_animated_entry_fade'),
      opacity: _fade,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}
