import 'package:flutter/foundation.dart' show debugPrint;
// coverage:ignore-start
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_item.dart';
import '../models/unit.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';
import 'item_history_provider.dart';
import 'price_history_provider.dart';
import 'user_stats_provider.dart';

part 'shopping_list_provider.g.dart';

@riverpod
String? listOwner(Ref ref, String listId) {
  final lists = ref.watch(shoppingListsProvider).value ?? [];
  final list = lists.where((l) => l.id == listId).firstOrNull;
  return list?.ownerUid;
}

@riverpod
class ShoppingListItems extends _$ShoppingListItems {
  @override
  Stream<List<ShoppingItem>> build(String listId) {
    final service = ref.watch(firestoreServiceProvider);
    final ownerUid = ref.watch(listOwnerProvider(listId));
    if (ownerUid != null) {
      return service.watchItemsFromUser(ownerUid, listId);
    }
    return service.watchItems(listId);
  }

  Future<String?> _ownerUid() async {
    try {
      final lists = await ref.read(shoppingListsProvider.future);
      return lists.where((l) => l.id == listId).firstOrNull?.ownerUid;
    } on Exception catch (e) {
      debugPrint('Error fetching ownerUid for list $listId: $e');
      return null;
    }
  }

  Future<void> addItem({
    required String listId,
    required String name,
    required int quantity,
    required String categoryId,
    Unit unit = Unit.un,
    double? estimatedPrice,
    String? id,
  }) async {
    final service = ref.read(firestoreServiceProvider);
    final newItem = ShoppingItem(
      id: id,
      shoppingListId: listId,
      name: name,
      quantity: quantity,
      categoryId: categoryId,
      unit: unit,
      estimatedPrice: estimatedPrice,
    );

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, newItem);
      } else {
        await service.saveItem(newItem);
      }
      
      // Track in history
      // ignore: unawaited_futures
      ref.read(itemHistoryProvider.notifier).trackItem(name).catchError((Object e) {
        debugPrint('Failed to track item history: $e');
      });
    } on Exception catch (e) {
      throw Exception('Erro ao adicionar item: $e');
    }
  }

  Future<void> togglePurchased(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final item = items.where((i) => i.id == id).firstOrNull;
    if (item == null) {
      return;
    }

    final toggledItem = item.copyWith(
      isPurchased: !item.isPurchased,
      updatedAt: DateTime.now(),
    );

    // Optimistic update
    final previousState = state.value;
    state = AsyncValue.data(
      items.map((i) => i.id == id ? toggledItem : i).toList(),
    );

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, toggledItem);
      } else {
        await service.saveItem(toggledItem);
      }
      
      if (toggledItem.isPurchased) {
        // ignore: unawaited_futures
        ref.read(userStatsProvider.notifier).recordPurchase(itemCount: 1).catchError((Object e) {
          debugPrint('Failed to record purchase stats: $e');
        });
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao alternar status do item: $e');
    }
  }

  Future<void> removeItem(String id) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.deleteItemFromUser(ownerUid, listId, id);
      } else {
        await service.deleteItem(listId, id);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao remover item: $e');
    }
  }

  Future<void> updateItem(ShoppingItem item) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, item);
      } else {
        await service.saveItem(item);
      }
      
      // Update price history
      if (item.estimatedPrice != null) {
        // ignore: unawaited_futures
        ref.read(priceHistoryProvider.notifier).updatePrice(item.name, item.estimatedPrice!).catchError((Object e) {
          debugPrint('Failed to update price history: $e');
        });
      }
    } on Exception catch (e) {
      throw Exception('Erro ao atualizar item: $e');
    }
  }

  Future<void> updateItems(List<ShoppingItem> items) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, items);
      } else {
        await service.saveItems(items);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao atualizar itens: $e');
    }
  }

  Future<void> restoreItem(ShoppingItem item) async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, item);
      } else {
        await service.saveItem(item);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao restaurar item: $e');
    }
  }

  Future<void> incrementQuantity(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final item = items.where((i) => i.id == id).firstOrNull;
    if (item == null) {
      return;
    }

    final updatedItem = item.copyWith(quantity: item.quantity + 1, updatedAt: DateTime.now());
    final previousState = state.value;
    state = AsyncValue.data(
      items.map((i) => i.id == id ? updatedItem : i).toList(),
    );

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, updatedItem);
      } else {
        await service.saveItem(updatedItem);
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao aumentar quantidade: $e');
    }
  }

  Future<void> decrementQuantity(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final item = items.where((i) => i.id == id).firstOrNull;
    if (item == null || item.quantity <= 1) {
      return;
    }

    final updatedItem = item.copyWith(quantity: item.quantity - 1, updatedAt: DateTime.now());
    final previousState = state.value;
    state = AsyncValue.data(
      items.map((i) => i.id == id ? updatedItem : i).toList(),
    );

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, updatedItem);
      } else {
        await service.saveItem(updatedItem);
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao diminuir quantidade: $e');
    }
  }

  Future<void> clearAll() async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.deleteItemsFromList(listId);
      } else {
        await service.deleteItemsFromList(listId);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao limpar lista: $e');
    }
  }

  Future<void> clearPurchased() async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !item.isPurchased).toList();
    final removedIds = items.where((item) => item.isPurchased).map((i) => i.id).toSet();
    if (removedIds.isEmpty) {
      return;
    }

    final previousState = state.value;
    state = AsyncValue.data(updated);

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        for (final id in removedIds) {
          await service.deleteItemFromUser(ownerUid, listId, id);
        }
      } else {
        for (final id in removedIds) {
          await service.deleteItem(listId, id);
        }
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao limpar itens comprados: $e');
    }
  }

  Future<void> removeItems(List<String> ids) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !ids.contains(item.id)).toList();
    final previousState = state.value;
    state = AsyncValue.data(updated);

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        for (final id in ids) {
          await service.deleteItemFromUser(ownerUid, listId, id);
        }
      } else {
        for (final id in ids) {
          await service.deleteItem(listId, id);
        }
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao remover itens: $e');
    }
  }

  Future<void> togglePurchasedBatch(List<String> ids, bool isPurchased) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    int newlyPurchased = 0;
    final updated = items.map((item) {
      if (ids.contains(item.id)) {
        if (!item.isPurchased && isPurchased) {
          newlyPurchased++;
        }
        return item.copyWith(
          isPurchased: isPurchased,
          updatedAt: DateTime.now(),
        );
      }
      return item;
    }).toList();
    
    final previousState = state.value;
    state = AsyncValue.data(updated);

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, updated);
      } else {
        await service.saveItems(updated);
      }

      if (newlyPurchased > 0) {
        // ignore: unawaited_futures
        ref.read(userStatsProvider.notifier).recordPurchase(itemCount: newlyPurchased).catchError((Object e) {
          debugPrint('Failed to record batch purchase stats: $e');
        });
      }
    } on Exception catch (e) {
      if (previousState != null) {
        state = AsyncValue.data(previousState);
      }
      throw Exception('Erro ao alternar itens: $e');
    }
  }

  Future<void> reorderItem(int oldIndex, int newIndex) async {
    final service = ref.read(firestoreServiceProvider);
    final items = <ShoppingItem>[...(state.value ?? [])];
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
    
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, items);
      } else {
        await service.saveItems(items);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao reordenar item: $e');
    }
  }
}
// coverage:ignore-end
