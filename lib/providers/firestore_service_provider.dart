// coverage:ignore-start
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/firestore_service.dart';
import '../services/storage_backend.dart';
import 'auth_provider.dart';

final firestoreServiceProvider = Provider<StorageBackend>((ref) {
  // Try to get user from authProvider first for reactivity
  final user = ref.watch(authProvider).value;
  
  if (user != null) {
    return FirestoreService(uid: user.uid);
  }

  // Fallback to current instance for immediate availability
  final current = FirebaseAuth.instance.currentUser;
  if (current != null) {
    return FirestoreService(uid: current.uid);
  }
  
  // If absolutely no user is found yet, we throw.
  // This will be caught by dependent providers and shown as error in UI.
  throw StateError('Aguardando autenticação para acessar o banco de dados...');
});
// coverage:ignore-end
