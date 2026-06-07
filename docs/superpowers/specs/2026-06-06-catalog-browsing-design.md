# Catálogo de Produtos — Design Spec

**Data:** 2026-06-06  
**Status:** Aprovado  
**Feature:** Tela de catálogo de produtos para adição de itens à lista de compras

---

## Problema

A forma atual de adicionar itens à lista de compras exige que o usuário saiba o nome exato do produto, digitando manualmente. A lista de sugestões tem ~90 produtos hardcoded em PT-BR, sem marcas e sem relevância por região. O usuário não consegue "navegar" pelo que quer comprar — precisa lembrar e digitar tudo. O scanner de código de barras existe mas não identifica nenhum produto.

---

## Solução

Uma **tela dedicada de catálogo** que replica a experiência de mercado online: o usuário navega por categorias, vê produtos com marcas rankeados por popularidade no seu país, busca e filtra dentro de cada categoria, e adiciona itens com controle de quantidade — sem precisar digitar nada.

---

## Fluxo de Usuário

```
Lista de Compras
  └─ botão "Buscar no Catálogo"
       └─ Home do Catálogo
            ├─ busca global → resultados em tempo real
            ├─ seção "Meus Frequentes" (toque para adicionar direto)
            └─ grade de categorias
                 └─ Tela de Categoria (ex: Refrigerantes)
                      ├─ barra de busca (dentro da categoria)
                      ├─ chips: ordenação + filtros
                      ├─ lista de produtos com +/−
                      └─ botão "Adicionar X itens →" (rodapé fixo)
                           └─ itens adicionados à lista, volta para a lista
```

---

## Telas

### 1. Entrada — Lista de Compras

- Botão **"+ Buscar no Catálogo"** acima da barra de adição rápida existente.
- A barra de texto rápida (QuickAddBar) permanece para quem prefere digitar.

### 2. Home do Catálogo

- **AppBar** com título "Catálogo" e botão de voltar.
- **Barra de busca global** — busca em todos os produtos de todas as categorias via Open Food Facts API. Resultados em tempo real (debounce de 300ms).
- **Seção "Meus Frequentes"** — chips horizontais com os 10 produtos mais adicionados pelo usuário (do `ItemHistory` já existente no Firestore). Toque direto adiciona à lista ativa atual (o `listId` é passado como parâmetro para a tela do catálogo).
- **Grade de Categorias** — grid 2 colunas com ícone + nome. Mínimo de 12 categorias cobrindo os principais grupos alimentares e de higiene.

Categorias iniciais:
`Carnes`, `Hortifruti`, `Laticínios`, `Padaria`, `Bebidas`, `Limpeza`, `Higiene`, `Frios e Embutidos`, `Mercearia`, `Congelados`, `Petiscos`, `Bebidas Alcoólicas`

### 3. Tela de Categoria

- **AppBar** com nome e ícone da categoria + contador de itens selecionados.
- **Barra de busca** — filtra os produtos da categoria atual.
- **Chips de controle** (scroll horizontal):
  - Ordenação: `↕ Mais populares` (padrão), `A–Z`
  - Filtros dinâmicos por categoria (ex: em Bebidas → `🇧🇷 Nacionais`, `Diet/Zero`, `Lata`, `Garrafa`)
- **Lista de produtos** (flat list, scroll vertical):
  - Cada item: nome do produto + marca + tamanho/unidade + flag de país + controles `−` `[qtd]` `+`
  - Produto com quantidade > 0: borda na cor primária
  - Produtos raros/importados: separados por divisória "menos encontrados no Brasil" + opacidade reduzida
- **Botão de confirmação** (fixo no rodapé): "Adicionar X itens →" — só aparece quando há itens selecionados. Ao tocar, adiciona todos os itens à lista e navega de volta.

---

## Ranking e Personalização

### Ranking base (Open Food Facts)
Produtos rankeados pelo campo `unique_scans_n` (número de scans na base global), filtrados por `countries_tags` contendo o país derivado do locale do dispositivo (ex: `en:brazil` para `pt_BR`).

### Boost por histórico do usuário
Após carregar os resultados da API, aplica um boost de posição para produtos cujo nome normalizado existe no `ItemHistory` do usuário. Fórmula simples: produtos frequentes sobem para o topo da lista dentro da categoria, mantendo o ranking base entre si.

### Produtos raros
Produtos sem `countries_tags` correspondente ao país do usuário, ou com `unique_scans_n` abaixo de um threshold (ex: < 100 para o país), são movidos para uma seção separada ao final da lista com separador visual e opacidade 0.45.

---

## Dados — Open Food Facts API

**Base URL:** `https://world.openfoodfacts.org/cgi/search.pl`

**Busca por categoria:**
```
GET /cgi/search.pl
  ?action=process
  &tagtype_0=categories
  &tag_contains_0=contains
  &tag_0={categoria}
  &tagtype_1=countries
  &tag_contains_1=contains
  &tag_1={país}
  &sort_by=unique_scans_n
  &json=1
  &page_size=50
```

**Busca por texto:**
```
GET /cgi/search.pl
  ?search_terms={query}
  &tagtype_0=countries
  &tag_contains_0=contains
  &tag_0={país}
  &sort_by=unique_scans_n
  &json=1
  &page_size=30
```

**Lookup por código de barras (scanner):**
```
GET https://world.openfoodfacts.org/api/v0/product/{barcode}.json
```

- API gratuita, sem autenticação.
- Rate limit: respeitoso, sem chamadas agressivas. Cache local de 24h por categoria/país para reduzir latência.
- País derivado de `Localizations.localeOf(context).countryCode` mapeado para o formato Open Food Facts (`pt_BR` → `brazil`).

---

## Scanner de Código de Barras

O `_BarcodeScannerSheet` atual retorna apenas o código bruto. Com essa feature:
1. Scanner captura o código de barras.
2. App chama `GET /api/v0/product/{barcode}.json` na Open Food Facts.
3. Se encontrar: preenche nome + marca + categoria automaticamente no campo de adição.
4. Se não encontrar: comportamento atual (exibe o código), mas com mensagem "Produto não encontrado, digite o nome".

---

## Arquitetura

### Novos arquivos

```
lib/app/catalog/
  screens/
    catalog_home_screen.dart       # Home com frequentes + grade de categorias
    catalog_category_screen.dart   # Lista de produtos de uma categoria
  providers/
    catalog_providers.dart         # Riverpod providers para busca e cache
    catalog_providers.g.dart       # Gerado pelo build_runner
  widgets/
    category_grid.dart             # Grade de categorias
    product_list_tile.dart         # Tile de produto com +/−
    catalog_search_bar.dart        # Barra de busca reutilizável
  models/
    catalog_product.dart           # Modelo de produto do catálogo
    catalog_category.dart          # Modelo de categoria
```

### Provider principal

```dart
@riverpod
Future<List<CatalogProduct>> catalogProducts(
  Ref ref, {
  required String category,
  required String countryCode,
  String? searchQuery,
  CatalogSortMode sort = CatalogSortMode.popular,
}) async { ... }
```

- Chama Open Food Facts API.
- Aplica boost do `ItemHistory`.
- Separa produtos raros.
- Resultado cacheado em memória por `(category, countryCode, searchQuery)` enquanto o app estiver aberto (Riverpod keepAlive). Sem cache persistente em disco nesta versão.

### Integração com lista existente

- Ao confirmar no catálogo, chama `shoppingListItemsProvider(listId).notifier.addItems(items)` — método já existente.
- `ItemHistory.trackItem()` já é chamado dentro de `addItem`/`addItems` — nenhuma mudança necessária.

### Scanner

- Modifica `_BarcodeScannerSheet` em `quick_add_bar.dart` para chamar o provider de lookup por barcode após capturar o código.
- Retorna `CatalogProduct?` em vez de `String?`.

---

## Localização

Todas as strings novas adicionadas em `lib/l10n/app_en.arb` e traduzidas via `flutter gen-l10n`.

Strings necessárias:
- `catalogTitle` — "Catálogo"
- `catalogMyFrequents` — "Meus Frequentes"
- `catalogSearchGlobal` — "Buscar qualquer produto..."
- `catalogSearchInCategory` — "Buscar em {category}..."
- `catalogSortPopular` — "Mais populares"
- `catalogSortAZ` — "A–Z"
- `catalogFilterNational` — "🇧🇷 Nacionais"
- `catalogRareSection` — "menos encontrados no Brasil"
- `catalogAddItems` — "Adicionar {count} {count, plural, one{item} other{itens}} →"
- `catalogProductNotFound` — "Produto não encontrado, digite o nome"

---

## O que NÃO está no escopo

- Preços de produtos (não disponível na Open Food Facts de forma confiável).
- Imagens de produtos (aumentaria muito o consumo de dados — pode ser adicionado depois).
- Catálogo offline completo (requer download pesado — cache de 24h é suficiente por ora).
- Personalização por supermercado específico.
- Remoção do scanner da UI (fica, mas agora com lookup real).

---

## Dependências

- `http: ^1.2.0` — já presente no `pubspec.yaml`. Nenhuma dependência nova necessária.
