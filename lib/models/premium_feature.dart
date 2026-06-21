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
    required this.nameKey,
    required this.color,
    required this.isPremium,
  });

  final ThemeOptionName nameKey;
  final Color color;
  final bool isPremium;

  static const List<ThemeOption> options = [
    ThemeOption(
      nameKey: ThemeOptionName.fresh,
      color: Color(0xFF2E7D32),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.ocean,
      color: Color(0xFF0277BD),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.warm,
      color: Color(0xFFE65100),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.green,
      color: Color(0xFF4CAF50),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.blue,
      color: Color(0xFF2196F3),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.purple,
      color: Color(0xFF9C27B0),
      isPremium: false,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.red,
      color: Color(0xFFF44336),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.orange,
      color: Color(0xFFFF9800),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.pink,
      color: Color(0xFFE91E63),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.indigo,
      color: Color(0xFF3F51B5),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.amber,
      color: Color(0xFFFFC107),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.teal,
      color: Color(0xFF009688),
      isPremium: true,
    ),
    ThemeOption(
      nameKey: ThemeOptionName.brown,
      color: Color(0xFF795548),
      isPremium: true,
    ),
  ];

  String localizedName(AppLocalizations l10n) {
    return switch (nameKey) {
      ThemeOptionName.fresh => l10n.themeGreen,
      ThemeOptionName.ocean => l10n.themeBlue,
      ThemeOptionName.warm => l10n.themeOrange,
      ThemeOptionName.green => l10n.themeGreen,
      ThemeOptionName.blue => l10n.themeBlue,
      ThemeOptionName.purple => l10n.themePurple,
      ThemeOptionName.red => l10n.themeRed,
      ThemeOptionName.orange => l10n.themeOrange,
      ThemeOptionName.pink => l10n.themePink,
      ThemeOptionName.indigo => l10n.themeIndigo,
      ThemeOptionName.amber => l10n.themeAmber,
      ThemeOptionName.teal => l10n.themeTeal,
      ThemeOptionName.brown => l10n.themeBrown,
    };
  }

  static ThemeOption fromColorValue(int colorValue) {
    return options.firstWhere(
      (o) => o.color.toARGB32() == colorValue,
      orElse: () => options.first,
    );
  }
}

enum ThemeOptionName {
  fresh,
  ocean,
  warm,
  green,
  blue,
  purple,
  red,
  orange,
  pink,
  indigo,
  amber,
  teal,
  brown,
}
