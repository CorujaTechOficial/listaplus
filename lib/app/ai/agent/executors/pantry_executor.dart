import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';

class PantryExecutor {
  const PantryExecutor();

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

  Future<ToolResult> getPantryItems(ProviderContainer container) async {
    final items = await container.read(pantryItemsProvider.future);
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

  Future<ToolResult> addPantryItem(ProviderContainer container, Map<String, dynamic> args) async {
    final name = args['name'] as String;
    final idealQty = (args['idealQuantity'] as num).toInt();
    final currentQty = args['currentQuantity'] != null ? (args['currentQuantity'] as num).toInt() : 0;
    final unitLabel = args['unit'] as String?;
    final categoryLabel = args['category'] as String?;
    final price = args['estimatedPrice'] != null ? (args['estimatedPrice'] as num).toDouble() : null;

    await container.read(pantryItemsProvider.notifier).addItem(
          name: name,
          idealQuantity: idealQty,
          currentQuantity: currentQty,
          unit: unitLabel != null ? _unit(unitLabel) : Unit.un,
          categoryId: categoryLabel ?? 'others',
          estimatedPrice: price,
        );

    return ToolResult(toolCallId: '', content: 'Item "$name" adicionado à despensa.');
  }

  Future<ToolResult> updatePantryItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final items = await container.read(pantryItemsProvider.future);
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
    await container.read(pantryItemsProvider.notifier).updateItem(updated);
    return const ToolResult(toolCallId: '', content: 'Item da despensa atualizado.');
  }

  Future<ToolResult> removePantryItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    await container.read(pantryItemsProvider.notifier).removeItem(itemId);
    return const ToolResult(toolCallId: '', content: 'Item removido da despensa.');
  }

  Future<ToolResult> consumePantryItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final quantity = args['quantity'] != null ? (args['quantity'] as num).toInt() : 1;
    await container.read(pantryItemsProvider.notifier).consumeItemMultiple(itemId, quantity);
    return const ToolResult(toolCallId: '', content: 'Item consumido da despensa.');
  }

  Future<ToolResult> restockPantryItem(ProviderContainer container, Map<String, dynamic> args) async {
    final itemId = args['itemId'] as String;
    final amount = (args['amount'] as num).toInt();
    await container.read(pantryItemsProvider.notifier).restockItem(itemId, amount);
    return const ToolResult(toolCallId: '', content: 'Estoque do item reabastecido.');
  }

  Future<ToolResult> clearPantry(ProviderContainer container) async {
    await container.read(pantryItemsProvider.notifier).clearAll();
    return const ToolResult(toolCallId: '', content: 'Despensa limpa.');
  }
}
