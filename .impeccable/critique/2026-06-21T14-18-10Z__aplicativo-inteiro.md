---
target: aplicativo inteiro
total_score: 26
p0_count: 0
p1_count: 2
timestamp: 2026-06-21T14-18-10Z
slug: aplicativo-inteiro
---
## Design Health Score

| # | Heurística | Nota | Problema-chave |
|---|-----------|------|----------------|
| 1 | Visibilidade do Status | 3 | Skeleton, streaming e animação de toggle: bom. Modo seleção sem indicador proeminente. |
| 2 | Match com Mundo Real | 3 | "Shopping mode" na lista vs "Market mode" no AI — mesmo conceito, dois nomes. |
| 3 | Controle e Liberdade | 3 | Cancel/close em todos os modos. PopScope(canPop:false) no onboarding sem escape. |
| 4 | Consistência e Padrões | 2 | Shopping/Market naming split. AppBar do AI estruturalmente diferente sem razão. |
| 5 | Prevenção de Erros | 3 | Confirmações para delete/clear/new chat bem tratadas. |
| 6 | Reconhecimento vs Lembrança | 2 | add_comment para "novo chat" não intuitivo. Shopping mode enterrado em overflow. |
| 7 | Flexibilidade e Eficiência | 3 | KipiQuickBar, drag-to-reorder, batch selection, suggestion chips — bom. |
| 8 | Design Minimalista | 2 | AppBar AI com 5 elementos. Barra progresso + lista expansível + tab = tripla redundância. |
| 9 | Recuperação de Erros | 2 | Reset correto no toggle. Mensagens de erro genéricas. |
| 10 | Ajuda e Documentação | 3 | ContextualHelpSheet, CapabilitiesHelpSheet, banner de gesto — cobertos mas enterrados. |
| Total | | 26/40 | Aceitável — melhorias significativas necessárias |

## Anti-Patterns Verdict

LLM: O app não parece AI slop visual. Material 3 bem aplicado, tokens em uso correto. Risco é estranhamento funcional: naming inconsistente, 5 ícones no AppBar do chat, lista em 3 lugares na tela de IA.

Deterministic scan: Detector retornou 0 findings (otimizado para HTML/CSS, não Flutter Dart). Verificação manual cobriu arquivos-chave.

## Overall Impression

Core do app (adicionar itens, marcar, confetti) bem construído. Problema nas camadas secundárias: tela de IA sobrecarregada tentando ser lista + chat + modo de compras, vocabulário inconsistente quebra modelo mental. Maior ganho: clareza de propósito por tela.

## What's Working

1. Design System Coeso: tokens usados consistentemente, nenhum literal numérico avulso.
2. Empty State com Quick Suggestions: chips animados com add direto — teach through action.
3. Proteção do Fluxo: _exitController com reset em erro, SelectionBottomBar substituindo KipiQuickBar em seleção.

## Priority Issues

[P1] AppBar AI com 5 ícones — ai_home_screen.dart:344-480. person_outline + add_comment + history + shopping_basket + more_vert. Fix: mover shopping_basket para overflow.

[P1] Shopping mode / Market mode naming — list_screen_body.dart:337 vs ai_home_screen.dart:409. Unificar nomenclatura.

[P2] Tripla redundância de lista no AI screen — barra progresso + lista expansível + tab dedicado. Fix: remover lista expansível, manter só barra compacta.

[P2] Shopping mode inacessível como ação primária — 2 taps via overflow menu para o fluxo principal.

[P2] Elastic bounce no empty state — empty_state.dart:62 usa Curves.elasticOut. Fix: easeOutCubic.

## Persona Red Flags

Marta (household manager): shopping mode enterrado, barra de progresso ilegível no glance, share code sem botão copiar.

Casey (mobile distraído): shopping_basket no pior ponto de alcance do polegar, scroll-within-scroll na lista expansível, botão add item com delay 1s.

Jordan (iniciante): add_comment icon confuso, sem tela de boas-vindas pós-onboarding, help requer 2 taps.

## Minor Observations

- Curves.easeInOutBack na seta de expand — overshoot desnecessário
- delay: 1.seconds no FilledButton do empty state — muito lento
- Share code dialog sem botão copiar
- Auditar uso de DurationTokens.verySlow/ambient na codebase
