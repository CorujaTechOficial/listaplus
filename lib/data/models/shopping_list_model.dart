import '../../domain/entities/shopping_list.dart';

class ShoppingListModel {
  ShoppingListModel({
    required this.id,
    required this.name,
    this.budget,
    this.ownerUid,
    this.isArchived = false,
    this.archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory ShoppingListModel.fromJson(Map<String, dynamic> json) {
    return ShoppingListModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      budget: (json['budget'] as num?)?.toDouble(),
      ownerUid: json['ownerUid'] as String?,
      isArchived: json['isArchived'] as bool? ?? false,
      archivedAt: _parseDateNullable(json['archivedAt']),
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory ShoppingListModel.fromEntity(ShoppingList entity) {
    return ShoppingListModel(
      id: entity.id,
      name: entity.name,
      budget: entity.budget,
      ownerUid: entity.ownerUid,
      isArchived: entity.isArchived,
      archivedAt: entity.archivedAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

  static DateTime? _parseDateNullable(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString());
  }

  final String id;
  final String name;
  final double? budget;
  final String? ownerUid;
  final bool isArchived;
  final DateTime? archivedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  ShoppingList toEntity() {
    return ShoppingList(
      id: id,
      name: name,
      budget: budget,
      ownerUid: ownerUid,
      isArchived: isArchived,
      archivedAt: archivedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'budget': budget,
      'ownerUid': ownerUid,
      'isArchived': isArchived,
      'archivedAt': archivedAt?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
