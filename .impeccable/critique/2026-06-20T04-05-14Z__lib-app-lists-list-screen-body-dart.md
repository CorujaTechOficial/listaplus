---
target: shopping list screen
total_score: 27
p0_count: 0
p1_count: 3
timestamp: 2026-06-20T04-05-14Z
slug: lib-app-lists-list-screen-body-dart
---
#### Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Progress and spend are visible, but too much status competes in the header. |
| 2 | Match System / Real World | 4 | Shopping language and task framing are strong. |
| 3 | User Control and Freedom | 3 | Selection and shopping modes exist, but mode switches fragment actions. |
| 4 | Consistency and Standards | 3 | Core Material vocabulary is consistent, but the surface mixes app-bar actions, chips, bottom bars, and special states too aggressively. |
| 5 | Error Prevention | 2 | Quick add defaults are fast, but there is little inline guardrail for wrong category, duplicate, or accidental completion. |
| 6 | Recognition Rather Than Recall | 3 | Category grouping and purchased split help, but many actions are hidden behind memory-heavy icons and menus. |
| 7 | Flexibility and Efficiency | 3 | Reorder, search, quick add, voice, and selection mode are efficient once learned. |
| 8 | Aesthetic and Minimalist Design | 2 | The screen carries too many simultaneous controls and status layers for one task surface. |
| 9 | Error Recovery | 2 | Error state is raw text and quick add failure recovery is minimal. |
| 10 | Help and Documentation | 2 | A temporary gesture banner exists, but durable onboarding for list behaviors is thin. |
| **Total** | | **27/40** | **Functional but overloaded** |

#### Anti-Patterns Verdict

**LLM assessment**: This does not read as flashy AI slop. The Material base is coherent, the product tone is practical, and the screen mostly behaves like a real utility app. The weakness is not artificial styling; it is accumulation. Too many controls are stacked into the same surface, so the screen starts to feel like several tools competing inside one list.

**Deterministic scan**: `detect.mjs` returned no findings for `lib/app/lists/list_screen_body.dart`. That means no obvious bundled slop signatures were detected in the root screen file. It does not clear the UX issues above; it only says the problems are structural and interaction-level rather than detector-grade visual clichés.

**Visual overlays**: No reliable browser overlay was produced in this run. I reviewed source structure and deterministic scan output only.

#### Overall Impression

The list screen is useful, capable, and closer to “trusted household tool” than to “generic AI app.” The biggest missed opportunity is focus: the primary job should be adding, checking off, and scanning items fast, but the screen keeps surfacing budget, sharing, premium, search, export, catalog, selection mode, shopping mode, and completion states at equal weight.

#### What's Working

- The task model is strong. Pending vs purchased, grouping by category, reorder, and shopping mode all map well to how people actually shop.
- The item tile has good information density. Name, category, quantity/price, purchased state, and selection affordance are compact without looking custom-for-custom’s-sake.
- The empty state is better than average because it teaches action immediately with suggestions and a direct add CTA instead of a dead end.

#### Priority Issues

- **[P1] Competing primary actions in the main task surface**
  **Why it matters**: The user is trying to act on the list, but the screen keeps presenting multiple top-level directions at once: app bar actions, progress header chips, bottom catalog entry, bottom quick add, shopping mode, selection mode, and popup actions. This slows first-time comprehension and makes the product feel busier than the job requires.
  **Fix**: Pick one dominant capture path and one dominant browse path. Keep quick add fixed. Demote catalog entry, export/share/budget, and premium-adjacent actions into secondary flows. Consider collapsing some app-bar actions into a single “list actions” sheet while preserving search as the only persistent utility action.
  **Suggested command**: `/impeccable distill`

- **[P1] Header is doing too many jobs at once**
  **Why it matters**: The header combines progress, spend, budget, filter state, and sort access in one compressed band. On a shopping list, this pushes status ahead of action and increases scan cost every time the user returns to the screen.
  **Fix**: Reduce the header to one primary summary row and one compact control row, or make budget/spend progressive disclosure behind a tap. Keep the list itself visually closer to the top so the first actionable items appear sooner.
  **Suggested command**: `/impeccable layout`

- **[P1] Mode switching fragments the mental model**
  **Why it matters**: Normal mode, shopping mode, and selection mode all replace leading icons, titles, actions, and bottom bars. The feature set is powerful, but the interface shape changes a lot for a core utility screen, which raises relearning cost.
  **Fix**: Make the modes feel like variations of one list, not separate mini-apps. Preserve stronger positional consistency for exit, search, and add. Use one stable bottom action region, with mode-specific secondary affordances inside it.
  **Suggested command**: `/impeccable shape`

- **[P2] Completion state turns a success moment into an upsell interruption**
  **Why it matters**: Finishing a shopping trip should end on relief and closure. Injecting a premium card into the completion view weakens that emotional peak, especially for free users who just completed the app’s core promise.
  **Fix**: Make the completion state celebrate completion first. Move upgrade language below the fold, delay it until after exit, or tie it to a concrete next benefit like history, pantry, or smart reuse rather than a generic premium prompt.
  **Suggested command**: `/impeccable clarify`

- **[P2] Recovery and trust details are under-designed**
  **Why it matters**: The raw error surface and low-feedback quick add flow make the screen feel less premium exactly when trust matters. Fast tools need forgiving recovery.
  **Fix**: Replace raw error text with a structured error state, add duplicate/undo feedback around quick add and purchase toggles, and make failure states use the same calm product vocabulary as success states.
  **Suggested command**: `/impeccable harden`

#### Persona Red Flags

**Jordan (first-time user trying to make a simple grocery list)**: The first view asks Jordan to parse account access, shopping mode, share, search, overflow menu, progress, budget, filters, sort, catalog entry, and quick add before the list behavior is fully learned. The surface explains capability before it proves simplicity.

**Marina (rushed in-store shopper using one hand)**: Shopping mode helps, but the app still depends on small app-bar targets and a changing bottom region. The speed path is not singular enough; Marina should feel one obvious tap zone for add and one obvious tap zone for check-off at all times.

**Rafael (repeat household planner managing budget and organization)**: Rafael gets useful data, but budget, progress, sorting, grouping, and purchased sections are spread across separate UI bands. The tool is capable, but the overview is not compact enough for fast weekly review.

#### Minor Observations

- Purchased items use an uppercase section marker with divider, which is functional but visually generic and a little louder than the rest of the screen.
- The gesture hint banner is helpful, but as a temporary pill it risks becoming ambient chrome instead of durable learnability.
- The quick add field is visually pleasant, but the send button plus mic plus catalog button below the list create a heavy footer stack.
- The completion view uses a `Card`, which makes the upsell feel bolted on rather than native to the rest of the product language.

#### Questions to Consider

- If this screen lost 30% of its controls, which actions would absolutely deserve to remain visible all the time?
- Should budget feel like a constant companion on the list, or a detail you inspect when needed?
- Can shopping mode become the default “doing” state instead of a separate mode the user has to enter?
