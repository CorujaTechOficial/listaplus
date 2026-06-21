import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/ai_usage_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class AiUsageBanner extends ConsumerWidget {
  const AiUsageBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPremium = ref.watch(premiumProvider).value ?? false;
    if (isPremium) {
      return const SizedBox.shrink();
    }

    final usageAsync = ref.watch(aiUsageProvider);
    return usageAsync.when(
      data: (count) {
        if (count < kAiUsageWarningThreshold) {
          return const SizedBox.shrink();
        }
        final remaining = kFreeAiActionsPerMonth - count;
        final isExhausted = remaining <= 0;
        final theme = Theme.of(context);
        final semantic = AppSemanticColors.of(context);
        final l10n = AppLocalizations.of(context)!;

        // Exhausted reads as an error (hard block); the low-balance warning uses
        // the semantic warning role so both states adapt to light/dark.
        final background =
            isExhausted
                ? theme.colorScheme.errorContainer
                : semantic.warningContainer;
        final foreground =
            isExhausted
                ? theme.colorScheme.onErrorContainer
                : semantic.onWarningContainer;

        return GestureDetector(
          onTap:
              () => showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (_) => const PaywallScreen(asSheet: true),
              ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.xs,
            ),
            color: background,
            child: Row(
              children: [
                Icon(
                  isExhausted ? Icons.lock_outline : Icons.bolt,
                  size: 16,
                  color: foreground,
                ),
                const SizedBox(width: Spacing.xs),
                Expanded(
                  child: Text(
                    isExhausted
                        ? l10n.aiUsageExhausted
                        : l10n.aiUsageWarning(remaining),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: foreground,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  l10n.upgrade,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: foreground,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}
