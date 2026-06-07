import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class ConsentGate extends ConsumerWidget {
  const ConsentGate({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consentAsync = ref.watch(analyticsConsentProvider);
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return consentAsync.when(
      data: (consentGiven) {
        if (consentGiven == null) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      size: 80,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      l10n.consentTitle,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.consentBody,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    FilledButton(
                      onPressed: () async {
                        await ref.read(analyticsConsentProvider.notifier).setConsent(true);
                        await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
                      },
                      child: Text(l10n.consentAccept),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () async {
                        await ref.read(analyticsConsentProvider.notifier).setConsent(false);
                        await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
                      },
                      child: Text(l10n.consentDecline),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return child;
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      ),
      error: (_, _) => child,
    );
  }
}
