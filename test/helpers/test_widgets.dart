import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/providers/ad_service_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'fake_ad_service.dart';
import 'fake_revenuecat_service.dart';
import 'fake_ai_service.dart';

Widget wrapWithProviders(Widget child, {StorageBackend? backend, RevenueCatService? revenueCat}) {
  final overrides = <Override>[
    authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
    revenueCatServiceProvider.overrideWithValue(revenueCat ?? FakeRevenueCatService()),
    analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    adServiceProvider.overrideWithValue(FakeAdService()),
    aiServiceProvider.overrideWithValue(FakeAiService()),
  ];
  if (backend != null) {
    overrides.add(firestoreServiceProvider.overrideWithValue(backend));
  }
  return ProviderScope(
    overrides: overrides,
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

Widget wrapWithApp(Widget child) {
  return MaterialApp(
    locale: const Locale('pt', 'BR'),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: child,
  );
}
