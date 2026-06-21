import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/widgets/premium_gate.dart';
import 'package:shopping_list/app/settings/providers/backup_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BackupScreen extends ConsumerWidget {
  const BackupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return PremiumGate(
        title: l10n.backupTitle,
        description: l10n.backupPremiumDescription,
        onUpgrade:
            () => ref.read(analyticsServiceProvider).logUpgradeTapped('backup'),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.backupNav)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(PhosphorIconsRegular.uploadSimple, color: theme.colorScheme.primary),
                  title: Text(l10n.exportData),
                  subtitle: Text(l10n.exportDataSubtitle),
                  trailing: Icon(
                    PhosphorIconsRegular.caretRight,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  onTap: () async {
                    final backup = ref.read(backupProvider);
                    try {
                      await backup.shareBackup();
                      if (context.mounted) {
                        showKipiSnackBar(
                          context,
                          message: l10n.backupExported,
                          type: SnackBarType.success,
                        );
                      }
                    } on Exception catch (e) {
                      if (context.mounted) {
                        showKipiSnackBar(
                          context,
                          message: l10n.error(e.toString()),
                          type: SnackBarType.error,
                        );
                      }
                    }
                  },
                ),
              ),
              const SizedBox(height: Spacing.xs),
              Card(
                child: ListTile(
                  leading: Icon(
                    PhosphorIconsRegular.downloadSimple,
                    color: theme.colorScheme.primary,
                  ),
                  title: Text(l10n.importData),
                  subtitle: Text(l10n.importDataSubtitle),
                  trailing: Icon(
                    PhosphorIconsRegular.caretRight,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  onTap: () async {
                    final jsonString = await showDialog<String>(
                      context: context,
                      builder: (_) => const _ImportBackupDialog(),
                    );
                    if (jsonString != null &&
                        jsonString.isNotEmpty &&
                        context.mounted) {
                      final backup = ref.read(backupProvider);
                      try {
                        final msg = await backup.importFromJson(jsonString);
                        if (context.mounted) {
                          showKipiSnackBar(
                            context,
                            message: msg,
                            type: SnackBarType.success,
                          );
                        }
                      } on Exception catch (e) {
                        if (context.mounted) {
                          showKipiSnackBar(
                            context,
                            message: l10n.error(e.toString()),
                            type: SnackBarType.error,
                          );
                        }
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ImportBackupDialog extends StatefulWidget {
  const _ImportBackupDialog();

  @override
  State<_ImportBackupDialog> createState() => _ImportBackupDialogState();
}

class _ImportBackupDialogState extends State<_ImportBackupDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(l10n.importJsonTitle),
      content: TextField(
        controller: _controller,
        maxLines: 8,
        decoration: InputDecoration(hintText: l10n.importJsonHint),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, _controller.text),
          child: Text(l10n.import),
        ),
      ],
    );
  }
}
