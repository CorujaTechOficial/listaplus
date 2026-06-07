import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';

part 'ai_usage_provider.g.dart';

const int kFreeAiActionsPerMonth = 30;
const int kAiUsageWarningThreshold = 20;

String _monthKey() {
  final now = DateTime.now();
  return '${now.year}-${now.month.toString().padLeft(2, '0')}';
}

@riverpod
Future<int> aiUsageCount(Ref ref) async {
  final user = ref.watch(authProvider).value;
  if (user == null) {
    return 0;
  }

  final doc = await FirebaseFirestore.instance
      .collection('users')
      .doc(user.uid)
      .collection('ai_usage')
      .doc(_monthKey())
      .get();

  if (!doc.exists) {
    return 0;
  }
  return (doc.data()?['action_count'] as int?) ?? 0;
}

@riverpod
class AiUsageNotifier extends _$AiUsageNotifier {
  @override
  Future<int> build() => ref.watch(aiUsageCountProvider.future);

  Future<int> increment() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return 0;
    }

    final docRef = FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .collection('ai_usage')
        .doc(_monthKey());

    await docRef.set(
      {
        'action_count': FieldValue.increment(1),
        'last_updated': FieldValue.serverTimestamp()
      },
      SetOptions(merge: true),
    );

    final newCount = (state.value ?? 0) + 1;
    state = AsyncValue.data(newCount);
    return newCount;
  }
}
