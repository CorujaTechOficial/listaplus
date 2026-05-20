import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/services/revenuecat_service.dart';

class FakeRevenueCatService implements RevenueCatService {
  bool _isPremium = false;
  final List<void Function(CustomerInfo)> _listeners = [];

  int initCallCount = 0;
  int isEntitlementActiveCallCount = 0;
  int presentCustomerCenterCallCount = 0;
  int restorePurchasesCallCount = 0;
  int getCustomerInfoCallCount = 0;

  void setIsPremium(bool value) {
    _isPremium = value;
  }

  @override
  Future<void> init(String apiKey) async {
    initCallCount++;
  }

  @override
  Future<bool> isEntitlementActive(String entitlementId) async {
    isEntitlementActiveCallCount++;
    return _isPremium;
  }

  @override
  Future<CustomerInfo> getCustomerInfo() async {
    getCustomerInfoCallCount++;
    throw UnimplementedError('getCustomerInfo not implemented in FakeRevenueCatService');
  }

  @override
  Future<void> restorePurchases() async {
    restorePurchasesCallCount++;
  }

  @override
  Future<void> presentCustomerCenter() async {
    presentCustomerCenterCallCount++;
  }

  @override
  void addCustomerInfoUpdateListener(void Function(CustomerInfo) listener) {
    _listeners.add(listener);
  }

  @override
  void removeCustomerInfoUpdateListener(void Function(CustomerInfo) listener) {
    _listeners.remove(listener);
  }

  @override
  Future<List<PaywallPackage>> getPaywallPackages() async {
    return [
      PaywallPackage(
        identifier: 'monthly',
        priceString: 'R\$ 14.90',
        title: 'Mensal',
        description: 'Acesso total por 1 mês',
      ),
      PaywallPackage(
        identifier: 'annual',
        priceString: 'R\$ 99.90',
        title: 'Anual',
        description: 'Acesso total por 1 ano (Melhor valor)',
      ),
      PaywallPackage(
        identifier: 'lifetime',
        priceString: 'R\$ 299.90',
        title: 'Vitalício',
        description: 'Acesso total para sempre',
      ),
    ];
  }

  @override
  Future<CustomerInfo> purchasePackage(PaywallPackage package) async {
    _isPremium = true;
    // Return a subclass/fake of CustomerInfo since it doesn't have a public default constructor.
    return _FakeCustomerInfo();
  }
}

class _FakeCustomerInfo implements CustomerInfo {
  @override
  EntitlementInfos get entitlements => const EntitlementInfos({}, {});

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
