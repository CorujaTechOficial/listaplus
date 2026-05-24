import '../../domain/entities/shopping_item.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/unit.dart';

class ShoppingItemModel {
  ShoppingItemModel({
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

  factory ShoppingItemModel.fromJson(Map<String, dynamic> json) {
    return ShoppingItemModel(
      id: json['id'] as String? ?? '',
      shoppingListId: json['shoppingListId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      category: Category.byId(json['category'] as String? ?? ''),
      unit: Unit.byName(json['unit'] as String? ?? ''),
      estimatedPrice: (json['estimatedPrice'] as num?)?.toDouble(),
      isPurchased: json['isPurchased'] as bool? ?? false,
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory ShoppingItemModel.fromEntity(ShoppingItem entity) {
    return ShoppingItemModel(
      id: entity.id,
      shoppingListId: entity.shoppingListId,
      name: entity.name,
      quantity: entity.quantity,
      category: entity.category,
      unit: entity.unit,
      estimatedPrice: entity.estimatedPrice,
      isPurchased: entity.isPurchased,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

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

  ShoppingItem toEntity() {
    return ShoppingItem(
      id: id,
      shoppingListId: shoppingListId,
      name: name,
      quantity: quantity,
      category: category,
      unit: unit,
      estimatedPrice: estimatedPrice,
      isPurchased: isPurchased,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'shoppingListId': shoppingListId,
      'name': name,
      'quantity': quantity,
      'category': category.name,
      'unit': unit.name,
      'estimatedPrice': estimatedPrice,
      'isPurchased': isPurchased,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
