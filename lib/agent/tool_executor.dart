import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/logger_service.dart';

import '../models/unit.dart';
import '../providers/firestore_service_provider.dart';
import '../providers/backup_provider.dart';
import '../providers/current_list_provider.dart';
import '../providers/dark_mode_provider.dart';
import '../providers/monthly_budget_provider.dart';
import '../providers/user_profile_provider.dart';
import '../providers/pantry_items_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/share_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/recipes_provider.dart';
import '../providers/meal_plans_provider.dart';
import '../models/recipe.dart';
import '../models/meal_plan.dart';
import '../models/shopping_item.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';
import '../models/interactive_artifact.dart';
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
        case 'save_user_preference':
          return _saveUserPreference(call.arguments);
        case 'delete_user_preference':
          return _deleteUserPreference(call.arguments);
        case 'get_user_profile':
          return _getUserProfile();
        case 'update_user_profile':
          return _updateUserProfile(call.arguments);

        // --- Backup tools ---
        case 'export_backup':
          return _exportBackup();
        case 'import_backup':
          return _importBackup(call.arguments);
        case 'generate_artifact':
          return _generateArtifact(call.arguments);

        // --- Recipe tools ---
        case 'get_recipes':
          return _getRecipes(call.arguments);
        case 'create_recipe':
          return _createRecipe(call.arguments);
        case 'delete_recipe':
          return _deleteRecipe(call.arguments);

        // --- Meal Planner tools ---
        case 'get_meal_plan':
          return _getMealPlan(call.arguments);
        case 'schedule_meal':
          return _scheduleMeal(call.arguments);
        case 'remove_meal_plan_entry':
          return _removeMealPlanEntry(call.arguments);

        default:
          return ToolResult(
            toolCallId: call.id,
            content: 'Ferramenta desconhecida: ${call.name}',
            success: false,
          );
      }
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[ToolExecutor] Error executing ${call.name}', extra: {
        'operation': 'execute_tool',
        'toolName': call.name,
        'toolId': call.id,
        'arguments': call.arguments,
      });
      return ToolResult(
        toolCallId: call.id,
        content: 'Erro ao executar ${call.name}: $e',
        success: false,
      );
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
      result.writeln('$i. $status ${item.name} (${item.quantity} ${item.unit.label}) [${item.categoryId}]$price');
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
    final itemId = const Uuid().v4();

    await _ref.read(shoppingListItemsProvider(listId).notifier).addItem(
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
      resultData: {
        'itemId': itemId,
        'listId': listId,
      },
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
      updated = updated.copyWith(categoryId: args['category'] as String);
    }
    if (args['estimatedPrice'] != null) {
      updated = updated.copyWith(estimatedPrice: (args['estimatedPrice'] as num).toDouble());
    }

    await _ref.read(shoppingListItemsProvider(foundListId).notifier).updateItem(updated);
    return ToolResult(
      toolCallId: '',
      content: 'Item atualizado com sucesso.',
      resultData: {
        'previousState': foundItem.toJson(),
        'listId': foundListId,
      },
    );
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
    final items = await _ref.read(shoppingListItemsProvider(listId).future);
    final foundItem = items.where((i) => i.id == itemId).firstOrNull;
    if (foundItem == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).removeItem(itemId);
    return ToolResult(
      toolCallId: '',
      content: 'Item removido com sucesso.',
      resultData: {
        'previousState': foundItem.toJson(),
        'listId': listId,
      },
    );
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
    final items = await _ref.read(shoppingListItemsProvider(listId).future);
    final foundItem = items.where((i) => i.id == itemId).firstOrNull;
    if (foundItem == null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Item não encontrado.',
        success: false,
      );
    }
    await _ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(itemId);
    final updatedItems = await _ref.read(shoppingListItemsProvider(listId).future);
    final item = updatedItems.where((i) => i.id == itemId).first;
    return ToolResult(
      toolCallId: '',
      content: 'Item "${item.name}" marcado como ${item.isPurchased ? "comprado" : "não comprado"}.',
      resultData: {
        'previousState': foundItem.toJson(),
        'listId': listId,
      },
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
    
    final previousStates = <Map<String, dynamic>>[];
    for (final listId in idsByList.keys) {
      final items = await _ref.read(shoppingListItemsProvider(listId).future);
      final listIds = idsByList[listId]!;
      for (final item in items) {
        if (listIds.contains(item.id)) {
          previousStates.add(item.toJson());
        }
      }
    }

    for (final entry in idsByList.entries) {
      await _ref.read(shoppingListItemsProvider(entry.key).notifier).togglePurchasedBatch(entry.value, isPurchased);
    }
    final action = isPurchased ? 'comprados' : 'não comprados';
    return ToolResult(
      toolCallId: '',
      content: '${ids.length} itens marcados como $action.',
      resultData: {
        'previousStates': previousStates,
      },
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
          categoryId: categoryLabel ?? 'others',
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
      updated = updated.copyWith(categoryId: args['category'] as String);
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
    final previousBudget = await _ref.read(monthlyBudgetProvider.future);
    await _ref.read(monthlyBudgetProvider.notifier).setBudget(budget);
    return ToolResult(
      toolCallId: '',
      content: 'Orçamento mensal definido como R\$${budget.toStringAsFixed(2)}.',
      resultData: {
        'previousBudget': previousBudget,
      },
    );
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

  Future<ToolResult> _saveUserPreference(Map<String, dynamic> args) async {
    final key = args['key'] as String;
    final value = args['value'] as String;
    await _ref.read(firestoreServiceProvider).updatePreference(key, value);
    return ToolResult(
      toolCallId: '',
      content: 'Preferência "$key" salva como "$value".',
    );
  }

  Future<ToolResult> _deleteUserPreference(Map<String, dynamic> args) async {
    final key = args['key'] as String;
    await _ref.read(firestoreServiceProvider).deletePreference(key);
    return ToolResult(
      toolCallId: '',
      content: 'Preferência "$key" removida.',
    );
  }

  Future<ToolResult> _getUserProfile() async {
    final profile = await _ref.read(userProfileProvider.future);
    final profileStr = profile.toString();
    if (profile.isEmpty) {
      return const ToolResult(
        toolCallId: '',
        content: 'Nenhuma preferência de perfil configurada ainda.',
      );
    }
    return ToolResult(toolCallId: '', content: profileStr);
  }

  Future<ToolResult> _updateUserProfile(Map<String, dynamic> args) async {
    final current = await _ref.read(userProfileProvider.future);
    final updated = current.copyWith(
      preferredStore: args['preferredStore'] as String?,
      dietaryRestrictions: args['dietaryRestrictions'] as String?,
      avoidedStores: args['avoidedStores'] as String?,
      notes: args['notes'] as String?,
    );
    await _ref.read(userProfileServiceProvider).updateProfile(updated);
    return const ToolResult(
      toolCallId: '',
      content: 'Perfil atualizado com sucesso.',
    );
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

  Future<ToolResult> _generateArtifact(Map<String, dynamic> args) async {
    final title = args['title'] as String;
    final icon = args['icon'] as String;
    final description = args['description'] as String?;

    // Parse controls
    final controlsJson = args['controls'] as String;
    final List<dynamic> controlsRaw = jsonDecode(controlsJson) as List<dynamic>;
    final controls = controlsRaw.map((e) {
      return ArtifactControl.fromJson(Map<String, dynamic>.from(e as Map));
    }).toList();

    // Parse items
    final itemsJson = args['items'] as String;
    final List<dynamic> itemsRaw = jsonDecode(itemsJson) as List<dynamic>;
    final items = itemsRaw.map((e) {
      return ArtifactItem.fromJson(Map<String, dynamic>.from(e as Map));
    }).toList();

    final baseServings = (args['baseServings'] as num?)?.toDouble() ?? 1.0;
    final budget = (args['budget'] as num?)?.toDouble();
    final showBudgetBar = args['showBudgetBar'] as bool? ?? false;
    final commitLabel = args['commitLabel'] as String? ?? 'Adicionar à Lista';

    final commitModeStr = args['commitMode'] as String? ?? 'addAll';
    final commitMode = ArtifactCommitMode.fromString(commitModeStr);

    final artifact = InteractiveArtifact(
      title: title,
      icon: icon,
      description: description,
      controls: controls,
      items: items,
      baseServings: baseServings,
      budget: budget,
      showBudgetBar: showBudgetBar,
      commitLabel: commitLabel,
      commitMode: commitMode,
    );

    return ToolResult(
      toolCallId: '',
      content: 'Artefato "$title" gerado com sucesso.',
      resultData: {
        'artifact': artifact.toJson(),
      },
    );
  }

  // --- Recipes ---

  Future<ToolResult> _getRecipes(Map<String, dynamic> args) async {
    final query = args['query'] as String?;
    final recipes = await _ref.read(recipesProvider.future);
    
    var filtered = recipes;
    if (query != null && query.isNotEmpty) {
      filtered = recipes.where((r) => r.name.toLowerCase().contains(query.toLowerCase())).toList();
    }

    if (filtered.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'Nenhuma receita encontrada.');
    }

    final result = StringBuffer('Minhas Receitas:\n');
    for (final recipe in filtered) {
      result.writeln('- ${recipe.name} (ID: ${recipe.id}): ${recipe.description}');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> _createRecipe(Map<String, dynamic> args) async {
    final name = args['name'] as String;
    final description = args['description'] as String;
    final ingredientsJson = args['ingredients'] as String;
    final instructionsStr = args['instructions'] as String;
    final prepTime = (args['prepTimeMinutes'] as num?)?.toInt() ?? 30;

    final List<dynamic> ingredientsRaw = jsonDecode(ingredientsJson) as List<dynamic>;
    final ingredients = ingredientsRaw.map((e) {
      final data = Map<String, dynamic>.from(e as Map);
      return ShoppingItem(
        id: const Uuid().v4(),
        shoppingListId: '',
        name: data['name'] as String,
        quantity: (data['quantity'] as num).toInt(),
        unit: _unit(data['unit'] as String? ?? 'un'),
        categoryId: data['category'] as String? ?? 'others',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    }).toList();

    final instructions = instructionsStr.split(RegExp(r'[;,]')).map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

    final recipe = Recipe(
      id: const Uuid().v4(),
      name: name,
      description: description,
      ingredients: ingredients,
      instructions: instructions,
      prepTimeMinutes: prepTime,
      createdAt: DateTime.now(),
    );

    await _ref.read(recipesProvider.notifier).saveRecipe(recipe);
    return ToolResult(toolCallId: '', content: 'Receita "$name" salva com sucesso!');
  }

  Future<ToolResult> _deleteRecipe(Map<String, dynamic> args) async {
    final id = args['recipeId'] as String;
    await _ref.read(recipesProvider.notifier).deleteRecipe(id);
    return const ToolResult(toolCallId: '', content: 'Receita excluída.');
  }

  // --- Meal Planner ---

  Future<ToolResult> _getMealPlan(Map<String, dynamic> args) async {
    final startStr = args['startDate'] as String?;
    final endStr = args['endDate'] as String?;
    
    final start = startStr != null ? DateTime.parse(startStr) : null;
    final end = endStr != null ? DateTime.parse(endStr) : null;

    final plans = await _ref.read(mealPlansProvider(start: start, end: end).future);
    
    if (plans.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'Nenhuma refeição agendada para este período.');
    }

    final result = StringBuffer('Planejamento de Refeições:\n');
    for (final plan in plans) {
      final date = '${plan.date.day}/${plan.date.month}/${plan.date.year}';
      result.writeln('- $date (${plan.mealType.name}): ${plan.recipeName} (${plan.servings} porções)');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> _scheduleMeal(Map<String, dynamic> args) async {
    final recipeId = args['recipeId'] as String;
    final dateStr = args['date'] as String;
    final mealTypeStr = args['mealType'] as String;
    final servings = (args['servings'] as num?)?.toInt() ?? 1;

    final recipes = await _ref.read(recipesProvider.future);
    final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
    
    if (recipe == null) {
      return const ToolResult(toolCallId: '', content: 'Receita não encontrada.', success: false);
    }

    final mealPlan = MealPlan(
      id: const Uuid().v4(),
      date: DateTime.parse(dateStr),
      recipeId: recipeId,
      recipeName: recipe.name,
      servings: servings,
      mealType: MealType.values.firstWhere((e) => e.name == mealTypeStr, orElse: () => MealType.lunch),
    );

    await _ref.read(mealPlansProvider().notifier).saveMealPlan(mealPlan);
    return const ToolResult(toolCallId: '', content: 'Refeição agendada com sucesso!');
    }

    Future<ToolResult> _removeMealPlanEntry(Map<String, dynamic> args) async {
    final id = args['mealPlanId'] as String;
    await _ref.read(mealPlansProvider().notifier).deleteMealPlan(id);
    return const ToolResult(toolCallId: '', content: 'Entrada do planejamento removida.');
    }
}
