import 'package:flutter/material.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ShoppingSearchDelegate extends SearchDelegate<String> {
  ShoppingSearchDelegate(this.listId, this.allItems, this.categoriesMap);

  final String listId;
  final List<ShoppingItem> allItems;
  final Map<String, CategoryData> categoriesMap;

  @override
  List<Widget> buildActions(BuildContext context) => [
    IconButton(icon: const Icon(PhosphorIconsRegular.x), onPressed: () => query = ''),
  ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
    icon: const Icon(PhosphorIconsRegular.arrowLeft),
    onPressed: () => close(context, ''),
  );

  @override
  Widget buildResults(BuildContext context) => _buildResults(context);

  @override
  Widget buildSuggestions(BuildContext context) => _buildResults(context);

  Widget _buildResults(BuildContext context) {
    final results =
        allItems
            .where((i) => i.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
    if (results.isEmpty) {
      return Center(
        child: Icon(
          PhosphorIconsRegular.magnifyingGlassMinus,
          size: 48,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      );
    }
    return ListView.builder(
      itemCount: results.length,
      itemBuilder:
          (context, index) =>
              ShoppingItemTile(listId: listId, item: results[index]),
    );
  }
}
