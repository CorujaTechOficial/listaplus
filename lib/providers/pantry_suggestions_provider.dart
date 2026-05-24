import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/pantry_item.dart';
import '../models/shopping_item.dart';
import 'pantry_items_provider.dart';

part 'pantry_suggestions_provider.g.dart';

@riverpod
class PantrySuggestions extends _$PantrySuggestions {
  @override
  List<ShoppingItem> build() {
    final items = ref.watch(pantryItemsProvider).value ?? <PantryItem>[];
    return items
        .where((PantryItem p) => p.trackStock && p.deficit > 0)
        .map((PantryItem p) => ShoppingItem(
              shoppingListId: '',
              name: p.name,
              quantity: p.deficit,
              categoryId: p.categoryId,
              unit: p.unit,
              estimatedPrice: p.estimatedPrice,
            ))
        .toList();
  }
}
