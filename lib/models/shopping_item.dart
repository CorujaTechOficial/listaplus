import 'package:uuid/uuid.dart';
import 'category.dart';

class ShoppingItem {
  final String id;
  final String name;
  final int quantity;
  final Category category;
  final double? estimatedPrice;
  final bool isPurchased;
  final DateTime createdAt;
  final DateTime updatedAt;

  ShoppingItem({
    String? id,
    required this.name,
    required this.quantity,
    required this.category,
    this.estimatedPrice,
    this.isPurchased = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  ShoppingItem copyWith({
    String? id,
    String? name,
    int? quantity,
    Category? category,
    double? estimatedPrice,
    bool? isPurchased,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingItem(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      category: category ?? this.category,
      estimatedPrice: estimatedPrice ?? this.estimatedPrice,
      isPurchased: isPurchased ?? this.isPurchased,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'category': category.name,
      'estimatedPrice': estimatedPrice,
      'isPurchased': isPurchased,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory ShoppingItem.fromJson(Map<String, dynamic> json) {
    return ShoppingItem(
      id: json['id'] as String,
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      category: Category.values.firstWhere(
        (e) => e.name == json['category'],
        orElse: () => Category.others,
      ),
      estimatedPrice: json['estimatedPrice'] as double?,
      isPurchased: json['isPurchased'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }
}
