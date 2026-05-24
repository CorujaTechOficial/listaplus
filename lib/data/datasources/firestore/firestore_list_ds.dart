import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/shopping_list_model.dart';
import '../../../domain/entities/shopping_list.dart';

class FirestoreListDataSource {
  FirestoreListDataSource({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;

  final FirebaseFirestore _db;
  final String _uid;

  String get _listsPath => 'users/$_uid/lists';

  Future<void> saveList(ShoppingList list) async {
    final model = ShoppingListModel.fromEntity(list);
    await _db.collection(_listsPath).doc(list.id).set(model.toJson());
  }

  Future<List<ShoppingList>> loadLists() async {
    final snapshot = await _db.collection(_listsPath).get();
    return snapshot.docs.map((doc) {
      return ShoppingListModel.fromJson(doc.data()).toEntity();
    }).toList();
  }

  Stream<List<ShoppingList>> watchLists() {
    return _db.collection(_listsPath).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return ShoppingListModel.fromJson(doc.data()).toEntity();
      }).toList();
    });
  }

  Future<void> deleteList(String listId) async {
    await _db.collection(_listsPath).doc(listId).delete();
  }
}
