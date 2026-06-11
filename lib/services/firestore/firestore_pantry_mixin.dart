import '../../models/pantry_item.dart';
import 'firestore_base.dart';

mixin FirestorePantryMixin on FirestoreBase {
  Future<List<PantryItem>> loadPantryItems() async {
    return FirestoreBase.retry(() async {
      final snap = await db.collection('users').doc(uid).collection('pantry').get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return PantryItem.fromJson(data);
      }).toList();
    });
  }

  Future<void> savePantryItem(PantryItem item) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).collection('pantry').doc(item.id).set(item.toJson());
    });
  }

  Future<void> savePantryItems(List<PantryItem> items) async {
    return FirestoreBase.retry(() async {
      final pantryRef = db.collection('users').doc(uid).collection('pantry');
      
      // Sincronização Cirúrgica: Apenas salvamos o que foi enviado.
      // A deleção deve ser tratada individualmente por deletePantryItem
      // para evitar condições de corrida em ambientes multi-sessão.
      const limit = 500;
      for (var i = 0; i < items.length; i += limit) {
        final batch = db.batch();
        final chunk = items.sublist(i, (i + limit) > items.length ? items.length : i + limit);
        for (final item in chunk) {
          batch.set(pantryRef.doc(item.id), item.toJson());
        }
        await batch.commit();
      }
    });
  }

  Future<void> deletePantryItem(String id) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).collection('pantry').doc(id).delete();
    });
  }
}
