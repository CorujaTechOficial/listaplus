import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';

class ItemExecutor {
  const ItemExecutor();

  Unit _unit(String label) {
    switch (label) {
      case 'kg':
        return Unit.kg;
      case 'g':
        return Unit.g;
      case 'L':
        return Unit.L;
      case 'mL':
        return Unit.mL;
      case 'pacote':
        return Unit.pack;
      default:
        return Unit.un;
    }
  }

  Future<String?> _resolveCurrentListId(ProviderContainer container) async {
    final currentId = await container.read(currentListIdProvider.future);
    if (currentId != null) {
      return currentId;
    }
    final lists = await container.read(shoppingListsProvider.future);
    return lists.isNotEmpty ? lists.first.id : null;
  }

  Future<Map<String, String>> _buildItemIndex(ProviderContainer container) async {
    final allLists = await container.read(shoppingListsProvider.future);
    final index = <String, String>{};
    for (final list in allLists) {
      final items = await container.read(shoppingListItemsProvider(list.id).future);
      for (final item in items) {
        index[item.id] = list.id;
      }
    }
    return index;
  }

  Future<ToolResult> getItems(ProviderContainer container, Map<String, dynamic> args) async {
    var listId = args['listId'] as String?;
    listId ??= await _resolveCurrentListId(container);
    if (listId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma lista ativa encontrada. Crie ou selecione uma lista primeiro.',
        success: false,
      );
    }
    final items = await container.read(shoppingListItemsProvider(listId).future);
    final itemsJson = items.map((i) => i.toJson()).toList();
    return ToolResult(
      toolCallId: '',
      content: '${items.length} itens encontrados.',
      resultData: {'items': itemsJson, 'listId': listId},
    );
  }

  Future<ToolResult> addItem(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final name = args['name'] as String;
    final quantity = (args['quantity'] as num?)?.toInt() ?? 1;
    final unitLabel = args['unit'] as String?;
    final categoryLabel = args['category'] as String?;
    final price = args['estimatedPrice'] != null ? (args['estimatedPrice'] as num).toDouble() : null;
    final itemId = const Uuid().v4();

    await container.read(shoppingListItemsProvider(listId).notifier).addItem(
      listId: listId,
      name: name,
      quantity: quantity,
      categoryId: categoryLabel ?? 'others',
      unit: unitLabel != null ? _unit(unitLabel) : Unit.un,
      estimatedPrice: price,
      id: itemId,
    );

    return ToolResult(
      toolCallId: '',
      content: 'Item "$name" adicionado com sucesso!',
      resultData: {'itemId': itemId, 'listId': listId},
    );
  }

  Future<ToolResult> updateItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex(container);
    final foundListId = itemIndex[itemId];
    if (foundListId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }

    final items = await container.read(shoppingListItemsProvider(foundListId).future);
    final foundItem = items.where((i) => i.id == itemId).firstOrNull;
    if (foundItem == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }

    var updated = foundItem;
    if (args['name'] != null) {
      updated = updated.copyWith(name: args['name'] as String);
    }
    if (args['quantity'] != null) {
      updated = updated.copyWith(quantity: (args['quantity'] as num).toInt());
    }
    if (args['unit'] != null) {
      updated = updated.copyWith(unit: _unit(args['unit'] as String));
    }
    if (args['category'] != null) {
      updated = updated.copyWith(categoryId: args['category'] as String);
    }
    if (args['estimatedPrice'] != null) {
      updated = updated.copyWith(estimatedPrice: (args['estimatedPrice'] as num).toDouble());
    }

    await container.read(shoppingListItemsProvider(foundListId).notifier).updateItem(updated);
    return ToolResult(
      toolCallId: '',
      content: 'Item atualizado com sucesso.',
      resultData: {'previousState': foundItem.toJson(), 'listId': foundListId},
    );
  }

  Future<ToolResult> removeItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex(container);
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    final items = await container.read(shoppingListItemsProvider(listId).future);
    final foundItem = items.where((i) => i.id == itemId).firstOrNull;
    if (foundItem == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await container.read(shoppingListItemsProvider(listId).notifier).removeItem(itemId);
    return ToolResult(
      toolCallId: '',
      content: 'Item removido com sucesso.',
      resultData: {'previousState': foundItem.toJson(), 'listId': listId},
    );
  }

  Future<ToolResult> togglePurchased(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex(container);
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    final items = await container.read(shoppingListItemsProvider(listId).future);
    final foundItem = items.where((i) => i.id == itemId).firstOrNull;
    if (foundItem == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await container.read(shoppingListItemsProvider(listId).notifier).togglePurchased(itemId);
    final updatedItems = await container.read(shoppingListItemsProvider(listId).future);
    final item = updatedItems.where((i) => i.id == itemId).first;
    return ToolResult(
      toolCallId: '',
      content: 'Item "${item.name}" marcado como ${item.isPurchased ? "comprado" : "não comprado"}.',
      resultData: {'previousState': foundItem.toJson(), 'listId': listId},
    );
  }

  Future<ToolResult> togglePurchasedBatch(ProviderContainer container, Map<String, dynamic> args) async {
    final idsStr = args['itemIds'] as String;
    final isPurchased = args['isPurchased'] as bool;
    final ids = idsStr.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
    final itemIndex = await _buildItemIndex(container);
    final idsByList = <String, List<String>>{};
    for (final id in ids) {
      final listId = itemIndex[id];
      if (listId != null) {
        idsByList.putIfAbsent(listId, () => []).add(id);
      }
    }
    final previousStates = <Map<String, dynamic>>[];
    for (final listId in idsByList.keys) {
      final items = await container.read(shoppingListItemsProvider(listId).future);
      for (final item in items) {
        if (idsByList[listId]!.contains(item.id)) {
          previousStates.add(item.toJson());
        }
      }
    }
    for (final entry in idsByList.entries) {
      await container.read(shoppingListItemsProvider(entry.key).notifier).togglePurchasedBatch(entry.value, isPurchased);
    }
    final action = isPurchased ? 'comprados' : 'não comprados';
    return ToolResult(
      toolCallId: '',
      content: '${ids.length} itens marcados como $action.',
      resultData: {'previousStates': previousStates},
    );
  }

  Future<ToolResult> incrementQuantity(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex(container);
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await container.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(itemId);
    return const ToolResult(toolCallId: '', content: 'Quantidade aumentada.');
  }

  Future<ToolResult> decrementQuantity(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex(container);
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await container.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(itemId);
    return const ToolResult(toolCallId: '', content: 'Quantidade diminuída.');
  }

  Future<ToolResult> clearPurchased(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(shoppingListItemsProvider(listId).notifier).clearPurchased();
    return const ToolResult(toolCallId: '', content: 'Itens comprados removidos da lista.');
  }

  Future<ToolResult> clearAllItems(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await container.read(shoppingListItemsProvider(listId).notifier).clearAll();
    return const ToolResult(toolCallId: '', content: 'Todos os itens foram removidos da lista.');
  }

  Future<ToolResult> reorderItems(ProviderContainer container, Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final oldIndex = (args['oldIndex'] as num).toInt();
    final newIndex = (args['newIndex'] as num).toInt();
    await container.read(shoppingListItemsProvider(listId).notifier).reorderItem(oldIndex, newIndex);
    return const ToolResult(toolCallId: '', content: 'Item reordenado com sucesso.');
  }
}
