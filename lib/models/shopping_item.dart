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
      id: json['id'] as String?,
      shoppingListId: json['shoppingListId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      category: Category.values.firstWhere(
        (e) => e.name == json['category'],
        orElse: () => Category.others,
      ),
      unit: json['unit'] != null
          ? Unit.values.firstWhere((e) => e.name == json['unit'], orElse: () => Unit.un)
          : Unit.un,
      estimatedPrice: (json['estimatedPrice'] as num?)?.toDouble(),
      isPurchased: json['isPurchased'] as bool? ?? false,
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    if (value is DateTime) {
      return value;
    }
    final parsed = DateTime.tryParse(value.toString());
    return parsed ?? DateTime.now();
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
      estimatedPrice: identical(estimatedPrice, _sentinel) ? this.estimatedPrice : estimatedPrice as double?,
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
