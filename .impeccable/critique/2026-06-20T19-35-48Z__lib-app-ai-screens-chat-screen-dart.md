---
target: feature de chat AI
total_score: 32
p0_count: 0
p1_count: 2
timestamp: 2026-06-20T19-35-48Z
slug: lib-app-ai-screens-chat-screen-dart
---
# Crítica — Feature de Chat AI (Kipi)

## Design Health Score

| # | Heurística | Score | Issue principal |
|---|-----------|-------|-----------------|
| 1 | Visibility of System Status | 4 | Thinking indicator com texto de atividade, caret de streaming, skeleton, progresso — forte |
| 2 | Match System / Real World | 4 | Linguagem natural, persona Kipi, metáforas de compra (chips de carrinho, cesta) |
| 3 | User Control and Freedom | 3 | Stop/cancel, undo de ações do agente, edit, regenerate — mas saída do Market mode é padrão inventado |
| 4 | Consistency and Standards | 2 | Duas superfícies de entrada divergem (drawer vs endDrawer, soft vs hard gate, new-chat só numa) |
| 5 | Error Prevention | 3 | Confirma delete, limita chars; mas duplo-commit (quick-add vs enviar) convida erro |
| 6 | Recognition Rather Than Recall | 3 | Empty-state com prompts, suggested replies, busca no histórico; new-chat escondido no tab |
| 7 | Flexibility and Efficiency | 3 | Quick-add, suggested replies, voz, regenerate, undo |
| 8 | Aesthetic and Minimalist Design | 3 | Restrained, on-brand, bans evitados; app bar do tab levemente carregada |
| 9 | Error Recovery | 4 | Offline/erro separados, retry, linguagem clara, retry por step do agente |
| 10 | Help and Documentation | 3 | Empty-state ensina, prompts, tooltips, descrições de atividade — o assistente É a ajuda |
| **Total** | | **32/40** | **Good (topo da faixa)** |

## Anti-Patterns Verdict

**Não é AI slop.** É craft de produto deliberado. Comentários no código documentam decisões: side-stripe evitado (full border + tint), caret throttled a ~2×/s, CTA do teaser ABAIXO do fade e não sobre o texto, headings ficam onSurface pra não roubar o accent dos chips de item. Register restrained respeitado: família única (PlusJakartaSans), verde pra ações/seleção, âmbar reservado a premium. Bans do skill ausentes (sem gradient text, sem side-stripe, sem glassmorphism decorativo, sem hero-metric).

**Scan determinístico:** detector rodou em `lib/app/ai/widgets` e `screens`, retornou `[]` (exit 0). Ele só parseia HTML/CSS — não entende widgets Flutter, então é sinal nulo aqui, não um atestado de limpeza.

**Overlay visual:** N/A — app mobile nativo, sem URL localhost pra injetar.

## Overall Impression

Superfície de conversa madura e confiável. O que prende a nota não é estética — é **arquitetura de navegação**: existem duas portas de entrada pro mesmo assistente (`AiHomeScreen` tab e `ChatScreen` por-lista) que divergem em chrome, em modelo de monetização e até em implementação do histórico. A maior oportunidade é unificar essas duas portas numa só gramática.

## What's Working

- **Feedback de estado + acessibilidade.** ThinkingIndicator é `liveRegion` anunciando a atividade ("buscando", "adicionando"), dots decorativos excluídos da semântica; reduced-motion tratado em todo lugar; placeholder com contraste explicitamente elevado pra AA; skeleton espelha o ritmo real das bolhas (calmo, não pulsante).
- **Restrição on-brand.** Âmbar com escassez (só teaser/premium), chips de item com glifo de carrinho em vez de underline de link, teaser com CTA abaixo do fade. Confiança acima de espetáculo — exatamente o PRODUCT.md.
- **Ações do agente reversíveis.** Timeline colapsável com status, undo, retry e expand de detalhes. Constrói confiança e casa com "trust beats spectacle".

## Priority Issues

- **[P1] Duas superfícies de entrada divergentes.** `AiHomeScreen` (tab) e `ChatScreen` (aberto de uma lista) embrulham o mesmo `AiChatPanel` mas: histórico fica em `drawer` (esquerda, via menu overflow) num e `endDrawer` (direita, via ícone) no outro; `ChatScreen` é gated por `PremiumGate` (parede dura) enquanto o tab usa o modelo soft (usage banner + teaser); new-chat existe só no `ChatScreen`. **Por que importa:** mesma feature, dois modelos mentais de "onde está meu histórico" e dois comportamentos de cobrança — entrar pela lista bate numa parede, entrar pelo tab deixa provar valor. Contradiz "show value before asking for commitment". **Fix:** uma superfície canônica (mesma posição de histórico, mesmo gate soft, mesmo affordance de new-chat).
- **[P1] Implementações duplicadas de histórico.** `_ChatHistoryDrawer` (inline em `chat_screen.dart`, com busca + buckets de data) vs `AiChatDrawer` (arquivo separado, usado pelo home). Duas UIs de histórico que vão divergir em busca/agrupamento. **Fix:** extrair um único drawer de histórico.
- **[P2] Duplo-commit ambíguo no input.** `+` (quick-add, joga item cru na lista sem IA) à esquerda e seta de enviar (manda pra IA) à direita — dois "commits" do mesmo texto com resultados diferentes, distinguidos só por ícone+posição+tooltip. **Por que importa:** o usuário toca `+` achando que envia e silenciosamente adiciona um item (categoria 'others', qtd 1) sem resposta da Kipi. **Fix:** tornar "enviar pra Kipi" o commit óbvio único; quick-add vira affordance rotulada distinta ou sai.
- **[P2] Market mode esconde o chat inteiro.** Toggle no app bar troca a conversa por um hero card, e o retorno vira FAB + troca de ícone (dois caminhos de volta, padrão novo). Ainda há a faixa de progresso colapsável no modo chat duplicando o progresso do market mode. **Fix:** market mode como overlay peekable mantendo o assistente alcançável; uma só gramática de progresso.
- **[P3] New-chat indescobrível no tab.** No `AiHomeScreen` não há affordance visível de nova conversa (só share + histórico no overflow); pra começar do zero abre-se o drawer. **Fix:** expor new-chat no mesmo lugar das duas superfícies.

## Persona Red Flags

**Jordan (First-Timer):**
- Toca `+` achando que envia → item cru cai na lista, sem resposta da IA. Sem feedback de "isso não falou com a Kipi".
- Entra no chat por uma lista → parede premium dura; entra pelo tab → funciona. "Por que às vezes trava?"
- Label "Market mode" não diz o que faz antes de tocar.

**Casey (Distracted Mobile):**
- Input e enviar na zona do polegar — bom. Estado preservado entre interrupções (sessões Firestore) — bom.
- Histórico no tab exige alcançar o topo (ícone overflow) e depois o drawer — fricção a uma mão.

**Sam (Accessibility-Dependent):** — em grande parte **passa**, e isso é mérito: liveRegion pra geração, decorativos excluídos, alvos 44×44, placeholder em AA, reduced-motion. Atenção: botões de ação dependem de tooltip como label semântico (verificar que o leitor de tela anuncia), e o caret/markdown de streaming não está em liveRegion (só a atividade é anunciada).

## Minor Observations

- App bar do `AiHomeScreen` carrega ~5 controles (conta, seletor de lista, market toggle, overflow) — no limite do carregado.
- Re-parse de markdown ~2×/s durante streaming pode dar jank em mensagens longas / aparelhos fracos.
- Botão Stop usa cor de erro (vermelho) — pode ler como "perigo/apagar" em vez de "parar".
- Quick-add fixa categoria 'others', qtd 1, `Unit.un` silenciosamente.

## Questions to Consider

- A divisão tab vs por-lista é intencional? Se for, por que só uma porta tem parede dura?
- Market mode precisa substituir o chat, ou poderia ser um overlay peekable mantendo a Kipi alcançável?
- Quick-add deveria ser um affordance rotulado distinto (ou sair) pra "enviar pra Kipi" ser o único commit óbvio?
