import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

part 'item_history_provider.g.dart';

@riverpod
class ItemHistory extends _$ItemHistory {
  static const _key = 'item_addition_history';

  @override
  Map<String, int> build() {
    _loadHistory();
    return {};
  }

  Future<void> _loadHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString != null) {
      final decoded = json.decode(jsonString) as Map<String, dynamic>;
      state = decoded.map((key, value) => MapEntry(key, value as int));
    }
  }

  Future<void> trackItem(String name) async {
    final nameNormalized = name.trim();
    if (nameNormalized.isEmpty) {
      return;
    }

    final current = Map<String, int>.from(state);
    current[nameNormalized] = (current[nameNormalized] ?? 0) + 1;
    
    state = current;
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, json.encode(state));
  }

  List<String> getFrequentItems({int limit = 10}) {
    final sortedEntries = state.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedEntries.take(limit).map((e) => e.key).toList();
  }
}
