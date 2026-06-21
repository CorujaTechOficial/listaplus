# Task 4 Report — Lighten upsell in shopping_completion_view.dart

**Status**: DONE
**Commit**: d2acf0e
**Summary**: Replaced heavy `Card` upsell (elevation, inner padding, `FilledButton.tonal`, two-line copy) with a single `bodyMedium`/`onSurfaceVariant` `Text` + `SizedBox(height: Spacing.sm)` + `TextButton`. `onUpgrade` callback preserved. `if (!isPremium)` guard intact. `flutter analyze` on the file: no issues.

**Concerns**: `itemCount` remains in the constructor signature (callers at `list_screen_body.dart:622` still pass it) — Dart does not flag unused class fields, so no lint violation. Could be cleaned up in a separate PR if desired.
