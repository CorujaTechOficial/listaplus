import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/shopping_item_model.dart';
import '../../../domain/entities/shopping_item.dart';

class FirestoreItemDataSource {
  FirestoreItemDataSource({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;

  final FirebaseFirestore _db;
  final String _uid;

  String get _itemsPath => 'users/$_uid/items';

  Future<void> saveItem(ShoppingItem item) async {
    final model = ShoppingItemModel.fromEntity(item);
    await _db.collection(_itemsPath).doc(item.id).set(model.toJson());
  }

  Future<List<ShoppingItem>> loadItems(String listId) async {
    final snapshot = await _db
        .collection(_itemsPath)
        .where('shoppingListId', isEqualTo: listId)
        .get();
    return snapshot.docs.map((doc) {
      return ShoppingItemModel.fromJson(doc.data()).toEntity();
    }).toList();
  }

  Future<void> deleteItem(String listId, String itemId) async {
    await _db.collection(_itemsPath).doc(itemId).delete();
  }

  Stream<List<ShoppingItem>> watchItems(String listId) {
    return _db
        .collection(_itemsPath)
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return ShoppingItemModel.fromJson(doc.data()).toEntity();
      }).toList();
    });
  }

  Future<void> saveItems(List<ShoppingItem> items) async {
    final batch = _db.batch();
    for (final item in items) {
      final model = ShoppingItemModel.fromEntity(item);
      batch.set(_db.collection(_itemsPath).doc(item.id), model.toJson());
    }
    await batch.commit();
  }
}
