import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/recipe_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Recipe tools', () {
    test('allRecipeTools contains all tools', () {
      final names = allRecipeTools.map((t) => t.name).toSet();
      expect(allRecipeTools.length, 3);
      expect(names, containsAll(['get_recipes', 'create_recipe', 'delete_recipe']));
    });

    test('each tool has valid structure', () {
      for (final tool in allRecipeTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
