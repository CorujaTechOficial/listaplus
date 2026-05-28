class AiUsage {
  AiUsage({
    required this.dailyCount,
    required this.totalCount,
    required this.lastReset,
  });

  factory AiUsage.fromJson(Map<String, dynamic> json) {
    return AiUsage(
      dailyCount: json['dailyCount'] as int? ?? 0,
      totalCount: json['totalCount'] as int? ?? 0,
      lastReset: _parseDate(json['lastReset']),
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    if (value is DateTime) {
      return value;
    }
    final parsed = DateTime.tryParse(value.toString());
    return parsed ?? DateTime.now();
  }

  final int dailyCount;
  final int totalCount;
  final DateTime lastReset;

  bool get isDailyExhausted {
    return dailyCount >= AiUsageLimits.dailyLimit;
  }
  bool get isTotalExhausted {
    return totalCount >= AiUsageLimits.totalLimit;
  }
  bool get isExhausted {
    return isDailyExhausted;
  }
  int get remainingDaily => (AiUsageLimits.dailyLimit - dailyCount).clamp(0, AiUsageLimits.dailyLimit);
  int get remainingTotal => (AiUsageLimits.totalLimit - totalCount).clamp(0, AiUsageLimits.totalLimit);

  AiUsage copyWith({
    int? dailyCount,
    int? totalCount,
    DateTime? lastReset,
  }) {
    return AiUsage(
      dailyCount: dailyCount ?? this.dailyCount,
      totalCount: totalCount ?? this.totalCount,
      lastReset: lastReset ?? this.lastReset,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dailyCount': dailyCount,
      'totalCount': totalCount,
      'lastReset': lastReset.toIso8601String(),
    };
  }

  AiUsage recordMessage() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastResetDay = DateTime(lastReset.year, lastReset.month, lastReset.day);

    final isNewDay = today.isAfter(lastResetDay);
    final newDaily = isNewDay ? 1 : dailyCount + 1;
    final newTotal = totalCount + 1;
    final newReset = isNewDay ? today : lastReset;

    return AiUsage(
      dailyCount: newDaily,
      totalCount: newTotal,
      lastReset: newReset,
    );
  }
}

class AiUsageLimits {
  static const int dailyLimit = 10;
  static const int totalLimit = 50;
}
