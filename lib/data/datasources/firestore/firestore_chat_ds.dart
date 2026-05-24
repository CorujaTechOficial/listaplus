import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/chat_message_model.dart';

class FirestoreChatDataSource {
  FirestoreChatDataSource({
    FirebaseFirestore? firestore,
    required String uid,
    required String listId,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid,
        _listId = listId;

  final FirebaseFirestore _db;
  final String _uid;
  final String _listId;

  CollectionReference get _messagesCollection =>
      _db.collection('users/$_uid/lists/$_listId/chat_messages');

  Future<void> saveMessage(ChatMessageModel message) async {
    await _messagesCollection.doc(message.id).set(message.toJson());
  }

  Future<List<ChatMessageModel>> loadMessages() async {
    final snapshot = await _messagesCollection
        .orderBy('timestamp', descending: false)
        .get();
    return snapshot.docs
        .map((doc) => ChatMessageModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
