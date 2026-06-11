---
id: overview
title: Modelos de Dados
sidebar_label: Visão Geral
---

# Modelos de Dados

Todos os modelos compartilhados ficam em `lib/models/` — 17 arquivos Dart. Eles são usados tanto pelo código da UI quanto pelos serviços, e representam a fonte da verdade para tipos compartilhados.

:::info Migração concluída

`lib/domain/` foi deletado e todos os seus tipos movidos para `lib/models/`. Não há mais referências ao diretório `domain`.

:::

## Lista de Modelos

| Arquivo | Tipo principal | Descrição |
|---|---|---|
| `shopping_list.dart` | `ShoppingList` | Lista de compras |
| `shopping_item.dart` | `ShoppingItem` | Item de lista |
| `category.dart` | `Category` | Categoria de item |
| `category_data.dart` | `CategoryData` | Dados estáticos de categorias com ícones |
| `pantry_item.dart` | `PantryItem` | Item da despensa |
| `recipe.dart` | `Recipe` | Receita com ingredientes |
| `meal_plan.dart` | `MealPlan` | Plano semanal de refeições |
| `user_profile.dart` | `UserProfile` | Perfil do usuário |
| `chat_message.dart` | `ChatMessage` | Mensagem do chat com o Kipi |
| `chat_session_model.dart` | `ChatSession` | Sessão de conversa com o Kipi |
| `ai_config.dart` | `AiConfig` | Configurações do agente de IA |
| `ai_usage.dart` | `AiUsage` | Controle de uso diário da IA |
| `interactive_artifact.dart` | `InteractiveArtifact` | Artefato interativo do chat |
| `premium_feature.dart` | `PremiumFeature` | Enum de recursos Pro |
| `feedback_item.dart` | `FeedbackItem` | Item de feedback do usuário |
| `suggested_reply.dart` | `SuggestedReply` | Quick reply sugerido pela IA |
| `unit.dart` | `Unit` | Enum de unidades de medida |

## Serialização

Os modelos usam `freezed` + `json_annotation` para geração de código:

```dart
@freezed
class ShoppingItem with _$ShoppingItem {
  const factory ShoppingItem({
    required String id,
    required String shoppingListId,
    required String name,
    @Default(1.0) double quantity,
    String? unit,
    String? category,
    @Default(false) bool isChecked,
    required DateTime createdAt,
  }) = _ShoppingItem;

  factory ShoppingItem.fromJson(Map<String, dynamic> json) =>
      _$ShoppingItemFromJson(json);
}
```

Os arquivos `*.g.dart` e `*.freezed.dart` são gerados pelo `build_runner` e **não** são commitados.
