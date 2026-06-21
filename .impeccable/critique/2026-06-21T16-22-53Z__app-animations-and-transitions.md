---
target: app_animations_and_transitions
total_score: 23
p0_count: 1
p1_count: 2
timestamp: 2026-06-21T16-22-53Z
slug: app-animations-and-transitions
---
# Design Critique: App Animations and Screen Transitions

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3/4 | Typing dots and tactile container presses are clear, but the infinite pulsing FAB misleadingly implies background activity. |
| 2 | Match System / Real World | 3/4 | Physics curves feel natural, but typing dots bounce is slightly robotic. |
| 3 | User Control and Freedom | 1/4 | **CRITICAL:** Onboarding hook screen auto-advances. Custom route transitions break the native iOS swipe-back gesture. |
| 4 | Consistency and Standards | 1/4 | **CRITICAL:** Widespread design token violations with raw millisecond timings. Custom routes break iOS navigation standards. |
| 5 | Error Prevention | 3/4 | Tactile scaling prevents double-taps, but auto-advance can clash with manual swipes. |
| 6 | Recognition Rather Than Recall | 3/4 | Horizontal page swipes match mental models well. |
| 7 | Flexibility and Efficiency | 2/4 | Tab-switching is fast (200ms), but onboarding auto-advance forces power users to wait. |
| 8 | Aesthetic and Minimalist Design | 1/4 | **CRITICAL:** Infinite FAB pulsing adds visual noise. Hardcoded Portuguese text shown on English/Spanish locales. |
| 9 | Error Recovery | 3/4 | Not directly affected by these animations. Standard recovery behaves fine. |
| 10 | Help and Documentation | 3/4 | General settings screens are clear, but no animation-specific guidance is needed. |
| **Total** | | **23/40** | **Acceptable** |

---

## Anti-Patterns Verdict

### LLM Assessment
The visual style and navigation are generally clean, but several prominent animation "tells" and anti-patterns make the experience feel unpolished or automated:
- **Infinite Looping Animations:** The pulsing icon on the Floating Action Button is a classic visual distraction that runs continuously regardless of user action or state.
- **Auto-Advance Hijacking:** Automatically changing screens in a setup wizard removes the user's agency.
- **Inconsistent Animation Rhythm:** The absence of global transition guidelines has led to raw millisecond values being littered across individual widgets.

### Deterministic Scan
The static code detector checked `lib/` for design patterns. Because the detector targets Web files (Tailwind, inline CSS, JS/TS elements), it reported **0 hits** on our native Dart/Flutter codebase. However, code inspection revealed direct violations of the project's global design rules regarding raw numbers and localization.

### Visual Overlays
Since this target is a native mobile app rather than a Web page running on localhost, browser inspection and injection were skipped.

---

## Overall Impression
The app's animations have a solid technical foundation (like touch haptics on down-press and repaint boundaries for performance). However, user experience is compromised by forced onboarding pacing, broken native iOS navigation gestures, and infinite decorative loops.

---

## What's Working
1. **Responsive Haptic Feedback:** `TactileContainer` fires haptic feedback on touch down (`_onDown`), providing an exceptionally responsive feel.
2. **Repaint Boundary Isolation:** `AnimatedTypingDots` correctly encapsulates its continuous paint cycles, preventing unnecessary full-screen refreshes in the chat panel.
3. **Snappy Tab Swapping:** Bottom bar navigation swaps instantly (200ms) to ensure high utility efficiency.

---

## Priority Issues

### [P0] Onboarding Hook Screen Auto-Advances Without User Consent
- **Why it matters:** Users read at different speeds and lose agency when the page changes automatically. If they navigate back, they are trapped in a loop where the screen auto-advances again.
- **Fix:** Remove the auto-advance timer. Add a localized primary button (e.g., "Get Started") at the bottom of the screen.
- **Suggested command:** Check [onboarding_slide_hook.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/app/onboarding/screens/onboarding_slide_hook.dart#L26-L34) and delete the timer, then add an action button in the column.

### [P1] Custom Page Route Builder Breaks Native iOS Swipe-Back Gesture
- **Why it matters:** Pushing full-screen views (like `PaywallScreen` or `SettingsScreen`) via a standard `PageRouteBuilder` disables the native edge-swipe back navigation on iOS devices, violating platform conventions.
- **Fix:** Update `fadeSlideRoute` in `page_transitions.dart` to use `CupertinoPageRoute` on iOS platforms or implement a custom route that supports back-gestures.
- **Suggested command:** Edit [page_transitions.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/core/theme/page_transitions.dart#L4-L18).

### [P1] Hardcoded Portuguese Strings in Onboarding Items
- **Why it matters:** The app supports 86 locales, but the demo list items on the first screen show hardcoded Portuguese text (`"Frango grelhado"`, etc.), hurting the app's international presentation.
- **Fix:** Move the food items to localized ARB resource keys.
- **Suggested command:** Run `python3 scripts/translate_missing.py` and `flutter gen-l10n`.

### [P2] Infinite Pulsing of the Kipi FAB Icon
- **Why it matters:** Loop animations that run forever create visual fatigue and ignore screen-reader or system motion reduction rules.
- **Fix:** Limit the pulse to run only 2 times on entry to highlight the button, or pulse only upon hover/tap.
- **Suggested command:** Edit [kipi_fab.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/app/shared/widgets/kipi_fab.dart#L35-L45).

### [P2] Widespread Design Token Violations (Hardcoded Milliseconds)
- **Why it matters:** Using hardcoded timings (`100ms`, `1200.ms`, `600.ms`, `200.ms`) instead of semantic constants from `DurationTokens` breaks centralized control of the animation scale.
- **Fix:** Refactor animation code to use `DurationTokens`.
- **Suggested command:** Refactor [tactile_container.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/app/shared/widgets/tactile_container.dart#L16), [kipi_fab.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/app/shared/widgets/kipi_fab.dart#L43), [animated_typing_dots.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/app/ai/widgets/animated_typing_dots.dart#L32), and [main.dart](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/main.dart#L520).

---

## Persona Red Flags

- **Alex (Impatient Power User):** Forced to wait for the onboarding timer, and distracted by the infinite visual noise of the pulsing FAB icon when entering shopping list items quickly.
- **Jordan (Confused First-Timer):** Surprised by the screen changing by itself, and confused by hardcoded Portuguese list items on an English/Spanish installation.
- **Sam (Tech-Savvy / iOS native):** Frustrated that swipe-back gestures do not work on pushed routes, forcing long extensions to reach the top-left corner back button.
- **Casey (Accessibility-Focused):** Uncontrolled looping motions (FAB icon) cannot be disabled, violating motion sensitivity requirements.

---

## Minor Observations
- `TactileContainer` is missing standard desktop/tablet hover/focus scales, making mouse interaction feel flat.
- `AnimatedTypingDots` would look more polished with a vertical slide/jump offset rather than a scale bounce.
