---
id: ai-agent
title: Assistente Kipi (IA)
sidebar_label: Kipi (Assistente IA)
---

# Assistente Kipi

O Kipi é o assistente de IA do KipiList. Ele entende linguagem natural e executa ações reais no app: adiciona itens, organiza listas, sugere receitas, gerencia a despensa e muito mais.

## Como Usar

O Kipi está acessível por:
- **KipiQuickBar** — barra de acesso rápido na tela de listas
- **AI Chat Panel** — painel de chat deslizante
- **AI Chat Sheet** — bottom sheet do chat
- **AI Home Screen** — tela dedicada ao chat

## Exemplos de Comandos

```
"Adiciona 2kg de carne, 1 dúzia de ovos e leite integral"
"Organiza minha lista por categoria"
"Preciso dos ingredientes para fazer lasanha para 4 pessoas"
"O que tem na minha despensa que vence essa semana?"
"Cria um plano de refeições para a semana"
"Move arroz e feijão para a lista de mercado"
```

## Ferramentas do Agente (45+)

O modelo recebe um catálogo de ferramentas JSON Schema e decide quais chamar com base no pedido do usuário.

### Gerenciamento de Itens
| Ferramenta | Ação |
|---|---|
| `add_items` | Adiciona um ou mais itens à lista ativa |
| `remove_item` | Remove item pelo ID ou nome |
| `check_item` | Marca como comprado |
| `uncheck_item` | Desmarca item |
| `edit_item` | Edita nome, quantidade, unidade ou categoria |
| `move_item` | Move item para outra lista |

### Gerenciamento de Listas
| Ferramenta | Ação |
|---|---|
| `create_list` | Cria nova lista |
| `delete_list` | Deleta lista |
| `rename_list` | Renomeia lista |
| `clear_list` | Remove todos os itens |
| `organize_list` | Reorganiza por categoria |
| `switch_list` | Ativa outra lista |

### Receitas
| Ferramenta | Ação |
|---|---|
| `search_recipes` | Busca receitas por ingrediente/nome |
| `add_recipe_to_list` | Adiciona ingredientes da receita à lista |
| `create_recipe` | Salva nova receita |

### Despensa
| Ferramenta | Ação |
|---|---|
| `add_to_pantry` | Adiciona item à despensa |
| `remove_from_pantry` | Remove da despensa |
| `check_pantry` | Verifica o que tem em estoque |

### Planejamento de Refeições
| Ferramenta | Ação |
|---|---|
| `create_meal_plan` | Cria plano semanal |
| `generate_shopping_list` | Gera lista a partir do plano |

### Artefatos Interativos
| Ferramenta | Ação |
|---|---|
| `create_artifact` | Cria tabela ou checklist interativo |
| `update_artifact` | Atualiza artefato existente |

## Limites de Uso

O modelo de uso de IA é limitado por dia no plano gratuito. A chave `aiRemainingFreeToday` nas ARBs exibe o saldo restante. Usuários Pro têm limites maiores.

O controle de uso fica em `AiUsageMixin` (Firestore) e `ai_usage.dart` (modelo).

## Histórico de Conversas

Sessões de chat são salvas no Firestore e listadas em `ChatHistoryScreen`. O usuário pode retomar conversas anteriores.

## Quick Replies

O chat suporta **quick reply buttons** — sugestões de resposta rápida geradas pelo modelo e exibidas como chips clicáveis. Isso melhora a velocidade de interação sem necessidade de digitação.

O modelo retorna `SuggestedReply` objects que são exibidos abaixo da última mensagem do assistente.
