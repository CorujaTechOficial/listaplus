import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_item.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';
import 'shopping_list_provider.dart';

final shareServiceProvider = Provider<ShareService>((ref) {
  return ShareService(ref);
});

class ShareService {
  ShareService(this._ref);

  final Ref _ref;
  final _random = Random();

  String _generateCode() {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final sb = StringBuffer();
    for (var i = 0; i < 8; i++) {
      sb.write(chars[_random.nextInt(chars.length)]);
    }
    return sb.toString();
  }

  Future<String> createShareCode(String listId) async {
    final service = _ref.read(firestoreServiceProvider);
    final lists = await service.loadLists();
    final list = lists.firstWhere((l) => l.id == listId);
    final items = await service.loadItems(listId);
    final code = _generateCode();

    await service.saveSharedList(code, {
      'ownerName': 'Usuário',
      'listName': list.name,
      'listId': listId,
      'items': items.map((i) => i.toJson()).toList(),
      'createdAt': DateTime.now().toIso8601String(),
    });
    return code;
  }

  Future<String> importSharedList(String code) async {
    final service = _ref.read(firestoreServiceProvider);
    final data = await service.getSharedList(code);
    if (data == null) {
      throw Exception('Código inválido ou lista não encontrada.');
    }

    final listName = data['listName'] as String;
    final itemsData = data['items'] as List<dynamic>;

    final newList = await _ref.read(shoppingListsProvider.notifier).createList(
      '$listName (compartilhada)',
    );

    if (itemsData.isNotEmpty) {
      final items = itemsData.map((i) {
        final itemMap = Map<String, dynamic>.from(i as Map<String, dynamic>);
        itemMap.remove('id');
        itemMap['shoppingListId'] = newList.id;
        return ShoppingItem.fromJson(itemMap);
      }).toList();
      await service.saveItems(items);
      _ref.invalidate(shoppingListItemsProvider(newList.id));
    }
    return '$listName importada com sucesso!';
  }
}
