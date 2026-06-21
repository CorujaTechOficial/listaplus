import 'package:intl/intl.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/services/revenuecat_service.dart';

String cleanPackageTitle(String raw) {
  final idx = raw.indexOf(' (');
  return idx == -1 ? raw : raw.substring(0, idx);
}

PackageType? detectPackageType(PaywallPackage pkg) {
  final rawType = pkg.rawPackage?.packageType;
  if (rawType != null) return rawType;

  final fingerprint = '${pkg.identifier} ${pkg.title}'.toLowerCase();
  if (fingerprint.contains('annual') || fingerprint.contains('year')) {
    return PackageType.annual;
  }
  if (fingerprint.contains('monthly') || fingerprint.contains('month')) {
    return PackageType.monthly;
  }
  if (fingerprint.contains('lifetime')) {
    return PackageType.lifetime;
  }
  return null;
}

PaywallPackage? pickDefaultPackage(List<PaywallPackage> pkgs) {
  if (pkgs.isEmpty) return null;
  return pkgs.cast<PaywallPackage?>().firstWhere(
    (p) => p != null && detectPackageType(p) == PackageType.annual,
    orElse:
        () => pkgs.cast<PaywallPackage?>().firstWhere(
          (p) => p != null && detectPackageType(p) == PackageType.monthly,
          orElse: () => pkgs.first,
        ),
  );
}

int? annualSavingsPercent(List<PaywallPackage> packages) {
  PaywallPackage? monthly;
  PaywallPackage? annual;
  for (final p in packages) {
    final t = detectPackageType(p);
    if (t == PackageType.monthly) monthly = p;
    if (t == PackageType.annual) annual = p;
  }
  if (monthly == null || annual == null || monthly.price <= 0) return null;
  final fullYear = monthly.price * 12;
  if (annual.price >= fullYear) return null;
  return ((fullYear - annual.price) / fullYear * 100).round();
}

String? perMonthString(PaywallPackage pkg) {
  if (detectPackageType(pkg) != PackageType.annual || pkg.price <= 0) {
    return null;
  }
  try {
    final fmt = NumberFormat.simpleCurrency(name: pkg.currencyCode);
    return fmt.format(pkg.price / 12);
  } on Exception {
    return null;
  }
}

PaywallPackage? packageOfType(
  List<PaywallPackage> packages,
  PackageType type,
) {
  for (final p in packages) {
    if (detectPackageType(p) == type) return p;
  }
  return null;
}
