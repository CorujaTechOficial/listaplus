import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter/foundation.dart';

class LoggerService {
  static void log(String message, {String? tag}) {
    final prefix = tag != null ? '[$tag]' : '';
    debugPrint('$prefix $message');
  }

  static void error(
    Object exception, {
    StackTrace? stackTrace,
    String? message,
    Map<String, dynamic>? extra,
  }) {
    final msg = message ?? '${exception.runtimeType}: $exception';
    debugPrint('[ERROR] $msg');

    Sentry.captureEvent(
      SentryEvent(
        message: SentryMessage(msg),
        level: SentryLevel.error,
      ),
      stackTrace: stackTrace,
    );

    FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      fatal: false,
    );
  }

  static void info(String message, {Map<String, dynamic>? extra}) {
    debugPrint('[INFO] $message');

    Sentry.captureEvent(
      SentryEvent(
        message: SentryMessage(message),
        level: SentryLevel.info,
      ),
    );
  }
}
