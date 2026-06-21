import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'tokens.dart';

Route<T> fadeSlideRoute<T>(Widget page) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPageRoute<T>(
      builder: (_) => page,
      settings: RouteSettings(name: page.runtimeType.toString()),
    );
  }
  return PageRouteBuilder<T>(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.1, 0),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
    transitionDuration: DurationTokens.normal,
    settings: RouteSettings(name: page.runtimeType.toString()),
  );
}
