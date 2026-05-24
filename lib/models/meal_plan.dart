import 'package:uuid/uuid.dart';

enum MealType {
  breakfast,
  lunch,
  dinner,
  snack;

  String get label {
    switch (this) {
      case MealType.breakfast: return 'Café da Manhã';
      case MealType.lunch: return 'Almoço';
      case MealType.dinner: return 'Jantar';
      case MealType.snack: return 'Lanche';
    }
  }
}

class MealPlan {
  MealPlan({
    String? id,
    required this.date,
    required this.recipeId,
    required this.recipeName,
    this.servings = 1,
    this.mealType = MealType.lunch,
    this.note,
  }) : id = id ?? const Uuid().v4();

  factory MealPlan.fromJson(Map<String, dynamic> json) {
    return MealPlan(
      id: json['id'] as String?,
      date: _parseDate(json['date']),
      recipeId: json['recipeId'] as String? ?? '',
      recipeName: json['recipeName'] as String? ?? '',
      servings: json['servings'] as int? ?? 1,
      mealType: MealType.values.firstWhere((e) => e.name == json['mealType'], orElse: () => MealType.lunch),
      note: json['note'] as String?,
    );
  }

  final String id;
  final DateTime date;
  final String recipeId;
  final String recipeName;
  final int servings;
  final MealType mealType;
  final String? note;

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'recipeId': recipeId,
      'recipeName': recipeName,
      'servings': servings,
      'mealType': mealType.name,
      if (note != null) 'note': note,
    };
  }

  MealPlan copyWith({
    String? id,
    DateTime? date,
    String? recipeId,
    String? recipeName,
    int? servings,
    MealType? mealType,
    String? note,
  }) {
    return MealPlan(
      id: id ?? this.id,
      date: date ?? this.date,
      recipeId: recipeId ?? this.recipeId,
      recipeName: recipeName ?? this.recipeName,
      servings: servings ?? this.servings,
      mealType: mealType ?? this.mealType,
      note: note ?? this.note,
    );
  }
}
