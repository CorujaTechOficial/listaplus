import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

void showListActionsSheet(
  BuildContext context, {
  required VoidCallback onShare,
  required VoidCallback onBudget,
  required VoidCallback onClearPurchased,
  required VoidCallback onExport,
  required VoidCallback onProfile,
  required VoidCallback onSettings,
  VoidCallback? onCatalog,
  VoidCallback? onShoppingMode,
  VoidCallback? onHelp,
}) {
  showModalBottomSheet<void>(
    context: context,
    useSafeArea: true,
    builder: (ctx) {
      final l10n = AppLocalizations.of(ctx)!;
      final theme = Theme.of(ctx);
      final colorScheme = theme.colorScheme;

      return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: Spacing.sm),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onShoppingMode != null)
                ListTile(
                  leading: Icon(PhosphorIconsRegular.basket, color: colorScheme.primary),
                  title: Text(l10n.shoppingMode),
                  onTap: () {
                    Navigator.pop(ctx);
                    onShoppingMode();
                  },
                ),
              if (onHelp != null)
                ListTile(
                  leading: Icon(PhosphorIconsRegular.question, color: colorScheme.primary),
                  title: Text(l10n.help),
                  onTap: () {
                    Navigator.pop(ctx);
                    onHelp();
                  },
                ),
              if (onCatalog != null)
                ListTile(
                  leading: Icon(PhosphorIconsRegular.squaresFour, color: colorScheme.primary),
                  title: Text(l10n.catalogBrowse),
                  onTap: () {
                    Navigator.pop(ctx);
                    onCatalog();
                  },
                ),
              ListTile(
                leading: Icon(PhosphorIconsRegular.shareNetwork, color: colorScheme.primary),
                title: Text(l10n.share),
                subtitle: Text(l10n.shareAsText),
                onTap: () {
                  Navigator.pop(ctx);
                  onShare();
                },
              ),
              ListTile(
                leading: Icon(PhosphorIconsRegular.wallet, color: colorScheme.secondary),
                title: Text(l10n.listBudgetTitle),
                onTap: () {
                  Navigator.pop(ctx);
                  onBudget();
                },
              ),
              ListTile(
                leading: Icon(PhosphorIconsRegular.broom, color: colorScheme.onSurfaceVariant),
                title: Text(l10n.clearPurchased),
                onTap: () {
                  Navigator.pop(ctx);
                  onClearPurchased();
                },
              ),
              ListTile(
                leading: Icon(PhosphorIconsRegular.fileArrowDown, color: colorScheme.tertiary),
                title: Text(l10n.exportPdfExcel),
                onTap: () {
                  Navigator.pop(ctx);
                  onExport();
                },
              ),
              const Divider(height: 1, indent: Spacing.md, endIndent: Spacing.md),
              ListTile(
                leading: Icon(PhosphorIconsRegular.user, color: colorScheme.onSurfaceVariant),
                title: Text(l10n.profile),
                onTap: () {
                  Navigator.pop(ctx);
                  onProfile();
                },
              ),
              ListTile(
                leading: Icon(PhosphorIconsRegular.gearSix, color: colorScheme.onSurfaceVariant),
                title: Text(l10n.settingsAppBar),
                onTap: () {
                  Navigator.pop(ctx);
                  onSettings();
                },
              ),
            ],
          ),
        ),
        ),
      );
    },
  );
}
