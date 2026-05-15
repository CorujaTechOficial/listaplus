import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_item.dart';
import '../models/category.dart';
import '../models/unit.dart';
import 'storage_service.dart';

part 'shopping_list_provider.g.dart';

@riverpod
class ShoppingListItems extends _$ShoppingListItems {
  final _storage = StorageService();

  @override
  Future<List<ShoppingItem>> build(String listId) {
    return _storage.loadItems(listId);
  }

  Future<void> addItem({
    required String listId,
    required String name,
    required int quantity,
    required Category category,
    Unit unit = Unit.un,
    double? estimatedPrice,
  }) async {
    final newItem = ShoppingItem(
      shoppingListId: listId,
      name: name,
      quantity: quantity,
      category: category,
      unit: unit,
      estimatedPrice: estimatedPrice,
    );

    final currentItems = state.value ?? [];
    state = AsyncValue.data([...currentItems, newItem]);
    await _storage.saveItems(state.value ?? []);
  }

  Future<void> togglePurchased(String id) async {
    final items = state.value ?? [];
    final updated = items.map((item) {
      if (item.id == id) {
        return item.copyWith(
          isPurchased: !item.isPurchased,
          updatedAt: DateTime.now(),
        );
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    await _storage.saveItems(updated);
  }

  Future<void> removeItem(String id) async {
    final items = state.value ?? [];
    final updated = items.where((item) => item.id != id).toList();

    state = AsyncValue.data(updated);
    await _storage.saveItems(updated);
  }

  Future<void> updateItem(ShoppingItem item) async {
    final items = state.value ?? [];
    final updated = items.map((e) => e.id == item.id ? item : e).toList();

    state = AsyncValue.data(updated);
    await _storage.saveItems(updated);
  }

  Future<void> clearAll() async {
    state = const AsyncValue.data([]);
    await _storage.saveItems([]);
  }

  Future<void> clearPurchased() async {
    final items = state.value ?? [];
    final updated = items.where((item) => !item.isPurchased).toList();
    state = AsyncValue.data(updated);
    await _storage.saveItems(updated);
  }

  Future<void> reorderItem(int oldIndex, int newIndex) async {
    final items = <ShoppingItem>[...(state.value ?? [])];
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
    state = AsyncValue.data(items);
    await _storage.saveItems(items);
  }
}
