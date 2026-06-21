import 'dart:ui' show Locale;

import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';

void main() {
  group('inferCurrencyFromLocale', () {
    test('uses country-specific currency when available', () {
      expect(inferCurrencyFromLocale(const Locale('en', 'US')), 'USD');
      expect(inferCurrencyFromLocale(const Locale('pt', 'BR')), 'BRL');
      expect(inferCurrencyFromLocale(const Locale('pt', 'PT')), 'EUR');
      expect(inferCurrencyFromLocale(const Locale('es', 'MX')), 'MXN');
    });

    test('uses a language fallback without forcing BRL globally', () {
      expect(inferCurrencyFromLocale(const Locale('de')), 'EUR');
      expect(inferCurrencyFromLocale(const Locale('ja')), 'JPY');
      expect(inferCurrencyFromLocale(const Locale('en')), 'USD');
    });
  });
}
