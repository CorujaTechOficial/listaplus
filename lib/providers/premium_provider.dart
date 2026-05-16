import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'revenuecat_service_provider.dart';

part 'premium_provider.g.dart';

const String listaPlusProEntitlement = 'lista_plus_pro';

@riverpod
class Premium extends _$Premium {
  @override
  Future<bool> build() async {
    final service = ref.watch(revenueCatServiceProvider);
    return service.isEntitlementActive(listaPlusProEntitlement);
  }
}
