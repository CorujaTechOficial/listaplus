# UX/UI Gaps — Não Cobertos por Specs Existentes

> Problemas de UX e UI encontrados na análise do código que não estão em nenhum plano existente.

---

## 1. AccountMenuSheet — Sem Contexto de Subscription

**Arquivo:** `lib/app/shared/widgets/account_menu_sheet.dart`

**Problema:** O sheet sempre mostra "Become Premium" independente do status do usuário. Usuário premium vê o mesmo menu que usuário free.

**Fix:**
```dart
// Ler premiumProvider e mostrar menu diferente
if (isPremium) {
  // Mostrar: "KipiList Pro ✓" com badge dourado (não clicável ou vai para manage subscription)
} else {
  // Manter "Become Premium" mas adicionar "7 dias grátis →" como subtítulo
}
```

**Impacto:** Usuário premium que vê "Become Premium" pensa que sua assinatura não está ativa → contata suporte → churn. Custo alto por um fix pequeno.

---

## 2. Versão Hardcoded em Settings

**Arquivo:** `lib/app/settings/screens/settings_screen.dart:326`

**Problema:**
```dart
Text('${l10n.version} 1.0.15+15'),  // hardcoded!
```
`package_info_plus` já está no `pubspec.yaml`. Versão nunca atualiza automaticamente.

**Fix:**
```dart
// Adicionar provider:
final packageInfoProvider = FutureProvider<PackageInfo>((ref) => PackageInfo.fromPlatform());

// No widget:
final packageInfo = ref.watch(packageInfoProvider).value;
Text('${l10n.version} ${packageInfo?.version ?? ''}+${packageInfo?.buildNumber ?? ''}')
```

**Impacto:** Cosmético mas profissional. Usuário reportando bug com versão errada = debugging desnecessário.

---

## 3. ThemeOption Names Hardcoded em Português

**Arquivo:** `lib/models/premium_feature.dart:97-110`

**Problema:**
```dart
ThemeOption(name: 'Fresco', color: Color(0xFF2E7D32), isPremium: false),
ThemeOption(name: 'Oceano', color: Color(0xFF0277BD), isPremium: false),
ThemeOption(name: 'Cálido', color: Color(0xFFE65100), isPremium: false),
// ...
```
App é internacional (86 locales) mas nomes dos temas estão hardcoded em português.

**Fix:** Mover nomes para ARB keys:
```arb
"themeNameFresco": "Fresh",
"themeNameOceano": "Ocean",
"themeNameCalido": "Warm",
```
`ThemeOption.localizedName(AppLocalizations l10n)` method.

**Impacto:** Direto na experiência de usuários internacionais. Alemão que vê "Cálido" não entende.

---

## 4. Deferred Upgrade nos Achievements

**Arquivo:** `lib/app/settings/screens/achievements_screen.dart`

**Problema:** Achievements screen existe mas está desconectada de monetização. Apenas mostra stats.

**O que adicionar:**
- Seção "Conquistas Pro" (bloqueadas com cadeado dourado) para usuários free
- Tap → sheet do paywall com copy "Desbloqueie conquistas exclusivas"
- Stats adicionais premium: "Total gasto este ano", "Itens comprados por categoria"

**Impacto:** Monetização dentro de um contexto de valor percebido (estatísticas) converte bem.

---

## 5. AI Chat — Empty State Fraco

**Arquivo:** `lib/app/ai/widgets/components/chat_empty_state.dart`

**Problema:** (baseado em path — precisa verificar) O empty state provavelmente é estático. Primeira vez que usuário abre o chat, não sabe o que dizer.

**O que adicionar:**
- Suggested prompts rotativos no empty state:
  ```
  💡 Experimente:
  • "Adicione frango, arroz e feijão"
  • "Monte uma lista para fazer macarrão"  
  • "O que está faltando para uma feijoada?"
  ```
- Cada prompt é clicável e envia direto para o AI
- Prompts variam por locale (comida regional)

**Impacto:** Reduz "blank page anxiety" → mais mensagens no D1 → mais ativação → mais conversão.

---

## 6. Navigation — Chat como Aba Principal

**Arquivo:** `lib/main.dart:503-529`

**Observação:** A ordem de navegação é `[AI, Recipes, Lists, Pantry, MealPlanner]`. A lista de compras (core feature) está na 3ª posição. O AI chat está na 1ª.

**Questão estratégica:** Para usuários novos que ainda não viram valor no AI, ver o chat primeiro pode ser confuso. Mas para a estratégia "AI first", faz sentido.

**Sugestão de A/B test:** Testar ordem `[Lists, AI, Recipes, Pantry, MealPlanner]` para novos usuários vs. `[AI, Lists, ...]` para quem completou onboarding do AI.

**Implementação:** Firebase Remote Config já está no pubspec — usar para controlar a ordem por segmento.

---

## 7. Onboarding Pós-AI Chat — Slide Action Não Mencionado

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_action.dart`

**O que é este slide?** Não está no spec de onboarding-high-conversion. Precisa verificar se está ativo no fluxo atual e se conflita com o redesign planejado.

**Ação:** Verificar se `onboarding_slide_action.dart` é renderizado em `onboarding_screen.dart` e se o spec de high-conversion o elimina corretamente.

---

## 8. Lista Vazia — Quick Actions Removidas

**Arquivo:** `lib/main.dart:477`

**Problema conhecido (AGENTS.md):** `action_add` foi removido pois não há como mostrar dialog fora da widget tree. Apenas `action_pantry` e `action_ai` estão ativos.

**Solução melhor:** Usar `navigatorKey` global + `showDialog` com o key como contexto. Ou rota nomeada:
```dart
// Quick action → navegar para lista + abrir AddItemDialog via route argument
navigatorKey.currentState?.pushNamed('/list', arguments: {'openAddDialog': true});
```

**Impacto:** Atalho de "Adicionar item" na home do Android é uma feature super-solicitada e aumenta engagement direto.

---

## 9. No-Lists Screen — Sem Sugestão de Template

**Arquivo:** `lib/main.dart:614`

**Problema:** Quando não há listas, mostra apenas `EmptyState` + botão "Criar primeira lista". Nenhuma sugestão de como começar.

**O que adicionar:**
- Após o botão "Criar primeira lista": 3 chips de templates rápidos:
  ```
  📋 Lista de Mercado     🍕 Lista de Churrasco     💊 Lista de Farmácia
  ```
- Cada chip cria a lista com itens pré-populados usando `common_products.dart`
- Reduz friction do D1 massivamente

**Impacto:** First-time user que cria uma lista com itens em 5 segundos tem chance muito maior de retornar.

---

## 10. Share List Sheet — CTA de Upgrade Ausente

**Arquivo:** `lib/app/lists/widgets/share_list_sheet.dart`

**Problema:** Não verificado, mas provavelmente o sheet de compartilhamento para usuários free simplesmente mostra paywall sem contexto.

**O que melhorar:**
- Antes de mostrar paywall, mostrar preview do que o compartilhamento parece:
  ```
  [mockup de lista compartilhada]
  "Compartilhe sua lista com sua família em tempo real"
  [Experimentar grátis por 7 dias]  [Não agora]
  ```
- Copy contextual: "Abson convidou você para a Lista do Mercado" = social proof built-in

---

## 11. Haptic Feedback Inconsistente

**Arquivo:** `lib/app/lists/widgets/kipi_quick_bar.dart:97`

**Observação:** `HapticFeedback.lightImpact()` está no KipiQuickBar ao enviar. Mas provavelmente falta em:
- Marcar item como comprado (o mais importante)
- Arrastar para deletar
- Completar toda a lista

**Fix:** Audit de haptics em `ShoppingItemTile`, `SelectionBottomBar`, `ShoppingCompletionView`.

**Impacto:** Haptic feedback consistente é a diferença entre um app "polido" e um app "premium". Reviews 5 estrelas mencionam haptics.

---

## 12. Erro de Render Hardcoded em Inglês

**Arquivo:** `lib/main.dart:160-164`

**Problema:**
```dart
child: const Text(
  'Oops! Something went wrong rendering this screen.',  // hardcoded English!
  textAlign: TextAlign.center,
),
```
App de 86 locales com mensagem de erro em inglês puro.

**Fix:** Adicionar key `renderError` ao ARB e usar `AppLocalizations`.

Nota: `ErrorWidget.builder` não tem acesso ao `context` diretamente — usar `WidgetsBinding.instance.platformDispatcher.locale` para pegar locale e carregar string manualmente.

---

## 13. Sorting Options — Falta Opção "Por Loja"

**Arquivo:** `lib/app/lists/widgets/sort_options_sheet.dart`

**Verificar:** Quais opções de ordenação existem? Se multi-store for implementado (Feature #6 no doc de retenção), precisará de "Ordenar por loja" aqui.

**Opções que deveriam existir:**
- Por nome (A-Z)
- Por categoria
- Por loja (novo)
- Por preço (premium)
- Por frequência de compra (premium, usando item memory)

---

## 14. Budget Dialog — Sem Tutorial

**Arquivo:** `lib/app/lists/widgets/budget_dialog.dart`

**Problema provável:** Orçamento por lista é premium. Usuários free que tocam vão direto para paywall sem ver o benefício.

**Melhorar:** Antes do paywall, mostrar screenshot/preview do budget em uso com número real (ex: "Você está em R$0 de R$300"). Depois CTA de upgrade.

---

## 15. Export Options — Sem Preview

**Arquivo:** `lib/app/lists/widgets/export_options_sheet.dart`

**O que adicionar:**
- Preview do PDF/Excel antes de exportar
- "Compartilhar via WhatsApp" como atalho (share_plus + formato texto amigável)
- "Copiar para área de transferência" = zero atrito

**Impacto:** WhatsApp share é o compartilhamento #1 no Brasil. Tornar fácil = viral loop orgânico.
