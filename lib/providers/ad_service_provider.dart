// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ad_service.dart';
import '../services/ad_service_impl.dart';

final adServiceProvider = Provider<AdService>((ref) {
  return AdServiceImpl();
});
// coverage:ignore-end
