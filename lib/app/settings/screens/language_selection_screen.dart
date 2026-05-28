import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/app/settings/utils/locale_names.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LanguageSelectionScreen extends ConsumerStatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  ConsumerState<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends ConsumerState<LanguageSelectionScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final localeAsync = ref.watch(localeSettingProvider);

    // Build the language list options
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

    // Sort the list alphabetically by localized display name (except system default)
    final systemDefault = options.first;
    final sortedLanguages = options.skip(1).toList()
      ..sort((a, b) => a.displayName.compareTo(b.displayName));
    final allOptions = [systemDefault, ...sortedLanguages];

    // Filter languages based on search query
    final query = _searchQuery.toLowerCase().trim();
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

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.chooseLanguage),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _searchQuery = '';
                            });
                          },
                        )
                      : null,
                  hintText: l10n.searchLanguage,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
                ),
                onChanged: (val) {
                  setState(() {
                    _searchQuery = val;
                  });
                },
              ),
            ),
            Expanded(
              child: filtered.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(Spacing.xl),
                        child: Text(
                          l10n.noMessagesFound, // Standard fallback for "no results found" in ARB
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        final opt = filtered[index];
                        final isSelected = localeAsync.value == opt.code;

                        // Display native name as subtitle if it's different from the local name
                        final showSubtitle = opt.code != null &&
                            opt.nativeName.isNotEmpty &&
                            opt.nativeName.toLowerCase() != opt.displayName.toLowerCase();

                        return ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? theme.colorScheme.primaryContainer
                                  : theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: opt.code == null
                                  ? Icon(
                                      Icons.settings_outlined,
                                      color: isSelected
                                          ? theme.colorScheme.onPrimaryContainer
                                          : theme.colorScheme.onSurfaceVariant,
                                      size: 20,
                                    )
                                  : Text(
                                      opt.code!.split('_').first.toUpperCase(),
                                      style: theme.textTheme.labelMedium?.copyWith(
                                        color: isSelected
                                            ? theme.colorScheme.onPrimaryContainer
                                            : theme.colorScheme.onSurfaceVariant,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                          title: Text(
                            opt.displayName,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                          subtitle: showSubtitle
                              ? Text(
                                  opt.nativeName,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                )
                              : null,
                          trailing: isSelected
                              ? Icon(
                                  Icons.check,
                                  color: theme.colorScheme.primary,
                                )
                              : null,
                          onTap: () async {
                            await ref.read(localeSettingProvider.notifier).setLocale(opt.code);
                            if (context.mounted) {
                              Navigator.pop(context);
                            }
                          },
                        ).animate().fadeIn(
                          duration: 200.ms,
                          delay: ((index % 15) * 15).ms,
                        ).slideX(
                          begin: 0.05,
                          end: 0,
                          duration: 200.ms,
                        );
                      },
                    ),
            ),
          ],
        ),
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
