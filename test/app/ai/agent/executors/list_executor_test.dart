import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/executors/list_executor.dart';

void main() {
  group('ListExecutor', () {
    test('can be instantiated', () {
      const executor = ListExecutor();
      expect(executor, isA<ListExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = ListExecutor();
      expect(executor.getLists, isA<Function>());
      expect(executor.getCurrentList, isA<Function>());
      expect(executor.setCurrentList, isA<Function>());
      expect(executor.createList, isA<Function>());
      expect(executor.renameList, isA<Function>());
      expect(executor.deleteList, isA<Function>());
      expect(executor.archiveList, isA<Function>());
      expect(executor.unarchiveList, isA<Function>());
    });
  });
}
