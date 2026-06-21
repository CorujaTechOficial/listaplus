import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/utils/category_item_grouping.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/shopping_item.dart';

ShoppingItem _item(String name, String categoryId) => ShoppingItem(
  shoppingListId: 'list',
  name: name,
  quantity: 1,
  categoryId: categoryId,
);

void main() {
  final categories = [
    CategoryData.defaults.firstWhere((category) => category.id == 'dairy'),
    CategoryData.defaults.firstWhere((category) => category.id == 'fruits'),
  ];

  test('groups items and follows category sortOrder', () {
    final groups = groupItemsByCategory([
      _item('Leite', 'dairy'),
      _item('Banana', 'fruits'),
      _item('Queijo', 'dairy'),
    ], categories);

    expect(groups.map((group) => group.categoryId), ['fruits', 'dairy']);
    expect(groups.last.items.map((item) => item.name), ['Leite', 'Queijo']);
  });

  test('places unknown categories after configured categories', () {
    final groups = groupItemsByCategory([
      _item('Produto especial', 'custom'),
      _item('Banana', 'fruits'),
    ], categories);

    expect(groups.map((group) => group.categoryId), ['fruits', 'custom']);
    expect(groups.last.category, isNull);
  });

  test('returns no groups for an empty list', () {
    expect(groupItemsByCategory([], categories), isEmpty);
  });
}
