# Share Button no Header — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a visible share IconButton in the AppBar of all screens to invite friends to lists and share the app.

**Architecture:** One IconButton (`Icons.share`) in each screen's AppBar `actions: []`. Telas com lista abrem bottom sheet com 2 opções; telas sem lista abrem share referral direto.

**Tech Stack:** Flutter, Riverpod, SharePlus, ShareService

---

### Task 1: ARB — Add localization keys

**Files:**
- Modify: `lib/l10n/app_en.arb`

- [ ] **Step 1: Add new ARB keys**

Add before the closing `}`:

```arb
  "inviteToList": "Invite to list",
  "@inviteToList": {
    "description": "Button to invite someone to a shopping list"
  },
  "shareApp": "Share app",
  "@shareApp": {
    "description": "Button to share the app with friends"
  },
  "shareAppDescription": "Invite friends to use Lista Plus",
  "@shareAppDescription": {
    "description": "Subtitle for sharing the app option"
  }
```

- [ ] **Step 2: Run gen-l10n**

Run: `flutter gen-l10n`
Expected: regenerates `lib/generated/l10n/` files without errors.

- [ ] **Step 3: Commit**

```bash
git add lib/l10n/app_en.arb lib/generated/l10n/
git commit -m "feat(l10n): add share-related ARB keys"
```

---

### Task 2: ListScreenBody — Add share IconButton to SliverAppBar

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Add `_showInviteSheet` and `_shareReferral` methods**

Add after `_showShareBottomSheet` (around line 538):

```dart
void _showInviteSheet(String listId) {
  final l10n = AppLocalizations.of(context)!;
  final theme = Theme.of(context);
  showModalBottomSheet<void>(
    context: context,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.shareListTitle, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.group_add),
              title: Text(l10n.inviteToList),
              subtitle: Text(l10n.shareRealtime),
              onTap: () {
                Navigator.pop(context);
                _shareViaCode();
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: Text(l10n.shareApp),
              subtitle: Text(l10n.shareAppDescription),
              onTap: () {
                Navigator.pop(context);
                _shareReferral();
              },
            ),
          ],
        ),
      ),
    ),
  );
}

void _shareReferral() {
  SharePlus.instance.share(ShareParams(
    text: 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: https://listaplus.com/invite',
    subject: 'Ganhe 7 dias de Lista Plus Premium!',
  ));
}
```

- [ ] **Step 2: Add IconButton before the search button**

In the `actions: []` block (around line 248), add before the search `IconButton`:

```dart
IconButton(
  icon: const Icon(Icons.share),
  onPressed: () => _showInviteSheet(widget.listId),
  tooltip: l10n.inviteToList,
),
```

Insert at `lib/app/lists/list_screen_body.dart:248` — right before the `IconButton(icon: const Icon(Icons.search), ...)` line. The block becomes:

```dart
actions: [
  if (_selectionMode)
    IconButton(icon: const Icon(Icons.delete_outline), onPressed: () => _deleteSelected)
  else ...[
    IconButton(
      icon: const Icon(Icons.share),
      onPressed: () => _showInviteSheet(widget.listId),
      tooltip: l10n.inviteToList,
    ),
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () => showSearch(
```

- [ ] **Step 2: Run analyze**

Run: `flutter analyze --fatal-infos lib/app/lists/list_screen_body.dart`
Expected: no new errors.

- [ ] **Step 3: Commit**

```bash
git add lib/app/lists/list_screen_body.dart
git commit -m "feat(list): add share button to list screen header"
```

---

### Task 3: AiHomeScreen — Add share IconButton + bottom sheet

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart`

- [ ] **Step 1: Add `_showShareSheet` method in `_AiHomeScreenState`**

Add before the `_handleSystemAction` method (around line 99):

```dart
void _showShareSheet(String listId) {
  final l10n = AppLocalizations.of(context)!;
  final theme = Theme.of(context);
  showModalBottomSheet<void>(
    context: context,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.shareListTitle, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.group_add),
              title: Text(l10n.inviteToList),
              subtitle: Text(l10n.shareRealtime),
              onTap: () {
                Navigator.pop(context);
                _shareViaCode(listId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: Text(l10n.shareApp),
              subtitle: Text(l10n.shareAppDescription),
              onTap: () {
                Navigator.pop(context);
                _shareReferral();
              },
            ),
          ],
        ),
      ),
    ),
  );
}

Future<void> _shareViaCode(String listId) async {
  final isPremium = await ref.read(premiumProvider.future);
  if (!isPremium) {
    if (!mounted) return;
    await Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
    return;
  }
  try {
    final code = await ref.read(shareServiceProvider).createShareCode(listId);
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.shareListTitle),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(AppLocalizations.of(context)!.shareThisCode),
          const SizedBox(height: 16),
          SelectableText(
            code,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              letterSpacing: 4,
              fontWeight: FontWeight.w800,
            ),
          ),
        ]),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  } on Object catch (e) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}

void _shareReferral() {
  SharePlus.instance.share(ShareParams(
    text: 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: https://listaplus.com/invite',
    subject: 'Ganhe 7 dias de Lista Plus Premium!',
  ));
}
```

- [ ] **Step 2: Add IconButton to AppBar actions**

In the `actions: []` of the AppBar (around line 218), add before the energy bar and PopupMenuButton:

```dart
actions: [
  IconButton(
    icon: const Icon(Icons.share),
    onPressed: () => _showShareSheet(listId),
    tooltip: l10n.inviteToList,
  ),
  if (!isPremium && aiUsageAsync.hasValue)
    // ...existing energy bar...
```

Note: since `listId` is in scope in `_buildChat`, the share button should be added inside `_buildChat`. Check that `listId` is the current active list ID.

- [ ] **Step 3: Run analyze**

Run: `flutter analyze --fatal-infos lib/app/ai/screens/ai_home_screen.dart`
Expected: no new errors.

- [ ] **Step 4: Commit**

```bash
git add lib/app/ai/screens/ai_home_screen.dart
git commit -m "feat(ai): add share button to AI screen header"
```

---

### Task 4: RecipesScreen — Add share IconButton with referral

**Files:**
- Modify: `lib/app/recipes/screens/recipes_screen.dart`

- [ ] **Step 1: Add import for SharePlus**

At the top of the file, add the import:

```dart
import 'package:share_plus/share_plus.dart';
```

Check if it's already imported; if not, add it.

- [ ] **Step 2: Add `_shareApp` method**

Add before the `build` method:

```dart
void _shareApp() {
  SharePlus.instance.share(ShareParams(
    text: 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: https://listaplus.com/invite',
    subject: 'Ganhe 7 dias de Lista Plus Premium!',
  ));
}
```

- [ ] **Step 3: Add IconButton to AppBar actions**

In the AppBar `actions:` (around line 103), add:

```dart
actions: [
  IconButton(
    icon: const Icon(Icons.share),
    onPressed: _shareApp,
    tooltip: l10n.shareApp,
  ),
],
```

- [ ] **Step 4: Run analyze**

Run: `flutter analyze --fatal-infos lib/app/recipes/screens/recipes_screen.dart`
Expected: no new errors.

- [ ] **Step 5: Commit**

```bash
git add lib/app/recipes/screens/recipes_screen.dart
git commit -m "feat(recipes): add share button to recipes screen header"
```

---

### Task 5: MealPlannerScreen — Add share IconButton with referral

**Files:**
- Modify: `lib/app/meal_planner/screens/meal_planner_screen.dart`

- [ ] **Step 1: Check SharePlus import**

Confirm `share_plus` is imported. If not, add:
```dart
import 'package:share_plus/share_plus.dart';
```

- [ ] **Step 2: Add `_shareApp` method**

Add before the `build` method:

```dart
void _shareApp() {
  SharePlus.instance.share(ShareParams(
    text: 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: https://listaplus.com/invite',
    subject: 'Ganhe 7 dias de Lista Plus Premium!',
  ));
}
```

- [ ] **Step 3: Add IconButton to AppBar actions**

In the existing `actions: []` (around line 152), add before the existing buttons:

```dart
actions: [
  IconButton(
    icon: const Icon(Icons.share),
    onPressed: _shareApp,
    tooltip: l10n.shareApp,
  ),
  // ...existing shopping_cart and calendar buttons...
```

- [ ] **Step 4: Run analyze**

Run: `flutter analyze --fatal-infos lib/app/meal_planner/screens/meal_planner_screen.dart`
Expected: no new errors.

- [ ] **Step 5: Commit**

```bash
git add lib/app/meal_planner/screens/meal_planner_screen.dart
git commit -m "feat(meal-planner): add share button to meal planner screen header"
```

---

### Task 6: PantryScreen — Add share IconButton with referral

**Files:**
- Modify: `lib/app/pantry/screens/pantry_screen.dart`

- [ ] **Step 1: Check SharePlus import**

Confirm `share_plus` is imported. If not, add:
```dart
import 'package:share_plus/share_plus.dart';
```

- [ ] **Step 2: Add `_shareApp` method**

Add before the `build` method:

```dart
void _shareApp() {
  SharePlus.instance.share(ShareParams(
    text: 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: https://listaplus.com/invite',
    subject: 'Ganhe 7 dias de Lista Plus Premium!',
  ));
}
```

- [ ] **Step 3: Add IconButton to AppBar actions**

In the existing `actions: []` (around line 33), add before the generate shopping list button:

```dart
actions: [
  IconButton(
    icon: const Icon(Icons.share),
    onPressed: _shareApp,
    tooltip: l10n.shareApp,
  ),
  if (pantryAsync.value?.isNotEmpty == true)
    IconButton(
      icon: const Icon(Icons.shopping_cart),
      tooltip: l10n.generateShoppingList,
      onPressed: () => _generateShoppingList(context, ref),
    ),
],
```

- [ ] **Step 4: Run analyze**

Run: `flutter analyze --fatal-infos lib/app/pantry/screens/pantry_screen.dart`
Expected: no new errors.

- [ ] **Step 5: Commit**

```bash
git add lib/app/pantry/screens/pantry_screen.dart
git commit -m "feat(pantry): add share button to pantry screen header"
```
