import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category.dart';
import '../models/unit.dart';
import '../providers/backup_provider.dart';
import '../providers/current_list_provider.dart';
import '../providers/dark_mode_provider.dart';
import '../providers/monthly_budget_provider.dart';
import '../providers/pantry_items_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/share_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/shopping_lists_provider.dart';
import 'tool.dart';

class ToolExecutor {
  ToolExecutor(this._ref);

  final Ref _ref;

  Future<ToolResult> execute(AgentToolCall call) async {
    if (AgentTools.premiumToolNames.contains(call.name)) {
      final isPremium = _ref.read(premiumProvider).value ?? false;
      if (!isPremium) {
        return ToolResult(
          toolCallId: call.id,
          content: 'Esta funcionalidade requer assinatura Premium.',
          success: false,
        );
      }
    }

    try {
      switch (call.name) {
        // --- List tools ---
        case 'get_lists':
          return _getLists();
        case 'get_current_list':
          return _getCurrentList();
        case 'set_current_list':
          return _setCurrentList(call.arguments);
        case 'create_list':
          return _createList(call.arguments);
        case 'rename_list':
          return _renameList(call.arguments);
        case 'delete_list':
          return _deleteList(call.arguments);
        case 'archive_list':
          return _archiveList(call.arguments);
        case 'unarchive_list':
          return _unarchiveList(call.arguments);

        // --- Item tools ---
        case 'get_items':
          return _getItems(call.arguments);
        case 'add_item':
          return _addItem(call.arguments);
        case 'update_item':
          return _updateItem(call.arguments);
        case 'remove_item':
          return _removeItem(call.arguments);
        case 'toggle_purchased':
          return _togglePurchased(call.arguments);
        case 'toggle_purchased_batch':
          return _togglePurchasedBatch(call.arguments);
        case 'increment_quantity':
          return _incrementQuantity(call.arguments);
        case 'decrement_quantity':
          return _decrementQuantity(call.arguments);
        case 'clear_purchased':
          return _clearPurchased(call.arguments);
        case 'clear_all_items':
          return _clearAllItems(call.arguments);
        case 'reorder_items':
          return _reorderItems(call.arguments);

        // --- Pantry tools ---
        case 'get_pantry_items':
          return _getPantryItems();
        case 'add_pantry_item':
          return _addPantryItem(call.arguments);
        case 'update_pantry_item':
          return _updatePantryItem(call.arguments);
        case 'remove_pantry_item':
          return _removePantryItem(call.arguments);
        case 'consume_pantry_item':
          return _consumePantryItem(call.arguments);
        case 'restock_pantry_item':
          return _restockPantryItem(call.arguments);
        case 'clear_pantry':
          return _clearPantry();

        // --- Budget tools ---
        case 'get_budget':
          return _getBudget();
        case 'set_budget':
          return _setBudget(call.arguments);

        // --- Share tools ---
        case 'create_share_code':
          return _createShareCode(call.arguments);
        case 'import_shared_list':
          return _importSharedList(call.arguments);

        // --- Config tools ---
        case 'get_theme':
          return _getTheme();
        case 'set_theme':
          return _setTheme(call.arguments);

        // --- Backup tools ---
        case 'export_backup':
          return _exportBackup();
        case 'import_backup':
          return _importBackup(call.arguments);

        default:
          return ToolResult(
            toolCallId: call.id,
            content: 'Ferramenta desconhecida: ${call.name}',
            success: false,
          );
      }
    } on Exception catch (e) {
      return ToolResult(
        toolCallId: call.id,
        content: 'Erro ao executar ${call.name}: $e',
        success: false,
      );
    }
  }

  Category _category(String label) {
    switch (label) {
      case 'Frutas':
        return Category.fruits;
      case 'Limpeza':
        return Category.cleaning;
      case 'Bebidas':
        return Category.beverages;
      case 'Padaria':
        return Category.bakery;
      default:
        return Category.others;
    }
  }

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

  Future<String?> _resolveCurrentListId() async {
    final currentId = await _ref.read(currentListIdProvider.future);
    if (currentId != null) {
      return currentId;
    }
    final lists = await _ref.read(shoppingListsProvider.future);
    return lists.isNotEmpty ? lists.first.id : null;
  }

  Future<ToolResult> _getLists() async {
    final lists = await _ref.read(shoppingListsProvider.future);
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

  Future<ToolResult> _getCurrentList() async {
    final currentId = await _resolveCurrentListId();
    if (currentId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma lista selecionada. Crie ou selecione uma lista primeiro.',
      );
    }
    final lists = await _ref.read(shoppingListsProvider.future);
    final list = lists.where((l) => l.id == currentId).firstOrNull;
    if (list == null) {
      return const ToolResult(toolCallId: '', content: 'Lista atual não encontrada.');
    }
    return ToolResult(
      toolCallId: '',
      content: 'Lista atual: ${list.name} (ID: ${list.id})${list.budget != null ? ', Orçamento: R\$${list.budget!.toStringAsFixed(2)}' : ''}',
    );
  }

  Future<ToolResult> _setCurrentList(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(currentListIdProvider.notifier).setCurrentList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista atual alterada com sucesso.');
  }

  Future<ToolResult> _createList(Map<String, dynamic> args) async {
    final name = args['name'] as String;
    final budget = args['budget'] != null ? (args['budget'] as num).toDouble() : null;
    final list = await _ref.read(shoppingListsProvider.notifier).createList(name, budget: budget);
    return ToolResult(
      toolCallId: '',
      content: 'Lista "$name" criada com sucesso! (ID: ${list.id})',
    );
  }

  Future<ToolResult> _renameList(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final name = args['name'] as String;
    final lists = await _ref.read(shoppingListsProvider.future);
    final list = lists.where((l) => l.id == listId).firstOrNull;
    if (list == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Lista não encontrada.',
        success: false,
      );
    }
    await _ref.read(shoppingListsProvider.notifier).updateList(list.copyWith(name: name));
    return ToolResult(toolCallId: '', content: 'Lista renomeada para "$name".');
  }

  Future<ToolResult> _deleteList(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(shoppingListsProvider.notifier).deleteList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista excluída permanentemente.');
  }

  Future<ToolResult> _archiveList(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(shoppingListsProvider.notifier).archiveList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista arquivada com sucesso.');
  }

  Future<ToolResult> _unarchiveList(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(shoppingListsProvider.notifier).unarchiveList(listId);
    return const ToolResult(toolCallId: '', content: 'Lista desarquivada com sucesso.');
  }

  Future<ToolResult> _getItems(Map<String, dynamic> args) async {
    var listId = args['listId'] as String?;
    listId ??= await _resolveCurrentListId();
    if (listId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma lista encontrada.',
        success: false,
      );
    }
    final items = await _ref.read(shoppingListItemsProvider(listId).future);
    if (items.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'A lista está vazia.');
    }
    final result = StringBuffer('Itens da lista:\n');
    for (var i = 0; i < items.length; i++) {
      final item = items[i];
      final status = item.isPurchased ? '✅' : '⬜';
      final price = item.estimatedPrice != null ? ' R\$${item.estimatedPrice!.toStringAsFixed(2)}' : '';
      result.writeln('$i. $status ${item.name} (${item.quantity} ${item.unit.label}) [${item.category.label}]$price');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> _addItem(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final name = args['name'] as String;
    final quantity = (args['quantity'] as num).toInt();
    final unitLabel = args['unit'] as String?;
    final categoryLabel = args['category'] as String?;
    final price = args['estimatedPrice'] != null ? (args['estimatedPrice'] as num).toDouble() : null;

    await _ref.read(shoppingListItemsProvider(listId).notifier).addItem(
          listId: listId,
          name: name,
          quantity: quantity,
          category: categoryLabel != null ? _category(categoryLabel) : Category.others,
          unit: unitLabel != null ? _unit(unitLabel) : Unit.un,
          estimatedPrice: price,
        );

    return ToolResult(
      toolCallId: '',
      content: 'Item "$name" adicionado com sucesso!',
    );
  }

  Future<Map<String, String>> _buildItemIndex() async {
    final allLists = await _ref.read(shoppingListsProvider.future);
    final index = <String, String>{};
    for (final list in allLists) {
      final items = await _ref.read(shoppingListItemsProvider(list.id).future);
      for (final item in items) {
        index[item.id] = list.id;
      }
    }
    return index;
  }

  Future<ToolResult> _updateItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex();
    final foundListId = itemIndex[itemId];
    if (foundListId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }

    final items = await _ref.read(shoppingListItemsProvider(foundListId).future);
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
      updated = updated.copyWith(category: _category(args['category'] as String));
    }
    if (args['estimatedPrice'] != null) {
      updated = updated.copyWith(estimatedPrice: (args['estimatedPrice'] as num).toDouble());
    }

    await _ref.read(shoppingListItemsProvider(foundListId).notifier).updateItem(updated);
    return const ToolResult(toolCallId: '', content: 'Item atualizado com sucesso.');
  }

  Future<ToolResult> _removeItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex();
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).removeItem(itemId);
    return const ToolResult(toolCallId: '', content: 'Item removido com sucesso.');
  }

  Future<ToolResult> _togglePurchased(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex();
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(itemId);
    final items = await _ref.read(shoppingListItemsProvider(listId).future);
    final item = items.where((i) => i.id == itemId).first;
    return ToolResult(
      toolCallId: '',
      content: 'Item "${item.name}" marcado como ${item.isPurchased ? "comprado" : "não comprado"}.',
    );
  }

  Future<ToolResult> _togglePurchasedBatch(Map<String, dynamic> args) async {
    final idsStr = args['itemIds'] as String;
    final isPurchased = args['isPurchased'] as bool;
    final ids = idsStr.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
    final itemIndex = await _buildItemIndex();
    final idsByList = <String, List<String>>{};
    for (final id in ids) {
      final listId = itemIndex[id];
      if (listId != null) {
        idsByList.putIfAbsent(listId, () => []).add(id);
      }
    }
    for (final entry in idsByList.entries) {
      await _ref.read(shoppingListItemsProvider(entry.key).notifier).togglePurchasedBatch(entry.value, isPurchased);
    }
    final action = isPurchased ? 'comprados' : 'não comprados';
    return ToolResult(
      toolCallId: '',
      content: '${ids.length} itens marcados como $action.',
    );
  }

  Future<ToolResult> _incrementQuantity(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex();
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(itemId);
    return const ToolResult(toolCallId: '', content: 'Quantidade aumentada.');
  }

  Future<ToolResult> _decrementQuantity(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final itemIndex = await _buildItemIndex();
    final listId = itemIndex[itemId];
    if (listId == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado.', success: false);
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(itemId);
    return const ToolResult(toolCallId: '', content: 'Quantidade diminuída.');
  }

  Future<ToolResult> _clearPurchased(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(shoppingListItemsProvider(listId).notifier).clearPurchased();
    return const ToolResult(toolCallId: '', content: 'Itens comprados removidos da lista.');
  }

  Future<ToolResult> _clearAllItems(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    await _ref.read(shoppingListItemsProvider(listId).notifier).clearAll();
    return const ToolResult(toolCallId: '', content: 'Todos os itens foram removidos da lista.');
  }

  Future<ToolResult> _reorderItems(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final oldIndex = (args['oldIndex'] as num).toInt();
    final newIndex = (args['newIndex'] as num).toInt();
    await _ref.read(shoppingListItemsProvider(listId).notifier).reorderItem(oldIndex, newIndex);
    return const ToolResult(toolCallId: '', content: 'Item reordenado com sucesso.');
  }

  // --- Pantry ---

  Future<ToolResult> _getPantryItems() async {
    final items = await _ref.read(pantryItemsProvider.future);
    if (items.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'A despensa está vazia.');
    }
    final result = StringBuffer('Itens na despensa:\n');
    for (final item in items) {
      final deficit = item.needsRestock ? ' (precisa repor: ${item.deficit})' : '';
      result.writeln('- ${item.name}: ${item.currentQuantity}/${item.idealQuantity} ${item.unit.label}$deficit');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> _addPantryItem(Map<String, dynamic> args) async {
    final name = args['name'] as String;
    final idealQty = (args['idealQuantity'] as num).toInt();
    final currentQty = args['currentQuantity'] != null ? (args['currentQuantity'] as num).toInt() : 0;
    final unitLabel = args['unit'] as String?;
    final categoryLabel = args['category'] as String?;
    final price = args['estimatedPrice'] != null ? (args['estimatedPrice'] as num).toDouble() : null;

    await _ref.read(pantryItemsProvider.notifier).addItem(
          name: name,
          idealQuantity: idealQty,
          currentQuantity: currentQty,
          unit: unitLabel != null ? _unit(unitLabel) : Unit.un,
          category: categoryLabel != null ? _category(categoryLabel) : Category.others,
          estimatedPrice: price,
        );

    return ToolResult(toolCallId: '', content: 'Item "$name" adicionado à despensa.');
  }

  Future<ToolResult> _updatePantryItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final items = await _ref.read(pantryItemsProvider.future);
    final item = items.where((i) => i.id == itemId).firstOrNull;
    if (item == null) {
      return const ToolResult(toolCallId: '', content: 'Item não encontrado na despensa.', success: false);
    }
    var updated = item;
    if (args['name'] != null) {
      updated = updated.copyWith(name: args['name'] as String);
    }
    if (args['idealQuantity'] != null) {
      updated = updated.copyWith(idealQuantity: (args['idealQuantity'] as num).toInt());
    }
    if (args['unit'] != null) {
      updated = updated.copyWith(unit: _unit(args['unit'] as String));
    }
    if (args['category'] != null) {
      updated = updated.copyWith(category: _category(args['category'] as String));
    }
    await _ref.read(pantryItemsProvider.notifier).updateItem(updated);
    return const ToolResult(toolCallId: '', content: 'Item da despensa atualizado.');
  }

  Future<ToolResult> _removePantryItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    await _ref.read(pantryItemsProvider.notifier).removeItem(itemId);
    return const ToolResult(toolCallId: '', content: 'Item removido da despensa.');
  }

  Future<ToolResult> _consumePantryItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final quantity = args['quantity'] != null ? (args['quantity'] as num).toInt() : 1;
    await _ref.read(pantryItemsProvider.notifier).consumeItemMultiple(itemId, quantity);
    return const ToolResult(toolCallId: '', content: 'Item consumido da despensa.');
  }

  Future<ToolResult> _restockPantryItem(Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final amount = (args['amount'] as num).toInt();
    await _ref.read(pantryItemsProvider.notifier).restockItem(itemId, amount);
    return const ToolResult(toolCallId: '', content: 'Estoque do item reabastecido.');
  }

  Future<ToolResult> _clearPantry() async {
    await _ref.read(pantryItemsProvider.notifier).clearAll();
    return const ToolResult(toolCallId: '', content: 'Despensa limpa.');
  }

  // --- Budget ---

  Future<ToolResult> _getBudget() async {
    final budget = await _ref.read(monthlyBudgetProvider.future);
    if (budget == null) {
      return const ToolResult(toolCallId: '', content: 'Nenhum orçamento mensal definido.');
    }
    return ToolResult(
      toolCallId: '',
      content: 'Orçamento mensal: R\$${budget.toStringAsFixed(2)}',
    );
  }

  Future<ToolResult> _setBudget(Map<String, dynamic> args) async {
    final budget = (args['budget'] as num).toDouble();
    await _ref.read(monthlyBudgetProvider.notifier).setBudget(budget);
    return ToolResult(toolCallId: '', content: 'Orçamento mensal definido como R\$${budget.toStringAsFixed(2)}.');
  }

  // --- Share ---

  Future<ToolResult> _createShareCode(Map<String, dynamic> args) async {
    final listId = args['listId'] as String;
    final code = await _ref.read(shareServiceProvider).createShareCode(listId);
    return ToolResult(toolCallId: '', content: 'Código de compartilhamento: $code');
  }

  Future<ToolResult> _importSharedList(Map<String, dynamic> args) async {
    final code = args['code'] as String;
    final result = await _ref.read(shareServiceProvider).importSharedList(code);
    return ToolResult(
      toolCallId: '',
      content: 'Lista "${result.listName}" importada com sucesso!',
    );
  }

  // --- Config ---

  Future<ToolResult> _getTheme() async {
    final mode = await _ref.read(darkModeProvider.future);
    final labels = <String, String>{
      'ThemeMode.system': 'sistema',
      'ThemeMode.light': 'claro',
      'ThemeMode.dark': 'escuro',
    };
    return ToolResult(toolCallId: '', content: 'Tema atual: ${labels[mode.toString()] ?? mode.name}');
  }

  Future<ToolResult> _setTheme(Map<String, dynamic> args) async {
    final mode = args['mode'] as String;
    switch (mode) {
      case 'light':
        await _ref.read(darkModeProvider.notifier).setMode(ThemeMode.light);
      case 'dark':
        await _ref.read(darkModeProvider.notifier).setMode(ThemeMode.dark);
      default:
        await _ref.read(darkModeProvider.notifier).setMode(ThemeMode.system);
    }
    return ToolResult(toolCallId: '', content: 'Tema alterado para $mode.');
  }

  // --- Backup ---

  Future<ToolResult> _exportBackup() async {
    final json = await _ref.read(backupProvider).exportToJson();
    return ToolResult(toolCallId: '', content: json);
  }

  Future<ToolResult> _importBackup(Map<String, dynamic> args) async {
    final json = args['json'] as String;
    final result = await _ref.read(backupProvider).importFromJson(json);
    return ToolResult(toolCallId: '', content: result);
  }
}
