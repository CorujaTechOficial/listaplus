import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'item_history_provider.g.dart';

@riverpod
class ItemHistory extends _$ItemHistory {
  @override
  Map<String, int> build() {
    _loadHistory();
    return {};
  }

  Future<void> _loadHistory() async {
    final service = ref.read(firestoreServiceProvider);
    final data = await service.getUserData();
    if (data != null && data['itemHistory'] != null) {
      final history = data['itemHistory'] as Map<String, dynamic>;
      state = history.map((key, value) => MapEntry(key, (value as num).toInt()));
    }
  }

  Future<void> trackItem(String name) async {
    final nameNormalized = name.trim();
    if (nameNormalized.isEmpty) {
      return;
    }

    final current = Map<String, int>.from(state);
    current[nameNormalized] = (current[nameNormalized] ?? 0) + 1;
    
    state = current;
    
    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'itemHistory': state});
  }

  List<String> getFrequentItems({int limit = 10}) {
    final sortedEntries = state.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedEntries.take(limit).map((e) => e.key).toList();
  }
}
