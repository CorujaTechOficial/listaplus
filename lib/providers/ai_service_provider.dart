// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';
import '../services/open_code_go_service.dart';

final aiServiceProvider = Provider<AiService>((ref) {
  const apiKey = String.fromEnvironment('OPENCODE_API_KEY', defaultValue: '');
  return OpenCodeGoService(apiKey: apiKey);
});
// coverage:ignore-end
