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

# Analysis — CI uses Flutter 3.29.3; local ~3.44 may show ~289 additional infos
flutter analyze --fatal-infos

# Tests
flutter test
flutter test --coverage   # generates coverage/lcov.info

# Build
flutter build appbundle --no-tree-shake-icons

# Custom lints check
cd custom_lints && dart analyze lib/
```

## Architecture

- **State**: Riverpod 3.x with codegen (`@riverpod` annotations generate `*.g.dart` files)
- **Features**: `lib/app/{ai,auth,lists,meal_planner,onboarding,pantry,recipes,settings}/`
  - Each feature has `screens/`, `providers/`, `widgets/` subdirectories
- **Models**: `lib/models/` — canonical shared types (24 files); `lib/domain/` was deleted and merged here
- **Services**: `lib/services/` — `AuthService`, `RevenueCatService`, `OpenCodeGoService`; `FirestoreService` lives in `lib/services/firestore/` (`FirestoreBase` + 10 domain mixins across 11 files)
- **Core providers**: `lib/core/providers/` — cross-cutting (firebase, auth, monetization, analytics, preferences)
- **Backend**: Firebase Firestore. Paths: `users/{uid}/lists/{listId}`, `users/{uid}/items/{itemId}`, `users/{uid}`, `sharedLists/{code}`, plus `pantry`, `categories`, `recipes`, `meal_plans`
- **AI**: Chat agent with 45+ tools. Tools defined in `lib/app/ai/agent/tools/tool_core.dart`, executed by `lib/app/ai/agent/executors/tool_executor.dart`. `OpenCodeGoService` implements DeepSeek-v4-flash with streaming via SSE; cancel via `AiCancellationToken` calls `client.close()`
- **Monetization**: RevenueCat entitlement `kipilist_pro`. Max 3 lists free. `premiumProvider` is the gate — no Firestore credit check.

## Localization Rules

Every user-visible string **must** use `AppLocalizations.of(context)!` — never hardcode text. Add to `lib/l10n/app_en.arb`, then run `flutter gen-l10n`. 86 locales with genuine translations (123 ARB files, 450+ keys). Exception: brand name "KipiList", icons, purely decorative elements.

**Translation workflow** (after adding keys to `app_en.arb`):
1. `python3 scripts/translate_missing.py` — bulk-translates missing keys, preserves ICU placeholders and brand names
2. `python3 scripts/review_translations.py` — validates placeholders (CRITICAL), branding, and UI length
3. `flutter gen-l10n`

See `AGENTS.md` for full translation details and Play Console auto-translate warning.

### ARB Pre-Build Validation (ALWAYS run before `flutter build`)

`translate_missing.py` tem dois bugs recorrentes que quebram o build:

**Bug 1 — ICU keyword `other` traduzido:** O script traduz `other` para o idioma local (`outro`, `andre`, `другое`, `อื่นๆ`, `annan`…). Chaves afetadas: `aiRemainingFreeToday`, `paywallTrialMonths`.

**Bug 2 — JSON corrompido:** `}` prematuro fecha o objeto JSON no meio do arquivo.

**Script de correção rápida:**
```python
import json, glob
l10n = 'lib/l10n'
en = json.loads(open(f'{l10n}/app_en.arb').read())
for path in glob.glob(f'{l10n}/app_*.arb'):
    try:
        data = json.loads(open(path).read())
    except Exception:
        print(f"JSON BROKEN: {path}"); continue
    changed = False
    for key in ['aiRemainingFreeToday', 'paywallTrialMonths']:
        if key in data:
            v = data[key]
            if ('plural' in v and 'other{' not in v) or '__' in v:
                data[key] = en[key]; changed = True
    if changed:
        open(path, 'w').write(json.dumps(data, ensure_ascii=False, indent=2))
```

Depois rodar `flutter gen-l10n` e confirmar que não há `Syntax Error` antes de buildar.

## Custom Lint Rules

Three custom lints enforce architecture:
- `avoid_raw_firebase_outside_service` — Firebase must stay in `/services/`
- `prefer_abstract_service_type` — providers must use abstract types
- `prefer_correct_popup_menu_icon` — `PopupMenuButton` must use `icon: const Icon(Icons.more_vert)`

`*.g.dart` files are excluded from analysis, coverage, and SonarQube.


## Key Constraints

- Build always needs `--no-tree-shake-icons` (dynamic `IconData` in `category_data.dart`)
- `AuthService.signOut()` re-logs in anonymously — don't also call `signInAnonymously()` from the auth stream listener
- Strict lint config: `strict-casts`, `strict-inference`, `strict-raw-types` — explicit types everywhere
- `always_put_control_body_on_new_line` lint is active — `if (x) return y;` fails
- `prefer_int_literals` has false positive with `fold(0.0, ...)` — suppress with `// ignore: prefer_int_literals`
- API keys passed via `--dart-define=REVENUECAT_API_KEY=xxx`

## Play Store Deploy (Internal Testing)

```sh
# 1. Build the AAB (API key in .env)
flutter build appbundle --no-tree-shake-icons --dart-define=REVENUECAT_API_KEY=goog_lUoZUpDVyhVroFRzwgArMnFxIQv

# 2. Upload to internal track
python3 upload_aab.py
```

- **Service account key**: `~/play-console-sa.json` (backup: `~/Downloads/listaplus-6547b-e019add29823.json`)
- **Script**: `upload_aab.py` in project root — creates edit, uploads AAB, assigns to `internal` track, commits
- **Package**: `br.com.curujatech.listaplus`
- **AAB output**: `build/app/outputs/bundle/release/app-release.aab`
- **API key**: `REVENUECAT_API_KEY` in `.env` file at project root

### ARB Gotchas (learned the hard way)
- ICU plural keywords (`zero`, `one`, `two`, `few`, `many`, `other`) must **never** be translated — many locales had local-language "other" words which break `flutter gen-l10n`
- Placeholder names in translations must match the template exactly — some locales had `{name}` where `{item}` was expected in `replaceItem`
- Run `flutter gen-l10n` before building to catch ARB errors early

## Known Bugs & Gotchas

- **Chat provider imports**: when `premiumProvider`, `authProvider`, `userStatsProvider`, or `packageInfoProvider` move, update imports in `chat_provider.dart` accordingly
- **`undoMessageActions` partial Firestore**: undo loop reverses steps in reverse order — if a step fails mid-loop, earlier steps are already committed; best-effort reversal only, full atomicity requires Firestore batch operations
- **QuickActions**: `action_add` shortcut removed — no infrastructure to show dialogs outside the widget tree; only `action_pantry` (switches to tab 1) is active
- **`executeAction` switch fall-through**: must have explicit `break` between `case 'add_items'` and `case 'organize'` in `chat_provider.dart`
- **Agent loop cancel**: `_agentLoop` checks `_isCancelled` between rounds and tool executions — without this, canceled requests continue phantom rounds
- **`clearHistory` + active task**: `clearHistory()` must call `cancelRequest()` first before clearing state
- **Streaming buffer**: after SSE stream loop ends, flush remaining tokens to `chatStreamingTextProvider` before setting to null to avoid visual jumps
