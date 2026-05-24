import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/item_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Item tools', () {
    test('allItemTools contains all tools', () {
      final names = allItemTools.map((t) => t.name).toSet();
      expect(allItemTools.length, 11);
      expect(names, containsAll([
        'get_items', 'add_item', 'update_item', 'remove_item',
        'toggle_purchased', 'toggle_purchased_batch',
        'increment_quantity', 'decrement_quantity',
        'clear_purchased', 'clear_all_items', 'reorder_items',
      ]));
    });

    test('get_items has optional listId', () {
      final tool = getItemsTool;
      expect(tool.name, 'get_items');
      expect(tool.parameters.any((p) => p.name == 'listId' && !p.required), true);
    });

    test('add_item has all required params', () {
      final tool = addItemTool;
      expect(tool.name, 'add_item');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'name' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'quantity' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'unit' && !p.required), true);
      expect(tool.parameters.any((p) => p.name == 'category' && !p.required), true);
      expect(tool.parameters.any((p) => p.name == 'estimatedPrice' && !p.required), true);
    });

    test('each tool has valid structure', () {
      for (final tool in allItemTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
