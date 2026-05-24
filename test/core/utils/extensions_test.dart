import 'package:test/test.dart';
import 'package:shopping_list/core/utils/extensions.dart';

void main() {
  group('DateTimeExtensions', () {
    test('toISODate returns ISO 8601 date format', () {
      final date = DateTime(2026, 5, 24);
      expect(date.toISODate(), '2026-05-24');
    });

    test('toISODate handles single digit month and day', () {
      final date = DateTime(2026, 1, 5);
      expect(date.toISODate(), '2026-01-05');
    });
  });

  group('StringExtensions', () {
    test('capitalize capitalizes first letter', () {
      expect('hello'.capitalize(), 'Hello');
    });

    test('capitalize handles single character', () {
      expect('a'.capitalize(), 'A');
    });

    test('capitalize returns empty for empty string', () {
      expect(''.capitalize(), '');
    });

    test('capitalize preserves rest of string', () {
      expect('hello world'.capitalize(), 'Hello world');
    });
  });
}
