import 'package:flutter/material.dart';

class AnimatedTypingDots extends StatefulWidget {
  const AnimatedTypingDots({super.key});

  @override
  State<AnimatedTypingDots> createState() => _AnimatedTypingDotsState();
}

class _AnimatedTypingDotsState extends State<AnimatedTypingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (i) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final delay = i * 200;
            final t = (_controller.value * 1200 - delay).clamp(0, 600) / 600;
            final size = Tween<double>(begin: 5, end: 9).transform(
              Curves.easeInOut.transform(t),
            );
            return Container(
              width: size,
              height: size,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                shape: BoxShape.circle,
              ),
            );
          },
        );
      }),
    );
  }
}
