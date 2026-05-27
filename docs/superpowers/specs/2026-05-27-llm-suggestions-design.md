# LLM-Generated Chat Suggestions

## Problem

Current chat suggestions (`_generateSuggestedReplies`, `_getDynamicShortcuts`) are 100% hardcoded — keyword matching produces generic, context-blind chips. The LLM already has full conversation context but the UI ignores it for suggestions.

## Solution

Shift suggestion generation from client-side heuristics to the LLM. The AI model (DeepSeek-v4-flash) appends a structured JSON block at the end of each streaming response with 2-3 suggested next actions + icons.

## Architecture

### 1. New Model: `SuggestedReply`

```dart
class SuggestedReply {
  final String label;    // chip display text
  final String prompt;   // text sent on tap
  final String icon;     // Material icon name, e.g. "add_shopping_cart"
}
```

### 2. ChatMessage Changes

- `suggestedReplies` changes type: `List<String>?` → `List<SuggestedReply>?`
- `fromJson` handles legacy `List<String>` by mapping each string to `SuggestedReply(label: s, prompt: s, icon: 'chat')`
- `toJson` serializes in new format

### 3. System Prompt Addition

In `_getCurrentSystemPrompt()`, append:

```
At the end of every response, include a suggestion block:
[SUGGESTIONS]
[{"label":"Button text","prompt":"What to send when tapped","icon":"material_icon_name"}]
[/SUGGESTIONS]
Provide 2-3 suggestions that predict the user's next action based on context.
Choose icons from: add_shopping_cart, receipt_long, restaurant_menu, menu_book,
local_fire_department, eco, cleaning_services, savings, trending_up, cake,
shopping_cart, check_circle, delete, edit, share, map, search, lightbulb,
tips_and_updates, organize, kitchen, grocery, calendar_month, schedule,
group_add, archive
```

### 4. Streaming Parse (`_streamResponse`)

After stream completes, scan `buffer` for `[SUGGESTIONS]...[/SUGGESTIONS]`:
- Extract JSON, parse into `List<SuggestedReply>`
- Remove the block from the displayed text
- On parse failure: fall back to existing `_generateSuggestedReplies()` + `_getDynamicShortcuts()`

### 5. UI: Unified Chip

- `_SuggestedReplyChip` + `_ShortcutChip` → single `_SuggestionChip` (icon + label)
- Rendered in same horizontal scroll row
- Order: LLM suggestions first, fallback shortcuts second
- Fallback shortcuts keep their hardcoded icons
- Two layouts (AiChatPanel full, AiChatSheet compact) share the same widget

### Files Changed

| File | Change |
|------|--------|
| `lib/domain/entities/chat_message.dart` | Add `SuggestedReply` class; change `suggestedReplies` type |
| `lib/app/ai/providers/chat_provider.dart` | Add prompt instructions; parse `[SUGGESTIONS]` block; fallback logic |
| `lib/app/ai/widgets/ai_chat_panel.dart` | Unify chip widgets; add icon mapping |

### Backward Compatibility

- Old `List<String>` in Firestore parsed gracefully in `fromJson`
- If LLM omits the block, fallback activates silently
- Empty suggestions = no chips rendered (current behavior)
