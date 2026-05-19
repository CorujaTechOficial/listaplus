import 'package:flutter_riverpod/flutter_riverpod.dart';
// coverage:ignore-start
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_item.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../services/storage_backend.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';

part 'shopping_list_provider.g.dart';

@riverpod
String? listOwner(Ref ref, String listId) {
  final lists = ref.watch(shoppingListsProvider).valueOrNull ?? [];
  final list = lists.where((l) => l.id == listId).firstOrNull;
  return list?.ownerUid;
}

@riverpod
class ShoppingListItems extends _$ShoppingListItems {
  @override
  Future<List<ShoppingItem>> build(String listId) async {
    final service = ref.watch(firestoreServiceProvider);
    final ownerUid = ref.watch(listOwnerProvider(listId));
    if (ownerUid != null) {
      return service.loadItemsFromUser(ownerUid, listId);
    }
    return service.loadItems(listId);
  }

  String? _ownerUid() {
    final lists = ref.read(shoppingListsProvider).valueOrNull ?? [];
    return lists.where((l) => l.id == listId).firstOrNull?.ownerUid;
  }

  Future<void> addItem({
    required String listId,
    required String name,
    required int quantity,
    required Category category,
    Unit unit = Unit.un,
    double? estimatedPrice,
  }) async {
    final service = ref.read(firestoreServiceProvider);
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
    await _saveItems(service, state.value ?? []);
  }

  Future<void> togglePurchased(String id) async {
    final service = ref.read(firestoreServiceProvider);
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
    await _saveItems(service, updated);
  }

  Future<void> removeItem(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => item.id != id).toList();

    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> updateItem(ShoppingItem item) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.map((e) => e.id == item.id ? item : e).toList();

    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> restoreItem(ShoppingItem item) async {
    final service = ref.read(firestoreServiceProvider);
    final currentItems = state.value ?? [];
    state = AsyncValue.data([...currentItems, item]);
    await _saveItems(service, state.value ?? []);
  }

  Future<void> incrementQuantity(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.map((item) {
      if (item.id == id) {
        return item.copyWith(quantity: item.quantity + 1, updatedAt: DateTime.now());
      }
      return item;
    }).toList();
    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> decrementQuantity(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.map((item) {
      if (item.id == id && item.quantity > 1) {
        return item.copyWith(quantity: item.quantity - 1, updatedAt: DateTime.now());
      }
      return item;
    }).toList();
    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> clearAll() async {
    final service = ref.read(firestoreServiceProvider);
    state = const AsyncValue.data([]);
    await _saveItems(service, []);
  }

  Future<void> clearPurchased() async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !item.isPurchased).toList();
    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> removeItems(List<String> ids) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !ids.contains(item.id)).toList();
    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> togglePurchasedBatch(List<String> ids, bool isPurchased) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.map((item) {
      if (ids.contains(item.id)) {
        return item.copyWith(
          isPurchased: isPurchased,
          updatedAt: DateTime.now(),
        );
      }
      return item;
    }).toList();
    state = AsyncValue.data(updated);
    await _saveItems(service, updated);
  }

  Future<void> reorderItem(int oldIndex, int newIndex) async {
    final service = ref.read(firestoreServiceProvider);
    final items = <ShoppingItem>[...(state.value ?? [])];
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
    state = AsyncValue.data(items);
    await _saveItems(service, items);
  }

  Future<void> _saveItems(StorageBackend service, List<ShoppingItem> items) async {
    final ownerUid = _ownerUid();
    if (ownerUid != null) {
      await service.saveItemsToUser(ownerUid, items);
    } else {
      await service.saveItems(items);
    }
  }
}
// coverage:ignore-end
