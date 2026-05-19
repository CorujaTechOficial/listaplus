import 'package:firebase_analytics/firebase_analytics.dart';
// coverage:ignore-start

class AnalyticsService {
  AnalyticsService({FirebaseAnalytics? analytics})
      : _analytics = analytics;

  final FirebaseAnalytics? _analytics;

  Future<void> logPaywallViewed() async {
    await _analytics?.logEvent(name: 'paywall_viewed');
  }

  Future<void> logPaywallPurchaseCompleted() async {
    await _analytics?.logEvent(name: 'paywall_purchase_completed');
  }

  Future<void> logPaywallRestoreCompleted() async {
    await _analytics?.logEvent(name: 'paywall_restore_completed');
  }

  Future<void> logPaywallDismissed() async {
    await _analytics?.logEvent(name: 'paywall_dismissed');
  }

  Future<void> logCustomerCenterOpened() async {
    await _analytics?.logEvent(name: 'customer_center_opened');
  }

  Future<void> logPremiumFeatureAccessed(String feature) async {
    await _analytics?.logEvent(
      name: 'premium_feature_accessed',
      parameters: {'feature': feature},
    );
  }

  Future<void> logUpgradeTapped(String source) async {
    await _analytics?.logEvent(
      name: 'upgrade_tapped',
      parameters: {'source': source},
    );
  }

  Future<void> logEvent({required String name, Map<String, Object>? parameters}) async {
    await _analytics?.logEvent(name: name, parameters: parameters);
  }
}
// coverage:ignore-end
