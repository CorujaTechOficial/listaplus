# Lista Plus — `br.com.curujatech.listaplus` (Android)

## Architecture

- **State**: Riverpod 3.x w/ codegen (`@riverpod` → `*.g.dart`). Run after editing:
  `dart run build_runner build --delete-conflicting-outputs`
- **Backend**: Firebase Firestore via `FirestoreService implements StorageBackend`.
  Paths: `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}` (filtered by `shoppingListId`),
  `users/{uid}`, `sharedLists/{code}`, plus `pantry`, `categories`, `recipes`, `meal_plans` collections.
- **Auth**: Anonymous + Google Sign-In via Firebase Auth. RevenueCat UID synced reactively in `_setupAuthSync()` (`main.dart`). `AuthService.signOut()` re-logs-in anonymously — do NOT also call `signInAnonymously()` from the auth stream listener (duplicate race).
- **Monetization**: RevenueCat (`purchases_flutter`). UID linked via `Purchases.logIn(uid)`.
  Entitlement: `lista_plus_pro`. Offering: `default_play` with 3 packages:
  `$rc_monthly` R$4.99, `$rc_annual` R$29.99.
  API key via `--dart-define=REVENUECAT_API_KEY=xxx`.
- **Premium gating**: `premiumProvider` (RevenueCat-only, no Firestore credit check). Max 3 lists free.
- **AI Agent**: Chat with tool calling (45+ tools). `lib/app/ai/agent/tools/tool_core.dart`
  defines tools, `lib/app/ai/agent/executors/tool_executor.dart` runs them against providers.
  `AiService.getChatCompletionWithTools()` returns `tool_calls`. `OpenCodeGoService` implements DeepSeek-v4-flash
  with streaming via SSE, using `AiCancellationToken` that closes the HTTP client (`client.close()`) on cancel.
- **Observability**: Sentry + Firebase Crashlytics (dual).
- **Analytics**: Firebase Analytics via `AnalyticsService()`. Override with `AnalyticsService()` (no Firebase) in tests.
- **Design**: Material Design 3, green `colorSchemeSeed`. `PopupMenuButton` must use `icon: const Icon(Icons.more_vert)`.

## Code Layout

- `lib/app/*/screens/` — feature screens
- `lib/app/*/providers/` — Riverpod providers
- `lib/app/*/widgets/` — feature widgets
- `lib/models/` — 14 model files (canonical source for all shared types)
- `lib/domain/entities/` — 7 real entity files + 6 re-exports
- `lib/services/` — `FirestoreService`, `AuthService`, `RevenueCatService`, `OpenCodeGoService`
- `lib/core/providers/` — cross-cutting providers (firebase, auth, monetization, analytics, preferences)
- `lib/screens/home_screen.dart` — the one remaining original screen, **not** a re-export
- `lib/widgets/` — only `artifact_widgets/` subdirectory remains
- `lib/providers/` — **empty**; all migrated to `lib/app/*/providers/`

## Localization (l10n)

`lib/l10n/` has 123 ARB files covering 86 locales. Template: `app_en.arb` (289 keys).
All locales have **genuine translations** (zero English placeholders). 6 English regional variants exist for spelling conventions.
- Run after editing ARB: `flutter gen-l10n` (generates to `lib/generated/l10n/`)
- Config: `l10n.yaml` (arb-dir, output-dir, etc.)
- `pubspec.yaml` has `generate: true` for Flutter l10n
- `AppLocalizations.of(context)!` used throughout
- Always preserve ICU plural syntax and `{placeholder}` variables in translations

### Translation & Review Scripts

To maintain 100% translation across all 86+ locales:

- **`scripts/translate_missing.py`**: Automated bulk translation.
    - Scans `app_en.arb` for all keys and compares with every other locale.
    - Translates missing keys or keys still in English using Google Translate.
    - **Protection**: Preserves brand names (Lista Plus, Google, etc.) and ICU placeholders (`{count}`).
- **`scripts/review_translations.py`**: Quality assurance tool.
    - **Placeholders**: Fails if a translation modified or removed a variable (CRITICAL).
    - **Branding**: Warns if "Lista Plus" was translated.
    - **UI Length**: Warns if a translation is >2.5x longer than English (prevents layout overflow).
    - **English Fallback**: Detects long strings that weren't translated.
- **`scripts/translate_single.py`**: Safe fallback if the bulk script times out.
    - Usage: `python3 scripts/translate_single.py app_es.arb`

**Workflow**:
1. Add new keys to `app_en.arb`.
2. Run `python3 scripts/translate_missing.py`.
3. Run `python3 scripts/review_translations.py` to verify quality.
4. Run `flutter gen-l10n`.

### 🔴 CRITICAL: Never hardcode display strings

**Every** user-facing string MUST go through `AppLocalizations.of(context)!`.
- NEVER use `const Text('...')` or hardcoded strings in widgets/screens
- NEVER use `'...'` as labels, hints, subtitles, button text, dialog messages, error messages, or snackbars
- All new text MUST be added to `lib/l10n/app_en.arb` first, then `flutter gen-l10n`
- Even "temporary" or "obvious" text counts — this is a 86-locale app
- Exception: brand name "Lista Plus", icons, and purely decorative elements

Rule of thumb: if a user can see it, it goes in the ARB.

### Play Console Auto-Translate

The app ships with translations for **all 86 locales** via ARBs. If you enable Play Console "App translations" (Grow > Translations), it will attempt to auto-translate strings already present in the AAB, causing conflicts. **Recommendation**: disable Play Console auto-translate for app strings (ARB is the sole source). If enabled, expect errors for locales where ARBs already provide translations.

## Commands

```sh
flutter analyze --fatal-infos        # CI uses Flutter 3.29.3 (local ~3.44, ~289 infos)
dart run build_runner build --delete-conflicting-outputs   # after @riverpod edits
dart run build_runner watch --delete-conflicting-outputs   # watch mode
flutter gen-l10n                      # after editing ARB files in lib/l10n/
flutter build appbundle --no-tree-shake-icons   # appbundle (category Icons are non-const in category_data.dart)
```

## Play Store Deployment

- **Service account**: `/Users/absondutragalvao/play-console-sa.json` (or `Downloads/listaplus-6547b-e019add29823.json`)
- **Scripts** in project root:
  - `upload_aab.py` — upload AAB to internal track
  - `update_store_listings.py` — bulk-update store listing translations via API
  - `update_full_descriptions.py` — set full descriptions per locale
  - `create_subscriptions.py` — create Play Store subscription products
  - `update_prices.py` — update Play Store subscription prices
- **Assets**: `store_assets/` (icons, feature graphic), generated by `scripts/generate_icons.py`
- **Version**: `pubspec.yaml` → `version: 1.0.56+56`; `android/local.properties` mirrors

## opencode.json MCPs

- **SonarQube**: local MCP via `node .opencode/mcp/sonarqube/index.js`
- **RevenueCat**: remote MCP at `https://mcp.revenuecat.ai/mcp`
- **Firebase**: local MCP via `npx firebase-tools mcp`

## custom_lints Package (`custom_lints/`)

3 custom lint rules (in `analysis_options.yaml` via `custom_lint`):
- `avoid_raw_firebase_outside_service` — ERROR if FirebaseFirestore/FirebaseAuth.instance outside `/services/`
- `prefer_abstract_service_type` — ERROR if `Provider<XxxImpl>` instead of abstract type
- `prefer_correct_popup_menu_icon` — ERROR if `PopupMenuButton` lacks `Icons.more_vert`

Must compile: `cd custom_lints && dart analyze lib/` → "No issues found!"

## Lint Rules (Strict)

`strict-casts`, `strict-inference`, `strict-raw-types` — explicit types everywhere.
`always_put_control_body_on_new_line` — `if (x) return y;` fails.
`prefer_int_literals` false positive with `fold(0.0, ...)` — suppress with `// ignore: prefer_int_literals`.
`*.g.dart` excluded from analysis, coverage, and SonarQube.

## Known Bugs & Gotchas

- **`--no-tree-shake-icons`**: category icons use dynamic `IconData(iconCodepoint)` in `category_data.dart:33`. Build with `--no-tree-shake-icons` or refactor to constants.
- **Chat provider imports**: `chat_provider.dart` accesses `premiumProvider`, `authProvider`, `userStatsProvider`, `packageInfoProvider`. When these providers move, update the imports in `chat_provider.dart` accordingly.
- **undoMessageActions partial Firestore**: the undo loop reverses step actions in reverse order. If a step fails mid-loop, earlier steps already committed to Firestore — a best-effort reverse of applied undos is attempted, but total atomicity requires Firestore batch operations.
- **QuickActions**: `action_add` shortcut was removed because no navigation infrastructure exists to show dialogs outside the widget tree. Only `action_pantry` (switches to tab 1) is active.
- **switch fall-through**: `executeAction` in `chat_provider.dart` must have explicit `break` between `case 'add_items'` and `case 'organize'` or Dart will consider it fall-through.
- **agent loop cancel**: `_agentLoop` checks `_isCancelled` between rounds and tool executions. Without this, canceled requests could continue phantom rounds.
- **clearHistory + active task**: `clearHistory()` must call `cancelRequest()` first to abort any in-flight AI request before clearing state.
- **streaming buffer**: after the SSE stream loop ends, flush remaining tokens to `chatStreamingTextProvider` before setting it to null to avoid visual jumps.
