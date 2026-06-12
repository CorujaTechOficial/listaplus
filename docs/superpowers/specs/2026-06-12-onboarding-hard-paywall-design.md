# Novo Onboarding + Hard Paywall — Design

**Data:** 2026-06-12
**Status:** Aprovado
**Escopo:** Reescrita completa do onboarding (quiz de investimento, 10 telas) com hard paywall total. Apenas novos usuários; usuários free existentes mantêm comportamento atual (limite de 3 listas).

## Decisões fechadas

| Decisão | Escolha |
|---|---|
| Nível de bloqueio | Hard total — sem fechar/pular; só entra no app após compra ou restore |
| Estilo | Quiz de investimento (estilo Cal AI/Rise) |
| Login | Depois do paywall, com opção "Agora não" |
| Paywall UI | Custom Flutter (não RevenueCat remoto) |
| Usuários existentes | Não afetados — hard paywall só para quem nunca completou onboarding |

## 1. Fluxo (10 telas + login pós-compra)

```
1. Hook — promessa + prova social, CTA "Começar"
2. Quiz Q1 — quem mora com você? (householdSize)
3. Quiz Q2 — frequência de compras (shoppingFrequency)
4. Quiz Q3 — maior dor: esquece itens / gasta demais / desperdiça / sem tempo (mainPain)
5. Quiz Q4 — meta de economia mensal (savingsGoal)
6. Quiz Q5 — como faz lista hoje: papel / app de notas / memória / nada (listMethod)
7. Prova social — estrelas, depoimentos localizados, números
8. "Montando seu plano..." — loading animado 3-4s, checkmarks ecoando respostas do quiz
9. Revelação — plano personalizado + gráfico de economia projetada + recursos desbloqueados
10. PAYWALL HARD — anual pré-selecionado, toggle mensal/anual, CTA "Começar trial grátis"
    (se o pacote selecionado não tiver trial na oferta RevenueCat, CTA vira "Assinar agora")
→ (compra/restore ok) → Login Google/Apple com "Agora não" → App
```

- `OnboardingScreen` reescrito: `PageView` com `NeverScrollableScrollPhysics`; back permitido até a tela 9; quiz auto-avança ao tocar opção (sem botão "próximo"); barra de progresso nas telas 2–9.
- Step persistido no draft existente (`OnboardingData`, `onboarding_draft_v2`): relaunch retorna ao step salvo; quem fechou no paywall reabre no paywall.

## 2. Mecânica do hard paywall

- `markAsSeen()` chamado **somente** após compra ou restore bem-sucedido. `main.dart` (`onboardingProvider`/`hasSeen`) decide onboarding vs app — nenhuma rota alternativa.
- Paywall: `PopScope(canPop: false)`. Sem X, sem "pular", sem "continuar grátis".
- Obrigatórios Apple/Google mantidos: link **Restaurar compras**, links Termos e Privacidade, preço total e condições do trial visíveis.
- Falha ao carregar pacotes (sem rede): tela de erro com retry; usuário permanece no paywall.
- Erro de compra: mensagem inline + permanece no paywall. Cancelamento de compra: permanece.
- Assinante que reinstala: "Restaurar compras" → entitlement `kipilist_pro` ativo → `markAsSeen` → app.

## 3. Componentes novos (`lib/app/onboarding/`)

| Componente | Responsabilidade |
|---|---|
| `QuizSlide` (widget genérico) | título, subtítulo, opções com emoji, single-select, auto-advance; as 5 perguntas são configs, não telas novas |
| `OnboardingSlideHook` | promessa + prova social + CTA |
| `OnboardingSlideSocialProof` | estrelas, depoimentos curtos localizados, contagem de listas |
| `OnboardingSlidePlanLoading` | animação com checkmarks parametrizados pelas respostas |
| `OnboardingSlidePlanReveal` | plano personalizado, gráfico de economia projetada (baseado em `savingsGoal`), lista de recursos |
| `OnboardingSlidePaywall` | custom; reaproveita lógica de compra do slide premium atual (purchase, restore, error handling, analytics) |
| `OnboardingSlideLogin` | pós-compra; Google/Apple via `AuthService`; "Agora não" (compra fica no RevenueCat anonymous ID e transfere no login futuro) |

## 4. Dados & analytics

- `UserPreferences` ganha: `shoppingFrequency`, `mainPain`, `savingsGoal`, `listMethod` (mantém `householdSize`). Rodar `build_runner`.
- Respostas do quiz gravadas no doc Firestore do usuário após login (insumo para personalização da IA).
- Analytics: `logOnboardingStepViewed/Completed` mantidos com novos nomes de steps; novos eventos `paywall_blocked_retry`, `onboarding_login_skipped`.

## 5. i18n

~50–60 chaves novas em `lib/l10n/app_en.arb` → `python3 scripts/translate_missing.py` → `python3 scripts/review_translations.py` → `flutter gen-l10n` → validação ARB pré-build do CLAUDE.md (bugs do `other` e placeholders). 86 idiomas.

## 6. Limpeza

Deletar slides antigos (~4.5k linhas): `onboarding_slide_ai_demo`, `onboarding_ai_chat`, `onboarding_slide_pain_point`, `onboarding_slide_personalization`, `onboarding_slide_premium`, `onboarding_slide_hook`, `onboarding_slide_share`, `onboarding_slide_setup`, `onboarding_slide_welcome`, `onboarding_slide_welcome_login`, `onboarding_slide_login`, `onboarding_slide_commitments`, `onboarding_slide_plan_loading` (versão antiga), `onboarding_slide_ai_show`, `onboarding_slide_action`, `widgets/personalization_bottom_sheets`, `widgets/onboarding_slide_value_prop`. Remover chaves ARB órfãs apenas se não usadas em outro lugar.

**Fica:** `lib/app/settings/screens/paywall_screen.dart` e `premium_gate.dart` — usuários free existentes continuam com gate de 3 listas.

## 7. Testes

- Quiz avança ao selecionar e persiste respostas no draft.
- Paywall: sem widget de saída; `canPop == false`.
- `markAsSeen` só dispara em compra/restore bem-sucedido.
- Relaunch restaura step salvo.
- Restore com entitlement ativo navega para login/app.

## Fora de escopo

- Mudanças para usuários existentes (grandfathering, bloqueio retroativo).
- A/B testing de paywall via Remote Config.
- Alterações de preço/ofertas no RevenueCat dashboard.
