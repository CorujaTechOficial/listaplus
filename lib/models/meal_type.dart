import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class MealType {
  MealType({
    required this.id,
    required this.name,
    required this.color,
    required this.iconCodepoint,
    required this.sortOrder,
    this.isBuiltIn = false,
    this.isDeleted = false,
  });

  factory MealType.fromJson(Map<String, dynamic> json) {
    return MealType(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: (json['color'] as num?)?.toInt() ?? 0xFF4CAF50,
      iconCodepoint: (json['iconCodepoint'] as num?)?.toInt() ?? Icons.restaurant.codePoint,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      isBuiltIn: json['isBuiltIn'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
    );
  }

  final String id;
  final String name;
  final int color;
  final int iconCodepoint;
  final int sortOrder;
  final bool isBuiltIn;
  final bool isDeleted;

  Color get colorValue => Color(color);

  static final Map<int, IconData> _iconMap = {
    Icons.restaurant_menu_rounded.codePoint: Icons.restaurant_menu_rounded,
    Icons.wb_sunny_rounded.codePoint: Icons.wb_sunny_rounded,
    Icons.wb_twilight_rounded.codePoint: Icons.wb_twilight_rounded,
    Icons.nightlight_round.codePoint: Icons.nightlight_round,
    Icons.coffee_rounded.codePoint: Icons.coffee_rounded,
    Icons.bakery_dining_rounded.codePoint: Icons.bakery_dining_rounded,
    Icons.breakfast_dining_rounded.codePoint: Icons.breakfast_dining_rounded,
    Icons.lunch_dining_rounded.codePoint: Icons.lunch_dining_rounded,
    Icons.dinner_dining_rounded.codePoint: Icons.dinner_dining_rounded,
    Icons.cake_rounded.codePoint: Icons.cake_rounded,
    Icons.icecream_rounded.codePoint: Icons.icecream_rounded,
    Icons.cookie_rounded.codePoint: Icons.cookie_rounded,
    Icons.fastfood_rounded.codePoint: Icons.fastfood_rounded,
    Icons.local_pizza_rounded.codePoint: Icons.local_pizza_rounded,
    Icons.apple_rounded.codePoint: Icons.apple_rounded,
  };

  IconData get iconData => _iconMap[iconCodepoint] ?? Icons.restaurant;

  String localizedLabel(AppLocalizations l10n) {
    if (isBuiltIn) {
      switch (id) {
        case 'breakfast':
          return l10n.mealPlannerMealTypeBreakfast;
        case 'lunch':
          return l10n.mealPlannerMealTypeLunch;
        case 'dinner':
          return l10n.mealPlannerMealTypeDinner;
        case 'snack':
          return l10n.mealPlannerMealTypeSnack;
      }
    }
    return name;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'iconCodepoint': iconCodepoint,
      'sortOrder': sortOrder,
      'isBuiltIn': isBuiltIn,
      'isDeleted': isDeleted,
    };
  }

  MealType copyWith({
    String? id,
    String? name,
    int? color,
    int? iconCodepoint,
    int? sortOrder,
    bool? isBuiltIn,
    bool? isDeleted,
  }) {
    return MealType(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      iconCodepoint: iconCodepoint ?? this.iconCodepoint,
      sortOrder: sortOrder ?? this.sortOrder,
      isBuiltIn: isBuiltIn ?? this.isBuiltIn,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  static List<MealType> get defaults {
    return [
      MealType(
        id: 'breakfast',
        name: 'Breakfast',
        color: 0xFFFB8C00,
        iconCodepoint: Icons.wb_twilight_rounded.codePoint,
        sortOrder: 0,
        isBuiltIn: true,
      ),
      MealType(
        id: 'lunch',
        name: 'Lunch',
        color: 0xFF4CAF50,
        iconCodepoint: Icons.wb_sunny_rounded.codePoint,
        sortOrder: 1,
        isBuiltIn: true,
      ),
      MealType(
        id: 'dinner',
        name: 'Dinner',
        color: 0xFF5C6BC0,
        iconCodepoint: Icons.nightlight_round.codePoint,
        sortOrder: 2,
        isBuiltIn: true,
      ),
      MealType(
        id: 'snack',
        name: 'Snack',
        color: 0xFF8D6E63,
        iconCodepoint: Icons.coffee_rounded.codePoint,
        sortOrder: 3,
        isBuiltIn: true,
      ),
    ];
  }
}
