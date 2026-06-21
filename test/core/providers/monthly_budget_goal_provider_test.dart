import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('monthlyBudgetGoalProvider returns null when no value stored', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, isNull);
  });

  test('setGoal persists the value', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await container.read(monthlyBudgetGoalProvider.notifier).setGoal(800.0);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, 800.0);
  });

  test('setGoal(null) removes the value', () async {
    SharedPreferences.setMockInitialValues({'monthly_budget_goal': 800.0});
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await container.read(monthlyBudgetGoalProvider.notifier).setGoal(null);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, isNull);
  });
}
