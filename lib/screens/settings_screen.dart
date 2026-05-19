import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/dark_mode_provider.dart';
import '../providers/locale_provider.dart';
import '../providers/theme_color_provider.dart';
import '../models/premium_feature.dart';
import '../theme/tokens.dart';
import '../theme/page_transitions.dart';
import 'theme_selection_screen.dart';
import 'budget_dashboard_screen.dart';
import 'backup_screen.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final darkModeAsync = ref.watch(darkModeProvider);
    final currentThemeMode = darkModeAsync.value ?? ThemeMode.system;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsAppBar)),
      body: ListView(
        children: [
          _SectionHeader(title: l10n.appearance),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
            child: SegmentedButton<ThemeMode>(
              segments: [
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: const Icon(Icons.light_mode),
                  label: Text(l10n.light),
                ),
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: const Icon(Icons.settings_brightness),
                  label: Text(l10n.system),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: const Icon(Icons.dark_mode),
                  label: Text(l10n.dark),
                ),
              ],
              selected: {currentThemeMode},
              onSelectionChanged: (Set<ThemeMode> selected) {
                ref.read(darkModeProvider.notifier).setMode(selected.first);
              },
              showSelectedIcon: false,
            ),
          ),
          ListTile(
            leading: Icon(Icons.palette_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.themeColor),
            subtitle: Text(
              ThemeOption.fromColorValue(
                ref.watch(themeColorProvider).value ?? Colors.green.toARGB32(),
              ).name,
            ),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const ThemeSelectionScreen()),
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.language),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
            child: SegmentedButton<String>(
              segments: [
                ButtonSegment(
                  value: '',
                  icon: const Icon(Icons.settings_outlined),
                  label: Text(l10n.languageSystem),
                ),
                ButtonSegment(
                  value: 'pt_BR',
                  icon: const Icon(Icons.language),
                  label: Text(l10n.languagePortuguese),
                ),
                ButtonSegment(
                  value: 'en',
                  icon: const Icon(Icons.language),
                  label: Text(l10n.languageEnglish),
                ),
              ],
              selected: {ref.watch(localeSettingProvider).valueOrNull ?? ''},
              onSelectionChanged: (Set<String> selected) {
                final locale = selected.first;
                ref.read(localeSettingProvider.notifier).setLocale(
                  locale.isEmpty ? null : locale,
                );
              },
              showSelectedIcon: false,
            ),
          ),
          const Divider(),
          _SectionHeader(title: l10n.finance),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.monthlyBudgetNav),
            subtitle: Text(l10n.budgetSubtitle),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const BudgetDashboardScreen()),
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.data),
          ListTile(
            leading: Icon(Icons.backup_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.backupNav),
            subtitle: Text(l10n.backupSubtitle),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const BackupScreen()),
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.about),
          ListTile(
            leading: Icon(Icons.info_outline, color: theme.colorScheme.onSurfaceVariant),
            title: Text(l10n.version),
            subtitle: const Text('1.0.15+15'),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined, color: theme.colorScheme.onSurfaceVariant),
            title: Text(l10n.privacy),
            trailing: Icon(Icons.open_in_new, color: theme.colorScheme.onSurfaceVariant, size: 18),
            onTap: () {
              launchUrl(
                Uri.parse('https://listaplus-6547b.web.app/privacidade.html'),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description_outlined, color: theme.colorScheme.onSurfaceVariant),
            title: Text(l10n.termsOfUse),
            trailing: Icon(Icons.open_in_new, color: theme.colorScheme.onSurfaceVariant, size: 18),
            onTap: () {
              launchUrl(
                Uri.parse('https://listaplus-6547b.web.app/termos.html'),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, Spacing.xs),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
