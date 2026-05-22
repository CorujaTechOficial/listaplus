// coverage:ignore-start
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
// coverage:ignore-end
