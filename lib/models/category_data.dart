import 'package:flutter/material.dart';

class CategoryData {
  CategoryData({
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    required this.sortOrder,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    final codepoint = (json['iconCodepoint'] as num?)?.toInt();
    return CategoryData(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? json['id'] as String? ?? '',
      color: (json['color'] as num?)?.toInt() ?? 0xFF78909C,
      icon: codepoint != null ? _iconFromCodepoint(codepoint) : Icons.category,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 999,
      createdAt:
          json['createdAt'] != null ? DateTime.tryParse(json['createdAt'].toString()) : null,
    );
  }

  static IconData _iconFromCodepoint(int codepoint) {
    return _iconMap[codepoint] ?? Icons.category;
  }

  static final Map<int, IconData> _iconMap = {
    Icons.apple.codePoint: Icons.apple,
    Icons.cleaning_services.codePoint: Icons.cleaning_services,
    Icons.local_drink.codePoint: Icons.local_drink,
    Icons.bakery_dining.codePoint: Icons.bakery_dining,
    Icons.restaurant.codePoint: Icons.restaurant,
    Icons.egg.codePoint: Icons.egg,
    Icons.eco.codePoint: Icons.eco,
    Icons.grass.codePoint: Icons.grass,
    Icons.face.codePoint: Icons.face,
    Icons.ac_unit.codePoint: Icons.ac_unit,
    Icons.inventory.codePoint: Icons.inventory,
    Icons.restaurant_menu.codePoint: Icons.restaurant_menu,
    Icons.cake.codePoint: Icons.cake,
    Icons.liquor.codePoint: Icons.liquor,
    Icons.set_meal.codePoint: Icons.set_meal,
    Icons.kitchen.codePoint: Icons.kitchen,
    Icons.handyman.codePoint: Icons.handyman,
    Icons.pets.codePoint: Icons.pets,
    Icons.child_care.codePoint: Icons.child_care,
    Icons.category.codePoint: Icons.category,
  };

  final String id;
  final String name;
  final int color;
  final IconData icon;
  final int sortOrder;
  final DateTime? createdAt;

  Color get colorValue => Color(color);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'iconCodepoint': icon.codePoint,
      'sortOrder': sortOrder,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  CategoryData copyWith({
    String? id,
    String? name,
    int? color,
    IconData? icon,
    int? sortOrder,
    DateTime? createdAt,
  }) {
    return CategoryData(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  static List<CategoryData> get defaults => [
        CategoryData(
          id: 'fruits',
          name: 'Frutas',
          color: 0xFF4CAF50,
          icon: Icons.apple,
          sortOrder: 0,
        ),
        CategoryData(
          id: 'cleaning',
          name: 'Limpeza',
          color: 0xFF2196F3,
          icon: Icons.cleaning_services,
          sortOrder: 1,
        ),
        CategoryData(
          id: 'beverages',
          name: 'Bebidas',
          color: 0xFF9C27B0,
          icon: Icons.local_drink,
          sortOrder: 2,
        ),
        CategoryData(
          id: 'bakery',
          name: 'Padaria',
          color: 0xFFFF9800,
          icon: Icons.bakery_dining,
          sortOrder: 3,
        ),
        CategoryData(
          id: 'meat',
          name: 'Carnes',
          color: 0xFFE53935,
          icon: Icons.restaurant,
          sortOrder: 4,
        ),
        CategoryData(
          id: 'dairy',
          name: 'Laticínios',
          color: 0xFF42A5F5,
          icon: Icons.egg,
          sortOrder: 5,
        ),
        CategoryData(
          id: 'vegetables',
          name: 'Hortaliças',
          color: 0xFF66BB6A,
          icon: Icons.eco,
          sortOrder: 6,
        ),
        CategoryData(
          id: 'grains',
          name: 'Grãos/Cereais',
          color: 0xFF8D6E63,
          icon: Icons.grass,
          sortOrder: 7,
        ),
        CategoryData(
          id: 'hygiene',
          name: 'Higiene Pessoal',
          color: 0xFF26A69A,
          icon: Icons.face,
          sortOrder: 8,
        ),
        CategoryData(
          id: 'frozen',
          name: 'Congelados',
          color: 0xFF3F51B5,
          icon: Icons.ac_unit,
          sortOrder: 9,
        ),
        CategoryData(
          id: 'canned',
          name: 'Enlatados',
          color: 0xFF78909C,
          icon: Icons.inventory,
          sortOrder: 10,
        ),
        CategoryData(
          id: 'seasonings',
          name: 'Temperos',
          color: 0xFFFFC107,
          icon: Icons.restaurant_menu,
          sortOrder: 11,
        ),
        CategoryData(
          id: 'sweets',
          name: 'Doces/Sobremesas',
          color: 0xFFEC407A,
          icon: Icons.cake,
          sortOrder: 12,
        ),
        CategoryData(
          id: 'alcohol',
          name: 'Bebidas Alcoólicas',
          color: 0xFF7E57C2,
          icon: Icons.liquor,
          sortOrder: 13,
        ),
        CategoryData(
          id: 'fish',
          name: 'Peixes',
          color: 0xFF29B6F6,
          icon: Icons.set_meal,
          sortOrder: 14,
        ),
        CategoryData(
          id: 'cold_cuts',
          name: 'Frios',
          color: 0xFF00BCD4,
          icon: Icons.kitchen,
          sortOrder: 15,
        ),
        CategoryData(
          id: 'utilities',
          name: 'Utilidades',
          color: 0xFF607D8B,
          icon: Icons.handyman,
          sortOrder: 16,
        ),
        CategoryData(
          id: 'pet',
          name: 'Pet',
          color: 0xFFFF7043,
          icon: Icons.pets,
          sortOrder: 17,
        ),
        CategoryData(
          id: 'baby',
          name: 'Bebês',
          color: 0xFFF06292,
          icon: Icons.child_care,
          sortOrder: 18,
        ),
        CategoryData(
          id: 'others',
          name: 'Outros',
          color: 0xFF78909C,
          icon: Icons.category,
          sortOrder: 99,
        ),
      ];
}
