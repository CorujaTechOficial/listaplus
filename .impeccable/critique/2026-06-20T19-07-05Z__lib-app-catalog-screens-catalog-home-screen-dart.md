---
target: o Catalogo
total_score: 23
p0_count: 0
p1_count: 2
timestamp: 2026-06-20T19-07-05Z
slug: lib-app-catalog-screens-catalog-home-screen-dart
---
# Design Critique: Catalog Feature (O Catálogo)

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 2/4 | Uses generic `CircularProgressIndicator` in the center of the screen instead of skeleton load layouts matching the content structure. |
| 2 | Match System / Real World | 3/4 | Plain language is used; categories use logical and intuitive naming/emojis. |
| 3 | User Control and Freedom | 2/4 | Search results on Catalog Home instantly add items to list with a toast, lacking single-item removal/adjustment controls. |
| 4 | Consistency and Standards | 2/4 | Catalog Home search results add items instantly (no quantity controls), whereas Catalog Category screens modify quantity locally before batch submission. |
| 5 | Error Prevention | 3/4 | Numeric boundaries for items cannot go below zero, preventing invalid shopping item quantities. |
| 6 | Recognition Rather Than Recall | 3/4 | Good visibility of recent/frequent items to reduce recall, but category grids are dense and lack hierarchy. |
| 7 | Flexibility and Efficiency | 2/4 | No quick clear option for the search query on Category screen, and adding multiple items from search results is tedious due to multiple network toasts. |
| 8 | Aesthetic and Minimalist Design | 2/4 | Rare items are set to `0.65` opacity, making them look disabled/unclickable. Multiple hardcoded dimension/color values violate `DESIGN.md` tokens. |
| 9 | Error Recovery | 2/4 | Error screens display raw exception strings rather than friendly actionable messages. |
| 10 | Help and Documentation | 2/4 | No search empty states suggesting keywords or troubleshooting steps. |
| **Total** | | **23/40** | **Acceptable (Significant improvements needed before users are happy)** |

---

## Anti-Patterns Verdict

### LLM Assessment
The UI layout displays a clean and standard Material 3 appearance, but it exhibits several structural AI visual grammar traits:
* **Opacity as state**: Using `0.65` opacity for "rare items" violates basic visual guidelines, as opacity shifts are widely interpreted as inactive/disabled states.
* **Component inconsistency**: The search flow behaves differently depending on whether it is accessed globally (home) or inside a category. Home search adds immediately; category search edits locally. This creates confusion for users.

### Deterministic Scan
* **Scan Results**: The automated design scanner returned 0 static findings on Dart codebase files.

### Visual Overlays
* **Status**: A visual browser overlay is not available because the target is a native Flutter application.

---

## Overall Impression
The catalog is functionally sound and utilizes Riverpod correctly, but the experience suffers from interactive friction. The contrast of the "rare" items, small touch targets for counting controls, and inconsistency in adding items make it feel like a series of features rather than a cohesive tool.

---

## What's Working
1. **My Frequents Wrap**: Displays chips with stadium borders for frequently added items, making it very quick to populate standard items on a list.
2. **Category Grid**: The adaptive coloring of the categories is well-calculated for dark and light modes, preserving Material 3 guidelines.

---

## Priority Issues

### [P1] Interaction Inconsistency between Home Search and Category List
* **Why it matters**: Users expect elements representing products to behave consistently. Global search results require immediate writes to Firestore and spawn successive snackbars, while the category screen allows local state modifications and batch confirmation.
* **Fix**: Standardize both lists to allow inline quantity adjustments (counter controls) and either batch add or a uniform, non-disruptive feedback mechanism.
* **Suggested command**: `/impeccable layout`

### [P1] Generic Loading Indicator in Center of Screen
* **Why it matters**: Violates the project's layout rules: *"Never use a generic circular loader in the center of the screen for network requests."* It makes the app feel unpolished.
* **Fix**: Wrap catalog list items in a skeletonizer/shimmer layout matching `ProductListTile`.
* **Suggested command**: `/impeccable animate`

### [P2] Poor Accessibility and Affordance of Rare Items
* **Why it matters**: `0.65` opacity creates poor contrast for item text and incorrectly signals a disabled/uninteractive state to users.
* **Fix**: Use full opacity for item titles and contrast elements, and differentiate rare items via a dedicated badge (e.g. a small chip or tag) or outline style.
* **Suggested command**: `/impeccable bolder`

### [P2] Insufficient Touch Targets for Counter Buttons
* **Why it matters**: The `_CounterButton` is sized at 28x28px, making it difficult for mobile users to tap reliably.
* **Fix**: Increase the button tap targets to at least 40x40px or extend the bounds using visual padding.
* **Suggested command**: `/impeccable layout`

### [P2] Hardcoded Values and Color Scheme Violation
* **Why it matters**: Hardcoded hex color `Color(0xFF232730)` and raw dimensions (`10`, `3`, `20`, `22`, `28`, `48`) violate the spacing and color token principles of `DESIGN.md` and custom lints.
* **Fix**: Replace all hardcoded values with `Spacing`, `RadiusTokens`, and dynamic `Theme.of(context).colorScheme` color references.
* **Suggested command**: `/impeccable polish`

---

## Persona Red Flags

### Alex (Power User)
* **Red Flag**: Adding multiple items from search results is highly inefficient. Alex must tap each item button individually, wait for the snackbar, and cannot adjust quantities before committing.

### Casey (Distracted Mobile User)
* **Red Flag**: The 28x28px counter buttons are too small to tap while using the app one-handed on a bumpy train, leading to frequent misclicks.

### Jordan (First-Timer)
* **Red Flag**: Jordan sees the dimmed, low-opacity rare products and assumes they cannot be added to the list.

---

## Minor Observations
* **Divider visual weight**: The horizontal divider around the rare section uses standard `Divider()`, which can look harsh or unintegrated.
* **No scroll physics settings**: The ListView in `CatalogCategoryScreen` does not specify physics, defaulting to platform-specific behaviors which is fine, but could benefit from explicitly standardizing scroll limits.

---

## Questions to Consider
* **Should the Home Screen Search support a unified batch addition?**
* **Could we use a more contextual empty search screen showing popular keywords?**
