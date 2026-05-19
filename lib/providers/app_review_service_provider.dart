import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/app_review_service.dart';
import 'firestore_service_provider.dart';
import 'analytics_service_provider.dart';

final appReviewServiceProvider = Provider<AppReviewService>((ref) {
  final storage = ref.watch(firestoreServiceProvider);
  final analytics = ref.watch(analyticsServiceProvider);
  return AppReviewService(storage: storage, analytics: analytics);
});
