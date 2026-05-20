import 'package:purchases_flutter/purchases_flutter.dart';

class PaywallPackage {
  PaywallPackage({
    required this.identifier,
    required this.priceString,
    required this.title,
    required this.description,
    this.rawPackage,
  });

  final String identifier;
  final String priceString;
  final String title;
  final String description;
  final Package? rawPackage;
}

abstract class RevenueCatService {
  Future<void> init(String apiKey);
  Future<bool> isEntitlementActive(String entitlementId);
  Future<CustomerInfo> getCustomerInfo();
  Future<void> restorePurchases();
  Future<void> presentCustomerCenter();
  void addCustomerInfoUpdateListener(void Function(CustomerInfo) listener);
  void removeCustomerInfoUpdateListener(void Function(CustomerInfo) listener);
  Future<List<PaywallPackage>> getPaywallPackages();
  Future<CustomerInfo> purchasePackage(PaywallPackage package);
}
