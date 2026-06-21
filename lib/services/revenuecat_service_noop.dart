import 'package:purchases_flutter/purchases_flutter.dart';
import 'revenuecat_service.dart';

class RevenueCatServiceNoop implements RevenueCatService {
  @override
  bool get isAvailable => false;

  @override
  Future<void> init(String apiKey) async {}

  @override
  Future<bool> isEntitlementActive(String entitlementId) async => false;

  @override
  Future<CustomerInfo> getCustomerInfo() =>
      throw UnsupportedError('RevenueCat não suportado na web');

  @override
  Future<void> restorePurchases() async {}

  @override
  Future<void> presentCustomerCenter() async {}

  @override
  void addCustomerInfoUpdateListener(void Function(CustomerInfo) listener) {}

  @override
  void removeCustomerInfoUpdateListener(void Function(CustomerInfo) listener) {}

  @override
  Future<List<PaywallPackage>> getPaywallPackages() async => [];

  @override
  Future<CustomerInfo> purchasePackage(PaywallPackage package) =>
      throw UnsupportedError('Compras não suportadas na web');
}
