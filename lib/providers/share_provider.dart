import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_service_provider.dart';
import 'firestore_service_provider.dart';
import 'shopping_lists_provider.dart';

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
    final list = lists.where((l) => l.id == listId).firstOrNull;
    if (list == null) {
      throw Exception('Lista não encontrada.');
    }
    final user = _ref.read(authServiceProvider).currentUser;
    if (user == null) {
      throw Exception('Usuário não autenticado.');
    }
    final uid = user.uid;

    String code;
    var attempts = 0;
    do {
      code = _generateCode();
      final existing = await service.getSharedList(code);
      if (existing == null) break;
      attempts++;
      if (attempts >= 10) {
        throw Exception('Erro ao gerar código único. Tente novamente.');
      }
    } while (true);

    await service.saveSharedList(code, {
      'ownerUid': uid,
      'listId': listId,
      'listName': list.name,
      'createdAt': DateTime.now().toIso8601String(),
    });
    return code;
  }

  Future<({String listId, String listName})> importSharedList(String code) async {
    final service = _ref.read(firestoreServiceProvider);
    final data = await service.getSharedList(code);
    if (data == null) {
      throw Exception('Código inválido ou lista não encontrada.');
    }

    final ownerUid = data['ownerUid'] as String;
    final listId = data['listId'] as String;
    final listName = data['listName'] as String;

    await service.saveSharedListRef(listId, ownerUid);
    _ref.invalidate(shoppingListsProvider);

    return (listId: listId, listName: listName);
  }
}
