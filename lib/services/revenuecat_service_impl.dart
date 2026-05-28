// coverage:ignore-start
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'revenuecat_service.dart';

class RevenueCatServiceImpl implements RevenueCatService {
  final List<void Function(CustomerInfo)> _listeners = [];

  @override
  Future<void> init(String apiKey) async {
    await Purchases.setLogLevel(LogLevel.warn);
    await Purchases.configure(PurchasesConfiguration(apiKey));
    Purchases.addCustomerInfoUpdateListener(_onCustomerInfoUpdate);
  }

  void _onCustomerInfoUpdate(CustomerInfo customerInfo) {
    for (final listener in List.of(_listeners)) {
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
    if (_listeners.isEmpty) {
      Purchases.removeCustomerInfoUpdateListener(_onCustomerInfoUpdate);
    }
  }

  @override
  Future<List<PaywallPackage>> getPaywallPackages() async {
    final offerings = await Purchases.getOfferings();
    final currentOffering = offerings.current;
    if (currentOffering == null) {
      return [];
    }
    return currentOffering.availablePackages
        .where((pkg) => pkg.packageType != PackageType.lifetime)
        .map((pkg) {
      return PaywallPackage(
        identifier: pkg.packageType.name, // using packageType name (e.g. monthly, annual, lifetime)
        priceString: pkg.storeProduct.priceString,
        title: pkg.storeProduct.title,
        description: pkg.storeProduct.description,
        rawPackage: pkg,
      );
    }).toList();
  }

  @override
  Future<CustomerInfo> purchasePackage(PaywallPackage package) async {
    if (package.rawPackage == null) {
      throw ArgumentError('Pacote nativo do RevenueCat não encontrado.');
    }
    // ignore: deprecated_member_use
    final result = await Purchases.purchasePackage(package.rawPackage!);
    return result.customerInfo;
  }
}
// coverage:ignore-end
