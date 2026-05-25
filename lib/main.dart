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
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
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
    FlutterError.dumpErrorToConsole(details);
    Sentry.captureException(details.exception, stackTrace: details.stack);
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
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
    final userCredential = await _signInWithRetry();
    final uid = userCredential.user!.uid;

    final revenueCat = RevenueCatServiceImpl();
    await revenueCat.init(
      const String.fromEnvironment('REVENUECAT_API_KEY', defaultValue: 'goog_lUoZUpDVyhVroFRzwgArMnFxIQv'),
    );

    try {
      await Purchases.logIn(uid);
    } on Exception catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
      await FirebaseCrashlytics.instance.recordError(e, s, reason: 'RevenueCat LogIn Error');
    }

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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingAsync = ref.watch(onboardingProvider);
    final darkModeAsync = ref.watch(darkModeProvider);
    final themeColorAsync = ref.watch(themeColorProvider);
    final localeAsync = ref.watch(localeSettingProvider);
    final themeMode = darkModeAsync.value ?? ThemeMode.system;
    final colorSeed = themeColorAsync.value ?? const Color(0xFF4CAF50);

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
      error: (error, stack) {
        Sentry.captureException(error, stackTrace: stack);
        FirebaseCrashlytics.instance.recordError(error, stack, reason: 'MyApp.onboarding error');
        return _buildMainShell(
          themeMode: themeMode,
          colorSeed: colorSeed,
          localeAsync: localeAsync,
        );
      },
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
      final savedLocale = localeAsync.value;
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
          AiHomeScreen(),
          RecipesScreen(),
          MealPlannerScreen(),
          PantryScreen(),
          ListLoader(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTab,
        onDestinationSelected: (index) => setState(() => _currentTab = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'IA',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu_outlined),
            selectedIcon: Icon(Icons.restaurant_menu),
            label: 'Receitas',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Cardápio',
          ),
          NavigationDestination(
            icon: Icon(Icons.inventory_2_outlined),
            selectedIcon: Icon(Icons.inventory_2),
            label: 'Dispensa',
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            selectedIcon: Icon(Icons.list_alt),
            label: 'Listas',
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
      error: (e, stack) {
        debugPrint('[ListLoader] Error loading current list: $e');
        Sentry.captureException(e, stackTrace: stack);
        FirebaseCrashlytics.instance.recordError(e, stack, reason: 'ListLoader error');
        return Scaffold(
          body: Center(
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
                icon: Icons.list_alt,
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
