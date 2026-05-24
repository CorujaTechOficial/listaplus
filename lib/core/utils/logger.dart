import 'package:flutter/foundation.dart';

class Logger {
  static void log(String message) {
    debugPrint('[LOG] $message');
  }

  static void error(String message, [Object? error, StackTrace? stack]) {
    debugPrint('[ERROR] $message');
    if (error != null) {
      debugPrint('  Error: $error');
    }
    if (stack != null) {
      debugPrint('  StackTrace: $stack');
    }
  }
}
