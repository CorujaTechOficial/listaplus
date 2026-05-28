import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/core/widgets/premium_gate.dart';
import 'package:shopping_list/app/settings/providers/backup_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

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
        onUpgrade: () {
          ref.read(analyticsServiceProvider).logUpgradeTapped('backup');
          if (!context.mounted) {
            return;
          }
          Navigator.push(
            context,
            fadeSlideRoute<void>(const PaywallScreen()),
          );
        },
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
                leading: Icon(Icons.upload, color: theme.colorScheme.primary),
                title: Text(l10n.exportData),
                subtitle: Text(l10n.exportDataSubtitle),
                trailing: Icon(
                  Icons.chevron_right,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                onTap: () async {
                  final backup = ref.read(backupProvider);
                  try {
                    await backup.shareBackup();
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.backupExported)),
                      );
                    }
                  } on Exception catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.error(e.toString()))),
                      );
                    }
                  }
                },
              ),
            ),
            const SizedBox(height: Spacing.xs),
            Card(
              child: ListTile(
                leading: Icon(Icons.download, color: theme.colorScheme.primary),
                title: Text(l10n.importData),
                subtitle: Text(l10n.importDataSubtitle),
                trailing: Icon(
                  Icons.chevron_right,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                onTap: () async {
                  final jsonString = await showDialog<String>(
                    context: context,
                    builder: (_) => const _ImportBackupDialog(),
                  );
                  if (jsonString != null && jsonString.isNotEmpty && context.mounted) {
                    final backup = ref.read(backupProvider);
                    try {
                      final msg = await backup.importFromJson(jsonString);
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(msg)),
                        );
                      }
                    } on Exception catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.error(e.toString()))),
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
        decoration: InputDecoration(
          hintText: l10n.importJsonHint,
        ),
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
