import 'dart:async';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/logger_service.dart';
import 'revenuecat_service_provider.dart';

part 'premium_provider.g.dart';

const String listaPlusProEntitlement = 'lista_plus_pro';

@riverpod
class Premium extends _$Premium {
  @override
  Future<bool> build() async {
    final revenueCat = ref.watch(revenueCatServiceProvider);
    
    // Keep alive to prevent "disposed during loading" crashes during rapid navigation
    final link = ref.keepAlive();
    
    // Timer to close the keepAlive link after 2 minutes of inactivity
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

    // Listen for updates from RevenueCat and invalidate self to re-run build
    void listener(CustomerInfo info) {
      resetTimer();
      // Only invalidate if we are not already disposed or disposed soon
      ref.invalidateSelf();
    }
    
    revenueCat.addCustomerInfoUpdateListener(listener);
    ref.onDispose(() => revenueCat.removeCustomerInfoUpdateListener(listener));

    try {
      final active = await revenueCat.isEntitlementActive(listaPlusProEntitlement);
      return active;
    } catch (e) {
      LoggerService.log('PremiumProvider: erro ao verificar entitlement: $e', tag: 'Premium');
      return false;
    }
  }
}
