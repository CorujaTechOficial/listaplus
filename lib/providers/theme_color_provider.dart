import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'theme_color_provider.g.dart';

@riverpod
class ThemeColor extends _$ThemeColor {
  @override
  Future<int> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final data = await service.getUserData();
    return data?['themeColor'] as int? ?? Colors.green.toARGB32();
  }

  Future<void> setColor(int colorValue) async {
    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'themeColor': colorValue});
    state = AsyncValue.data(colorValue);
  }
}
