import 'category.dart';
import 'unit.dart';

class ShoppingItem {
  ShoppingItem({
    required this.id,
    required this.shoppingListId,
    required this.name,
    this.quantity = 1,
    this.category = Category.others,
    this.unit = Unit.un,
    this.estimatedPrice,
    this.isPurchased = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String shoppingListId;
  final String name;
  final int quantity;
  final Category category;
  final Unit unit;
  final double? estimatedPrice;
  final bool isPurchased;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  ShoppingItem copyWith({
    String? id,
    String? shoppingListId,
    String? name,
    int? quantity,
    Category? category,
    Unit? unit,
    Object? estimatedPrice = _sentinel,
    bool? isPurchased,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingItem(
      id: id ?? this.id,
      shoppingListId: shoppingListId ?? this.shoppingListId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      category: category ?? this.category,
      unit: unit ?? this.unit,
      estimatedPrice: identical(estimatedPrice, _sentinel)
          ? this.estimatedPrice
          : estimatedPrice as double?,
      isPurchased: isPurchased ?? this.isPurchased,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
