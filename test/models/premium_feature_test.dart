import 'package:flutter/material.dart';
import 'package:shopping_list/models/premium_feature.dart';
import 'package:shopping_list/generated/l10n/app_localizations_pt.dart';
import 'package:test/test.dart';

void main() {
  group('PremiumFeature', () {
    test('has 9 values', () {
      expect(PremiumFeature.values.length, 9);
    });

    test('labels match expectations', () {
      expect(PremiumFeature.unlimitedLists.label, 'Listas ilimitadas');
      expect(PremiumFeature.sharing.label, 'Compartilhar listas');
      expect(PremiumFeature.history.label, 'Histórico completo');
      expect(PremiumFeature.export.label, 'Exportar dados');
      expect(PremiumFeature.themes.label, 'Temas personalizados');
      expect(PremiumFeature.monthlyBudget.label, 'Orçamento mensal global');
      expect(PremiumFeature.assistant.label, 'Assistente de IA Personalizado');
      expect(PremiumFeature.pantry.label, 'Dispensa ilimitada');
      expect(PremiumFeature.interactiveArtifacts.label, 'Artefatos Interativos da IA');
    });

    test('icons match expectations', () {
      expect(PremiumFeature.unlimitedLists.icon, Icons.list);
      expect(PremiumFeature.sharing.icon, Icons.share);
      expect(PremiumFeature.history.icon, Icons.history);
      expect(PremiumFeature.export.icon, Icons.backup);
      expect(PremiumFeature.themes.icon, Icons.palette);
      expect(PremiumFeature.monthlyBudget.icon, Icons.account_balance_wallet);
      expect(PremiumFeature.assistant.icon, Icons.auto_awesome);
      expect(PremiumFeature.pantry.icon, Icons.inventory_2);
      expect(PremiumFeature.interactiveArtifacts.icon, Icons.dashboard_customize);
    });

    test('localizedLabels match expectations', () {
      final l10n = AppLocalizationsPtBr();
      expect(PremiumFeature.unlimitedLists.localizedLabel(l10n), 'Listas ilimitadas');
      expect(PremiumFeature.sharing.localizedLabel(l10n), 'Compartilhar listas');
      expect(PremiumFeature.history.localizedLabel(l10n), 'Histórico completo');
      expect(PremiumFeature.export.localizedLabel(l10n), 'Exportar dados');
      expect(PremiumFeature.themes.localizedLabel(l10n), 'Temas personalizados');
      expect(PremiumFeature.monthlyBudget.localizedLabel(l10n), 'Orçamento mensal global');
      expect(PremiumFeature.assistant.localizedLabel(l10n), 'Assistente de IA Personalizado');
      expect(PremiumFeature.pantry.localizedLabel(l10n), 'Dispensa ilimitada');
      expect(PremiumFeature.interactiveArtifacts.localizedLabel(l10n), 'Artefatos Interativos da IA');
    });
  });

  group('ThemeOption', () {
    test('has 10 options', () {
      expect(ThemeOption.options.length, 10);
    });

    test('has 3 free options', () {
      final free = ThemeOption.options.where((o) => !o.isPremium);
      expect(free.length, 3);
      expect(free.every((o) => o.name.isNotEmpty), true);
    });

    test('has 7 premium options', () {
      final premium = ThemeOption.options.where((o) => o.isPremium);
      expect(premium.length, 7);
      expect(premium.every((o) => o.name.isNotEmpty), true);
    });

    test('first option is free green', () {
      final first = ThemeOption.options.first;
      expect(first.name, 'Verde');
      expect(first.color, Colors.green);
      expect(first.isPremium, false);
    });

    test('free options are verde, azul, roxo', () {
      final freeNames = ThemeOption.options.where((o) => !o.isPremium).map((o) => o.name);
      expect(freeNames, containsAll(['Verde', 'Azul', 'Roxo']));
    });

    test('premium options include vermelho, laranja, rosa', () {
      final premiumNames = ThemeOption.options.where((o) => o.isPremium).map((o) => o.name);
      expect(premiumNames, containsAll(['Vermelho', 'Laranja', 'Rosa']));
    });

    test('fromColorValue finds correct option', () {
      final option = ThemeOption.fromColorValue(Colors.green.toARGB32());
      expect(option.name, 'Verde');
    });

    test('fromColorValue returns first option for unknown color', () {
      final option = ThemeOption.fromColorValue(Colors.transparent.toARGB32());
      expect(option.name, 'Verde');
    });
  });
}
