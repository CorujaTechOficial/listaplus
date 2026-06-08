import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';

final backupProvider = Provider<BackupService>((ref) {
  return BackupService(ref);
});

class BackupService {
  BackupService(this._ref);

  final Ref _ref;

  Future<String> exportToJson() async {
    final service = _ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
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
        subject: 'KipiList - Backup',
      ),
    );
  }

  Future<String> importFromJson(String jsonString) async {
    final service = _ref.read(firestoreServiceProvider);
    if (service == null) throw Exception('Usuário não autenticado');
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

        try {
          await service.saveList(list);
          if (items.isNotEmpty) {
            await service.saveItems(items);
          }
          count++;
        } on Exception catch (e) {
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
