# List Screen Critique Fixes

Branch: fix/list-screen-critique-fixes
Merge base: 9c073d0

## Global Constraints

- Flutter project: `br.com.curujatech.listaplus`
- Strict lint: `strict-casts`, `strict-inference`, `strict-raw-types` — tipos explícitos em todo lugar
- `always_put_control_body_on_new_line` — nunca `if (x) return y;` em linha única
- Nenhuma string UI hardcoded — usar `AppLocalizations.of(context)!` (exceto brand names)
- Design tokens: `Spacing.*`, `RadiusTokens.*` — nunca literais numéricos crus em `EdgeInsets`/`BorderRadius`
- `AppSemanticColors`/`AppColors`/`ColorScheme` — nunca `Colors.<named>` em widgets (exceto `white`/`black`/`transparent`)
- Ícones: `PhosphorIcons*` (não `Icons.*`)
- `PopupMenuButton` deve usar `icon: const Icon(Icons.more_vert)`
- `dart run build_runner build --delete-conflicting-outputs` após editar providers `@riverpod`
- `flutter gen-l10n` após editar `.arb`
- `flutter analyze --fatal-infos` deve passar sem erros novos

## Tasks

### Task 1: Bottom input hierarchy (P0)

**File**: `lib/app/lists/list_screen_body.dart`

**Problem**: `KipiQuickBar` e `_CatalogEntryButton` coexistem no bottom com peso visual idêntico (ambos em cor `primary`). O usuário não sabe qual usar para adicionar um item.

**Solution**:
- `KipiQuickBar` permanece como entry point primário (sem mudança estrutural nele)
- `_CatalogEntryButton` vira entrada secundária: mudar `foregroundColor` de `primary` para `onSurfaceVariant` (ou similar muted do tema), reduzir o `TextStyle` weight se aplicável, e adicionar `visualDensity: VisualDensity.compact` para deixá-lo visivelmente menor em importância
- NÃO remover o botão — apenas hierarquizar visualmente
- Preservar toda a lógica existente, apenas ajustar aparência

**Acceptance**:
- `_CatalogEntryButton` aparece visualmente secundário (cor muted) em relação ao KipiQuickBar
- Nenhuma mudança de comportamento/lógica
- `flutter analyze` sem novos erros

---

### Task 2: Harden kipi_quick_bar.dart (P1 × 2)

**File**: `lib/app/lists/widgets/kipi_quick_bar.dart`

**Fix A — text field antes do write**:
- Localizar `_send()` ou método equivalente onde `_controller.clear()` é chamado antes de `await addItem()`
- Mover `_controller.clear()` para dentro do bloco de sucesso (após o await, antes de qualquer `finally`)
- Em caso de erro, o texto deve permanecer no campo; o snackbar de erro deve aparecer normalmente

**Fix B — ícone de microfone sem estado**:
- Localizar o condicional `if (_isListening) icon : icon` onde ambas as branches retornam `PhosphorIconsRegular.microphone`
- Branch ativa (`_isListening == true`): trocar para `PhosphorIconsRegular.stop` (ou `PhosphorIconsRegular.microphoneSlash` se `stop` não existir no Phosphor Icons)
- Branch inativa: manter `PhosphorIconsRegular.microphone`
- A cor vermelha em estado ativo deve ser mantida

**Acceptance**:
- Campo não limpa quando write falha
- Ícone muda para `stop`/`microphoneSlash` quando gravando
- `flutter analyze` sem novos erros

---

### Task 3: Guard "clear purchased" (P2)

**File**: `lib/app/lists/list_screen_body.dart` (overflow menu / popup menu handler)

**Problem**: A ação "clear purchased" no overflow menu chama `_clearPurchased()` diretamente, sem confirmação. "Delete selected" tem dialog de confirmação — "clear purchased" deve ter também.

**Solution**:
- Localizar o handler da ação `'clear'` (ou equivalente) no `PopupMenuButton`
- Adicionar `showDialog<bool>` com `AlertDialog` antes de chamar `_clearPurchased()`
- Dialog: título = `l10n.confirmClearPurchasedTitle` (novo ARB key), content = `l10n.confirmClearPurchasedMessage` (novo ARB key), botões = Cancel + Confirm (destructive style)
- Adicionar ambas as keys em `lib/l10n/app_en.arb`:
  - `"confirmClearPurchasedTitle": "Clear purchased items?"`
  - `"confirmClearPurchasedMessage": "This will remove all purchased items from your list. This action cannot be undone."`
- Rodar `flutter gen-l10n` após editar ARB
- NÃO rodar o script de tradução automática — deixar apenas o inglês por ora

**Acceptance**:
- "Clear purchased" mostra dialog antes de executar
- Dialog tem Cancel (não executa) e Confirm (executa)
- `flutter gen-l10n` sem erros
- `flutter analyze` sem novos erros

---

### Task 4: Lighten upsell em shopping_completion_view.dart (P2)

**File**: `lib/app/lists/widgets/shopping_completion_view.dart`

**Problem**: O `Card` de upsell tem peso visual de conteúdo (elevation default, padding, título + subtítulo + botão). Interrompe o pico emocional de conclusão com marketing pesado.

**Solution**:
- Remover o `Card` container — sem elevation, sem surface tint, sem padding de card
- Transformar em layout inline simples: um `Text` com copy do upsell em `bodyMedium` / `onSurfaceVariant` + abaixo um `TextButton` (não `FilledButton`) para o CTA de upgrade
- Preservar toda a lógica de navegação ao pressionar o CTA
- Manter o guard `if (!isPremium)` para mostrar/esconder o upsell
- Não adicionar novas strings ARB — reutilizar as existentes ou verificar quais já existem no arquivo atual

**Acceptance**:
- Upsell sem `Card` / elevation
- CTA é `TextButton`, não `FilledButton` ou `ElevatedButton`
- Lógica de navegação/ação preservada
- `flutter analyze` sem novos erros

---

### Task 5: Fix export icon no overflow menu (P3)

**File**: `lib/app/lists/list_screen_body.dart`

**Problem**: O overflow menu usa `PhosphorIconsRegular.shareNetwork` tanto para "Share" (share-as-text) quanto para "Export" (PDF/Excel). São ações distintas.

**Solution**:
- Localizar o item de menu "Export" (PDF/Excel) no `PopupMenuButton` de `list_screen_body.dart`
- Trocar o ícone de `PhosphorIconsRegular.shareNetwork` para `PhosphorIconsRegular.fileArrowDown`
- O item "Share" (share-as-text) mantém `PhosphorIconsRegular.shareNetwork`
- `list_actions_sheet.dart` já usa `fileArrowDown` para export — verificar para consistência mas NÃO alterar esse arquivo (já correto)

**Acceptance**:
- "Export" usa `PhosphorIconsRegular.fileArrowDown` no overflow menu
- "Share" mantém `PhosphorIconsRegular.shareNetwork`
- `flutter analyze` sem novos erros
