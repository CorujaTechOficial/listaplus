import 'dart:async';
import 'dart:ui' show PlatformDispatcher;
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_providers.dart';

part 'preferences_providers.g.dart';

const _hasSeenOnboardingKey = 'has_seen_onboarding';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  Future<ThemeMode> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      if (service == null) return ThemeMode.system;
      final value = await service.getThemeMode();
      switch (value) {
        case 'dark':
          return ThemeMode.dark;
        case 'light':
          return ThemeMode.light;
        default:
          return ThemeMode.system;
      }
    } on Exception {
      return ThemeMode.system;
    }
  }

  Future<void> setMode(ThemeMode mode) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    final previous = state.value;
    state = AsyncValue.data(mode);
    try {
      await service.setThemeMode(mode.name);
    } on Exception {
      state = AsyncValue.data(previous ?? ThemeMode.system);
      rethrow;
    }
  }
}

@riverpod
class LocaleSetting extends _$LocaleSetting {
  @override
  Future<String?> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      if (service == null) return null;
      return service.getLocale();
    } on Exception {
      return null;
    }
  }

  Future<void> setLocale(String? locale) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    final previous = state.value;
    state = AsyncValue.data(locale);
    try {
      await service.setLocale(locale);
    } on Exception {
      state = AsyncValue.data(previous);
      rethrow;
    }
  }
}

@riverpod
class CurrencySetting extends _$CurrencySetting {
  @override
  Future<String> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      if (service == null) {
        return inferCurrencyFromLocale(PlatformDispatcher.instance.locale);
      }
      final data = await service.getUserData();
      final saved = data?['currencyCode'] as String?;
      if (saved != null) {
        return saved;
      }
      final locale = ref.read(localeSettingProvider).value;
      return inferCurrencyFromLocale(
        locale == null
            ? PlatformDispatcher.instance.locale
            : _parseLocale(locale),
      );
    } on Exception {
      return inferCurrencyFromLocale(PlatformDispatcher.instance.locale);
    }
  }

  Future<void> setCurrency(String code) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    final previous = state.value;
    state = AsyncValue.data(code);
    try {
      await service.updateUserData({'currencyCode': code});
    } on Exception {
      state = AsyncValue.data(
        previous ?? inferCurrencyFromLocale(PlatformDispatcher.instance.locale),
      );
      rethrow;
    }
  }
}

Locale _parseLocale(String value) {
  final parts = value.replaceAll('-', '_').split('_');
  return parts.length > 1 ? Locale(parts[0], parts[1]) : Locale(parts[0]);
}

String inferCurrencyFromLocale(Locale locale) {
  final country = locale.countryCode?.toUpperCase();
  if (country != null) {
    const countryCurrencies = <String, String>{
      'AR': 'ARS',
      'AT': 'EUR',
      'AU': 'AUD',
      'BE': 'EUR',
      'BR': 'BRL',
      'CA': 'CAD',
      'CH': 'CHF',
      'CL': 'CLP',
      'CN': 'CNY',
      'CO': 'COP',
      'CY': 'EUR',
      'CZ': 'CZK',
      'DE': 'EUR',
      'DK': 'DKK',
      'EE': 'EUR',
      'ES': 'EUR',
      'FI': 'EUR',
      'FR': 'EUR',
      'GB': 'GBP',
      'GR': 'EUR',
      'HK': 'HKD',
      'HU': 'HUF',
      'ID': 'IDR',
      'IE': 'EUR',
      'IN': 'INR',
      'IT': 'EUR',
      'JP': 'JPY',
      'KR': 'KRW',
      'LT': 'EUR',
      'LU': 'EUR',
      'LV': 'EUR',
      'MT': 'EUR',
      'MX': 'MXN',
      'MY': 'MYR',
      'NL': 'EUR',
      'NO': 'NOK',
      'NZ': 'NZD',
      'PE': 'PEN',
      'PH': 'PHP',
      'PL': 'PLN',
      'PT': 'EUR',
      'RO': 'RON',
      'SE': 'SEK',
      'SG': 'SGD',
      'SI': 'EUR',
      'SK': 'EUR',
      'TH': 'THB',
      'TR': 'TRY',
      'TW': 'TWD',
      'US': 'USD',
      'ZA': 'ZAR',
    };
    final currency = countryCurrencies[country];
    if (currency != null) {
      return currency;
    }
  }

  return switch (locale.languageCode) {
    'pt' => 'BRL',
    'ja' => 'JPY',
    'ko' => 'KRW',
    'zh' => 'CNY',
    'de' ||
    'fr' ||
    'it' ||
    'es' ||
    'nl' ||
    'el' ||
    'fi' ||
    'ga' ||
    'sk' ||
    'sl' ||
    'et' ||
    'lv' ||
    'lt' ||
    'mt' => 'EUR',
    _ => 'USD',
  };
}

String resolveCurrencyCode(AsyncValue<String> setting, Locale locale) {
  return setting.value ?? inferCurrencyFromLocale(locale);
}

@riverpod
class ThemeColor extends _$ThemeColor {
  static const _key = 'themeColor';

  @override
  Future<Color> build() async {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return const Color(0xFF4CAF50);
    final data = await service.getUserData();
    final colorValue = data?[_key] as int?;
    return colorValue != null ? Color(colorValue) : const Color(0xFF4CAF50);
  }

  Future<void> setColor(Color color) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    final previous = state.value;
    state = AsyncValue.data(color);
    try {
      await service.updateUserData({_key: color.toARGB32()});
    } on Exception {
      state = AsyncValue.data(previous ?? const Color(0xFF4CAF50));
      rethrow;
    }
  }
}

@riverpod
class Onboarding extends _$Onboarding {
  @override
  Future<bool> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_hasSeenOnboardingKey) ?? false;
  }

  Future<void> markAsSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_hasSeenOnboardingKey, true);
    state = const AsyncValue.data(true);
  }
}

@riverpod
class UseDynamicColor extends _$UseDynamicColor {
  static const _key = 'useDynamicColor';

  @override
  Future<bool> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      if (service == null) {
        return false;
      }
      final data = await service.getUserData();
      return data?[_key] as bool? ?? false;
    } on Exception {
      return false;
    }
  }

  Future<void> setUseDynamicColor(bool value) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) {
      return;
    }
    final previous = state.value;
    state = AsyncValue.data(value);
    try {
      await service.updateUserData({_key: value});
    } on Exception {
      state = AsyncValue.data(previous ?? false);
      rethrow;
    }
  }
}

@riverpod
class AnalyticsConsent extends _$AnalyticsConsent {
  static const _key = 'analytics_consent_given';

  @override
  Future<bool?> build() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(_key)) {
      return null;
    }
    return prefs.getBool(_key);
  }

  Future<void> setConsent(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, value);
    state = AsyncValue.data(value);
  }
}

@riverpod
class DefaultScreen extends _$DefaultScreen {
  static const _key = 'defaultScreen';

  @override
  Future<String> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key) ?? 'list';
  }

  Future<void> setScreen(String screen) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, screen);
    state = AsyncValue.data(screen);
  }
}

@riverpod
class MonthlyBudgetGoal extends _$MonthlyBudgetGoal {
  static const _key = 'monthly_budget_goal';

  @override
  Future<double?> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_key);
  }

  Future<void> setGoal(double? value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value == null) {
      await prefs.remove(_key);
    } else {
      await prefs.setDouble(_key, value);
    }
    state = AsyncValue.data(value);
  }
}
