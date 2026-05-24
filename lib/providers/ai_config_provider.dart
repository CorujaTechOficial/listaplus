import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/ai_config.dart';
import 'firestore_service_provider.dart';

part 'ai_config_provider.g.dart';

@riverpod
class AiConfigState extends _$AiConfigState {
  @override
  Future<AiConfig> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      final data = await service.getUserData();
      if (data == null) {
        return const AiConfig(name: 'IA', iconKey: 'auto_awesome');
      }
      final name = data['aiName'] as String? ?? 'IA';
      final iconKey = data['aiAvatarIcon'] as String? ?? 'auto_awesome';
      return AiConfig(name: name, iconKey: iconKey);
    } on Exception {
      return const AiConfig(name: 'IA', iconKey: 'auto_awesome');
    }
  }

  Future<void> updateConfig({required String name, required String iconKey}) async {
    final service = ref.read(firestoreServiceProvider);
    final previous = state.value;
    state = AsyncValue.data(AiConfig(name: name, iconKey: iconKey));
    try {
      await service.updateUserData({
        'aiName': name,
        'aiAvatarIcon': iconKey,
      });
    } on Exception {
      if (previous != null) {
        state = AsyncValue.data(previous);
      }
      rethrow;
    }
  }
}
