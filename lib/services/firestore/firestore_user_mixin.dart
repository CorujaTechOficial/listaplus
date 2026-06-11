import 'package:cloud_firestore/cloud_firestore.dart';
import 'firestore_base.dart';

mixin FirestoreUserMixin on FirestoreBase {
  Future<String?> getCurrentListId() async {
    return FirestoreBase.retry(() async {
      final doc = await docGetWithCacheFallback(db.collection('users').doc(uid));
      return doc.data()?['currentListId'] as String?;
    }, label: 'getCurrentListId');
  }

  Future<void> setCurrentListId(String? listId) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).set(
        {'currentListId': listId},
        SetOptions(merge: true),
      );
    }, label: 'setCurrentListId');
  }

  Future<Map<String, dynamic>?> getUserData() async {
    return FirestoreBase.retry(() async {
      final doc = await docGetWithCacheFallback(db.collection('users').doc(uid));
      return doc.data();
    });
  }

  Future<void> updateUserData(Map<String, dynamic> data) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).set(data, SetOptions(merge: true));
    });
  }

  Future<void> updatePreference(String key, String value) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).set({
        'preferences': {key: value}
      }, SetOptions(merge: true));
    });
  }

  Future<void> deletePreference(String key) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).update({
        'preferences.$key': FieldValue.delete(),
      });
    });
  }

  Future<String?> getThemeMode() async {
    final data = await getUserData();
    return data?['themeMode'] as String?;
  }

  Future<void> setThemeMode(String mode) async {
    await updateUserData({'themeMode': mode});
  }

  Future<String?> getLocale() async {
    final data = await getUserData();
    return data?['locale'] as String?;
  }

  Future<void> setLocale(String? locale) async {
    await updateUserData({'locale': locale});
  }

  Future<Map<String, dynamic>?> getAiUsage() async {
    return FirestoreBase.retry(() async {
      final doc = await docGetWithCacheFallback(db.collection('users').doc(uid));
      return doc.data()?['aiUsage'] as Map<String, dynamic>?;
    });
  }

  Future<void> saveAiUsage(Map<String, dynamic> data) async {
    return FirestoreBase.retry(() async {
      await db.collection('users').doc(uid).set({
        'aiUsage': data
      }, SetOptions(merge: true));
    });
  }
}
