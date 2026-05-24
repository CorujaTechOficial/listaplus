import '../entities/shopping_list.dart';
import '../entities/shopping_item.dart';
import '../entities/pantry_item.dart';

abstract class StorageRepository {
  // Lists
  Future<List<ShoppingList>> loadLists();
  Stream<List<ShoppingList>> watchLists();
  Future<void> saveList(ShoppingList list);
  Future<void> deleteList(String listId);

  // Items
  Future<List<ShoppingItem>> loadItems(String listId);
  Stream<List<ShoppingItem>> watchItems(String listId);
  Future<void> saveItem(ShoppingItem item);
  Future<void> deleteItem(String listId, String itemId);
  Future<void> saveItems(List<ShoppingItem> items);

  // User data
  Future<String?> getCurrentListId();
  Future<void> setCurrentListId(String? listId);
  Future<Map<String, dynamic>?> getUserData();
  Future<void> updateUserData(Map<String, dynamic> data);

  // Pantry
  Future<List<PantryItem>> loadPantryItems();
  Future<void> savePantryItem(PantryItem item);
  Future<void> deletePantryItem(String id);

  // Categories
  Future<void> saveCategories(List<String> categoryIds);
}
