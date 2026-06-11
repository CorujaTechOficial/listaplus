import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/providers/chat_helpers.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/unit.dart';

void main() {
  group('languageInstruction', () {
    test('returns Portuguese instruction for pt locale', () {
      final result = languageInstruction('pt_BR');
      expect(result, contains('português'));
    });

    test('returns English instruction for en locale', () {
      final result = languageInstruction('en_US');
      expect(result, contains('current language'));
    });

    test('returns Spanish instruction for es locale', () {
      final result = languageInstruction('es_ES');
      expect(result, contains('español'));
    });

    test('returns French instruction for fr locale', () {
      final result = languageInstruction('fr_FR');
      expect(result, contains('français'));
    });

    test('returns German instruction for de locale', () {
      final result = languageInstruction('de_DE');
      expect(result, contains('Deutsch'));
    });

    test('returns English instruction for unknown locale', () {
      final result = languageInstruction('sw');
      expect(result, contains('current language'));
    });
  });

  group('buildListSystemPrompt', () {
    test('includes list name in prompt', () {
      final list = ShoppingList(id: '1', name: 'Minha Lista');
      final items = <ShoppingItem>[];
      final result = buildListSystemPrompt(list, items);
      expect(result, contains('Minha Lista'));
      expect(result, contains('Kipi'));
    });

    test('shows item details in prompt', () {
      final items = [
        ShoppingItem(
          name: 'Arroz',
          quantity: 2,
          unit: Unit.kg,
          shoppingListId: '1',
          categoryId: 'cat1',
        ),
        ShoppingItem(
          name: 'Feijão',
          quantity: 1,
          unit: Unit.un,
          shoppingListId: '1',
          categoryId: 'cat1',
        ),
      ];
      final result = buildListSystemPrompt(null, items);
      expect(result, contains('Arroz'));
      expect(result, contains('Feijão'));
      expect(result, contains('2'));
    });

    test('shows purchased items with [Purchased] tag', () {
      final items = [
        ShoppingItem(
          name: 'Leite',
          quantity: 1,
          unit: Unit.L,
          shoppingListId: '1',
          categoryId: 'cat1',
          isPurchased: true,
        ),
      ];
      final result = buildListSystemPrompt(null, items);
      expect(result, contains('[Purchased]'));
    });

    test('uses default name for null list', () {
      final result = buildListSystemPrompt(null, []);
      expect(result, contains('Shopping List'));
    });

    test('truncates items beyond maxItems with overflow message', () {
      final items = List.generate(
        35,
        (i) => ShoppingItem(
          name: 'Item $i',
          quantity: 1,
          unit: Unit.un,
          shoppingListId: '1',
          categoryId: 'cat1',
        ),
      );
      final result = buildListSystemPrompt(null, items);
      expect(result, contains('mais 5 itens'));
    });

    test('applies language instruction for given locale', () {
      final result = buildListSystemPrompt(null, [], locale: 'en_US');
      expect(result, contains('Explain'));
    });
  });

  group('buildGlobalSystemPrompt', () {
    test('includes all lists when total items under limit', () {
      final allItems = {
        'Casa': [
          ShoppingItem(name: 'Sabão', quantity: 1, unit: Unit.un, shoppingListId: '1', categoryId: 'cat1'),
        ],
        'Feira': [
          ShoppingItem(name: 'Banana', quantity: 3, unit: Unit.un, shoppingListId: '2', categoryId: 'cat1'),
        ],
      };
      final result = buildGlobalSystemPrompt(allItems);
      expect(result, contains('Casa'));
      expect(result, contains('Feira'));
      expect(result, contains('Sabão'));
      expect(result, contains('Banana'));
    });

    test('shows only list names when total items over limit', () {
      final items = List.generate(
        31,
        (i) => ShoppingItem(
          name: 'Item $i',
          quantity: 1,
          unit: Unit.un,
          shoppingListId: '1',
          categoryId: 'cat1',
        ),
      );
      final allItems = {'Casa': items};
      final result = buildGlobalSystemPrompt(allItems);
      expect(result, contains('Casa'));
      expect(result, contains('get_items'));
      expect(result, contains('(31 itens)'));
    });

    test('handles empty map', () {
      final result = buildGlobalSystemPrompt({});
      expect(result, contains('Kipi'));
    });
  });

  group('extractSuggestionsFromText', () {
    test('returns null suggestions when no [SUGGESTIONS] block', () {
      final result = extractSuggestionsFromText('Hello world');
      expect(result.text, 'Hello world');
      expect(result.suggestions, isNull);
    });

    test('returns null suggestions for empty content', () {
      final result = extractSuggestionsFromText('');
      expect(result.text, '');
      expect(result.suggestions, isNull);
    });

    test('extracts suggestions from valid block', () {
      const content = 'Here is my response.\n[SUGGESTIONS]\n[{"label":"Add","prompt":"Add item","icon":"add_shopping_cart"}]\n[/SUGGESTIONS]';
      final result = extractSuggestionsFromText(content);
      expect(result.text, 'Here is my response.');
      expect(result.suggestions, isNotNull);
      expect(result.suggestions!.length, 1);
      expect(result.suggestions!.first.label, 'Add');
    });

    test('handles malformed JSON in suggestions gracefully', () {
      const content = 'Response.\n[SUGGESTIONS]\n{invalid json}\n[/SUGGESTIONS]';
      final result = extractSuggestionsFromText(content);
      expect(result.text, content);
      expect(result.suggestions, isNull);
    });

    test('handles partial suggestions block gracefully', () {
      const content = 'Response.\n[SUGGESTIONS]\n[{"label":"Test"}]';
      final result = extractSuggestionsFromText(content);
      expect(result.text, content);
      expect(result.suggestions, isNull);
    });
  });

  group('generateSuggestedReplies', () {
    test('returns null for empty content', () {
      expect(generateSuggestedReplies('', 'list1'), isNull);
    });

    test('returns recipe-related replies when content mentions recipe', () {
      final result = generateSuggestedReplies('Que receita boa!', 'list1');
      expect(result, isNotNull);
      expect(result!.any((r) => r.contains('itens')), isTrue);
    });

    test('returns organize reply when content mentions organizar', () {
      final result = generateSuggestedReplies('Pode organizar os itens?', 'list1');
      expect(result, isNotNull);
      expect(result!.any((r) => r.contains('Organizar')), isTrue);
    });

    test('returns general replies for no specific keywords', () {
      final result = generateSuggestedReplies('Obrigado pela ajuda!', 'list1');
      expect(result, isNotNull);
      expect(result!.any((r) => r.contains('receita')), isTrue);
    });

    test('returns generic replies when no listId', () {
      final result = generateSuggestedReplies('Olá', null);
      expect(result, isNotNull);
      expect(result!.any((r) => r.contains('Dicas')), isTrue);
      expect(result.any((r) => r.contains('Criar')), isTrue);


    });

    test('limits to 3 suggestions', () {
      final result = generateSuggestedReplies('Obrigado!', 'list1');
      expect(result, isNotNull);
      expect(result!.length, lessThanOrEqualTo(3));
    });
  });
}
