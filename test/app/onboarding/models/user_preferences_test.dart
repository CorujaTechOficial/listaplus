import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/models/user_preferences.dart';

void main() {
  group('UserPreferences', () {
    test('round-trips onboarding progress and created list result', () {
      const original = UserPreferences(
        displayName: 'Ana',
        shoppingCategory: 'grocery',
        householdSize: 'family',
        goals: ['saveMoney'],
        currentStep: 4,
        selectedPrompt: 'Compras da semana',
        createdListId: 'list-1',
        createdItemCount: 8,
        creationSource: 'ai',
      );

      final restored = UserPreferences.fromJson(original.toJson());

      expect(restored.displayName, 'Ana');
      expect(restored.shoppingCategory, 'grocery');
      expect(restored.householdSize, 'family');
      expect(restored.goals, ['saveMoney']);
      expect(restored.currentStep, 4);
      expect(restored.selectedPrompt, 'Compras da semana');
      expect(restored.createdListId, 'list-1');
      expect(restored.createdItemCount, 8);
      expect(restored.creationSource, 'ai');
    });

    test('uses a solo household default for older drafts', () {
      final restored = UserPreferences.fromJson(const <String, dynamic>{});

      expect(restored.householdSize, 'solo');
      expect(restored.currentStep, 0);
      expect(restored.createdItemCount, 0);
    });

    test('clears the created list without losing personalization', () {
      const original = UserPreferences(
        shoppingCategory: 'home',
        createdListId: 'list-1',
        createdItemCount: 5,
        creationSource: 'fallback',
      );

      final updated = original.copyWith(
        clearCreatedList: true,
        createdItemCount: 0,
      );

      expect(updated.shoppingCategory, 'home');
      expect(updated.createdListId, isNull);
      expect(updated.createdItemCount, 0);
      expect(updated.creationSource, isNull);
    });

    test('serializes and restores quiz fields', () {
      const prefs = UserPreferences(
        householdSize: 'family3to4',
        shoppingFrequency: 'weekly',
        mainPain: 'overspend',
        savingsGoal: 'save200',
        listMethod: 'paper',
      );
      final restored = UserPreferences.fromJson(prefs.toJson());
      expect(restored.shoppingFrequency, 'weekly');
      expect(restored.mainPain, 'overspend');
      expect(restored.savingsGoal, 'save200');
      expect(restored.listMethod, 'paper');
    });

    test('quiz fields default to empty', () {
      const prefs = UserPreferences();
      expect(prefs.shoppingFrequency, '');
      expect(prefs.mainPain, '');
      expect(prefs.savingsGoal, '');
      expect(prefs.listMethod, '');
    });
  });
}
