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
}
