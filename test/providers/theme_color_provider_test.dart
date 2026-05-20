import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/providers/theme_color_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  group('ThemeColor (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns green default', () async {
      final color = await container.read(themeColorProvider.future);
      expect(color.toARGB32(), const Color(0xFF4CAF50).toARGB32());
    });

    test('setColor changes to blue', () async {
      await container.read(themeColorProvider.notifier).setColor(Colors.blue);
      final color = await container.read(themeColorProvider.future);
      expect(color.toARGB32(), Colors.blue.toARGB32());
    });

    test('setColor persists to backend', () async {
      await container.read(themeColorProvider.notifier).setColor(Colors.red);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('seed_color_value'), Colors.red.toARGB32());
    });

    test('reads stored value on build', () async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('seed_color_value', Colors.purple.toARGB32());
      container.invalidate(themeColorProvider);
      final color = await container.read(themeColorProvider.future);
      expect(color.toARGB32(), Colors.purple.toARGB32());
    });
  });
}
