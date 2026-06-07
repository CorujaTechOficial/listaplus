import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

class PremiumGate extends StatelessWidget {
  const PremiumGate({
    super.key,
    required this.title,
    required this.description,
    this.onUpgrade,
  });

  final String title;
  final String description;
  final VoidCallback? onUpgrade;

  void _openPaywall(BuildContext context) {
    if (onUpgrade != null) {
      onUpgrade!();
    }
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => const PaywallScreen(asSheet: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => _openPaywall(context),
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(Spacing.xl),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: AppColors.premiumAmber.withAlpha(20),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.workspace_premium,
                      size: 36,
                      color: AppColors.premiumAmber,
                    ),
                  ).animate().scale(
                        begin: const Offset(0.7, 0.7),
                        end: const Offset(1, 1),
                        duration: DurationTokens.fast,
                        curve: Curves.easeOutBack,
                      ),
                  const SizedBox(height: Spacing.md),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.sm,
                      vertical: Spacing.xxs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.premiumAmber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      l10n.paywallProLabel,
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: 10,
                      ),
                    ),
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 150),
                      ),
                  const SizedBox(height: Spacing.sm),
                  Text(
                    description,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 200),
                      ).slideY(
                        begin: 0.2,
                        end: 0,
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                      ),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.premiumUpgrade,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 300),
                      ),
                  const SizedBox(height: Spacing.lg),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => _openPaywall(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 3,
                      ),
                      child: Text(
                        l10n.upgrade,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 400),
                      ).scale(
                        begin: const Offset(0.9, 0.9),
                        end: const Offset(1, 1),
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 400),
                        curve: Curves.easeOutBack,
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
