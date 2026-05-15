import 'package:uuid/uuid.dart';
import 'category.dart';
import 'unit.dart';

class ShoppingItem {
  ShoppingItem({
    String? id,
    required this.shoppingListId,
    required this.name,
    required this.quantity,
    required this.category,
    this.unit = Unit.un,
    this.estimatedPrice,
    this.isPurchased = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory ShoppingItem.fromJson(Map<String, dynamic> json) {
    return ShoppingItem(
      id: json['id'] as String,
      shoppingListId: json['shoppingListId'] as String,
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      category: Category.values.firstWhere(
        (e) => e.name == json['category'],
        orElse: () => Category.others,
      ),
      unit: json['unit'] != null
          ? Unit.values.firstWhere((e) => e.name == json['unit'], orElse: () => Unit.un)
          : Unit.un,
      estimatedPrice: json['estimatedPrice'] as double?,
      isPurchased: json['isPurchased'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
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

  ShoppingItem copyWith({
    String? id,
    String? shoppingListId,
    String? name,
    int? quantity,
    Category? category,
    Unit? unit,
    double? estimatedPrice,
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
      estimatedPrice: estimatedPrice ?? this.estimatedPrice,
      isPurchased: isPurchased ?? this.isPurchased,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
