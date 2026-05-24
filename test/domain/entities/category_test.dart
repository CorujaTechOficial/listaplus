import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/category.dart';

void main() {
  group('Category', () {
    test('has correct enum values', () {
      expect(Category.values.length, 6);
      expect(Category.fruits.name, 'fruits');
      expect(Category.cleaning.name, 'cleaning');
      expect(Category.beverages.name, 'beverages');
      expect(Category.bakery.name, 'bakery');
      expect(Category.others.name, 'others');
    });

    test('localizedLabel returns correct string', () {
      expect(Category.fruits.label, 'Frutas');
      expect(Category.cleaning.label, 'Limpeza');
      expect(Category.beverages.label, 'Bebidas');
      expect(Category.bakery.label, 'Padaria');
      expect(Category.others.label, 'Outros');
    });

    test('defaultCategories contains all values', () {
      expect(Category.defaultCategories.length, Category.values.length);
    });

    test('byId returns correct category', () {
      expect(Category.byId('fruits'), Category.fruits);
      expect(Category.byId('others'), Category.others);
      expect(Category.byId('unknown'), Category.others);
    });
  });
}
