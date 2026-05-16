import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/backup_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

class BackupScreen extends ConsumerWidget {
  const BackupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return Scaffold(
        appBar: AppBar(title: const Text('Backup')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock, size: 64, color: Colors.grey),
              const SizedBox(height: 16),
              const Text('Backup e exportação é premium'),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.read(analyticsServiceProvider).logUpgradeTapped('backup');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PaywallScreen()),
                  );
                },
                child: const Text('Fazer upgrade'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Backup')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.upload),
                title: const Text('Exportar dados'),
                subtitle: const Text('Salvar todas as listas como JSON'),
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
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: const Icon(Icons.download),
                title: const Text('Importar dados'),
                subtitle: const Text('Restaurar listas de um JSON'),
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
                          border: OutlineInputBorder(),
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
