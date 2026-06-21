import 'package:flutter/foundation.dart';

/// Runtime environment the app is currently running in.
enum AppEnv {
  /// `flutter run` / debug build on a dev machine or emulator.
  development,

  /// Release build distributed via the Play Console internal/closed testing
  /// track (QA before production rollout).
  internalTesting,

  /// Public production release.
  production,
}

/// Central place for environment detection and build-time configuration.
///
/// Resolution rules (highest priority first):
/// 1. `--dart-define=APP_ENV=development|internal|production` (explicit override)
/// 2. Debug build  → [AppEnv.development]
/// 3. Profile build → [AppEnv.internalTesting] (used for on-device QA)
/// 4. Release build → [AppEnv.production]
class AppEnvironment {
  AppEnvironment._();

  /// RevenueCat **Test Store** key — sandbox transactions, no real store
  /// connection. Used automatically in dev / internal testing so the paywall
  /// loads and purchases run in sandbox mode.
  static const String _testStoreRevenueCatKey =
      'test_WGJtHHqWDJDrnrBkZZrUhxsKlTW';

  /// Public RevenueCat Google Play production key. NOT a secret — public keys
  /// ship inside the app binary by design. Used only in production.
  static const String _prodRevenueCatKey = 'goog_lUoZUpDVyhVroFRzwgArMnFxIQv';

  static const String _envOverride = String.fromEnvironment('APP_ENV');

  static const String _dartDefineRevenueCatKey = String.fromEnvironment(
    'REVENUECAT_API_KEY',
  );

  /// The environment the app is running in right now.
  static final AppEnv current = _resolve();

  static AppEnv _resolve() {
    switch (_envOverride.toLowerCase()) {
      case 'development':
      case 'dev':
        return AppEnv.development;
      case 'internal':
      case 'internaltesting':
      case 'testing':
        return AppEnv.internalTesting;
      case 'production':
      case 'prod':
        return AppEnv.production;
    }
    if (kDebugMode) {
      return AppEnv.development;
    }
    if (kProfileMode) {
      return AppEnv.internalTesting;
    }
    return AppEnv.production;
  }

  static bool get isDevelopment => current == AppEnv.development;

  static bool get isInternalTesting => current == AppEnv.internalTesting;

  static bool get isProduction => current == AppEnv.production;

  /// True in dev or internal testing — use to gate test-only affordances
  /// (verbose logging, debug banners, hardcoded keys, etc.).
  static bool get isTestPhase => !isProduction;

  /// RevenueCat key to initialize the SDK with.
  ///
  /// Resolution:
  /// 1. `--dart-define=REVENUECAT_API_KEY=...` when supplied (explicit override).
  /// 2. Production → live Google Play key.
  /// 3. Dev / internal testing → Test Store key (sandbox, no real store).
  static String get revenueCatApiKey {
    if (_dartDefineRevenueCatKey.isNotEmpty) {
      return _dartDefineRevenueCatKey;
    }
    return isProduction ? _prodRevenueCatKey : _testStoreRevenueCatKey;
  }

  /// Short label for logs / debug overlays.
  static String get label => switch (current) {
    AppEnv.development => 'DEV',
    AppEnv.internalTesting => 'INTERNAL',
    AppEnv.production => 'PROD',
  };
}
