# Lista Plus — `br.com.curujatech.listaplus` (pt-BR, Android)

## Architecture

- **State**: Riverpod w/ codegen (`@riverpod` → `*.g.dart`). After editing a `@riverpod` class, run:
  `dart run build_runner build --delete-conflicting-outputs`
- **Backend**: Firebase Firestore via `FirestoreService implements StorageBackend`. Anonymous auth in `main.dart`.
  Paths: `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}` (filtered by `shoppingListId`).
  User data (`themeMode`, `isPremium`, `currentListId`) in `users/{uid}` doc. `sharedLists/{code}` for share-by-code.
- **Monetization**: RevenueCat via `purchases_flutter`. UID linked via `Purchases.logIn(uid)` in `main.dart`.
  Entitlement: `lista_plus_pro`, offering: `default_play` with 3 packages:
  `$rc_monthly` R$14.90, `$rc_annual` R$99.90, `$rc_lifetime` R$299.90). AdMob (banner + rewarded).
- **Premium gating**: `premiumProvider` — max 3 lists free, unlimited premium. Premium also unlocks custom themes
  (7/10 premium), monthly budget, backup export, share by code.
- **AI Chat**: Kilo AI Gateway (`api.kilo.ai`) via `dart_openai`. Requires `KILO_API_KEY` passed as
  `--dart-define=KILO_API_KEY=xxx`. Chat sessions persisted in Firestore `chat_messages` subcollection.
- **Agent de Controle Total**: O chat de IA agora é um **agente com tool calling** (function calling).
  Ele pode executar ações diretamente no app via `lib/agent/`:
  - `tool.dart`: Definições de 34+ ferramentas (listas, itens, despensa, orçamento, compartilhar, config, backup)
  - `tool_executor.dart`: Bridge entre AI e providers — executa cada tool contra o Riverpod real
  - `chat_provider.dart`: Loop agente (`_agentLoop`) — chama AI → executa tools → repete até resposta final
  - `AiService.getChatCompletionWithTools()`: Método que aceita `tools` no request e retorna `tool_calls`
  - Ambos `OpenCodeGoService` e `KiloAiService` implementam o suporte a tools
  - DeepSeek-v4-flash (OpenCodeGo) tem suporte nativo a function calling; Kilo AI (kilo-auto/free) pode não suportar
- **RevenueCat**: API key via `--dart-define=REVENUECAT_API_KEY=xxx` (default fallback `goog_lUoZUpDVyhVroFRzwgArMnFxIQv`).
- **Observability**: Sentry + Firebase Crashlytics (dual). `SentryFlutter.init` wraps `appRunner`;
  `FlutterError.onError` + `PlatformDispatcher.onError` send to both. Sentry: `tracesSampleRate: 0.2`,
  `enableLogs: true`, `sendDefaultPii: false`.
- **Analytics**: Firebase Analytics via `AnalyticsService`. Events: `paywall_viewed`, `paywall_purchase_completed`,
  `paywall_restore_completed`, `paywall_dismissed`, `customer_center_opened`, `upgrade_tapped`,
  `premium_feature_accessed`. Override with `AnalyticsService()` (no Firebase) in tests.
- **Design**: Material Design 3, green `colorSchemeSeed`. HomeScreen has `PopupMenuButton` (no drawer).
  `PopupMenuButton` must use `icon: const Icon(Icons.more_vert)` for macOS test compat.
- **Models**: `ShoppingList` (budget field), `ShoppingItem`, `Category` (Frutas/Limpeza/Bebidas/Padaria/Outros),
  `Unit` (un/kg/g/L/mL/pacote). `ShoppingItem.unit` defaults to `Unit.un`.
- **Privacy & Terms**: Firebase Hosting at `https://listaplus-6547b.web.app/privacidade.html` e `termos.html`.

## Commands

```sh
flutter analyze --fatal-infos          # zero-tolerance, must pass clean
flutter test --coverage                 # 100% mandatory on lib/ (source only)
dart run build_runner build --delete-conflicting-outputs   # after @riverpod edits
dart run build_runner watch --delete-conflicting-outputs   # watch mode
SONAR_TOKEN=squ_xxx ./scripts/quality-check.sh  # full pipeline
python3 scripts/generate_icons.py       # generate app icons
python3 create_subscriptions.py         # create RevenueCat subscriptions
python3 update_prices.py               # update subscription prices
python3 upload_aab.py                  # upload to Google Play internal track
```

`quality-check.sh` order: analyze → firestore:validate → test/coverage → build web → sonar-scanner → quality gate.

### Build & Android

```sh
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.19/libexec/openjdk.jdk/Contents/Home
flutter build appbundle --release
# AAB output: build/app/outputs/bundle/release/app-release.aab
```

- NDK 27.0.12077973, Kotlin 2.1.20, AGP 8.7.0, compileSdk=36, minSdk=24.
- `MainActivity.kt` must be at `android/app/src/main/kotlin/br/com/curujatech/listaplus/MainActivity.kt`
  with `package br.com.curujatech.listaplus`.
- Keystore: `~/upload-keystore.jks` (alias: `upload`), signing config in `android/key.properties`.
- Version + build number: `version: x.y.z+b` in `pubspec.yaml`. Both incremented on each release.
- Google Play: Track `internal`, service account at `~/play-console-sa.json`.

### Pre-commit Hook

```sh
bash .githooks/setup.sh   # git config core.hooksPath .githooks
```
Runs `flutter analyze --fatal-infos` before each commit.

## CI (`.github/workflows/`)

- `ci.yml`: 4 jobs — `analyze` (flutter analyze), `test` (flutter test --coverage + awk 100% check), `build-web` (flutter build web), `build-android` (flutter build appbundle --debug). Flutter pinado em `3.29.3`.
- `sonar.yml`: SonarQube scan on push/PR to main. Exports `flutter analyze` issues via `scripts/flutter-analyze-to-sonar.sh`. Versão extraída dinamicamente do `pubspec.yaml`.

## custom_lints Package (`custom_lints/`)

3 custom lint rules (enabled in `analysis_options.yaml`):
- `avoid_raw_firebase_outside_service` — ERROR if `FirebaseFirestore.instance` or `FirebaseAuth.instance` used outside `/services/`
- `prefer_abstract_service_type` — ERROR if `Provider<XxxImpl>` used instead of abstract type
- `prefer_correct_popup_menu_icon` — ERROR if `PopupMenuButton` doesn't use `Icons.more_vert`

Must compile clean: `cd custom_lints && dart analyze lib/` → "No issues found!"

## Testing

- **Provider tests**: `ProviderContainer` + Fakes (`FakeStorageBackend`, `FakeRevenueCatService`).
- **Widget tests**: `wrapWithProviders(child, backend:, revenueCat:)` helper.
  - **Both** `test/helpers/test_widgets.dart` and `test/widgets/widgets_test.dart` have their own `wrapWithProviders`.
    When adding a new provider override, update **both** files.
  - Both override `revenueCatServiceProvider` (FakeRevenueCatService) and `analyticsServiceProvider` (AnalyticsService()) by default.
- **FirestoreService tests**: `FakeFirebaseFirestore` + `MockFirebaseAuth` (via `fake_cloud_firestore`, `firebase_auth_mocks`).
- **PaywallScreen tests**: Minimal (app bar + navigation only). `PaywallView` from RevenueCatUI doesn't render in test env.
- **Integration tests** (`integration_test/app_test.dart`) are **BROKEN** — skip them.
- **Coverage**: 100% mandatory on source-only (`.g.dart` excluded). `// coverage:ignore-start/end` markers cannot have trailing text.
- **Coverage-excluded** (via markers): `main.dart`, `*_provider.dart` (for firestore, revenuecat, analytics services),
  `revenuecat_service_impl.dart`, `analytics_service.dart`, `PaywallScreen`, `AuthScreen`, `AuthService`,
  `FirestoreService` constructor fallbacks.

## Lint Gotchas

- `strict-casts`, `strict-inference`, `strict-raw-types` — explicit types everywhere.
- `always_put_control_body_on_new_line` — `if (x) return y;` fails.
- `prefer_int_literals` false positive with `fold(0.0, ...)` — suppress with `// ignore: prefer_int_literals`.
- `*.g.dart` excluded from analysis, coverage, and SonarQube.
- `find.byIcon(Icons.add)` returns 2 (FAB + tile "+") — use `find.descendant(of: find.byType(ShoppingItemTile), matching: find.byIcon(Icons.add))` in tile tests.
- `ShoppingItemTile`: checkbox = selection (in selection mode) or purchase toggle (normal mode). Has `Dismissible` for swipe-to-delete and swipe-to-toggle.
- `container.read(premiumProvider.future)` may return stale after entitlement change — `container.invalidate(premiumProvider)` then re-read.
- `ReorderableListView.onReorder`: `newIndex -= 1` when `oldIndex < newIndex`. Provider's `reorderItem` mirrors this.
- `context.mounted` guard necessary after `ref.invalidate` + `Navigator.pop` in PopupMenuButton callbacks.

## Legacy / Dead Code

- `shared_preferences` still in `pubspec.yaml` but only used by `widgets_test.dart` (`SharedPreferences.setMockInitialValues`).
- `StorageService` (old SharedPreferences backend) already removed.
