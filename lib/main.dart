import 'dart:ui' show PlatformDispatcher;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'theme/app_theme.dart';
import 'theme/tokens.dart';
import 'providers/ad_service_provider.dart';
import 'providers/current_list_provider.dart';
import 'providers/dark_mode_provider.dart';
import 'providers/theme_color_provider.dart';
import 'providers/shopping_lists_provider.dart';
import 'screens/home_screen.dart';
import 'screens/pantry_screen.dart';
import 'widgets/create_list_dialog.dart';
import 'widgets/empty_state.dart';
import 'widgets/init_error_screen.dart';
import 'services/ad_service_impl.dart';
import 'services/revenuecat_service_impl.dart';
import 'providers/revenuecat_service_provider.dart';
import 'providers/update_service_provider.dart';

// coverage:ignore-start
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SentryFlutter.init(
    (options) {
      options.dsn = 'https://9184f2e057e7fbaf76629e15c561594f@o4511401835298816.ingest.us.sentry.io/4511401865904128';
      options.sendDefaultPii = true;
      options.enableLogs = true;
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => _runApp(),
  );
}

Future<void> _runApp() async {
  FlutterError.onError = (details) {
    Sentry.captureException(details.exception, stackTrace: details.stack);
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    Sentry.captureException(error, stackTrace: stack);
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  try {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    final uid = userCredential.user!.uid;

    final adService = AdServiceImpl();
    await adService.initialize();

    final revenueCat = RevenueCatServiceImpl();
    await revenueCat.init('goog_lUoZUpDVyhVroFRzwgArMnFxIQv');

    try {
      await Purchases.logIn(uid);
    } on Exception catch (_) {}

    runApp(
      ProviderScope(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(revenueCat),
          adServiceProvider.overrideWithValue(adService),
        ],
        child: const MyApp(),
      ),
    );
  } on Object catch (e, stack) {
    await Sentry.captureException(e, stackTrace: stack);
    await FirebaseCrashlytics.instance.recordError(e, stack, fatal: false);
    runApp(InitErrorScreen(e));
  }
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
      theme: AppTheme.light(colorSeed),
      darkTheme: AppTheme.dark(colorSeed),
      themeMode: themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MainShell(),
    );
  }
}

class MainShell extends ConsumerStatefulWidget {
  const MainShell({super.key});

  @override
  ConsumerState<MainShell> createState() => _MainShellState();
}

class _MainShellState extends ConsumerState<MainShell> {
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref.read(updateServiceProvider).checkForUpdates();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: IndexedStack(
            index: _currentTab,
            children: const [
              ListLoader(),
              PantryScreen(),
            ],
          ),
        ),
        NavigationBar(
          selectedIndex: _currentTab,
          onDestinationSelected: (index) => setState(() => _currentTab = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.list_alt_outlined),
              selectedIcon: Icon(Icons.list_alt),
              label: 'Listas',
            ),
            NavigationDestination(
              icon: Icon(Icons.inventory_2_outlined),
              selectedIcon: Icon(Icons.inventory_2),
              label: 'Dispensa',
            ),
          ],
        ),
      ],
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
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const EmptyState(
                icon: Icons.list_alt,
                title: 'Nenhuma lista encontrada',
                subtitle: 'Crie sua primeira lista para começar',
              ),
              const SizedBox(height: Spacing.lg),
              FilledButton.tonalIcon(
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
                icon: const Icon(Icons.add),
                label: const Text('Criar Primeira Lista'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
