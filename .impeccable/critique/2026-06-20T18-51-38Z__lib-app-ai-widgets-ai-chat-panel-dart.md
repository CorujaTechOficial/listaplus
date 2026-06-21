---
target: tela de chat ai
total_score: 33
p0_count: 0
p1_count: 3
timestamp: 2026-06-20T18-51-38Z
slug: lib-app-ai-widgets-ai-chat-panel-dart
---
# Critique — Chat AI (KipiList) — 33/40 Good

## Anti-Patterns
Bem-construído, não parece IA. Padrão correto: assistente sem-balão esquerda / usuário com-balão direita. Empty state = pitch real.
Detector HTML-only → N/A Dart. Scan manual achou 1 ban: side-stripe blockquote chat_bubble.dart:457 (Border left 4px).

## Priority Issues
- [P1] Side-stripe blockquote border, chat_bubble.dart:457. Ban. Fix: borda completa + tint.
- [P1] Marca Kipi some na conversa (só no empty state). Fix: avatar Kipi nas msgs do assistente.
- [P1] Chrome empilhado sobre teclado (banner+sugestões+input), ai_chat_panel.dart:453-474.
- [P2] 4 ações icon-only sempre visíveis por msg, chat_bubble.dart:504. Fix: distill/overflow.
- [P2] Motion decorativo: mascote bob eterno + stagger, chat_empty_state.dart:65.

## Minor
Raio inconsistente (28/32/16); hex cru code block; alpha APIs misturadas; bottom:16 cru; label itálico thinking; balão user apagado.

## Personas
Casey: chrome triplo no teclado, teaser btn 32px<44. Jordan: 4 ícones sem rótulo. Sam: a11y forte (verificar contraste hint/pitch).
