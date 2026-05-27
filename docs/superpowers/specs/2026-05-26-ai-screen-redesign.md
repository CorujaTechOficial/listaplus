# AI Screen Redesign

**Date:** 2026-05-26
**Status:** Draft
**Author:** opoo (based on user discussions)

## Goal

Reorganize the AI tab screen to be clean and minimal like Gemini / Claude Code while preserving all existing features.

## Layout

```
┌──────────────────────────┐
│ [🤖] Nome da IA      ⋮  │  ← ChatHeader (avatar + nome + PopupMenuButton)
├──────────────────────────┤
│                          │
│   [Mensagens]            │  ← AiChatPanel (chat full screen, sem overlays)
│   (scroll infinito)      │
│                          │
│                          │
│                          │
├──────────────────────────┤
│ {shortcuts}  (escondem   │  ← ChatShortcuts (colapsível no scroll)
│              no scroll)  │
├──────────────────────────┤
│ [Input flexível]       ▶ │  ← ChatInputBar (fixo no bottom)
│ [🎤]                    │
└──────────────────────────┘
```

### Key changes

- **No more dual mode** — the AI tab is **always** the chat. No `_isMarketMode` toggle.
- **No mini-list card** on top of the chat — accessed only via menu.
- **No Stack with backdrop blur** — simplified to a single `Scaffold`.

## Header (`ChatHeader`)

- Leading: AI avatar icon (from `AiConfig`) + AI name
- Title: current list name (subtitle)
- Actions: `PopupMenuButton(icon: Icon(Icons.more_vert))`
  - Trocar Lista → `ListSwitcherSheet`
  - Lista de Compras → `MiniListPanel` (bottom sheet)
  - Modo Mercado → `Navigator.push` → `MarketModeScreen`
  - Histórico → `Navigator.push` → `ChatHistoryScreen`
  - Limpar Conversa → confirm dialog → `clearHistory()`

## AiHomeScreen (simplified)

```dart
class AiHomeScreen extends ConsumerStatefulWidget { ... }

// Removed:
// - _listExpanded state
// - _isMarketMode state
// - _CompactListCard widget
// - Stack with backdrop blur
// - FAB for market mode chat
// - Timer for auto-collapse

// New body:
Scaffold(
  appBar: ChatHeader(listId: listId, listName: listName),
  body: AiChatPanel(listId: listId, listName: listName),
)
```

Watchers: `currentListIdProvider`, `systemActionProvider` (kept for paywall/review/update actions).

## MarketModeScreen (new, extracted)

Extracted from `_CompactListCard` when `isMarketMode == true` (lines 384-492 of current `ai_home_screen.dart`).

- Full-screen `Scaffold` with AppBar (title "Modo Mercado", back button)
- Body: `AnimatedSize` → progress header + `ListView.builder` + "Concluir Compras" button
- `ShoppingItemTile` for each item (same as today)
- No FAB for chat (different screen, not needed)

## MiniListPanel (new, extracted)

Replaces the collapsible `_CompactListCard` overlay.

- Opens as a modal bottom sheet from the menu
- Snap points: 0.4 / 0.8 (via `DraggableScrollableSheet`)
- Shows: item count badge, progress bar, scrollable `ListView` of `ShoppingItemTile`
- Closes on swipe down or backdrop tap
- No backdrop blur (sheet is self-contained)

## AiChatPanel (refactored)

Current: 2815 lines, one file doing everything.

Split into focused widgets, each with its own file:

| Widget | Responsibility | Est. lines |
|---|---|---|
| `ChatHeader` | AI avatar + name + PopupMenuButton | 80 |
| `ChatMessageList` | Scrollable message list with `ScrollController`, typing indicator, "thinking" orb | 200 |
| `ChatBubble` | Individual message: markdown, actions, feedback, copy, regenerate | 300 |
| `ChatInputBar` | Text field, voice/mic toggle, send button (fixo no bottom) | 120 |
| `ChatShortcuts` | Dynamic shortcut chips above input, hide on scroll | 80 |
| `ChatSuggestedReplies` | Suggested reply chips below AI messages | 60 |
| `AgentSteps` | Collapsible agent action steps with undo | 150 |
| `MiniListPanel` | Modal bottom sheet with shopping list items | 150 |

`AiChatPanel` becomes a coordinator (~200 lines):

```dart
Scaffold(
  body: Column(
    children: [
      Expanded(
        child: ChatMessageList(listId: listId),
      ),
      ChatShortcuts(listId: listId, scrollController: ...),
      ChatInputBar(listId: listId),
    ],
  ),
)
```

### Shortcut behavior

- Chips appear above the input when idle
- They fade/slide away when the user scrolls the message list down
- Reappear when the user scrolls back to the top

## File structure

```
lib/app/ai/
├── screens/
│   ├── ai_home_screen.dart        ← ~60 lines, just header + chat
│   ├── chat_screen.dart           ← Kept (standalone full-screen)
│   ├── chat_history_screen.dart   ← Kept
│   └── market_mode_screen.dart    ← New (extracted)
├── widgets/
│   ├── ai_chat_panel.dart         ← Coordinator, ~200 lines
│   ├── chat_header.dart           ← New
│   ├── chat_message_list.dart     ← New
│   ├── chat_bubble.dart           ← New
│   ├── chat_input_bar.dart        ← New
│   ├── chat_shortcuts.dart        ← New
│   ├── agent_steps.dart           ← New
│   ├── mini_list_panel.dart       ← New (replaces inline _CompactListCard)
│   ├── suggested_replies.dart     ← New
│   └── ai_chat_sheet.dart         ← Kept
├── providers/                     ← Unchanged
└── agent/                         ← Unchanged
```

## Code duplication fixes (minor)

- `share_tools.dart`: either populate or remove the file
- `recipe_tools.dart` / `meal_planner_tools.dart`: move tool definitions from `config_tools.dart` into their dedicated files
- Remove duplicate feedback thumbs inside `_GroupChatBubble` (keep only the below-bubble version)

## Preservation

All features kept: voice, shortcuts, suggested replies, steps/undo, artifacts, markdown, code blocks, feedback, regenerate, copy, paywall banner, energy bar, search history, premium gate, system actions (paywall/review/update/referral).

## Non-goals

- No changes to providers, agent loop, or backend logic
- No changes to the AI tab's position in navigation (still tab 0)
- No removal of `ChatScreen` or `ChatHistoryScreen`
