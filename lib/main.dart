import 'dart:async';
import 'dart:ui' show PlatformDispatcher;
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:quick_actions/quick_actions.dart';
import 'theme/app_theme.dart';
import 'theme/tokens.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'screens/home_screen.dart';
import 'package:shopping_list/app/pantry/screens/pantry_screen.dart';
import 'package:shopping_list/app/recipes/screens/recipes_screen.dart';
import 'package:shopping_list/app/meal_planner/screens/meal_planner_screen.dart';
import 'package:shopping_list/app/ai/screens/ai_home_screen.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_screen.dart';
import 'package:shopping_list/app/lists/widgets/create_list_dialog.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/core/widgets/init_error_screen.dart';
import 'services/revenuecat_service_impl.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';

// coverage:ignore-start
/// Observer to catch and report Riverpod errors to Sentry and Crashlytics.
base class AppProviderObserver extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    final providerName = context.provider.name ?? context.provider.runtimeType.toString();
    debugPrint('Riverpod Error in $providerName: $error');
    Sentry.captureException(error, stackTrace: stackTrace);
    FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'Riverpod Provider Error: $providerName');
  }
}

Future<void> main() async {
  SentryWidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  // Ensure Crashlytics is enabled in release
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

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
          // Don't filter out essential errors, only specific expected noisy ones
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
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await GoogleSignIn.instance.initialize();
  
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );

  // Global Flutter error handler
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
    Sentry.captureException(details.exception, stackTrace: details.stack);
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };

  // Asynchronous error handler (non-Flutter)
  PlatformDispatcher.instance.onError = (error, stack) {
    debugPrint('PlatformDispatcher Error: $error');
    Sentry.captureException(error, stackTrace: stack);
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // Render error handler
  ErrorWidget.builder = (details) {
    try {
      FlutterError.dumpErrorToConsole(details);
      Sentry.captureException(details.exception, stackTrace: details.stack);
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    } on Object catch (_) {
      // Ignore secondary errors during error handling
    }
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Ops! Algo deu errado ao renderizar esta tela.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  };

  try {
    if (FirebaseAuth.instance.currentUser == null) {
      await _signInWithRetry().timeout(const Duration(seconds: 10), onTimeout: () {
        debugPrint('Auth Sync: Timeout ao tentar login anônimo. Seguindo...');
        return FirebaseAuth.instance.signInAnonymously(); // One last try
      });
    }

    final revenueCat = RevenueCatServiceImpl();
    await revenueCat.init(
      const String.fromEnvironment('REVENUECAT_API_KEY', defaultValue: 'goog_lUoZUpDVyhVroFRzwgArMnFxIQv'),
    ).timeout(const Duration(seconds: 5), onTimeout: () {
      debugPrint('Initialization: Timeout ao iniciar RevenueCat. Seguindo...');
    });

    runApp(
      SentryWidget(
        child: ProviderScope(
          observers: [AppProviderObserver()],
          overrides: [
            revenueCatServiceProvider.overrideWithValue(revenueCat),
          ],
          child: const MyApp(),
        ),
      ),
    );
  } on Object catch (e, stack) {
    debugPrint('Initialization Fatal Error: $e');
    await Sentry.captureException(e, stackTrace: stack);
    await FirebaseCrashlytics.instance.recordError(e, stack, fatal: true, reason: 'App Initialization Error');
    runApp(InitErrorScreen(e));
  }
}
// coverage:ignore-end

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    _setupAuthSync();
  }

  void _setupAuthSync() {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user != null) {
        debugPrint('Auth Sync: Usuário logado (${user.uid}). Sincronizando RevenueCat...');
        try {
          await Purchases.logIn(user.uid);
        } on Object catch (e, s) {
          debugPrint('Auth Sync Error: Erro ao sincronizar RevenueCat: $e');
          unawaited(Sentry.captureException(e, stackTrace: s));
        }
      } else {
        debugPrint('Auth Sync: Usuário deslogado. RevenueCat será sincronizado no próximo login.');
      }
    });
  }

  Locale? _getLocale(String? savedLocale) {
    if (savedLocale == null || savedLocale.isEmpty) {
      return null;
    }
    final parts = savedLocale.split('_');
    if (parts.length == 2) {
      return Locale(parts[0], parts[1]);
    }
    return Locale(parts[0]);
  }

  @override
  Widget build(BuildContext context) {
    final onboardingAsync = ref.watch(onboardingProvider);
    final darkModeAsync = ref.watch(darkModeProvider);
    final themeColorAsync = ref.watch(themeColorProvider);
    final localeAsync = ref.watch(localeSettingProvider);
    final useDynamicColorAsync = ref.watch(useDynamicColorProvider);
    final themeMode = darkModeAsync.value ?? ThemeMode.system;
    final colorSeed = themeColorAsync.value ?? const Color(0xFF4CAF50);
    final useDynamicColor = useDynamicColorAsync.value ?? false;

    return onboardingAsync.when(
      data: (hasSeen) {
        if (!hasSeen) {
          return _buildOnboardingShell(
            themeMode: themeMode,
            colorSeed: colorSeed,
            localeAsync: localeAsync,
            useDynamicColor: useDynamicColor,
          );
        }
        return _buildMainShell(
          themeMode: themeMode,
          colorSeed: colorSeed,
          localeAsync: localeAsync,
          useDynamicColor: useDynamicColor,
        );
      },
      loading: () => _buildLoadingShell(
        themeMode: themeMode,
        colorSeed: colorSeed,
        localeAsync: localeAsync,
        useDynamicColor: useDynamicColor,
      ),
      error: (error, stack) {
        Sentry.captureException(error, stackTrace: stack);
        FirebaseCrashlytics.instance.recordError(error, stack, reason: 'MyApp.onboarding error');
        return _buildErrorShell(
          themeMode: themeMode,
          colorSeed: colorSeed,
          localeAsync: localeAsync,
          useDynamicColor: useDynamicColor,
          error: error.toString(),
          onRetry: () => ref.invalidate(onboardingProvider),
        );
      },
    );
  }

  Widget _buildOnboardingShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
    required bool useDynamicColor,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed, useDynamicColor);
        return MaterialApp(
          title: 'KipiList',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          locale: _getLocale(localeAsync.value),
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
    required bool useDynamicColor,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed, useDynamicColor);
        return MaterialApp(
          title: 'KipiList',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          locale: _getLocale(localeAsync.value),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: const MainShell(),
        );
      },
    );
  }

  Widget _buildErrorShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
    required bool useDynamicColor,
    required String error,
    required VoidCallback onRetry,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed, useDynamicColor);
        return MaterialApp(
          title: 'KipiList',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          locale: _getLocale(localeAsync.value),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: Scaffold(
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cloud_off_rounded, size: 64, color: Colors.red),
                      const SizedBox(height: 16),
                      const Text(
                        'Erro de Conexão',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Não foi possível conectar ao servidor. Verifique sua internet.\n($error)',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 24),
                      FilledButton.icon(
                        onPressed: onRetry,
                        icon: const Icon(Icons.refresh_rounded),
                        label: const Text('Tentar Novamente'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoadingShell({
    required ThemeMode themeMode,
    required Color colorSeed,
    required AsyncValue<String?> localeAsync,
    required bool useDynamicColor,
  }) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final colorSchemes = _buildColorSchemes(lightDynamic, darkDynamic, colorSeed, useDynamicColor);
        return MaterialApp(
          title: 'KipiList',
          theme: AppTheme.fromColorScheme(colorSchemes.$1),
          darkTheme: AppTheme.fromColorScheme(colorSchemes.$2),
          themeMode: themeMode,
          locale: _getLocale(localeAsync.value),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _localeResolver(localeAsync),
          home: const Scaffold(body: SafeArea(child: Center(child: CircularProgressIndicator()))),
        );
      },
    );
  }

  (ColorScheme, ColorScheme) _buildColorSchemes(
    ColorScheme? lightDynamic,
    ColorScheme? darkDynamic,
    Color colorSeed,
    bool useDynamicColor,
  ) {
    if (useDynamicColor && lightDynamic != null && darkDynamic != null) {
      return (lightDynamic.harmonized(), darkDynamic.harmonized());
    }
    return (
      ColorScheme.fromSeed(seedColor: colorSeed, brightness: Brightness.light),
      ColorScheme.fromSeed(seedColor: colorSeed, brightness: Brightness.dark),
    );
  }

  LocaleResolutionCallback _localeResolver(AsyncValue<String?> localeAsync) {
    return (locale, supportedLocales) {
      final savedLocale = localeAsync.value;
      if (savedLocale != null && savedLocale.isNotEmpty) {
        final parts = savedLocale.split('_');
        if (parts.length == 2) {
          return Locale(parts[0], parts[1]);
        }
        return Locale(parts[0]);
      }
      if (locale != null) {
        for (final supported in supportedLocales) {
          if (supported.languageCode == locale.languageCode) {
            return supported;
          }
        }
      }
      return const Locale('en');
    };
  }
}

class MainShell extends ConsumerStatefulWidget {
  const MainShell({super.key});

  @override
  ConsumerState<MainShell> createState() => _MainShellState();
}

class _MainShellState extends ConsumerState<MainShell> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentTab = 0;
  final QuickActions _quickActions = const QuickActions();

  @override
  void initState() {
    super.initState();
    _quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(type: 'action_pantry', localizedTitle: 'Ver Dispensa', icon: 'icon_pantry'),
      const ShortcutItem(type: 'action_ai', localizedTitle: 'Conversar com Kipi', icon: 'icon_kipi'),
    ]);
    _quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_pantry') {
        setState(() => _currentTab = 3); // Despensa is now index 3
      } else if (shortcutType == 'action_ai') {
        setState(() => _currentTab = 0);
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
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTab,
        onDestinationSelected: (index) => setState(() => _currentTab = index),
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.smart_toy_outlined),
            selectedIcon: Icon(Icons.smart_toy),
            label: 'IA',
          ),
          NavigationDestination(
            icon: const Icon(Icons.restaurant_menu_outlined),
            selectedIcon: const Icon(Icons.restaurant_menu),
            label: l10n.myRecipes,
          ),
          NavigationDestination(
            icon: const Icon(Icons.list_alt_outlined),
            selectedIcon: const Icon(Icons.list_alt),
            label: l10n.myLists,
          ),
          NavigationDestination(
            icon: const Icon(Icons.inventory_2_outlined),
            selectedIcon: const Icon(Icons.inventory_2),
            label: l10n.pantry,
          ),
          const NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Cardápio',
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentTab,
        children: const [
          AiHomeScreen(),
          RecipesScreen(),
          ListLoader(),
          PantryScreen(),
          MealPlannerScreen(),
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
      loading: () => const Scaffold(body: SafeArea(child: Center(child: CircularProgressIndicator()))),
      error: (e, stack) {
        debugPrint('[ListLoader] Error loading current list: $e');
        Sentry.captureException(e, stackTrace: stack);
        FirebaseCrashlytics.instance.recordError(e, stack, reason: 'ListLoader error');
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(Spacing.xl),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red, size: 48),
                    const SizedBox(height: Spacing.md),
                    Text(
                      'Erro ao carregar listas',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: Spacing.xs),
                    Text(
                      e.toString().replaceFirst('Exception: ', '').replaceFirst('StateError: ', ''),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Spacing.lg),
                    FilledButton.icon(
                      onPressed: () => ref.invalidate(currentListIdProvider),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Tentar Novamente'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
                assetPath: 'assets/images/kipi/kipi_welcome.png',
                title: 'Nenhuma lista encontrada',
                subtitle: 'Crie sua primeira lista para começar',
              ),
              const SizedBox(height: Spacing.lg),
              FilledButton.tonalIcon(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (_) => CreateListDialog(
                      onCreate: (name) async {
                        await ref.read(shoppingListsProvider.notifier).createList(name);
                        ref.invalidate(currentListIdProvider);
                      },
                    ),
                  );
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
