import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../widgets/premium_gate.dart';
import '../providers/backup_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

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
            MaterialPageRoute<void>(builder: (_) => const PaywallScreen()),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.backupNav)),
      body: Padding(
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
                  final controller = TextEditingController();
                  final jsonString = await showDialog<String>(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text(l10n.importJsonTitle),
                      content: TextField(
                        controller: controller,
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
                          onPressed: () => Navigator.pop(context, controller.text),
                          child: Text(l10n.import),
                        ),
                      ],
                    ),
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
    );
  }
}
