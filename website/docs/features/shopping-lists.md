---
id: shopping-lists
title: Listas de Compras
sidebar_label: Listas de Compras
---

# Listas de Compras

O módulo de listas é o núcleo do KipiList. Permite criar, gerenciar e compartilhar listas de compras em tempo real via Firestore.

## Funcionalidades

- Criar múltiplas listas (máx. 3 no plano gratuito)
- Adicionar itens com nome, quantidade, unidade e categoria
- Marcar/desmarcar itens como comprados
- Organizar por categorias com drag-and-drop
- Filtrar por estado (todos, pendentes, comprados)
- Compartilhar lista via link ou código
- Exportar como PDF ou Excel
- Desfazer ações recentes
- Colaboração em tempo real (stream Firestore)

## Estrutura de Arquivos

```
lib/app/lists/
├── screens/
│   └── (telas de lista via list_screen_body.dart)
├── providers/
│   └── (providers de listas e itens)
├── widgets/
│   ├── add_item_dialog.dart
│   ├── edit_item_dialog.dart
│   ├── add_edit_category_dialog.dart
│   ├── empty_state.dart
│   ├── filter_bar.dart
│   ├── kipi_quick_bar.dart        # Acesso rápido ao chat Kipi
│   ├── list_switcher_sheet.dart
│   └── quick_add_bar.dart
└── list_screen_body.dart          # Corpo principal da tela (~24KB)
```

## Widgets Extraídos de `list_screen_body.dart`

Para manter o arquivo gerenciável, 7 sub-componentes foram extraídos:

| Widget | Responsabilidade |
|---|---|
| `ProgressInfoHeader` | Header com progresso de compras |
| `ShoppingCompletionView` | Tela de conclusão da lista |
| `GestureHintBanner` | Banner de dicas de gestos |
| `SelectionBottomBar` | Barra de ações em seleção múltipla |
| `SortOptionsSheet` | Sheet de opções de ordenação |
| `ShareListSheet` | Sheet para compartilhamento |
| `ExportOptionsSheet` | Sheet para exportar PDF/Excel |

## Modelo de Dados

```dart
class ShoppingList {
  final String id;
  final String name;
  final String ownerId;
  final String? sharedCode;       // Código para acesso compartilhado
  final DateTime createdAt;
  final DateTime updatedAt;
  final int itemCount;
  final int checkedCount;
  final String? emoji;
  final String? color;
}

class ShoppingItem {
  final String id;
  final String shoppingListId;    // FK para a lista
  final String name;
  final double quantity;
  final String? unit;
  final String? category;
  final bool isChecked;
  final int sortOrder;
  final DateTime createdAt;
}
```

## Compartilhamento

Listas podem ser compartilhadas via código único. O destinatário acessa a lista read-only ou pode ser adicionado como colaborador. Os dados ficam em `sharedLists/{code}` no Firestore.

## Limite de Listas (Freemium)

O plano gratuito permite **3 listas**. O gate é verificado em `premiumProvider`:

```dart
// Em list_screen_body.dart ou provider
final isPremium = ref.watch(premiumProvider).value ?? false;
if (!isPremium && lists.length >= 3) {
  showPremiumPaywall(context);
  return;
}
```

## Undo (Desfazer Ações)

O mecanismo de undo reverte passos em ordem inversa. Se uma etapa falhar no meio do loop de reversão, as etapas anteriores já foram commitadas no Firestore — é uma reversão "best-effort". Atomicidade total requereria Firestore batch operations.
