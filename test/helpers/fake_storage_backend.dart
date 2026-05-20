import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/services/storage_backend.dart';

class FakeStorageBackend implements StorageBackend {
  final List<ShoppingList> _lists = [];
  final List<ShoppingItem> _items = [];
  final List<PantryItem> _pantryItems = [];
  String? _currentListId;
  final Map<String, dynamic> _userData = {};
  final Map<String?, List<ChatMessage>> _chatMessages = {};

  final _listsController = BehaviorSubject<List<ShoppingList>>.seeded([]);
  final _itemsController = BehaviorSubject<List<ShoppingItem>>.seeded([]);
  final _sharedRefsController = BehaviorSubject<Map<String, String>>.seeded({});

  @override
  Future<List<ShoppingList>> loadLists() async => List.unmodifiable(_lists);

  @override
  Stream<List<ShoppingList>> watchLists() => _listsController.stream;

  @override
  Future<void> saveLists(List<ShoppingList> lists) async {
    for (final list in lists) {
      _lists.removeWhere((l) => l.id == list.id);
      _lists.add(list);
    }
    _listsController.add(List.unmodifiable(_lists));
  }

  @override
  Future<void> deleteList(String listId) async {
    _lists.removeWhere((l) => l.id == listId);
    _listsController.add(List.unmodifiable(_lists));
  }

  @override
  Future<List<ShoppingItem>> loadItems(String listId) async {
    return List.unmodifiable(_items.where((i) => i.shoppingListId == listId));
  }

  @override
  Stream<List<ShoppingItem>> watchItems(String listId) {
    return _itemsController.stream.map((items) => items.where((i) => i.shoppingListId == listId).toList());
  }

  @override
  Future<void> saveItems(List<ShoppingItem> items) async {
    final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
    if (listId != null) {
      _items.removeWhere((i) => i.shoppingListId == listId);
    } else {
      _items.clear();
    }
    _items.addAll(items);
    _itemsController.add(List.unmodifiable(_items));
  }

  @override
  Future<void> deleteItemsFromList(String listId) async {
    _items.removeWhere((i) => i.shoppingListId == listId);
    _itemsController.add(List.unmodifiable(_items));
  }

  @override
  Future<String?> getCurrentListId() async => _currentListId;

  @override
  Future<void> setCurrentListId(String listId) async {
    _currentListId = listId;
  }

  @override
  Future<Map<String, dynamic>?> getUserData() async => Map.unmodifiable(_userData);

  @override
  Future<void> updateUserData(Map<String, dynamic> data) async {
    _userData.addAll(data);
  }

  @override
  Future<bool> getIsPremium() async => _userData['isPremium'] as bool? ?? false;

  @override
  Future<void> setIsPremium(bool value) async {
    _userData['isPremium'] = value;
  }

  @override
  Future<String?> getThemeMode() async => _userData['themeMode'] as String?;

  @override
  Future<void> setThemeMode(String mode) async {
    _userData['themeMode'] = mode;
  }

  @override
  Future<String?> getLocale() async => _userData['locale'] as String?;

  @override
  Future<void> setLocale(String locale) async {
    _userData['locale'] = locale;
  }

  final Map<String, Map<String, dynamic>> _sharedLists = {};

  @override
  Future<void> saveSharedList(String code, Map<String, dynamic> data) async {
    _sharedLists[code] = Map<String, dynamic>.from(data);
  }

  @override
  Future<Map<String, dynamic>?> getSharedList(String code) async {
    final data = _sharedLists[code];
    if (data == null) {
      return null;
    }
    return Map<String, dynamic>.from(data);
  }

  final Map<String, String> _sharedListRefs = {};

  @override
  Future<void> saveSharedListRef(String listId, String ownerUid) async {
    _sharedListRefs[listId] = ownerUid;
    _sharedRefsController.add(Map.unmodifiable(_sharedListRefs));
  }

  @override
  Future<Map<String, String>> loadSharedListRefs() async {
    return Map.unmodifiable(_sharedListRefs);
  }

  @override
  Stream<Map<String, String>> watchSharedListRefs() => _sharedRefsController.stream;

  @override
  Future<void> removeSharedListRef(String listId) async {
    _sharedListRefs.remove(listId);
    _sharedRefsController.add(Map.unmodifiable(_sharedListRefs));
  }

  @override
  Future<ShoppingList?> loadListFromUser(String ownerUid, String listId) async {
    final list = _lists.where((l) => l.id == listId).firstOrNull;
    if (list == null) {
      return null;
    }
    return list.copyWith(ownerUid: ownerUid);
  }

  @override
  Stream<ShoppingList?> watchListFromUser(String ownerUid, String listId) {
    return _listsController.stream.map((lists) {
      final list = lists.where((l) => l.id == listId).firstOrNull;
      if (list == null) {
        return null;
      }
      return list.copyWith(ownerUid: ownerUid);
    });
  }

  @override
  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId) async {
    return List.unmodifiable(_items.where((i) => i.shoppingListId == listId));
  }

  @override
  Stream<List<ShoppingItem>> watchItemsFromUser(String ownerUid, String listId) {
    return _itemsController.stream.map((items) => items.where((i) => i.shoppingListId == listId).toList());
  }

  @override
  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items) async {
    final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
    if (listId != null) {
      _items.removeWhere((i) => i.shoppingListId == listId);
    } else {
      _items.clear();
    }
    _items.addAll(items);
    _itemsController.add(List.unmodifiable(_items));
  }

  @override
  Future<List<PantryItem>> loadPantryItems() async => List.unmodifiable(_pantryItems);

  @override
  Future<void> savePantryItems(List<PantryItem> items) async {
    if (items.isEmpty) {
      _pantryItems.clear();
      return;
    }
    for (final item in items) {
      _pantryItems.removeWhere((p) => p.id == item.id);
      _pantryItems.add(item);
    }
  }

  @override
  Future<void> deletePantryItem(String id) async {
    _pantryItems.removeWhere((p) => p.id == id);
  }

  @override
  Future<List<ChatMessage>> loadChatMessages(String? listId) async {
    return List.unmodifiable(_chatMessages[listId] ?? []);
  }

  @override
  Future<void> saveChatMessage(String? listId, ChatMessage message) async {
    _chatMessages[listId] ??= [];
    _chatMessages[listId]!.add(message);
  }

  @override
  Future<void> clearChatHistory(String? listId) async {
    _chatMessages[listId]?.clear();
  }
}
