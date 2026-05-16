import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_list.dart';
import 'firestore_service_provider.dart';
import 'premium_provider.dart';

part 'shopping_lists_provider.g.dart';

@riverpod
class ShoppingLists extends _$ShoppingLists {
  @override
  Future<List<ShoppingList>> build() {
    final service = ref.watch(firestoreServiceProvider);
    return service.loadLists();
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

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    await service.setCurrentListId(listId);
  }
}
