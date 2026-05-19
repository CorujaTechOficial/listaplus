import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../models/premium_feature.dart';
import '../providers/theme_color_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

class ThemeSelectionScreen extends ConsumerWidget {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final currentColorAsync = ref.watch(themeColorProvider);
    final isPremiumAsync = ref.watch(premiumProvider);
    final currentColor = currentColorAsync.value ?? Colors.green.toARGB32();
    final isPremium = isPremiumAsync.value ?? false;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.prefCustomThemes)),
      body: GridView.builder(
        padding: const EdgeInsets.all(Spacing.md),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: Spacing.sm,
          mainAxisSpacing: Spacing.sm,
        ),
        itemCount: ThemeOption.options.length,
        itemBuilder: (context, index) {
          final option = ThemeOption.options[index];
          final isSelected = option.color.toARGB32() == currentColor;
          final isLocked = option.isPremium && !isPremium;

          return Card(
            color: isSelected ? option.color.withValues(alpha: 0.2) : null,
            child: InkWell(
              borderRadius: BorderRadius.circular(RadiusTokens.md),
              onTap: isLocked
                  ? () {
                      ref.read(analyticsServiceProvider).logUpgradeTapped('theme');
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(builder: (_) => const PaywallScreen()),
                      );
                    }
                  : () {
                      ref.read(themeColorProvider.notifier).setColor(option.color.toARGB32());
                    },
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, color: option.color, size: 40),
                        const SizedBox(height: Spacing.xs),
                        Text(option.name, style: theme.textTheme.labelLarge),
                      ],
                    ),
                  ),
                  if (isSelected)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        Icons.check_circle,
                        color: option.color,
                      ),
                    ),
                  if (isLocked)
                    const Positioned(
                      top: 8,
                      left: 8,
                      child: Icon(Icons.lock, size: 18, color: Colors.grey),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
