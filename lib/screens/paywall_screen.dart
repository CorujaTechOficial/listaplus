import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
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
    final analytics = ref.read(analyticsServiceProvider);
    ref.read(analyticsServiceProvider).logPaywallViewed();

    return Scaffold(
      appBar: AppBar(title: const Text('Lista Plus Premium')),
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
              const SnackBar(content: Text('Erro ao processar compra. Tente novamente.')),
            );
          },
          onRestoreError: (PurchasesError error) {
            Sentry.captureException(error);
            FirebaseCrashlytics.instance.recordError(error, null, fatal: false);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Erro ao restaurar compras. Tente novamente.')),
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
