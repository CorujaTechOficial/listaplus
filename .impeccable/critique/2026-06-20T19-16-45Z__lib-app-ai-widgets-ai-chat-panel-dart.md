---
target: feature de chat ai
total_score: 27
p0_count: 0
p1_count: 1
timestamp: 2026-06-20T19-16-45Z
slug: lib-app-ai-widgets-ai-chat-panel-dart
---
# Critique — Feature de Chat AI (Kipi)

Register: product. Evidência: leitura de fonte. detect.mjs N/A (Dart). Screenshot caiu no Catálogo.

## Design Health Score: 27/40 (Acceptable, topo da faixa)

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 4 | thinking+atividade, caret, agent steps, cancel, scroll-to-bottom |
| 2 | Match System/Real World | 3 | "market mode" levemente jargão |
| 3 | User Control & Freedom | 3 | sem nova-conversa no painel |
| 4 | Consistency & Standards | 2 | duas implementações de progresso (flat vs gradiente) |
| 5 | Error Prevention | 3 | maxLength, send desabilita |
| 6 | Recognition vs Recall | 2 | market-mode ícone-só |
| 7 | Flexibility & Efficiency | 2 | quick-add morto |
| 8 | Aesthetic/Minimalist | 2 | home sobrecarrega o chat; gradiente; fade do teaser |
| 9 | Error Recovery | 4 | offline-aware, retry |
| 10 | Help & Docs | 2 | empty-state ensina; nada depois |

## Anti-Patterns: NÃO parece AI-slop. Tokens, sem eyebrows, sem side-stripe, a11y forte. Slop residual: gradiente do card de progresso + fade do teaser.

## Priority Issues
- [P1] Quick-add morto: onQuickAdd passado (ai_chat_panel:469) mas ChatInputBar nunca chama. Restaurar botão "+" ou remover código morto.
- [P2] Dois progressos de lista: strip flat (ai_home_screen 430-513) vs _ListHeroCard gradiente. Unificar.
- [P2] Home sobrecarrega o chat: appbar 5 ações + strip + lista + banner + replies + input + FAB. Reduzir chrome.
- [P2] Market mode ícone-só indescobrível. Label visível.
- [P2] Teaser (fade + unlock amber no meio da bolha) é o ponto mais agressivo. Reavaliar corte.

## Persona Red Flags
- Alex: sem quick-add, sem nova-conversa rápida.
- Jordan: market-mode/history ícone-só sem rótulo.
- Sam: forte; verificar contraste item-link chip + headings markdown verdes.

## Minor
- Headings markdown verdes podem ler como link.
- Copy só na última msg.
- _ListHeroCard usa gradiente+elevation+border (redundante).
