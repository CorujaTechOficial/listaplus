import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

part 'user_stats_provider.g.dart';

class UserStats {
  UserStats({
    this.totalItemsBought = 0,
    this.totalSavings = 0,
    this.currentStreak = 0,
    this.lastPurchaseDate,
  });

  final int totalItemsBought;
  final double totalSavings;
  final int currentStreak;
  final DateTime? lastPurchaseDate;

  UserStats copyWith({
    int? totalItemsBought,
    double? totalSavings,
    int? currentStreak,
    DateTime? lastPurchaseDate,
  }) {
    return UserStats(
      totalItemsBought: totalItemsBought ?? this.totalItemsBought,
      totalSavings: totalSavings ?? this.totalSavings,
      currentStreak: currentStreak ?? this.currentStreak,
      lastPurchaseDate: lastPurchaseDate ?? this.lastPurchaseDate,
    );
  }

  Map<String, dynamic> toJson() => {
        'totalItemsBought': totalItemsBought,
        'totalSavings': totalSavings,
        'currentStreak': currentStreak,
        'lastPurchaseDate': lastPurchaseDate?.toIso8601String(),
      };

  factory UserStats.fromJson(Map<String, dynamic> json) => UserStats(
        totalItemsBought: (json['totalItemsBought'] as num?)?.toInt() ?? 0,
        totalSavings: (json['totalSavings'] as num?)?.toDouble() ?? 0.0,
        currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
        lastPurchaseDate: json['lastPurchaseDate'] != null
            ? DateTime.parse(json['lastPurchaseDate'] as String)
            : null,
      );
}

@riverpod
class UserStatsNotifier extends _$UserStatsNotifier {
  static const _key = 'user_stats_data';

  @override
  UserStats build() {
    _loadStats();
    return UserStats();
  }

  Future<void> _loadStats() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString != null) {
      state = UserStats.fromJson(json.decode(jsonString) as Map<String, dynamic>);
    }
  }

  Future<void> recordPurchase({required int itemCount, double savings = 0}) async {
    final now = DateTime.now();
    int newStreak = state.currentStreak;
    
    if (state.lastPurchaseDate != null) {
      final last = state.lastPurchaseDate!;
      final todayDate = DateTime(now.year, now.month, now.day);
      final lastDate = DateTime(last.year, last.month, last.day);
      final diffDays = todayDate.difference(lastDate).inDays;
      if (diffDays == 1) {
        newStreak++;
      } else if (diffDays > 1) {
        newStreak = 1;
      }
    } else {
      newStreak = 1;
    }

    state = state.copyWith(
      totalItemsBought: state.totalItemsBought + itemCount,
      totalSavings: state.totalSavings + savings,
      currentStreak: newStreak,
      lastPurchaseDate: now,
    );

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, json.encode(state.toJson()));
  }
}
