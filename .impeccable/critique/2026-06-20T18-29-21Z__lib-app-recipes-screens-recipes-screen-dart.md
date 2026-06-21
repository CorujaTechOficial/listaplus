---
target: tela da feature de receitas
total_score: 26
p0_count: 0
p1_count: 3
timestamp: 2026-06-20T18-29-21Z
slug: lib-app-recipes-screens-recipes-screen-dart
---
# Critique — Feature de Receitas (recipes_screen.dart + recipe_detail_screen.dart)

Evidence: full source read. Deterministic detector N/A (Flutter Dart, not markup). Device screenshot returned black (locked) — no live overlay.

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Skeletons + snackbar + undo good; no feedback on "prepared" toggle |
| 2 | Match System / Real World | 3 | inventory_2 pantry icon abstract, unlabeled |
| 3 | User Control & Freedom | 3 | Undo on delete (both screens), cancel, back — solid |
| 4 | Consistency & Standards | 2 | 3 different tag treatments; 2 delete flows; divergent radii |
| 5 | Error Prevention | 3 | Confirm dialog; null-list check before add |
| 6 | Recognition Rather Than Recall | 3 | Tap-to-strike ingredient unsignalled; pantry status color-only |
| 7 | Flexibility & Efficiency | 2 | No sort, no bulk, no favorite |
| 8 | Aesthetic & Minimalist | 3 | Cramped card (3 text rows + 2 overlays); 9px tag = noise |
| 9 | Error Recovery | 2 | Snackbar shows raw e.toString() to user (detail) |
| 10 | Help & Documentation | 2 | No contextual help |
| Total | | 26/40 | Acceptable |

## Anti-Patterns Verdict
Not slop. Competent Material 3, familiar — good for product register. No gradient text/glassmorphism/eyebrows/numbered markers. Card grid mildly "identical card grid" but recipes are a gallery → acceptable. Real tells: 9px green tag, pantry-status-by-color-only, hero title contrast risk.

## Priority Issues
- [P1] Tag green 9px on card (recipes_screen.dart:534-538): fails contrast+size; green-as-decoration violates DESIGN.md. Fix: real labelSmall ~11px onSurfaceVariant, or cut tags from card. Cmd: typeset
- [P1] Pantry status conveyed by color only (_PantryAvailabilityBadge; _IngredientTile:494-508): Sam can't distinguish in-stock vs low. Fix: add label/shape + Semantics. Cmd: clarify
- [P1] Hero title contrast in detail (recipe_detail_screen.dart:52-89): scrim only covers 60-100%; pinned-collapsed white title sits over unscrimmed image top or light primaryContainer placeholder. Fix: top scrim or solid backing. Cmd: polish
- [P2] Three tag treatments across feature (filter chip / raw green text / secondaryContainer pill). Fix: one RecipeTag component. Cmd: polish
- [P2] Error snackbar leaks raw exception (recipe_detail_screen.dart:280). Fix: friendly l10n message + retry. Cmd: clarify

## Persona Red Flags
- Jordan: share icon on recipes AppBar shares the APP (referral), not the recipe (_shareApp:106) — misleading affordance. Tap-to-strike ingredient invisible.
- Sam: pantry status color-only (2 places); hero title contrast; 9px green tag; small tap targets (18px menu, 14px pantry icons).
- Casey: card crams 3 text rows + 2 overlays; 9px glance fails; card menu small target. Detail CTA in thumb zone = ok.

## Minor Observations
- Skeleton aspectRatio 0.75 fixed vs grid 0.65 on <380 → load layout jump (:307 vs :354).
- Raw literals off-token: fontSize 9, horizontal 10, spacing 6, width/height 28, top/right 4, blurRadius 8/10.
- person_outline as leading on a tab root is unusual.
- Card menu scrim (black 0.3) weak; white more_vert vanishes on light photos.
