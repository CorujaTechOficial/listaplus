---
target: tela de chat ai
total_score: 32
p0_count: 0
p1_count: 0
timestamp: 2026-06-20T19-03-11Z
slug: lib-app-ai-widgets-ai-chat-panel-dart
---
## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 4 | Thinking indicator + streaming caret + activity text + agent step statuses + send/stop swap. Exemplary. |
| 2 | Match System / Real World | 4 | Plain language, familiar chat metaphor, cart-glyph item chips. |
| 3 | User Control and Freedom | 4 | Stop/cancel, undo agent actions, edit, regenerate, new chat, delete session. |
| 4 | Consistency and Standards | 3 | Paywall opens 3 different ways; raw `fontSize` literals bypass the type scale. |
| 5 | Error Prevention | 3 | Char limit enforced, delete confirm dialog, input blocked while streaming. |
| 6 | Recognition Rather Than Recall | 3 | Suggested replies + capabilities + history search; AppBar actions icon-only. |
| 7 | Flexibility and Efficiency | 3 | Voice, quick-add, regenerate — but message actions live only under the last turn. |
| 8 | Aesthetic and Minimalist Design | 3 | Clean and restrained; chrome stacks (banner + suggestions + input) on small screens. |
| 9 | Error Recovery | 3 | Strong offline/error view with retry; a failed agent step has no per-step retry. |
| 10 | Help and Documentation | 2 | Empty state teaches + tooltips, but no explicit help affordance. |
| **Total** | | **32/40** | **Good — solid foundation, address weak areas** |

## Anti-Patterns Verdict

**LLM assessment:** Does NOT read as AI-generated. This is genuinely crafted product UI. Design tokens (`Spacing`, `RadiusTokens`, `DurationTokens`) used throughout, semantic colors (`AppSemanticColors`) instead of raw `Colors.*`, full-border blockquotes (the side-stripe ban is explicitly honored in a code comment), no gradient text, no glassmorphism, no identical-card grids. The teaser `ShaderMask` is a legit fade mask (`BlendMode.dstIn`), not banned gradient text. Kipi avatar gives the assistant a consistent identity in-transcript. Restrained green anchor + amber scarcity exactly matches the DESIGN.md strategy.

**Deterministic scan:** `detect.mjs` returned `[]` — it parses HTML/JSX/CSS, not Dart. Effectively unavailable for this stack; not a real clean signal. No findings either way.

**Visual overlays:** None. Target is native Flutter; device screenshot came back black (screen asleep / app not on the chat route). No reliable user-visible overlay available — fallback to source review only.

## Overall Impression

This is a well-built chat surface that already clears the product register's bar: the tool disappears into the task, status is always legible, and the assistant has identity without spectacle. The remaining work is polish-tier, not structural. Biggest single opportunity: **kill the typographic drift** — dozens of raw `fontSize: 11/12/13/15` literals across bubbles, teaser, actions, and counter undercut the "premium earned through polish" principle and the register's fixed-scale rule. Second: make the **three paywall entry points present identically**.

## What's Working

1. **System status is a genuine strength.** Streaming caret (`▌`, blinks at 530ms, holds solid under reduced-motion/test), `ThinkingIndicator` with a live-region label and per-activity text ("searching", "adding items"), agent-step running/success/error/locked states, and the send→stop button swap. A user is never guessing.
2. **Empty state sells instead of apologizing.** Mascot + named greeting + value pitch + three tappable concrete capabilities with staggered entrance. This is the "isso parece fácil / útil" sequence from PRODUCT.md done right.
3. **Control & recovery.** Cancel mid-stream, undo agent actions (inline + expanded), edit-on-long-press, regenerate, and a real offline-vs-error view with a retry button and plain-language copy.

## Priority Issues

**[P2] Typographic drift — raw `fontSize` literals bypass the type scale**
- **Why it matters:** DESIGN.md defines a real type ramp (display/headline/title/body/label) and the product register mandates a fixed scale via `textTheme`. Instead, `chat_bubble.dart` (15, 13, 22/20/18), `chat_input_bar.dart`, `agent_action_steps.dart` (11/12), the teaser (11), and the scroll-to-bottom button (12) hardcode sizes. Drift accumulates into the "subtly-off" feel a category-fluent user pauses at, and breaks text scaling for low-vision users.
- **Fix:** Replace raw `fontSize` with `theme.textTheme.*` roles (`labelSmall`/`bodyMedium`/`titleMedium`) + `.copyWith` only for weight/color. Where a true intermediate is needed, add a token, don't inline a literal.
- **Suggested command:** `/impeccable typeset`

**[P2] Paywall presents three different ways from one screen**
- **Why it matters:** `AiUsageBanner` opens it as a `showModalBottomSheet` (`asSheet: true`); the teaser unlock button and the premium-unlock card both `Navigator.push` the full `PaywallScreen`. Same destination, same decision, three transitions. On a conversion surface, inconsistency erodes the trust the register says drives conversion more than spectacle.
- **Fix:** Pick one presentation for "upgrade from chat" (the bottom sheet is the lighter, less-interrupting choice that fits "cobrança como extensão natural") and route all three entry points through it.
- **Suggested command:** `/impeccable harden`

**[P2] Sub-44px touch targets on inline actions**
- **Why it matters:** WCAG AA is an explicit project goal. The inline undo button (`minimumSize: Size(0, 24)`), the expanded "undo changes" button (24h), the teaser unlock (40h), and the item-link chips (1px vertical padding) all sit under the 44×44 floor. Hardest on Sam (motor) and Casey (one-handed mobile).
- **Fix:** Floor interactive controls at 44×44 (use `tapTargetSize`/padding to grow the hit area without growing the visual), keep the visual compact if needed.
- **Suggested command:** `/impeccable adapt`

**[P2] Spinner instead of skeleton for history load**
- **Why it matters:** The product register says "skeleton states for loading, not spinners in the middle of content." `AiChatPanel` and the history drawer both render a centered `CircularProgressIndicator` while the session loads, so the screen flashes empty→spinner→content.
- **Fix:** Swap the chat-history loading state for a lightweight skeleton of 2–3 bubble placeholders; keep the spinner only for truly indeterminate sub-second waits.
- **Suggested command:** `/impeccable polish`

**[P3] Message actions only under the last assistant turn**
- **Why it matters:** Copy/like/dislike/regenerate render only on `isLastMessage`. Intentional ("clean transcript"), but Alex (power user) and Riley (stress tester) can't re-copy or regenerate an earlier answer without selecting raw text. A scroll-back-and-act flow is impossible.
- **Fix:** Either keep the clean transcript and add a long-press context menu (copy/regenerate) on any assistant bubble, or fade-in a compact action row on hover/focus of older turns.
- **Suggested command:** `/impeccable delight`

## Persona Red Flags

**Jordan (First-Timer):** AppBar actions are icon-only — `Icons.add_comment` for "new chat" is an ambiguous glyph (reads as "comment", not "+ new"). Tooltips exist but don't show on first tap on mobile. The history affordance (clock icon → end drawer) is discoverable only by guessing.

**Sam (Accessibility):** Inline undo (24h) and item chips fail the 44px target. AI body text at `onSurface.withValues(0.82)` and error body at `0.80` are borderline — verify ≥4.5:1 on `surface` in both themes. Streaming caret re-parses markdown twice a second — confirm it doesn't spam the screen-reader (it shouldn't, since the live region is the separate `ThinkingIndicator`, but the caret bubble is `selectable`).

**Casey (Distracted Mobile):** Input is correctly bottom-anchored in the thumb zone — good. But banner + suggested replies + input stack above the keyboard; on a small screen the suggestions are the first thing sacrificed (handled), yet the usage banner still narrows the compose area. Horizontal suggested-replies row has no edge fade, so offscreen chips are invisible.

## Minor Observations

- Scroll-to-bottom button and char counter use ad-hoc `TextStyle(fontSize: 12, ...)` — same drift as P2-typeset.
- AI headings render in `primary` green (h1 22 / h2 20 / h3 18); a model that emits many headings will make the transcript feel heavy and loud. Consider capping heading emphasis inside chat.
- Suggested-replies row: a soft right-edge gradient mask would signal "more chips →".
- A failed agent step shows "failed" with no inline retry — only full-message regenerate recovers it.
- User bubble (`primaryContainer @ 0.45` + border) vs AI plain text is a deliberate, good asymmetry — keep it.

## Questions to Consider

- The transcript intentionally strips actions from older turns for cleanliness. Is "re-copy / regenerate an earlier answer" a flow users actually need, or is the clean transcript worth more?
- Should "upgrade from chat" ever take over the full screen, or always stay a calm sheet that keeps the conversation visible behind it?
- AI headings in green: does heading color earn its weight inside a chat bubble, or would `onSurface` + weight be calmer?
