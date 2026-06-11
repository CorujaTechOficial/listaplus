# Multi-Agent Delegation — Design Spec
_2026-06-07_

## Objetivo

Criar um padrão reutilizável para orquestrar Gemini CLI e Opencode CLI como subagentes de implementação a partir do Claude Code, com bypass automático de permissões e divisão de responsabilidades por tipo de tarefa.

## Contexto

- **Gemini CLI** `0.47.0-nightly`: `gemini -p "..." --yolo --skip-trust`
  - `--yolo`: auto-aprova todos os tool calls (leitura, escrita, bash)
  - `--skip-trust`: marca o workspace como confiável sem prompt interativo
  - Melhor para: tarefas mecânicas, refatorações com regras claras, fixes de acessibilidade
- **Opencode** `1.15.13`: `opencode run -m opencode/deepseek-v4-flash-free "..."`
  - Headless nativo via subcomando `run`
  - Modelo: `opencode/deepseek-v4-flash-free` (sem custo) ou `opencode-go/deepseek-v4-flash`
  - Melhor para: decisões visuais/criativas, dark mode, consistência de UX

## Skill: `delegate-agents`

### Localização
`~/.claude/skills/delegate-agents/SKILL.md`

### Responsabilidades por agente

| Tipo de tarefa | Agente preferido | Por quê |
|---|---|---|
| Fix mecânico (tamanho, padding, strings) | Gemini | Segue regras exatas, menos ambiguidade |
| Acessibilidade (a11y, semântica) | Gemini | Regras WCAG objetivas |
| Visual criativo (dark mode, paletas) | Opencode DeepSeek | Raciocina bem sobre estética |
| Consistência de fluxo UX | Opencode DeepSeek | Analisa padrões cross-screen |
| Correção de erro em prod | Gemini | Confiável, determinístico |

### Padrão de prompt para cada agente

**Gemini:**
```
Você é um engenheiro Flutter sênior. Contexto do projeto: [CONTEXTO].
Tarefa específica: [TAREFA].
Restrições: [CONSTRAINTS do CLAUDE.md].
Faça SOMENTE o que foi pedido. Não refatore código não relacionado.
Após cada arquivo editado, rode: flutter analyze --fatal-infos
```

**Opencode DeepSeek:**
```
Flutter project context: [CONTEXTO].
Task: [TAREFA].
Rules: [CONSTRAINTS].
Focus on visual/UX quality. Do not touch business logic.
Run: flutter analyze --fatal-infos after changes.
```

### Invocação

```bash
# Gemini — bypass total
cd "PROJETO_DIR" && gemini -p "$(cat prompt_gemini.txt)" --yolo --skip-trust

# Opencode DeepSeek — headless
cd "PROJETO_DIR" && opencode run -m opencode/deepseek-v4-flash-free "$(cat prompt_opencode.txt)"
```

### Verificação pós-delegação (por Claude)
1. `git diff` — revisar cada mudança
2. `flutter analyze --fatal-infos` — zero warnings
3. Verificar que lint custom não quebrou (`cd custom_lints && dart analyze lib/`)
4. Se l10n mudou: `flutter gen-l10n`
5. Se providers mudaram: `dart run build_runner build --delete-conflicting-outputs`

## Aplicação: Fixes do Catálogo

> **Ordem de execução:** Gemini primeiro (Fase 1), depois Opencode (Fase 2).
> Arquivos compartilhados (`product_list_tile.dart`, `catalog_home_screen.dart`) são finalizados na Fase 1; Fase 2 não os retoca.

### Fase 1 — Gemini (mecânicos/a11y) — arquivos exclusivos + compartilhados
| # | Fix | Arquivo |
|---|---|---|
| 1 | `_CounterButton` 28px → `IconButton` 44px mínimo | `product_list_tile.dart` |
| 2 | Opacidade 0.45 → `isRare` label + `onSurfaceVariant` | `product_list_tile.dart` |
| 3 | `'$name adicionado'` → l10n key | `catalog_home_screen.dart` + `app_en.arb` |
| 7 | Título duplicado na seção de categorias | `catalog_home_screen.dart` |
| 8 | Falta haptic em `_openCategory` | `catalog_home_screen.dart` |
| 4 | Erro bruto → mensagem amigável + retry | `catalog_category_screen.dart` |
| 6 | Empty state string errada | `catalog_category_screen.dart` |
| 9 | Sem pull-to-refresh | `catalog_category_screen.dart` |
| 10 | Padding bottom hardcoded `100` | `catalog_category_screen.dart` |

### Fase 2 — Opencode DeepSeek (visual/UX) — apenas arquivos exclusivos
| # | Fix | Arquivo |
|---|---|---|
| 5 | Busca global: adicionar contador antes de confirmar | `catalog_home_screen.dart` _(somente fluxo, não retocar #3/#7/#8)_ |
| 11 | Dark mode: cores pastéis → `Color.alphaBlend` com theme | `category_grid.dart` |
| 12 | `InkWell` dentro de `Material` com `borderRadius` | `category_grid.dart` |

## CLAUDE.md update

Adicionar seção "Multi-Agent Delegation" ao CLAUDE.md do projeto com:
- Referência à skill `delegate-agents`
- Flags de bypass por ferramenta
- Regras de verificação pós-delegação

## Riscos e mitigações

| Risco | Mitigação |
|---|---|
| Agente modifica arquivo não autorizado | Prompt com lista explícita de arquivos permitidos |
| Conflito entre mudanças dos dois agentes | Grupos A e B tocam arquivos disjuntos (exceto `catalog_home_screen.dart` — executar sequencialmente) |
| Análise falha após delegação | Claude verifica `flutter analyze` antes de aprovar |
| l10n quebrada | Rodar `flutter gen-l10n` após Gemini terminar grupo A |
