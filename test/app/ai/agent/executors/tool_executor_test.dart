import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/agent/executors/tool_executor.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('ToolExecutor', () {
    test('can be instantiated with Ref', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final executor = ToolExecutor.fromContainer(container);
      expect(executor, isA<ToolExecutor>());
    });

    test('returns error for unknown tool', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final executor = ToolExecutor.fromContainer(container);
      final result = await executor.execute(
        AgentToolCall(id: '1', name: 'unknown_tool', arguments: <String, dynamic>{}),
      );
      expect(result.success, false);
      expect(result.content, contains('Ferramenta desconhecida'));
    });
  });
}
