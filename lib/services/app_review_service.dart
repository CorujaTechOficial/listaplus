import 'package:in_app_review/in_app_review.dart';
import 'storage_backend.dart';
import 'analytics_service.dart';

class AppReviewService {
  AppReviewService({
    required StorageBackend storage,
    AnalyticsService? analytics,
  }) : _storage = storage,
       _analytics = analytics;

  final StorageBackend _storage;
  final AnalyticsService? _analytics;
  final InAppReview _inAppReview = InAppReview.instance;

  static const _completionCountKey = 'completedListsCount';
  static const _firstCompletionAtKey = 'firstCompletionAt';
  static const _reviewRequestedKey = 'reviewRequested';

  Future<void> requestReview() async {
    final isAvailable = await _inAppReview.isAvailable();
    if (isAvailable) {
      await _inAppReview.requestReview();
      await _storage.updateUserData({_reviewRequestedKey: true});
      await _analytics?.logEvent(name: 'in_app_review_requested_by_ai');
    }
  }

  Future<void> registerCompletionAndRequestReview({
    required int itemCount,
  }) async {
    if (itemCount < 5) {
      return;
    }

    final userData = await _storage.getUserData() ?? {};

    if (userData[_reviewRequestedKey] as bool? ?? false) {
      return;
    }

    final now = DateTime.now().toUtc();
    final firstCompletionAt = DateTime.tryParse(
      userData[_firstCompletionAtKey] as String? ?? '',
    );
    final effectiveFirstCompletionAt = firstCompletionAt ?? now;
    final currentCount = userData[_completionCountKey] as int? ?? 0;
    final newCount = currentCount + 1;
    await _storage.updateUserData({
      _completionCountKey: newCount,
      if (firstCompletionAt == null)
        _firstCompletionAtKey: effectiveFirstCompletionAt.toIso8601String(),
    });

    final usedLongEnough =
        now.difference(effectiveFirstCompletionAt) >= const Duration(hours: 72);
    if (newCount >= 3 && usedLongEnough) {
      final isAvailable = await _inAppReview.isAvailable();
      if (isAvailable) {
        await _inAppReview.requestReview();
        await _storage.updateUserData({_reviewRequestedKey: true});
        await _analytics?.logEvent(name: 'in_app_review_requested');
      }
    }
  }
}
