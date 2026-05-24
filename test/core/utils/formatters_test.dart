import 'package:test/test.dart';
import 'package:shopping_list/core/utils/formatters.dart';

void main() {
  group('formatCurrency', () {
    test('formats positive value in BRL', () {
      expect(formatCurrency(10.5), 'R\$ 10,50');
    });

    test('formats zero', () {
      expect(formatCurrency(0), 'R\$ 0,00');
    });

    test('formats integer value', () {
      expect(formatCurrency(42), 'R\$ 42,00');
    });
  });

  group('pluralize', () {
    test('returns singular for count 1', () {
      expect(pluralize(1, 'item', 'itens'), '1 item');
    });

    test('returns plural for count > 1', () {
      expect(pluralize(3, 'item', 'itens'), '3 itens');
    });

    test('returns plural for count 0', () {
      expect(pluralize(0, 'item', 'itens'), '0 itens');
    });
  });
}
