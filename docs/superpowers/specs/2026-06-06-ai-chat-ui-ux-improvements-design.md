# AI Chat UI/UX Improvements — Design Spec

**Date:** 2026-06-06  
**Files affected:** `lib/app/ai/screens/ai_home_screen.dart`, `lib/app/ai/widgets/ai_chat_panel.dart`

---

## Overview

Seven targeted UI/UX improvements to the Kipi AI chat screen. All changes follow existing Flutter/Riverpod/Material3 patterns in the codebase. No new dependencies required.

---

## Improvements

### 1. Input field — expand to multiline
**File:** `ai_chat_panel.dart` — `_buildInput()`  
Change `maxLines: 1` to `maxLines: 5` and `minLines: 1`. Users typing long messages currently cannot see what they wrote. This is the single highest-impact change.

### 2. Touch targets — feedback buttons
**File:** `ai_chat_panel.dart` — `_FeedbackButton`  
Current padding is `EdgeInsets.all(4)` with 14px icon = ~22px touch target. Increase to `EdgeInsets.all(10)` to reach the Material 3 minimum of 48dp.

### 3. Input padding — reduce horizontal margin when keyboard closed
**File:** `ai_chat_panel.dart` — `_buildInput()`  
Current `isKeyboardOpen ? 5 : 40` leaves only ~280dp for the field on small screens. Change the closed-keyboard padding from 40 to 16, keeping the keyboard-open value at 5.

### 4. Error state — add retry button on chat load failure
**File:** `ai_chat_panel.dart` — `chatState.when()` error branch  
The load-error state shows a message but has no way to recover. Add a `FilledButton` that calls `ref.invalidate(chatSessionProvider(...))` to reload.

### 5. Paywall banner — compact version when keyboard is open
**File:** `ai_chat_panel.dart` — `_buildPaywallBanner()`  
When `_isKeyboardVisible == true`, render a single-line pill chip instead of the full card. The chip shows the key CTA ("Assine o Premium") and taps to open the paywall sheet. This reclaims ~120px of screen real estate during composition.

### 6. Suggested replies — contextual chips after AI responses
**File:** `ai_chat_panel.dart` — `_GroupChatBubble`  
`ChatMessage` already has a `suggestedReplies` field. The welcome message uses it, but no subsequent message does. The AI should be prompted to return suggested replies; on the UI side, the chip row already works — just ensure it renders on all assistant messages that carry `suggestedReplies`, not only the first.  
UI: horizontal `SingleChildScrollView` of `ActionChip` widgets below the last assistant bubble when it has replies.

### 7. Market Mode — active state indicator in AppBar
**File:** `ai_home_screen.dart` — `_buildChat()`  
When `_isMarketMode == true`, show a visual cue in the AppBar so the user knows they are in a special mode. Implementation: add a small colored `Chip` or change the AppBar `backgroundColor` to `theme.colorScheme.primaryContainer` with a subtitle `Text('Modo Mercado')` in the title slot. The simplest approach is adding a `Chip` label next to the title.

### 8. List auto-collapse — remove arbitrary 3s timer
**File:** `ai_home_screen.dart` — `onItemsAdded` callback  
Remove the `Timer(3s)` that force-collapses the list panel. Instead collapse only when the user taps the panel header again. This avoids cutting off users who are still reading the newly added items.

### 9. Teaser fallback text — use l10n string
**File:** `ai_chat_panel.dart` — `sendMessage()` teaser fallback  
The hardcoded Portuguese fallback string will appear in non-PT locales if the AI call fails. Extract to `app_en.arb` (key: `aiTeaserFallback`) and use `l10n.aiTeaserFallback`.

---

## Architecture Notes

- No new providers or models needed.
- Changes #1–#4 and #7–#9 are pure widget/layout changes — low risk.
- Change #5 (compact paywall) extracts logic from `_buildPaywallBanner` into two branches; the existing content is untouched, just wrapped in a conditional.
- Change #6 (suggested replies) — the chip row already works for the welcome message. The only risk is verifying `suggestedReplies` is non-null and non-empty before rendering; no fallback needed if empty.

---

## Out of Scope

- Suggested replies from the AI backend (prompt engineering) — UI-only change here.
- Localization of the teaser content (86 locales) — only the fallback string needs l10n; dynamic AI content is already in the user's locale.
- New animations or visual redesigns.

---

## Success Criteria

- [ ] All touch targets ≥ 44pt
- [ ] No layout overflow on 360dp wide screens (smallest common Android)
- [ ] Paywall banner does not overlap chat content when keyboard is open
- [ ] No regression on existing market mode, streaming, or feedback flows
- [ ] `flutter analyze` passes with zero new warnings
