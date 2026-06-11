import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/models/premium_feature.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/settings/utils/locale_names.dart';
import 'package:shopping_list/app/onboarding/widgets/personalization_bottom_sheets.dart';

class OnboardingSlideSetup extends ConsumerWidget {
  const OnboardingSlideSetup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    
    final localeAsync = ref.watch(localeSettingProvider);
    final currencyAsync = ref.watch(currencySettingProvider);
    final colorAsync = ref.watch(themeColorProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            l10n.onboardingSetupTitle,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.md),
          Text(
            l10n.onboardingSetupDesc,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.xl),
          
          _SetupTile(
            icon: Icons.language,
            label: l10n.language,
            value: getLocaleDisplayName(localeAsync.value, l10n),
            onTap: () => _showModal(context, const LanguageSelectionSheet()),
          ),
          const SizedBox(height: Spacing.md),
          _SetupTile(
            icon: Icons.attach_money,
            label: l10n.currency,
            value: currencyAsync.value ?? 'BRL',
            onTap: () => _showModal(context, const CurrencySelectionSheet()),
          ),
          const SizedBox(height: Spacing.md),
          _SetupTile(
            icon: Icons.palette_outlined,
            label: l10n.themeColor,
            value: ThemeOption.fromColorValue(
              colorAsync.value?.toARGB32() ?? const Color(0xFF4CAF50).toARGB32(),
            ).name,
            onTap: () => _showModal(context, const ThemeSelectionSheet()),
          ),
        ],
      ),
    );
  }

  void _showModal(BuildContext context, Widget sheet) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(RadiusTokens.lg)),
      ),
      builder: (context) => sheet,
    );
  }
}

class _SetupTile extends StatelessWidget {
  const _SetupTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(RadiusTokens.lg),
      child: Container(
        padding: const EdgeInsets.all(Spacing.md),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withAlpha(80),
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: Border.all(
            color: theme.colorScheme.outlineVariant,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: theme.colorScheme.primary),
            const SizedBox(width: Spacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    value,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.expand_less, // Using expand_less as it indicates a bottom sheet will open
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
