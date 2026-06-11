# Audit Improvements — KipiList

Date: 2026-06-07

## Problem

KipiList (br.com.curujatech.listaplus) has critical gaps identified in a comprehensive audit:
- Test coverage at ~1.2% (311 lines test / 26,135 lines lib)
- CI lacks test execution
- Tree-shaking blocked by `IconData(iconCodepoint)` in `category_data.dart`
- Firestore security rules need rate limiting
- `undoMessageActions` lacks atomic rollback (individual writes)
- Dead `lib/providers/` directory

## Solution

Three waves executed sequentially:

### Wave 1 — Testes + CI (⭐⭐⭐)

1. Unit tests for critical providers:
   - `premiumProvider` (RevenueCat gating)
   - `authProvider` (Firebase Auth stream)
   - `chatProvider` (AI agent tool execution)
   - `FirestoreService` (CRUD with mocked Firebase)

2. Widget tests for key screens:
   - `HomeScreen` (tab navigation)
   - Paywall screen (if mockable)

3. CI: add `flutter test` job to `.github/workflows/ci.yml`
   - Same `ubuntu-latest`, `flutter-version: '3.29.3'` as existing jobs
   - `flutter pub get` → `flutter test`

### Wave 2 — Qualidade + Segurança (⭐⭐)

1. **Tree-shaking:** Refactor `CategoryData.icon` in `category_data.dart`:
   - Replace `int iconCodepoint` with a `MaterialIcon` enum/const mapping
   - Map `category.id` → known `IconData` constant (e.g., `Icons.restaurant` for `"food"`)
   - Fallback to `Icons.category` for unknown IDs
   - Remove `--no-tree-shake-icons` requirement

2. **Rate limiting Firestore:** Update `firestore.rules`:
   - Rate limit: max 50 requests per minute per user
   - Document size validation (max 1MB per document)
   - Field count limits
   - Query depth limits

3. **Atomic rollback:** Refactor `undoMessageActions` in `chat_provider.dart`:
   - Use `Firestore WriteBatch` for grouped writes
   - If any step fails, batch rollback reverses all prior steps atomically
   - Log batch errors to Sentry/Crashlytics

### Wave 3 — Housekeeping (⭐)

1. Delete empty `lib/providers/` directory
2. Update AGENTS.md if needed
3. Verify `home_screen.dart` is not a re-export

## Out of Scope

- Integration tests (require Firebase emulator)
- Full coverage (focus on critical paths)
- Dark mode toggle
- UI redesign
- New features

## Success Criteria

1. `flutter test` passes with new tests
2. CI has test job green
3. `flutter build appbundle` succeeds **without** `--no-tree-shake-icons`
4. Firestore rules deploy with rate limiting
5. `undoMessageActions` uses batch writes
6. `lib/providers/` removed
