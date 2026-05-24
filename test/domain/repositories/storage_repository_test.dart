import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/repositories/storage_repository.dart';

void main() {
  test('StorageRepository is abstract and can be implemented', () {
    expect(StorageRepository, isA<Type>());
  });
}
