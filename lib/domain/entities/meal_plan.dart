class MealPlan {
  MealPlan({
    required this.id,
    required this.recipeId,
    required this.date,
    this.mealType,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String recipeId;
  final DateTime date;
  final String? mealType;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  MealPlan copyWith({
    String? id,
    String? recipeId,
    DateTime? date,
    Object? mealType = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MealPlan(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      date: date ?? this.date,
      mealType: identical(mealType, _sentinel) ? this.mealType : mealType as String?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
