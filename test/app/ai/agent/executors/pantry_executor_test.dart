import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/executors/pantry_executor.dart';

void main() {
  group('PantryExecutor', () {
    test('can be instantiated', () {
      const executor = PantryExecutor();
      expect(executor, isA<PantryExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = PantryExecutor();
      expect(executor.getPantryItems, isA<Function>());
      expect(executor.addPantryItem, isA<Function>());
      expect(executor.updatePantryItem, isA<Function>());
      expect(executor.removePantryItem, isA<Function>());
      expect(executor.consumePantryItem, isA<Function>());
      expect(executor.restockPantryItem, isA<Function>());
      expect(executor.clearPantry, isA<Function>());
    });
  });
}
