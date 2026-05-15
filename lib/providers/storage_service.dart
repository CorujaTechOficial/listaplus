import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/shopping_list.dart';
import '../models/shopping_item.dart';

class StorageService {
  static const _keyLists = 'shopping_lists';
  static const _keyItems = 'shopping_items';
  static const _keyCurrentList = 'current_list_id';

  // Lists
  Future<List<ShoppingList>> loadLists() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_keyLists);
    if (jsonString == null) {
      return [];
    }

    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => ShoppingList.fromJson(json)).toList();
  }

  Future<void> saveLists(List<ShoppingList> lists) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(lists.map((e) => e.toJson()).toList());
    await prefs.setString(_keyLists, jsonString);
  }

  // Items
  Future<List<ShoppingItem>> loadItems(String listId) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_keyItems);
    if (jsonString == null) {
      return [];
    }

    final List<dynamic> jsonList = jsonDecode(jsonString);
    final allItems = jsonList.map((json) => ShoppingItem.fromJson(json)).toList();
    return allItems.where((item) => item.shoppingListId == listId).toList();
  }

  Future<void> saveItems(List<ShoppingItem> items) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(items.map((e) => e.toJson()).toList());
    await prefs.setString(_keyItems, jsonString);
  }

  // Current list
  Future<String?> getCurrentListId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyCurrentList);
  }

  Future<void> setCurrentListId(String listId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyCurrentList, listId);
  }

  // Delete all items from a list
  Future<void> deleteItemsFromList(String listId) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_keyItems);
    if (jsonString == null) {
      return;
    }

    final List<dynamic> jsonList = jsonDecode(jsonString);
    final allItems = jsonList.map((json) => ShoppingItem.fromJson(json)).toList();
    final remaining = allItems.where((item) => item.shoppingListId != listId).toList();
    
    await prefs.setString(_keyItems, jsonEncode(remaining.map((e) => e.toJson()).toList()));
  }
}
