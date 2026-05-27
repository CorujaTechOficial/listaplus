import 'package:characters/characters.dart';

extension DateTimeExtensions on DateTime {
  String toISODate() {
    return '${year.toString().padLeft(4, '0')}-'
        '${month.toString().padLeft(2, '0')}-'
        '${day.toString().padLeft(2, '0')}';
  }
}

extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    final chars = characters;
    return '${chars.first.toUpperCase()}${chars.skip(1)}';
  }
}
