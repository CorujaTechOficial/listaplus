import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/theme_color_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
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
      expect(color, Colors.green.toARGB32());
    });

    test('setColor changes to blue', () async {
      await container.read(themeColorProvider.notifier).setColor(Colors.blue.toARGB32());
      final color = await container.read(themeColorProvider.future);
      expect(color, Colors.blue.toARGB32());
    });

    test('setColor persists to backend', () async {
      await container.read(themeColorProvider.notifier).setColor(Colors.red.toARGB32());
      final userData = await fakeBackend.getUserData();
      expect(userData!['themeColor'], Colors.red.toARGB32());
    });

    test('reads stored value on build', () async {
      await fakeBackend.updateUserData({'themeColor': Colors.purple.toARGB32()});
      container.invalidate(themeColorProvider);
      final color = await container.read(themeColorProvider.future);
      expect(color, Colors.purple.toARGB32());
    });
  });
}
