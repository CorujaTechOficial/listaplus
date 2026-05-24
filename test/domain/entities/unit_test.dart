import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('Unit', () {
    test('has correct enum values and labels', () {
      expect(Unit.un.label, 'un');
      expect(Unit.kg.label, 'kg');
      expect(Unit.g.label, 'g');
      expect(Unit.L.label, 'L');
      expect(Unit.mL.label, 'mL');
      expect(Unit.pack.label, 'pacote');
    });

    test('byName returns correct unit', () {
      expect(Unit.byName('kg'), Unit.kg);
      expect(Unit.byName('unknown'), Unit.un);
    });
  });
}