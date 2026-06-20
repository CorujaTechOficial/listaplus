# Shopping List Screen Recomposition

Date: 2026-06-20
Surface: `lib/app/lists/list_screen_body.dart`
Register: product
Status: proposed

## Goal

Recompose the shopping list screen so the default experience feels like list management first, with shopping mode as a secondary acceleration state.

The redesign should reduce cognitive load, restore the list as the primary content, compress persistent status chrome, and make bottom capture actions feel stable and intentional.

## Product Intent

This screen should feel like a competent household tool:

- fast to read
- calm under repeated use
- powerful without looking overloaded
- premium through hierarchy and polish, not decoration

The main user promise on this surface is: "I can add, review, organize, and complete my shopping list with very little friction."

## Primary UX Decisions

### 1. Default posture

The screen remains a list-management surface by default.

- Users land in list overview and item management, not shopping mode.
- Shopping mode remains available, but it is a contextual task state.
- Selection mode remains available, but should feel like a lightweight overlay on the same screen, not a full identity swap.

### 2. Status summary posture

Progress and budget remain important, but no longer own a large persistent header.

- Replace the current multi-row status header with a compact summary band.
- The compact band shows:
  - purchased/total progress
  - purchased total amount
  - budget state signal when budget exists
- Detailed budget/progress information moves into an expandable panel or tappable summary disclosure.

### 3. Action hierarchy

The visible hierarchy becomes:

1. list title/context
2. add and act on items
3. browse/sort/filter
4. secondary list utilities

This means quick add and the visible list must dominate the composition. Share, export, budget editing, profile, and settings move deeper into secondary actions.

## Composition

### Top app bar

The app bar becomes simpler and more stable.

- Title area:
  - current list selector remains the title anchor
- Persistent actions:
  - search
  - overflow for list actions
- Optional contextual action:
  - shopping mode entry stays available, but is reduced in prominence versus today
- Account/profile entry should not compete with list work in the main leading slot unless there is a strong existing product reason to keep it there

The goal is to remove the feeling that the top bar is a command center.

### Compact summary band

Directly below the app bar, introduce a single compact summary region.

Collapsed state:

- one concise progress line
- one monetary line
- budget status indicator only when relevant
- one clear affordance to expand

Expanded state:

- full progress details
- budget detail/progress
- sort and filter controls in a cleaner grouped presentation

This region must feel like contextual metadata for the list, not the hero of the screen.

### Main content

The list content should start earlier vertically and become the focal plane.

- Pending items come first
- Purchased items remain below, but with quieter section treatment
- Category grouping remains supported
- Manual reorder remains available when appropriate

Purchased section styling should avoid loud separators or generic dashboard-like treatment. It should feel like a resolved part of the same task flow.

### Bottom action region

The bottom region becomes one stable action zone.

Normal state:

- dominant quick-add field
- secondary catalog entry

Shopping mode:

- preserve the same base visual structure
- add the exit affordance without making the region feel like a different component family

Selection mode:

- preserve the same anchoring region
- expose batch actions in a way that feels layered onto the same base structure

The user should stop feeling that each mode rebuilds the screen from scratch.

## Behavioral Rules By State

### Normal state

- App bar stays minimal
- Compact summary is collapsed by default
- List is the dominant visible surface
- Quick add is always obvious

### Expanded summary state

- User can inspect budget and progress without leaving the list
- Sort/filter controls live here more naturally than as a permanent large header
- Expanded state must collapse cleanly and not trap the user in extra chrome

### Shopping mode

- Treated as a focused working state layered onto the same surface
- Emphasis shifts toward checking off and adding fast
- The app bar and bottom region may adapt, but should keep positional continuity

### Selection mode

- Batch actions become visible
- The interface should communicate "selection is active" clearly
- The rest of the composition should remain recognizable

### Empty state

- Keep suggestion-led onboarding
- Align it visually with the stronger quick-add-first model
- Use one dominant action path

### Completion state

- Celebrate completion first
- Offer next-step value second
- Premium upsell, if present, must feel subordinate to the success moment

## Widget-Level Impact

### `list_screen_body.dart`

This file remains the orchestration layer, but should be simplified around clearer composition zones:

- app bar
- compact/expanded summary
- list content
- bottom action region
- mode-specific overlays/adaptations

Avoid adding more state branching inline. Prefer extracting the recomposed sections into focused widgets.

### `progress_info_header.dart`

This widget should be redesigned or replaced.

Its current responsibility bundle is too broad. It should become a compact summary component with expansion behavior, or split into:

- summary band
- expanded details panel

### `filter_bar.dart`

Filter and sort controls move into the expanded summary instead of living as a standalone always-heavy control row.

### `kipi_quick_bar.dart`

This becomes the anchor of the bottom region and should remain visually dominant.

It may need:

- cleaner relation to catalog access
- stronger stable identity across modes
- better loading/error/recovery feedback

### `selection_bottom_bar.dart`

This should be reconsidered as part of a shared bottom action system rather than a separate identity.

### `shopping_completion_view.dart`

This needs a calmer completion composition:

- success first
- utility second
- upgrade later and lighter

### `empty_state.dart`

Keep the current usefulness, but align it with the recomposed hierarchy and stable bottom capture model.

## Visual Language Rules

- Preserve Material 3 familiarity
- Reduce simultaneous emphasis points
- Use tonal layering over extra structure
- Avoid introducing new decorative motifs
- Keep touch targets generous
- Keep the list tiles visually compact and trustworthy

The redesign should feel more edited, not more styled.

## Error Handling And Trust

The recomposition should create room for better recovery behavior:

- structured error presentation instead of raw error text
- clearer quick-add failure feedback
- more forgiving transitions between interaction states

These are not separate features; they are part of making the surface feel premium and dependable.

## Testing Expectations

Implementation must verify:

- normal mode
- expanded summary open/closed
- shopping mode continuity
- selection mode continuity
- empty state
- completion state
- long list behavior
- grouped and ungrouped lists
- budget present and absent
- small and large screen layout stability

## Success Criteria

The redesign is successful if:

- users reach items faster
- the screen feels lighter without losing capability
- list actions are easier to understand at a glance
- shopping mode feels secondary but useful
- budget/progress remain available without dominating the screen
- the bottom action region feels stable across states

## Out Of Scope

- changing the underlying list domain model
- removing shopping mode
- changing Firestore/provider behavior unrelated to UI composition
- broad redesign of unrelated screens
