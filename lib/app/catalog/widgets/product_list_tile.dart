// coverage:ignore-start
import 'package:flutter/material.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/theme/tokens.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.product,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    this.isRare = false,
  });

  final CatalogProduct product;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final bool isRare;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = quantity > 0;

    return Opacity(
      opacity: isRare ? 0.45 : 1.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(
            color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outlineVariant.withAlpha(80),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (product.brand != null || product.quantity != null)
                      Text(
                        [
                          if (product.brand != null) product.brand!,
                          if (product.quantity != null) product.quantity!,
                        ].join(' · '),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _CounterButton(
                    icon: Icons.remove,
                    onPressed: quantity > 0 ? onDecrement : null,
                    color: theme.colorScheme.onSurface,
                  ),
                  SizedBox(
                    width: 28,
                    child: Text(
                      '$quantity',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: quantity > 0 ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  _CounterButton(
                    icon: Icons.add,
                    onPressed: onIncrement,
                    color: theme.colorScheme.primary,
                    filled: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    required this.icon,
    required this.onPressed,
    required this.color,
    this.filled = false,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Color color;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filled
              ? (onPressed != null ? color : color.withAlpha(80))
              : Colors.transparent,
          border: filled ? null : Border.all(color: color.withAlpha(onPressed != null ? 120 : 40)),
        ),
        child: Icon(
          icon,
          size: 16,
          color: filled ? Colors.white : color.withAlpha(onPressed != null ? 200 : 80),
        ),
      ),
    );
  }
}
// coverage:ignore-end
