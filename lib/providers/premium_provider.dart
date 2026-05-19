import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'credits_provider.dart';
import 'revenuecat_service_provider.dart';

part 'premium_provider.g.dart';

const String listaPlusProEntitlement = 'lista_plus_pro';

@riverpod
class Premium extends _$Premium {
  @override
  Future<bool> build() async {
    final revenueCat = ref.watch(revenueCatServiceProvider);
    if (await revenueCat.isEntitlementActive(listaPlusProEntitlement)) {
      return true;
    }

    final credits = await ref.read(creditsProvider.future);
    if (credits != null && credits.isAfter(DateTime.now())) {
      return true;
    }

    return false;
  }
}
