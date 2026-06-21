# Features para Retenção e LTV

> Features que não existem, aumentam DAU, reduzem churn, e/ou desbloqueiam novos paywalls.  
> Nenhum item abaixo está nos planos existentes.

---

## 1. Listas Recorrentes / Templates

**Status atual:** Não existe. Cada lista é criada do zero.

**O que construir:**
- "Salvar como template" em qualquer lista — gera uma cópia chamada "Mercado Semanal (template)"
- "Usar template" ao criar nova lista — preenche com os itens do template
- Templates são listas comuns com flag `isTemplate: true` no modelo `ShoppingList`
- Tela de seleção de template no `CreateListDialog` (novo botão "a partir de template")

**Modelo de dados:**
```dart
// Adicionar em ShoppingList:
final bool isTemplate;
final String? templateName;
```

**Gating:** Criar templates = free. Usar templates = free. Mais de 3 templates = premium.

**Impacto:** Hábito semanal de reaproveitar lista = DAU semanal garantido = menor churn. É a feature mais pedida por usuários de apps de lista de compras.

---

## 2. Rastreamento de Preço por Item

**Status atual:** Budget mensal existe (premium). Mas não há preço histórico por item.

**O que construir:**
- Campo `lastPrice: double` e `priceHistory: List<PricePoint>` no modelo `ShoppingItem`
- Ao marcar item como comprado com preço preenchido, salvar o preço com timestamp
- Widget no tile do item: "Última vez: R$12,99" (sutil, em cinza)
- Na tela de budget: gráfico de preço do item ao longo do tempo (já tem `fl_chart`)
- Alert: "Preço de X subiu 15% desde a última vez"

**Gating:** Histórico dos últimos 3 meses = free. Histórico completo + alertas = premium.

**Impacto:** Price awareness aumenta percepção de valor do app. Usuário sente que economiza → fica mais tempo → converte.

---

## 3. Modo de Compras (Shopping Mode)

**Status atual:** Existe `ShoppingCompletionView` (tela de "parabéns, compra concluída") mas não existe um modo de compras dedicado.

**O que construir:**
- Botão "Começar compras" no header da lista
- Ativa um modo com:
  - Font maior para itens (visibilidade no carrinho)
  - Itens riscados desaparecem ou vão para baixo (foco no que falta)
  - Contador de progresso proeminente ("7/12 itens")
  - Vibração haptic ao marcar cada item
  - Timer opcional de quanto tempo levou a compra
- Ao concluir, abre `ShoppingCompletionView` com confetti (já existe o package)
- Salva stats: tempo médio de compra, itens por sessão

**Impacto:** Modo de compras é a feature de UX #1 de apps de lista como OurGroceries e AnyList. Diferencia de apps genéricos. Aumenta satisfação e reviews 5 estrelas.

---

## 4. Receita → Lista de Compras (1-tap)

**Status atual:** `RecipesScreen` existe. `RecipeDetailScreen` existe. Mas não está claro se há um botão "Adicionar ingredientes à lista".

**O que verificar e completar:**
- Se existe: garantir que é 1 tap, não um flow de 3 passos
- Se não existe: adicionar `FilledButton.icon(icon: Icon(Icons.add_shopping_cart), label: Text(l10n.addToList))` no `RecipeDetailScreen`
- Mostrar seletor de lista se houver mais de uma
- AI can already do this via tool `add_items_from_recipe` - but users shouldn't need to use AI for this

**Impacto:** Integração receita↔lista é o "aha moment" do app. Usuário que usa receitas + lista = 3x mais retido.

---

## 5. Sugestões Proativas de Itens (Item Memory)

**Status atual:** `item_memory_provider.dart` existe e `buildItemMemoryMap` provavelmente calcula frequência de itens. Mas não está claro se essas sugestões aparecem de forma proativa.

**O que construir:**
- No QuickAddBar/KipiQuickBar, mostrar chips de sugestão acima do campo:
  ```
  Você costuma comprar: [🥩 Frango] [🥛 Leite] [🧴 Shampoo]
  ```
- Tap no chip → adiciona diretamente sem AI (instantâneo)
- Baseado em `recentItemMemory` — frequência + recência

**Gating:** Sugestões básicas (últimos 10 itens) = free. Sugestões inteligentes (IA + frequência + sazonalidade) = premium.

**Impacto:** Reduz fricção de adicionar itens recorrentes. Aumenta itens por lista → aumenta engajamento → reduz churn.

---

## 6. Suporte Multi-Loja

**Status atual:** Itens podem ter categorias mas não têm "loja destino". Não existe conceito de lojas.

**O que construir:**
- Modelo `Store` com nome e cor
- Campo `storeId` opcional em `ShoppingItem`
- Filtro na lista por loja ("Ver só Mercado" / "Ver só Farmácia")
- Tab de loja no selector da lista
- AI tool: "separar lista por loja" (já tem tool executor para isso)

**Gating:** 1 loja = free. Múltiplas lojas + filtros = premium.

**Impacto:** Famílias que fazem compras em múltiplas lojas (o caso mais comum) são o perfil de mais alto LTV. Multi-store os captura.

---

## 7. Captura de Foto em Itens

**Status atual:** `image_picker: ^1.1.2` e `firebase_storage: ^13.4.1` estão no pubspec mas não parece haver uso para fotos em itens de lista.

**O que construir:**
- Botão de câmera no `EditItemDialog`/`AddItemDialog`
- Foto fica como thumbnail no `ShoppingItemTile` (mostra no modo de compras)
- Use case: "adicionar foto do produto específico para não confundir marca"
- Storage: Firebase Storage `users/{uid}/item_photos/{itemId}.jpg` (resize para 400px)

**Gating:** 5 fotos = free. Fotos ilimitadas = premium.

**Impacto:** Feature visual diferencia do Google Keep e apps básicos. Power users adoram.

---

## 8. Integração Dispensa → Sugestão de Lista

**Status atual:** `PantryStatusBadge` existe mas não está claro se a dispensa sugere automaticamente ítens para a lista quando estoque está baixo.

**O que construir:**
- Campo `minStock: double` em `PantryItem` (quantidade mínima desejada)
- Provider que detecta itens abaixo do estoque mínimo
- Banner no topo da lista ativa: "3 itens da sua dispensa estão acabando → Adicionar à lista?"
- Ou AI proativo: "Kipi notou que você está sem leite e farinha — adicionou à lista"

**Gating:** Sugestão manual (banner) = free. Sugestão automática via AI = premium.

**Impacto:** Pantry + List integration é o diferencial chave vs. apps simples. Fecha o loop do fluxo de compras.

---

## 9. Orçamento por Categoria

**Status atual:** `BudgetDashboardScreen` existe (premium) com `fl_chart` disponível. Mas qual é o nível de detalhe?

**O que verificar e adicionar se faltar:**
- Pizza chart de gastos por categoria (Hortifrúti, Carnes, Laticínios, Higiene, etc.)
- Comparação mês a mês por categoria
- "Você gastou 40% mais em carnes este mês vs. o mês passado"

**Impacto:** Análise financeira granular é o argumento mais forte para manter assinatura. "O app me economizou R$200 este mês" = zero churn.

---

## 10. Lista de Conquistas Expandida + Ligada ao Premium

**Status atual:** `AchievementsScreen` tem apenas 4 badges básicos (10 itens, 50 itens, R$100 de economia, 7 dias de streak). Não está vinculada a upgrade.

**O que adicionar:**

| Badge | Trigger | Ligação Premium |
|---|---|---|
| Planejador Mestre | 4 semanas de streak | — |
| Chef em Casa | 5 receitas executadas | — |
| Economizador | R$500 economizados | — |
| Família Conectada | Compartilhou lista | → Paywall se não premium |
| Kipi Expert | 100 ações de IA | → Paywall |
| Pro Shopper | Comprou em 3 lojas diferentes | Premium exclusivo |
| Zero Desperdício | 30 dias sem item expirar na dispensa | Premium exclusivo |

**Mechanics para gamificação:**
- Badges pro-exclusivos aparecem bloqueados com cadeado dourado
- Tap → "Desbloqueie o Pro para ganhar este badge"

**Impacto:** Gamificação com achievements linked to premium é comprovada em apps de fitness (Nike Run, Strava) para converter usuários free comprometidos.

---

## 11. Modo Offline Explícito

**Status atual:** Firestore tem persistência offline built-in mas não há nenhuma UI informando o usuário sobre o status offline. O `offline_banner.dart` existe — precisa verificar se está implementado.

**O que verificar:**
- `lib/core/widgets/offline_banner.dart` — está sendo usado em todas as telas?
- Sincronização de conflito quando volta online está tratada?
- Usuário sabe que pode usar o app sem internet?

**O que adicionar se faltar:**
- Banner amarelo discreto no topo: "Sem conexão — suas alterações serão sincronizadas"
- Ícone de sync no AppBar quando offline

**Impacto:** App que funciona offline = usuário que confia no app = menor churn. Em mercados emergentes (Brasil, África) é crítico.

