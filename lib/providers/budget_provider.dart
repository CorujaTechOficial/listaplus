import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'storage_service.dart';

part 'budget_provider.g.dart';

@riverpod
class Budget extends _$Budget {
  final _storage = StorageService();

  @override
  Future<double?> build() async {
    return await _storage.loadBudget();
  }

  Future<void> setBudget(double value) async {
    state = AsyncValue.data(value);
    await _storage.saveBudget(value);
  }

  Future<void> clearBudget() async {
    state = const AsyncValue.data(null);
    await _storage.saveBudget(0);
  }
}
