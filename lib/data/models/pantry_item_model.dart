import '../../domain/entities/pantry_item.dart';
import '../../domain/entities/unit.dart';

class PantryItemModel {
  PantryItemModel({
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

  factory PantryItemModel.fromJson(Map<String, dynamic> json) {
    return PantryItemModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      unit: Unit.byName(json['unit'] as String? ?? ''),
      categoryId: json['categoryId'] as String? ?? 'others',
      minQuantity: (json['minQuantity'] as num?)?.toInt() ?? 0,
      expiryDate: _parseDateNullable(json['expiryDate']),
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory PantryItemModel.fromEntity(PantryItem entity) {
    return PantryItemModel(
      id: entity.id,
      name: entity.name,
      quantity: entity.quantity,
      unit: entity.unit,
      categoryId: entity.categoryId,
      minQuantity: entity.minQuantity,
      expiryDate: entity.expiryDate,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    if (value is DateTime) {
      return value;
    }
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

  static DateTime? _parseDateNullable(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is DateTime) {
      return value;
    }
    return DateTime.tryParse(value.toString());
  }

  final String id;
  final String name;
  final int quantity;
  final Unit unit;
  final String categoryId;
  final int minQuantity;
  final DateTime? expiryDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  PantryItem toEntity() {
    return PantryItem(
      id: id,
      name: name,
      quantity: quantity,
      unit: unit,
      categoryId: categoryId,
      minQuantity: minQuantity,
      expiryDate: expiryDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'unit': unit.name,
      'categoryId': categoryId,
      'minQuantity': minQuantity,
      'expiryDate': expiryDate?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
