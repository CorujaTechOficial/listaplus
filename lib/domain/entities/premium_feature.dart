import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

enum PremiumFeature {
  unlimitedLists,
  sharing,
  history,
  export,
  themes,
  monthlyBudget,
  assistant,
  pantry,
  interactiveArtifacts;

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
      case PremiumFeature.pantry:
        return 'Dispensa ilimitada';
      case PremiumFeature.interactiveArtifacts:
        return 'Artefatos Interativos da IA';
    }
  }

  String localizedLabel(AppLocalizations l10n) {
    switch (this) {
      case PremiumFeature.unlimitedLists:
        return l10n.prefUnlimitedLists;
      case PremiumFeature.sharing:
        return l10n.prefSharing;
      case PremiumFeature.history:
        return l10n.prefFullHistory;
      case PremiumFeature.export:
        return l10n.prefExportData;
      case PremiumFeature.themes:
        return l10n.prefCustomThemes;
      case PremiumFeature.monthlyBudget:
        return l10n.prefMonthlyBudget;
      case PremiumFeature.assistant:
        return l10n.prefAIAssistant;
      case PremiumFeature.pantry:
        return l10n.prefUnlimitedPantry;
      case PremiumFeature.interactiveArtifacts:
        return l10n.prefInteractiveArtifacts;
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
        return Icons.smart_toy;
      case PremiumFeature.pantry:
        return Icons.inventory_2;
      case PremiumFeature.interactiveArtifacts:
        return Icons.dashboard_customize;
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
    ThemeOption(name: 'Fresco', color: Color(0xFF2E7D32), isPremium: false),
    ThemeOption(name: 'Oceano', color: Color(0xFF0277BD), isPremium: false),
    ThemeOption(name: 'Cálido', color: Color(0xFFE65100), isPremium: false),
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
