import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/utils/test_utils.dart';

class AnimatedTypingDots extends StatelessWidget {
  const AnimatedTypingDots({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dotColor = theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt());

    return RepaintBoundary(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(3, (i) {
          return Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ).animate(onPlay: (c) => isTestMode ? null : c.repeat()).scale(
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.3, 1.3),
            duration: 600.ms,
            delay: (i * 200).ms,
            curve: Curves.easeInOut,
          ).then().scale(
            begin: const Offset(1.3, 1.3),
            end: const Offset(0.8, 0.8),
            duration: 600.ms,
          );
        }),
      ),
    );
  }
}
