import 'package:flutter/material.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
    final l10n = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: Spacing.xxs),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: isSelected
              ? theme.colorScheme.primary
              : (isRare
                  ? theme.colorScheme.secondary.withAlpha(120)
                  : theme.colorScheme.outlineVariant.withAlpha(80)),
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.sm,
        ),
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
                  if (product.brand != null || product.quantity != null || isRare) ...[
                    const SizedBox(height: Spacing.xxs),
                    Row(
                      children: [
                        if (isRare) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Spacing.xxs,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  PhosphorIconsRegular.star,
                                  size: 10,
                                  color: theme.colorScheme.onSecondaryContainer,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  l10n.catalogRareBadge,
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: Spacing.xs),
                        ],
                        if (product.brand != null || product.quantity != null)
                          Expanded(
                            child: Text(
                              [
                                if (product.brand != null) product.brand!,
                                if (product.quantity != null) product.quantity!,
                              ].join(' · '),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: Spacing.sm),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _CounterButton(
                  icon: PhosphorIconsRegular.minus,
                  onPressed: quantity > 0 ? onDecrement : null,
                  color: theme.colorScheme.onSurface,
                ),
                SizedBox(
                  width: Spacing.xl,
                  child: Text(
                    '$quantity',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: quantity > 0
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                _CounterButton(
                  icon: PhosphorIconsRegular.plus,
                  onPressed: onIncrement,
                  color: theme.colorScheme.primary,
                  filled: true,
                ),
              ],
            ),
          ],
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
    final theme = Theme.of(context);
    final iconColor = filled
        ? theme.colorScheme.onPrimary.withAlpha(onPressed != null ? 255 : 128)
        : color.withAlpha(onPressed != null ? 200 : 80);

    return Ink(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled
            ? (onPressed != null ? color : color.withAlpha(80))
            : Colors.transparent,
        border: filled
            ? null
            : Border.all(
                color: color.withAlpha(onPressed != null ? 120 : 40),
              ),
      ),
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Center(child: Icon(icon, size: 20, color: iconColor)),
      ),
    );
  }
}
