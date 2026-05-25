# Fase 2 — Migração de Features para `app/`

## Goal
Migrate remaining screens, widgets, and features from `lib/screens/`, `lib/widgets/`, `lib/pages/` to `lib/app/<feature>/screens/` and `lib/app/<feature>/widgets/` using the Strangler Fig Pattern.

## Scope

### Features to Migrate

| Feature | Files | Old Location | New Location |
|---------|-------|-------------|--------------|
| Meal Planner | 1 screen | `lib/screens/meal_planner_screen.dart` | `lib/app/meal_planner/screens/` |
| Recipes | 1 screen + 1 widget | `lib/screens/recipes_screen.dart`, `lib/widgets/add_recipe_dialog.dart` | `lib/app/recipes/screens/`, `lib/app/recipes/widgets/` |
| Auth | 1 screen | `lib/screens/auth_screen.dart` | `lib/app/auth/screens/` |
| Onboarding | 1 screen | `lib/screens/onboarding_screen.dart` | `lib/app/onboarding/screens/` |
| Pantry | 1 screen + 1 widget | `lib/screens/pantry_screen.dart`, `lib/widgets/add_pantry_item_dialog.dart` | `lib/app/pantry/screens/`, `lib/app/pantry/widgets/` |
| Settings | 6 screens | `lib/screens/settings_screen.dart`, `lib/screens/backup_screen.dart`, `lib/screens/budget_dashboard_screen.dart`, `lib/screens/theme_selection_screen.dart`, `lib/screens/user_profile_screen.dart`, `lib/screens/manage_categories_screen.dart` | `lib/app/settings/screens/` |
| AI | 3 screens | `lib/screens/ai_home_screen.dart`, `lib/screens/chat_screen.dart`, `lib/screens/chat_history_screen.dart` | `lib/app/ai/screens/` |

### Out of Scope (Fase 3)
- Removing old files entirely (keep re-exports until Fase 3)
- Extracting widgets to `core/widgets/`
- Writing new tests
- Golden tests

## Strategy

### Strangler Fig Pattern per File
1. Copy file to new location (`lib/app/<feature>/screens/` or `lib/app/<feature>/widgets/`)
2. Fix imports in copied file: replace relative imports with `package:shopping_list/...` equivalents
3. Keep `coverage:ignore-start/end` markers if present
4. Replace old file content with re-export

### Re-export Format
```dart
export 'package:shopping_list/app/<feature>/screens/<file>.dart';
```

For files that previously had coverage markers:
```dart
// coverage:ignore-start
export 'package:shopping_list/app/<feature>/screens/<file>.dart';
// coverage:ignore-end
```

### Verification
- `flutter analyze --fatal-infos` — count must not increase
- `flutter test --coverage` — same +334 -99 result
- Coverage: existing tests cover the migrated code via re-exports

## Order of Execution
1. Meal Planner — most isolated
2. Recipes — small, self-contained
3. Auth — minimal dependencies
4. Onboarding — small screen
5. Pantry — medium complexity
6. Settings — largest, most screens
7. AI screens — remaining 3
