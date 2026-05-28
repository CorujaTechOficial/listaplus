import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/user_profile.dart';

part 'settings_providers.g.dart';

final userProfileProvider = FutureProvider.autoDispose<UserProfile>((ref) async {
  final backend = ref.watch(firestoreServiceProvider);
  final userData = await backend.getUserData();
  return UserProfile.fromUserDoc(userData);
});

final userProfileServiceProvider = Provider.autoDispose<UserProfileService>((ref) {
  return UserProfileService(ref);
});

class UserProfileService {
  UserProfileService(this._ref);

  final Ref _ref;

  Future<void> updateProfile(UserProfile profile) async {
    final backend = _ref.read(firestoreServiceProvider);
    final prefs = profile.toPreferencesMap();
    for (final entry in prefs.entries) {
      await backend.updatePreference(entry.key, entry.value);
    }
    _ref.invalidate(userProfileProvider);
  }

  Future<void> removeField(String key) async {
    final backend = _ref.read(firestoreServiceProvider);
    await backend.deletePreference(key);
    _ref.invalidate(userProfileProvider);
  }
}

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
    final previous = state.value;
    state = AsyncValue.data(budget);
    try {
      await service.updateUserData({'monthlyBudget': budget});
    } on Exception {
      state = AsyncValue.data(previous);
      rethrow;
    }
  }
}

class UserStats {
  UserStats({
    this.totalItemsBought = 0,
    this.totalSavings = 0,
    this.currentStreak = 0,
    this.lastPurchaseDate,
  });

  factory UserStats.fromJson(Map<String, dynamic> json) => UserStats(
        totalItemsBought: (json['totalItemsBought'] as num?)?.toInt() ?? 0,
        totalSavings: (json['totalSavings'] as num?)?.toDouble() ?? 0.0,
        currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
        lastPurchaseDate: json['lastPurchaseDate'] != null
            ? DateTime.parse(json['lastPurchaseDate'] as String)
            : null,
      );

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
}

@riverpod
class UserStatsNotifier extends _$UserStatsNotifier {
  @override
  UserStats build() {
    _loadStats();
    return UserStats();
  }

  Future<void> _loadStats() async {
    final service = ref.read(firestoreServiceProvider);
    final data = await service.getUserData();
    if (data != null && data['userStats'] != null) {
      state = UserStats.fromJson(data['userStats'] as Map<String, dynamic>);
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
      if (diffDays == 0) {
        newStreak = state.currentStreak;
      } else if (diffDays == 1) {
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

    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'userStats': state.toJson()});
  }
}
