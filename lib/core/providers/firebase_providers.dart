import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/firestore_service.dart';
import '../../services/storage_backend.dart';
import 'auth_provider.dart';

final firebaseStorageProvider = Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

final firestoreServiceProvider = Provider<StorageBackend?>((ref) {
  final authAsync = ref.watch(authProvider);
  final user = authAsync.asData?.value;

  if (user != null) {
    return FirestoreService(uid: user.uid);
  }

  final current = FirebaseAuth.instance.currentUser;
  if (current != null) {
    return FirestoreService(uid: current.uid);
  }

  return null;
});
