# Lista Plus — `br.com.curujatech.listaplus` (pt-BR, Android)

## Architecture

- **State**: Riverpod w/ codegen (`@riverpod` → `*.g.dart`). After any edit to a `@riverpod` class, run:
  `dart run build_runner build --delete-conflicting-outputs`
- **Backend**: Firebase Firestore via `FirestoreService implements StorageBackend`. Anonymous auth in `main.dart`.
  Paths: `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}` (filtered by `shoppingListId`).
  User data (`themeMode`, `isPremium`, `currentListId`) in `users/{uid}` doc. `sharedLists/{code}` for share-by-code.
- **Monetization**: RevenueCat (`purchases_flutter` + `purchases_ui_flutter`). UID linked via `Purchases.logIn(uid)`.
  Entitlement: `lista_plus_pro`. Offering: `default_play` (3 packages: `$rc_monthly`, `$rc_annual`, `$rc_lifetime`).
  Products: `listaplus_monthly:monthly` (R$14.90), `listaplus_yearly:yearly` (R$99.90), `listaplus_lifetime:lifetime` (R$299.90).
- **Premium gating**: `ShoppingListsProvider.createList` checks `premiumProvider` — max 3 lists free, unlimited premium.
  Free: 3 lists. Premium: unlimited lists, custom themes (7/10 premium), monthly budget, backup export, share by code.
- **Design**: Material Design 3, green `colorSchemeSeed`. HomeScreen has `PopupMenuButton` (no drawer).
  `PopupMenuButton` must use `icon: const Icon(Icons.more_vert)` for macOS test compat.
- **Models**: `ShoppingList` (budget field), `ShoppingItem`, `Category` (Frutas/Limpeza/Bebidas/Padaria/Outros),
  `Unit` (un/kg/g/L/mL/pacote). `ShoppingItem.unit` defaults to `Unit.un`.
- **Build env**: NDK 27.0.12077973, Kotlin 2.0.21, AGP 8.7.0, minSdk=24. `JAVA_HOME` must point to JDK 17.
- **Analytics & Crash**: Firebase Analytics via `AnalyticsService`. Crashlytics via `firebase_crashlytics`.
  `main.dart` installs `FlutterError.onError` + `PlatformDispatcher.onError` → Crashlytics. Events: `paywall_viewed`,
  `paywall_purchase_completed`, `paywall_restore_completed`, `paywall_dismissed`, `customer_center_opened`,
  `upgrade_tapped` (com source), `premium_feature_accessed`. Override with `AnalyticsService()` (no Firebase) in tests.
- **Privacy & Terms**: Firebase Hosting: `https://listaplus-6547b.web.app/privacidade.html` e `termos.html`.

## Commands

```sh
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.19/libexec/openjdk.jdk/Contents/Home
flutter analyze --fatal-infos
flutter test --coverage
dart run build_runner build --delete-conflicting-outputs
SONAR_TOKEN=squ_xxx ./scripts/quality-check.sh
python3 scripts/generate_icons.py
```

`quality-check.sh` order: analyze → test/coverage → build web → sonar-scanner → quality gate.

## Testing

- **Provider tests**: `ProviderContainer` + `firestoreServiceProvider.overrideWithValue(FakeStorageBackend())`
  + `revenueCatServiceProvider.overrideWithValue(FakeRevenueCatService())`.
- **Widget tests**: `wrapWithProviders(child, backend:, revenueCat:)` from `test/helpers/test_widgets.dart`.
  - **Both** `test/helpers/test_widgets.dart` and `test/widgets/widgets_test.dart` have their own `wrapWithProviders`.
    When adding a new provider override, update **both** files.
  - Both override `revenueCatServiceProvider` (FakeRevenueCatService) and `analyticsServiceProvider` (AnalyticsService()) by default.
- **FirestoreService tests**: `FakeFirebaseFirestore` + `MockFirebaseAuth` (via `fake_cloud_firestore`, `firebase_auth_mocks`).
- **PaywallScreen tests**: Minimal (app bar + navigation only). `PaywallView` from RevenueCatUI doesn't render in test env.
- **Integration tests** (`integration_test/app_test.dart`) are **BROKEN** — still reference `Icons.menu` / drawer that no longer exists. Skip them.
- **Coverage**: 100% mandatory on source-only (`.g.dart` excluded via `quality-check.sh` awk).
  `// coverage:ignore-start/end` markers cannot have trailing text.
- **Coverage-excluded** (via markers): `main.dart`, `*_provider.dart` (for firestore, revenuecat, analytics services),
  `revenuecat_service_impl.dart`, `analytics_service.dart`, `PaywallScreen`, `AuthScreen`, `AuthService`,
  `FirestoreService` constructor fallbacks.
- **Fakes**: `FakeStorageBackend` (in-memory `StorageBackend`), `FakeRevenueCatService` (togglable `_isPremium`,
  tracks call counts via `presentCustomerCenterCallCount`, `initCallCount`, etc.).

## Lint Gotchas

- `implicit-casts: false`, `implicit-dynamic: false` — explicit types everywhere.
- `always_put_control_body_on_new_line` — `if (x) return y;` fails.
- `prefer_int_literals` false positive with `fold(0.0, ...)` — suppress with `// ignore: prefer_int_literals`.
- `*.g.dart` excluded from analysis, coverage, and SonarQube.
- `find.byIcon(Icons.add)` returns 2 (FAB + tile "+") — use `find.descendant(of: find.byType(ShoppingItemTile),
  matching: find.byIcon(Icons.add))` in tile tests.
- `ShoppingItemTile`: checkbox = selection, not purchase. No `Dismissible`.
- `container.read(premiumProvider.future)` may return stale after entitlement change — `container.invalidate(premiumProvider)` then re-read.
- `ReorderableListView.onReorder`: `newIndex -= 1` when `oldIndex < newIndex`. Provider's `reorderItem` mirrors this.
- `context.mounted` guard necessary after `ref.invalidate` + `Navigator.pop` in PopupMenuButton callbacks.

## Secrets & Config

- **RevenueCat API key** (in `main.dart`): `goog_lUoZUpDVyhVroFRzwgArMnFxIQv`
- **Google Play**: Track `internal` (v1.0.0+2). AAB: `build/app/outputs/bundle/release/app-release.aab`
- **Keystore**: `~/upload-keystore.jks` (alias: `upload`)
- **Service account**: `~/play-console-sa.json`
- **Customer Center**: `RevenueCatUI.presentCustomerCenter()` accessible via "Gerenciar assinatura" in HomeScreen PopupMenuButton
- **SonarQube**: local `http://localhost:9000`, token in `opencode.json`
- **RevenueCat MCP**: remote at `mcp.revenuecat.ai`, configured in `opencode.json`

## Legacy / Dead Code

- `shared_preferences` still in `pubspec.yaml` but only used by `widgets_test.dart` (`SharedPreferences.setMockInitialValues`).
- `StorageService` (old SharedPreferences backend) already removed.
