import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import '../models/shopping_item.dart';
import '../models/category.dart';
import 'storage_service.dart';

part 'shopping_list_provider.g.dart';

@riverpod
class ShoppingList extends _$ShoppingList {
  final _storage = StorageService();
  final _uuid = const Uuid();

  @override
  Future<List<ShoppingItem>> build() async {
    return await _storage.loadItems();
  }

  Future<void> addItem({
    required String name,
    required int quantity,
    required Category category,
    double? estimatedPrice,
  }) async {
    final newItem = ShoppingItem(
      name: name,
      quantity: quantity,
      category: category,
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
}
