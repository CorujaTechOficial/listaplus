import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/pantry_item_model.dart';
import '../../../domain/entities/pantry_item.dart';

class FirestorePantryDataSource {
  FirestorePantryDataSource({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;

  final FirebaseFirestore _db;
  final String _uid;

  String get _pantryPath => 'users/$_uid/pantry_items';

  Future<void> savePantryItem(PantryItem item) async {
    final model = PantryItemModel.fromEntity(item);
    await _db.collection(_pantryPath).doc(item.id).set(model.toJson());
  }

  Future<List<PantryItem>> loadPantryItems() async {
    final snapshot = await _db.collection(_pantryPath).get();
    return snapshot.docs.map((doc) {
      return PantryItemModel.fromJson(doc.data()).toEntity();
    }).toList();
  }

  Future<void> deletePantryItem(String itemId) async {
    await _db.collection(_pantryPath).doc(itemId).delete();
  }
}
