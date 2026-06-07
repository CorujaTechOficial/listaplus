import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/ai_usage_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
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
        final l10n = AppLocalizations.of(context)!;

        return GestureDetector(
          onTap: () => showModalBottomSheet<void>(
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
            color: isExhausted
                ? theme.colorScheme.errorContainer
                : const Color(0xFFFFF3E0),
            child: Row(
              children: [
                Icon(
                  isExhausted ? Icons.lock_outline : Icons.bolt,
                  size: 16,
                  color: isExhausted
                      ? theme.colorScheme.onErrorContainer
                      : const Color(0xFFE65100),
                ),
                const SizedBox(width: Spacing.xs),
                Expanded(
                  child: Text(
                    isExhausted
                        ? l10n.aiUsageExhausted
                        : l10n.aiUsageWarning(remaining),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: isExhausted
                          ? theme.colorScheme.onErrorContainer
                          : const Color(0xFFBF360C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  l10n.upgrade,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: isExhausted
                        ? theme.colorScheme.onErrorContainer
                        : const Color(0xFFE65100),
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
