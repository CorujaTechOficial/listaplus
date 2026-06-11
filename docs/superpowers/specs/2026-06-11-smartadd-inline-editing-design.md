# SmartAdd com Memória + Edição Inline

**Data:** 2026-06-11  
**Área:** UX / Listas — fluxo de montagem de lista  
**Objetivo:** Reduzir atrito ao adicionar e ajustar itens durante a montagem da lista de compras

---

## Problema

Adicionar itens recorrentes (arroz, feijão, leite) exige ~4 taps por item: abrir dialog → nome → preço → categoria → confirmar. Ajustar preço ou quantidade de um item já na lista abre o mesmo dialog completo. Em listas de 20+ itens, o acúmulo de fricção é significativo.

---

## Solução

Duas mudanças independentes que se complementam:

1. **SmartAdd com memória** — QuickAddBar pré-preenche metadados (preço, quantidade, unidade, categoria) com base no histórico do usuário
2. **Edição inline no tile** — preço e quantidade editáveis diretamente na tile, sem modal

---

## Arquitetura

### Novo model: `ItemMemory`

Arquivo: `lib/models/item_memory.dart`

```dart
class ItemMemory {
  final double? estimatedPrice;
  final int quantity;
  final String unit;
  final String? categoryId;
}
```

### Novo provider: `recentItemMemoryProvider`

Arquivo: `lib/app/lists/providers/item_memory_provider.dart`

- Tipo: `@riverpod Future<Map<String, ItemMemory>>`
- Query: `users/{uid}/items`, `limit(200)`, `orderBy updatedAt desc`
- Fold: `Map<String, ItemMemory>` indexado por `nome.trim().toLowerCase()`
- Primeira ocorrência por nome = mais recente = wins
- Sem nova coleção Firestore — reusa `users/{uid}/items` existente
- Falha silenciosa: se provider lançar exceção, QuickAddBar ignora e continua sem preview

### Mudanças em `QuickAddBar`

Arquivo: `lib/app/lists/widgets/quick_add_bar.dart`

- Ao selecionar sugestão no autocomplete:
  1. Normaliza nome: `nome.trim().toLowerCase()`
  2. Lê `recentItemMemoryProvider`
  3. Se achou memória → armazena em `_prefilledMeta` (state local)
  4. Exibe chip-row abaixo do campo de texto
- **Chip-row:** `[🏷 Categoria] [R$X,XX] [N unidade] [✕]`
  - Nome da categoria resolvido via `categoriesProvider` (já disponível no widget tree)
  - `✕` limpa `_prefilledMeta` → adiciona só com nome
- Confirmar com memória → `addItem(name, qty, unit, price, categoryId)`
- Confirmar sem memória → comportamento atual (só nome)

### Mudanças em `ShoppingItemTile`

Arquivo: `lib/app/lists/widgets/shopping_item_tile.dart`

- Preço (`Text` com `formatCurrency(...)`) vira `_InlinePriceField`
- Quantidade (texto `'${item.quantity}'`) vira `_InlineQtyField`
- Ambos só ativos quando `!isShoppingMode && !selectionMode`

**`_InlinePriceField` / `_InlineQtyField`** (widgets privados na tile):
- Estado: `_editing` (bool), `_controller` (TextEditingController)
- `onTap` → `setState(() => _editing = true)` + `FocusNode.requestFocus()`
- `onSubmitted` / `onEditingComplete` / `FocusNode.onUnfocus` → salva
- Save: chama `shoppingListItemsProvider.notifier.updateItem(...)`
- Erro no save: revert para valor anterior + `SnackBarUtils.showError()`
- `_editing = false` em qualquer caso (sucesso ou erro)

---

## Fluxo de Dados

### Adicionar item com memória

```
User digita "arroz" no QuickAddBar
→ autocomplete sugere "Arroz"
→ user toca "Arroz"
→ normaliza: "arroz"
→ lê recentItemMemoryProvider["arroz"]
→ achou: {qty:2, unit:"kg", price:8.99, categoryId:"graos"}
→ exibe chip-row: [🏷 Grãos] [R$8,99] [2 kg] [✕]
→ user confirma
→ addItem("Arroz", qty:2, unit:"kg", price:8.99, categoryId:"graos")
→ item adicionado completo em 2 taps
```

### Editar preço inline

```
User toca "R$8,99" no tile
→ Text → TextField inline, pré-preenchido "8.99"
→ user digita "9.49" + submit (ou tap fora)
→ updateItem(id, estimatedPrice: 9.49)
→ Firestore atualizado
→ se erro: revert "8.99" + snackbar
```

### Editar quantidade inline

```
User toca "2" no tile (quantidade)
→ Text → TextField inline, tipo number
→ user digita "3" + submit
→ updateItem(id, quantity: 3)
```

---

## Degradação Graciosa

| Cenário | Comportamento |
|---|---|
| `recentItemMemoryProvider` falha | QuickAddBar funciona sem preview (igual hoje) |
| Item sem histórico | Nenhum chip-row exibido |
| Usuário anônimo sem UID | Provider retorna map vazio; sem crash |
| Firestore offline ao salvar inline | Revert + snackbar erro |
| Tela pequena (< 380px) | Inline qty/price ainda funciona (tap → field) |

---

## Testes

- **Unit — normalização:** `"  Arroz  "` → `"arroz"`, `"FEIJÃO"` → `"feijão"`
- **Unit — fold do Map:** primeira ocorrência (mais recente) prevalece sobre duplicatas
- **Unit — degradação:** provider com erro retorna empty map sem throw
- **Widget — inline price:** confirma com novo valor; reverte em erro de Firestore
- **Widget — inline qty:** aceita apenas inteiros positivos; ignora valor inválido

---

## Fora de Escopo

- Edição inline de nome (requer lógica de deduplicação mais complexa)
- Edição inline de categoria (requer picker, não cabe inline)
- Memória cross-device para usuários anônimos (sem UID estável)
- Sincronização da memória em tempo real (snapshot único na sessão é suficiente)
