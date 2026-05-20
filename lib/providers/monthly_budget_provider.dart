import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'monthly_budget_provider.g.dart';

@riverpod
class MonthlyBudget extends _$MonthlyBudget {
  @override
  Future<double?> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final data = await service.getUserData();
    return (data?['monthlyBudget'] as num?)?.toDouble();
  }

  Future<void> setBudget(double? budget) async {
    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'monthlyBudget': budget});
    state = AsyncValue.data(budget);
  }
}
