import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/chat_session_model.dart';
import '../models/pantry_item.dart';
import '../models/category_data.dart';

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
  Future<void> updatePreference(String key, String value);
  Future<void> deletePreference(String key);
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

  Future<List<ChatSessionModel>> loadChatSessions(String? listId);
  Future<void> saveChatSession(String? listId, ChatSessionModel session);
  Future<void> updateChatSessionTitle(String? listId, String sessionId, String title);
  Future<void> deleteChatSession(String? listId, String sessionId);
  Future<List<ChatMessage>> loadChatMessages(String? listId, {String? sessionId});
  Future<void> saveChatMessage(String? listId, ChatMessage message, {String? sessionId});
  Future<void> deleteChatMessage(String? listId, String messageId, {String? sessionId});
  Future<void> clearChatHistory(String? listId, {String? sessionId});

  Future<Map<String, dynamic>?> getAiUsage();
  Future<void> saveAiUsage(Map<String, dynamic> data);

  Future<List<CategoryData>> loadCategories();
  Stream<List<CategoryData>> watchCategories();
  Future<void> saveCategory(CategoryData cat);
  Future<void> deleteCategory(String categoryId);
  Future<void> saveCategories(List<CategoryData> categories);

  Future<List<Map<String, dynamic>>> loadRecipes();
  Stream<List<Map<String, dynamic>>> watchRecipes();
  Future<void> saveRecipe(Map<String, dynamic> recipe);
  Future<void> deleteRecipe(String id);
  Future<String?> uploadRecipeImage(String recipeId, String filePath);

  Future<List<Map<String, dynamic>>> loadMealPlans({DateTime? start, DateTime? end});
  Stream<List<Map<String, dynamic>>> watchMealPlans({DateTime? start, DateTime? end});
  Future<void> saveMealPlan(Map<String, dynamic> mealPlan);
  Future<void> deleteMealPlan(String id);

  Future<void> saveFeedback(Map<String, dynamic> feedbackData);
}
