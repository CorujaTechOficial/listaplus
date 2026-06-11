# Audit Improvements — Implementation Plan

## Wave 1: Tests + CI (⭐⭐⭐)

### 1.1 Create `test/core/providers/monetization_providers_test.dart`

**File to create:** `test/core/providers/monetization_providers_test.dart`

**What to test:** `premiumProvider` (`Premium` Riverpod notifier)

**Test scenarios:**
- `premiumProvider` returns `true` when `isEntitlementActive('kipilist_pro')` returns `true`
- `premiumProvider` returns `false` when `isEntitlementActive` returns `false`
- `premiumProvider` returns `false` when `isEntitlementActive` throws an error
- Listener registration/disposal works (optional, advanced)

**Approach:**
- Mock `RevenueCatService` with mocktail
- Override `revenueCatServiceProvider` in `ProviderContainer`
- Use `registerFallbackValue` for `CustomerInfo` if needed
- Use `container.read(premiumProvider.future)` to get the result

### 1.2 Create `test/core/providers/auth_providers_test.dart`

**File to create:** `test/core/providers/auth_providers_test.dart`

**What to test:** `authProvider` stream and `authServiceProvider`

**Test scenarios:**
- `authProvider` emits `null` when auth state is `null` (signed out)
- `authProvider` emits a `User` object when signed in (use Firebase Auth mock if needed)

**Approach:**
- Mock `AuthService` with mocktail
- Override `authServiceProvider` in `ProviderContainer`
- Use `expectLater(container.stream, emits(expected))` pattern for stream testing
- NB: `authProvider` uses `@Riverpod(keepAlive: true)` which affects disposal behavior

### 1.3 Create `test/services/firestore_service_test.dart`

**File to create:** `test/services/firestore_service_test.dart`

**What to test:** `FirestoreService` CRUD operations (backed by `StorageBackend` interface)

**Approach considerations:**
- `FirestoreService(uid:)` has a runtime dep on `FirebaseFirestore.instance` — hard to mock directly
- **Preferred approach:** test the `StorageBackend` interface methods via mocking at the provider level, since all production code consumes `StorageBackend` via `firestoreServiceProvider`
- If direct `FirestoreService` testing is needed, inject a `FakeFirebaseFirestore` using `fake_cloud_firestore` package (if already in deps) or keep as Wave-1-b post-launch
- **Simpler path:** test method-by-method of `FirestoreService` by injecting a mock `FirebaseFirestore`

**Test scenarios (if using FakeFirebaseFirestore):**
- `getCurrentListId()` returns the first list's ID when lists exist
- `getCurrentListId()` returns empty string when no lists exist
- `saveItem()` writes to the correct Firestore path
- `watchItems()` streams items filtered by `shoppingListId`

**Check:** is `fake_cloud_firestore` already in `pubspec.yaml`? If not, add it as `dev_dependency`.

### 1.4 Create `test/app/ai/providers/chat_provider_test.dart`

**File to create:** `test/app/ai/providers/chat_provider_test.dart`

**What to test:** Key functions of `ChatProvider` (Riverpod notifier)

**Test scenarios:**
- `undoMessageActions` correctly reverses a step that has `resultData['itemId']` (delete → restore)
- `undoMessageActions` correctly reverses a step with `resultData['previousState']` (update → restore)
- `undoMessageActions` handles missing `listId` gracefully (null safety)
- `clearHistory` resets the message list and cancels in-flight requests

**Approach:**
- Mock `AiService`, `FirestoreService` (as `StorageBackend`)
- Override providers with mocks via `ProviderContainer`
- Use `registerFallbackValue` for `ChatMessage`, `ShoppingItem`, etc.
- Set up initial state with `container.read(chatProvider.notifier).setMessages([...])` or via provider override
- For undo, create a message with `executionSteps` containing sample `resultData`

### 1.5 Create `test/app/home/widgets/home_screen_test.dart`

**File to create:** `test/app/home/widgets/home_screen_test.dart`

**What to test:** `HomeScreen` widget renders and handles tab navigation

**Test scenarios:**
- `HomeScreen` renders the bottom navigation bar with expected tabs
- Tapping a tab switches the visible screen content (if possible without complex mocks)

**Approach:**
- Use `ProviderScope` wrapping `HomeScreen` with all required provider overrides
- Override `premiumProvider`, `authProvider`, `firestoreServiceProvider` with mocks
- Use `pumpWidget` and `find.text` / `find.byType` for assertions
- `HomeScreen` uses `IndexedStack` and `BottomNavigationBar`

### 1.6 Update CI — add `flutter test` job

**File to modify:** `.github/workflows/ci.yml`

**Change:** Add a new job `test` after `analyze`:
```yaml
test:
  name: flutter test
  runs-on: ubuntu-latest
  timeout-minutes: 15
  steps:
    - uses: actions/checkout@v4
    - uses: subosito/flutter-action@v2
      with:
        channel: stable
        flutter-version: '3.29.3'
    - run: flutter pub get
    - run: flutter test
```

Optionally add `needs: [analyze]` to gate on analysis passing.

---

## Wave 2: Quality + Security (⭐⭐)

### 2.1 Tree-shaking: Refactor `CategoryData` icon handling

**File to modify:** `lib/domain/entities/category_data.dart`

**Changes:**
1. Add a static lookup map `_iconMap` mapping `category.id` string → `IconData` constant
   ```dart
   static const _iconMap = <String, IconData>{
     'fruits': Icons.apple,
     'cleaning': Icons.cleaning_services,
     'beverages': Icons.local_drink,
     // ... all 20 categories
   };
   ```
2. Replace `IconData get icon => IconData(iconCodepoint, fontFamily: 'MaterialIcons')` with:
   ```dart
   IconData get icon => _iconMap[id] ?? Icons.category;
   ```
3. Keep `iconCodepoint` field for JSON deserialization compatibility (data coming from Firestore)
4. Verify `flutter build appbundle` succeeds without `--no-tree-shake-icons`
5. Remove `--no-tree-shake-icons` from build command references (AGENTS.md, the build docs)

**Check:** After refactor, verify all `CategoryData.defaults` entries map correctly to the right icons.

### 2.2 Rate limiting in Firestore rules

**File to modify:** `firestore.rules`

**Changes:** Add rate limit to writes:
```javascript
function isRateLimited() {
  // Allow max 50 writes per minute per user
  return request.auth.uid in get(/databases/$(database)/documents/rates/$(request.auth.uid)).data
    && get(/databases/$(database)/documents/rates/$(request.auth.uid)).data.writeCount > 50;
}
```

And add to write rules:
```javascript
allow write: if isAuthenticated() && isOwner(uid) && !isRateLimited();
```

Also add document size validation:
```javascript
function isValidDocumentSize() {
  return request.resource.size < 1 * 1024 * 1024; // 1MB max
}
```

**Important:** Firestore security rules cannot access `/rates/` documents efficiently. The recommended approach is:
- Add a simple `rate limit` check that reads from a limits collection (but this costs reads)
- **Simpler alternative:** Add size validation + field count validation only (which don't require extra reads)
- Document the rate-limit approach as a planned improvement that needs backend-side enforcement

**Pragmatic approach for now:**
- Size validation: `request.resource.size < 1024 * 1024`
- Auth/ownership checks remain unchanged (already solid)
- Document that full rate limiting needs a Firestore `onWrite` function or App Check

### 2.3 Atomic rollback — `WriteBatch` in `undoMessageActions`

**File to modify:** `lib/app/ai/providers/chat_provider.dart` (lines 654-825)

**Changes:**
1. Inject `FirebaseFirestore.instance` or use `FirestoreService` to get a batch reference
2. Replace individual `removeItem()` / `restoreItem()` calls in the undo loop with batched writes
3. Collect all writes into a `WriteBatch`, then `batch.commit()` at the end
4. Handle partial failure: if `batch.commit()` fails, no writes are applied (atomic by design)

**Refactoring approach:**
- Add a method `_applyUndoBatch(List<_UndoCallback> callbacks)` that groups writes by list and applies them via single `WriteBatch` per list
- Keep the reverse-callbacks pattern for safety but reduce individual Firestore calls
- The outer loop over steps can still collect operations, but the actual Firestore writes happen inside a batch

**Key benefit:** WriteBatch gives us atomicity — either all writes in the batch succeed or none do.

---

## Wave 3: Housekeeping (⭐)

### 3.1 Remove empty `lib/providers/` directory

**Action:** `git rm -r lib/providers/` (or just `rmdir` since empty)

**Check:** Verify nothing imports from `package:shopping_list/providers/`

### 3.2 Update AGENTS.md (if needed)

**File to modify:** `AGENTS.md`

**Check:** Verify the `--no-tree-shake-icons` note is removed/updated if tree-shaking refactor succeeded.

### 3.3 Verify `home_screen.dart` re-export status

**Action:** Check whether `lib/screens/home_screen.dart` is a direct widget definition or a re-export. If re-export, mark for migration (out of scope for now, just note it).

---

## Execution Order

```
Wave 1 (Tests + CI):
  1.1 → 1.2 → 1.3 → 1.4 → 1.5 → 1.6

Wave 2 (Quality + Security):
  2.1 → 2.2 → 2.3

Wave 3 (Housekeeping):
  3.1 → 3.2 → 3.3
```

## Verification Steps After Each Wave

### Wave 1 verification:
```sh
flutter test
```
All new tests pass. CI job added but can only verify after push.

### Wave 2 verification:
```sh
flutter build appbundle      # without --no-tree-shake-icons
flutter test                  # existing tests still pass
```

### Wave 3 verification:
```sh
ls lib/providers/             # should not exist
git diff AGENTS.md            # verify changes
grep -rn "from 'package:shopping_list/providers" lib/  # should be empty
```

## Dependencies

- Add `fake_cloud_firestore` to `pubspec.yaml` as `dev_dependency` (if Wave 1.3 needs it)
- All existing dev dependencies (`mocktail`, `flutter_test`, `riverpod`) are already present
- No new runtime dependencies

## Risk Analysis

| Risk | Impact | Mitigation |
|------|--------|-----------|
| `RevenueCatService` hard to mock | Wave 1.1 scope | Abstract behind interface, or mock at provider level |
| `authProvider` `keepAlive: true` complicates test teardown | Wave 1.2 scope | Override and dispose container manually |
| `fake_cloud_firestore` not in deps | Wave 1.3 scope | Add as dev dep, or skip 1.3 fully and focus on provider-level tests |
| Tree-shaking missing icon constants | Wave 2.1 | Every `CategoryData.defaults` entry has a corresponding `_iconMap` entry; test covers all 20 |
| Firestore rules rate limiting too complex | Wave 2.2 | Scope down to size validation + doc mention for future work |
| WriteBatch refactor breaks existing undo logic | Wave 2.3 | Write new tests first, then refactor; verify with `flutter test` |
| Empty dir removal causes import errors | Wave 3.1 | Grep first, remove second |
