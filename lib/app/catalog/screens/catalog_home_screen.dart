// coverage:ignore-start
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/app/catalog/models/catalog_product.dart';
import 'package:shopping_list/app/catalog/providers/catalog_providers.dart';
import 'package:shopping_list/app/catalog/screens/catalog_category_screen.dart';
import 'package:shopping_list/app/catalog/widgets/catalog_search_bar.dart';
import 'package:shopping_list/app/catalog/widgets/category_grid.dart';
import 'package:shopping_list/app/catalog/widgets/product_list_tile.dart';
import 'package:shopping_list/app/lists/providers/item_history_provider.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
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
          CatalogSearchBar(
            controller: _searchController,
            hintText: l10n.catalogSearchGlobal,
            onChanged: _onSearchChanged,
            autofocus: false,
          ),
          const SizedBox(height: Spacing.md),
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
