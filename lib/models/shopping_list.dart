import 'package:uuid/uuid.dart';
import 'package:shopping_list/core/utils/formatters.dart';

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
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      budget: (json['budget'] as num?)?.toDouble(),
      ownerUid: json['ownerUid'] as String?,
      isArchived: json['isArchived'] as bool? ?? false,
      archivedAt: json['archivedAt'] != null
          ? DateTime.tryParse(json['archivedAt'] as String)
          : null,
      createdAt: safeParseDate(json['createdAt']),
      updatedAt: safeParseDate(json['updatedAt']),
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

  static const _sentinel = Object();

  ShoppingList copyWith({
    String? id,
    String? name,
    Object? budget = _sentinel,
    Object? ownerUid = _sentinel,
    bool? isArchived,
    Object? archivedAt = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingList(
      id: id ?? this.id,
      name: name ?? this.name,
      budget: identical(budget, _sentinel) ? this.budget : budget as double?,
      ownerUid: identical(ownerUid, _sentinel) ? this.ownerUid : ownerUid as String?,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: identical(archivedAt, _sentinel) ? this.archivedAt : archivedAt as DateTime?,
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
