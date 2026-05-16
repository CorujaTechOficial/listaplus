import 'package:purchases_flutter/purchases_flutter.dart';

abstract class RevenueCatService {
  Future<void> init(String apiKey);
  Future<bool> isEntitlementActive(String entitlementId);
  Future<CustomerInfo> getCustomerInfo();
  Future<void> restorePurchases();
  Future<void> presentCustomerCenter();
  void addCustomerInfoUpdateListener(void Function(CustomerInfo) listener);
  void removeCustomerInfoUpdateListener(void Function(CustomerInfo) listener);
}
