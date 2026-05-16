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

  Future<void> setCurrentList(String listId) async {
    final service = ref.read(firestoreServiceProvider);
    state = AsyncValue.data(listId);
    await service.setCurrentListId(listId);
  }
}
