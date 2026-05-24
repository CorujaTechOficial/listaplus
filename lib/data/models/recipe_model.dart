import '../../domain/entities/recipe.dart';

class RecipeModel {
  RecipeModel({
    required this.id,
    required this.name,
    this.description,
    this.ingredients = const [],
    this.steps = const [],
    this.prepTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      steps: (json['steps'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      prepTime: (json['prepTime'] as num?)?.toInt(),
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory RecipeModel.fromEntity(Recipe entity) {
    return RecipeModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      ingredients: entity.ingredients,
      steps: entity.steps,
      prepTime: entity.prepTime,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

  final String id;
  final String name;
  final String? description;
  final List<String> ingredients;
  final List<String> steps;
  final int? prepTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  Recipe toEntity() {
    return Recipe(
      id: id,
      name: name,
      description: description,
      ingredients: ingredients,
      steps: steps,
      prepTime: prepTime,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'ingredients': ingredients,
      'steps': steps,
      'prepTime': prepTime,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
