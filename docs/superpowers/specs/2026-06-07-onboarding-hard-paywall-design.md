# Onboarding Hard Paywall — Design Spec
**Data:** 2026-06-07  
**Objetivo:** Maximizar conversão de novos usuários para assinatura PRO durante o onboarding.

---

## Diagnóstico

### Estado atual do fluxo
```
AI Chat → Login → Share (inerte) → Premium (slide fraco)
```

### Problemas identificados

| Problema | Severidade |
|---|---|
| `OnboardingSlidePremium` não tem hero gradient, social proof, nem feature grid — tudo que `PaywallScreen` tem | Crítico |
| Slide de Share não tem CTA — quebra momentum sem construir desejo | Alto |
| Botão X visível top-right no slide premium | Alto — exit fácil demais |
| CTA "Subscribe" genérico em vez de "Start Free Trial" quando trial disponível | Alto |
| Nome/preferências capturadas no AI chat não são usadas no paywall | Médio |
| Skip não tem loss aversion — fechar não custa psicologicamente | Médio |

---

## Decisões de Design

### 1. Novo fluxo

```
AI Chat → Login → Paywall Premium (full quality)
```

**Remove o Slide de Share.** Ele não converte, não tem CTA, e dilui momentum. Compartilhamento vira um dos 9 benefícios no feature grid do paywall.

### 2. Substituir OnboardingSlidePremium por versão de alta qualidade

O `OnboardingSlidePremium` será reescrito com **exatamente o mesmo nível de qualidade** do `PaywallScreen`, com adaptações para o contexto de onboarding:

#### Hero Section
- Gradient diagonal `primary → tertiary` (igual ao PaywallScreen)
- Mascote Kipi centralizado (120px, alta qualidade)
- Badge âmbar com trial label quando disponível (ex: "7-day free trial")
- Headline forte e emocional (ver copy abaixo)
- Subtítulo com **personalização**: se o usuário informou o nome no AI chat, usar — "Hey {nome}, organize suas compras do jeito certo."
- Social proof pill: ⭐⭐⭐⭐⭐ + texto de prova social (igual PaywallScreen)

#### Feature Grid
- 2 colunas, 9 features (igual PaywallScreen — reutilizar `PremiumFeature.values`)
- Label da seção: "TUDO QUE VOCÊ DESBLOQUEIA"

#### Plan Cards
- Reutilizar lógica de `PaywallScreen._buildPlans`:
  - Badge "MAIS POPULAR · Economize X%" calculado dinamicamente no plano anual
  - Preço por mês em destaque no plano anual
  - Trial label âmbar no card quando disponível
  - Animação de seleção (AnimatedContainer 200ms)

#### CTA Sticky
- Botão sticky na parte inferior (igual PaywallScreen)
- Texto trial-aware: "Start Free Trial" quando trial disponível, "Unlock KipiList PRO" caso contrário
- Trust signal: 🔒 "Secured by Google Play · Cancel anytime"

#### Skip / Close
- **Remover o X button no topo direito.**
- Adicionar link de texto discreto **abaixo** do trust signal, centralizado:
  - Texto: "Maybe later" (via l10n: `onboardingMaybeLater`)
  - Estilo: `labelSmall`, `onSurfaceVariant` com alpha 0.5 — praticamente invisível
  - Sem botão, sem ícone — só texto tappable

### 3. Personalização via OnboardingDataProvider

O `onboardingDataProvider` já captura `displayName`. No paywall, lê esse valor e injeta no subtítulo do hero:

- Se `displayName` não está vazio: `"Hey {displayName}, organize suas compras do jeito certo."`
- Se vazio: `"Organize suas compras, economize dinheiro e cozinhe mais."` (fallback genérico)

Isso requer dois novos strings ARB:
- `paywallHeroSubtitlePersonalized` com placeholder `{name}`
- O fallback já existe como `paywallHeroSubtitle`

### 4. Copy

| Elemento | Texto EN | Texto PT (app_pt.arb) |
|---|---|---|
| Headline | "The smarter way to shop" | "A forma inteligente de comprar" |
| Subtitle (personalizado) | "Hey {name}, organize your shopping the right way." | "Ei {name}, organize suas compras do jeito certo." |
| Subtitle (fallback) | já existe em `paywallHeroSubtitle` | — |
| Trial CTA | já existe em `paywallTrialCta` | — |
| No-trial CTA | já existe em `paywallCtaUnlock` | — |
| Skip link | "Maybe later" | "Talvez depois" |
| Section label | já existe em `paywallFeaturesTitle` | — |

---

## Arquitetura

### Componente: `OnboardingSlidePremium` (reescrito)

Deixa de ser um slide de PageView e passa a ser um widget standalone de scroll total, idêntico à estrutura do `PaywallScreen`:

```
Stack
├── SingleChildScrollView
│   ├── _buildHero()          ← gradient + mascote + social proof + personalização
│   ├── _buildBenefits()      ← feature grid 2 colunas (reutiliza PremiumFeature)
│   ├── _buildPlans()         ← plan cards com badge dinâmico
│   └── SizedBox(height: 140) ← espaço para sticky CTA
└── Positioned(bottom: 0)
    └── _buildStickyCta()     ← CTA + trust signal + "Maybe later"
```

### OnboardingScreen

Remove `OnboardingSlideShare` da lista de slides:
```dart
// Antes:
children: [WelcomeLogin, Share, Premium]  // _slideCount = 3

// Depois:
children: [WelcomeLogin, Premium]          // _slideCount = 2
```

---

## Novos strings ARB necessários

```json
"onboardingMaybeLater": "Maybe later",
"paywallHeroSubtitlePersonalized": "Hey {name}, organize your shopping the right way.",
"@paywallHeroSubtitlePersonalized": {
  "placeholders": { "name": { "type": "String" } }
}
```

---

## O que NÃO muda

- Lógica de compra (`_purchase`, `_restore`) — igual ao atual
- Analytics calls — mantidos
- `markAsSeen` ao comprar — mantido
- `PaywallScreen` (tela standalone) — não toca
- AI chat — não toca
- Login slide — não toca

---

## Resultado esperado

- Paywall do onboarding com a mesma qualidade visual do paywall standalone
- Personalização que aumenta conexão emocional
- Skip hard de encontrar → reduz saídas acidentais
- Trial CTA quando disponível → reduz percepção de risco
- Savings badge dinâmico → ancora valor no plano anual
- Remoção do slide inerte → fluxo mais direto ao paywall
