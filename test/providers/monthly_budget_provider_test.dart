import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/monthly_budget_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  group('MonthlyBudget (riverpod)', () {
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

    test('build returns null initially', () async {
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, isNull);
    });

    test('setBudget sets a value', () async {
      await container.read(monthlyBudgetProvider.notifier).setBudget(500);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, 500);
    });

    test('setBudget persists to backend', () async {
      await container.read(monthlyBudgetProvider.notifier).setBudget(250.50);
      final userData = await fakeBackend.getUserData();
      expect(userData!['monthlyBudget'], 250.50);
    });

    test('setBudget with null removes budget', () async {
      await container.read(monthlyBudgetProvider.notifier).setBudget(500);
      await container.read(monthlyBudgetProvider.notifier).setBudget(null);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, isNull);
    });

    test('reads stored value on build', () async {
      await fakeBackend.updateUserData({'monthlyBudget': 999.99});
      container.invalidate(monthlyBudgetProvider);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, 999.99);
    });
  });
}
