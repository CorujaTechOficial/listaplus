import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import 'storage_backend.dart';

class FirestoreService implements StorageBackend {
  // coverage:ignore-start
  FirestoreService({
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuth.instance;
  // coverage:ignore-end

  final FirebaseFirestore _db;
  final FirebaseAuth _auth;

  String get _uid => _auth.currentUser!.uid;

  @override
  Future<List<ShoppingList>> loadLists() async {
    final snap = await _db
        .collection('users').doc(_uid).collection('lists')
        .orderBy('updatedAt', descending: true)
        .get();
    return snap.docs.map((d) => ShoppingList.fromJson(d.data())).toList();
  }

  @override
  Future<void> saveLists(List<ShoppingList> lists) async {
    final batch = _db.batch();
    final listsRef = _db.collection('users').doc(_uid).collection('lists');
    for (final list in lists) {
      batch.set(listsRef.doc(list.id), list.toJson());
    }
    await batch.commit();
  }

  @override
  Future<void> deleteList(String listId) async {
    await _db
        .collection('users').doc(_uid).collection('lists').doc(listId)
        .delete();
  }

  @override
  Future<List<ShoppingItem>> loadItems(String listId) async {
    final snap = await _db
        .collection('users').doc(_uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .get();
    return snap.docs.map((d) => ShoppingItem.fromJson(d.data())).toList();
  }

  @override
  Future<void> saveItems(List<ShoppingItem> items) async {
    final batch = _db.batch();
    final itemsRef = _db.collection('users').doc(_uid).collection('items');
    for (final item in items) {
      batch.set(itemsRef.doc(item.id), item.toJson());
    }
    await batch.commit();
  }

  @override
  Future<void> deleteItemsFromList(String listId) async {
    final snap = await _db
        .collection('users').doc(_uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .get();
    final batch = _db.batch();
    for (final doc in snap.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }

  @override
  Future<String?> getCurrentListId() async {
    final doc = await _db.collection('users').doc(_uid).get();
    return doc.data()?['currentListId'] as String?;
  }

  @override
  Future<void> setCurrentListId(String listId) async {
    await _db.collection('users').doc(_uid).set(
      {'currentListId': listId},
      SetOptions(merge: true),
    );
  }

  @override
  Future<Map<String, dynamic>?> getUserData() async {
    final doc = await _db.collection('users').doc(_uid).get();
    return doc.data();
  }

  @override
  Future<void> updateUserData(Map<String, dynamic> data) async {
    await _db.collection('users').doc(_uid).set(data, SetOptions(merge: true));
  }

  @override
  Future<bool> getIsPremium() async {
    final data = await getUserData();
    return data?['isPremium'] as bool? ?? false;
  }

  @override
  Future<void> setIsPremium(bool value) async {
    await updateUserData({'isPremium': value});
  }

  @override
  Future<String?> getThemeMode() async {
    final data = await getUserData();
    return data?['themeMode'] as String?;
  }

  @override
  Future<void> setThemeMode(String mode) async {
    await updateUserData({'themeMode': mode});
  }

  @override
  Future<void> saveSharedList(String code, Map<String, dynamic> data) async {
    await _db.collection('sharedLists').doc(code).set(data);
  }

  @override
  Future<Map<String, dynamic>?> getSharedList(String code) async {
    final doc = await _db.collection('sharedLists').doc(code).get();
    return doc.data();
  }
}
