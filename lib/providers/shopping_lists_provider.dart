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
    final isPremium = await ref.read(premiumProvider.future);
    final currentLists = state.value ?? [];
    final activeListsCount = currentLists.where((l) => !l.isArchived).length;

    if (!isPremium && activeListsCount >= 3) {
      throw Exception('Limite de 3 listas ativas no plano gratuito. Arquive ou exclua uma lista ativa para criar mais.');
    }

    final service = ref.read(firestoreServiceProvider);
    final newList = ShoppingList(name: name, budget: budget);
    
    try {
      await service.saveList(newList);
      await service.setCurrentListId(newList.id);
      return newList;
    } on Exception catch (e) {
      throw Exception('Erro ao criar lista: $e');
    }
  }

  Future<void> updateList(ShoppingList list) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      await service.saveList(list);
    } on Exception catch (e) {
      throw Exception('Erro ao atualizar lista: $e');
    }
  }

  Future<void> deleteList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    
    try {
      await service.deleteItemsFromList(id);
      await service.deleteList(id);
      
      final updatedLists = lists.where((l) => l.id != id).toList();
      final newCurrent = updatedLists.isNotEmpty ? updatedLists.first.id : null;
      if (newCurrent != null) {
        await service.setCurrentListId(newCurrent);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao excluir lista: $e');
    }
  }

  Future<void> removeSharedList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      await service.removeSharedListRef(id);
    } on Exception catch (e) {
      throw Exception('Erro ao remover lista compartilhada: $e');
    }
  }

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      await service.setCurrentListId(listId);
    } on Exception catch (e) {
      throw Exception('Erro ao definir lista atual: $e');
    }
  }

  Future<void> archiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final list = lists.where((l) => l.id == id).firstOrNull;
    if (list == null) {
      return;
    }
    
    final updatedList = list.copyWith(isArchived: true, archivedAt: DateTime.now());
    try {
      await service.saveList(updatedList);

      final currentId = await service.getCurrentListId();
      if (currentId == id) {
        final activeLists = lists.where((l) => l.id != id && !l.isArchived).toList();
        final newCurrent = activeLists.isNotEmpty ? activeLists.first.id : null;
        if (newCurrent != null) {
          await service.setCurrentListId(newCurrent);
          ref.invalidate(currentListIdProvider);
        } else {
          await service.setCurrentListId(null);
          ref.invalidate(currentListIdProvider);
        }
      }
    } on Exception catch (e) {
      throw Exception('Erro ao arquivar lista: $e');
    }
  }

  Future<void> unarchiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final lists = state.value ?? [];
    final list = lists.where((l) => l.id == id).firstOrNull;
    if (list == null) {
      return;
    }
    
    final updatedList = list.copyWith(isArchived: false, archivedAt: null);
    try {
      await service.saveList(updatedList);
    } on Exception catch (e) {
      throw Exception('Erro ao desarquivar lista: $e');
    }
  }
}
// coverage:ignore-end
