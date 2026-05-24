import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/meal_planner_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Meal planner tools', () {
    test('allMealPlannerTools contains all tools', () {
      final names = allMealPlannerTools.map((t) => t.name).toSet();
      expect(allMealPlannerTools.length, 3);
      expect(names, containsAll(['get_meal_plan', 'schedule_meal', 'remove_meal_plan_entry']));
    });

    test('each tool has valid structure', () {
      for (final tool in allMealPlannerTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
