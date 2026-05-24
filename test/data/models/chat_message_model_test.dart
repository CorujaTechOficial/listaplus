import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/chat_message_model.dart';

void main() {
  group('ChatMessageModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'listId': 'l1',
        'role': 'user',
        'content': 'Hello',
        'timestamp': DateTime.now().toIso8601String(),
      };
      final model = ChatMessageModel.fromJson(json);
      expect(model.id, '1');
      expect(model.role, 'user');
      expect(model.content, 'Hello');
    });

    test('toJson produces correct map', () {
      final model = ChatMessageModel(id: '1', role: 'user', content: 'Hello');
      final json = model.toJson();
      expect(json['role'], 'user');
      expect(json['content'], 'Hello');
    });
  });
}
