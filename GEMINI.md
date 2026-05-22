# GEMINI.md - Lista Plus (Shopping List)

This document provides foundational mandates and essential context for the **Lista Plus** (shopping_list) project. It consolidates technical architecture, development conventions, and strict quality requirements.

## Project Overview
- **Name:** Lista Plus
- **Package:** `br.com.curujatech.listaplus` (pt-BR, Android)
- **Purpose:** Modern shopping list application with multi-list support, budget tracking, and cloud sync.
- **Platforms:** Android (Primary), Web, iOS.

## Technical Architecture
- **Framework:** Flutter (Material 3, green `colorSchemeSeed`).
- **State Management:** Riverpod with code generation (`riverpod_generator`).
    - **Mandate:** Run `dart run build_runner build --delete-conflicting-outputs` after any edit to a `@riverpod` class.
- **Backend:** Firebase Firestore via `FirestoreService implements StorageBackend`.
    - **Auth:** Anonymous auth initialized in `main.dart`.
    - **Paths:** `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}` (filtered by `shoppingListId`).
    - **User Data:** `themeMode`, `isPremium`, `currentListId` stored in `users/{uid}`.
- **Monetization:**
    - **RevenueCat:** `purchases_flutter` for subscriptions.
        - Entitlement: `lista_plus_pro`.
        - Packages: `$rc_monthly`, `$rc_annual`, `$rc_lifetime`.
    - **AdMob:** Banner and rewarded ads.
- **AI Assistant (OpenCodeGo / DeepSeek):**
    - **Service:** `OpenCodeGoService` via `package:http`.
    - **Model:** DeepSeek-v4-flash.
    - **Sessions:** Persistent in Firestore (`chat_messages` subcollection).
    - **Context:** Automatic injection of list items into system prompts.
    - **Auth:** Requires `OPENCODE_API_KEY` via `--dart-define` or environment.
- **Observability:**
    - **Sentry:** Error tracking and performance monitoring.
    - **Firebase Crashlytics:** Fatal crash reporting.
    - **Firebase Analytics:** Events: `paywall_viewed`, `paywall_purchase_completed`, `upgrade_tapped`, etc.

## Core Commands

### Development
```bash
# Generate Riverpod and Model files
dart run build_runner build --delete-conflicting-outputs

# Watch mode
dart run build_runner watch --delete-conflicting-outputs
```

### Quality & Testing
```bash
# Strict analysis (zero tolerance)
flutter analyze --fatal-infos

# Test with coverage (100% mandatory for source)
flutter test --coverage

# Quality pipeline
SONAR_TOKEN=squ_xxx ./scripts/quality-check.sh
```

### Build & Assets
```bash
# Generate icons
python3 scripts/generate_icons.py

# Android Build (Requires JDK 17)
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.19/libexec/openjdk.jdk/Contents/Home
flutter build appbundle --release
```

## Development Conventions

### Coding Style & Lints
- **Strict Typing:** `implicit-casts: false` and `implicit-dynamic: false` are enforced. Use explicit types.
- **Control Bodies:** Always put control bodies on a new line (e.g., `if (x) { \n return y; \n }`).
- **Const Constructors:** Use `const` wherever possible.
- **Single Quotes:** Prefer single quotes for strings.
- **Lint Gotcha:** `prefer_int_literals` false positive with `fold(0.0, ...)`. Suppress: `// ignore: prefer_int_literals`.

### UI & Widgets
- **macOS Test Compat:** `PopupMenuButton` **must** use `icon: const Icon(Icons.more_vert)` for tests to pass on macOS.
- **ShoppingItemTile:** Checkbox = selection, not purchase. No `Dismissible` widget.
- **Navigation:** Use `context.mounted` guards after async ops before using `context` or `Navigator`.
- **ReorderableListView:** Follow `newIndex -= 1` pattern when `oldIndex < newIndex` in `onReorder`.

### Testing Strategy
- **100% Coverage:** Mandatory for all files in `lib/` (except `.g.dart`).
    - **Markers:** `// coverage:ignore-start/end` must not have trailing text.
- **Widget Tests:** Use `wrapWithProviders` helper.
    - **Mandate:** When adding a provider override, update **both** `test/helpers/test_widgets.dart` and `test/widgets/widgets_test.dart`.
- **Fakes:** Use `FakeStorageBackend` and `FakeRevenueCatService` for isolation.
- **Integration Tests:** `integration_test/app_test.dart` is **BROKEN**; skip it.

### Data & State
- **Stale State:** `container.read(premiumProvider.future)` may be stale after entitlement changes. Invalidate the provider before re-reading.
- **Sharing:** `sharedLists/{code}` maps sharing codes to owner list IDs.
