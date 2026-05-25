import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';

class ShareExecutor {
  const ShareExecutor();

  Future<ToolResult> createShareCode(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final code = await container.read(shareServiceProvider).createShareCode(listId);
    return ToolResult(toolCallId: '', content: 'Código de compartilhamento: $code');
  }

  Future<ToolResult> importSharedList(ProviderContainer container, Map<String, dynamic> args) async {
    final code = args['code'] as String;
    final result = await container.read(shareServiceProvider).importSharedList(code);
    return ToolResult(
      toolCallId: '',
      content: 'Lista "${result.listName}" importada com sucesso!',
    );
  }
}
