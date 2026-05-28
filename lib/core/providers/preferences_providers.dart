import 'dart:async';
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
      return service.getLocale();
    } on Exception {
      return null;
    }
  }

  Future<void> setLocale(String? locale) async {
    final service = ref.read(firestoreServiceProvider);
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
class ThemeColor extends _$ThemeColor {
  static const _key = 'themeColor';

  @override
  Future<Color> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final data = await service.getUserData();
    final colorValue = data?[_key] as int?;
    return colorValue != null ? Color(colorValue) : const Color(0xFF4CAF50);
  }

  Future<void> setColor(Color color) async {
    final service = ref.read(firestoreServiceProvider);
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
      final data = await service.getUserData();
      return data?[_key] as bool? ?? true;
    } on Exception {
      return true;
    }
  }

  Future<void> setUseDynamicColor(bool value) async {
    final service = ref.read(firestoreServiceProvider);
    final previous = state.value;
    state = AsyncValue.data(value);
    try {
      await service.updateUserData({_key: value});
    } on Exception {
      state = AsyncValue.data(previous ?? true);
      rethrow;
    }
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

