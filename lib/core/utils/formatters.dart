import 'package:intl/intl.dart';

String formatCurrency(double value, String currencyCode) {
  final format = NumberFormat.simpleCurrency(
    name: currencyCode,
    decimalDigits: 2,
  );
  return format.format(value);
}

String pluralize(int count, String singular, String plural) {
  return '$count ${count == 1 ? singular : plural}';
}
