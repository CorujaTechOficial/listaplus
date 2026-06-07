import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/app/catalog/services/open_food_facts_service.dart';
import 'package:shopping_list/app/lists/providers/item_history_provider.dart';

part 'catalog_providers.g.dart';

enum CatalogSortMode { popular, az }

class CatalogProductsResult {
  const CatalogProductsResult({
    required this.common,
    required this.rare,
  });
  final List<CatalogProduct> common;
  final List<CatalogProduct> rare;
}

@riverpod
Future<CatalogProductsResult> catalogProducts(
  Ref ref, {
  required String offCategoryTag,
  required String offCountryTag,
}) async {
  ref.keepAlive();

  final products = await OpenFoodFactsService.fetchByCategory(
    offCategoryTag: offCategoryTag,
    offCountryTag: offCountryTag,
  );

  return _applyRankingAndSplit(ref, products, offCountryTag);
}

@riverpod
Future<List<CatalogProduct>> catalogSearch(
  Ref ref, {
  required String query,
  required String offCountryTag,
}) async {
  if (query.trim().length < 2) {
    return [];
  }
  return OpenFoodFactsService.searchByText(
    query: query.trim(),
    offCountryTag: offCountryTag,
  );
}

@riverpod
Future<CatalogProduct?> barcodeProduct(Ref ref, String barcode) async {
  return OpenFoodFactsService.lookupBarcode(barcode);
}

CatalogProductsResult _applyRankingAndSplit(
  Ref ref,
  List<CatalogProduct> products,
  String offCountryTag,
) {
  final history = ref.read(itemHistoryProvider);

  final common = <CatalogProduct>[];
  final rare = <CatalogProduct>[];

  for (final product in products) {
    if (product.isRareForCountry(offCountryTag)) {
      rare.add(product);
    } else {
      common.add(product);
    }
  }

  common.sort((a, b) {
    final aFreq = history[a.name] ?? 0;
    final bFreq = history[b.name] ?? 0;
    if (aFreq != bFreq) {
      return bFreq.compareTo(aFreq);
    }
    return b.uniqueScansN.compareTo(a.uniqueScansN);
  });

  return CatalogProductsResult(common: common, rare: rare);
}
