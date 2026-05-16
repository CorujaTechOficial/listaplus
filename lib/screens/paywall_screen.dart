import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
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
            analytics.logPaywallPurchaseCompleted();
            ref.invalidate(premiumProvider);
            Navigator.of(context).pop(true);
          },
          onRestoreCompleted: (CustomerInfo customerInfo) {
            analytics.logPaywallRestoreCompleted();
            ref.invalidate(premiumProvider);
            Navigator.of(context).pop(true);
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
