# Onboarding Alta Conversão — Spec

## Objetivo

Redesenhar o fluxo de onboarding do KipiList para maximizar conversão no hard paywall com 7 dias de trial gratuito, usando princípios comprovados de sunk cost, micro-commitments e personalização progressiva.

## Contexto e Motivação

O fluxo atual apresenta três problemas críticos:
1. O AI chat como primeiro passo exige 3 inputs de digitação antes de qualquer valor percebido
2. O skip do AI chat chama `_finishOnboarding()` — usuário sai do app sem ver o paywall
3. Os dados coletados no AI chat (nome + comida) são coletados novamente no slide de personalização

Dados de mercado embasam a solução:
- Hard paywall converte 5,5x mais que freemium (12,1% vs 2,2% no D35)
- Micro-commitments ativam sunk cost após 2+ interações
- "Analyzing your profile" loading screen antes do paywall é a tela de maior alavancagem no funil
- Paywalls animados convertem 2,9x mais que estáticos
- Números específicos ("47.392 usuários") convertem 270% mais que vagos ("milhares")
- Trial de 7 dias no plano anual: 40,4% trial-to-paid

## Fluxo Definitivo — 7 Passos

```
[1] Hook Animado (3s, auto-avança)
[2] Login SSO (Apple + Google)
[3] Conhecendo Você (nome + categoria + grupo)
[4] Demo de Valor — AI com quick-reply buttons
[5] Micro-Commitments (objetivos do usuário)
[6] "Montando seu plano..." (loading 4s + prova social)
[7] Hard Paywall personalizado (7 dias trial)
```

---

## Tela 1 — Hook Animado

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_hook.dart`

- Fundo com gradiente (primary → tertiary, igual ao hero do paywall atual)
- Kipi mascot (`assets/images/kipi/kipi_welcome.png`) centralizado com fade+scale de entrada
- Headline: `onboardingHookHeadline` — "Sua lista de compras com inteligência artificial"
- 3 items aparecem sequencialmente com animação de escrita (stagger 400ms cada):
  - `🥩 Frango grelhado`
  - `🧀 Queijo mussarela`
  - `🍅 Tomate cereja`
- Auto-avança após 3,5 segundos via `Future.delayed`
- **Sem botão, sem skip** — 3,5s não justifica interação

---

## Tela 2 — Login SSO

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_welcome_login.dart` (já existe, ajustar framing)

- Manter estrutura atual de login
- Alterar headline para: `onboardingLoginHeadline` — "Entre em 1 segundo"
- Alterar subtexto para: `onboardingLoginSubtitle` — "Suas listas ficam salvas e sincronizadas"
- Manter Apple Sign In + Google Sign In
- "Continuar sem conta" permanece como texto discreto (não botão)
- Skip/anonimo vai para Tela 3, **nunca sai do app**

---

## Tela 3 — Conhecendo Você

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_personalization.dart` (refatorar)

**Campo de nome** (opcional):
- Label: `onboardingPersonalizationNameLabel` — "Como posso te chamar?"
- Placeholder: `onboardingPersonalizationNameHint` — "Seu nome (opcional)"
- Sem bloqueio se vazio

**Chips de categoria** (seleção única, obrigatório):
- `onboardingCategoryGrocery` — "🛒 Mercado"
- `onboardingCategoryPharmacy` — "💊 Farmácia"
- `onboardingCategoryRecipes` — "🍽️ Receitas"
- `onboardingCategoryHome` — "🏠 Casa"
- `onboardingCategoryPet` — "🐾 Pet"

**Chips de grupo** (seleção única, obrigatório):
- `onboardingGroupSolo` — "👤 Só eu"
- `onboardingGroupCouple` — "👥 Com alguém"
- `onboardingGroupFamily` — "👨‍👩‍👧 Família"

Botão "Continuar" sempre habilitado. Dados salvos em `OnboardingData`.

**Mudança no modelo `UserPreferences`:** adicionar campos `shoppingCategory` (String) e `householdSize` (String).

---

## Tela 4 — Demo de Valor (AI Chat Refatorado)

**Arquivo:** `lib/app/onboarding/screens/onboarding_ai_chat.dart` (refatorar)

O chat usa os dados coletados na Tela 3 para personalizar a demo. **Substituir TextField por quick-reply buttons** — zero digitação.

**Fluxo do chat:**

1. AI: `onboardingAiDemoGreeting` — "Oi [nome]! Vi que você organiza [categoria] 😊"
   - 600ms delay
2. AI: `onboardingAiDemoOffer` — "Quer que eu monte uma lista agora?"
   - Aparecem 2 quick-reply buttons:
     - `onboardingAiDemoYes` — "✅ Sim, monta pra mim!"
     - `onboardingAiDemoChange` — "🔄 Outra categoria"
3. Usuário toca "Sim" → AI "digita" (typing indicator) → lista aparece item por item
   - Lista usa `_foodIngredients` existente mapeada pela categoria selecionada
4. AI: `onboardingAiDemoReaction` — "Pronto! Criei {count} itens para você 🎉"
5. Botão CTA aparece: `onboardingAiDemoContinue` — "Incrível! Quero mais →"

Se usuário toca "Outra categoria": mostra chips de categoria novamente, depois volta ao passo 2.

**Remoção:** `TextField`, `_inputController`, `_exchangeCount` baseado em texto livre.

---

## Tela 5 — Micro-Commitments

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_commitments.dart` (novo)

- Headline: `onboardingCommitmentsTitle` — "O que você quer conquistar?"
- Subtexto: `onboardingCommitmentsSubtitle` — "Escolha tudo que se aplica a você"
- Chips de múltipla seleção (mínimo 1 para habilitar Continuar):
  - `onboardingGoalSaveMoney` — "💰 Gastar menos no mercado"
  - `onboardingGoalNeverForget` — "✅ Nunca esquecer um item"
  - `onboardingGoalFaster` — "⚡ Fazer compras mais rápido"
  - `onboardingGoalFamily` — "👨‍👩‍👧 Organizar com a família"
  - `onboardingGoalRecipes` — "🍽️ Planejar receitas da semana"
  - `onboardingGoalPantry` — "📦 Controlar o estoque em casa"
- Botão "Esses são meus objetivos →" habilitado após ≥1 seleção
- Goals salvos em `OnboardingData` como `List<String>`

---

## Tela 6 — "Montando seu plano..."

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_plan_loading.dart` (novo)

- Barra de progresso animada (LinearProgressIndicator, 4 segundos até 100%)
- Textos sequenciais (trocam a cada ~1,3s):
  1. `onboardingLoadingStep1` — "Analisando suas preferências..."
  2. `onboardingLoadingStep2` — "Configurando sua lista personalizada..."
  3. `onboardingLoadingStep3` — "Seu plano está pronto! 🎉"
- Durante a animação, 3 métricas aparecem com fade-in escalonado:
  - `⭐ 4,8` — `onboardingLoadingStat1` — "Avaliação média"
  - `12.847` — `onboardingLoadingStat2` — "Listas criadas essa semana"
  - `94%` — `onboardingLoadingStat3` — "Recomendam o app"
- Auto-avança quando progresso chega a 100%
- **Sem interação, sem skip**

---

## Tela 7 — Hard Paywall (Refatorado)

**Arquivo:** `lib/app/onboarding/screens/onboarding_slide_premium.dart` (refatorar)

### Hero personalizado com objetivo

Substituir headline estático por dinâmico baseado no primeiro goal selecionado na Tela 5:

| Goal selecionado | Headline |
|---|---|
| `saveMoney` | "[Nome], você está a 7 dias de gastar menos nas compras" |
| `neverForget` | "[Nome], você está a 7 dias de nunca mais esquecer um item" |
| `faster` | "[Nome], você está a 7 dias de fazer compras em metade do tempo" |
| `family` | "[Nome], você está a 7 dias de organizar as compras de toda a família" |
| `recipes` | "[Nome], você está a 7 dias de planejar suas receitas automaticamente" |
| `pantry` | "[Nome], você está a 7 dias de ter controle total do seu estoque" |
| fallback | "[Nome], experimente grátis por 7 dias" |

Sem nome: substituir "[Nome], você está" por "Você está".

### Depoimento inline (novo)

Abaixo do grid de features, adicionar 1 depoimento:
- Avatar placeholder (ícone de pessoa)
- Nome: "Ana R., São Paulo"
- Texto: `paywallTestimonial` — *"Economizei R$180 no primeiro mês organizando melhor as compras"*
- Stars: ⭐⭐⭐⭐⭐

### Stagger animation nas features

O grid de features entra com animação escalonada (50ms entre cada item) usando `flutter_animate`.

### CTA e trial

- CTA: `paywallTrialCta` (já existe) — "Começar trial grátis"
- Linha abaixo: `paywallTrialDisclaimer` — "Cancele quando quiser · Cobrado após {days} dias"
- Skip: `paywallSkipNow` — "Agora não" — texto pequeno, `TextButton` no topo direito, cor `onSurfaceVariant`

---

## Mudanças no `onboarding_screen.dart`

1. Remover `_showAiChat` e o branch condicional
2. Novo `_slideCount = 7`
3. Ordem dos slides:
   ```dart
   OnboardingSlideHook(onFinished: _goToNext),          // 0
   OnboardingSlideWelcomeLogin(onLoggedIn: _goToNext, onSkipped: _goToNext), // 1
   OnboardingSlidePersonalization(onNext: _goToNext),   // 2
   OnboardingAiChat(onFinished: _goToNext),              // 3
   OnboardingSlideCommitments(onNext: _goToNext),        // 4
   OnboardingSlidePlanLoading(onFinished: _goToNext),   // 5
   const OnboardingSlidePremium(),                       // 6
   ```

---

## Mudanças no modelo `UserPreferences`

```dart
class UserPreferences {
  const UserPreferences({
    this.displayName = '',
    this.favoriteFood = '',
    this.shoppingCategory = '',
    this.householdSize = '',
    this.goals = const [],
  });

  final String displayName;
  final String favoriteFood;
  final String shoppingCategory;
  final String householdSize;
  final List<String> goals;
  // + copyWith atualizado
}
```

---

## Mudanças no `OnboardingData` provider

Adicionar métodos:
- `updateShoppingCategory(String category)`
- `updateHouseholdSize(String size)`
- `updateGoals(List<String> goals)`

---

## Strings ARB a adicionar (`app_pt.arb` + `app_en.arb`)

Todas as keys marcadas com `onboarding*`, `paywallTestimonial`, `paywallTrialDisclaimer`, `paywallSkipNow`, `paywallGoalHeadline*`.

Ver lista completa nas seções acima. Após editar os ARB: rodar `flutter gen-l10n`.

---

## O que NÃO muda

- `onboarding_slide_welcome_login.dart` — apenas ajuste de strings, lógica intacta
- `onboarding_slide_premium.dart` — lógica de compra/restore intacta, apenas UI
- `onboarding_ai_chat.dart` — lógica de geração de lista intacta, apenas input method
- RevenueCat integration — sem mudanças
- Analytics — adicionar `logOnboardingStepViewed(step)` nos novos slides

---

## Critérios de Sucesso

- 100% dos usuários que baixam o app chegam na Tela 7 (paywall)
- Nenhum caminho de skip sai do app antes do paywall
- Tela 6 (loading) sempre precede o paywall
- Paywall headline é dinâmico com nome e objetivo quando disponíveis
