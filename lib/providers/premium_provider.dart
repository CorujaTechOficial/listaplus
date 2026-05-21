import 'dart:async';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'credits_provider.dart';
import 'revenuecat_service_provider.dart';

part 'premium_provider.g.dart';

const String listaPlusProEntitlement = 'lista_plus_pro';

@riverpod
class Premium extends _$Premium {
  @override
  Stream<bool> build() {
    final revenueCat = ref.watch(revenueCatServiceProvider);
    final controller = StreamController<bool>();

    Future<void> check() async {
      final isClosed = controller.isClosed;
      if (isClosed) {
        return;
      }
      try {
        final active = await revenueCat.isEntitlementActive(listaPlusProEntitlement);
        if (active) {
          controller.add(true);
        } else {
          final credits = await ref.read(creditsProvider.future);
          final stillOpen = controller.isClosed == false;
          if (stillOpen) {
            controller.add(credits != null && credits.isAfter(DateTime.now()));
          }
        }
      } on Exception {
        final stillOpen = controller.isClosed == false;
        if (stillOpen) {
          controller.add(false);
        }
      }
    }

    // Initial check
    unawaited(check());

    // Listen to RC updates
    void listener(CustomerInfo info) => unawaited(check());
    revenueCat.addCustomerInfoUpdateListener(listener);
    
    // Listen to credits changes
    final creditsSub = ref.listen(creditsProvider, (_, __) => unawaited(check()));

    ref.onDispose(() {
      revenueCat.removeCustomerInfoUpdateListener(listener);
      creditsSub.close();
      controller.close();
    });

    return controller.stream.distinct();
  }
}
