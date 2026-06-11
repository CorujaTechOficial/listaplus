---
id: ai-agent
title: Arquitetura do Agente de IA
sidebar_label: Agente de IA
---

# Agente de IA (Kipi)

O assistente Kipi é implementado como um **agente de loop com tool calling**. O modelo de linguagem recebe ferramentas, decide quais executar, e o app executa as ações no estado local (Riverpod) e no Firestore.

## Modelo de Linguagem

- **Modelo**: DeepSeek v3-flash
- **Protocolo**: SSE (Server-Sent Events) via HTTP
- **Serviço**: `OpenCodeGoService` (`lib/services/open_code_go_service.dart`)
- **Cancelamento**: `AiCancellationToken` chama `client.close()` no HTTP client

## Fluxo do Agente

```
Usuário envia mensagem
        │
        ▼
  chatProvider._agentLoop()
        │
        ├─ Verifica _isCancelled ◄──── cancelRequest() a qualquer momento
        │
        ▼
  AiService.getChatCompletionWithTools()
        │
        ▼
  OpenCodeGoService (SSE → DeepSeek)
        │
        ├─ Se response = tool_calls
        │       │
        │       ▼
        │  tool_executor.dart executa cada ferramenta
        │       │
        │       ├─ Modifica estado Riverpod
        │       └─ Persiste no Firestore via FirestoreService
        │
        └─ Se response = texto final → exibe ao usuário
```

## Ferramentas Disponíveis (45+)

As ferramentas estão definidas em `lib/app/ai/agent/tools/` e organizadas por domínio:

### Ferramentas de Item (`item_tools.dart`)
- `add_items` — adiciona itens à lista
- `remove_item` — remove um item
- `check_item` / `uncheck_item` — marca/desmarca como comprado
- `edit_item` — edita nome, quantidade, unidade, categoria
- `move_item` — move item para outra lista

### Ferramentas de Lista (`list_tools.dart`)
- `create_list` — cria nova lista
- `delete_list` — deleta lista
- `rename_list` — renomeia lista
- `clear_list` — limpa todos os itens
- `organize_list` — reorganiza por categoria

### Ferramentas de Receita (`recipe_tools.dart`)
- `search_recipes` — busca receitas
- `add_recipe_to_list` — adiciona ingredientes à lista
- `create_recipe` — cria nova receita

### Ferramentas de Despensa (`pantry_tools.dart`)
- `add_to_pantry` — adiciona item à despensa
- `remove_from_pantry` — remove da despensa
- `check_pantry` — verifica disponibilidade

### Ferramentas de Planejamento (`meal_planner_tools.dart`)
- `create_meal_plan` — cria plano semanal
- `generate_shopping_list` — gera lista do plano

### Ferramentas de Sistema (`system_tools.dart`)
- `get_current_list` — retorna lista ativa
- `get_all_lists` — lista todas as listas
- `switch_list` — troca lista ativa

### Ferramentas de Artefato (`artifact_tools.dart`)
- `create_artifact` — cria artefato interativo (tabela, checklist)
- `update_artifact` — atualiza artefato existente

## Estrutura de Arquivos

```
lib/app/ai/
├── agent/
│   ├── executors/
│   │   ├── list_executor.dart      # Executa ações em listas
│   │   └── tool_executor.dart      # Dispatch de ferramentas
│   ├── tools/
│   │   ├── tool_core.dart          # Definições JSON Schema das ferramentas
│   │   ├── item_tools.dart
│   │   ├── list_tools.dart
│   │   ├── recipe_tools.dart
│   │   ├── pantry_tools.dart
│   │   ├── meal_planner_tools.dart
│   │   ├── system_tools.dart
│   │   ├── artifact_tools.dart
│   │   ├── budget_tools.dart
│   │   ├── config_tools.dart
│   │   ├── agent_tools.dart
│   │   └── share_tools.dart
├── providers/
│   ├── chat_provider.dart          # Notifier principal (~1931 linhas)
│   ├── chat_helpers.dart
│   ├── chat_streaming.dart
│   ├── chat_tool_descriptions.dart
│   ├── chat_small_providers.dart
│   └── artifact_state_provider.dart
├── screens/
│   ├── ai_home_screen.dart
│   ├── chat_screen.dart
│   └── chat_history_screen.dart
├── utils/
│   └── ai_utils.dart
└── widgets/
    ├── ai_chat_panel.dart
    └── ai_chat_sheet.dart
```

## Streaming

O streaming SSE funciona assim:

1. `OpenCodeGoService` abre conexão HTTP com o endpoint DeepSeek
2. Cada chunk do SSE é roteado para `chatStreamingTextProvider`
3. A UI reage ao provider e renderiza tokens em tempo real
4. Ao final do stream, os tokens restantes no buffer são **flushed** antes de setar o provider como `null` (evita saltos visuais)

## Cancelamento

```dart
// Iniciar cancelamento
ref.read(chatProvider.notifier).cancelRequest();

// Internamente: AiCancellationToken
class AiCancellationToken {
  bool _isCancelled = false;
  final http.Client client;

  void cancel() {
    _isCancelled = true;
    client.close(); // Fecha a conexão SSE imediatamente
  }
}
```

O `_agentLoop` verifica `_isCancelled` **entre rounds e entre tool executions** para evitar "phantom rounds" após cancelamento.
