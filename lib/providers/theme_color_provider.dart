import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'theme_color_provider.g.dart';

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
    await service.updateUserData({_key: color.toARGB32()});
    ref.invalidateSelf();
    await future;
  }
}
