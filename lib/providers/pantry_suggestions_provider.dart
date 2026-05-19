import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/pantry_item.dart';
import '../models/shopping_item.dart';
import 'pantry_items_provider.dart';

part 'pantry_suggestions_provider.g.dart';

@riverpod
// ignore: deprecated_member_use_from_same_package
List<ShoppingItem> pantrySuggestions(PantrySuggestionsRef ref) {
  final items = ref.watch(pantryItemsProvider).valueOrNull ?? <PantryItem>[];
  return items
      .where((PantryItem p) => p.trackStock && p.deficit > 0)
      .map((PantryItem p) => ShoppingItem(
            shoppingListId: '',
            name: p.name,
            quantity: p.deficit,
            category: p.category,
            unit: p.unit,
            estimatedPrice: p.estimatedPrice,
          ))
      .toList();
}
