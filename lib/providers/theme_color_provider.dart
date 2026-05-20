import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_color_provider.g.dart';

@riverpod
class ThemeColor extends _$ThemeColor {
  static const _key = 'seed_color_value';

  @override
  Future<Color> build() async {
    final prefs = await SharedPreferences.getInstance();
    final colorValue = prefs.getInt(_key);
    return colorValue != null ? Color(colorValue) : const Color(0xFF4CAF50);
  }

  Future<void> setColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, color.toARGB32());
    ref.invalidateSelf();
    await future;
  }
}
