import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/catalog_product.dart';

class OpenFoodFactsService {
  static const _baseUrl = 'https://world.openfoodfacts.org';
  static const _userAgent = 'KipiList/1.0 (abson.dev@gmail.com)';

  static Future<List<CatalogProduct>> fetchByCategory({
    required String offCategoryTag,
    int pageSize = 50,
  }) async {
    final uri = Uri.parse('$_baseUrl/cgi/search.pl').replace(queryParameters: {
      'action': 'process',
      'tagtype_0': 'categories',
      'tag_contains_0': 'contains',
      'tag_0': offCategoryTag,
      'sort_by': 'unique_scans_n',
      'json': '1',
      'page_size': '$pageSize',
    });

    final response = await http.get(uri, headers: {'User-Agent': _userAgent});
    if (response.statusCode != 200) {
      return [];
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return parseSearchResponse(json);
  }

  static Future<List<CatalogProduct>> searchByText({
    required String query,
    int pageSize = 30,
  }) async {
    final uri = Uri.parse('$_baseUrl/cgi/search.pl').replace(queryParameters: {
      'search_terms': query,
      'sort_by': 'unique_scans_n',
      'json': '1',
      'page_size': '$pageSize',
    });

    final response = await http.get(uri, headers: {'User-Agent': _userAgent});
    if (response.statusCode != 200) {
      return [];
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return parseSearchResponse(json);
  }

  static Future<CatalogProduct?> lookupBarcode(String barcode) async {
    final uri = Uri.parse('$_baseUrl/api/v0/product/$barcode.json');
    final response = await http.get(uri, headers: {'User-Agent': _userAgent});
    if (response.statusCode != 200) {
      return null;
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return parseBarcodeResponse(json);
  }

  static List<CatalogProduct> parseSearchResponse(Map<String, dynamic> json) {
    final products = json['products'];
    if (products is! List) {
      return [];
    }
    return products
        .whereType<Map<String, dynamic>>()
        .map(CatalogProduct.fromJson)
        .where((p) => p.hasName)
        .toList();
  }

  static CatalogProduct? parseBarcodeResponse(Map<String, dynamic> json) {
    if ((json['status'] as num?)?.toInt() != 1) {
      return null;
    }
    final productJson = json['product'];
    if (productJson is! Map<String, dynamic>) {
      return null;
    }
    final product = CatalogProduct.fromJson(productJson);
    return product.hasName ? product : null;
  }
}
