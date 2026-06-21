import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/widgets/list_switcher_sheet.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/kipi_sheets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppBarListSelector extends ConsumerWidget {
  const AppBarListSelector({super.key, required this.currentListId});

  final String currentListId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final lists = ref.watch(shoppingListsProvider).value ?? [];
    final currentList = lists.where((l) => l.id == currentListId).firstOrNull;

    return InkWell(
      onTap: () {
        KipiSheets.show<void>(
          context: context,
          builder: (_) => ListSwitcherSheet(currentListId: currentListId),
        );
      },
      borderRadius: BorderRadius.circular(RadiusTokens.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.xs,
          vertical: Spacing.xxs,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  currentList?.name ?? l10n.appTitle,
                  key: ValueKey<String>(currentList?.id ?? 'default'),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(width: Spacing.xxs),
            Icon(PhosphorIconsRegular.arrowsVertical, size: 18, color: theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
