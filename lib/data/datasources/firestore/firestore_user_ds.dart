import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/user_profile_model.dart';
import '../../../domain/entities/user_profile.dart';

class FirestoreUserDataSource {
  FirestoreUserDataSource({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;

  final FirebaseFirestore _db;
  final String _uid;

  DocumentReference get _userDoc => _db.collection('users').doc(_uid);

  Future<void> updateUserData(UserProfile profile) async {
    final model = UserProfileModel.fromEntity(profile);
    await _userDoc.set(model.toJson());
  }

  Future<String?> getCurrentListId() async {
    final doc = await _userDoc.get();
    if (!doc.exists) {
      return null;
    }
    final data = doc.data() as Map<String, dynamic>?;
    return data?['currentListId'] as String?;
  }

  Future<void> setCurrentListId(String listId) async {
    await _userDoc.set({
      'currentListId': listId,
      'updatedAt': DateTime.now().toIso8601String(),
    }, SetOptions(merge: true));
  }
}
