// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';
import '../services/open_code_go_service.dart';
import 'api_key_provider.dart';

final aiServiceProvider = Provider<AiService>((ref) {
  final apiKeyAsync = ref.watch(runtimeApiKeyProvider);
  final apiKey = apiKeyAsync.valueOrNull ?? '';
  return OpenCodeGoService(apiKey: apiKey);
});
// coverage:ignore-end
