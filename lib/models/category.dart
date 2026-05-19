import 'package:shopping_list/generated/l10n/app_localizations.dart';

enum Category {
  fruits('Frutas'),
  cleaning('Limpeza'),
  beverages('Bebidas'),
  bakery('Padaria'),
  others('Outros');

  const Category(this.label);
  final String label;

  String localizedLabel(AppLocalizations l10n) {
    switch (this) {
      case Category.fruits:
        return l10n.catFruits;
      case Category.cleaning:
        return l10n.catCleaning;
      case Category.beverages:
        return l10n.catBeverages;
      case Category.bakery:
        return l10n.catBakery;
      case Category.others:
        return l10n.catOthers;
    }
  }
}
