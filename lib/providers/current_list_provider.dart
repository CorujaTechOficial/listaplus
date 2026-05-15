import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'storage_service.dart';

part 'current_list_provider.g.dart';

@riverpod
class CurrentListId extends _$CurrentListId {
  final _storage = StorageService();

  @override
  Future<String?> build() {
    return _storage.getCurrentListId();
  }

  Future<void> setCurrentList(String listId) async {
    state = AsyncValue.data(listId);
    await _storage.setCurrentListId(listId);
  }
}
