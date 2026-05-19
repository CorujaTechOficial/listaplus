import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:shimmer/shimmer.dart';
import '../theme/tokens.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Shimmer.fromColors(
      baseColor: isDark
          ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3)
          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
      highlightColor: isDark
          ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5)
          : theme.colorScheme.surfaceContainerHighest,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        padding: const EdgeInsets.all(Spacing.md),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: Spacing.sm),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF2A2D35) : const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(RadiusTokens.sm),
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 14,
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF2A2D35) : const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(RadiusTokens.sm),
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    Container(
                      width: 120,
                      height: 12,
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF2A2D35) : const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(RadiusTokens.sm),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// coverage:ignore-end
