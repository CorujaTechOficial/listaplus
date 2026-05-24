import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/budget_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Budget tools', () {
    test('allBudgetTools contains all tools', () {
      final names = allBudgetTools.map((t) => t.name).toSet();
      expect(allBudgetTools.length, 2);
      expect(names, containsAll(['get_budget', 'set_budget']));
    });

    test('each tool has valid structure', () {
      for (final tool in allBudgetTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
