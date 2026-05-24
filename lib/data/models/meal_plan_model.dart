import '../../domain/entities/meal_plan.dart';

class MealPlanModel {
  MealPlanModel({
    required this.id,
    required this.recipeId,
    required this.date,
    this.mealType,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory MealPlanModel.fromJson(Map<String, dynamic> json) {
    return MealPlanModel(
      id: json['id'] as String? ?? '',
      recipeId: json['recipeId'] as String? ?? '',
      date: _parseDate(json['date']),
      mealType: json['mealType'] as String?,
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory MealPlanModel.fromEntity(MealPlan entity) {
    return MealPlanModel(
      id: entity.id,
      recipeId: entity.recipeId,
      date: entity.date,
      mealType: entity.mealType,
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

  final String id;
  final String recipeId;
  final DateTime date;
  final String? mealType;
  final DateTime createdAt;
  final DateTime updatedAt;

  MealPlan toEntity() {
    return MealPlan(
      id: id,
      recipeId: recipeId,
      date: date,
      mealType: mealType,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'recipeId': recipeId,
      'date': date.toIso8601String(),
      'mealType': mealType,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
