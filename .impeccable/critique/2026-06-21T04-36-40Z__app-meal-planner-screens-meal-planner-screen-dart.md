---
target: a tela de planejador de refeicoes
total_score: 30
p0_count: 0
p1_count: 2
timestamp: 2026-06-21T04-36-40Z
slug: app-meal-planner-screens-meal-planner-screen-dart
---
# Design Critique: Planejador de Refeições (Meal Planner)

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 4 | Excelente uso de Skeletonizer no carregamento, feedbacks visuais ao arrastar (DragTarget) e snackbar de desfazer exclusão. |
| 2 | Match System / Real World | 3 | Organizado corretamente em semanas e meses baseados no locale. O indicador de preço estimado (~), porém, poderia ter uma explicação visual ou tooltip para marinheiros de primeira viagem. |
| 3 | User Control and Freedom | 2 | O usuário não tem controle para editar um plano de refeição existente (mudar número de porções, observação, etc.). Ele é forçado a excluir e recriar do zero. Além disso, o modal de duplicação só permite copiar para a semana atual. |
| 4 | Consistency and Standards | 2 | Vários componentes de layout ainda utilizam tamanhos brutos hardcoded (ex: ícones com tamanho `14` ou `16`) e misturam tokens conceituais (ex: uso de `RadiusTokens.bar` no `spacing` e `runSpacing` de um `Wrap`). |
| 5 | Error Prevention | 3 | A caixa de diálogo de confirmação antes de gerar a lista de compras baseada nas refeições planejadas ajuda a evitar poluição acidental na lista de compras. |
| 6 | Recognition Rather Than Recall | 4 | Ótima exibição dos ingredientes da despensa (`PantryStatusBadge`) diretamente no card de refeição e legenda de cores no calendário mensal, evitando que o usuário precise memorizar o status de cada item. |
| 7 | Flexibility and Efficiency | 2 | A duplicação é travada na semana atual e não há atalhos de edição direta nas refeições planejadas, limitando a eficiência de usuários recorrentes. |
| 8 | Aesthetic and Minimalist Design | 4 | Interface limpa e minimalista. O `BudgetSummaryCard` colapsável e o visualizador mensal com cores de intensidade de custo deixam o design elegante e focado. |
| 9 | Error Recovery | 3 | Bons fluxos de desfazer exclusão e botões de tentar novamente em caso de erros de requisição de dados. |
| 10 | Help and Documentation | 3 | Tooltips claros nas ações do AppBar, mas falta uma explicação curta sobre a integração do status da despensa nos cards. |
| **Total** | | **30/40** | **Good** |

## Anti-Patterns Verdict

**LLM assessment**: O planejador de refeições evoluiu para um design muito limpo, com ótima visualização mensal e painel de orçamento flexível. No entanto, persistem alguns desvios visuais e limitações funcionais que impactam a experiência:
- **Ausência de Edição**: Embora a tela de adição suporte a edição de refeições, não há nenhuma opção na interface principal para acionar a edição.
- **Valores e Tokens Misturados**: Há o uso de tokens de borda (`RadiusTokens.bar`) para espaçamento de itens, além de tamanhos de ícones hardcoded sem seguir a escala de design de tokens.
- **Duplicação Restrita**: O fluxo de cópia rápida ajuda no planejamento, mas limitar a duplicação à semana em foco impede o planejamento avançado tradicional.

**Deterministic scan**: Nenhuma falha estrutural foi detectada no varredor estático automático.

**Visual overlays**: Nenhuma sobreposição de navegador ativa (fluxo sem suporte a injeção em sandbox local).

## Overall Impression
O Meal Planner possui um design de alta fidelidade visual, com suporte impecável a modo escuro e um controle de orçamento inteligente. No entanto, a impossibilidade de editar refeições planejadas diretamente e o desalinhamento de tokens prejudicam o polimento geral.

## What's Working
- **Skeletonizer de carregamento**: A transição para estados de carregamento estruturados deixa a experiência inicial fluida e premium.
- **Integração de status da despensa**: Mostrar o status de estoque dos ingredientes diretamente nos blocos de refeição poupa cliques valiosos.
- **Orçamento colapsável**: O painel de resumo de gastos se esconde perfeitamente para economizar espaço em telas menores.

## Priority Issues

- **[P1] Impossibilidade de Editar Refeições Existentes**:
  - *Why it matters*: Atualmente, se o usuário quiser alterar as porções ou a data de uma refeição planejada, ele precisa apagá-la e criá-la novamente do zero. Isso gera atrito e viola a liberdade de controle do usuário.
  - *Fix*: Adicionar a opção "Editar" ao menu de opções (`PopupMenuButton`) de cada card de refeição (`_MealEntryTile`) para abrir o `AddMealPlanSheet` com o parâmetro `existingPlan`.
  - *Suggested command*: `/impeccable shape`

- **[P1] Valores de Tamanho Hardcoded e Desalinhamento de Tokens**:
  - *Why it matters*: Misturar constantes numéricas brutas (`size: 14`, `size: 16`, `height: 56`) e usar tokens de borda (`RadiusTokens.bar`) para espaçamentos verticais/horizontais prejudica a consistência visual e a adaptabilidade em diferentes tamanhos de tela.
  - *Fix*: Mapear os tamanhos de ícones e botões para a escala de design correta e substituir os tokens de borda no `spacing` por tokens de `Spacing`.
  - *Suggested command*: `/impeccable layout`

- **[P2] Duplicação Limitada Apenas à Semana Atual**:
  - *Why it matters*: Planejadores de refeição avançados costumam copiar receitas para a semana seguinte. Estar travado na semana corrente na caixa de duplicação reduz a utilidade do recurso.
  - *Fix*: Introduzir paginação simples (setas anterior/próxima) no modal de seleção de dia de destino de duplicação.
  - *Suggested command*: `/impeccable shape`

- **[P2] Falta de Indicação de Gesto para Reordenação por Arrasto**:
  - *Why it matters*: O usuário precisa pressionar o item por 300ms para arrastar devido ao uso de `LongPressDraggable`. Como não há dica desse comportamento, o recurso pode passar despercebido.
  - *Fix*: Adicionar uma mensagem simples de ajuda ou reduzir o delay de arrasto se viável.
  - *Suggested command*: `/impeccable delight`

## Persona Red Flags

**Alex (Usuário Avançado)**:
- Alex planeja suas refeições para todo o mês com antecedência. A falta de edição direta obriga-o a realizar múltiplos cliques desnecessários de apagar-e-adicionar. Além disso, a incapacidade de duplicar pratos favoritos para a próxima semana atrasa seu fluxo de trabalho.

**Casey (Usuário de Celular Distraído)**:
- Usando o aplicativo em trânsito no supermercado com uma mão só, Casey tenta arrastar uma refeição para mudar o dia e acha que a tela travou porque o gesto simples de arrastar não responde sem o toque longo de 300ms.

## Minor Observations
- O carregamento da visualização mensal poderia suportar gestos laterais (swipe) para alternar entre os meses.
- O indicador de estimativa de preços (~) carece de um pequeno tooltip explicativo inline.
