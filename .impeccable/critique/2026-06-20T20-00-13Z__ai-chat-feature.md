---
target: ai chat feature
total_score: 29
p0_count: 0
p1_count: 2
timestamp: 2026-06-20T20-00-13Z
slug: ai-chat-feature
---
## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Streaming caret + thinking indicator excelentes. Mas: loading state usa skeleton estático adequado, sem animação de shimmer — aceitável para mobile. |
| 2 | Match System / Real World | 4 | "Kipi" como nome do assistente, linguagem coloquial, ícones familiares. Muito bem. |
| 3 | User Control and Freedom | 3 | Cancelamento de request existe. Edição de mensagens via long-press. Falta: sem undo clara para ações do agente após fechar o sheet. |
| 4 | Consistency and Standards | 3 | Padrão de bolhas, tokens de espaçamento e bordas consistentes. Desvio: ações de mensagem (like/dislike/copy/regenerate) só aparecem na **última** mensagem — usuário não consegue copiar mensagens antigas facilmente. |
| 5 | Error Prevention | 3 | Limite de 1000 caracteres enforced. canSend() bloqueia se fora do limite. Falta: nenhuma confirmação antes de limpar histórico via "novo chat". |
| 6 | Recognition Rather Than Recall | 3 | Empty state com 3 prompts-âncora funciona bem. Sugestões contextuais no fim da resposta são boas. Falta: o botão de "adicionar rápido" (ícone +) não tem label visível — ícone-only na barra de entrada. |
| 7 | Flexibility and Efficiency | 3 | Quick-add é um atalho inteligente. Voice input presente. Falta de shortcuts avançados (p.ex. swipe para regenerar, histórico de prompts). |
| 8 | Aesthetic and Minimalist Design | 3 | Visual geral limpo. Problema: barra de contexto da lista (strip de progresso) + banner de uso + sugestões + input ficam empilhados — até 4 camadas de chrome acima do input em alguns estados. |
| 9 | Error Recovery | 2 | Offline/error state tem retry claro. Mas: falhas parciais de tool-calling (undo parcial) não são expostas ao usuário com opção de recuperação. "Something went wrong" é o fallback genérico. |
| 10 | Help and Documentation | 2 | Nenhuma documentação in-context além do empty state. Usuário não sabe quais capacidades o agente tem, quais ferramentas estão disponíveis, ou o que "Market Mode" realmente faz antes de entrar nele. |
| **Total** | | **29/40** | **Good — address weak areas** |

## Anti-Patterns Verdict

**LLM assessment**: A feature não cai em nenhum dos bans absolutos — sem gradient text, sem nested cards, sem glassmorphism decorativo, sem side-stripe borders. A estrutura visual está alinhada ao design system (tokens, colorScheme). Não lê como "AI fez isso."

**Deterministic scan**: O detector retornou `[]` — zero violações de anti-padrões nos arquivos `lib/app/ai/`. Limpo.

**Visual overlays**: Browser automation não disponível nesta sessão — overlay não injetado.

## Overall Impression

A feature de chat tem uma base sólida e honesta: tokens corretos, semântica de cores certa, streaming caret elegante, empty state com propósito. O ponto crítico é **acúmulo de chrome no rodapé**: em estados onde o usuário tem pouco crédito + sugestões disponíveis, a parte inferior da tela fica com quatro camadas competindo antes do campo de input aparecer — usage banner, suggested replies bar, chat input bar, SafeArea padding. Numa tela pequena isso comprime o feed de mensagens de forma severa. O segundo problema real é **discoverability do que o agente sabe fazer**: o help e a documentação in-context são inexistentes além dos 3 botões do empty state.

## What's Working

1. **Streaming caret + blinking timer**: A decisão de usar um `ValueNotifier<bool>` com timer de 530ms para piscar o cursor — em vez de animar frame-a-frame — é tecnicamente elegante e lê como "digitando" sem ser custoso. O fallback de `_caretVisible = true` under test/reduced-motion mostra cuidado com acessibilidade e CI.

2. **Item link chips no markdown**: Quando o agente menciona um item por nome, ele se torna um chip tappable que abre o `EditItemDialog`. Isso converte texto plano em ação — um nível de integração que a maioria dos assistentes em apps mobile não faz. Excelente.

3. **Empty state com prompts concretos**: Os 3 botões de capabilities são específicos, têm ícone + label + chevron, e fazem o pitch do produto. Não é "nada aqui" — é "aqui está o que eu faço, toque para começar."

## Priority Issues

### [P1] Chrome stack overflow no rodapé

**O que é**: Em estado "quase sem crédito + sugestões disponíveis", o rodapé da tela empilha: usage banner (altura variável, ~32px) → suggested replies bar (~44px) → chat input bar (~60px) → SafeArea. Numa tela de 640px de altura (dispositivos pequenos comuns no Brasil), isso pode consumir 20-25% da viewport antes do feed de mensagens.

**Por que importa**: O feed é o produto. Comprimir o chat para mostrar mais chrome de monetização prejudica exatamente o usuário que ainda não converteu — o público que mais precisa de uma boa experiência para converter.

**Fix**: Colapsar as suggested replies quando o usage banner está visível (já há lógica de colapso para teclado; adicionar condição `!isUsageBannerVisible`). O banner de uso deve ser uma notificação flyout de 3 segundos que aparece ao enviar, não uma tira permanente — ou no mínimo descartável com swipe.

**Comando sugerido**: `/impeccable layout`

---

### [P1] Quick-add button: ícone-only sem label contextual

**O que é**: O botão `+` dentro da input bar (ícone `add_rounded`) não tem label visível. O tooltip existe mas só aparece em long-press no Android (comportamento inconsistente). Um novo usuário não sabe que este botão adiciona o item diretamente à lista sem passar pelo assistente.

**Por que importa**: Quick-add é um atalho de eficiência valioso — mas só se o usuário souber que existe. Como o ícone `+` no contexto de uma barra de chat normalmente significa "attach file" ou "add media", muitos usuários vão ignorá-lo ou usar erroneamente.

**Fix**: Mostrar um microlabel "Add" abaixo ou ao lado do ícone quando o campo está em foco e há texto, ou exibir um tooltip animado na primeira vez que o usuário digita algo. Alternativamente, substituir pelo padrão `ActionChip` com label "Adicionar à lista" que aparece contextualmente.

**Comando sugerido**: `/impeccable clarify`

---

### [P2] Ações de mensagem só na última — copy inacessível em mensagens antigas

**O que é**: `showMessageActions` é restrito à condição `isLastMessage && !isStreaming`. Mensagens antigas não têm copy, like/dislike nem regenerate. O único caminho para copiar uma mensagem antiga é o texto de markdown ser `selectable: true` — mas nem toda mensagem renderiza como selectable (bubbles de usuário usam `MarkdownBody` também selectable, mas a UX de seleção de texto em Flutter mobile é notoriamente difícil).

**Por que importa**: Em um assistente de compras, o usuário frequentemente volta a uma sugestão antiga para copiar uma lista ou um preço estimado. Sem copy acessível, a ação mais básica de "usar o que o AI disse" é desnecessariamente difícil.

**Fix**: Adicionar long-press em qualquer bolha para mostrar um ContextMenu simples (Copy / Like / Dislike). Para bolhas de usuário, o long-press já abre o `_editMessage` dialog — estender para AI bubbles também.

**Comando sugerido**: `/impeccable harden`

---

### [P2] Help & Documentation: o usuário não sabe o que o agente pode fazer

**O que é**: Depois que o empty state desaparece (após a primeira mensagem), não há nenhuma forma de o usuário descobrir as capacidades do agente. Não existe menu de "O que posso fazer?", chip de ajuda, ou ponto de entrada para a documentação. O Market Mode especificamente nunca é explicado antes de entrar nele.

**Por que importa**: "O que mais eu posso pedir?" é a pergunta que distingue usuários que extraem valor do assistente de usuários que o usam como glorificado campo de busca. Sem discovery de capacidades, o retention value da feature diminui progressivamente após a primeira semana.

**Fix**: Adicionar um chip "Ver o que posso fazer" ou ícone de ajuda (?) na input bar quando ela está vazia e sem teclado. Ao tap, exibir um bottom sheet com categorias de capacidades (adicionar itens, sugestões de receita, comparar preços, etc.) — cada categoria com um exemplo de prompt tappable.

**Comando sugerido**: `/impeccable onboard`

---

### [P3] Confirmação antes de "Novo chat"

**O que é**: O botão `add_comment` (novo chat) em `AiHomeScreen` chama diretamente `createNewSession()` sem nenhuma confirmação. A sessão anterior desaparece do feed imediatamente.

**Por que importa**: Risco baixo porque o histórico é persistido em Firestore e acessível via drawer, mas o usuário não sabe disso. O tap acidental em "novo chat" enquanto estava no meio de uma conversa vai gerar confusão.

**Fix**: Mostrar um SnackBar com "Novo chat iniciado" + ação "Desfazer" de 4 segundos, ou pedir confirmação se houver mensagens na sessão atual que foram enviadas nos últimos 5 minutos.

**Comando sugerido**: `/impeccable harden`

## Persona Red Flags

### Casey (Usuária Mobile Distraída, uma mão só)

Casey abre o app no supermercado para pedir ao Kipi "o que falta?". A tela já tem um chat ativo. Ela digita algo, nota que o campo `+` existe ao lado, toca nele achando que é "attach photo" — o item vai direto para a lista sem feedback além de um snackbar que ela perde porque a tela já rolou. Ela não sabe se a ação funcionou.

**Red flags encontrados**:
- Ícone `+` sem label — ambíguo no contexto de chat
- Snackbar "item adicionado" dura 2 segundos — curto demais para leitura periférica em ambiente de supermercado com distrações
- Usage banner permanente comprime o espaço útil em telas pequenas
- Botão "Novo chat" (`add_comment`) é pequeno e está na app bar — zona de difícil alcance com polegar

### Alex (Power User Impaciente)

Alex quer regenerar uma resposta de 3 mensagens atrás que tinha uma lista de itens melhor. Ele abre a conversa, tenta long-press na mensagem para copiar ou regenerar — nada. Ele nota que apenas a última mensagem tem os controles. Ele tem que rolar para baixo, checar a última, e realiza que não consegue voltar à resposta anterior.

**Red flags encontrados**:
- Nenhum atalho de teclado (esperado em mobile, mas ainda assim limitante para tablets)
- Ações de mensagem só na última — inacessível para mensagens históricas
- Regenerate sem seleção de qual mensagem regenerar — sempre regenera a última
- Nenhum modo de "copiar tudo" para pegar a lista inteira

## Minor Observations

- `_ChatLoadingSkeleton` é estático por design (comentado no código), mas os blocos têm altura fixa de 44px — não escala com dynamic text size. Um usuário com tamanho de fonte grande (150%+) pode ver discrepância entre skeleton e conteúdo real.
- O fallback de erro genérico `'Erro: $e'` na linha 256 de `ai_home_screen.dart` está hardcoded em português sem passar por l10n — violação da regra crítica de localização do projeto.
- `Market Mode` abre como `DraggableScrollableSheet` com `initialChildSize: 0.75` — ótimo padrão. Porém quando `allPurchased == false`, o botão "Finish Shopping" não aparece e o usuário precisa arrastar a sheet para baixo para fechar — não é óbvio.
- O `_KipiAvatar` (28×28px) é muito pequeno para diferenciar visualmente o assistente do usuário em telas de alta DPI. Aumentar para 32px alinharia com o `ThinkingIndicator`.

## Questions to Consider

- O banner de uso foi projetado para criar urgência de upgrade. E se ele criasse ressentimento em vez de conversão? Um "você tem X ações restantes este mês" discreta na info do perfil/conta poderia converter melhor sem prejudicar a experiência de chat?
- O Market Mode e o Chat são dois paradigmas de uso muito diferentes na mesma tela. Faria mais sentido o Market Mode ser uma tab separada com sua própria bottom navigation entry, reservando o chat para planejamento pré-compra?
- O empty state mostra 3 prompts fixos. E se eles fossem contextuais — "você tem 5 itens sem categoria, quer que eu organize?" — aproveitando o estado real da lista do usuário?
