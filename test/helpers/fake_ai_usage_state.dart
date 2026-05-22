import 'package:shopping_list/models/ai_usage.dart';
import 'package:shopping_list/providers/ai_usage_provider.dart';

class FakeAiUsageState extends AiUsageState {
  @override
  Future<AiUsage> build() async {
    return AiUsage(dailyCount: 0, totalCount: 0, lastReset: DateTime.now());
  }
}
