import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/pantry_item.dart';

abstract class StorageBackend {
  Future<List<ShoppingList>> loadLists();
  Stream<List<ShoppingList>> watchLists();
  Future<void> saveList(ShoppingList list);
  Future<void> saveLists(List<ShoppingList> lists);
  Future<void> deleteList(String listId);
  Future<List<ShoppingItem>> loadItems(String listId);
  Stream<List<ShoppingItem>> watchItems(String listId);
  Future<void> saveItem(ShoppingItem item);
  Future<void> deleteItem(String listId, String itemId);
  Future<void> saveItems(List<ShoppingItem> items);
  Future<void> deleteItemsFromList(String listId);
  Future<String?> getCurrentListId();
  Future<void> setCurrentListId(String? listId);

  Future<String?> getThemeMode();
  Future<void> setThemeMode(String mode);
  Future<String?> getLocale();
  Future<void> setLocale(String? locale);
  Future<Map<String, dynamic>?> getUserData();
  Future<void> updateUserData(Map<String, dynamic> data);
  Future<void> extendPremiumBy24h();
  Future<void> saveSharedList(String code, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getSharedList(String code);

  Future<void> saveSharedListRef(String listId, String ownerUid);
  Future<Map<String, String>> loadSharedListRefs();
  Stream<Map<String, String>> watchSharedListRefs();
  Future<void> removeSharedListRef(String listId);
  Future<ShoppingList?> loadListFromUser(String ownerUid, String listId);
  Stream<ShoppingList?> watchListFromUser(String ownerUid, String listId);
  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId);
  Stream<List<ShoppingItem>> watchItemsFromUser(String ownerUid, String listId);
  Future<void> saveItemToUser(String ownerUid, ShoppingItem item);
  Future<void> deleteItemFromUser(String ownerUid, String listId, String itemId);
  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items);

  Future<List<PantryItem>> loadPantryItems();
  Future<void> savePantryItem(PantryItem item);
  Future<void> savePantryItems(List<PantryItem> items);
  Future<void> deletePantryItem(String id);

  Future<List<ChatMessage>> loadChatMessages(String? listId);
  Future<void> saveChatMessage(String? listId, ChatMessage message);
  Future<void> clearChatHistory(String? listId);
}
