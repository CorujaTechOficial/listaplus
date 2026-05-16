// coverage:ignore-start
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'revenuecat_service.dart';

class RevenueCatServiceImpl implements RevenueCatService {
  final List<void Function(CustomerInfo)> _listeners = [];

  @override
  Future<void> init(String apiKey) async {
    await Purchases.setLogLevel(LogLevel.debug);
    await Purchases.configure(PurchasesConfiguration(apiKey));
    Purchases.addCustomerInfoUpdateListener(_onCustomerInfoUpdate);
  }

  void _onCustomerInfoUpdate(CustomerInfo customerInfo) {
    for (final listener in _listeners) {
      listener(customerInfo);
    }
  }

  @override
  Future<bool> isEntitlementActive(String entitlementId) async {
    final customerInfo = await Purchases.getCustomerInfo();
    return customerInfo.entitlements.all[entitlementId]?.isActive ?? false;
  }

  @override
  Future<CustomerInfo> getCustomerInfo() async {
    return Purchases.getCustomerInfo();
  }

  @override
  Future<void> restorePurchases() async {
    await Purchases.restorePurchases();
  }

  @override
  Future<void> presentCustomerCenter() async {
    await RevenueCatUI.presentCustomerCenter();
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
// coverage:ignore-end
