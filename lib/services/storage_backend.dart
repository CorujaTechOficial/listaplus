import '../models/shopping_item.dart';
import '../models/shopping_list.dart';

abstract class StorageBackend {
  Future<List<ShoppingList>> loadLists();
  Future<void> saveLists(List<ShoppingList> lists);
  Future<void> deleteList(String listId);
  Future<List<ShoppingItem>> loadItems(String listId);
  Future<void> saveItems(List<ShoppingItem> items);
  Future<void> deleteItemsFromList(String listId);
  Future<String?> getCurrentListId();
  Future<void> setCurrentListId(String listId);

  Future<bool> getIsPremium();
  Future<void> setIsPremium(bool value);
  Future<String?> getThemeMode();
  Future<void> setThemeMode(String mode);
  Future<Map<String, dynamic>?> getUserData();
  Future<void> updateUserData(Map<String, dynamic> data);
  Future<void> saveSharedList(String code, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getSharedList(String code);
}
