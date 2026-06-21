import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shimmer/shimmer.dart';

class ShoppingItemTileSkeleton extends StatelessWidget {
  const ShoppingItemTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final base = theme.colorScheme.surfaceContainerHighest;
    final highlight = theme.colorScheme.surface;
    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.sm,
          vertical: Spacing.xxs,
        ),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: base,
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.sm,
            vertical: Spacing.sm,
          ),
          child: Row(
            children: [
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(color: base, shape: BoxShape.circle),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 14, width: double.infinity, color: base),
                    const SizedBox(height: 6),
                    Container(height: 10, width: 100, color: base),
                  ],
                ),
              ),
              const SizedBox(width: Spacing.xs),
              Container(
                width: 72,
                height: 26,
                decoration: BoxDecoration(
                  color: base,
                  borderRadius: BorderRadius.circular(RadiusTokens.xl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
