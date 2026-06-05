import 'package:purchases_flutter/purchases_flutter.dart';

class PaywallPackage {
  PaywallPackage({
    required this.identifier,
    required this.priceString,
    required this.price,
    required this.currencyCode,
    required this.title,
    required this.description,
    this.rawPackage,
    this.trialPeriodDays,
  });

  final String identifier;
  final String priceString;
  final double price;
  final String currencyCode;
  final String title;
  final String description;
  final Package? rawPackage;
  final int? trialPeriodDays;

  bool get hasFreeTrial => trialPeriodDays != null && trialPeriodDays! > 0;
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
