import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/ai_config.dart';
import 'package:shopping_list/models/ai_usage.dart';
import 'package:shopping_list/services/ai_service.dart';
import 'package:shopping_list/services/open_code_go_service.dart';

part 'ai_config_providers.g.dart';

@riverpod
class AiConfigState extends _$AiConfigState {
  @override
  Future<AiConfig> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      if (service == null) return const AiConfig(name: 'IA', iconKey: 'smart_toy');
      final data = await service.getUserData();
      if (data == null) {
        return const AiConfig(name: 'IA', iconKey: 'smart_toy');
      }
      final name = data['aiName'] as String? ?? 'IA';
      final iconKey = data['aiAvatarIcon'] as String? ?? 'smart_toy';
      return AiConfig(name: name, iconKey: iconKey);
    } on Exception {
      return const AiConfig(name: 'IA', iconKey: 'smart_toy');
    }
  }

  Future<void> updateConfig({required String name, required String iconKey}) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
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

@riverpod
class AiUsageState extends _$AiUsageState {
  @override
  Future<AiUsage> build() async {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
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
    if (service == null) return;
    await service.saveAiUsage(updated.toJson());
  }

  bool canSend() {
    final current = state.value;
    if (current == null) {
      return true;
    }
    return !current.isExhausted;
  }

  Future<void> recharge() async {
    final current = state.value ?? AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
    // Resets daily count to 0 to provide 10 new energy units
    final updated = current.copyWith(dailyCount: 0);
    state = AsyncValue.data(updated);
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.saveAiUsage(updated.toJson());
  }
}

final runtimeApiKeyProvider = FutureProvider<String>((ref) async {
  try {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(hours: 1),
      ),
    );
    await remoteConfig.fetchAndActivate();
    final key = remoteConfig.getString('OPENCODE_API_KEY');
    if (key.isNotEmpty) {
      return key;
    }
  } on Exception catch (_) {
    // Silently fall back to compile-time key
  }

  return const String.fromEnvironment('OPENCODE_API_KEY', defaultValue: '');
});

final aiServiceProvider = Provider<AiService>((ref) {
  return OpenCodeGoService(
    getApiKey: () => ref.read(runtimeApiKeyProvider.future),
  );
});
