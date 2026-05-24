class Recipe {
  Recipe({
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

  final String id;
  final String name;
  final String? description;
  final List<String> ingredients;
  final List<String> steps;
  final int? prepTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  Recipe copyWith({
    String? id,
    String? name,
    Object? description = _sentinel,
    List<String>? ingredients,
    List<String>? steps,
    Object? prepTime = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Recipe(
      id: id ?? this.id,
      name: name ?? this.name,
      description: identical(description, _sentinel) ? this.description : description as String?,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
      prepTime: identical(prepTime, _sentinel) ? this.prepTime : prepTime as int?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
