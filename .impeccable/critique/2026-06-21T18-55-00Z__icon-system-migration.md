---
target: icon system (lib/ — 88 files)
total_score: 38
p0_count: 0
p1_count: 0
p2_count: 0
p3_count: 1
timestamp: 2026-06-21T18-55-00Z
slug: icon-system-migration
---
## Icon System Migration — Phosphor 2.1.0

### Before

- **Library**: Material Design (`Icons.*`)
- **Problem**: 255 unique icon names with no weight system. Mixed variants (`_outline`, `_outlined`, `_rounded`, `_filled`) used randomly across 92 files. No semantic distinction between active and inactive states. Navigation bar used the same icon for `icon:` and `selectedIcon:`.

### After

- **Library**: `phosphor_flutter: ^2.1.0` (`PhosphorIconsRegular.*` / `PhosphorIconsFill.*`)
- **Files migrated**: 88 dart files, 0 compile errors introduced
- **Consistency**: Single geometric language. Uniform stroke weight. Active/inactive contrast now explicit via Regular→Fill.

### Weight conventions established

| Context | Class |
|---|---|
| Default / inactive | `PhosphorIconsRegular` |
| Selected / active / done | `PhosphorIconsFill` |
| Voted (thumbs) | `PhosphorIconsFill` |
| Premium badges (crown, star) | `PhosphorIconsFill` |

### Navigation bar fix

All 5 nav destinations now use `Regular` for `icon:` and `Fill` for `selectedIcon:` — same geometry, different weight, clear active state without color dependence.

### Frozen files (Material icons kept intentionally)

| File | Reason |
|---|---|
| `lib/models/category_data.dart` | `_iconMap` keyed by Material codePoint, read from Firestore |
| `lib/models/meal_type.dart` | Same pattern for meal type icons |
| `lib/app/lists/widgets/add_edit_category_dialog.dart` | Picker writes Material codePoint to Firestore |
| `lib/app/meal_planner/screens/meal_types_screen.dart` | Picker writes Material codePoint to Firestore |

**Do not migrate these** without also updating the Firestore schema to store font-family alongside codePoint.

### Remaining finding

**P3** — Category picker and meal-type picker still use Material icons. Visual inconsistency visible when editing categories or meal types. Fix requires schema migration (store `{codePoint, fontFamily}` instead of bare int). Low urgency — affects editor UX only, not reading UX.

### Anti-patterns resolved

- ✅ No more mixed `_outline` / `_rounded` / `_filled` variants
- ✅ No more identical `icon:` and `selectedIcon:` in nav bar
- ✅ Consistent stroke weight across all migrated surfaces
