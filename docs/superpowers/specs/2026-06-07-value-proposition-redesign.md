# KipiList — Value Proposition Redesign

**Date:** 2026-06-07  
**Status:** Approved  
**Approach:** B — IA Ubíqua + Paywall Repensado

---

## Problem Statement

The Gemini analysis identified that KipiList's current value proposition is misaligned:

1. **Weak paywall trigger** — 3-list limit covers 90% of casual users; they never hit it.
2. **AI framed as chat** — users don't want to formulate prompts while shopping; they want action.
3. **Best conversion driver underutilized** — Meal Planner + Pantry integration already exists but isn't positioned as the premium hook.
4. **Onboarding shows paywall before value** — user sees subscription screen without having experienced the app.

---

## Central Value Proposition

> **"O assistente que monta sua lista por você"**  
> Fala, digita ou manda uma foto — o Kipi entende e age. Você só aprova.

The AI is not a chatbot. It's an invisible agent that acts on behalf of the user in every corner of the app.

---

## Target User

Broad (everyone who shops), but onboarded through a single hook: the AI that acts. Secondary users self-select into power features (families via sharing, planners via Meal Planner, budget-conscious via expense control).

---

## Free vs. Pro Tiers

| Feature | Free | Pro |
|---|---|---|
| Shopping lists (unlimited) | ✅ | ✅ |
| Kipi AI basic (add items by text/voice) | ✅ | ✅ |
| Kipi AI advanced (meal planning, analysis, proactive suggestions) | 30 actions/month | ♾️ Unlimited |
| Proactive suggestions ("You buy X every week") | — | ✅ |
| Pantry + Meal Planner with AI | Manual only | ✅ With AI |
| Shared lists (family) | — | ✅ |
| Backup / Export | — | ✅ |

**Key change:** Remove the 3-list limit entirely. The paywall trigger is AI usage depth, not list count.

---

## Changes Required

### 1. AI Quick Bar in List Screen

**What:** Replace the existing `QuickAddBar` widget with a "Fala com o Kipi" bar.  
**Where:** `lib/app/lists/widgets/quick_add_bar.dart`  
**UX:** Tapping opens an inline input pre-connected to the AI agent (not a navigation to Chat tab). Supports text and voice. A short response (items added) is shown inline without leaving the list screen.  
**Copy:** `✨ Fala com o Kipi... (ex: "1kg de frango")`

### 2. AI FAB on Secondary Screens

**What:** Add a floating action button (FAB) connected to the AI on Pantry, Meal Planner, and Recipes screens.  
**Where:** `lib/app/pantry/screens/pantry_screen.dart`, `lib/app/meal_planner/screens/meal_planner_screen.dart`, `lib/app/recipes/screens/recipes_screen.dart`  
**UX:** Tapping the FAB opens a bottom sheet with the Kipi chat panel scoped to the current screen context (e.g., on Pantry: "What would you like to do? Add an item, check what's missing, or generate a shopping list?").  
**Implementation:** Reuse existing `AiChatPanel` widget with a `context` parameter that primes the system prompt for the current screen.

### 3. AI Usage Counter for Free Users

**What:** Track monthly AI action count per user. Show a non-blocking banner when usage reaches 20/30.  
**Where:** New provider `lib/core/providers/ai_usage_provider.dart`. Banner in `AiChatPanel`.  
**UX:** Subtle amber banner: "10 ações com IA restantes este mês — Assine Pro para ilimitado →". Not a hard block until 30/30. At limit: show paywall sheet instead of sending message.  
**Storage:** Firestore `users/{uid}/ai_usage/{YYYY-MM}` with `action_count` field. Increment on every AI tool call execution.  
**Free limit:** 30 advanced AI actions/month. Basic actions (add single item by text) do NOT count against the limit.

### 4. Onboarding Redesign

**What:** Replace the 5-slide onboarding with a 2-step flow.  
**Where:** `lib/app/onboarding/screens/`

**New flow:**
1. **Step 1 — Action first (no login required):** Single screen. Title: "O que você precisa comprar?" with the Kipi bar active. User types or speaks their first list. The list is created locally (anonymous session). No slides, no explanations — just doing.
2. **Step 2 — Save + Paywall:** After the list is created, show: "Salvar sua lista?" with Google Sign-In / Anonymous Continue options, immediately followed by the paywall sheet (as existing `OnboardingSlidePremium`).

**What's removed:** Welcome slide, personalization slide, AI demo slide (the live simulation). These are replaced by the real action in Step 1.  
**What's kept:** `OnboardingSlidePremium` (just repositioned to after first action).

### 5. Paywall Copy Reframe

**What:** Update copy in `lib/l10n/app_en.arb` and all translated ARB files to reflect the new value prop.  
**Changes:**

| Key | Old | New |
|---|---|---|
| `paywallHeroHeadline` | "Kipi AI always by your side" | "Kipi sem limites" |
| `paywallHeroSubtitle` | "Add items, organize lists and save time with AI in your pocket" | "IA ilimitada, planejamento completo e listas em família — tudo em um só app" |
| `paywallFeatureSmartAI` | "Smart AI" | "IA ilimitada" |
| `paywallBenefit1Desc` | "Adds, organizes and suggests items 24/7" | "Sem limite de ações. Kipi sempre disponível para agir." |
| `paywallFeatureUnlimitedLists` | "Unlimited Lists" | "Família conectada" |
| `paywallBenefit2Desc` | "No 3-list limit" | "Listas compartilhadas com quem você ama" |

### 6. Remove 3-List Limit

**What:** Remove the premium gate on list creation.  
**Where:** `lib/app/lists/providers/list_providers.dart` — find and remove the `premiumProvider` check on list count.  
**Why:** Free users can have unlimited lists. The conversion trigger is AI usage, not list count.

---

## Data Model Changes

### AI Usage Tracking

```
Firestore: users/{uid}/ai_usage/{YYYY-MM}
Fields:
  - action_count: int  (incremented per advanced AI action)
  - last_reset: Timestamp
```

**Advanced AI actions** (counted): meal planning via AI, spending analysis queries, proactive suggestion generation, recipe-to-list conversion.  
**Basic AI actions** (not counted): single item add by text/voice (keeps free tier genuinely useful).

---

## What Does NOT Change

- Firebase/Firestore backend architecture
- RevenueCat integration and `premiumProvider`
- The AI engine (45+ tools in `tool_core.dart`)
- The Chat tab (kept as "deep dive" for longer interactions)
- 86 locales (copy updates propagated to all)
- Pantry, Meal Planner, Recipes features themselves
- Custom lint rules

---

## Success Metrics

- **Paywall conversion rate** — baseline vs. post-launch (track via RevenueCat + Analytics)
- **AI action usage** — % of free users hitting the 30-action limit (signals genuine engagement)
- **Onboarding completion** — % reaching Step 2 (save/paywall) after creating first list
- **D7 retention** — users who used AI bar vs. users who didn't

---

## Out of Scope

- ROI/expense comparison ("you saved R$X this month") — requires price data from user; deferred to V2
- Voice-first AI interaction redesign — existing mic button in chat panel is sufficient for now
- Proactive push notifications ("You usually buy X on Tuesdays") — deferred to V2
