# Catalog Browsing Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Adicionar uma tela de catálogo de produtos ao KipiList que permite navegar por categorias, ver produtos com marcas rankeados por popularidade no país do usuário, buscar/filtrar dentro de cada categoria, e adicionar itens à lista com controles de quantidade — usando a Open Food Facts API como fonte de dados.

**Architecture:** Feature independente em `lib/app/catalog/`, com modelos próprios, um serviço HTTP sem estado para a Open Food Facts API, e providers Riverpod que aplicam boost de ranking via `ItemHistory` já existente. A entrada é um botão na `list_screen_body.dart` que navega para a nova tela. O scanner de código de barras existente é aproveitado para lookup de produto via OFF.

**Tech Stack:** Flutter/Riverpod 3.x com codegen (`@riverpod`), `http: ^1.2.0` (já no projeto), Open Food Facts REST API (gratuita, sem autenticação), `flutter gen-l10n` para strings.

---

## File Map

**Criar:**
- `lib/app/catalog/models/catalog_product.dart` — Modelo imutável do produto OFF
- `lib/app/catalog/models/catalog_category.dart` — Dados estáticos das 12 categorias
- `lib/app/catalog/services/open_food_facts_service.dart` — HTTP client para OFF API
- `lib/app/catalog/providers/catalog_providers.dart` — Providers Riverpod (busca, ranking, barcode)
- `lib/app/catalog/widgets/product_list_tile.dart` — Tile de produto com +/−
- `lib/app/catalog/widgets/catalog_search_bar.dart` — Barra de busca reutilizável
- `lib/app/catalog/widgets/category_grid.dart` — Grade 2-col de categorias
- `lib/app/catalog/screens/catalog_home_screen.dart` — Home com frequentes + grade
- `lib/app/catalog/screens/catalog_category_screen.dart` — Tela de categoria com busca/filtro/lista
- `test/app/catalog/catalog_product_test.dart` — Testes unitários do modelo
- `test/app/catalog/open_food_facts_service_test.dart` — Testes do serviço HTTP

**Modificar:**
- `lib/l10n/app_en.arb` — Adicionar strings do catálogo
- `lib/app/lists/list_screen_body.dart:642` — Adicionar botão "Buscar no Catálogo" acima do QuickAddBar
- `lib/app/lists/widgets/quick_add_bar.dart` — Upgrade do barcode scanner para lookup real via OFF

---

## Task 1: CatalogProduct model

**Files:**
- Create: `lib/app/catalog/models/catalog_product.dart`
- Create: `test/app/catalog/catalog_product_test.dart`

- [ ] **Step 1: Criar o arquivo de modelo**

```dart
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
```

- [ ] **Step 2: Escrever os testes unitários**

```dart
// test/app/catalog/catalog_product_test.dart
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
```

- [ ] **Step 3: Rodar os testes e confirmar que passam**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list"
flutter test test/app/catalog/catalog_product_test.dart --reporter=compact
```

Esperado: todos os testes passando (7 testes).

- [ ] **Step 4: Commit**

```bash
git add lib/app/catalog/models/catalog_product.dart test/app/catalog/catalog_product_test.dart
git commit -m "feat(catalog): add CatalogProduct model with OFF parsing"
```

---

## Task 2: CatalogCategory data

**Files:**
- Create: `lib/app/catalog/models/catalog_category.dart`

- [ ] **Step 1: Criar o modelo e a lista estática de categorias**

```dart
// lib/app/catalog/models/catalog_category.dart
class CatalogCategory {
  const CatalogCategory({
    required this.id,
    required this.offTag,
    required this.emoji,
    required this.name,
    required this.appCategoryId,
    this.filters = const [],
  });

  final String id;
  final String offTag;
  final String emoji;
  final String name;
  final String appCategoryId;
  final List<String> filters;
}

const List<CatalogCategory> catalogCategories = [
  CatalogCategory(id: 'meats',     offTag: 'en:meats',              emoji: '🥩', name: 'Carnes',            appCategoryId: 'meat',      filters: ['Frango', 'Bovina', 'Suína', 'Embalado']),
  CatalogCategory(id: 'produce',   offTag: 'en:fresh-produce',      emoji: '🥬', name: 'Hortifruti',        appCategoryId: 'vegetables',filters: ['Frutas', 'Verduras', 'Legumes']),
  CatalogCategory(id: 'dairy',     offTag: 'en:dairies',            emoji: '🥛', name: 'Laticínios',        appCategoryId: 'dairy',     filters: ['Leite', 'Queijo', 'Iogurte', 'Manteiga']),
  CatalogCategory(id: 'bakery',    offTag: 'en:bakery',             emoji: '🍞', name: 'Padaria',           appCategoryId: 'bakery',    filters: ['Pão', 'Bolo', 'Biscoito']),
  CatalogCategory(id: 'beverages', offTag: 'en:beverages',          emoji: '🥤', name: 'Bebidas',           appCategoryId: 'beverages', filters: ['Zero', 'Lata', 'Garrafa', 'Suco']),
  CatalogCategory(id: 'cleaning',  offTag: 'en:household-products', emoji: '🧹', name: 'Limpeza',           appCategoryId: 'cleaning',  filters: ['Roupa', 'Louça', 'Chão']),
  CatalogCategory(id: 'hygiene',   offTag: 'en:hygiene-products',   emoji: '🧴', name: 'Higiene',           appCategoryId: 'hygiene',   filters: ['Cabelo', 'Corpo', 'Oral', 'Feminino']),
  CatalogCategory(id: 'cold_cuts', offTag: 'en:charcuterie',        emoji: '🍖', name: 'Frios e Embutidos', appCategoryId: 'cold_cuts', filters: ['Presunto', 'Salsicha', 'Mortadela']),
  CatalogCategory(id: 'grocery',   offTag: 'en:grocery',            emoji: '🛒', name: 'Mercearia',         appCategoryId: 'grains',    filters: ['Arroz', 'Feijão', 'Macarrão', 'Azeite']),
  CatalogCategory(id: 'frozen',    offTag: 'en:frozen-products',    emoji: '🧊', name: 'Congelados',        appCategoryId: 'frozen',    filters: ['Pizza', 'Lasanha', 'Sorvete']),
  CatalogCategory(id: 'snacks',    offTag: 'en:snacks',             emoji: '🍿', name: 'Petiscos',          appCategoryId: 'sweets',    filters: ['Salgado', 'Doce', 'Barra']),
  CatalogCategory(id: 'alcohol',   offTag: 'en:alcoholic-beverages',emoji: '🍺', name: 'Bebidas Alcoólicas',appCategoryId: 'alcohol',   filters: ['Cerveja', 'Vinho', 'Destilado']),
];

/// Maps device locale countryCode to Open Food Facts country tag.
String localeCountryToOffTag(String? countryCode) {
  const mapping = {
    'BR': 'en:brazil',
    'US': 'en:united-states',
    'GB': 'en:united-kingdom',
    'FR': 'en:france',
    'DE': 'en:germany',
    'IT': 'en:italy',
    'ES': 'en:spain',
    'PT': 'en:portugal',
    'AR': 'en:argentina',
    'MX': 'en:mexico',
    'CO': 'en:colombia',
    'CL': 'en:chile',
  };
  return mapping[countryCode?.toUpperCase()] ?? 'en:brazil';
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/catalog/models/catalog_category.dart
git commit -m "feat(catalog): add CatalogCategory model and static category data"
```

---

## Task 3: OpenFoodFactsService

**Files:**
- Create: `lib/app/catalog/services/open_food_facts_service.dart`
- Create: `test/app/catalog/open_food_facts_service_test.dart`

- [ ] **Step 1: Escrever os testes (falham primeiro)**

```dart
// test/app/catalog/open_food_facts_service_test.dart
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
```

- [ ] **Step 2: Rodar e confirmar que falham**

```bash
flutter test test/app/catalog/open_food_facts_service_test.dart --reporter=compact
```

Esperado: erro de compilação (arquivo não existe ainda).

- [ ] **Step 3: Implementar o serviço**

```dart
// lib/app/catalog/services/open_food_facts_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/catalog_product.dart';

class OpenFoodFactsService {
  static const _baseUrl = 'https://world.openfoodfacts.org';
  static const _userAgent = 'KipiList/1.0 (abson.dev@gmail.com)';

  static Future<List<CatalogProduct>> fetchByCategory({
    required String offCategoryTag,
    required String offCountryTag,
    int pageSize = 50,
  }) async {
    final uri = Uri.parse('$_baseUrl/cgi/search.pl').replace(queryParameters: {
      'action': 'process',
      'tagtype_0': 'categories',
      'tag_contains_0': 'contains',
      'tag_0': offCategoryTag,
      'tagtype_1': 'countries',
      'tag_contains_1': 'contains',
      'tag_1': offCountryTag,
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
    required String offCountryTag,
    int pageSize = 30,
  }) async {
    final uri = Uri.parse('$_baseUrl/cgi/search.pl').replace(queryParameters: {
      'search_terms': query,
      'tagtype_0': 'countries',
      'tag_contains_0': 'contains',
      'tag_0': offCountryTag,
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
```

- [ ] **Step 4: Rodar os testes e confirmar que passam**

```bash
flutter test test/app/catalog/open_food_facts_service_test.dart --reporter=compact
```

Esperado: todos os testes passando.

- [ ] **Step 5: Commit**

```bash
git add lib/app/catalog/services/open_food_facts_service.dart test/app/catalog/open_food_facts_service_test.dart
git commit -m "feat(catalog): add OpenFoodFactsService with HTTP and parsing"
```

---

## Task 4: Riverpod Providers

**Files:**
- Create: `lib/app/catalog/providers/catalog_providers.dart`

- [ ] **Step 1: Criar o arquivo de providers**

```dart
// lib/app/catalog/providers/catalog_providers.dart
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
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

  // Boost: produtos no histórico do usuário sobem para o topo da lista comum
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
```

- [ ] **Step 2: Rodar build_runner para gerar `catalog_providers.g.dart`**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list"
dart run build_runner build --delete-conflicting-outputs
```

Esperado: sem erros, arquivo `lib/app/catalog/providers/catalog_providers.g.dart` criado.

- [ ] **Step 3: Confirmar que o projeto compila**

```bash
flutter analyze lib/app/catalog/ --fatal-infos
```

Esperado: sem erros nem warnings.

- [ ] **Step 4: Commit**

```bash
git add lib/app/catalog/providers/
git commit -m "feat(catalog): add Riverpod providers with ranking and cache"
```

---

## Task 5: Localization strings

**Files:**
- Modify: `lib/l10n/app_en.arb`

- [ ] **Step 1: Adicionar as strings ao arquivo ARB**

Abra `lib/l10n/app_en.arb` e adicione antes do último `}`:

```json
  "@_Catalog": "description: Catalog feature strings",
  "catalogTitle": "Catalog",
  "catalogMyFrequents": "My Frequents",
  "catalogSearchGlobal": "Search any product...",
  "catalogSearchInCategory": "Search in {category}...",
  "@catalogSearchInCategory": { "placeholders": { "category": { "type": "String" } } },
  "catalogSortPopular": "Most popular",
  "catalogSortAZ": "A–Z",
  "catalogFilterNational": "Nationals",
  "catalogRareSection": "less common in your country",
  "catalogAddItems": "Add {count} {count, plural, one{item} other{items}} →",
  "@catalogAddItems": { "placeholders": { "count": { "type": "int" } } },
  "catalogProductNotFound": "Product not found, type the name",
  "catalogBrowse": "Browse Catalog"
```

- [ ] **Step 2: Rodar gen-l10n**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list"
flutter gen-l10n
```

Esperado: sem erros, arquivos em `lib/generated/l10n/` atualizados.

- [ ] **Step 3: Commit**

```bash
git add lib/l10n/app_en.arb lib/generated/l10n/
git commit -m "feat(catalog): add localization strings for catalog feature"
```

---

## Task 6: ProductListTile widget

**Files:**
- Create: `lib/app/catalog/widgets/product_list_tile.dart`

- [ ] **Step 1: Criar o widget**

```dart
// lib/app/catalog/widgets/product_list_tile.dart
// coverage:ignore-start
import 'package:flutter/material.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/theme/tokens.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.product,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    this.isRare = false,
  });

  final CatalogProduct product;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final bool isRare;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = quantity > 0;

    return Opacity(
      opacity: isRare ? 0.45 : 1.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(
            color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outlineVariant.withAlpha(80),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (product.brand != null || product.quantity != null)
                      Text(
                        [
                          if (product.brand != null) product.brand!,
                          if (product.quantity != null) product.quantity!,
                        ].join(' · '),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _CounterButton(
                    icon: Icons.remove,
                    onPressed: quantity > 0 ? onDecrement : null,
                    color: theme.colorScheme.onSurface,
                  ),
                  SizedBox(
                    width: 28,
                    child: Text(
                      '$quantity',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: quantity > 0 ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  _CounterButton(
                    icon: Icons.add,
                    onPressed: onIncrement,
                    color: theme.colorScheme.primary,
                    filled: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    required this.icon,
    required this.onPressed,
    required this.color,
    this.filled = false,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Color color;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filled
              ? (onPressed != null ? color : color.withAlpha(80))
              : Colors.transparent,
          border: filled ? null : Border.all(color: color.withAlpha(onPressed != null ? 120 : 40)),
        ),
        child: Icon(
          icon,
          size: 16,
          color: filled ? Colors.white : color.withAlpha(onPressed != null ? 200 : 80),
        ),
      ),
    );
  }
}
// coverage:ignore-end
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/catalog/widgets/product_list_tile.dart
git commit -m "feat(catalog): add ProductListTile widget with quantity controls"
```

---

## Task 7: CatalogSearchBar e CategoryGrid widgets

**Files:**
- Create: `lib/app/catalog/widgets/catalog_search_bar.dart`
- Create: `lib/app/catalog/widgets/category_grid.dart`

- [ ] **Step 1: Criar a barra de busca**

```dart
// lib/app/catalog/widgets/catalog_search_bar.dart
// coverage:ignore-start
import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';

class CatalogSearchBar extends StatelessWidget {
  const CatalogSearchBar({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.autofocus = false,
  });

  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return TextField(
      controller: controller,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search, size: 20),
        suffixIcon: ListenableBuilder(
          listenable: controller,
          builder: (_, __) => controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, size: 18),
                  onPressed: () {
                    controller.clear();
                    onChanged?.call('');
                  },
                )
              : const SizedBox.shrink(),
        ),
        filled: true,
        fillColor: isDark ? const Color(0xFF232730) : Colors.grey.withAlpha(25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusTokens.full),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: 10),
      ),
    );
  }
}
// coverage:ignore-end
```

- [ ] **Step 2: Criar a grade de categorias**

```dart
// lib/app/catalog/widgets/category_grid.dart
// coverage:ignore-start
import 'package:flutter/material.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/theme/tokens.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  final List<CatalogCategory> categories;
  final void Function(CatalogCategory) onCategoryTap;

  static const _categoryColors = [
    Color(0xFFFFF3E0), // laranja claro
    Color(0xFFE8F5E9), // verde claro
    Color(0xFFE3F2FD), // azul claro
    Color(0xFFFCE4EC), // rosa claro
    Color(0xFFF3E5F5), // roxo claro
    Color(0xFFE0F7FA), // ciano claro
    Color(0xFFFFF8E1), // amarelo claro
    Color(0xFFE8EAF6), // índigo claro
    Color(0xFFF1F8E9), // verde limão
    Color(0xFFEDE7F6), // violeta claro
    Color(0xFFE0F2F1), // teal claro
    Color(0xFFFBE9E7), // laranja escuro claro
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.8,
        crossAxisSpacing: Spacing.sm,
        mainAxisSpacing: Spacing.sm,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final bgColor = _categoryColors[index % _categoryColors.length];

        return InkWell(
          onTap: () => onCategoryTap(category),
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(RadiusTokens.md),
            ),
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
            child: Row(
              children: [
                Text(category.emoji, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: Spacing.sm),
                Expanded(
                  child: Text(
                    category.name,
                    style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// coverage:ignore-end
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/catalog/widgets/
git commit -m "feat(catalog): add CatalogSearchBar and CategoryGrid widgets"
```

---

## Task 8: CatalogCategoryScreen

**Files:**
- Create: `lib/app/catalog/screens/catalog_category_screen.dart`

- [ ] **Step 1: Criar a tela de categoria**

```dart
// lib/app/catalog/screens/catalog_category_screen.dart
// coverage:ignore-start
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/app/catalog/providers/catalog_providers.dart';
import 'package:shopping_list/app/catalog/widgets/catalog_search_bar.dart';
import 'package:shopping_list/app/catalog/widgets/product_list_tile.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/theme/tokens.dart';

class CatalogCategoryScreen extends ConsumerStatefulWidget {
  const CatalogCategoryScreen({
    super.key,
    required this.category,
    required this.offCountryTag,
    required this.listId,
  });

  final CatalogCategory category;
  final String offCountryTag;
  final String listId;

  @override
  ConsumerState<CatalogCategoryScreen> createState() => _CatalogCategoryScreenState();
}

class _CatalogCategoryScreenState extends ConsumerState<CatalogCategoryScreen> {
  final _searchController = TextEditingController();
  final Map<String, int> _quantities = {};
  CatalogSortMode _sort = CatalogSortMode.popular;
  String? _activeFilter;
  Timer? _debounce;
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() => _searchQuery = value);
      }
    });
  }

  int get _totalSelected => _quantities.values.fold(0, (a, b) => a + b);

  Future<void> _confirmAdd() async {
    final items = _quantities.entries
        .where((e) => e.value > 0)
        .map((e) => ShoppingItem(
              shoppingListId: widget.listId,
              name: e.key,
              quantity: e.value,
              categoryId: widget.category.appCategoryId,
            ))
        .toList();

    if (items.isEmpty) {
      return;
    }

    unawaited(HapticFeedback.lightImpact());
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItems(items);

    if (mounted) {
      Navigator.pop(context);
    }
  }

  List<CatalogProduct> _applyLocalFilters(List<CatalogProduct> products) {
    var result = products;

    if (_activeFilter != null) {
      result = result.where((p) {
        final text = '${p.name} ${p.brand ?? ''}'.toLowerCase();
        return text.contains(_activeFilter!.toLowerCase());
      }).toList();
    }

    if (_searchQuery.isNotEmpty) {
      result = result.where((p) {
        final text = '${p.name} ${p.brand ?? ''}'.toLowerCase();
        return text.contains(_searchQuery.toLowerCase());
      }).toList();
    }

    if (_sort == CatalogSortMode.az) {
      result = [...result]..sort((a, b) => a.name.compareTo(b.name));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final total = _totalSelected;

    final catalogAsync = ref.watch(catalogProductsProvider(
      offCategoryTag: widget.category.offTag,
      offCountryTag: widget.offCountryTag,
    ));

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.category.emoji),
            const SizedBox(width: Spacing.sm),
            Text(widget.category.name),
            if (total > 0) ...[
              const SizedBox(width: Spacing.sm),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(RadiusTokens.full),
                ),
                child: Text(
                  '$total',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
      body: Column(
        children: [
          // Barra de busca
          Padding(
            padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
            child: CatalogSearchBar(
              controller: _searchController,
              hintText: l10n.catalogSearchInCategory(widget.category.name),
              onChanged: _onSearchChanged,
            ),
          ),

          // Chips de ordenação e filtros
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
            child: Row(
              children: [
                FilterChip(
                  label: Text(l10n.catalogSortPopular),
                  selected: _sort == CatalogSortMode.popular,
                  onSelected: (_) => setState(() => _sort = CatalogSortMode.popular),
                  avatar: const Icon(Icons.trending_up, size: 14),
                  shape: const StadiumBorder(),
                ),
                const SizedBox(width: Spacing.xs),
                FilterChip(
                  label: Text(l10n.catalogSortAZ),
                  selected: _sort == CatalogSortMode.az,
                  onSelected: (_) => setState(() => _sort = CatalogSortMode.az),
                  shape: const StadiumBorder(),
                ),
                const SizedBox(width: Spacing.sm),
                Container(width: 1, height: 20, color: theme.colorScheme.outlineVariant),
                const SizedBox(width: Spacing.sm),
                ...widget.category.filters.map((filter) => Padding(
                  padding: const EdgeInsets.only(right: Spacing.xs),
                  child: FilterChip(
                    label: Text(filter),
                    selected: _activeFilter == filter,
                    onSelected: (selected) => setState(() {
                      _activeFilter = selected ? filter : null;
                    }),
                    shape: const StadiumBorder(),
                  ),
                )),
              ],
            ),
          ),

          // Lista de produtos
          Expanded(
            child: catalogAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Erro ao carregar produtos: $e')),
              data: (result) {
                final commonFiltered = _applyLocalFilters(result.common);
                final rareFiltered = _applyLocalFilters(result.rare);

                if (commonFiltered.isEmpty && rareFiltered.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.search_off, size: 48),
                        const SizedBox(height: Spacing.sm),
                        Text(l10n.catalogSearchGlobal),
                      ],
                    ),
                  );
                }

                return ListView(
                  padding: const EdgeInsets.fromLTRB(Spacing.md, 0, Spacing.md, 100),
                  children: [
                    ...commonFiltered.map((product) => ProductListTile(
                      product: product,
                      quantity: _quantities[product.name] ?? 0,
                      onIncrement: () => setState(() {
                        _quantities[product.name] = (_quantities[product.name] ?? 0) + 1;
                      }),
                      onDecrement: () => setState(() {
                        final current = _quantities[product.name] ?? 0;
                        if (current > 0) {
                          _quantities[product.name] = current - 1;
                        }
                      }),
                    )),

                    if (rareFiltered.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                        child: Row(
                          children: [
                            const Expanded(child: Divider()),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: Spacing.sm),
                              child: Text(
                                l10n.catalogRareSection,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                            const Expanded(child: Divider()),
                          ],
                        ),
                      ),
                      ...rareFiltered.map((product) => ProductListTile(
                        product: product,
                        quantity: _quantities[product.name] ?? 0,
                        onIncrement: () => setState(() {
                          _quantities[product.name] = (_quantities[product.name] ?? 0) + 1;
                        }),
                        onDecrement: () => setState(() {
                          final current = _quantities[product.name] ?? 0;
                          if (current > 0) {
                            _quantities[product.name] = current - 1;
                          }
                        }),
                        isRare: true,
                      )),
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),

      // Botão de confirmação fixo no rodapé
      bottomNavigationBar: total > 0
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: FilledButton.icon(
                  onPressed: _confirmAdd,
                  icon: const Icon(Icons.check),
                  label: Text(l10n.catalogAddItems(total)),
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
// coverage:ignore-end
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/catalog/screens/catalog_category_screen.dart
git commit -m "feat(catalog): add CatalogCategoryScreen with search, filters, and product list"
```

---

## Task 9: CatalogHomeScreen

**Files:**
- Create: `lib/app/catalog/screens/catalog_home_screen.dart`

- [ ] **Step 1: Criar a tela home do catálogo**

```dart
// lib/app/catalog/screens/catalog_home_screen.dart
// coverage:ignore-start
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/app/catalog/providers/catalog_providers.dart';
import 'package:shopping_list/app/catalog/screens/catalog_category_screen.dart';
import 'package:shopping_list/app/catalog/widgets/catalog_search_bar.dart';
import 'package:shopping_list/app/catalog/widgets/category_grid.dart';
import 'package:shopping_list/app/catalog/widgets/product_list_tile.dart';
import 'package:shopping_list/app/lists/providers/item_history_provider.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/theme/tokens.dart';

class CatalogHomeScreen extends ConsumerStatefulWidget {
  const CatalogHomeScreen({
    super.key,
    required this.listId,
    required this.offCountryTag,
  });

  final String listId;
  final String offCountryTag;

  @override
  ConsumerState<CatalogHomeScreen> createState() => _CatalogHomeScreenState();
}

class _CatalogHomeScreenState extends ConsumerState<CatalogHomeScreen> {
  final _searchController = TextEditingController();
  Timer? _debounce;
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() => _searchQuery = value);
      }
    });
  }

  void _openCategory(CatalogCategory category) {
    Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (_) => CatalogCategoryScreen(
          category: category,
          offCountryTag: widget.offCountryTag,
          listId: widget.listId,
        ),
      ),
    );
  }

  Future<void> _addFrequent(String name) async {
    unawaited(HapticFeedback.lightImpact());
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
          listId: widget.listId,
          name: name,
          quantity: 1,
          categoryId: 'others',
        );
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$name adicionado'), duration: const Duration(seconds: 1)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final history = ref.watch(itemHistoryProvider);
    final frequents = history.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final topFrequents = frequents.take(10).map((e) => e.key).toList();

    final isSearching = _searchQuery.trim().length >= 2;
    final searchAsync = isSearching
        ? ref.watch(catalogSearchProvider(query: _searchQuery, offCountryTag: widget.offCountryTag))
        : const AsyncValue<List<CatalogProduct>>.data([]);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.catalogTitle)),
      body: ListView(
        padding: const EdgeInsets.all(Spacing.md),
        children: [
          // Barra de busca global
          CatalogSearchBar(
            controller: _searchController,
            hintText: l10n.catalogSearchGlobal,
            onChanged: _onSearchChanged,
            autofocus: false,
          ),
          const SizedBox(height: Spacing.md),

          // Resultados de busca global (quando buscando)
          if (isSearching) ...[
            searchAsync.when(
              loading: () => const Center(child: Padding(
                padding: EdgeInsets.all(Spacing.lg),
                child: CircularProgressIndicator(),
              )),
              error: (e, _) => Text('Erro: $e'),
              data: (results) {
                if (results.isEmpty) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: Spacing.lg),
                    child: Center(child: Text(l10n.catalogProductNotFound)),
                  );
                }
                return Column(
                  children: results.map((product) => ProductListTile(
                    product: product,
                    quantity: 0,
                    onIncrement: () => _addFrequent(product.name),
                    onDecrement: () {},
                  )).toList(),
                );
              },
            ),
          ] else ...[
            // Seção "Meus Frequentes"
            if (topFrequents.isNotEmpty) ...[
              Text(l10n.catalogMyFrequents, style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.primary, fontWeight: FontWeight.bold,
              )),
              const SizedBox(height: Spacing.sm),
              Wrap(
                spacing: Spacing.xs,
                runSpacing: Spacing.xs,
                children: topFrequents.map((name) => ActionChip(
                  label: Text(name),
                  onPressed: () => _addFrequent(name),
                  avatar: const Icon(Icons.add, size: 14),
                  shape: const StadiumBorder(),
                )).toList(),
              ),
              const SizedBox(height: Spacing.lg),
            ],

            // Grade de categorias
            Text(l10n.catalogTitle, style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            )),
            const SizedBox(height: Spacing.sm),
            CategoryGrid(
              categories: catalogCategories,
              onCategoryTap: _openCategory,
            ),
          ],
        ],
      ),
    );
  }
}
// coverage:ignore-end
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/catalog/screens/catalog_home_screen.dart
git commit -m "feat(catalog): add CatalogHomeScreen with search and frequents"
```

---

## Task 10: Entry point na ListScreenBody

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Localizar a linha do QuickAddBar e adicionar o botão acima**

No arquivo `lib/app/lists/list_screen_body.dart`, a linha 642 tem:
```dart
: QuickAddBar(listId: widget.listId),
```

Substituir por:

```dart
: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _CatalogEntryButton(listId: widget.listId),
      QuickAddBar(listId: widget.listId),
    ],
  ),
```

- [ ] **Step 2: Adicionar o widget `_CatalogEntryButton` ao final do arquivo** (antes do último `}`)

```dart
class _CatalogEntryButton extends ConsumerWidget {
  const _CatalogEntryButton({required this.listId});
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context);
    final offCountryTag = localeCountryToOffTag(locale.countryCode);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 6, 8, 0),
      child: OutlinedButton.icon(
        onPressed: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (_) => CatalogHomeScreen(
              listId: listId,
              offCountryTag: offCountryTag,
            ),
          ),
        ),
        icon: const Icon(Icons.grid_view_rounded, size: 18),
        label: Text(l10n.catalogBrowse),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
          shape: const StadiumBorder(),
          foregroundColor: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
```

- [ ] **Step 3: Adicionar os imports necessários no topo de `list_screen_body.dart`**

```dart
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/app/catalog/screens/catalog_home_screen.dart';
```

- [ ] **Step 4: Confirmar que o projeto compila sem erros**

```bash
flutter analyze lib/app/lists/list_screen_body.dart --fatal-infos
```

Esperado: sem erros.

- [ ] **Step 5: Commit**

```bash
git add lib/app/lists/list_screen_body.dart
git commit -m "feat(catalog): add catalog entry button above QuickAddBar in list screen"
```

---

## Task 11: Upgrade do scanner de código de barras

**Files:**
- Modify: `lib/app/lists/widgets/quick_add_bar.dart`

- [ ] **Step 1: Converter `_BarcodeScannerSheet` de StatefulWidget para ConsumerStatefulWidget**

No arquivo `lib/app/lists/widgets/quick_add_bar.dart`:

1. Adicionar import no topo:
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/catalog/providers/catalog_providers.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
```

2. Alterar a declaração de `_BarcodeScannerSheet`:
```dart
// DE:
class _BarcodeScannerSheet extends StatefulWidget {
  const _BarcodeScannerSheet();
  @override
  State<_BarcodeScannerSheet> createState() => _BarcodeScannerSheetState();
}
class _BarcodeScannerSheetState extends State<_BarcodeScannerSheet> {

// PARA:
class _BarcodeScannerSheet extends ConsumerStatefulWidget {
  const _BarcodeScannerSheet();
  @override
  ConsumerState<_BarcodeScannerSheet> createState() => _BarcodeScannerSheetState();
}
class _BarcodeScannerSheetState extends ConsumerState<_BarcodeScannerSheet> {
```

3. Adicionar campo de estado para loading:
```dart
class _BarcodeScannerSheetState extends ConsumerState<_BarcodeScannerSheet> {
  final MobileScannerController controller = MobileScannerController();
  bool _hasScanned = false;
  bool _isLooking = false;  // adicionar esta linha
```

4. Substituir o bloco `onDetect` dentro do `MobileScanner` por:
```dart
onDetect: (capture) async {
  if (_hasScanned || _isLooking) return;
  final barcodes = capture.barcodes;
  for (final barcode in barcodes) {
    final rawValue = barcode.rawValue;
    if (rawValue != null) {
      _hasScanned = true;
      setState(() => _isLooking = true);

      final product = await ref.read(barcodeProductProvider(rawValue).future);

      if (!mounted) return;

      if (product != null) {
        Navigator.pop(context, product.displayName);
      } else {
        // Produto não encontrado: volta com null, QuickAddBar mostrará mensagem
        Navigator.pop(context, null);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.catalogProductNotFound)),
        );
      }
      break;
    }
  }
},
```

5. Adicionar o import de `AppLocalizations` no topo se não existir:
```dart
import 'package:shopping_list/generated/l10n/app_localizations.dart';
```

6. Adicionar loading indicator no body do sheet (dentro do `Column`, após o `Expanded` com o scanner):
```dart
if (_isLooking)
  const Padding(
    padding: EdgeInsets.all(Spacing.lg),
    child: CircularProgressIndicator(),
  ),
```

7. Atualizar `_scanBarcode` em `_QuickAddBarState` para usar o resultado como nome direto (não mais "Produto {rawValue}"):

```dart
// DE:
Future<void> _scanBarcode(TextEditingController controller) async {
  final result = await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (context) => const _BarcodeScannerSheet(),
  );
  if (result != null && result.isNotEmpty) {
    controller.text = 'Produto $result';
    unawaited(HapticFeedback.heavyImpact());
  }
}

// PARA:
Future<void> _scanBarcode(TextEditingController controller) async {
  final result = await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (context) => const _BarcodeScannerSheet(),
  );
  if (result != null && result.isNotEmpty) {
    controller.text = result;
    unawaited(HapticFeedback.heavyImpact());
  }
}
```

- [ ] **Step 2: Confirmar compilação sem erros**

```bash
flutter analyze lib/app/lists/widgets/quick_add_bar.dart --fatal-infos
```

Esperado: sem erros.

- [ ] **Step 3: Commit**

```bash
git add lib/app/lists/widgets/quick_add_bar.dart
git commit -m "feat(catalog): upgrade barcode scanner to lookup product via Open Food Facts"
```

---

## Task 12: Verificação final e análise completa

- [ ] **Step 1: Rodar análise completa do projeto**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list"
flutter analyze --fatal-infos
```

Esperado: sem erros nem infos.

- [ ] **Step 2: Rodar todos os testes do catálogo**

```bash
flutter test test/app/catalog/ --reporter=compact
```

Esperado: todos os testes passando.

- [ ] **Step 3: Rodar build_runner para garantir que todos os .g.dart estão atualizados**

```bash
dart run build_runner build --delete-conflicting-outputs
```

Esperado: sem erros.

- [ ] **Step 4: Verificar que o app compila para debug**

```bash
flutter build apk --debug --no-tree-shake-icons 2>&1 | tail -5
```

Esperado: `Built build/app/outputs/flutter-apk/app-debug.apk`.

- [ ] **Step 5: Commit final**

```bash
git add -A
git commit -m "feat(catalog): complete product catalog browsing feature"
```
