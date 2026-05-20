import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

part 'price_history_provider.g.dart';

@riverpod
class PriceHistory extends _$PriceHistory {
  static const _key = 'item_price_history';

  @override
  Map<String, double> build() {
    _loadHistory();
    return {};
  }

  Future<void> _loadHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString != null) {
      final decoded = json.decode(jsonString) as Map<String, dynamic>;
      state = decoded.map((key, value) => MapEntry(key, (value as num).toDouble()));
    }
  }

  Future<void> updatePrice(String name, double price) async {
    final nameNormalized = name.trim().toLowerCase();
    if (nameNormalized.isEmpty) {
      return;
    }

    final current = Map<String, double>.from(state);
    current[nameNormalized] = price;
    
    state = current;
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, json.encode(state));
  }

  double? getPreviousPrice(String name) {
    return state[name.trim().toLowerCase()];
  }
}
