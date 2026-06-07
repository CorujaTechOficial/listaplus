import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/app/catalog/services/open_food_facts_service.dart';

void main() {
  group('OpenFoodFactsService.parseSearchResponse', () {
    test('returns empty list for empty products array', () {
      final result = OpenFoodFactsService.parseSearchResponse({'products': []});
      expect(result, isEmpty);
    });

    test('filters out products with empty names', () {
      final json = {
        'products': [
          {'code': '1', 'product_name': '', 'unique_scans_n': 100},
          {'code': '2', 'product_name': 'Leite', 'unique_scans_n': 200},
        ],
      };
      final result = OpenFoodFactsService.parseSearchResponse(json);
      expect(result.length, 1);
      expect(result.first.name, 'Leite');
    });

    test('returns products parsed as CatalogProduct list', () {
      final json = {
        'products': [
          {
            'code': '7891000315507',
            'product_name': 'Coca-Cola',
            'brands': 'Coca-Cola',
            'quantity': '2L',
            'countries_tags': ['en:brazil'],
            'unique_scans_n': 50000,
          },
        ],
      };
      final result = OpenFoodFactsService.parseSearchResponse(json);
      expect(result.length, 1);
      expect(result.first.name, 'Coca-Cola');
      expect(result.first.brand, 'Coca-Cola');
    });
  });

  group('OpenFoodFactsService.parseBarcodeResponse', () {
    test('returns null when status is 0 (not found)', () {
      final result = OpenFoodFactsService.parseBarcodeResponse({'status': 0});
      expect(result, isNull);
    });

    test('returns product when status is 1', () {
      final json = {
        'status': 1,
        'product': {
          'code': '7891000315507',
          'product_name': 'Coca-Cola',
          'brands': 'Coca-Cola',
          'quantity': '2L',
          'countries_tags': ['en:brazil'],
          'unique_scans_n': 50000,
        },
      };
      final result = OpenFoodFactsService.parseBarcodeResponse(json);
      expect(result, isNotNull);
      expect(result!.name, 'Coca-Cola');
    });

    test('returns null when product name is empty', () {
      final json = {
        'status': 1,
        'product': {'code': '1', 'product_name': ''},
      };
      final result = OpenFoodFactsService.parseBarcodeResponse(json);
      expect(result, isNull);
    });
  });
}
