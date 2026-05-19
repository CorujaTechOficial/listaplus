import 'package:riverpod_annotation/riverpod_annotation.dart';
// coverage:ignore-start
import '../models/shopping_list.dart';
import 'firestore_service_provider.dart';
import 'premium_provider.dart';

part 'shopping_lists_provider.g.dart';

@riverpod
class ShoppingLists extends _$ShoppingLists {
  @override
  Future<List<ShoppingList>> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final owned = await service.loadLists();

    final sharedRefs = await service.loadSharedListRefs();
    if (sharedRefs.isEmpty) {
      return owned;
    }

    final shared = <ShoppingList>[];
    for (final entry in sharedRefs.entries) {
      final list = await service.loadListFromUser(entry.value, entry.key);
      if (list != null) {
        shared.add(list.copyWith(ownerUid: entry.value));
      } else {
        await service.removeSharedListRef(entry.key);
      }
    }
    return [...owned, ...shared];
  }

  Future<ShoppingList> createList(String name, {double? budget}) async {
    final isPremium = ref.read(premiumProvider).value ?? false;
    final currentLists = state.value ?? [];

    if (!isPremium && currentLists.length >= 3) {
      throw Exception('Limite de 3 listas no plano gratuito. Faça upgrade para criar mais.');
    }

    final service = ref.read(firestoreServiceProvider);
    final newList = ShoppingList(name: name, budget: budget);
    final updated = [...currentLists, newList];
    state = AsyncValue.data(updated);
    await service.saveLists(updated);
    await service.setCurrentListId(newList.id);
    return newList;
  }

  Future<void> updateList(ShoppingList list) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final updated = lists.map((l) => l.id == list.id ? list : l).toList();
    state = AsyncValue.data(updated);
    await service.saveLists(updated);
  }

  Future<void> deleteList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final updated = lists.where((l) => l.id != id).toList();
    state = AsyncValue.data(updated);
    await service.deleteList(id);
    await service.saveLists(updated);
    await service.deleteItemsFromList(id);
    final newCurrent = updated.isNotEmpty ? updated.first.id : null;
    if (newCurrent != null) {
      await service.setCurrentListId(newCurrent);
    }
  }

  Future<void> removeSharedList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final updated = lists.where((l) => l.id != id).toList();
    state = AsyncValue.data(updated);
    await service.removeSharedListRef(id);
  }

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    await service.setCurrentListId(listId);
  }
}
// coverage:ignore-end
