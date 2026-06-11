import 'firestore_base.dart';

mixin FirestoreFeedbackMixin on FirestoreBase {
  Future<void> saveFeedback(Map<String, dynamic> feedbackData) async {
    return FirestoreBase.retry(() async {
      await db.collection('feedback').add(feedbackData);
    }, label: 'saveFeedback');
  }
}
