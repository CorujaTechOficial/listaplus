import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PantryItemSkeleton extends StatelessWidget {
  const PantryItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final base = theme.colorScheme.surfaceContainerHighest;
    final highlight = theme.colorScheme.surface;
    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: base,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 14, width: 160, color: base),
              const SizedBox(height: 8),
              Container(height: 8, width: double.infinity, color: base),
              const SizedBox(height: 6),
              Container(height: 10, width: 80, color: base),
            ],
          ),
        ),
      ),
    );
  }
}
