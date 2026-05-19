import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';

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

  Future<void> saveSharedListRef(String listId, String ownerUid);
  Future<Map<String, String>> loadSharedListRefs();
  Future<void> removeSharedListRef(String listId);
  Future<ShoppingList?> loadListFromUser(String ownerUid, String listId);
  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId);
  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items);

  Future<List<ChatMessage>> loadChatMessages(String? listId);
  Future<void> saveChatMessage(String? listId, ChatMessage message);
  Future<void> clearChatHistory(String? listId);
}
