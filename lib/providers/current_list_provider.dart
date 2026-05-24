import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'current_list_provider.g.dart';

@riverpod
class CurrentListId extends _$CurrentListId {
  @override
  Future<String?> build() {
    final service = ref.watch(firestoreServiceProvider);
    return service.getCurrentListId();
  }

  Future<void> setCurrentList(String? listId) async {
    final service = ref.read(firestoreServiceProvider);
    
    // Optimistic update
    final previous = state.value;
    state = AsyncValue.data(listId);
    
    try {
      await service.setCurrentListId(listId);
    } on Exception {
      // Revert on failure, but only if still mounted
      if (ref.mounted) {
        state = AsyncValue.data(previous);
      }
      rethrow;
    }
  }
}
