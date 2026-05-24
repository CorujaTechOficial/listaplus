import 'unit.dart';

class PantryItem {
  PantryItem({
    required this.id,
    required this.name,
    this.quantity = 1,
    this.unit = Unit.un,
    this.categoryId = 'others',
    this.minQuantity = 0,
    this.expiryDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String name;
  final int quantity;
  final Unit unit;
  final String categoryId;
  final int minQuantity;
  final DateTime? expiryDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  bool get isLow => quantity <= minQuantity;

  PantryItem copyWith({
    String? id,
    String? name,
    int? quantity,
    Unit? unit,
    String? categoryId,
    int? minQuantity,
    Object? expiryDate = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PantryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      categoryId: categoryId ?? this.categoryId,
      minQuantity: minQuantity ?? this.minQuantity,
      expiryDate: identical(expiryDate, _sentinel) ? this.expiryDate : expiryDate as DateTime?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
