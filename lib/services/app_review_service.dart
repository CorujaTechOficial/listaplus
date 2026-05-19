import 'package:in_app_review/in_app_review.dart';
import 'storage_backend.dart';
import 'analytics_service.dart';

class AppReviewService {
  AppReviewService({
    required StorageBackend storage,
    AnalyticsService? analytics,
  })  : _storage = storage,
        _analytics = analytics;

  final StorageBackend _storage;
  final AnalyticsService? _analytics;
  final InAppReview _inAppReview = InAppReview.instance;

  static const _archiveCountKey = 'archivedListsCount';
  static const _reviewRequestedKey = 'reviewRequested';

  Future<void> registerArchiveAndRequestReview() async {
    final userData = await _storage.getUserData() ?? {};
    
    // If we already requested, don't do anything
    if (userData[_reviewRequestedKey] as bool? ?? false) {
      return;
    }

    final currentCount = userData[_archiveCountKey] as int? ?? 0;
    final newCount = currentCount + 1;
    
    await _storage.updateUserData({_archiveCountKey: newCount});

    // Trigger on the 3rd time
    if (newCount == 3) {
      final isAvailable = await _inAppReview.isAvailable();
      if (isAvailable) {
        await _inAppReview.requestReview();
        await _storage.updateUserData({_reviewRequestedKey: true});
        await _analytics?.logEvent(name: 'in_app_review_requested');
      }
    }
  }
}
