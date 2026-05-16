// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/revenuecat_service.dart';
import '../services/revenuecat_service_impl.dart';

final revenueCatServiceProvider = Provider<RevenueCatService>((ref) {
  return RevenueCatServiceImpl();
});
// coverage:ignore-end
