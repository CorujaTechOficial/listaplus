import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/ai_usage.dart';
import 'firestore_service_provider.dart';

part 'ai_usage_provider.g.dart';

@riverpod
class AiUsageState extends _$AiUsageState {
  @override
  Future<AiUsage> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final data = await service.getAiUsage();
    if (data == null) {
      return AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
    }
    return AiUsage.fromJson(data);
  }

  Future<void> recordMessage() async {
    final current = state.value ?? AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
    final updated = current.recordMessage();
    state = AsyncValue.data(updated);
    final service = ref.read(firestoreServiceProvider);
    await service.saveAiUsage(updated.toJson());
  }

  bool canSend() {
    final current = state.value;
    if (current == null) {
      return true;
    }
    return !current.isExhausted;
  }
}
