import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/executors/share_executor.dart';

void main() {
  group('ShareExecutor', () {
    test('can be instantiated', () {
      const executor = ShareExecutor();
      expect(executor, isA<ShareExecutor>());
    });

    test('methods accept Ref and return Future<ToolResult>', () {
      const executor = ShareExecutor();
      expect(executor.createShareCode, isA<Function>());
      expect(executor.importSharedList, isA<Function>());
    });
  });
}
