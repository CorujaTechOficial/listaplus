import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';

// coverage:ignore-start
class PaywallScreen extends ConsumerWidget {
  const PaywallScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final analytics = ref.read(analyticsServiceProvider);
    ref.read(analyticsServiceProvider).logPaywallViewed();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.paywallTitle)),
      body: SafeArea(
        child: PaywallView(
          onPurchaseCompleted: (CustomerInfo customerInfo, StoreTransaction transaction) {
            Navigator.of(context).pop(true);
            analytics.logPaywallPurchaseCompleted();
            ref.invalidate(premiumProvider);
          },
          onRestoreCompleted: (CustomerInfo customerInfo) {
            Navigator.of(context).pop(true);
            analytics.logPaywallRestoreCompleted();
            ref.invalidate(premiumProvider);
          },
          onPurchaseError: (PurchasesError error) {
            Sentry.captureException(error);
            FirebaseCrashlytics.instance.recordError(error, null, fatal: false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.purchaseError)),
            );
          },
          onRestoreError: (PurchasesError error) {
            Sentry.captureException(error);
            FirebaseCrashlytics.instance.recordError(error, null, fatal: false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.restoreError)),
            );
          },
          onDismiss: () {
            analytics.logPaywallDismissed();
            Navigator.of(context).pop(false);
          },
        ),
      ),
    );
  }
}
// coverage:ignore-end
