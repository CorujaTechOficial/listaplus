// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/firestore_service.dart';
import '../services/storage_backend.dart';

final firestoreServiceProvider = Provider<StorageBackend>((ref) {
  return FirestoreService();
});
// coverage:ignore-end
