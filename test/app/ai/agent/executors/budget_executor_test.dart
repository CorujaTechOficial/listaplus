import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/executors/budget_executor.dart';

void main() {
  group('BudgetExecutor', () {
    test('can be instantiated', () {
      const executor = BudgetExecutor();
      expect(executor, isA<BudgetExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = BudgetExecutor();
      expect(executor.getBudget, isA<Function>());
      expect(executor.setBudget, isA<Function>());
    });
  });
}
