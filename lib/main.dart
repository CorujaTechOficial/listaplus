import 'dart:ui' show PlatformDispatcher;
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:quick_actions/quick_actions.dart';
import 'theme/app_theme.dart';
import 'theme/tokens.dart';
import 'providers/ad_service_provider.dart';
import 'providers/current_list_provider.dart';
import 'providers/dark_mode_provider.dart';
import 'providers/locale_provider.dart';
import 'providers/theme_color_provider.dart';
import 'providers/shopping_lists_provider.dart';
import 'providers/onboarding_provider.dart';
import 'screens/home_screen.dart';
import 'screens/pantry_screen.dart';
import 'screens/ai_home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'widgets/create_list_dialog.dart';
import 'widgets/empty_state.dart';
import 'widgets/init_error_screen.dart';
import 'services/ad_service_impl.dart';
import 'services/logger_service.dart';
import 'services/revenuecat_service_impl.dart';
import 'providers/revenuecat_service_provider.dart';
import 'providers/update_service_provider.dart';

// coverage:ignore-start
Future<void> main() async {
  SentryWidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SentryFlutter.init(
    (options) {
      options.dsn = const String.fromEnvironment('SENTRY_DSN', defaultValue: '');
      options.sendDefaultPii = false;
      options.enableLogs = true;
      options.tracesSampleRate = 0.2;
      options.replay.sessionSampleRate = 0.0;
      options.replay.onErrorSampleRate = 0.2;
      options.beforeSend = (event, hint) {
        final exceptions = event.exceptions;
        if (exceptions != null && exceptions.isNotEmpty) {
          final type = exceptions.first.type;
          if (type == 'PurchasesError') {
            return null;
          }
          if (type == '_Exception') {
            final value = exceptions.first.value;
            if (value != null && value.contains('Failed to load font')) {
              return null;
            }
          }
        }
        return event;
      };
    },
    appRunner: () => _runApp(),
  );
}

Future<UserCredential> _signInWithRetry() async {
  const maxRetries = 5;
  const baseDelay = Duration(milliseconds: 500);
  var attempt = 0;
  while (true) {
    try {
      return await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      attempt++;
      if (attempt >= maxRetries) {
        rethrow;
      }
      const retryableCodes = <String>{
        'unknown',
        'network-request-failed',
        'too-many-requests',
        'internal-error',
      };
      if (retryableCodes.contains(e.code)) {
        final delay = baseDelay * pow(2, attempt - 1).toInt();
        final jitter = Random().nextInt(100);
        await Future<void>.delayed(delay + Duration(milliseconds: jitter));
        continue;
      }
      rethrow;
    } on Exception {
      rethrow;
    }
  }
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
    final userCredential = await _signInWithRetry();
    final uid = userCredential.user!.uid;

    final adService = AdServiceImpl();
    await adService.initialize();

    final revenueCat = RevenueCatServiceImpl();
    await revenueCat.init(
      const String.fromEnvironment('REVENUECAT_API_KEY', defaultValue: 'goog_lUoZUpDVyhVroFRzwgArMnFxIQv'),
    );

    try {
      await Purchases.logIn(uid);
    } on Exception catch (e) {
      await Sentry.captureException(e);
    }

    runApp(
      SentryWidget(
        child: ProviderScope(
          overrides: [
            revenueCatServiceProvider.overrideWithValue(revenueCat),
            adServiceProvider.overrideWithValue(adService),
          ],
          child: const MyApp(),
        ),
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
    final onboardingAsync = ref.watch(onboardingProvider);
    final darkModeAsync = ref.watch(darkModeProvider);
    final themeColorAsync = ref.watch(themeColorProvider);
    final localeAsync = ref.watch(localeSettingProvider);
    final themeMode = darkModeAsync.value ?? ThemeMode.system;
    final colorSeed = themeColorAsync.valueOrNull ?? const Color(0xFF4CAF50);

    return onboardingAsync.when(
      data: (hasSeen) {
        if (!hasSeen) {
          return _buildOnboardingShell(
            themeMode: themeMode,
            colorSeed: colorSeed,
            localeAsync: localeAsync,
          );
        }
        return _buildMainShell(
          themeMode: themeMode,
          colorSeed: colorSeed,
          localeAsync: localeAsync,
        );
      },
      loading: () => _buildLoadingShell(
        themeMode: themeMode,
        colorSeed: colorSeed,
        localeAsync: localeAsync,
      ),
      error: (_, __) => _buildMainShell(
        themeMode: themeMode,
        colorSeed: colorSeed,
        localeAsync: localeAsync,
      ),
    );
  }

  Widget _buildOnboardingShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed);
        return MaterialApp(
          title: 'Lista Plus',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: const OnboardingScreen(),
        );
      },
    );
  }

  Widget _buildMainShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed);
        return MaterialApp(
          title: 'Lista Plus',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: const MainShell(),
        );
      },
    );
  }

  Widget _buildLoadingShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed);
        return MaterialApp(
          title: 'Lista Plus',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: const Scaffold(body: Center(child: CircularProgressIndicator())),
        );
      },
    );
  }

  (ColorScheme, ColorScheme) _buildColorSchemes(
    ColorScheme? lightDynamic,
    ColorScheme? darkDynamic,
    Color colorSeed,
  ) {
    if (lightDynamic != null && darkDynamic != null) {
      return (lightDynamic.harmonized(), darkDynamic.harmonized());
    }
    return (
      ColorScheme.fromSeed(seedColor: colorSeed, brightness: Brightness.light),
      ColorScheme.fromSeed(seedColor: colorSeed, brightness: Brightness.dark),
    );
  }

  LocaleResolutionCallback _localeResolver(AsyncValue<String?> localeAsync) {
    return (locale, supportedLocales) {
      final savedLocale = localeAsync.valueOrNull;
      if (savedLocale != null && savedLocale.isNotEmpty) {
        final parts = savedLocale.split('_');
        if (parts.length == 2) {
          return Locale(parts[0], parts[1]);
        }
        return Locale(parts[0]);
      }
      return null;
    };
  }
}

class MainShell extends ConsumerStatefulWidget {
  const MainShell({super.key});

  @override
  ConsumerState<MainShell> createState() => _MainShellState();
}

class _MainShellState extends ConsumerState<MainShell> {
  int _currentTab = 0;
  final QuickActions _quickActions = const QuickActions();

  @override
  void initState() {
    super.initState();
    _quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(type: 'action_add', localizedTitle: 'Adicionar Item', icon: 'icon_add'),
      const ShortcutItem(type: 'action_pantry', localizedTitle: 'Ver Dispensa', icon: 'icon_pantry'),
    ]);
    _quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_add') {
        // TODO: Open add item dialog on the current list when navigation
        // infrastructure supports it from outside the widget tree.
      } else if (shortcutType == 'action_pantry') {
        setState(() => _currentTab = 1);
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref.read(updateServiceProvider).checkForUpdates();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab,
        children: const [
          ListLoader(),
          PantryScreen(),
          AiHomeScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
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
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'Assistente',
          ),
        ],
      ),
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                    try {
                      await ref.read(shoppingListsProvider.notifier).createList(name);
                      ref.invalidate(currentListIdProvider);
                    } on Exception catch (e, s) {
                      LoggerService.error(e, stackTrace: s, message: 'NoListsScreen: erro ao criar lista');
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Erro ao criar lista: $e')),
                        );
                      }
                    }
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
