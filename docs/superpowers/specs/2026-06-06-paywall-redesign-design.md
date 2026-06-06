# Paywall Redesign — Design Spec

**Data:** 2026-06-06  
**Arquivo alvo:** `lib/app/settings/screens/paywall_screen.dart`  
**Status:** Aprovado

---

## Contexto e Motivação

O paywall atual tem conteúdo excessivo: 4 seções de scroll (Antes/Depois + grid de features + testemunhos + seleção de planos) antes do usuário alcançar o CTA. Pesquisa de paywalls mobile de alta conversão mostra que menos seções e caminho mais curto ao preço convertem melhor. A feature que mais motiva upgrade é a **IA assistente (Kipi)** — então ela deve liderar o design.

---

## O que foi removido

| Seção removida | Motivo |
|---|---|
| `_buildBeforeAfter` | Redundante com a lista de benefícios |
| `_buildFeaturesList` | Redundante com a lista de benefícios |
| `_buildTestimonials` | Ruído; não agrega confiança real |
| Radio buttons nos planos | Substituídos por cards clicáveis (UX mais limpa) |

---

## Nova Estrutura da Tela

```
┌─────────────────────────────┐
│  [Restaurar]          [  ×] │  ← só no modo sheet
│                             │
│   [kipi_welcome.png]        │
│   ━━━━━━━━━━━━━━━━━━━━━━━━  │
│   [7 DIAS GRÁTIS]           │  ← condicional (só se hasFreeTrial)
│   Kipi IA sempre            │
│   do seu lado               │
│   Adicione itens, organize  │
│   listas e economize tempo  │
│   ⭐⭐⭐⭐⭐ +2.400 famílias   │
│                             │
│ ─────────────── (divisor)   │
│                             │
│  🤖 Kipi IA assistente      │  ← benefício 1 (IA primeiro)
│     Adiciona, organiza...   │
│  ♾️  Listas ilimitadas       │  ← benefício 2
│     Sem o limite de 3...    │
│  💰  Orçamento + Compart.   │  ← benefício 3
│     Controle de gastos...   │
│                             │
│ ─────────────── (divisor)   │
│                             │
│  ESCOLHA SEU PLANO          │
│ ┌─────────────────────────┐ │
│ │ [MELHOR VALOR · XX% OFF]│ │  ← badge âmbar, % dinâmico
│ │ Anual        R$ XX,XX   │ │  ← selecionado por padrão
│ │ ≈ R$ X,XX/mês           │ │
│ └─────────────────────────┘ │
│ ┌─────────────────────────┐ │
│ │ Mensal       R$ XX,XX   │ │
│ │ Flexibilidade total     │ │
│ └─────────────────────────┘ │
│                             │
│ ┌─────────────────────────┐ │  ← CTA sticky, sempre visível
│ │  Começar grátis — 7d   │ │  ← ou "Desbloquear PRO"
│ └─────────────────────────┘ │
│  🔒 Seguro · Cancele quando │
│                             │
└─────────────────────────────┘
```

---

## Seções Detalhadas

### 1. Hero

- **Fundo:** `LinearGradient` roxo (cores `primary` → `tertiary` do tema, igual ao atual)
- **Imagem:** `assets/images/kipi/kipi_welcome.png` com `drop-shadow`, altura 100–110 dp
- **Badge trial:** `Container` âmbar com texto `paywallTrialDays/Weeks/Months` — visível **somente** quando `_selectedPackage?.hasFreeTrial == true`
- **Headline:** `"Kipi IA sempre do seu lado"` — nova string `paywallHeroHeadline` (a ser adicionada ao ARB)
- **Subtítulo:** `"Adicione itens, organize listas e economize tempo com IA no bolso"` — nova string `paywallHeroSubtitle`
- **Social proof:** pill semitransparente com ⭐⭐⭐⭐⭐ e texto `paywallSocialProof` (string já existe, mas o texto deve ser atualizado para "+2.400 famílias usam")
- **Botão Restaurar:** `TextButton` discreto no canto superior esquerdo do hero
- **Botão fechar (modo sheet):** `IconButton` `Icons.close` no canto superior direito, visível apenas quando `asSheet == true`

### 2. Lista de Benefícios

Três linhas empilhadas, separadas por `Divider`:

| Ícone | Título (bold) | Subtítulo |
|---|---|---|
| `Icons.auto_awesome` | `paywallFeatureSmartAI` | Nova string `paywallBenefit1Desc` |
| `Icons.all_inclusive` | `paywallFeatureUnlimitedLists` | Nova string `paywallBenefit2Desc` |
| `Icons.bar_chart` | `paywallFeatureExpenseControl` + `paywallFeatureSharing` | Nova string `paywallBenefit3Desc` |

Layout por linha: `Row` com ícone em container `ede9fe` (roxo claro) 30×30 dp, depois `Column` com título bold e subtítulo `onSurfaceVariant`.

### 3. Seleção de Planos

- Label "ESCOLHA SEU PLANO" centralizado, uppercase, `labelSmall`
- **Cards clicáveis** (sem `Radio` widget) — `GestureDetector` / `InkWell` no container inteiro
- **Plano Anual** (quando disponível):
  - Borda `primary` (2.5 dp) quando selecionado, `outlineVariant` quando não
  - Fundo `primaryContainer.withAlpha(80)` quando selecionado
  - Badge âmbar `"MELHOR VALOR · XX% OFF"` posicionado no topo do card (fora do padding — `Stack` + `Positioned`)
  - Linha principal: nome à esquerda + preço à direita
  - Sublinha: preço mensal equivalente (`paywallPricePerMonth`)
- **Plano Mensal:**
  - Fundo neutro, borda `outlineVariant`
  - Sem badge
  - Subtexto: `paywallPackageMonthlyDesc` (nova string "Flexibilidade total")
- Ao tocar em qualquer card: `setState(() => _selectedPackage = pkg)`

### 4. CTA Sticky

Igual ao atual — `Positioned` na parte inferior com `BoxDecoration` de sombra suave:

- Botão `ElevatedButton` com gradiente via `ShaderMask` ou cor sólida `primary`, altura 54 dp, `borderRadius` 27
- Texto:
  - Com trial: nova string `paywallCtaTrialDays` → `"Começar grátis — {days} dias"`
  - Sem trial: `paywallCtaUnlock` (já existe) → atualizar para `"Desbloquear PRO"`
- Microcópia abaixo: `"🔒 {paywallSafeCheckout} · {paywallCancelAnytime}"`
- Links de Política e Termos permanecem (movidos para dentro do CTA sticky, abaixo da microcópia, tamanho menor)

---

## Strings ARB — Novas e Atualizadas

### Novas (adicionar a `app_en.arb` e `app_pt_BR.arb`)

| Chave | PT-BR | EN |
|---|---|---|
| `paywallHeroHeadline` | `"Kipi IA sempre do seu lado"` | `"Kipi AI always by your side"` |
| `paywallHeroSubtitle` | `"Adicione itens, organize listas e economize tempo com IA no bolso"` | `"Add items, organize lists and save time with AI in your pocket"` |
| `paywallBenefit1Desc` | `"Adiciona, organiza e sugere itens 24h"` | `"Adds, organizes and suggests items 24/7"` |
| `paywallBenefit2Desc` | `"Sem o limite de 3 listas"` | `"No 3-list limit"` |
| `paywallBenefit3Desc` | `"Controle de gastos e listas em família"` | `"Expense tracking and family lists"` |
| `paywallPackageMonthlyDesc` | `"Flexibilidade total"` | `"Full flexibility"` |
| `paywallCtaTrialDays` | `"Começar grátis — {days} dias"` | `"Start free — {days} days"` (placeholder `days: int`) |

### Atualizadas

| Chave | Valor atual PT-BR | Novo valor PT-BR |
|---|---|---|
| `paywallSocialProof` | `"Junte-se a milhares de usuários economizando tempo e dinheiro"` | `"+2.400 famílias usam"` |
| `paywallCtaTrial` | `"Experimentar Grátis"` | Substituída por `paywallCtaTrialDays` (com placeholder de dias) |
| `paywallCtaUnlock` | `"Desbloquear KipiList PRO"` | `"Desbloquear PRO"` |
| `paywallSafeCheckout` | `"Pagamento seguro via App Store/Play Store"` | `"Pagamento seguro"` |

---

## Métodos a Remover

- `_buildBeforeAfter`
- `_comparisonCard`
- `_buildFeaturesList`
- `_buildTestimonials`
- `_testimonialCard`

---

## Métodos a Manter / Refatorar

- `_buildHeader` → refatorar para `_buildHero` (novo visual)
- `_buildPackagesList` → refatorar para `_buildPlans` (cards sem radio)
- `_buildStickyCta` → manter, atualizar texto do CTA e adicionar links de footer
- `_buildFooterLinks` → absorver dentro de `_buildStickyCta`
- `_buildBody` → remover seções obsoletas, nova ordem
- `_ctaText` → atualizar para usar `paywallCtaTrialDays` com número de dias
- Todos os handlers de compra/restore permanecem sem alteração

---

## Assets

- `assets/images/kipi/kipi_welcome.png` — já existe no projeto; `assets/images/kipi/` declarado em `pubspec.yaml` linha 124
- Nenhum asset novo necessário

---

## Localização

Após editar os ARBs: executar `flutter gen-l10n`. As 86 localidades precisam da tradução das strings novas — as strings em inglês servem como fallback até tradução manual ou script de tradução.

---

## Fora de Escopo

- Lógica de compra/restore: sem alteração
- Analytics (`logPaywallViewed`, `logPaywallPurchaseCompleted`, etc.): sem alteração
- RevenueCat `getPaywallPackages`: sem alteração
- Modo `asSheet` vs tela completa: ambos continuam suportados
