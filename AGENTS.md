# Shopping List — CorujaTech

## Commands

```sh
# Analyze (fatal on ALL issues inc. info)
flutter analyze --fatal-infos

# All tests + coverage
flutter test --coverage

# Build web
flutter build web --release

# Regenerate *.g.dart after editing providers
dart run build_runner build --delete-conflicting-outputs

# Full CI pipeline (analyze → test → build → sonar → gate)
SONAR_TOKEN=squ_xxx ./scripts/quality-check.sh
```

## Architecture

- **State**: Riverpod w/ codegen (`@riverpod` → `*.g.dart`). Must run `build_runner` after editing providers.
- **Persistence**: `shared_preferences` via `StorageService`. No DB. Keys: `shopping_lists`, `shopping_items`, `current_list_id`, `budget_$listId`.
- **Entrypoint**: `main.dart` → `ProviderScope` → `MyApp` → `ListLoader` → `HomeScreen` or `NoListsScreen`.
- **Models**: `ShoppingList`, `ShoppingItem`, `Category` (enum: Frutas, Limpeza, Bebidas, Padaria, Outros). All `toJson`/`fromJson`.
- **UI language**: pt-BR.
- **Theme**: Material Design 3, green `colorSchemeSeed`.

## Testing

- 86 unit/widget tests in `test/` (5 files) + 4 integration tests (`integration_test/app_test.dart`).
- **Coverage must be 100%**. Current: 451/451 lines (excl `.g.dart`).
- `??` RHS not hit when LHS non-null (`ShoppingList.copyWith` line `name: name ?? this.name`). Test both `copyWith(name: value)` and `copyWith()` (no args).

## Style & Linting

- `implicit-casts: false` and `implicit-dynamic: false` — every variable **must** be explicitly typed. `var` without annotation fails.
- `prefer_int_literals` has false positives with `fold(0.0, ...)` (needs double). Suppress with `// ignore: prefer_int_literals`.
- Generated files (`*.g.dart`) excluded from analysis and SonarQube.

## Quirks

- Deleting a list deletes its items and auto-switches to another list.
- `ShoppingItemTile._showEditDialog` is unimplemented (TODO).
- Search delegate passes empty `listId` — search results won't have toggle/delete.
- `PopupMenuButton` uses explicit `icon: const Icon(Icons.more_vert)` for macOS test compatibility.
- `StorageService.saveItems` replaces ALL items across ALL lists in a single SharedPreferences key (no per-list merge).
- `context.mounted` guard needed after `ref.invalidate` + `Navigator.pop` in drawer callbacks — widget tree may deactivate mid-flow.
