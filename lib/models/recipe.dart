import 'package:uuid/uuid.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'shopping_item.dart';

class Recipe {
  Recipe({
    String? id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.instructions,
    this.prepTimeMinutes = 30,
    this.imageUrl,
    DateTime? createdAt,
    this.tags = const [],
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now();

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => ShoppingItem.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      instructions: (json['instructions'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      prepTimeMinutes: json['prepTimeMinutes'] as int? ?? 30,
      imageUrl: json['imageUrl'] as String?,
      createdAt: safeParseDate(json['createdAt']),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
    );
  }

  final String id;
  final String name;
  final String description;
  final List<ShoppingItem> ingredients;
  final List<String> instructions;
  final int prepTimeMinutes;
  final String? imageUrl;
  final DateTime createdAt;
  final List<String> tags;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'ingredients': ingredients.map((e) => e.toJson()).toList(),
      'instructions': instructions,
      'prepTimeMinutes': prepTimeMinutes,
      if (imageUrl != null) 'imageUrl': imageUrl,
      'createdAt': createdAt.toIso8601String(),
      'tags': tags,
    };
  }

  Recipe copyWith({
    String? id,
    String? name,
    String? description,
    List<ShoppingItem>? ingredients,
    List<String>? instructions,
    int? prepTimeMinutes,
    String? imageUrl,
    DateTime? createdAt,
    List<String>? tags,
  }) {
    return Recipe(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      prepTimeMinutes: prepTimeMinutes ?? this.prepTimeMinutes,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      tags: tags ?? this.tags,
    );
  }
}
