import 'package:flutter/material.dart';
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
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return PremiumGate(
        title: 'Backup',
        description: 'Backup e exportação é premium',
        onUpgrade: () {
          ref.read(analyticsServiceProvider).logUpgradeTapped('backup');
          if (!context.mounted) {
            return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PaywallScreen()),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Backup')),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.upload, color: theme.colorScheme.primary),
                title: const Text('Exportar dados'),
                subtitle: const Text('Salvar todas as listas como JSON'),
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
                        const SnackBar(content: Text('Backup exportado!')),
                      );
                    }
                  } on Exception catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Erro: $e')),
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
                title: const Text('Importar dados'),
                subtitle: const Text('Restaurar listas de um JSON'),
                trailing: Icon(
                  Icons.chevron_right,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                onTap: () async {
                  final controller = TextEditingController();
                  final jsonString = await showDialog<String>(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('Importar JSON'),
                      content: TextField(
                        controller: controller,
                        maxLines: 8,
                        decoration: const InputDecoration(
                          hintText: 'Cole o JSON do backup aqui...',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, controller.text),
                          child: const Text('Importar'),
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
                          SnackBar(content: Text('Erro: $e')),
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
