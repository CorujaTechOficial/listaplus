import 'package:flutter/material.dart';

class CategoryData {
  CategoryData({
    required this.id,
    required this.name,
    required this.color,
    required this.iconCodepoint,
    required this.sortOrder,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? json['id'] as String? ?? '',
      color: (json['color'] as num?)?.toInt() ?? 0xFF78909C,
      iconCodepoint: (json['iconCodepoint'] as num?)?.toInt() ?? Icons.category.codePoint,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 999,
      createdAt:
          json['createdAt'] != null ? DateTime.tryParse(json['createdAt'].toString()) : null,
    );
  }

  final String id;
  final String name;
  final int color;
  final int iconCodepoint;
  final int sortOrder;
  final DateTime? createdAt;

  // ignore: non_const_argument_for_const_parameter
  IconData get icon => IconData(iconCodepoint, fontFamily: 'MaterialIcons');
  Color get colorValue => Color(color);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'iconCodepoint': iconCodepoint,
      'sortOrder': sortOrder,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  CategoryData copyWith({
    String? id,
    String? name,
    int? color,
    int? iconCodepoint,
    int? sortOrder,
    DateTime? createdAt,
  }) {
    return CategoryData(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      iconCodepoint: iconCodepoint ?? this.iconCodepoint,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  static List<CategoryData> get defaults => [
        CategoryData(
          id: 'fruits',
          name: 'Frutas',
          color: 0xFF4CAF50,
          iconCodepoint: Icons.apple.codePoint,
          sortOrder: 0,
        ),
        CategoryData(
          id: 'cleaning',
          name: 'Limpeza',
          color: 0xFF2196F3,
          iconCodepoint: Icons.cleaning_services.codePoint,
          sortOrder: 1,
        ),
        CategoryData(
          id: 'beverages',
          name: 'Bebidas',
          color: 0xFF9C27B0,
          iconCodepoint: Icons.local_drink.codePoint,
          sortOrder: 2,
        ),
        CategoryData(
          id: 'bakery',
          name: 'Padaria',
          color: 0xFFFF9800,
          iconCodepoint: Icons.bakery_dining.codePoint,
          sortOrder: 3,
        ),
        CategoryData(
          id: 'meat',
          name: 'Carnes',
          color: 0xFFE53935,
          iconCodepoint: Icons.restaurant.codePoint,
          sortOrder: 4,
        ),
        CategoryData(
          id: 'dairy',
          name: 'Laticínios',
          color: 0xFF42A5F5,
          iconCodepoint: Icons.egg.codePoint,
          sortOrder: 5,
        ),
        CategoryData(
          id: 'vegetables',
          name: 'Hortaliças',
          color: 0xFF66BB6A,
          iconCodepoint: Icons.eco.codePoint,
          sortOrder: 6,
        ),
        CategoryData(
          id: 'grains',
          name: 'Grãos/Cereais',
          color: 0xFF8D6E63,
          iconCodepoint: Icons.grass.codePoint,
          sortOrder: 7,
        ),
        CategoryData(
          id: 'hygiene',
          name: 'Higiene Pessoal',
          color: 0xFF26A69A,
          iconCodepoint: Icons.face.codePoint,
          sortOrder: 8,
        ),
        CategoryData(
          id: 'frozen',
          name: 'Congelados',
          color: 0xFF3F51B5,
          iconCodepoint: Icons.ac_unit.codePoint,
          sortOrder: 9,
        ),
        CategoryData(
          id: 'canned',
          name: 'Enlatados',
          color: 0xFF78909C,
          iconCodepoint: Icons.inventory.codePoint,
          sortOrder: 10,
        ),
        CategoryData(
          id: 'seasonings',
          name: 'Temperos',
          color: 0xFFFFC107,
          iconCodepoint: Icons.restaurant_menu.codePoint,
          sortOrder: 11,
        ),
        CategoryData(
          id: 'sweets',
          name: 'Doces/Sobremesas',
          color: 0xFFEC407A,
          iconCodepoint: Icons.cake.codePoint,
          sortOrder: 12,
        ),
        CategoryData(
          id: 'alcohol',
          name: 'Bebidas Alcoólicas',
          color: 0xFF7E57C2,
          iconCodepoint: Icons.liquor.codePoint,
          sortOrder: 13,
        ),
        CategoryData(
          id: 'fish',
          name: 'Peixes',
          color: 0xFF29B6F6,
          iconCodepoint: Icons.set_meal.codePoint,
          sortOrder: 14,
        ),
        CategoryData(
          id: 'cold_cuts',
          name: 'Frios',
          color: 0xFF00BCD4,
          iconCodepoint: Icons.kitchen.codePoint,
          sortOrder: 15,
        ),
        CategoryData(
          id: 'utilities',
          name: 'Utilidades',
          color: 0xFF607D8B,
          iconCodepoint: Icons.handyman.codePoint,
          sortOrder: 16,
        ),
        CategoryData(
          id: 'pet',
          name: 'Pet',
          color: 0xFFFF7043,
          iconCodepoint: Icons.pets.codePoint,
          sortOrder: 17,
        ),
        CategoryData(
          id: 'baby',
          name: 'Bebês',
          color: 0xFFF06292,
          iconCodepoint: Icons.child_care.codePoint,
          sortOrder: 18,
        ),
        CategoryData(
          id: 'others',
          name: 'Outros',
          color: 0xFF78909C,
          iconCodepoint: Icons.category.codePoint,
          sortOrder: 99,
        ),
      ];
}
