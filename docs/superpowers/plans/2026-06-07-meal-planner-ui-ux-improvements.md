# Meal Planner UI/UX Improvements Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Transform the Meal Planner into a dynamic, tactile, and contextually aware tool with Drag & Drop, Pantry integration, and Smart List generation.

**Architecture:**
- **Logic:** Enhance `MealPlansProvider` with movement methods and stock-aware shopping list generation.
- **UI:** Implement `LongPressDraggable` and `DragTarget` for interaction; use `AnimatedSwitcher` for smooth transitions; add status badges using a hybrid pantry-check logic.
- **Ecosphere:** Standardize 100ms scale animations for tactile feedback.

**Tech Stack:** Flutter, Riverpod, Material 3, Firestore.

---

### Task 1: Provider Enhancements (Logic)

**Files:**
- Modify: `lib/app/meal_planner/providers/meal_planner_providers.dart`
- Test: `test/app/meal_planner/providers/meal_planner_providers_test.dart` (Create if missing)

- [ ] **Step 1: Write test for `moveMealPlan`**
```dart
test('moveMealPlan updates date and mealType', () async {
  final plan = MealPlan(id: '1', date: DateTime(2026, 6, 7), recipeId: 'r1', recipeName: 'Test');
  // ... mock firestore call
  await notifier.moveMealPlan('1', DateTime(2026, 6, 8), MealType.dinner);
  // ... verify saveMealPlan was called with updated fields
});
```

- [ ] **Step 2: Implement `moveMealPlan` in `MealPlans` class**
```dart
Future<void> moveMealPlan(String id, DateTime newDate, MealType newType) async {
  final plans = state.value ?? [];
  final existing = plans.firstWhere((p) => p.id == id);
  final updated = existing.copyWith(date: newDate, mealType: newType);
  await saveMealPlan(updated);
}
```

- [ ] **Step 3: Refactor `generateShoppingListFromWeek` for Smart Logic**
Modify the logic to subtract quantities found in `pantryItemsProvider`.
```dart
// lib/app/meal_planner/providers/meal_planner_providers.dart
// Inside generateShoppingListFromWeek():
final pantryItems = await ref.read(pantryItemsProvider.future);
// ... when calculating ingredientMap[key]:
final inPantry = pantryItems.where((pi) => pi.name.toLowerCase() == ingredient.name.toLowerCase()).firstOrNull;
final availableQty = inPantry?.currentQuantity ?? 0;
final neededQty = (scaledQty - availableQty).clamp(0, 9999);
if (neededQty <= 0) continue; // Skip if already in stock
// ...
```

- [ ] **Step 4: Verify with unit tests**
Run: `flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart`

- [ ] **Step 5: Commit**
```bash
git add lib/app/meal_planner/providers/meal_planner_providers.dart
git commit -m "feat(meal-planner): add moveMealPlan and smart list generation logic"
```

---

### Task 2: UI Transitions & Tactile Feedback

**Files:**
- Modify: `lib/app/meal_planner/screens/meal_planner_screen.dart`
- Modify: `lib/app/meal_planner/widgets/meal_day_card.dart`
- Modify: `lib/app/meal_planner/widgets/add_meal_plan_sheet.dart`

- [ ] **Step 1: Add `AnimatedSwitcher` to View Toggles**
Wrap the `_WeeklyView` and `_MonthlyView` conditional in `MealPlannerScreen.build`.
```dart
child: AnimatedSwitcher(
  duration: DurationTokens.medium,
  transitionBuilder: (child, animation) => FadeTransition(
    opacity: animation,
    child: SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.05, 0), end: Offset.zero).animate(animation),
      child: child,
    ),
  ),
  child: _isWeekly ? _WeeklyView(...) : _MonthlyView(...),
),
```

- [ ] **Step 2: Standardize Tactile Feedback (Scale Animation)**
Wrap `MealDayCard` and `_RecipeListItem` (in AddMealPlanSheet) with a `ScaleOnTap` or similar custom widget (or use `InkWell` with sutil transform).
```dart
// Create lib/app/shared/widgets/tactile_container.dart if needed or inline:
GestureDetector(
  onTapDown: (_) => setState(() => _isPressed = true),
  onTapUp: (_) => setState(() => _isPressed = false),
  child: AnimatedScale(scale: _isPressed ? 0.98 : 1.0, duration: const Duration(milliseconds: 100), child: ...),
)
```

- [ ] **Step 3: Contextual Default MealType**
In `AddMealPlanSheet.initState`, set `_selectedType` based on `DateTime.now().hour`.
```dart
final hour = DateTime.now().hour;
if (hour < 11) _selectedType = MealType.breakfast;
else if (hour < 15) _selectedType = MealType.lunch;
else if (hour < 19) _selectedType = MealType.snack;
else _selectedType = MealType.dinner;
```

- [ ] **Step 4: Commit**
```bash
git add lib/app/meal_planner/screens/meal_planner_screen.dart lib/app/meal_planner/widgets/
git commit -m "style(meal-planner): add transitions, tactile feedback, and contextual defaults"
```

---

### Task 3: Pantry Integration (UI Indicators)

**Files:**
- Modify: `lib/app/meal_planner/widgets/meal_day_card.dart`
- Modify: `lib/app/meal_planner/widgets/add_meal_plan_sheet.dart`

- [ ] **Step 1: Implement `PantryStatusBadge` Widget**
Create a reusable widget that takes a `Recipe` and returns the availability status.
```dart
class PantryStatusBadge extends ConsumerWidget {
  final String recipeId;
  // ... logic to read recipesProvider and pantryItemsProvider
  // returns Container with Green Check or Orange "Faltam X"
}
```

- [ ] **Step 2: Add Badge to `_MealEntryTile` in `meal_day_card.dart`**
Insert the badge into the `subtitle` or `trailing` of the `ListTile`.

- [ ] **Step 3: Add Badge to `_RecipeListItem` in `add_meal_plan_sheet.dart`**
Show status during recipe selection.

- [ ] **Step 4: Commit**
```bash
git add lib/app/meal_planner/widgets/
git commit -m "feat(meal-planner): integrate pantry status indicators in UI"
```

---

### Task 4: Drag & Drop Implementation

**Files:**
- Modify: `lib/app/meal_planner/widgets/meal_day_card.dart`

- [ ] **Step 1: Wrap `_MealEntryTile` in `LongPressDraggable`**
```dart
LongPressDraggable<MealPlan>(
  data: plan,
  feedback: Material(
    color: Colors.transparent,
    child: Transform.scale(scale: 1.05, child: _MealEntryTile(...)),
  ),
  childWhenDragging: Opacity(opacity: 0.5, child: _MealEntryTile(...)),
  child: _MealEntryTile(...),
)
```

- [ ] **Step 2: Wrap `MealDayCard` in `DragTarget`**
```dart
DragTarget<MealPlan>(
  onWillAccept: (data) => data?.date != date, // Can't drop on same day unless reordering (stretch goal)
  onAccept: (plan) {
    ref.read(mealPlansProvider(...).notifier).moveMealPlan(plan.id, date, plan.mealType);
  },
  builder: (context, candidateData, rejectedData) {
    return Container(
      decoration: BoxDecoration(
        color: candidateData.isNotEmpty ? theme.colorScheme.primaryContainer.withAlpha(100) : null,
      ),
      child: child,
    );
  },
)
```

- [ ] **Step 3: Verify with Integration Test**
Run: `flutter test test/app/meal_planner/meal_planner_flow_test.dart` (or manual verification)

- [ ] **Step 4: Commit**
```bash
git add lib/app/meal_planner/widgets/meal_day_card.dart
git commit -m "feat(meal-planner): implement drag and drop for meal plans"
```
