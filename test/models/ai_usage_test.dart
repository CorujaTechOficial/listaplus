import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/ai_usage.dart';

void main() {
  group('AiUsageLimits', () {
    test('dailyLimit is 10', () {
      expect(AiUsageLimits.dailyLimit, 10);
    });

    test('totalLimit is 50', () {
      expect(AiUsageLimits.totalLimit, 50);
    });
  });

  group('AiUsage', () {
    final baseDate = DateTime(2026, 6, 7);

    AiUsage createUsage({
      int dailyCount = 0,
      int totalCount = 0,
      DateTime? lastReset,
    }) {
      return AiUsage(
        dailyCount: dailyCount,
        totalCount: totalCount,
        lastReset: lastReset ?? baseDate,
      );
    }

    group('daily limits', () {
      test('isDailyExhausted returns false when below limit', () {
        final usage = createUsage(dailyCount: 5);
        expect(usage.isDailyExhausted, isFalse);
      });

      test('isDailyExhausted returns true when at limit', () {
        final usage = createUsage(dailyCount: 10);
        expect(usage.isDailyExhausted, isTrue);
      });

      test('isDailyExhausted returns true when over limit', () {
        final usage = createUsage(dailyCount: 15);
        expect(usage.isDailyExhausted, isTrue);
      });

      test('remainingDaily returns correct value', () {
        final usage = createUsage(dailyCount: 3);
        expect(usage.remainingDaily, 7);
      });

      test('remainingDaily clamps to zero when over limit', () {
        final usage = createUsage(dailyCount: 12);
        expect(usage.remainingDaily, 0);
      });
    });

    group('total limits', () {
      test('isTotalExhausted returns false when below limit', () {
        final usage = createUsage(totalCount: 30);
        expect(usage.isTotalExhausted, isFalse);
      });

      test('isTotalExhausted returns true when at limit', () {
        final usage = createUsage(totalCount: 50);
        expect(usage.isTotalExhausted, isTrue);
      });

      test('remainingTotal returns correct value', () {
        final usage = createUsage(totalCount: 40);
        expect(usage.remainingTotal, 10);
      });

      test('remainingTotal clamps to zero when over limit', () {
        final usage = createUsage(totalCount: 60);
        expect(usage.remainingTotal, 0);
      });
    });

    group('isExhausted', () {
      test('returns false when daily not exhausted', () {
        final usage = createUsage(dailyCount: 5);
        expect(usage.isExhausted, isFalse);
      });

      test('returns true when daily exhausted', () {
        final usage = createUsage(dailyCount: 10);
        expect(usage.isExhausted, isTrue);
      });
    });

    group('recordMessage', () {
      test('increments daily and total counts on same day', () {
        final now = DateTime.now();
        final usage = createUsage(dailyCount: 2, totalCount: 5, lastReset: now);
        final result = usage.recordMessage();
        expect(result.dailyCount, 3);
        expect(result.totalCount, 6);
        expect(result.lastReset.year, now.year);
        expect(result.lastReset.month, now.month);
        expect(result.lastReset.day, now.day);
      });

      test('resets daily count on new day', () {
        final yesterday = baseDate.subtract(const Duration(days: 1));
        final usage = createUsage(dailyCount: 8, totalCount: 20, lastReset: yesterday);
        final result = usage.recordMessage();
        expect(result.dailyCount, 1);
        expect(result.totalCount, 21);
      });
    });

    group('copyWith', () {
      test('produces equal copy when no arguments', () {
        final usage = createUsage(dailyCount: 3, totalCount: 7);
        final result = usage.copyWith();
        expect(result.dailyCount, usage.dailyCount);
        expect(result.totalCount, usage.totalCount);
        expect(result.lastReset, usage.lastReset);
      });

      test('overrides specified fields', () {
        final usage = createUsage(dailyCount: 3, totalCount: 7);
        final result = usage.copyWith(dailyCount: 10);
        expect(result.dailyCount, 10);
        expect(result.totalCount, 7);
      });
    });

    group('JSON serialization', () {
      test('round-trip preserves all fields', () {
        final usage = createUsage(dailyCount: 3, totalCount: 7, lastReset: baseDate);
        final json = usage.toJson();
        final restored = AiUsage.fromJson(json);
        expect(restored.dailyCount, 3);
        expect(restored.totalCount, 7);
      });

      test('fromJson uses defaults for null values', () {
        final restored = AiUsage.fromJson({});
        expect(restored.dailyCount, 0);
        expect(restored.totalCount, 0);
      });
    });
  });
}
