import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/providers/chat_tool_descriptions.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('friendlyToolDescription', () {
    const defaultCurrency = 'BRL';

    test('returns correct description for get_lists', () {
      final toolCall = AgentToolCall(id: '1', name: 'get_lists', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Buscando listas de compras');
    });

    test('returns correct description for create_list', () {
      final toolCall = AgentToolCall(id: '1', name: 'create_list', arguments: {'name': 'Feira'});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Criando lista "Feira"');
    });

    test('returns correct description for add_item', () {
      final toolCall = AgentToolCall(id: '1', name: 'add_item', arguments: {'name': 'Arroz'});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Adicionando item "Arroz"');
    });

    test('returns correct description for toggle_purchased_batch', () {
      final toolCall = AgentToolCall(
        id: '1',
        name: 'toggle_purchased_batch',
        arguments: {'itemIds': 'a,b,c', 'isPurchased': true},
      );
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Marcar 3 itens como comprados');
    });

    test('returns correct description for set_budget with currency', () {
      final toolCall = AgentToolCall(id: '1', name: 'set_budget', arguments: {'budget': 150.0});
      final result = friendlyToolDescription(toolCall, currency: 'BRL');
      expect(result, contains('150'));
      expect(result, contains('R\$'));
    });

    test('returns default description for unknown tool', () {
      final toolCall = AgentToolCall(id: '1', name: 'unknown_tool', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Executando ferramenta unknown_tool');
    });

    test('returns correct description for clear_all_items', () {
      final toolCall = AgentToolCall(id: '1', name: 'clear_all_items', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Limpando lista');
    });

    test('returns correct description for reorder_items', () {
      final toolCall = AgentToolCall(id: '1', name: 'reorder_items', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Reordenando itens');
    });

    test('returns correct description for generate_artifact', () {
      final toolCall = AgentToolCall(id: '1', name: 'generate_artifact', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Gerando interface interativa');
    });

    test('returns correct description for open_paywall', () {
      final toolCall = AgentToolCall(id: '1', name: 'open_paywall', arguments: {});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Abrindo tela de assinatura');
    });

    test('includes item name in add_pantry_item', () {
      final toolCall = AgentToolCall(id: '1', name: 'add_pantry_item', arguments: {'name': 'Tomate'});
      expect(friendlyToolDescription(toolCall, currency: defaultCurrency), 'Adicionando item "Tomate" à despensa');
    });
  });

  group('updateActivityForTool', () {
    test('returns correct activity for add_shopping_item', () {
      expect(updateActivityForTool('add_shopping_item'), 'Adding items to list...');
    });

    test('returns correct activity for add_shopping_items', () {
      expect(updateActivityForTool('add_shopping_items'), 'Adding items to list...');
    });

    test('returns correct activity for create_recipe', () {
      expect(updateActivityForTool('create_recipe'), 'Saving recipe...');
    });

    test('returns correct activity for generate_artifact', () {
      expect(updateActivityForTool('generate_artifact'), 'Generating personalized content...');
    });

    test('returns Processing for unknown tool', () {
      expect(updateActivityForTool('unknown'), 'Processing...');
    });

    test('returns correct activity for schedule_meal', () {
      expect(updateActivityForTool('schedule_meal'), 'Organizing your menu...');
    });

    test('returns correct activity for search_products', () {
      expect(updateActivityForTool('search_products'), 'Searching products...');
    });

    test('returns correct activity for share_shopping_list', () {
      expect(updateActivityForTool('share_shopping_list'), 'Generating share link...');
    });
  });
}
