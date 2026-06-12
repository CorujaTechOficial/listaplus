import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  test('persists onboarding changes and hydrates a new container', () async {
    final firstContainer = ProviderContainer();
    addTearDown(firstContainer.dispose);
    final notifier = firstContainer.read(onboardingDataProvider.notifier);

    notifier.updateCurrentStep(3);
    notifier.updateShoppingCategory('grocery');
    notifier.updateHouseholdSize('family');
    notifier.updateGoals(['neverForget']);
    notifier.recordCreatedList(
      listId: 'list-1',
      itemCount: 7,
      source: 'fallback',
    );
    await notifier.flush();

    final secondContainer = ProviderContainer();
    addTearDown(secondContainer.dispose);
    await secondContainer.read(onboardingDataProvider.notifier).hydrate();
    final restored = secondContainer.read(onboardingDataProvider);

    expect(restored.currentStep, 3);
    expect(restored.shoppingCategory, 'grocery');
    expect(restored.householdSize, 'family');
    expect(restored.goals, ['neverForget']);
    expect(restored.createdListId, 'list-1');
    expect(restored.createdItemCount, 7);
    expect(restored.creationSource, 'fallback');
  });

  test('clearDraft removes the serialized onboarding state', () async {
    SharedPreferences.setMockInitialValues(<String, Object>{
      'onboarding_draft_v2': jsonEncode(<String, Object>{'currentStep': 2}),
    });
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final notifier = container.read(onboardingDataProvider.notifier);

    await notifier.hydrate();
    await notifier.clearDraft();

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('onboarding_draft_v2'), isNull);
  });

  test('persists quiz answers and hydrates them', () async {
    final first = ProviderContainer();
    addTearDown(first.dispose);
    final notifier = first.read(onboardingDataProvider.notifier);

    notifier.updateShoppingFrequency('weekly');
    notifier.updateMainPain('overspend');
    notifier.updateSavingsGoal('save200');
    notifier.updateListMethod('paper');
    await notifier.flush();

    final second = ProviderContainer();
    addTearDown(second.dispose);
    await second.read(onboardingDataProvider.notifier).hydrate();
    final restored = second.read(onboardingDataProvider);
    expect(restored.shoppingFrequency, 'weekly');
    expect(restored.mainPain, 'overspend');
    expect(restored.savingsGoal, 'save200');
    expect(restored.listMethod, 'paper');
  });
}
