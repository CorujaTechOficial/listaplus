import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_chat_ds.dart';
import 'package:shopping_list/data/models/chat_message_model.dart';

void main() {
  group('FirestoreChatDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestoreChatDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestoreChatDataSource(
        firestore: fakeFirestore,
        uid: 'test-uid',
        listId: 'test-list',
      );
    });

    test('saveMessage creates document in chat_messages subcollection', () async {
      final msg = ChatMessageModel(
        id: 'm1',
        role: 'user',
        content: 'Olá',
      );
      await ds.saveMessage(msg);
      final doc = await fakeFirestore
          .collection('users/test-uid/lists/test-list/chat_messages')
          .doc('m1')
          .get();
      expect(doc.data()?['content'], 'Olá');
      expect(doc.data()?['role'], 'user');
    });

    test('loadMessages returns messages sorted by timestamp', () async {
      final msg1 = ChatMessageModel(
        id: 'm1',
        role: 'user',
        content: 'First',
        timestamp: DateTime(2024, 1, 1),
      );
      final msg2 = ChatMessageModel(
        id: 'm2',
        role: 'assistant',
        content: 'Second',
        timestamp: DateTime(2024, 1, 2),
      );
      await ds.saveMessage(msg1);
      await ds.saveMessage(msg2);

      final messages = await ds.loadMessages();
      expect(messages.length, 2);
      expect(messages.first.content, 'First');
      expect(messages.last.content, 'Second');
    });
  });
}
