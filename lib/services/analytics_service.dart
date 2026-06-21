import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService({FirebaseAnalytics? analytics}) : _analytics = analytics;

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

  Future<void> logPaywallError(String code) async {
    await _analytics?.logEvent(
      name: 'paywall_error',
      parameters: {'error_code': code},
    );
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

  Future<void> logOnboardingCompleted() async {
    await _analytics?.logEvent(name: 'onboarding_completed');
  }

  Future<void> logOnboardingStarted() async {
    await logEvent(name: 'onboarding_started');
  }

  Future<void> logOnboardingStepViewed({
    required int step,
    required String name,
  }) async {
    await logEvent(
      name: 'onboarding_step_viewed',
      parameters: {'step': step, 'step_name': name},
    );
  }

  Future<void> logOnboardingStepCompleted({
    required int step,
    required String name,
    int? durationMs,
  }) async {
    await logEvent(
      name: 'onboarding_step_completed',
      parameters: {
        'step': step,
        'step_name': name,
        if (durationMs != null) 'duration_ms': durationMs,
      },
    );
  }

  Future<void> logOnboardingListGeneration({
    required String status,
    String? source,
    int? itemCount,
    String? errorCategory,
  }) async {
    await logEvent(
      name: 'onboarding_list_generation_$status',
      parameters: {
        if (source != null) 'creation_source': source,
        if (itemCount != null) 'item_count': itemCount,
        if (errorCategory != null) 'error_category': errorCategory,
      },
    );
  }

  Future<void> logOnboardingPlanSelected({
    required String packageType,
    required bool hasTrial,
    int? trialDays,
  }) async {
    await logEvent(
      name: 'onboarding_plan_selected',
      parameters: {
        'package_type': packageType,
        'has_trial': hasTrial ? 1 : 0,
        if (trialDays != null) 'trial_days': trialDays,
      },
    );
  }

  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    await _analytics?.logEvent(name: name, parameters: parameters);
  }
}
