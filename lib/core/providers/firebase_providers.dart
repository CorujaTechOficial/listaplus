import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/firestore_service.dart';
import '../../services/storage_backend.dart';
import 'auth_provider.dart';

final firebaseStorageProvider = Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

final firestoreServiceProvider = Provider<StorageBackend>((ref) {
  final user = ref.watch(authProvider).value;

  if (user != null) {
    return FirestoreService(uid: user.uid);
  }

  final current = FirebaseAuth.instance.currentUser;
  if (current != null) {
    return FirestoreService(uid: current.uid);
  }

  // Se não houver UID ainda, retornamos um serviço com UID placeholder
  // em vez de lançar um erro síncrono. Isso evita quebrar o grafo do Riverpod
  // e permite que a UI carregue normalmente. O Firestore lidará com erros de
  // permissão caso o UID seja inválido, o que já é tratado no .when(error: ...)
  return FirestoreService(uid: 'pending_auth');
});
