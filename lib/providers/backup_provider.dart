import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import 'firestore_service_provider.dart';

final backupProvider = Provider<BackupService>((ref) {
  return BackupService(ref);
});

class BackupService {
  BackupService(this._ref);

  final Ref _ref;

  Future<String> exportToJson() async {
    final service = _ref.read(firestoreServiceProvider);
    final lists = await service.loadLists();
    final result = <String, dynamic>{};
    for (final list in lists) {
      final items = await service.loadItems(list.id);
      result[list.id] = {
        'list': list.toJson(),
        'items': items.map((i) => i.toJson()).toList(),
      };
    }
    return const JsonEncoder.withIndent('  ').convert({
      'version': 1,
      'exportedAt': DateTime.now().toIso8601String(),
      'lists': result,
    });
  }

  Future<void> shareBackup() async {
    final json = await exportToJson();
    await SharePlus.instance.share(
      ShareParams(text: json, subject: 'Lista Plus - Backup'),
    );
  }

  Future<String> importFromJson(String jsonString) async {
    final service = _ref.read(firestoreServiceProvider);
    final data = jsonDecode(jsonString) as Map<String, dynamic>;
    final listsData = data['lists'] as Map<String, dynamic>;
    var count = 0;

    for (final entry in listsData.entries) {
      final listEntry = entry.value as Map<String, dynamic>;
      final listData = listEntry['list'] as Map<String, dynamic>;
      final itemsData = listEntry['items'] as List<dynamic>;

      final list = ShoppingList.fromJson(listData);
      final items = itemsData.map((i) {
        return ShoppingItem.fromJson(i as Map<String, dynamic>);
      }).toList();

      await service.saveLists([list]);
      if (items.isNotEmpty) {
        await service.saveItems(items);
      }
      count++;
    }
    return '$count listas importadas com sucesso!';
  }
}
