// lib/app/catalog/models/catalog_product.dart
class CatalogProduct {
  const CatalogProduct({
    required this.barcode,
    required this.name,
    this.brand,
    this.quantity,
    this.countriesTags = const [],
    this.uniqueScansN = 0,
    this.categoriesTags = const [],
  });

  factory CatalogProduct.fromJson(Map<String, dynamic> json) {
    return CatalogProduct(
      barcode: json['code'] as String? ?? '',
      name: (json['product_name'] as String? ?? '').trim(),
      brand: (json['brands'] as String?)?.split(',').first.trim(),
      quantity: json['quantity'] as String?,
      countriesTags: _parseList(json['countries_tags']),
      uniqueScansN: (json['unique_scans_n'] as num?)?.toInt() ?? 0,
      categoriesTags: _parseList(json['categories_tags']),
    );
  }

  static List<String> _parseList(dynamic value) {
    if (value is List) {
      return value.map((e) => e.toString()).toList();
    }
    return const [];
  }

  final String barcode;
  final String name;
  final String? brand;
  final String? quantity;
  final List<String> countriesTags;
  final int uniqueScansN;
  final List<String> categoriesTags;

  bool get hasName => name.isNotEmpty;

  String get displayName {
    final parts = [name, if (brand != null) brand!, if (quantity != null) quantity!];
    return parts.join(' · ');
  }

  bool isRareForCountry(String offCountryTag) {
    return !countriesTags.contains(offCountryTag) || uniqueScansN < 100;
  }
}
