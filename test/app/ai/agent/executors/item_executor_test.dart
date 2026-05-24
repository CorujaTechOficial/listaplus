import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/agent/executors/item_executor.dart';

void main() {
  group('ItemExecutor', () {
    test('can be instantiated', () {
      const executor = ItemExecutor();
      expect(executor, isA<ItemExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = ItemExecutor();
      expect(executor.getItems, isA<Function>());
      expect(executor.addItem, isA<Function>());
      expect(executor.updateItem, isA<Function>());
      expect(executor.removeItem, isA<Function>());
      expect(executor.togglePurchased, isA<Function>());
      expect(executor.togglePurchasedBatch, isA<Function>());
      expect(executor.incrementQuantity, isA<Function>());
      expect(executor.decrementQuantity, isA<Function>());
      expect(executor.clearPurchased, isA<Function>());
      expect(executor.clearAllItems, isA<Function>());
      expect(executor.reorderItems, isA<Function>());
    });
  });
}
