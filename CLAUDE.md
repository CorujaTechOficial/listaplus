# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

KipiList — Flutter shopping list app (`br.com.curujatech.listaplus`). Full documentation lives in `AGENTS.md` — read it for architecture, gotchas, and deployment details. This file adds Claude-specific guidance.

## Commands

```sh
# Code generation (after editing @riverpod providers)
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs

# Localization (after editing lib/l10n/*.arb)
flutter gen-l10n

# Analysis
flutter analyze --fatal-infos

# Build
flutter build appbundle --no-tree-shake-icons

# Custom lints check
cd custom_lints && dart analyze lib/
```

## Architecture

- **State**: Riverpod 3.x with codegen (`@riverpod` annotations generate `*.g.dart` files)
- **Features**: `lib/app/{ai,auth,lists,meal_planner,onboarding,pantry,recipes,settings}/`
  - Each feature has `screens/`, `providers/`, `widgets/` subdirectories
- **Models**: `lib/models/` — canonical shared types (14 files)
- **Services**: `lib/services/` — `FirestoreService`, `AuthService`, `RevenueCatService`, `OpenCodeGoService`
- **Core providers**: `lib/core/providers/` — cross-cutting (firebase, auth, monetization, analytics)
- **Backend**: Firebase Firestore. Paths: `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}`, plus `pantry`, `categories`, `recipes`, `meal_plans`
- **AI**: Chat agent with 45+ tools. Tools defined in `lib/app/ai/agent/tools/tool_core.dart`, executed by `lib/app/ai/agent/executors/tool_executor.dart`
- **Monetization**: RevenueCat entitlement `kipilist_pro`. Max 3 lists free. `premiumProvider` is the gate — no Firestore credit check.

## Localization Rules

Every user-visible string **must** use `AppLocalizations.of(context)!` — never hardcode text. Add to `lib/l10n/app_en.arb`, then run `flutter gen-l10n`. 86 locales with genuine translations. See `AGENTS.md` for the full translation workflow and helper scripts.

## Custom Lint Rules

Three custom lints enforce architecture:
- `avoid_raw_firebase_outside_service` — Firebase must stay in `/services/`
- `prefer_abstract_service_type` — providers must use abstract types
- `prefer_correct_popup_menu_icon` — `PopupMenuButton` must use `icon: const Icon(Icons.more_vert)`

## Key Constraints

- Build always needs `--no-tree-shake-icons` (dynamic `IconData` in `category_data.dart`)
- `AuthService.signOut()` re-logs in anonymously — don't also call `signInAnonymously()` from the auth stream listener
- Strict lint config: `strict-casts`, `strict-inference`, `strict-raw-types` — explicit types everywhere
- `always_put_control_body_on_new_line` lint is active
- API keys passed via `--dart-define=REVENUECAT_API_KEY=xxx`
