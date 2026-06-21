import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_list/theme/tokens.dart';

/// A wrapper widget that provides a subtle scale animation on tap.
/// Used to standardize tactile feedback across the application.
///
/// Set [passThrough] = true for widgets that manage their own gestures
/// (e.g. [InkWell], [TextButton], [OutlinedButton]). Uses [Listener] instead
/// of [GestureDetector] so it never enters the gesture arena.
class TactileContainer extends StatefulWidget {
  const TactileContainer({
    super.key,
    required this.child,
    this.onTap,
    this.scale = 0.98,
    this.duration = DurationTokens.fastest,
    this.passThrough = false,
    this.enableHaptics = true,
  });

  final Widget child;
  final VoidCallback? onTap;
  final double scale;
  final Duration duration;
  final bool passThrough;
  final bool enableHaptics;

  @override
  State<TactileContainer> createState() => _TactileContainerState();
}

class _TactileContainerState extends State<TactileContainer> {
  bool _isPressed = false;

  void _onDown() {
    if (widget.enableHaptics) {
      HapticFeedback.lightImpact();
    }
    setState(() => _isPressed = true);
  }

  void _onUp() => setState(() => _isPressed = false);

  @override
  Widget build(BuildContext context) {
    final scaled = AnimatedScale(
      scale: _isPressed ? widget.scale : 1.0,
      duration: widget.duration,
      curve: Curves.easeInOut,
      child: widget.child,
    );

    if (widget.passThrough) {
      return Listener(
        onPointerDown: (_) => _onDown(),
        onPointerUp: (_) => _onUp(),
        onPointerCancel: (_) => _onUp(),
        child: scaled,
      );
    }

    return GestureDetector(
      onTapDown: (_) => _onDown(),
      onTapUp: (_) => _onUp(),
      onTapCancel: _onUp,
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: scaled,
    );
  }
}
