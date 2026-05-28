# Onboarding Carousel Redesign — AI-First Conversational Onboarding

**Date:** 2026-05-28
**Status:** Approved design, pending implementation

## Problem

Current onboarding carousel uses generic slides (list icon, AI icon, share icon, premium icon) with hardcoded strings and a skip button. Users can skip onboarding without understanding value. Paywall is a separate screen — adds friction. The app's core differentiator (AI agent) is never demonstrated.

## Research Foundation

### Sources consulted (10+ articles)
- RevenueCat: "How top apps approach paywalls" (Rosie Hoggmascall) — 3-slide carousel → paywall = **15% trial opt-in vs 2%**
- RevenueCat: Paywall redesign case studies (Paywalls.Design) — 4 apps, short-form inline sempre ganha (+64% revenue, +72% trial, +17% ARPU, +20% conversion)
- RevenueCat: "Paywall placement" (Greg app 5x, Rootd 5x, Headspace double-digit lift)
- RevenueCat: "Essential guide to paywalls" (Michal Parizek, Mojo — onboarding = 50% trial starts)
- RevenueCat: "Mimo case study" (Ekaterina Gamsriegler — LTV +65%)
- RevenueCat: "Hard paywall vs soft paywall" (Headspace case study)
- RevenueCat: "What the best subscription apps get right" (Rosie Hoggmascall)
- RevenueCat: "Weird paywalls that work" (CoinStats 2.9x lift, Flo engagement)
- RevenueCat: "Activation metrics" (Jan 2026) — TTFV, moment of value perception vs experience
- RevenueCat: "5 overlooked paywall improvements" — animations +12-18% conversion, price anchoring

### Key Finding
**Demonstrating value > listing value.** Rosie's test: carrossel → paywall = 15%. AI conversacional demonstra o CORE PRODUCT em ação. Waterllama (animação), CapCut (demo interativa), CoinStats (meme + emoção) — todos provam que experiência > feature list.

## Design

### Flow

```
TELA 1: AI CHAT (onboarding conversacional)
───────────────────────────────────────────
🤖 "Oi! Eu sou seu assistente inteligente.
   Como você quer me chamar?"

→ Usuário digita: "Zé"

🤖 "Zé? Adorei! Então Zé, qual é
   sua comida favorita?"

→ Usuário digita: "Strogonoff"

🤖 "Hmm, delícia! E como você prepara?
   Posso sugerir os ingredientes!"

→ Usuário responde ou pede sugestão
→ AI gera lista categorizada automaticamente

🤖 "Pronto! Sua lista está organizada.
   Quer ir pra lista de compras ou
   continuar conversando?"

→ [📋 Lista]  [💬 Chat]
   ⚙️ "Depois pode mudar nas configurações"

───────────────────────────────────────────
➡️ [PRÓXIMO → Login]

TELA 2: LOGIN (Google/Apple)
TELA 3: COMPARTILHE (breve)
TELA 4: PREMIUM (paywall inline)
```

### Tela 1: AI Chat (simulado localmente)

O AI conversacional é **simulado** (não faz chamada real ao DeepSeek). Motivos:
- Zero latência (instantâneo)
- Zero custo de API
- Funciona offline
- 100% confiável

**Comportamento:**

| Passo | AI diz | Ação do usuário | Resposta do sistema |
|---|---|---|---|
| 1 | "Oi! Eu sou seu assistente. Como quer me chamar?" | Digita nome | Salva nome, animação de "digitando..." |
| 2 | "[Nome]? Adorei! Posso ajudar com listas, categorizar itens, dar sugestões e muito mais. Qual sua comida favorita?" | Digita comida | Mapeia comida → lista de ingredientes |
| 3 | "Hmm, e como você prepara? Posso sugerir os ingredientes!" | Digita ou "Sugira!" | Gera lista categorizada animada |
| 4 | "Pronto! Quer ir pra lista ou continuar?" | Escolhe Lista/Chat | Salva preferência de tela inicial |

**Fluxo "Pular para lista":** Opção disponível no canto (texto pequeno) para usuários que querem ir direto.

### Tela 2: Login

- Botão Google (sempre)
- Botão Apple (iOS/macOS)
- "Continuar como convidado" (link pequeno)

### Tela 3: Compartilhe

- Brief value prop: "Compartilhe listas com quem você ama"
- Slide informativo simples

### Tela 4: Premium (paywall inline)

- RevenueCat offerings carregados
- Anual destacado + badge "Melhor Valor"
- Mensal opcional atrás de "Ver todos"
- Botão "Assinar"
- Disclaimer: "Cancele quando quiser"
- Restaurar + links de privacidade

### Navigation

| Elemento | Comportamento |
|---|---|
| Skip | **Removido** |
| X no topo | Sai do onboarding, entra como anônimo |
| Swipe | Habilitado entre telas 2-4; travado no premium |
| Default screen setting | Salvo em SharedPreferences, configurável em Settings |

### State Management

- `onboardingProvider` — unchanged, `markAsSeen()` persiste
- `onboardingAINameProvider` — novo, salva nome do AI
- `onboardingDefaultScreenProvider` — novo, salva "list" ou "chat"
- `authServiceProvider` — já existe
- `revenueCatServiceProvider` — já existe, pré-carregar no chat

### Localization (20+ keys in app_en.arb)

Run `flutter gen-l10n` after editing.

### Files Changed

| File | Change |
|---|---|
| `lib/app/onboarding/screens/onboarding_screen.dart` | Full rewrite |
| `lib/app/onboarding/screens/onboarding_ai_chat.dart` | Create (AI chat widget) |
| `lib/app/onboarding/screens/onboarding_slide_login.dart` | Create |
| `lib/app/onboarding/screens/onboarding_slide_share.dart` | Create |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | Create |
| `lib/app/onboarding/providers/onboarding_state_provider.dart` | Create |
| `lib/app/onboarding/widgets/chat_bubble.dart` | Create |
| `lib/l10n/app_en.arb` | Add 20+ keys |
| `lib/app/settings/providers/settings_providers.dart` | Add default screen setting |
| `lib/generated/l10n/` | `flutter gen-l10n` |
