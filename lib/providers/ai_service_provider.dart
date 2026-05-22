// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';
import '../services/open_code_go_service.dart';
import 'api_key_provider.dart';

final aiServiceProvider = Provider<AiService>((ref) {
  return OpenCodeGoService(
    getApiKey: () => ref.read(runtimeApiKeyProvider.future),
  );
});
// coverage:ignore-end
