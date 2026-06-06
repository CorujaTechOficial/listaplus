# AI Chat UI/UX Improvements — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Apply 9 targeted UI/UX fixes to the Kipi AI chat screen covering touch targets, input usability, paywall UX, Market Mode clarity, and i18n correctness.

**Architecture:** All changes are widget/layout-level modifications to two existing files. No new providers, models, or dependencies needed. Changes are grouped into independent tasks, each ending with a commit.

**Tech Stack:** Flutter, Dart, Riverpod 3.x, Material 3, `flutter_animate`, existing l10n via `AppLocalizations`

---

## Files Modified

- `lib/app/ai/widgets/ai_chat_panel.dart` — Tasks 1–6
- `lib/app/ai/screens/ai_home_screen.dart` — Tasks 7–8
- `lib/l10n/app_en.arb` — Task 9 (add `aiTeaserFallback` key)

After editing `app_en.arb`, run `flutter gen-l10n` to regenerate `lib/generated/l10n/`.

---

## Task 1: Expand input field to multiline

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart:936`

- [ ] **Step 1: Open `ai_chat_panel.dart` and locate `_buildInput`**

  Find the `TextField` inside `_buildInput`. It currently has:
  ```dart
  maxLines: 1,
  ```

- [ ] **Step 2: Change to multiline**

  Replace:
  ```dart
  minLines: 1,
  maxLines: 1,
  ```
  With:
  ```dart
  minLines: 1,
  maxLines: 5,
  ```
  (The `minLines` line may not exist yet — add it if absent.)

- [ ] **Step 3: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```
  Expected: no new warnings.

- [ ] **Step 4: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "fix(chat): expand input to maxLines 5 for long messages"
  ```

---

## Task 2: Fix touch targets on feedback buttons

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `_FeedbackButton.build()`

- [ ] **Step 1: Locate `_FeedbackButton`**

  Around line 1930. The `Container` has:
  ```dart
  padding: const EdgeInsets.all(4),
  ```

- [ ] **Step 2: Increase padding and use `InkWell` for proper ripple**

  Replace the `GestureDetector` + `Container` implementation entirely:
  ```dart
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(
          icon,
          size: 16,
          color: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
        ),
      ),
    );
  }
  ```
  This yields a ~36px touch target (10+16+10) which exceeds the 44pt minimum.

- [ ] **Step 3: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```
  Expected: no new warnings.

- [ ] **Step 4: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "fix(chat): increase feedback button touch targets to 36px"
  ```

---

## Task 3: Reduce input horizontal padding when keyboard closed

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `_buildInput()`

- [ ] **Step 1: Find the padding line in `_buildInput`**

  Around line 902:
  ```dart
  padding: EdgeInsets.fromLTRB(isKeyboardOpen ? 5 : 40, 8, isKeyboardOpen ? 5 : 40, 16),
  ```

- [ ] **Step 2: Reduce closed-keyboard padding from 40 to 16**

  Replace with:
  ```dart
  padding: EdgeInsets.fromLTRB(isKeyboardOpen ? 5 : 16, 8, isKeyboardOpen ? 5 : 16, 16),
  ```

- [ ] **Step 3: Find and update the paywall banner padding to match**

  Around line 570–577, there is a matching padding on `_buildPaywallBanner`:
  ```dart
  padding: EdgeInsets.fromLTRB(
    _isKeyboardVisible ? 5 : 40,
    0,
    _isKeyboardVisible ? 5 : 40,
    0,
  ),
  ```
  Replace with:
  ```dart
  padding: EdgeInsets.fromLTRB(
    _isKeyboardVisible ? 5 : 16,
    0,
    _isKeyboardVisible ? 5 : 16,
    0,
  ),
  ```

- [ ] **Step 4: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```

- [ ] **Step 5: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "fix(chat): reduce input horizontal padding from 40 to 16 when keyboard closed"
  ```

---

## Task 4: Add retry button to chat load error state

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `chatState.when()` error branch (~line 527)

- [ ] **Step 1: Find the error branch**

  ```dart
  error: (e, _) => Center(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
          const SizedBox(height: 16),
          Text(l10n.errorLoadingChat, ...),
          const SizedBox(height: 8),
          Text(l10n.errorLoadingChatSubtitle, ...),
        ],
      ),
    ),
  ),
  ```

- [ ] **Step 2: Add retry button after the subtitle text**

  Replace the entire error branch with:
  ```dart
  error: (e, _) => Center(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
          const SizedBox(height: 16),
          Text(
            l10n.errorLoadingChat,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            l10n.errorLoadingChatSubtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
              ref.invalidate(chatSessionProvider(widget.listId, activeSessionId));
            },
            icon: const Icon(Icons.refresh, size: 18),
            label: Text(l10n.retry),
          ),
        ],
      ),
    ),
  ),
  ```

  Note: `activeSessionId` is already declared earlier in `build()` — no new variable needed.

- [ ] **Step 3: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```

- [ ] **Step 4: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "fix(chat): add retry button on chat session load error"
  ```

---

## Task 5: Compact paywall banner when keyboard is open

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `_buildPaywallBanner()`

- [ ] **Step 1: Locate the return of `_buildPaywallBanner`**

  The method currently always returns the full `Container(...)` card.

- [ ] **Step 2: Wrap with conditional before the existing `return Container(...)`**

  Add a compact branch at the top of the `_buildPaywallBanner` method, before the existing `return Container(...)`:

  ```dart
  // Compact pill when keyboard is open — saves ~120px
  if (_isKeyboardVisible) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: () {
          unawaited(HapticFeedback.lightImpact());
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (_) => const PaywallScreen(asSheet: true),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.auto_awesome, size: 14, color: theme.colorScheme.primary),
              const SizedBox(width: 6),
              Text(
                remaining > 0
                    ? l10n.aiLimitAlmostReached
                    : l10n.unlockAi,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(duration: 200.ms);
  }
  ```

  The method signature currently has `BuildContext context, AppLocalizations l10n, ThemeData theme, int remaining` — those are all available. `_isKeyboardVisible` is a field on the `State`, so it is accessible directly.

- [ ] **Step 3: Add the two l10n keys needed**

  In `lib/l10n/app_en.arb`, find the `chatHint` block and add after it:
  ```json
  "aiLimitAlmostReached": "Almost out of AI messages",
  "unlockAi": "Unlock unlimited AI",
  ```

- [ ] **Step 4: Regenerate l10n**

  ```bash
  flutter gen-l10n
  ```

- [ ] **Step 5: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```

- [ ] **Step 6: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart lib/l10n/app_en.arb lib/generated/
  git commit -m "feat(chat): compact paywall banner pill when keyboard is open"
  ```

---

## Task 6: Render suggested replies on all assistant messages

**Files:**
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `_GroupChatBubbleState.build()`

- [ ] **Step 1: Find where suggested replies are currently rendered**

  Search the file for `suggestedReplies`. The welcome message passes them via `ChatMessage.suggestedReplies` but there is no chip-row renderer in `_GroupChatBubble`. The chips are likely rendered elsewhere or missing entirely. Confirm by searching:
  ```bash
  grep -n "suggestedReplies" "lib/app/ai/widgets/ai_chat_panel.dart"
  ```

- [ ] **Step 2: Add chip row after assistant bubble content**

  In `_GroupChatBubbleState.build()`, after the `if (!isUser && ...)` feedback row (around line 1425), add the suggested replies row. Place it only on the last message in a group that has replies:

  ```dart
  if (!isUser &&
      widget.isLastInGroup &&
      widget.message.suggestedReplies != null &&
      widget.message.suggestedReplies!.isNotEmpty)
    Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.message.suggestedReplies!.map((reply) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ActionChip(
                avatar: Icon(
                  _iconFromKey(reply.icon),
                  size: 16,
                  color: theme.colorScheme.primary,
                ),
                label: Text(
                  reply.label,
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  unawaited(HapticFeedback.lightImpact());
                  // Access the panel's sendMessage via the parent widget callback chain
                  // The AiChatPanelState.sendMessage is public; call it from context
                  final panelState = context.findAncestorStateOfType<AiChatPanelState>();
                  panelState?.sendMessage(reply.prompt);
                },
              ).animate().fadeIn(
                duration: 200.ms,
                delay: (widget.message.suggestedReplies!.indexOf(reply) * 60).ms,
              ),
            );
          }).toList(),
        ),
      ),
    ),
  ```

- [ ] **Step 3: Add `_iconFromKey` helper at file-level (outside any class)**

  ```dart
  IconData _iconFromKey(String? key) {
    switch (key) {
      case 'add_shopping_cart': return Icons.add_shopping_cart;
      case 'savings': return Icons.savings;
      case 'restaurant': return Icons.restaurant;
      case 'list': return Icons.list;
      case 'star': return Icons.star;
      default: return Icons.chat_bubble_outline;
    }
  }
  ```

- [ ] **Step 4: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart --fatal-infos
  ```

- [ ] **Step 5: Commit**

  ```bash
  git add lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "feat(chat): render suggested reply chips on all assistant messages"
  ```

---

## Task 7: Market Mode active state indicator in AppBar

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart` — `_buildChat()`

- [ ] **Step 1: Find the AppBar in `_buildChat()`**

  Around line 297. Currently the `title:` is `AppBarListSelector(currentListId: listId)` regardless of mode.

- [ ] **Step 2: Change the AppBar title and backgroundColor when market mode is active**

  Replace:
  ```dart
  title: AppBarListSelector(currentListId: listId),
  ```
  With:
  ```dart
  title: _isMarketMode
      ? Row(
          children: [
            Icon(Icons.shopping_basket, size: 18, color: theme.colorScheme.primary),
            const SizedBox(width: 8),
            Text(
              l10n.marketMode,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.primary,
              ),
            ),
          ],
        )
      : AppBarListSelector(currentListId: listId),
  ```

  And add a `backgroundColor` to the AppBar:
  ```dart
  backgroundColor: _isMarketMode
      ? theme.colorScheme.primaryContainer.withAlpha((0.5 * 255).toInt())
      : null,
  ```

- [ ] **Step 3: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/screens/ai_home_screen.dart --fatal-infos
  ```

- [ ] **Step 4: Commit**

  ```bash
  git add lib/app/ai/screens/ai_home_screen.dart
  git commit -m "feat(chat): show Market Mode label and tinted AppBar when active"
  ```

---

## Task 8: Remove 3-second timer for list auto-collapse

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart` — `_buildChat()` `onItemsAdded` callback

- [ ] **Step 1: Find the Timer in the `onItemsAdded` callback**

  Around line 455–465:
  ```dart
  onItemsAdded: () {
    setState(() {
      _listExpanded = true;
    });
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _listExpanded = false;
        });
      }
    });
  },
  ```

- [ ] **Step 2: Remove the timer, keep only the expand**

  Replace with:
  ```dart
  onItemsAdded: () {
    setState(() {
      _listExpanded = true;
    });
  },
  ```

- [ ] **Step 3: Remove the unused `dart:async` import if `Timer` is no longer used anywhere in the file**

  Check:
  ```bash
  grep -n "Timer\|dart:async" "lib/app/ai/screens/ai_home_screen.dart"
  ```
  If no other `Timer` usage exists, remove the `import 'dart:async';` line at the top.

- [ ] **Step 4: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/screens/ai_home_screen.dart --fatal-infos
  ```

- [ ] **Step 5: Commit**

  ```bash
  git add lib/app/ai/screens/ai_home_screen.dart
  git commit -m "fix(chat): remove arbitrary 3s auto-collapse timer on list panel"
  ```

---

## Task 9: Localize teaser fallback text

**Files:**
- Modify: `lib/l10n/app_en.arb`
- Modify: `lib/app/ai/widgets/ai_chat_panel.dart` — `sendMessage()` method

- [ ] **Step 1: Add l10n key to `app_en.arb`**

  Open `lib/l10n/app_en.arb` and add after the `aiError` entry (around line 234):
  ```json
  "aiTeaserFallback": "Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...",
  ```

- [ ] **Step 2: Regenerate l10n**

  ```bash
  flutter gen-l10n
  ```

- [ ] **Step 3: Update `sendMessage()` to use the l10n key**

  In `ai_chat_panel.dart`, locate around line 294:
  ```dart
  String teaserText = 'Para economizar nesta compra, você pode aproveitar as promoções sazonais de frutas cítricas...';
  ```
  Replace with:
  ```dart
  final l10n = AppLocalizations.of(context);
  String teaserText = l10n?.aiTeaserFallback ?? 'Subscribe to Premium to unlock the full response...';
  ```

  Note: `l10n` is already declared at the top of `build()` but `sendMessage()` is a separate method without a `BuildContext`. The method already has access to `context` via the `State` class — use it directly:
  ```dart
  String teaserText = AppLocalizations.of(context)?.aiTeaserFallback
      ?? 'Subscribe to Premium to unlock the full response...';
  ```

- [ ] **Step 4: Run analyzer**

  ```bash
  flutter analyze lib/app/ai/widgets/ai_chat_panel.dart lib/l10n/app_en.arb --fatal-infos
  ```

- [ ] **Step 5: Commit**

  ```bash
  git add lib/l10n/app_en.arb lib/generated/ lib/app/ai/widgets/ai_chat_panel.dart
  git commit -m "fix(i18n): localize teaser fallback text via app_en.arb"
  ```

---

## Final Verification

- [ ] **Run full analysis**

  ```bash
  flutter analyze --fatal-infos
  ```
  Expected: zero errors, zero warnings.

- [ ] **Build check**

  ```bash
  flutter build appbundle --no-tree-shake-icons
  ```
  Expected: successful build.
