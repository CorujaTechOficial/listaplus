import 'dart:io';
import 'package:flutter/foundation.dart';

/// Returns true if the app is running in a test environment.
bool get isTestMode {
  return kDebugMode && kIsWeb == false && _isTest;
}

bool get _isTest => const bool.fromEnvironment('test', defaultValue: false) || 
                   (!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST')) ||
                   StackTrace.current.toString().contains('package:flutter_test');
