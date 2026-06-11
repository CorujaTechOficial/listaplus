import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/item_memory.dart';

part 'item_memory_provider.g.dart';

@riverpod
Future<Map<String, ItemMemory>> recentItemMemory(Ref ref) async {
  final service = ref.watch(firestoreServiceProvider);
  if (service == null) {
    return {};
  }
  try {
    final allItemsByList = await service.loadAllItemsForUser();
    final allItems = allItemsByList.values.expand((items) => items).toList();
    return buildItemMemoryMap(allItems);
  } on Object catch (_) {
    return {};
  }
}
