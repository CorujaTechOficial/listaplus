import 'package:intl/intl.dart';

String formatCurrency(double value) {
  final format = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
    decimalDigits: 2,
  );
  return format.format(value).replaceAll('\u00a0', ' ');
}

String pluralize(int count, String singular, String plural) {
  return '$count ${count == 1 ? singular : plural}';
}
