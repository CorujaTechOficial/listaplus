// coverage:ignore-start
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ad_service.dart';
import '../services/ad_service_impl.dart';

final adServiceProvider = Provider<AdService>((ref) {
  final service = AdServiceImpl();
  unawaited(service.initialize());
  return service;
});
// coverage:ignore-end
