import 'dart:ui' show Locale;

import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';

void main() {
  test('MealType exposes localized labels', () {
    final l10n = lookupAppLocalizations(const Locale('en'));
    final defaults = MealType.defaults;

    expect(defaults.firstWhere((t) => t.id == 'breakfast').localizedLabel(l10n), 'Breakfast');
    expect(defaults.firstWhere((t) => t.id == 'lunch').localizedLabel(l10n), 'Lunch');
    expect(defaults.firstWhere((t) => t.id == 'dinner').localizedLabel(l10n), 'Dinner');
    expect(defaults.firstWhere((t) => t.id == 'snack').localizedLabel(l10n), 'Snack');
  });
}
