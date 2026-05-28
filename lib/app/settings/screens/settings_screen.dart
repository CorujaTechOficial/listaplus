import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/domain/entities/premium_feature.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/theme_selection_screen.dart';
import 'package:shopping_list/app/settings/screens/budget_dashboard_screen.dart';
import 'package:shopping_list/app/settings/screens/backup_screen.dart';
import 'package:shopping_list/app/settings/screens/manage_categories_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/domain/entities/ai_config.dart';
import 'package:shopping_list/app/ai/screens/chat_history_screen.dart';
import 'package:shopping_list/app/settings/screens/feedback_screen.dart';
import 'package:shopping_list/app/settings/screens/language_selection_screen.dart';
import 'package:shopping_list/app/settings/utils/locale_names.dart';


class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final darkModeAsync = ref.watch(darkModeProvider);
    final currentThemeMode = darkModeAsync.value ?? ThemeMode.system;
    final premiumAsync = ref.watch(premiumProvider);
    final localeAsync = ref.watch(localeSettingProvider);
    final isPt = Localizations.localeOf(context).languageCode == 'pt';
    final aiConfigAsync = ref.watch(aiConfigStateProvider);
    final aiConfig = aiConfigAsync.value ?? const AiConfig(name: 'IA', iconKey: 'smart_toy');
    final useDynamicColorAsync = ref.watch(useDynamicColorProvider);
    final useDynamicColor = useDynamicColorAsync.value ?? true;


    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsAppBar)),
      body: SafeArea(child: ListView(
        children: [
          _SectionHeader(title: isPt ? 'Assinatura' : 'Subscription'),
          premiumAsync.when(
            data: (isPremium) => isPremium
                ? ListTile(
                    leading: const Icon(Icons.workspace_premium, color: AppColors.premiumAmber),
                    title: Text(isPt ? 'Lista Plus Pro ativo' : 'Lista Plus Pro active'),
                    subtitle: Text(l10n.manageSubscription),
                    trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
                    onTap: () async {
                      try {
                        await ref.read(analyticsServiceProvider).logCustomerCenterOpened();
                        await ref.read(revenueCatServiceProvider).presentCustomerCenter();
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.error(e.toString()))),
                          );
                        }
                      }
                    },
                  )
                : ListTile(
                    leading: Icon(Icons.workspace_premium_outlined, color: theme.colorScheme.primary),
                    title: Text(l10n.becomePremium),
                    subtitle: Text(isPt ? 'Desbloqueie listas ilimitadas, IA e mais' : 'Unlock unlimited lists, AI and more'),
                    trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
                    onTap: () async {
                      await ref.read(analyticsServiceProvider).logUpgradeTapped('settings');
                      if (context.mounted) {
                        await Navigator.push(
                          context,
                          fadeSlideRoute<void>(const PaywallScreen()),
                        );
                      }
                    },
                  ),
            loading: () => const ListTile(
              leading: CircularProgressIndicator.adaptive(),
              title: Text('Carregando assinatura...'),
            ),
            error: (e, _) => ListTile(
              leading: const Icon(Icons.error_outline, color: Colors.red),
              title: const Text('Erro ao carregar assinatura'),
              subtitle: Text(e.toString()),
            ),
          ),
          const Divider(),
          _SectionHeader(title: isPt ? 'Perfil' : 'Profile'),
          ListTile(
            leading: Icon(Icons.person_outline, color: theme.colorScheme.primary),
            title: const Text('Meu Perfil'),
            subtitle: const Text('Preferências pessoais para o assistente IA'),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const UserProfileScreen()),
              );
            },
          ),
          const Divider(),
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
                ref.watch(themeColorProvider).value?.toARGB32() ?? const Color(0xFF4CAF50).toARGB32(),
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
          SwitchListTile.adaptive(
            secondary: Icon(Icons.color_lens_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.dynamicColors),
            subtitle: Text(l10n.dynamicColorsSubtitle),
            value: useDynamicColor,
            onChanged: (value) {
              ref.read(useDynamicColorProvider.notifier).setUseDynamicColor(value);
            },
          ),
          ListTile(
            title: Text(isPt ? 'Personalizar Assistente IA' : 'Customize AI Assistant'),
            subtitle: Text(aiConfig.name),
            trailing: premiumAsync.value == true
                ? Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant)
                : Icon(Icons.lock_outline, color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt())),
            onTap: () async {
              final isPremium = premiumAsync.value ?? false;
              if (isPremium) {
                _showCustomizeAiDialog(context, ref, aiConfig, isPt);
              } else {
                await ref.read(analyticsServiceProvider).logPremiumFeatureAccessed(PremiumFeature.assistant.name);
                if (context.mounted) {
                  await Navigator.push(
                    context,
                    fadeSlideRoute<void>(const PaywallScreen()),
                  );
                }
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.history, color: theme.colorScheme.primary),
            title: Text(isPt ? 'Histórico do Assistente' : 'Assistant History'),
            subtitle: Text(isPt ? 'Ver e pesquisar conversas anteriores' : 'View and search past conversations'),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const ChatHistoryScreen()),
              );
            },
          ),

          const Divider(),
          ListTile(
            leading: Icon(Icons.language, color: theme.colorScheme.primary),
            title: Text(l10n.language),
            subtitle: Text(
              getLocaleDisplayName(localeAsync.value, l10n),
            ),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const LanguageSelectionScreen()),
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.finance),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.monthlyBudgetNav),
            subtitle: Text(l10n.budgetSubtitle),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () async {
              final isPremium = premiumAsync.value ?? false;
              if (isPremium) {
                await Navigator.push(
                  context,
                  fadeSlideRoute<void>(const BudgetDashboardScreen()),
                );
              } else {
                await ref.read(analyticsServiceProvider).logPremiumFeatureAccessed(PremiumFeature.monthlyBudget.name);
                if (context.mounted) {
                  await Navigator.push(
                    context,
                    fadeSlideRoute<void>(const PaywallScreen()),
                  );
                }
              }
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.data),
          ListTile(
            leading: Icon(Icons.backup_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.backupNav),
            subtitle: Text(l10n.backupSubtitle),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () async {
              final isPremium = premiumAsync.value ?? false;
              if (isPremium) {
                await Navigator.push(
                  context,
                  fadeSlideRoute<void>(const BackupScreen()),
                );
              } else {
                await ref.read(analyticsServiceProvider).logPremiumFeatureAccessed(PremiumFeature.export.name);
                if (context.mounted) {
                  await Navigator.push(
                    context,
                    fadeSlideRoute<void>(const PaywallScreen()),
                  );
                }
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.category_outlined, color: theme.colorScheme.primary),
            title: const Text('Categorias'),
            subtitle: const Text('Gerenciar categorias de itens'),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const ManageCategoriesScreen()),
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.about),
          ListTile(
            leading: Icon(Icons.info_outline, color: theme.colorScheme.onSurfaceVariant),
            title: Text(l10n.version),
            subtitle: Text('${l10n.version} 1.0.15+15'),
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined, color: theme.colorScheme.primary),
            title: Text(l10n.feedbackSettingsTitle),
            subtitle: Text(l10n.feedbackSettingsSubtitle),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (_) => const FeedbackScreen()),
              );
            },
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
      ),
    );
  }

  void _showCustomizeAiDialog(BuildContext context, WidgetRef ref, AiConfig currentConfig, bool isPt) {
    final nameController = TextEditingController(text: currentConfig.name);
    String selectedIconKey = currentConfig.iconKey;

    showDialog<void>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final theme = Theme.of(context);
            final icons = [
              (key: 'smart_toy', icon: Icons.smart_toy),
              (key: 'psychology', icon: Icons.psychology),
              (key: 'support_agent', icon: Icons.support_agent),
              (key: 'face', icon: Icons.face),
            ];

            return AlertDialog(
              title: Text(isPt ? 'Personalizar Assistente' : 'Customize Assistant'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: isPt ? 'Nome do Assistente' : 'Assistant Name',
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 20,
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(
                      isPt ? 'Escolha um Ícone:' : 'Choose an Icon:',
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(height: Spacing.xs),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: icons.map((item) {
                        final isSelected = selectedIconKey == item.key;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIconKey = item.key;
                            });
                          },
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSelected
                                    ? theme.colorScheme.primary
                                    : Colors.transparent,
                                width: 2,
                              ),
                              color: isSelected
                                  ? theme.colorScheme.primaryContainer
                                  : Colors.transparent,
                            ),
                            child: Icon(
                              item.icon,
                              color: isSelected
                                  ? theme.colorScheme.onPrimaryContainer
                                  : theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(isPt ? 'Cancelar' : 'Cancel'),
                ),
                FilledButton(
                  onPressed: () async {
                    final newName = nameController.text.trim();
                    if (newName.isNotEmpty) {
                      try {
                        await ref.read(aiConfigStateProvider.notifier).updateConfig(
                          name: newName,
                          iconKey: selectedIconKey,
                        );
                        if (context.mounted) {
                          Navigator.pop(context);
                        }
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())),
                          );
                        }
                      }
                    }
                  },
                  child: Text(isPt ? 'Salvar' : 'Save'),
                ),
              ],
            );
          },
        );
      },
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
