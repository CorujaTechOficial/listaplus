import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/pantry_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Pantry tools', () {
    test('allPantryTools contains all tools', () {
      final names = allPantryTools.map((t) => t.name).toSet();
      expect(allPantryTools.length, 7);
      expect(names, containsAll([
        'get_pantry_items', 'add_pantry_item', 'update_pantry_item',
        'remove_pantry_item', 'consume_pantry_item',
        'restock_pantry_item', 'clear_pantry',
      ]));
    });

    test('each tool has valid structure', () {
      for (final tool in allPantryTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
