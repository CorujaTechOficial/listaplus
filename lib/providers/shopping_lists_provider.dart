import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
// coverage:ignore-start
import '../models/shopping_list.dart';
import 'firestore_service_provider.dart';
import 'premium_provider.dart';
import 'current_list_provider.dart';

part 'shopping_lists_provider.g.dart';

@riverpod
class ShoppingLists extends _$ShoppingLists {
  @override
  Stream<List<ShoppingList>> build() {
    final service = ref.watch(firestoreServiceProvider);
    
    final ownedStream = service.watchLists();
    final sharedRefsStream = service.watchSharedListRefs();

    return CombineLatestStream.combine2<List<ShoppingList>, List<ShoppingList>, List<ShoppingList>>(
      ownedStream,
      sharedRefsStream.switchMap((refs) {
        if (refs.isEmpty) {
          return Stream.value(<ShoppingList>[]);
        }
        
        final individualStreams = refs.entries.map((e) {
          return service.watchListFromUser(e.value, e.key).map((l) {
            if (l == null) {
              return null;
            }
            return l.copyWith(ownerUid: e.value);
          });
        }).toList();

        return CombineLatestStream.list(individualStreams).map((lists) {
          return lists.whereType<ShoppingList>().toList();
        });
      }),
      (owned, shared) => [...owned, ...shared],
    );
  }

  Future<ShoppingList> createList(String name, {double? budget}) async {
    final isPremium = ref.read(premiumProvider).value ?? false;
    final currentLists = state.value ?? [];

    if (!isPremium && currentLists.length >= 3) {
      throw Exception('Limite de 3 listas no plano gratuito. Faça upgrade para criar mais.');
    }

    final service = ref.read(firestoreServiceProvider);
    final newList = ShoppingList(name: name, budget: budget);
    
    // We don't update state manually anymore, let the stream handle it
    await service.saveLists([...currentLists, newList]);
    await service.setCurrentListId(newList.id);
    return newList;
  }

  Future<void> updateList(ShoppingList list) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final updated = lists.map((l) => l.id == list.id ? list : l).toList();
    await service.saveLists(updated);
  }

  Future<void> deleteList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final updated = lists.where((l) => l.id != id).toList();
    
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
    await service.removeSharedListRef(id);
  }

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    await service.setCurrentListId(listId);
  }

  Future<void> archiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final list = lists.where((l) => l.id == id).firstOrNull;
    if (list == null) return;
    final updatedList = list.copyWith(isArchived: true, archivedAt: DateTime.now());
    final updated = lists.map((l) => l.id == id ? updatedList : l).toList();
    
    await service.saveLists(updated);

    final currentId = await service.getCurrentListId();
    if (currentId == id) {
      final activeLists = updated.where((l) => !l.isArchived).toList();
      final newCurrent = activeLists.isNotEmpty ? activeLists.first.id : null;
      if (newCurrent != null) {
        await service.setCurrentListId(newCurrent);
        ref.invalidate(currentListIdProvider);
      } else {
        await service.setCurrentListId(null);
        ref.invalidate(currentListIdProvider);
      }
    }
  }

  Future<void> unarchiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final list = lists.where((l) => l.id == id).firstOrNull;
    if (list == null) return;
    final updatedList = list.copyWith(isArchived: false, archivedAt: null);
    final updated = lists.map((l) => l.id == id ? updatedList : l).toList();
    await service.saveLists(updated);
  }
}
// coverage:ignore-end
