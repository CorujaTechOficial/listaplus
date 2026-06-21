import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';
import 'package:shopping_list/models/premium_feature.dart';
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
import 'package:shopping_list/models/ai_config.dart';
import 'package:shopping_list/app/ai/screens/chat_history_screen.dart';
import 'package:shopping_list/app/settings/screens/feedback_screen.dart';
import 'package:shopping_list/app/settings/screens/language_selection_screen.dart';
import 'package:shopping_list/app/settings/screens/currency_selection_screen.dart';
import 'package:shopping_list/app/settings/utils/locale_names.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/utils/formatters.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  IconData _getAiIcon(String iconKey) {
    switch (iconKey) {
      case 'smart_toy':
        return Icons.smart_toy_outlined;
      case 'psychology':
        return Icons.psychology_outlined;
      case 'support_agent':
        return Icons.support_agent_outlined;
      case 'face':
        return Icons.face_outlined;
      default:
        return Icons.smart_toy_outlined;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final darkModeAsync = ref.watch(darkModeProvider);
    final currentThemeMode = darkModeAsync.value ?? ThemeMode.system;
    final premiumAsync = ref.watch(premiumProvider);
    final localeAsync = ref.watch(localeSettingProvider);
    final currencyAsync = ref.watch(currencySettingProvider);
    final aiConfigAsync = ref.watch(aiConfigStateProvider);
    final aiConfig =
        aiConfigAsync.value ?? const AiConfig(name: 'IA', iconKey: 'smart_toy');
    final useDynamicColorAsync = ref.watch(useDynamicColorProvider);
    final useDynamicColor = useDynamicColorAsync.value ?? false;
    final packageInfoAsync = ref.watch(packageInfoProvider);

    final isPremium = premiumAsync.value ?? false;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsAppBar)),
      body: SafeArea(
        child: ListView(
          children: [
            // SECTION: PROFILE & ACCOUNT
            _SectionHeader(title: l10n.profileSection, isFirst: true),
            premiumAsync.when(
              data:
                  (isPremium) =>
                      isPremium
                          ? ListTile(
                            leading: const Icon(
                              Icons.workspace_premium,
                              color: AppColors.premiumAmber,
                            ),
                            title: Text(l10n.kipiListProActive),
                            subtitle: Text(l10n.manageSubscription),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            onTap: () async {
                              try {
                                await ref
                                    .read(analyticsServiceProvider)
                                    .logCustomerCenterOpened();
                                await ref
                                    .read(revenueCatServiceProvider)
                                    .presentCustomerCenter();
                              } on Exception catch (e) {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(l10n.error(e.toString())),
                                    ),
                                  );
                                }
                              }
                            },
                          )
                          : ListTile(
                            leading: Icon(
                              Icons.workspace_premium_outlined,
                              color: theme.colorScheme.primary,
                            ),
                            title: Text(l10n.becomePremium),
                            subtitle: Text(l10n.unlockPremiumTitle),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            onTap: () async {
                              await ref
                                  .read(analyticsServiceProvider)
                                  .logUpgradeTapped('settings');
                              if (context.mounted) {
                                  await Navigator.push(
                                    context,
                                    fadeSlideRoute<void>(const PaywallScreen()),
                                  );
                              }
                            },
                          ),
              loading:
                  () => Skeletonizer(
                    enabled: true,
                    child: ListTile(
                      leading: const Icon(Icons.workspace_premium),
                      title: Text(l10n.becomePremium),
                      subtitle: Text(l10n.unlockPremiumTitle),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
              error:
                  (e, _) => ListTile(
                    leading: Icon(
                      Icons.error_outline,
                      color: theme.colorScheme.error,
                    ),
                    title: Text(l10n.errorLoadingSubscription),
                    subtitle: Text(e.toString()),
                  ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.myProfile),
              subtitle: Text(l10n.profileSubtitle),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const UserProfileScreen()),
                );
              },
            ),

            // SECTION: APPEARANCE & AI ASSISTANT
            _SectionHeader(title: l10n.appearance),
            ListTile(
              leading: Icon(
                Icons.light_mode_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.themeMode),
              subtitle: Text(
                currentThemeMode == ThemeMode.light
                    ? l10n.light
                    : currentThemeMode == ThemeMode.dark
                        ? l10n.dark
                        : l10n.system,
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () => _showThemeModeDialog(context, ref, currentThemeMode),
            ),
            ListTile(
              leading: Icon(
                Icons.palette_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.themeColor),
              subtitle: Text(
                ThemeOption.fromColorValue(
                  ref.watch(themeColorProvider).value?.toARGB32() ??
                      const Color(0xFF4CAF50).toARGB32(),
                ).localizedName(l10n),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const ThemeSelectionScreen()),
                );
              },
            ),
            SwitchListTile.adaptive(
              secondary: Icon(
                Icons.color_lens_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.dynamicColors),
              subtitle: Text(l10n.dynamicColorsSubtitle),
              value: useDynamicColor,
              onChanged: (value) {
                ref
                    .read(useDynamicColorProvider.notifier)
                    .setUseDynamicColor(value);
              },
            ),
            ListTile(
              leading: Icon(
                _getAiIcon(aiConfig.iconKey),
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.customizeAiAssistant),
              subtitle: Text(aiConfig.name),
              trailing: isPremium
                  ? Icon(
                      Icons.chevron_right,
                      color: theme.colorScheme.onSurfaceVariant,
                    )
                  : Icon(
                      Icons.lock_outline,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
              onTap: () async {
                if (isPremium) {
                  _showCustomizeAiDialog(context, ref, aiConfig);
                } else {
                  await ref
                      .read(analyticsServiceProvider)
                      .logPremiumFeatureAccessed(PremiumFeature.assistant.name);
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
              title: Text(l10n.assistantHistory),
              subtitle: Text(l10n.assistantHistorySubtitle),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const ChatHistoryScreen()),
                );
              },
            ),

            // SECTION: PREFERENCES
            _SectionHeader(title: l10n.preferencesSection),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.settingsDefaultScreen),
              subtitle: Text(
                ref.watch(defaultScreenProvider).asData?.value == 'chat'
                    ? l10n.settingsScreenChat
                    : l10n.settingsScreenList,
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                final currentScreen =
                    ref.read(defaultScreenProvider).asData?.value ?? 'list';
                _showDefaultScreenDialog(context, ref, currentScreen);
              },
            ),
            ListTile(
              leading: Icon(Icons.language, color: theme.colorScheme.primary),
              title: Text(l10n.language),
              subtitle: Text(getLocaleDisplayName(localeAsync.value, l10n)),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const LanguageSelectionScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.currency),
              subtitle: Text(
                resolveCurrencyCode(
                  currencyAsync,
                  Localizations.localeOf(context),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const CurrencySelectionScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.category_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.manageCategories),
              subtitle: Text(l10n.manageCategoriesSubtitle),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const ManageCategoriesScreen()),
                );
              },
            ),

            // SECTION: FINANCE & DATA
            _SectionHeader(title: l10n.finance),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.monthlyBudgetNav),
              subtitle: Text(l10n.budgetSubtitle),
              trailing: Icon(
                isPremium ? Icons.chevron_right : Icons.lock_outline,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () async {
                if (isPremium) {
                  await Navigator.push(
                    context,
                    fadeSlideRoute<void>(const BudgetDashboardScreen()),
                  );
                } else {
                  await ref
                      .read(analyticsServiceProvider)
                      .logPremiumFeatureAccessed(
                        PremiumFeature.monthlyBudget.name,
                      );
                  if (context.mounted) {
                    await Navigator.push(
                      context,
                      fadeSlideRoute<void>(const PaywallScreen()),
                    );
                  }
                }
              },
            ),
            Consumer(
              builder: (context, ref, _) {
                final goalAsync = ref.watch(monthlyBudgetGoalProvider);
                final currencyCode = resolveCurrencyCode(
                  ref.watch(currencySettingProvider),
                  Localizations.localeOf(context),
                );
                final l10n = AppLocalizations.of(context)!;
                final theme = Theme.of(context);
                final goal = goalAsync.value;
                final trailingText = goal != null
                    ? formatCurrency(goal, currencyCode)
                    : l10n.noBudgetDefined;
                return ListTile(
                  leading: Icon(
                    Icons.restaurant_menu_outlined,
                    color: theme.colorScheme.primary,
                  ),
                  title: Text(l10n.mealPlannerBudgetGoalNav),
                  subtitle: Text(l10n.mealPlannerBudgetGoalSubtitle),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        trailingText,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(width: Spacing.xs),
                      Icon(
                        Icons.chevron_right,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                  onTap: () => BudgetGoalSheet.show(context),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.backup_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.backupNav),
              subtitle: Text(l10n.backupSubtitle),
              trailing: Icon(
                isPremium ? Icons.chevron_right : Icons.lock_outline,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () async {
                if (isPremium) {
                  await Navigator.push(
                    context,
                    fadeSlideRoute<void>(const BackupScreen()),
                  );
                } else {
                  await ref
                      .read(analyticsServiceProvider)
                      .logPremiumFeatureAccessed(PremiumFeature.export.name);
                  if (context.mounted) {
                    await Navigator.push(
                      context,
                      fadeSlideRoute<void>(const PaywallScreen()),
                    );
                  }
                }
              },
            ),

            // SECTION: ABOUT
            _SectionHeader(title: l10n.about),
            ListTile(
              leading: Icon(
                Icons.info_outline,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              title: Text(l10n.version),
              subtitle: Text(
                packageInfoAsync.when(
                  data: (info) => '${info.version}+${info.buildNumber}',
                  loading: () => l10n.loading,
                  error: (_, _) => l10n.errorLoadingSubscription,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.feedback_outlined,
                color: theme.colorScheme.primary,
              ),
              title: Text(l10n.feedbackSettingsTitle),
              subtitle: Text(l10n.feedbackSettingsSubtitle),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => const FeedbackScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip_outlined,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              title: Text(l10n.privacy),
              trailing: Icon(
                Icons.open_in_new,
                color: theme.colorScheme.onSurfaceVariant,
                size: 18,
              ),
              onTap: () {
                launchUrl(
                  Uri.parse('https://kipilist-6547b.web.app/privacidade.html'),
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.description_outlined,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              title: Text(l10n.termsOfUse),
              trailing: Icon(
                Icons.open_in_new,
                color: theme.colorScheme.onSurfaceVariant,
                size: 18,
              ),
              onTap: () {
                launchUrl(
                  Uri.parse('https://kipilist-6547b.web.app/termos.html'),
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomizeAiDialog(
    BuildContext context,
    WidgetRef ref,
    AiConfig currentConfig,
  ) {
    final nameController = TextEditingController(text: currentConfig.name);
    String selectedIconKey = currentConfig.iconKey;
    bool isLoading = false;
    String? errorText;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final l10n = AppLocalizations.of(context)!;
            final theme = Theme.of(context);
            final icons = [
              (key: 'smart_toy', icon: Icons.smart_toy_outlined),
              (key: 'psychology', icon: Icons.psychology_outlined),
              (key: 'support_agent', icon: Icons.support_agent_outlined),
              (key: 'face', icon: Icons.face_outlined),
            ];

            return AlertDialog(
              title: Text(l10n.customizeAssistant),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: nameController,
                      enabled: !isLoading,
                      decoration: InputDecoration(
                        labelText: l10n.assistantName,
                        errorText: errorText,
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 20,
                      onChanged: (val) {
                        if (errorText != null && val.trim().isNotEmpty) {
                          setState(() {
                            errorText = null;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(l10n.chooseIcon, style: theme.textTheme.titleSmall),
                    const SizedBox(height: Spacing.xs),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:
                          icons.map((item) {
                            final isSelected = selectedIconKey == item.key;
                            return InkWell(
                              onTap: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        selectedIconKey = item.key;
                                      });
                                    },
                              borderRadius: BorderRadius.circular(
                                RadiusTokens.full,
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(Spacing.xs),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        isSelected
                                            ? theme.colorScheme.primary
                                            : Colors.transparent,
                                    width: 2,
                                  ),
                                  color:
                                      isSelected
                                          ? theme.colorScheme.primaryContainer
                                          : Colors.transparent,
                                ),
                                child: Icon(
                                  item.icon,
                                  color:
                                      isSelected
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
                  onPressed: isLoading
                      ? null
                      : () {
                          Navigator.pop(context);
                        },
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          final newName = nameController.text.trim();
                          if (newName.isEmpty) {
                            setState(() {
                              errorText = l10n.error('Nome inválido');
                            });
                            return;
                          }
                          setState(() {
                            isLoading = true;
                            errorText = null;
                          });
                          try {
                            await ref
                                .read(aiConfigStateProvider.notifier)
                                .updateConfig(
                                  name: newName,
                                  iconKey: selectedIconKey,
                                );
                            if (context.mounted) {
                              Navigator.pop(context);
                            }
                          } on Exception catch (e) {
                            setState(() {
                              isLoading = false;
                            });
                            if (context.mounted) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(SnackBar(content: Text(e.toString())));
                            }
                          }
                        },
                  child: isLoading
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary,
                            ),
                          ),
                        )
                      : Text(l10n.save),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showThemeModeDialog(
    BuildContext context,
    WidgetRef ref,
    ThemeMode currentMode,
  ) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        final theme = Theme.of(context);
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Text(
                  l10n.chooseThemeMode,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.light_mode_outlined),
                title: Text(l10n.light),
                trailing: currentMode == ThemeMode.light
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  ref.read(darkModeProvider.notifier).setMode(ThemeMode.light);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_brightness_outlined),
                title: Text(l10n.system),
                trailing: currentMode == ThemeMode.system
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  ref.read(darkModeProvider.notifier).setMode(ThemeMode.system);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode_outlined),
                title: Text(l10n.dark),
                trailing: currentMode == ThemeMode.dark
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  ref.read(darkModeProvider.notifier).setMode(ThemeMode.dark);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDefaultScreenDialog(
    BuildContext context,
    WidgetRef ref,
    String currentScreen,
  ) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        final theme = Theme.of(context);
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Text(
                  l10n.settingsDefaultScreen,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.list_alt_outlined),
                title: Text(l10n.settingsScreenList),
                subtitle: Text(l10n.settingsDefaultScreenSubtitle),
                trailing: currentScreen == 'list'
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  ref.read(defaultScreenProvider.notifier).setScreen('list');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat_outlined),
                title: Text(l10n.settingsScreenChat),
                subtitle: Text(l10n.settingsDefaultScreenSubtitle),
                trailing: currentScreen == 'chat'
                    ? Icon(Icons.check, color: theme.colorScheme.primary)
                    : null,
                onTap: () {
                  ref.read(defaultScreenProvider.notifier).setScreen('chat');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, this.isFirst = false});

  final String title;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Spacing.md,
        isFirst ? Spacing.md : Spacing.lg,
        Spacing.md,
        Spacing.xs,
      ),
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
