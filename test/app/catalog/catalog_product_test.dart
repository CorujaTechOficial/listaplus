import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';

void main() {
  group('CatalogProduct', () {
    test('fromJson parses complete product correctly', () {
      final json = {
        'code': '7891000315507',
        'product_name': 'Coca-Cola',
        'brands': 'Coca-Cola, CCSA',
        'quantity': '2L',
        'countries_tags': ['en:brazil', 'en:argentina'],
        'unique_scans_n': 50000,
        'categories_tags': ['en:beverages', 'en:sodas'],
      };

      final product = CatalogProduct.fromJson(json);

      expect(product.barcode, '7891000315507');
      expect(product.name, 'Coca-Cola');
      expect(product.brand, 'Coca-Cola');
      expect(product.quantity, '2L');
      expect(product.countriesTags, contains('en:brazil'));
      expect(product.uniqueScansN, 50000);
    });

    test('fromJson uses first brand when multiple', () {
      final json = {'code': '123', 'product_name': 'X', 'brands': 'Marca A, Marca B'};
      expect(CatalogProduct.fromJson(json).brand, 'Marca A');
    });

    test('fromJson handles missing fields gracefully', () {
      final product = CatalogProduct.fromJson({'code': '999', 'product_name': 'Produto'});
      expect(product.brand, isNull);
      expect(product.uniqueScansN, 0);
      expect(product.countriesTags, isEmpty);
    });

    test('hasName returns false for empty name', () {
      const product = CatalogProduct(barcode: '1', name: '');
      expect(product.hasName, isFalse);
    });

    test('displayName includes brand and quantity when present', () {
      const product = CatalogProduct(barcode: '1', name: 'Leite', brand: 'Itambé', quantity: '1L');
      expect(product.displayName, 'Leite · Itambé · 1L');
    });

    test('isRareForCountry returns true when not in country', () {
      const product = CatalogProduct(barcode: '1', name: 'Dr Pepper', countriesTags: ['en:united-states'], uniqueScansN: 500);
      expect(product.isRareForCountry('en:brazil'), isTrue);
    });

    test('isRareForCountry returns true when scans below threshold', () {
      const product = CatalogProduct(barcode: '1', name: 'X', countriesTags: ['en:brazil'], uniqueScansN: 50);
      expect(product.isRareForCountry('en:brazil'), isTrue);
    });

    test('isRareForCountry returns false for popular local product', () {
      const product = CatalogProduct(barcode: '1', name: 'Guaraná', countriesTags: ['en:brazil'], uniqueScansN: 5000);
      expect(product.isRareForCountry('en:brazil'), isFalse);
    });
  });
}
