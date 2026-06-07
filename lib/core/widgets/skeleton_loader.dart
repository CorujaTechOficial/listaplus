import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../theme/tokens.dart';

class SkeletonLoader extends StatelessWidget {
  const SkeletonLoader({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  final double width;
  final double height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Shimmer.fromColors(
      baseColor: isDark 
          ? theme.colorScheme.surfaceContainerHighest.withAlpha(50) 
          : Colors.grey[300]!,
      highlightColor: isDark 
          ? theme.colorScheme.surfaceContainerHighest.withAlpha(100) 
          : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? RadiusTokens.md),
        ),
      ),
    );
  }
}

class ListSkeleton extends StatelessWidget {
  const ListSkeleton({super.key, this.itemCount = 5});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      separatorBuilder: (_, index) => const SizedBox(height: Spacing.md),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
        child: Row(
          children: [
            const SkeletonLoader(width: 40, height: 40, borderRadius: RadiusTokens.sm),
            const SizedBox(width: Spacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLoader(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 16,
                  ),
                  const SizedBox(height: Spacing.xs),
                  SkeletonLoader(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
