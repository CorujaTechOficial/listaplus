// coverage:ignore-start
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/firestore_service.dart';
import '../services/storage_backend.dart';

final firestoreServiceProvider = Provider<StorageBackend>((ref) {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    throw Exception('User not authenticated');
  }
  return FirestoreService(uid: user.uid);
});
// coverage:ignore-end
