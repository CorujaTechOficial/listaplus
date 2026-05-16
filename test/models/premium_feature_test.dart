import 'package:flutter/material.dart';
import 'package:shopping_list/models/premium_feature.dart';
import 'package:test/test.dart';

void main() {
  group('PremiumFeature', () {
    test('has 6 values', () {
      expect(PremiumFeature.values.length, 6);
    });

    test('labels match expectations', () {
      expect(PremiumFeature.unlimitedLists.label, 'Listas ilimitadas');
      expect(PremiumFeature.sharing.label, 'Compartilhar listas');
      expect(PremiumFeature.history.label, 'Histórico completo');
      expect(PremiumFeature.export.label, 'Exportar dados');
      expect(PremiumFeature.themes.label, 'Temas personalizados');
      expect(PremiumFeature.monthlyBudget.label, 'Orçamento mensal global');
    });

    test('icons match expectations', () {
      expect(PremiumFeature.unlimitedLists.icon, Icons.list);
      expect(PremiumFeature.sharing.icon, Icons.share);
      expect(PremiumFeature.history.icon, Icons.history);
      expect(PremiumFeature.export.icon, Icons.backup);
      expect(PremiumFeature.themes.icon, Icons.palette);
      expect(PremiumFeature.monthlyBudget.icon, Icons.account_balance_wallet);
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
