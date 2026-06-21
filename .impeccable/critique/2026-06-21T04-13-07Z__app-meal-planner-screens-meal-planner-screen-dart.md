---
target: a tela de planejador de refeicoes
total_score: 27
p0_count: 0
p1_count: 2
timestamp: 2026-06-21T04-13-07Z
slug: app-meal-planner-screens-meal-planner-screen-dart
---
# Design Critique: Planejador de Refeições (Meal Planner)

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Bons feedbacks visuais e snackbar de desfazer, mas a tela usa um carregador circular genérico no centro ao invés de um esqueleto animado (shimmer/skeleton), violando as diretrizes visuais. |
| 2 | Match System / Real World | 3 | Organizado corretamente em formatos semanais e mensais utilizando o primeiro dia da semana do locale. O indicador de preço estimado (~), porém, poderia ter uma explicação visual ou tooltip para marinheiros de primeira viagem. |
| 3 | User Control and Freedom | 2 | Excelente ação de desfazer a exclusão no snackbar. Contudo, os chips de tipo de refeição exibidos no estado vazio da semana parecem interativos mas não executam nenhuma ação ao serem clicados. |
| 4 | Consistency and Standards | 2 | Uso de valores numéricos brutos para dimensões e ícones (ex: `width: 24`, `height: 24`, `size: 13` em `MealTypeBadge` e múltiplos tamanhos hardcoded em `meal_types_screen.dart`). Além disso, há o uso de tokens de raio (`RadiusTokens.xl`, `RadiusTokens.bar`) para tamanhos de ícones e espaçamento vertical, o que é conceitualmente incorreto. |
| 5 | Error Prevention | 3 | Confirmação antes de gerar a lista de compras baseada no plano semanal previne ações acidentais. |
| 6 | Recognition Rather Than Recall | 3 | O calendário mensal agora possui uma legenda clara no rodapé, e os cards de refeição possuem um ícone de arrastar ("drag indicator"), facilitando o reconhecimento das ações. |
| 7 | Flexibility and Efficiency | 3 | Ação de pular do modo mensal para o semanal ao tocar em um dia específico é eficiente. Contudo, falta uma forma rápida de copiar ou duplicar refeições para outros dias da semana. |
| 8 | Aesthetic and Minimalist Design | 3 | O `BudgetSummaryCard` agora é colapsável, resolvendo a poluição visual anterior e deixando o topo limpo e funcional. |
| 9 | Error Recovery | 3 | Tratamento de erros de rede adequado com botão de recarregar direto na tela. |
| 10 | Help and Documentation | 2 | Ausência de explicação sobre a integração com a despensa e o cálculo automático da lista de compras. |
| **Total** | | **27/40** | **Acceptable** |

## Anti-Patterns Verdict

**LLM assessment**: A interface evoluiu significativamente com a consolidação da barra de orçamento colapsável e a adição de indicadores visuais para a reordenação por arrasto (drag indicators). No entanto, ainda há pontos de slop e falta de polimento técnico:
- **Uso incorreto e falta de tokens**: Há misturas de tamanhos brutos hardcoded em elementos como badges e campos da tela de gerenciamento de tipos, além do uso de tokens de borda (`RadiusTokens`) fora de seu contexto correto.
- **Interação enganosa no estado vazio**: Mostrar chips bonitos e coloridos com `onTap: () {}` no estado vazio gera frustração visual, pois o usuário naturalmente tentará clicar neles para adicionar uma refeição daquele tipo.

**Deterministic scan**: Nenhuma falha estrutural foi detectada no varredor estático.

**Visual overlays**: Nenhuma sobreposição interativa está ativa, pois a execução do navegador com injeção de script não foi solicitada/suportada no sandbox.

## Overall Impression
O planejador de refeições agora está mais maduro e limpo visualmente devido à barra de resumo colapsável. Contudo, a experiência peca no carregamento (circular loader genérico), interações sem ação nos chips de estado vazio, e desvios de padrões de design devido a dimensões hardcoded e tokens mal mapeados.

## What's Working
- **Orçamento colapsável**: Unificação e possibilidade de recolher o painel de status liberam precioso espaço vertical na lista.
- **Indicadores de ação**: A presença do ícone de arrasto nos itens da lista deixa o recurso de reordenação óbvio para o usuário.
- **Legenda integrada**: A legenda de cores na visualização mensal remove a carga cognitiva de decorar cada tipo.

## Priority Issues

- **[P1] Tela de carregamento viola a regra de esqueleto de carregamento (Shimmer)**:
  - *Why it matters*: O uso de um `CircularProgressIndicator` genérico no centro da tela ao carregar os dados viola as regras visuais estritas do projeto. O carregamento deve parecer premium através de shimmers ou skeletons.
  - *Fix*: Substituir o indicador circular por um esqueleto de carregamento que simule a lista de dias e o card de orçamento.
  - *Suggested command*: `/impeccable polish`
- **[P1] Valores numéricos brutos e desvio de tokens**:
  - *Why it matters*: Badges de tipo de refeição e componentes de gerenciamento ainda usam tamanhos brutos e utilizam `RadiusTokens` para dimensionar ícones e espaçamento vertical. Isso prejudica a consistência do design system.
  - *Fix*: Mapear todos os tamanhos brutos para tokens corretos e substituir o uso de tokens de raio no lugar de espaçamentos ou ícones.
  - *Suggested command*: `/impeccable layout`
- **[P2] Chips inativos no estado vazio**:
  - *Why it matters*: Os chips coloridos no final do estado vazio parecem botões interativos, mas não fazem nada. O usuário tentará clicar neles para iniciar um planejamento rápido.
  - *Fix*: Conectar o `onTap` dos chips do estado vazio para abrir o diálogo de adicionar refeição com o tipo de refeição clicado já pré-selecionado.
  - *Suggested command*: `/impeccable clarify`
- **[P2] Ausência de duplicação rápida de refeições**:
  - *Why it matters*: Planejar uma semana inteira adicionando refeição por refeição manualmente é cansativo. O usuário se beneficia de poder copiar uma refeição de um dia para outro rapidamente.
  - *Fix*: Adicionar um botão de opções rápidas ou uma ação de arrastar com modificador para duplicar uma refeição planejada.
  - *Suggested command*: `/impeccable shape`

## Persona Red Flags

**Casey (Usuário de Celular Distraído)**:
- Em trânsito ou no supermercado, Casey quer planejar rapidamente. Ao se deparar com a tela vazia e ver os chips coloridos, ele tentará clicar neles; a ausência de resposta parecerá um travamento do aplicativo.
- O carregamento com o indicador circular faz a tela parecer lenta e mal otimizada sob conexões móveis fracas.

**Alex (Usuário Avançado)**:
- Alex planeja suas refeições em lotes e de forma recorrente. A falta de atalhos rápidos ou botão de "duplicar" torna a tarefa repetitiva e ineficiente para o seu perfil.

## Minor Observations
- O uso de `RadiusTokens.bar` como espaçamento vertical (`SizedBox(height: RadiusTokens.bar)`) e `RadiusTokens.xl` para tamanho de ícone deve ser corrigido para tokens de `Spacing` ou tamanhos estáticos de ícones padronizados.
- A visualização mensal poderia ter suporte a gestos de deslizar para mudar de mês, melhorando a navegabilidade em dispositivos móveis.
