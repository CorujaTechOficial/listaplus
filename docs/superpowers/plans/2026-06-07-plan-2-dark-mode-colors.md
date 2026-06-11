# Dark Mode & Color System Fixes — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to implement this plan task-by-task.
> **Delegate to:** Opencode DeepSeek (`opencode run -m opencode-go/deepseek-v4-flash "..."`)

**Goal:** Replace all hardcoded absolute colors (`Colors.green`, `Colors.red`, `Colors.orange`, `Colors.white`, `Colors.black54`) with theme-aware colors so the app looks correct in dark mode.

**Architecture:** All colors must derive from `Theme.of(context).colorScheme` or use semantic Material 3 color roles. Status colors (ok/warning/error) should map to the existing colorScheme roles: `primary`, `tertiary`, `error`.

**Tech Stack:** Flutter Material 3, `theme.colorScheme`, `ThemeData`

**Rules:**
- Never remove logic, only change color values.
- After each file, run: `flutter analyze --fatal-infos lib/app/<feature>/`
- Do NOT add comments.
- Follow existing code style exactly.

---

## Files Modified

| File | Hardcoded Colors |
|------|-----------------|
| `lib/app/pantry/screens/pantry_screen.dart` | `Colors.green`, `Colors.orange`, `Colors.orange.shade800`, `Colors.red`, `Colors.black54` |
| `lib/app/lists/list_screen_body.dart` | `Colors.green`, `Colors.red.withAlpha(100)`, `Colors.grey` |
| `lib/app/ai/screens/ai_home_screen.dart` | `Colors.green`, `Colors.white` (on surface) |
| `lib/app/ai/widgets/ai_chat_panel.dart` | Various hardcoded whites and greys in bubbles |

---

### Task 1: Fix pantry_screen.dart color system

**Files:**
- Modify: `lib/app/pantry/screens/pantry_screen.dart`

- [ ] **Step 1: Fix stock/expiry progress bar indicator colors**

At lines ~428, 558, 638 — the pantry uses `Colors.green`, `Colors.orange`, `Colors.orange.shade800`, `Colors.red` for stock level and expiry status indicators.

Replace with theme-aware equivalents:
```dart
// Helper to get inside pantry_screen or as local function in the widget:
Color _stockColor(BuildContext context, StockLevel level) {
  final cs = Theme.of(context).colorScheme;
  return switch (level) {
    StockLevel.ok => cs.primary,
    StockLevel.low => cs.tertiary,
    StockLevel.critical => cs.error,
  };
}

Color _expiryColor(BuildContext context, ExpiryLevel level) {
  final cs = Theme.of(context).colorScheme;
  return switch (level) {
    ExpiryLevel.ok => cs.primary,
    ExpiryLevel.soon => cs.tertiary,
    ExpiryLevel.expired => cs.error,
  };
}
```

If the pantry uses inline color comparisons instead of enums, use the equivalent inline ternary pattern replacing each literal:
- `Colors.green` → `theme.colorScheme.primary`
- `Colors.orange` / `Colors.orange.shade800` → `theme.colorScheme.tertiary`
- `Colors.red` → `theme.colorScheme.error`

- [ ] **Step 2: Fix black54 overlay in edit dialog**

At line ~1271 — loading overlay uses `Colors.black54`.
Replace with:
```dart
color: theme.colorScheme.scrim.withAlpha(160)
```

- [ ] **Step 3: Analyze pantry**

```bash
flutter analyze --fatal-infos lib/app/pantry/
```
Expected: `No issues found`

---

### Task 2: Fix list_screen_body.dart colors

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Fix completed list icon color**

At line ~518 — `const Icon(..., color: Colors.green)` for the "all purchased" state.
Replace:
```dart
Icon(Icons.check_circle_rounded, color: theme.colorScheme.primary)
```

- [ ] **Step 2: Fix swipe-to-delete background color**

At line ~456 — `Colors.red.withAlpha(100)` swipe background.
Replace:
```dart
theme.colorScheme.errorContainer
```

- [ ] **Step 3: Fix empty search state icon**

At line ~892 — `const Icon(Icons.search_off, color: Colors.grey)`.
Replace:
```dart
Icon(Icons.search_off, color: theme.colorScheme.onSurfaceVariant)
```

- [ ] **Step 4: Fix PDF/Excel icon colors**

At lines ~687-688 — PDF icon uses `Colors.red`, Excel uses `Colors.green`.
Replace:
```dart
// PDF icon:
color: theme.colorScheme.error
// Excel icon:
color: theme.colorScheme.primary
```

- [ ] **Step 5: Analyze lists**

```bash
flutter analyze --fatal-infos lib/app/lists/
```
Expected: `No issues found`

---

### Task 3: Fix ai_home_screen.dart colors

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart`

- [ ] **Step 1: Fix Colors.green at line ~518**

`Colors.green` check icon for all-purchased state → `theme.colorScheme.primary`

- [ ] **Step 2: Fix Colors.white text styles**

At line ~713 — `const TextStyle(color: Colors.white)` used on a gradient background.
Only safe if background is always dark. Confirm context; if on a gradient container, keep `Colors.white`. If on a `surface`, replace:
```dart
TextStyle(color: theme.colorScheme.onPrimaryContainer)
```

- [ ] **Step 3: Analyze AI screens**

```bash
flutter analyze --fatal-infos lib/app/ai/
```
Expected: `No issues found`

---

### Task 4: Fix ai_chat_panel.dart bubble colors

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart`

- [ ] **Step 1: Audit and replace hardcoded whites/greys**

Read the file. Find every instance of `Colors.white`, `Colors.grey`, `Colors.black`, `Color(0xFF...)` hardcoded for bubble backgrounds and text.

Replace with theme equivalents:
- User bubble background: `theme.colorScheme.primaryContainer`
- User bubble text: `theme.colorScheme.onPrimaryContainer`
- AI bubble background: `theme.colorScheme.surfaceContainerHigh`
- AI bubble text: `theme.colorScheme.onSurface`
- Timestamp/secondary text: `theme.colorScheme.onSurfaceVariant`

- [ ] **Step 2: Analyze AI widgets**

```bash
flutter analyze --fatal-infos lib/app/ai/
```
Expected: `No issues found`

---

### Task 5: Final dark mode verification

- [ ] **Step 1: Full analysis**

```bash
flutter analyze --fatal-infos lib/
```

- [ ] **Step 2: Grep for remaining hardcoded colors**

```bash
grep -rn "Colors\.green\|Colors\.red\|Colors\.orange\|Colors\.white\b\|Colors\.black\b\|Colors\.grey\b" lib/app/ --include="*.dart" | grep -v "//.*Colors"
```
Review each remaining hit — only keep ones that are intentionally brand/static colors.
