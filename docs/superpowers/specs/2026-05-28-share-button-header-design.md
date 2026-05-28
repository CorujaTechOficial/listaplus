# Share Button no Header Principal

## Objetivo

Adicionar um botão de compartilhamento visível no AppBar de todas as telas para aumentar as chances de convidar amigos para listas e divulgar o app.

## Escopo

### Botão no AppBar

Um `IconButton` com `Icons.share` no `actions: []` de todos os AppBars:

- **Lista de Compras** (`list_screen_body.dart`) — SliverAppBar, antes do search/⋮
- **IA** (`ai_home_screen.dart`) — AppBar padrão, antes do ⋮
- **Receitas** (`recipes_screen.dart`) — AppBar
- **Cardápio** (`meal_planner_screen.dart`) — AppBar
- **Pantry** (`pantry_screen.dart`) — AppBar

### Comportamento por Tela

**Telas com contexto de lista (Lista, IA):**
- Ao tocar → abre bottom sheet com 2 opções:
  1. "Convidar para lista" (Icons.person_add)
  2. "Compartilhar o app" (Icons.share)

**Telas sem contexto de lista (Receitas, Cardápio, Pantry):**
- Ao tocar → abre direto o share sheet nativo (compartilhar app)

### Bottom Sheet "Convidar para Lista"

1. Verifica Premium (`premiumProvider`)
2. Se não for Premium → dialog "Assine Premium para compartilhar listas" + botão pra paywall
3. Se for Premium → chama `ShareService.createShareCode(listId)` (já existe)
4. Mostra dialog com código em `SelectableText` + botão "Copiar"
5. Amigo usa "Importar via código" (já existe no `ListSwitcherSheet`)

### Compartilhar o App

- Sem gating de Premium
- Chama `SharePlus.instance.share()` com mensagem de indicação
- Reusa o texto e link de referral já existente no `ai_home_screen.dart` (`SystemActionType.shareReferral`)

## Arquivos a Modificar

- `lib/app/lists/list_screen_body.dart` — adicionar IconButton no SliverAppBar actions
- `lib/app/ai/screens/ai_home_screen.dart` — adicionar IconButton no AppBar actions
- `lib/app/recipes/screens/recipes_screen.dart` — adicionar IconButton no AppBar actions
- `lib/app/meal_planner/screens/meal_planner_screen.dart` — adicionar IconButton no AppBar actions
- `lib/app/pantry/screens/pantry_screen.dart` — adicionar IconButton no AppBar actions
- `lib/l10n/app_en.arb` — novas strings de localização

## Localização (ARB)

Novas chaves:
- `shareList` → "Share list"
- `shareApp` → "Share app"
- `inviteToList` → "Invite to list"
- `shareListDescription` → "Share your shopping list with friends"
- `premiumRequiredForSharing` → "Sharing lists requires Lista Plus Premium"
- `shareCodeCopied` → "Code copied!"
- `shareYourListCode` → "Share this code with a friend:"

## Não Escopo

- Edição colaborativa em tempo real (já existe como leitura)
- Remover as opções de share existentes do menu ⋮ (permanecem)
- Mudar o fluxo de importação de listas
