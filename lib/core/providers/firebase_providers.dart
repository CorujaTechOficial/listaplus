import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/firestore_service.dart';
import '../../services/storage_backend.dart';
import 'auth_provider.dart';

final firestoreServiceProvider = Provider<StorageBackend>((ref) {
  final user = ref.watch(authProvider).value;

  if (user != null) {
    return FirestoreService(uid: user.uid);
  }

  final current = FirebaseAuth.instance.currentUser;
  if (current != null) {
    return FirestoreService(uid: current.uid);
  }

  throw StateError('Aguardando autenticação para acessar o banco de dados...');
});
