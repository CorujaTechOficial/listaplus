import 'dart:async';

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_riverpod/flutter_riverpod.dart';
// coverage:ignore-start
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/shopping_item.dart';
import '../models/category.dart';
import '../models/unit.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';
import 'item_history_provider.dart';
import 'price_history_provider.dart';
import 'user_stats_provider.dart';

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

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, newItem);
      } else {
        await service.saveItem(newItem);
      }
      
      // Track in history
      unawaited(ref.read(itemHistoryProvider.notifier).trackItem(name));
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

    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, toggledItem);
      } else {
        await service.saveItem(toggledItem);
      }
      
      // Record stats if newly purchased
      if (toggledItem.isPurchased) {
        unawaited(ref.read(userStatsNotifierProvider.notifier).recordPurchase(itemCount: 1));
      }
    } on Exception catch (e) {
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
        unawaited(ref.read(priceHistoryProvider.notifier).updatePrice(item.name, item.estimatedPrice!));
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
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, updatedItem);
      } else {
        await service.saveItem(updatedItem);
      }
    } on Exception catch (e) {
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
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemToUser(ownerUid, updatedItem);
      } else {
        await service.saveItem(updatedItem);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao diminuir quantidade: $e');
    }
  }

  Future<void> clearAll() async {
    final service = ref.read(firestoreServiceProvider);
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, []);
      } else {
        await service.saveItems([]);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao limpar lista: $e');
    }
  }

  Future<void> clearPurchased() async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !item.isPurchased).toList();
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, updated);
      } else {
        await service.saveItems(updated);
      }
    } on Exception catch (e) {
      throw Exception('Erro ao limpar itens comprados: $e');
    }
  }

  Future<void> removeItems(List<String> ids) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => !ids.contains(item.id)).toList();
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, updated);
      } else {
        await service.saveItems(updated);
      }
    } on Exception catch (e) {
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
    
    try {
      final ownerUid = await _ownerUid();
      if (ownerUid != null) {
        await service.saveItemsToUser(ownerUid, updated);
      } else {
        await service.saveItems(updated);
      }

      if (newlyPurchased > 0) {
        unawaited(ref.read(userStatsNotifierProvider.notifier).recordPurchase(itemCount: newlyPurchased));
      }
    } on Exception catch (e) {
      throw Exception('Erro ao alternar itens: $e');
    }
  }

  Future<void> reorderItem(int oldIndex, int newIndex) async {
    final service = ref.read(firestoreServiceProvider);
    final items = <ShoppingItem>[...(state.value ?? [])];
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
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
