---
target: a tela de planejador de refeicoes
total_score: 26
p0_count: 0
p1_count: 2
timestamp: 2026-06-21T03-47-31Z
slug: app-meal-planner-screens-meal-planner-screen-dart
---
# Design Critique: Planejador de Refeições (Meal Planner)

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Bons feedbacks visuais e snackbar de desfazer exclusão, mas a transição de modos (semanal/mensal) e reordenação de itens por arrastar faltam animações de transição claras. |
| 2 | Match System / Real World | 3 | Organizado corretamente em formatos semanais e mensais utilizando o primeiro dia da semana do locale. Porém, o indicador de preço parcial (`~`) não é explicado contextualmente. |
| 3 | User Control and Freedom | 3 | Excelente ação de desfazer a exclusão no snackbar. |
| 4 | Consistency and Standards | 2 | Uso de valores brutos de margens/preenchimento (ex: `horizontal: 6, vertical: 2` em `PantryStatusBadge`) e cores brutas (ex: `0xFF4CAF50` e `0xFFFB8C00` em `WeeklySummaryBar`), violando a regra de consistência de design do Flutter. |
| 5 | Error Prevention | 3 | Confirmação antes de gerar a lista de compras baseada no plano semanal previne ações acidentais. |
| 6 | Recognition Rather Than Recall | 2 | Arrastar e soltar não possui indicador visual óbvio (como um ícone de "drag indicator"). Na visualização mensal, as bolinhas coloridas exigem que o usuário decore o significado de cada cor. |
| 7 | Flexibility and Efficiency | 3 | Ação de pular do modo mensal para o semanal ao tocar em um dia específico agiliza muito o uso. |
| 8 | Aesthetic and Minimalist Design | 2 | Duas barras de resumo separadas no topo da visualização semanal (`WeeklySummaryBar` e `BudgetSummaryCard`) ocupam espaço vertical excessivo em celulares menores, reduzindo a visibilidade da lista de dias. |
| 9 | Error Recovery | 3 | Tratamento de erros de rede adequado com botão de recarregar direto na tela. |
| 10 | Help and Documentation | 2 | Ausência de explicação sobre a integração com a despensa e o cálculo automático da lista de compras. |
| **Total** | | **26/40** | **Acceptable** |

## Anti-Patterns Verdict

**LLM assessment**: A interface é limpa, moderna e segue as diretrizes do Material Design 3 sem cair na armadilha do visual genérico de "inteligência artificial". No entanto, apresenta inconsistências técnicas de espaçamento e regras de cores que denunciam falta de polimento:
- **Sobrecarga de resumo no topo**: Duas barras de informação sobrepostas na tela semanal reduzem a área útil para o conteúdo principal.
- **Valores e cores hardcoded**: O uso de cores arbitrárias fora da paleta do tema e dimensões sem o uso de tokens oficiais quebra a escalabilidade em diferentes resoluções.

**Deterministic scan**: Nenhuma falha estrutural foi detectada no varredor estático.

**Visual overlays**: Nenhuma sobreposição interativa está ativa, pois a execução do navegador com injeção de script não foi solicitada/suportada no sandbox.

## Overall Impression
O planejador de refeições é muito útil e integra-se perfeitamente com a despensa. Contudo, a experiência sofre com poluição visual no topo da tela semanal (duas caixas de resumo concorrentes), falta de feedback visual para o recurso de arrastar e soltar, e pequenos desvios de padrões de design (valores mágicos de espaçamento e cores brutas).

## What's Working
- **Integração com a Despensa**: O cálculo de ingredientes em falta exibido diretamente nos itens das refeições (`PantryStatusBadge`) é muito prático.
- **Navegação Dinâmica**: Trocar facilmente entre semanal/mensal e ir direto para o dia desejado funciona perfeitamente.
- **Ações Reversíveis**: Excelente uso do snackbar com botão "desfazer" na exclusão de planos de refeição.

## Priority Issues

- **[P1] Poluição Visual no Topo da Visualização Semanal**:
  - *Why it matters*: O `WeeklySummaryBar` e o `BudgetSummaryCard` empilhados ocupam quase 200px de altura na tela, espremendo os dias da semana em dispositivos menores.
  - *Fix*: Unificar ambos os painéis em um único painel de controle colapsável ou enxugar o `WeeklySummaryBar` para dentro do cartão de orçamento.
  - *Suggested command*: `/impeccable layout`
- **[P1] Violação de Diretrizes de Cores e Espaçamento (Valores Brutos)**:
  - *Why it matters*: Vários locais usam valores mágicos de cores (ex: `0xFF4CAF50`, `0xFFFB8C00`) e dimensões brutas (ex: `horizontal: 6, vertical: 2` em `PantryStatusBadge` ou `minHeight: 6`), ignorando os tokens `Spacing` e `Theme.of(context).colorScheme`. Isso prejudica o suporte a temas claros/escuros e consistência visual.
  - *Fix*: Mapear todas as dimensões e cores brutas para os tokens oficiais do projeto.
  - *Suggested command*: `/impeccable layout`
- **[P2] Ausência de Indicador Visual para Arrastar (Drag-and-Drop)**:
  - *Why it matters*: O usuário comum não sabe que pode segurar e arrastar uma refeição para reagendá-la para outro dia, tornando a funcionalidade invisível.
  - *Fix*: Adicionar um indicador visual discreto de arrastar (como o ícone de reordenação) ao lado das refeições.
  - *Suggested command*: `/impeccable animate`
- **[P2] Dificuldade de Reconhecimento no Calendário Mensal**:
  - *Why it matters*: Exibir apenas círculos coloridos no dia do calendário mensal força o usuário a lembrar quais refeições correspondem a quais cores.
  - *Fix*: Adicionar uma legenda simples no rodapé da visualização mensal ou permitir exibir o nome reduzido da receita em telas maiores.
  - *Suggested command*: `/impeccable layout`

## Persona Red Flags

**Casey (Usuário de Celular Distraído)**:
- Com as duas barras de status empilhadas no topo da tela, Casey precisa rolar a tela constantemente em seu aparelho compacto para visualizar os dias de sexta, sábado e domingo, aumentando o esforço de uso em trânsito.
- A falta de feedback visual ao pressionar prolongadamente para arrastar pode induzi-lo a achar que a tela travou.

**Alex (Usuário Avançado)**:
- Embora possa reordenar refeições por arrasto, a ausência de uma ação rápida para "duplicar" ou "copiar" um plano de refeição para outro dia reduz a eficiência de Alex ao planejar semanas recorrentes.

## Minor Observations
- O uso de `RadiusTokens.bar` como espaçamento vertical (`SizedBox(height: RadiusTokens.bar)`) é conceitualmente incorreto; tokens de raio não devem ser usados para definir altura/espaçamento.
- Cores de progresso utilizam consts locais e não dinâmicas de acordo com o estado do app.
