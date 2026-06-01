import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/domain/entities/premium_feature.dart';
import 'package:shopping_list/app/settings/utils/locale_names.dart';
import 'package:shopping_list/core/utils/currency_data.dart';
import 'package:shopping_list/theme/tokens.dart';

/// Base class for personalization bottom sheets to maintain consistency.
abstract class BasePersonalizationSheet extends ConsumerStatefulWidget {
  const BasePersonalizationSheet({super.key});
}

abstract class BasePersonalizationSheetState<T extends BasePersonalizationSheet>
    extends ConsumerState<T> {
  final TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget buildHeader(String title) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Spacing.lg, Spacing.md, Spacing.md, Spacing.md),
      child: Row(
        children: [
          Text(
            title,
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget buildSearchField(String hint) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg, vertical: Spacing.sm),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                    setState(() => searchQuery = '');
                  },
                )
              : null,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RadiusTokens.md),
          ),
          filled: true,
          fillColor: theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
        ),
        onChanged: (val) => setState(() => searchQuery = val),
      ),
    );
  }
}

class LanguageSelectionSheet extends BasePersonalizationSheet {
  const LanguageSelectionSheet({super.key});

  @override
  ConsumerState<LanguageSelectionSheet> createState() => _LanguageSelectionSheetState();
}

class _LanguageSelectionSheetState extends BasePersonalizationSheetState<LanguageSelectionSheet> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final localeAsync = ref.watch(localeSettingProvider);

    final List<_LanguageOption> options = [
      _LanguageOption(
        code: null,
        displayName: l10n.languageSystem,
        nativeName: '',
        englishName: 'System default',
      ),
      ...AppLocalizations.supportedLocales.map((locale) {
        final code = locale.toString();
        final displayName = getLocaleDisplayName(code, l10n);
        final nativeName = getNativeLanguageName(locale.languageCode);
        final englishName = getEnglishLanguageName(locale.languageCode);
        return _LanguageOption(
          code: code,
          displayName: displayName,
          nativeName: nativeName,
          englishName: englishName,
        );
      }),
    ];

    final systemDefault = options.first;
    final sortedLanguages = options.skip(1).toList()
      ..sort((a, b) => a.displayName.compareTo(b.displayName));
    final allOptions = [systemDefault, ...sortedLanguages];

    final query = searchQuery.toLowerCase().trim();
    final filtered = allOptions.where((opt) {
      if (query.isEmpty) {
        return true;
      }
      if (opt.code == null) {
        return opt.displayName.toLowerCase().contains(query);
      }
      return opt.displayName.toLowerCase().contains(query) ||
          opt.nativeName.toLowerCase().contains(query) ||
          opt.englishName.toLowerCase().contains(query) ||
          opt.code!.toLowerCase().contains(query);
    }).toList();

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            buildHeader(l10n.chooseLanguage),
            buildSearchField(l10n.searchLanguage),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final opt = filtered[index];
                  final isSelected = localeAsync.value == opt.code;
                  final showSubtitle = opt.code != null &&
                      opt.nativeName.isNotEmpty &&
                      opt.nativeName.toLowerCase() != opt.displayName.toLowerCase();

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
                    leading: CircleAvatar(
                      backgroundColor: isSelected
                          ? theme.colorScheme.primaryContainer
                          : theme.colorScheme.surfaceContainerHighest,
                      child: opt.code == null
                          ? Icon(Icons.settings_outlined, color: theme.colorScheme.onSurfaceVariant)
                          : Text(
                              opt.code!.split('_').first.toUpperCase(),
                              style: TextStyle(
                                color: isSelected
                                    ? theme.colorScheme.onPrimaryContainer
                                    : theme.colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                    ),
                    title: Text(
                      opt.displayName,
                      style: TextStyle(fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
                    ),
                    subtitle: showSubtitle ? Text(opt.nativeName) : null,
                    trailing: isSelected ? Icon(Icons.check, color: theme.colorScheme.primary) : null,
                    onTap: () async {
                      await ref.read(localeSettingProvider.notifier).setLocale(opt.code);
                      if (context.mounted) {
                        Navigator.pop(context);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class CurrencySelectionSheet extends BasePersonalizationSheet {
  const CurrencySelectionSheet({super.key});

  @override
  ConsumerState<CurrencySelectionSheet> createState() => _CurrencySelectionSheetState();
}

class _CurrencySelectionSheetState extends BasePersonalizationSheetState<CurrencySelectionSheet> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final currencyAsync = ref.watch(currencySettingProvider);

    return currencyAsync.when(
      data: (currentCode) {
        final query = searchQuery.toLowerCase().trim();
        final filtered = query.isEmpty
            ? allCurrencies
            : allCurrencies.where((c) =>
                c.code.toLowerCase().contains(query) ||
                c.name.toLowerCase().contains(query)).toList();

        return DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          expand: false,
          builder: (context, scrollController) {
            return Column(
              children: [
                buildHeader(l10n.chooseCurrency),
                buildSearchField(l10n.searchCurrency),
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final currency = filtered[index];
                      final isSelected = currentCode == currency.code;
                      String symbol;
                      try {
                        symbol = NumberFormat.simpleCurrency(name: currency.code).format(1).replaceAll(RegExp(r'[0-9,.\s\u00a0]'), '').trim();
                      } on Exception {
                        symbol = currency.code;
                      }

                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
                        leading: CircleAvatar(
                          backgroundColor: isSelected
                              ? theme.colorScheme.primaryContainer
                              : theme.colorScheme.surfaceContainerHighest,
                          child: Text(
                            currency.code.substring(0, 2),
                            style: TextStyle(
                              color: isSelected
                                  ? theme.colorScheme.onPrimaryContainer
                                  : theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        title: Text(
                          '${currency.code} ($symbol)',
                          style: TextStyle(fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
                        ),
                        subtitle: Text(currency.name),
                        trailing: isSelected ? Icon(Icons.check, color: theme.colorScheme.primary) : null,
                        onTap: () async {
                          await ref.read(currencySettingProvider.notifier).setCurrency(currency.code);
                          if (context.mounted) {
                            Navigator.pop(context);
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (e, _) => Center(child: Text(e.toString())),
    );
  }
}

class ThemeSelectionSheet extends ConsumerWidget {
  const ThemeSelectionSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentColorAsync = ref.watch(themeColorProvider);
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;
    final useDynamicColor = ref.watch(useDynamicColorProvider).value ?? false;

    return Padding(
      padding: const EdgeInsets.all(Spacing.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                l10n.themeColor,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: Spacing.md),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: Spacing.sm,
              mainAxisSpacing: Spacing.sm,
            ),
            itemCount: ThemeOption.options.length,
            itemBuilder: (context, index) {
              final option = ThemeOption.options[index];
              final color = option.color;
              final isSelected = currentColorAsync.value?.toARGB32() == color.toARGB32();

              return InkWell(
                onTap: () {
                  if (option.isPremium && !isPremium) {
                    // In onboarding we might want to just let them pick or show paywall later
                    // but following existing logic:
                    return;
                  }
                  if (useDynamicColor) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.dynamicColorsEnabledWarning)),
                    );
                  }
                  ref.read(themeColorProvider.notifier).setColor(color);
                },
                borderRadius: BorderRadius.circular(RadiusTokens.md),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(RadiusTokens.md),
                        border: isSelected
                            ? Border.all(color: theme.colorScheme.onSurface, width: 2)
                            : null,
                      ),
                      child: Center(
                        child: isSelected
                            ? Icon(Icons.check, size: 20, color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white)
                            : null,
                      ),
                    ),
                    if (option.isPremium && !isPremium)
                      Positioned(
                        top: 2,
                        right: 2,
                        child: Icon(Icons.lock, size: 10, color: color.computeLuminance() > 0.5 ? Colors.black54 : Colors.white70),
                      ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: Spacing.lg),
        ],
      ),
    );
  }
}

class _LanguageOption {
  const _LanguageOption({
    required this.code,
    required this.displayName,
    required this.nativeName,
    required this.englishName,
  });

  final String? code;
  final String displayName;
  final String nativeName;
  final String englishName;
}
