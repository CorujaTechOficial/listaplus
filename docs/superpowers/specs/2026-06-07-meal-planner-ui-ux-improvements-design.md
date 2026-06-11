# Design Spec: Meal Planner UI/UX Improvements

**Date:** 2026-06-07  
**Status:** Approved  
**Topic:** Elevating Meal Planner with Drag & Drop, Pantry Integration, and Intelligence.

## 1. Overview
The goal is to transform the static Meal Planner into a dynamic, tactile, and contextually aware productivity tool. The improvements focus on three main pillars: Interaction (Drag & Drop), Integration (Pantry), and Intelligence (Smart List Generation).

## 2. Core Features

### 2.1 Drag & Drop Interaction
- **Capability:** Users can long-press a meal entry and drag it to another day or reorder it within the same day.
- **Implementation:** 
    - Use `LongPressDraggable` for meal entries.
    - Use `DragTarget` within `MealDayCard`.
    - Trigger a state update via `MealPlansProvider.saveMealPlan` with the updated date and/or meal type.
- **Visual Feedback:** 
    - 0.98x scale and elevated shadow during drag.
    - Highlight targets (days) when hovering over them.

### 2.2 Pantry Integration (Contextual Awareness)
- **Meal Day Card:** Each planned meal shows a badge:
    - **Green ✅:** All ingredients available in Pantry.
    - **Orange ⚠️:** Missing ingredients (e.g., "Faltam 3 itens").
- **Add Meal Sheet:** Recipe list items include the same pantry status indicator to help users choose recipes they can actually cook.
- **Logic:**
    - Cross-reference `recipe.ingredients` with `pantryItemsProvider`.
    - Check `item.currentQuantity` vs `recipe.requiredQuantity * mealPlan.servings`.

### 2.3 Smart Shopping List Generation ("Preparation Mode")
- **Behavior:** Instead of blindly adding all items, the generator now:
    1. Collects all required ingredients for the selected period (Week/Month).
    2. Deduplicates by name and unit.
    3. Subtracts quantities already present in the **Pantry**.
    4. Adds only the delta (missing quantity) to the Shopping List.
- **Example:** Recipe needs 500g Rice. Pantry has 200g. App adds 300g to the Shopping List.

### 2.4 UI Refinements & Micro-interactions
- **Tactile Feedback:** Standardize 100ms scale animations on all tappable cards.
- **Smooth Transitions:** `AnimatedSwitcher` for Weekly/Monthly view toggles.
- **Empty States:** Enhanced `_WeekEmptyState` with a "Sugestão da IA" button linked to `OpenCodeGoService`.
- **Contextual Defaults:** Pre-select `MealType` based on current time of day when adding a meal.

## 3. Architecture & Data Flow

### 3.1 Providers
- **MealPlansProvider:** Enhanced with `moveMealPlan(String id, DateTime newDate, MealType newType)` logic.
- **RecipesProvider:** Existing dependency for ingredient metadata.
- **PantryProvider:** New dependency for stock verification.

### 3.2 UI Components
- **MealDayCard:** Refactored to support `DragTarget` and display pantry status.
- **MealEntryTile:** Wrapped in `LongPressDraggable`.
- **AddMealPlanSheet:** Enhanced search and status indicators.

## 4. Testing Strategy
- **Unit Tests:** Verify the subtraction logic in Smart List Generation.
- **Widget Tests:** Verify Drag & Drop triggers the correct provider calls.
- **UX Validation:** Ensure haptic/scale feedback doesn't cause layout jumps.

## 5. Success Criteria
- Reduction in clicks for rescheduling meals.
- Shopping lists are 100% accurate regarding what the user *actually* needs to buy.
- Interface feels modern and responsive (Material 3 standards).
