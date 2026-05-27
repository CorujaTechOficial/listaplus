import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/services/app_review_service.dart';
import 'package:shopping_list/services/update_service.dart';

final packageInfoProvider = FutureProvider<PackageInfo>((ref) async {
  return PackageInfo.fromPlatform();
});

final appReviewServiceProvider = Provider<AppReviewService>((ref) {
  final storage = ref.watch(firestoreServiceProvider);
  final analytics = ref.watch(analyticsServiceProvider);
  return AppReviewService(storage: storage, analytics: analytics);
});

final updateServiceProvider = Provider<UpdateService>((ref) {
  return UpdateService();
});
