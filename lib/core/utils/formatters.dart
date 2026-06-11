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

DateTime safeParseDate(dynamic value) {
  if (value == null) {
    return DateTime.now();
  }
  if (value is DateTime) {
    return value;
  }
  return DateTime.tryParse(value.toString()) ?? DateTime.now();
}
