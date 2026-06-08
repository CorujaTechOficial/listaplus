import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/services/logger_service.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';

part 'list_providers.g.dart';

@riverpod
class CurrentListId extends _$CurrentListId {
  @override
  Future<String?> build() {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return Future.value(null);
    return service.getCurrentListId();
  }

  Future<void> setCurrentList(String? listId) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;

    final previous = state.value;
    state = AsyncValue.data(listId);

    try {
      await service.setCurrentListId(listId);
    } on Exception {
      if (ref.mounted) {
        state = AsyncValue.data(previous);
      }
      rethrow;
    }
  }
}

@Riverpod(keepAlive: true)
class ShoppingLists extends _$ShoppingLists {
  @override
  Stream<List<ShoppingList>> build() {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return const Stream.empty();

    final ownedStream = service.watchLists();
    final sharedRefsStream = service.watchSharedListRefs();

    return CombineLatestStream.combine2<List<ShoppingList>, List<ShoppingList>, List<ShoppingList>>(
      ownedStream,
      sharedRefsStream.switchMap((refs) {
        if (refs.isEmpty) {
          return Stream.value(<ShoppingList>[]);
        }

        final individualStreams = refs.entries.map((entry) {
          return service.watchListFromUser(entry.value, entry.key).map((l) {
            if (l == null) {
              return null;
            }
            return l.copyWith(ownerUid: entry.value);
          }).onErrorReturnWith((err, st) {
            LoggerService.error(err, stackTrace: st, message: 'ShoppingLists: erro ao observar lista compartilhada ${entry.key}');
            return null;
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
    LoggerService.log('createList iniciado: nome="$name", budget=$budget', tag: 'ShoppingLists');

    final currentLists = state.value ?? [];
    final activeListsCount = currentLists.where((l) => !l.isArchived).length;

    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
    final newList = ShoppingList(name: name, budget: budget);

    LoggerService.log('createList: novoLista.id=${newList.id}', tag: 'ShoppingLists');

    try {
      await service.saveList(newList);
      LoggerService.log('createList: saveList ok', tag: 'ShoppingLists');

      await service.setCurrentListId(newList.id);
      LoggerService.log('createList: setCurrentListId ok', tag: 'ShoppingLists');

      if (ref.mounted) {
        ref.invalidate(currentListIdProvider);
      }

      return newList;
    } on Exception catch (e, s) {
      LoggerService.error(e, stackTrace: s, message: 'Erro ao criar lista', extra: {
        'listName': name,
        'listId': newList.id,
        'budget': budget?.toString(),
        'activeListsCount': activeListsCount.toString(),
      });
      throw Exception('Erro ao conectar com o servidor: $e');
    }
  }

  Future<void> updateList(ShoppingList list) async {
    LoggerService.log('updateList: id=${list.id}, name=${list.name}', tag: 'ShoppingLists');
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
    try {
      await service.saveList(list);
      LoggerService.log('updateList: ok', tag: 'ShoppingLists');
    } on Exception catch (e, s) {
      LoggerService.error(e, stackTrace: s, message: 'Erro ao atualizar lista', extra: {
        'listId': list.id,
        'listName': list.name,
      });
      throw Exception('Erro ao atualizar lista: $e');
    }
  }

  Future<void> deleteList(String id) async {
    LoggerService.log('deleteList: id=$id', tag: 'ShoppingLists');
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
    final lists = state.value ?? [];

    try {
      await service.deleteList(id);
      LoggerService.log('deleteList: deleteList ok', tag: 'ShoppingLists');
      await service.deleteItemsFromList(id);
      LoggerService.log('deleteList: deleteItemsFromList ok', tag: 'ShoppingLists');

      final updatedLists = lists.where((l) => l.id != id).toList();
      final newCurrent = updatedLists.isNotEmpty ? updatedLists.first.id : null;
      if (newCurrent != null) {
        await service.setCurrentListId(newCurrent);
      }

      if (ref.mounted) {
        ref.invalidate(currentListIdProvider);
      }
    } on Exception catch (e, s) {
      LoggerService.error(e, stackTrace: s, message: 'Erro ao excluir lista', extra: {
        'listId': id,
      });
      throw Exception('Erro ao excluir lista: $e');
    }
  }

  Future<void> removeSharedList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
    try {
      await service.removeSharedListRef(id);
    } on Exception catch (e) {
      throw Exception('Erro ao remover lista compartilhada: $e');
    }
  }

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
    try {
      await service.setCurrentListId(listId);
      if (ref.mounted) {
        // ignore: unawaited_futures
        ref.read(currentListIdProvider.notifier).setCurrentList(listId);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao definir lista atual: $e');
    }
  }

  Future<void> archiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
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
        final freshLists = state.value ?? lists;
        final activeLists = freshLists.where((l) => l.id != id && !l.isArchived).toList();
        final newCurrent = activeLists.isNotEmpty ? activeLists.first.id : null;
        await service.setCurrentListId(newCurrent);

        if (ref.mounted) {
          ref.invalidate(currentListIdProvider);
        }
      }
    } on Exception catch (e) {
      throw Exception('Erro ao arquivar lista: $e');
    }
  }

  Future<void> unarchiveList(String id) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
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
