import 'package:uuid/uuid.dart';
// coverage:ignore-start

class ShoppingList {
  ShoppingList({
    String? id,
    required this.name,
    this.budget,
    this.ownerUid,
    this.isArchived = false,
    this.archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory ShoppingList.fromJson(Map<String, dynamic> json) {
    return ShoppingList(
      id: json['id'] as String,
      name: json['name'] as String,
      budget: json['budget'] as double?,
      ownerUid: json['ownerUid'] as String?,
      isArchived: json['isArchived'] as bool? ?? false,
      archivedAt: json['archivedAt'] != null
          ? DateTime.parse(json['archivedAt'] as String)
          : null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  final String id;
  final String name;
  final double? budget;
  final String? ownerUid;
  final bool isArchived;
  final DateTime? archivedAt;

  bool get isShared => ownerUid != null;

  final DateTime createdAt;
  final DateTime updatedAt;

  ShoppingList copyWith({
    String? id,
    String? name,
    double? budget,
    String? ownerUid,
    bool? isArchived,
    DateTime? archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingList(
      id: id ?? this.id,
      name: name ?? this.name,
      budget: budget ?? this.budget,
      ownerUid: ownerUid ?? this.ownerUid,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: archivedAt ?? this.archivedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
// coverage:ignore-end
