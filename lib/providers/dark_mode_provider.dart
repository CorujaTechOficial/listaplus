import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'dark_mode_provider.g.dart';

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
    await service.setThemeMode(mode.name);
    state = AsyncValue.data(mode);
  }
}
