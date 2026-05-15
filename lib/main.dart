import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/current_list_provider.dart';
import 'providers/shopping_lists_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),
      home: const ListLoader(),
    );
  }
}

class ListLoader extends ConsumerWidget {
  const ListLoader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentListIdAsync = ref.watch(currentListIdProvider);
    final listsAsync = ref.watch(shoppingListsProvider);

    return currentListIdAsync.when(
      data: (listId) {
        if (listId == null) {
          // Check if there are any lists
          return listsAsync.value == null || listsAsync.value!.isEmpty
              ? const NoListsScreen()
              : const NoListsScreen();
        }
        return HomeScreen(listId: listId);
      },
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('Erro: $e'))),
    );
  }
}

class NoListsScreen extends ConsumerWidget {
  const NoListsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.list_alt, size: 80, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Nenhuma lista encontrada'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                final name = await showDialog<String>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Criar Lista'),
                    content: TextField(
                      decoration: const InputDecoration(labelText: 'Nome da lista'),
                      autofocus: true,
                    ),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context, 'Minha Lista'),
                        child: const Text('Criar'),
                      ),
                    ],
                  ),
                );
                if (name != null && name.isNotEmpty) {
                  await ref.read(shoppingListsProvider.notifier).createList(name);
                }
              },
              child: const Text('Criar Primeira Lista'),
            ),
          ],
        ),
      ),
    );
  }
}
