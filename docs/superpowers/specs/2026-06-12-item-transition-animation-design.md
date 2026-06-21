# Item Transition Animation — Design Spec

**Date:** 2026-06-12  
**Feature:** Animate shopping items transitioning from pending → purchased  
**Status:** Approved

---

## Problem

When a user marks an item as purchased, it instantly disappears from the pending section and reappears in the purchased section (teleport). This disorients the user because there's no visual continuity between the two states.

---

## Approach

Exit animation in the tile + delayed Firebase call + entry animation wrapper in the purchased section. No changes to providers or state architecture.

---

## Components

### 1. `ShoppingItemTile` — migrate to `ConsumerStatefulWidget`

**File:** `lib/app/lists/widgets/shopping_item_tile.dart`

Add to state class:
- `late AnimationController _exitController` — 250ms, `Curves.easeIn`
- `late Animation<double> _sizeAnim` — drives `SizeTransition`
- `late Animation<double> _opacityAnim` — drives `FadeTransition`
- `bool _exiting = false` — guard against double-tap and Riverpod race

Exit animation chain (wrap existing widget tree):
```dart
SizeTransition(
  sizeFactor: _sizeAnim,
  axisAlignment: -1,
  child: FadeTransition(
    opacity: _opacityAnim,
    child: <existing tile content>,
  ),
)
```

Tap handler change (purchase path only — when `!isPurchased && !selectionMode`):
```
if (_exiting) return;
_exiting = true;
HapticFeedback.mediumImpact();
await _exitController.forward();
await ref.read(...).togglePurchased(item.id);
if (isShoppingMode && context.mounted) _askToAddToPantry(...)
```

Tap handler when `isPurchased` (unmark): call `togglePurchased` directly, no animation.

**Animation curves:**
- Size: `Tween(begin: 1.0, end: 0.0)` with `Curves.easeIn`
- Opacity: `Tween(begin: 1.0, end: 0.0)` with `Curves.easeIn`
- Duration: 250ms

**Dispose:** `_exitController.dispose()` in `dispose()`.

---

### 2. `AnimatedEntryWrapper` — new public widget

**File:** `lib/app/lists/widgets/shopping_item_tile.dart` (bottom of file, public — used by `list_screen_body.dart`)

```dart
class AnimatedEntryWrapper extends StatefulWidget {
  const AnimatedEntryWrapper({super.key, required this.child});
  final Widget child;
}
```

State:
- `late AnimationController _ctrl` — 300ms, `Curves.easeOut`
- `late Animation<double> _fade` — 0.0 → 1.0
- `late Animation<Offset> _slide` — Offset(0, 0.12) → Offset.zero

`initState`: calls `_ctrl.forward()`

Widget tree:
```dart
FadeTransition(
  opacity: _fade,
  child: SlideTransition(
    position: _slide,
    child: widget.child,
  ),
)
```

**Dispose:** `_ctrl.dispose()`.

---

### 3. `list_screen_body.dart` — wrap purchased tiles

**File:** `lib/app/lists/list_screen_body.dart`

In the purchased `SliverList`, wrap each `ShoppingItemTile` with `_AnimatedEntryWrapper`:

```dart
SliverList(
  delegate: SliverChildBuilderDelegate(
    (context, index) => AnimatedEntryWrapper(
      key: ValueKey('entry_${purchased[index].id}'),
      child: ShoppingItemTile(...),
    ),
    childCount: purchased.length,
  ),
)
```

The `ValueKey` on `_AnimatedEntryWrapper` ensures Flutter mounts a fresh instance when an item first enters the purchased section, triggering `initState` and the entry animation. Items already in the purchased section on screen load animate once briefly (300ms, acceptable).

---

## Timing

| Event | Duration |
|---|---|
| Exit (size + fade out) | 250ms |
| Firebase `togglePurchased` | ~100–500ms (network) |
| Entry (fade + slide in) | 300ms |

Total perceived transition: ~550–1050ms depending on network. The exit animation is the most important part — it removes the abrupt disappearance. The network latency gap is covered by the exit animation playing through.

---

## Edge Cases

| Case | Behavior |
|---|---|
| Double-tap during exit | `_exiting` guard returns early, no duplicate call |
| Firebase fails after animation | Item re-appears in pending on next Riverpod rebuild (brief flicker acceptable) |
| Un-marking purchased item | No exit animation, direct `togglePurchased` call |
| Selection mode tap | No exit animation (selection, not purchase) |
| Shopping mode → pantry prompt | `_askToAddToPantry` still fires after Firebase resolves |
| `SliverReorderableList` (manual sort) | Exit animation works — it's inside the tile, not list-level |
| Batch mark via FAB (`_markSelected`) | No per-item animation (batch operation — acceptable) |

---

## Files Changed

| File | Change |
|---|---|
| `lib/app/lists/widgets/shopping_item_tile.dart` | `ConsumerWidget` → `ConsumerStatefulWidget`, add exit animation |
| `lib/app/lists/list_screen_body.dart` | Wrap purchased tiles with `_AnimatedEntryWrapper` |

No changes to: providers, models, Firebase layer, routing.
