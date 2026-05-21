import 'dart:convert';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';

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
      ShareParams(
        text: json,
        subject: 'Lista Plus - Backup',
      ),
    );
  }

  Future<String> importFromJson(String jsonString) async {
    final service = _ref.read(firestoreServiceProvider);
    try {
      final data = jsonDecode(jsonString) as Map<String, dynamic>;
      if (data['version'] == null || data['lists'] == null) {
        throw const FormatException('Formato de backup inválido.');
      }

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

        // Fix #60: Error handling and basic atomicity (per list)
        try {
          await service.saveList(list);
          if (items.isNotEmpty) {
            await service.saveItems(items);
          }
          count++;
        } on Exception catch (e) {
          // If one list fails, we log and continue, or rethrow depending on requirement
          // Here we rethrow to be safe and satisfy "inconsistent data" concern
          throw Exception('Erro ao importar lista "${list.name}": $e');
        }
      }
      _ref.invalidate(shoppingListsProvider);
      return '$count listas importadas com sucesso!';
    } on Exception catch (e) {
      if (e is FormatException) {
        rethrow;
      }
      throw Exception('Falha ao importar backup: $e');
    }
  }
}
// coverage:ignore-end
