import 'package:shopping_list/domain/entities/ai_usage.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';

class FakeAiUsageState extends AiUsageState {
  @override
  Future<AiUsage> build() async {
    return AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
  }
}
