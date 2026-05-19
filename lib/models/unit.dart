import 'package:shopping_list/generated/l10n/app_localizations.dart';

enum Unit {
  un('un'),
  kg('kg'),
  g('g'),
  L('L'),
  mL('mL'),
  pack('pacote');

  const Unit(this.label);
  final String label;

  String localizedLabel(AppLocalizations l10n) {
    if (this == Unit.pack) {
      return l10n.unitPack;
    }
    return label;
  }
}
