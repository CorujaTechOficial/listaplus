import 'dart:ui' show PlatformDispatcher;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'providers/current_list_provider.dart';
import 'providers/dark_mode_provider.dart';
import 'providers/theme_color_provider.dart';
import 'providers/shopping_lists_provider.dart';
import 'screens/home_screen.dart';
import 'widgets/create_list_dialog.dart';
import 'services/revenuecat_service_impl.dart';
import 'providers/revenuecat_service_provider.dart';

// coverage:ignore-start
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  final userCredential = await FirebaseAuth.instance.signInAnonymously();
  final uid = userCredential.user!.uid;

  final revenueCat = RevenueCatServiceImpl();
  await revenueCat.init('goog_lUoZUpDVyhVroFRzwgArMnFxIQv');

  try {
    await Purchases.logIn(uid);
  } on Exception catch (_) {}

  runApp(
    ProviderScope(
      overrides: [
        revenueCatServiceProvider.overrideWithValue(revenueCat),
      ],
      child: const MyApp(),
    ),
  );
}
// coverage:ignore-end

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkModeAsync = ref.watch(darkModeProvider);
    final themeColorAsync = ref.watch(themeColorProvider);
    final themeMode = darkModeAsync.value ?? ThemeMode.system;
    final colorSeed = Color(themeColorAsync.value ?? Colors.green.toARGB32());

    return MaterialApp(
      title: 'Lista de Compras',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: colorSeed),
      darkTheme: ThemeData(useMaterial3: true, colorSchemeSeed: colorSeed, brightness: Brightness.dark),
      themeMode: themeMode,
      home: const ListLoader(),
    );
  }
}

class ListLoader extends ConsumerWidget {
  const ListLoader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentListIdAsync = ref.watch(currentListIdProvider);

    return currentListIdAsync.when(
      data: (listId) {
        if (listId == null) {
          return const NoListsScreen();
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
                  builder: (_) => const CreateListDialog(),
                );
                if (name != null && name.isNotEmpty) {
                  await ref.read(shoppingListsProvider.notifier).createList(name);
                  ref.invalidate(currentListIdProvider);
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
