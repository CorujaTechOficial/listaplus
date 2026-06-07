import 'package:flutter/material.dart';

/// A wrapper widget that provides a subtle scale animation on tap.
/// Used to standardize tactile feedback across the application.
class TactileContainer extends StatefulWidget {
  const TactileContainer({
    super.key,
    required this.child,
    this.onTap,
    this.scale = 0.98,
    this.duration = const Duration(milliseconds: 100),
  });

  final Widget child;
  final VoidCallback? onTap;
  final double scale;
  final Duration duration;

  @override
  State<TactileContainer> createState() => _TactileContainerState();
}

class _TactileContainerState extends State<TactileContainer> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedScale(
        scale: _isPressed ? widget.scale : 1.0,
        duration: widget.duration,
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
