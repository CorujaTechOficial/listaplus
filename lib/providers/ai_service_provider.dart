// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';
import '../services/kilo_ai_service.dart';

final aiServiceProvider = Provider<AiService>((ref) {
  // In a real app, this key would come from Remote Config or a secure source.
  const kiloApiKey = String.fromEnvironment('KILO_API_KEY', defaultValue: '');
  return KiloAiService(apiKey: kiloApiKey);
});
// coverage:ignore-end
