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
          Padding(
            padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
            child: CatalogSearchBar(
              controller: _searchController,
              hintText: l10n.catalogSearchInCategory(widget.category.name),
              onChanged: _onSearchChanged,
            ),
          ),
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
          Expanded(
            child: catalogAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text(l10n.error('$e'))),
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
