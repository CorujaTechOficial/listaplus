import 'dart:async';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/revenuecat_service.dart';
import '../../services/revenuecat_service_impl.dart';
import '../../services/logger_service.dart';

part 'monetization_providers.g.dart';

const String listaPlusProEntitlement = 'lista_plus_pro';

final revenueCatServiceProvider = Provider<RevenueCatService>((ref) {
  return RevenueCatServiceImpl();
});

@riverpod
class Premium extends _$Premium {
  @override
  Future<bool> build() async {
    final revenueCat = ref.watch(revenueCatServiceProvider);

    final link = ref.keepAlive();

    Timer? timer;
    void resetTimer() {
      timer?.cancel();
      timer = Timer(const Duration(minutes: 2), () {
        link.close();
      });
    }

    ref.onDispose(() {
      timer?.cancel();
    });

    void listener(CustomerInfo info) {
      resetTimer();
      ref.invalidateSelf();
    }

    revenueCat.addCustomerInfoUpdateListener(listener);
    ref.onDispose(() => revenueCat.removeCustomerInfoUpdateListener(listener));

    try {
      final active = await revenueCat.isEntitlementActive(listaPlusProEntitlement);
      return active;
    } on Object catch (e) {
      LoggerService.log('PremiumProvider: erro ao verificar entitlement: $e', tag: 'Premium');
      return false;
    }
  }
}
