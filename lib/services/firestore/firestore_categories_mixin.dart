import '../../models/category_data.dart';
import 'firestore_base.dart';

mixin FirestoreCategoriesMixin on FirestoreBase {
  Future<List<CategoryData>> loadCategories() async {
    return FirestoreBase.retry(() async {
      final snap = await queryGetWithCacheFallback(db.collection('users').doc(uid).collection('categories'));
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return CategoryData.fromJson(data);
      }).toList();
    });
  }

  Stream<List<CategoryData>> watchCategories() {
    final stream = db
        .collection('users').doc(uid).collection('categories')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return CategoryData.fromJson(data);
        }).toList());
    return wrapStream(stream, label: 'watchCategories');
  }

  Future<void> saveCategory(CategoryData cat) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).collection('categories').doc(cat.id).set(cat.toJson());
    });
  }

  Future<void> deleteCategory(String categoryId) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).collection('categories').doc(categoryId).delete();
    });
  }

  Future<void> saveCategories(List<CategoryData> categories) async {
    return FirestoreBase.retry(() async {
      final catRef = db.collection('users').doc(uid).collection('categories');
      
      // Sincronização Cirúrgica: Salvamos os estados atuais das categorias.
      // Evitamos deletar o que não está na lista local para não apagar categorias
      // criadas simultaneamente em outros dispositivos ou sessões.
      const limit = 500;
      for (var i = 0; i < categories.length; i += limit) {
        final batch = db.batch();
        final chunk = categories.sublist(i, (i + limit) > categories.length ? categories.length : i + limit);
        for (final cat in chunk) {
          batch.set(catRef.doc(cat.id), cat.toJson());
        }
        await batch.commit();
      }
    });
  }
}
