import 'package:flutter/material.dart';

enum PremiumFeature {
  unlimitedLists,
  sharing,
  history,
  export,
  themes,
  monthlyBudget,
  assistant;

  String get label {
    switch (this) {
      case PremiumFeature.unlimitedLists:
        return 'Listas ilimitadas';
      case PremiumFeature.sharing:
        return 'Compartilhar listas';
      case PremiumFeature.history:
        return 'Histórico completo';
      case PremiumFeature.export:
        return 'Exportar dados';
      case PremiumFeature.themes:
        return 'Temas personalizados';
      case PremiumFeature.monthlyBudget:
        return 'Orçamento mensal global';
      case PremiumFeature.assistant:
        return 'Assistente de IA Personalizado';
    }
  }

  IconData get icon {
    switch (this) {
      case PremiumFeature.unlimitedLists:
        return Icons.list;
      case PremiumFeature.sharing:
        return Icons.share;
      case PremiumFeature.history:
        return Icons.history;
      case PremiumFeature.export:
        return Icons.backup;
      case PremiumFeature.themes:
        return Icons.palette;
      case PremiumFeature.monthlyBudget:
        return Icons.account_balance_wallet;
      case PremiumFeature.assistant:
        return Icons.auto_awesome;
    }
  }
}

class ThemeOption {
  const ThemeOption({
    required this.name,
    required this.color,
    required this.isPremium,
  });

  final String name;
  final Color color;
  final bool isPremium;

  static const List<ThemeOption> options = [
    ThemeOption(name: 'Verde', color: Colors.green, isPremium: false),
    ThemeOption(name: 'Azul', color: Colors.blue, isPremium: false),
    ThemeOption(name: 'Roxo', color: Colors.purple, isPremium: false),
    ThemeOption(name: 'Vermelho', color: Colors.red, isPremium: true),
    ThemeOption(name: 'Laranja', color: Colors.orange, isPremium: true),
    ThemeOption(name: 'Rosa', color: Colors.pink, isPremium: true),
    ThemeOption(name: 'Índigo', color: Colors.indigo, isPremium: true),
    ThemeOption(name: 'Âmbar', color: Colors.amber, isPremium: true),
    ThemeOption(name: 'Teal', color: Colors.teal, isPremium: true),
    ThemeOption(name: 'Marrom', color: Colors.brown, isPremium: true),
  ];

  static ThemeOption fromColorValue(int colorValue) {
    return options.firstWhere(
      (o) => o.color.toARGB32() == colorValue,
      orElse: () => options.first,
    );
  }
}
