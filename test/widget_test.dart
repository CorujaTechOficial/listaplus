import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:test/test.dart';

void main() {
  test('ShoppingItem model roundtrip', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Maçã',
      quantity: 2,
      categoryId: 'fruits',
      estimatedPrice: 3.50,
    );

    final json = item.toJson();
    final restored = ShoppingItem.fromJson(json);

    expect(restored.name, 'Maçã');
    expect(restored.quantity, 2);
    expect(restored.categoryId, 'fruits');
    expect(restored.estimatedPrice, 3.50);
  });

  test('ShoppingItem copyWith updates only specified fields', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Pão',
      quantity: 1,
      categoryId: 'bakery',
    );

    final updated = item.copyWith(name: 'Pão Integral', isPurchased: true);

    expect(updated.name, 'Pão Integral');
    expect(updated.isPurchased, true);
    expect(updated.quantity, 1);
    expect(updated.categoryId, 'bakery');
  });

  test('ShoppingItem default values', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Leite',
      quantity: 1,
      categoryId: 'beverages',
    );

    expect(item.isPurchased, false);
    expect(item.estimatedPrice, isNull);
    expect(item.id, isNotEmpty);
  });

  test('CategoryData defaults have correct names', () {
    expect(CategoryData.defaults.firstWhere((c) => c.id == 'fruits').name, 'Frutas');
    expect(CategoryData.defaults.firstWhere((c) => c.id == 'cleaning').name, 'Limpeza');
    expect(CategoryData.defaults.firstWhere((c) => c.id == 'beverages').name, 'Bebidas');
    expect(CategoryData.defaults.firstWhere((c) => c.id == 'bakery').name, 'Padaria');
    expect(CategoryData.defaults.firstWhere((c) => c.id == 'others').name, 'Outros');
  });

  test('CategoryData defaults count', () {
    expect(CategoryData.defaults.length, 20);
  });
}
