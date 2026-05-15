import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_list.dart';
import 'storage_service.dart';

part 'shopping_lists_provider.g.dart';

@riverpod
class ShoppingLists extends _$ShoppingLists {
  final _storage = StorageService();

  @override
  Future<List<ShoppingList>> build() async {
    return await _storage.loadLists();
  }

  Future<ShoppingList> createList(String name, {double? budget}) async {
    final newList = ShoppingList(name: name, budget: budget);
    final currentLists = state.value ?? [];
    final updated = [...currentLists, newList];
    state = AsyncValue.data(updated);
    await _storage.saveLists(updated);
    await _storage.setCurrentListId(newList.id);
    return newList;
  }

  Future<void> updateList(ShoppingList list) async {
    final lists = state.value ?? [];
    final updated = lists.map((l) => l.id == list.id ? list : l).toList();
    state = AsyncValue.data(updated);
    await _storage.saveLists(updated);
  }

  Future<void> deleteList(String id) async {
    final lists = state.value ?? [];
    final updated = lists.where((l) => l.id != id).toList();
    state = AsyncValue.data(updated);
    await _storage.saveLists(updated);
    
    // Delete all items from this list
    await _storage.deleteItemsFromList(id);
    
    // Switch to another list or null
    final newCurrent = updated.isNotEmpty ? updated.first.id : null;
    if (newCurrent != null) {
      await _storage.setCurrentListId(newCurrent);
    }
  }

  Future<void> setCurrentList(String listId) async {
    await _storage.setCurrentListId(listId);
  }
}
