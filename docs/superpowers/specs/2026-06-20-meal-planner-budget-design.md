# Meal Planner Budget — Design Spec

**Data:** 2026-06-20  
**Branch:** feat/onboarding-quiz-hard-paywall (implementar em branch própria)  
**Escopo:** Surface budget data no planejador de refeições + meta mensal configurável

---

## Contexto

A infra de custo **já existe e funciona**:

| Existente | Local |
|---|---|
| `Recipe.yieldServings`, `Recipe.manualTotalCost` | `lib/models/recipe.dart` |
| `RecipeCostDetails` | `lib/app/meal_planner/providers/meal_plan_cost_models.dart` |
| `DayMealCostData`, `MealPlannerSummaryData` | idem |
| `calculateRecipeCostDetails()`, `calculatePlannedMealCost()` | `meal_plan_cost_calculator.dart` |
| `recipeCostDetailsProvider` | `meal_planner_providers.dart` |
| `mealPlannerDayCostMapProvider` | idem |
| `mealPlannerSummaryProvider` | idem |

**O que falta é UI.** Nenhum provider de cálculo precisa ser criado.

---

## Abordagem escolhida

**A — Surface-only, meta em SharedPreferences.**  
Sem novo modelo Firestore, sem migração de schema. Meta mensal é preferência local do usuário.

---

## 1. Novo provider — `monthlyBudgetGoalProvider`

**Arquivo:** `lib/core/providers/preferences_providers.dart`

```dart
// Persiste em SharedPreferences com chave 'monthly_budget_goal'
// null = sem meta definida
@riverpod
class MonthlyBudgetGoal extends _$MonthlyBudgetGoal {
  @override
  double? build() { ... }
  Future<void> setGoal(double? value) { ... }
}
```

- Usa `SharedPreferences` via provider já existente no arquivo
- `null` significa "sem meta" — remove indicador de progresso da UI
- Moeda resolvida pelo `currencySettingProvider` existente (não armazenada junto da meta)

---

## 2. Widgets novos

### 2a. `BudgetSummaryCard`

**Arquivo:** `lib/app/meal_planner/widgets/budget_summary_card.dart`

Exibido na view semanal, abaixo do `WeeklySummaryBar`.

**Layout:**
```
┌─────────────────────────────────────────────┐
│  💰 Orçamento do mês                        │
│  R$ 320,00 / R$ 800,00          [editar]   │
│  ████████████░░░░░░░░░░  40%               │
│                                             │
│  Semana atual: R$ 145,00                   │
│  Hoje: R$ 48,50                            │
└─────────────────────────────────────────────┘
```

**Comportamento:**
- Barra de progresso: verde < 70% da meta, laranja 70–99%, vermelho ≥ 100%
- Sem meta definida: exibe só custo planejado do mês/semana/hoje, sem barra
- Til (`~`) após valor indica pricing parcial (nem todos ingredientes têm preço)
- Toque em `[editar]` ou no valor da meta → abre `BudgetGoalSheet`
- Usa `mealPlannerSummaryProvider` (já existe) para `plannedMonthCost`, `weekCost`, `todayCost`

**Tokens obrigatórios:** `Spacing.*`, `RadiusTokens.*`, `DurationTokens.*`, `ColorScheme`, `AppColors` — nunca literais numéricos.

### 2b. `BudgetGoalSheet`

**Arquivo:** `lib/app/meal_planner/widgets/budget_goal_sheet.dart`

Bottom sheet modal para definir/remover meta.

```dart
static Future<void> show(BuildContext context) => showModalBottomSheet(...)
```

**Layout:**
```
┌──────────────────────────────┐
│  Meta de orçamento mensal    │
│                              │
│  R$ [__________]             │
│                              │
│  [Remover meta]  [Salvar]    │
└──────────────────────────────┘
```

**Comportamento:**
- Campo numérico decimal, teclado `TextInputType.numberWithOptions(decimal: true)`
- Pré-popula com valor atual se já houver meta
- "Remover meta" → `setGoal(null)` → fecha
- "Salvar" → valida > 0 → `setGoal(value)` → fecha
- Moeda exibida via `currencySettingProvider`

---

## 3. Widgets modificados

### 3a. `WeeklySummaryBar`

**Arquivo:** `lib/app/meal_planner/widgets/weekly_summary_bar.dart`

Adiciona linha de custo semanal abaixo da barra de progresso existente:

```
📅 5 / 21 refeições  24%
████░░░░░░░░░░░░░░░░░░░░

💰 Semana: R$ 145,00~
```

- Só renderiza linha de custo se `weekCost > 0`
- Til indica pricing parcial
- Valor formatado com `formatCurrency()` existente

### 3b. Recipe cards — `RecipeDetailScreen` e `RecipeCard`

**Arquivos:**
- `lib/app/recipes/screens/recipe_detail_screen.dart`
- `lib/app/recipes/screens/recipes_screen.dart` (card na lista)

Linha de metadados abaixo do nome da receita:

```
⏱ 30 min  ·  4 porções  ·  R$ 45,00 total  ·  R$ 11,25/prato
```

**Regras:**
- Só renderiza se `effectiveTotalCost > 0`
- Til após valores monetários se `hasPartialPricing == true`
- `yieldServings` sempre exibe (mesmo sem custo) se `> 1`
- Usa `recipeCostDetailsProvider(recipeId)` (já existe)

### 3c. `_MonthDayCell` — heatmap de custo

**Arquivo:** `lib/app/meal_planner/screens/meal_planner_screen.dart`

**Comportamento:**
- Intensidade de cor proporcional: `cellCost / maxDayCostInMonth`
- Cor base: `theme.colorScheme.tertiary` com `withAlpha(intensity * 200)`
- Sem custo planejado: sem heatmap (comportamento atual)
- Toque longo → `Tooltip` com valor exato do dia (ex: "R$ 48,50")
- Toque simples: comportamento atual (navega p/ view semanal do dia)
- Provider: `mealPlannerDayCostMapProvider(start: monthStart, end: monthEnd)` (já existe)

---

## 4. Settings

**Arquivo:** `lib/app/settings/screens/settings_screen.dart`

Nova célula na seção de preferências existente:

```
Orçamento mensal         R$ 800,00  >
```

- Toque → `BudgetGoalSheet.show(context)` (mesmo widget do planejador)
- Sem meta: exibe "Não definido"

---

## 5. Localização

Novas chaves a adicionar em `lib/l10n/app_en.arb`:

```json
"budgetGoalMonthly": "Monthly budget",
"budgetGoalMonthlyHint": "Set a spending goal for the month",
"budgetGoalRemove": "Remove goal",
"budgetGoalSave": "Save",
"budgetGoalNotSet": "Not set",
"budgetSummaryMonth": "Month: {amount}",
"budgetSummaryWeek": "Week: {amount}",
"budgetSummaryToday": "Today: {amount}",
"budgetSummaryProgress": "{current} / {goal}",
"budgetPartialPricing": "~ partial pricing",
"recipeYieldServings": "{count} servings",
"recipeCostTotal": "{amount} total",
"recipeCostPerServing": "{amount}/serving"
```

Executar `python3 scripts/translate_missing.py` → `python3 scripts/review_translations.py` → `flutter gen-l10n`.

---

## 6. Testes

- `budget_summary_card_test.dart`: sem meta (só custo), com meta abaixo/acima do limite, pricing parcial
- `budget_goal_sheet_test.dart`: salvar, remover, validação (valor zero)
- `monthly_budget_goal_provider_test.dart`: set, get, null
- `_MonthDayCell`: heatmap presente quando há custo, ausente quando custo = 0
- Recipe card: metadados visíveis com custo, ocultos sem custo

---

## Não está no escopo

- Histórico de orçamento por mês (evolução futura → abordagem B)
- Compartilhamento de meta com família
- Notificações quando meta é excedida
- Breakdown de custo por tipo de refeição (café, almoço, jantar)
