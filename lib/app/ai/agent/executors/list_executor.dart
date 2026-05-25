import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';

class ListExecutor {
  const ListExecutor();

  Future<String?> resolveCurrentListId(ProviderContainer container) async {
    final currentId = await container.read(currentListIdProvider.future);
    if (currentId != null) {
      return currentId;
    }
    final lists = await container.read(shoppingListsProvider.future);
    return lists.isNotEmpty ? lists.first.id : null;
  }

  Future<ToolResult> getLists(ProviderContainer container) async {
    final lists = await container.read(shoppingListsProvider.future);
    if (lists.isEmpty) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma lista de compras encontrada.',
      );
    }
    final result = StringBuffer('Listas de compras:\n');
    for (final list in lists) {
      final status = list.isArchived ? ' [ARQUIVADA]' : '';
      final budget = list.budget != null ? ' (R\$${list.budget!.toStringAsFixed(2)})' : '';
      final shared = list.isShared ? ' [COMPARTILHADA]' : '';
      result.writeln('- ${list.name} (ID: ${list.id})$budget$status$shared');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> getCurrentList(ProviderContainer container) async {
    final currentId = await resolveCurrentListId(container);
    if (currentId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma lista selecionada. Crie ou selecione uma lista primeiro.',
      );
    }
    final lists = await container.read(shoppingListsProvider.future);
    final list = lists.where((l) => l.id == currentId).firstOrNull;
    if (list == null) {
      return const ToolResult(toolCallId: '', content: 'Lista atual não encontrada.');
    }
    return ToolResult(
      toolCallId: '',
      content: 'Lista atual: ${list.name} (ID: ${list.id})${list.budget != null ? ', Orçamento: R\$${list.budget!.toStringAsFixed(2)}' : ''}',
    );
  }

  Future<ToolResult> setCurrentList(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(currentListIdProvider.notifier).setCurrentList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista atual alterada com sucesso.');
  }

  Future<ToolResult> createList(ProviderContainer container, Map<String, dynamic> args) async {
    final name = args['name'] as String;
    final budget = args['budget'] != null ? (args['budget'] as num).toDouble() : null;
    final list = await container.read(shoppingListsProvider.notifier).createList(name, budget: budget);
    return ToolResult(
      toolCallId: '',
      content: 'Lista "$name" criada com sucesso! (ID: ${list.id})',
    );
  }

  Future<ToolResult> renameList(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final name = args['name'] as String;
    final lists = await container.read(shoppingListsProvider.future);
    final list = lists.where((l) => l.id == listId).firstOrNull;
    if (list == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Lista não encontrada.',
        success: false,
      );
    }
    await container.read(shoppingListsProvider.notifier).updateList(list.copyWith(name: name));
    return ToolResult(toolCallId: '', content: 'Lista renomeada para "$name".');
  }

  Future<ToolResult> deleteList(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(shoppingListsProvider.notifier).deleteList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista excluída permanentemente.');
  }

  Future<ToolResult> archiveList(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(shoppingListsProvider.notifier).archiveList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista arquivada com sucesso.');
  }

  Future<ToolResult> unarchiveList(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(shoppingListsProvider.notifier).unarchiveList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista desarquivada com sucesso.');
  }
}
