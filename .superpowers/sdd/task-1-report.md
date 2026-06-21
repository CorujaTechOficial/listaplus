# Task 1 Report: Bottom Input Hierarchy

## Status: DONE

## What was changed

**File**: `lib/app/lists/list_screen_body.dart`  
**Widget**: `_CatalogEntryButton` (OutlinedButton.styleFrom in build method)

### Before
```dart
style: OutlinedButton.styleFrom(
  minimumSize: const Size.fromHeight(40),
  foregroundColor: theme.colorScheme.primary,
),
```

### After
```dart
style: OutlinedButton.styleFrom(
  minimumSize: const Size.fromHeight(40),
  foregroundColor: theme.colorScheme.onSurfaceVariant,
  side: BorderSide(
    color: theme.colorScheme.outlineVariant,
  ),
  visualDensity: VisualDensity.compact,
),
```

## Changes explained

1. `foregroundColor`: `primary` → `onSurfaceVariant` — icon and label now render in a muted, secondary tone instead of the same prominent color as the KipiQuickBar
2. `side`: explicitly set to `outlineVariant` (thematic muted border) so the button border also reflects the secondary weight
3. `visualDensity: VisualDensity.compact` — reduces the button's vertical hit-area padding, making it physically smaller than the QuickBar and visually less prominent

## Analysis result

`flutter analyze --fatal-infos` — 0 new errors introduced. Pre-existing warnings/infos unchanged.

## Behavior

No logic changed — only visual style. The `onPressed` navigation to `CatalogHomeScreen` is untouched.
