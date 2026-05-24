import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/agent/executors/config_executor.dart';

void main() {
  group('ConfigExecutor', () {
    test('can be instantiated', () {
      const executor = ConfigExecutor();
      expect(executor, isA<ConfigExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = ConfigExecutor();
      expect(executor.getTheme, isA<Function>());
      expect(executor.setTheme, isA<Function>());
      expect(executor.saveUserPreference, isA<Function>());
      expect(executor.deleteUserPreference, isA<Function>());
      expect(executor.getUserProfile, isA<Function>());
      expect(executor.updateUserProfile, isA<Function>());
      expect(executor.exportBackup, isA<Function>());
      expect(executor.importBackup, isA<Function>());
      expect(executor.generateArtifact, isA<Function>());
      expect(executor.getRecipes, isA<Function>());
      expect(executor.createRecipe, isA<Function>());
      expect(executor.deleteRecipe, isA<Function>());
      expect(executor.getMealPlan, isA<Function>());
      expect(executor.scheduleMeal, isA<Function>());
      expect(executor.removeMealPlanEntry, isA<Function>());
    });
  });
}
