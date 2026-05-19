import 'package:flutter/material.dart';
// coverage:ignore-start

class AppColors {
  AppColors._();

  static const Color premiumAmber = Color(0xFFFFA000);
  static const Color surfaceDark = Color(0xFF111318);

  static const Map<String, Color> categoryColors = {
    'Frutas': Color(0xFF4CAF50),
    'Limpeza': Color(0xFF2196F3),
    'Bebidas': Color(0xFF9C27B0),
    'Padaria': Color(0xFFFF9800),
    'Outros': Color(0xFF607D8B),
  };

  static const Map<String, IconData> categoryIcons = {
    'Frutas': Icons.apple,
    'Limpeza': Icons.cleaning_services,
    'Bebidas': Icons.local_drink,
    'Padaria': Icons.bakery_dining,
    'Outros': Icons.category,
  };
}
// coverage:ignore-end
