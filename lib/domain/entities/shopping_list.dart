class ShoppingList {
  ShoppingList({
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

  final String id;
  final String name;
  final double? budget;
  final String? ownerUid;
  final bool isArchived;
  final DateTime? archivedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  bool get isShared => ownerUid != null;

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
      ownerUid: identical(ownerUid, _sentinel)
          ? this.ownerUid
          : ownerUid as String?,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: identical(archivedAt, _sentinel)
          ? this.archivedAt
          : archivedAt as DateTime?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
