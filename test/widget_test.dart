import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:test/test.dart';

void main() {
  test('ShoppingItem model roundtrip', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Maçã',
      quantity: 2,
      category: Category.fruits,
      estimatedPrice: 3.50,
    );

    final json = item.toJson();
    final restored = ShoppingItem.fromJson(json);

    expect(restored.name, 'Maçã');
    expect(restored.quantity, 2);
    expect(restored.category, Category.fruits);
    expect(restored.estimatedPrice, 3.50);
  });

  test('ShoppingItem copyWith updates only specified fields', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Pão',
      quantity: 1,
      category: Category.bakery,
    );

    final updated = item.copyWith(name: 'Pão Integral', isPurchased: true);

    expect(updated.name, 'Pão Integral');
    expect(updated.isPurchased, true);
    expect(updated.quantity, 1);
    expect(updated.category, Category.bakery);
  });

  test('ShoppingItem default values', () {
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Leite',
      quantity: 1,
      category: Category.beverages,
    );

    expect(item.isPurchased, false);
    expect(item.estimatedPrice, isNull);
    expect(item.id, isNotEmpty);
  });

  test('Category enum has correct labels', () {
    expect(Category.fruits.label, 'Frutas');
    expect(Category.cleaning.label, 'Limpeza');
    expect(Category.beverages.label, 'Bebidas');
    expect(Category.bakery.label, 'Padaria');
    expect(Category.others.label, 'Outros');
  });

  test('Category values count', () {
    expect(Category.values.length, 5);
  });
}
