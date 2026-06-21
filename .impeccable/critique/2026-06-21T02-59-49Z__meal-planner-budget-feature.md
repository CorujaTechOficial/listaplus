---
target: meal-planner-budget-feature
total_score: 22
p0_count: 2
p1_count: 2
timestamp: 2026-06-21T02-59-49Z
slug: meal-planner-budget-feature
---
## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | BudgetSummaryCard retorna SizedBox.shrink() durante loading — card pisca |
| 2 | Match System / Real World | 2 | "Budget goal" parece cobrir toda a casa mas aplica-se só ao meal planner |
| 3 | User Control and Freedom | 3 | Remove goal presente; salvar input inválido falha silenciosamente |
| 4 | Consistency and Standards | 2 | Settings: monthlyBudgetNav (push) ao lado de mealPlannerBudgetGoalNav (modal) — padrão diferente, visual idêntico |
| 5 | Error Prevention | 1 | Campo de valor sem hint, sem símbolo de moeda, sem validação visível |
| 6 | Recognition Rather Than Recall | 2 | Custo do heatmap só via long-press; ~ de partial-pricing nunca explicado |
| 7 | Flexibility and Efficiency | 3 | CTA set-goal bem colocado; pencil edit compacto; settings path disponível |
| 8 | Aesthetic and Minimalist Design | 2 | Duas barras de resumo antes do conteúdo; recipe card acumula 5 dados |
| 9 | Error Recovery | 1 | Goal sheet falha silenciosa. goalAsync em erro tratado como null |
| 10 | Help and Documentation | 3 | Subtitle na settings tile orienta; ~ contextual mas sem legenda |
| Total | | 22/40 | Acceptable |

## Anti-Patterns Verdict
Clean detector scan (exit 0, zero findings). LLM tells: BudgetGoalSheet formulário mínimo sem contexto; heatmap tranca o valor atrás de long-press; recipe cost string é data dump com dots.

## Overall Impression
Tecnicamente correta e esteticamente segura, mas introspectiva onde deveria ser assistiva. State feliz (meta definida, progress bar verde) é a melhor parte. Restante lê como dados expostos antes de a pessoa ter razão para se importar.

## Priority Issues
- [P0] BudgetGoalSheet: falha silenciosa em input inválido — adicionar errorText no InputDecoration
- [P0] Monthly heatmap: custo invisível no mobile — long-press não funciona como revelação de dados
- [P1] Weekly view: duas barras de resumo antes do conteúdo de refeição — merge ou collapse
- [P1] Recipe card: três dados de custo em labelSmall é ruído cognitivo — mostrar só costPerServing na grid
- [P2] BudgetGoalSheet: sem framing de escopo — uma linha explicando que aplica-se ao meal planner

## Persona Red Flags
Casey: nunca descobre o budget, silently fails ao digitar vírgula como separador. Jordan: ~ sem explicação, sem confirmação de save. Sam: tap target do lápis ~24dp (min 48dp), progress bar cor-only, heatmap sem alternativa textual.

## Minor Observations
- SizedBox.shrink() blink, skeleton mais estável
- Lápis 16px não parece botão
- Layout shift no recipe card (pantry badge síncrono, custo assíncrono)
- progressColor função local re-alocada em cada build
- Icons.card_giftcard para share é affordance errada
