import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'storage_service.dart';

part 'budget_provider.g.dart';

@riverpod
class Budget extends _$Budget {
  final _storage = StorageService();

  @override
  Future<double?> build(String listId) async {
    // Load budget for specific list
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble('budget_$listId');
  }

  Future<void> setBudget(String listId, double value) async {
    state = AsyncValue.data(value);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('budget_$listId', value);
  }

  Future<void> clearBudget(String listId) async {
    state = const AsyncValue.data(null);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('budget_$listId');
  }
}
