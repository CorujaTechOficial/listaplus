import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import '../logger_service.dart';
import 'firestore_base.dart';

mixin FirestoreRecipesMixin on FirestoreBase {
  Future<List<Map<String, dynamic>>> loadRecipes() async {
    return FirestoreBase.retry(() async {
      final snap = await db.collection('users').doc(uid).collection('recipes').orderBy('createdAt', descending: true).get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return data;
      }).toList();
    });
  }

  Stream<List<Map<String, dynamic>>> watchRecipes() {
    final stream = db
        .collection('users').doc(uid).collection('recipes')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return data;
        }).toList());
    return wrapStream(stream, label: 'watchRecipes');
  }

  Future<void> saveRecipe(Map<String, dynamic> recipe) async {
    return FirestoreBase.retry(() async {
      final id = recipe['id'] as String;
      await db
          .collection('users').doc(uid).collection('recipes').doc(id)
          .set(recipe);
    });
  }

  Future<void> deleteRecipe(String id) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('recipes').doc(id)
          .delete();
    });
  }

  Future<String?> uploadRecipeImage(String recipeId, String filePath) async {
    try {
      final ref = FirebaseStorage.instance
          .ref('users/$uid/recipe_images/$recipeId');
      await ref.putFile(File(filePath));
      return await ref.getDownloadURL();
    } on Object catch (e) {
      LoggerService.error(e, message: 'uploadRecipeImage: erro ao fazer upload');
      return null;
    }
  }
}
