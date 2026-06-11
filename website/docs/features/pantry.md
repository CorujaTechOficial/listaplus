---
id: pantry
title: Despensa
sidebar_label: Despensa
---

# Despensa

A despensa permite ao usuário controlar o estoque de alimentos em casa. Integra-se com o Kipi para verificar disponibilidade antes de adicionar itens às listas.

## Funcionalidades

- Adicionar itens com nome, quantidade e data de validade
- Scanner de código de barras (EAN) via câmera
- Alertas de validade próxima
- Integração com o Kipi ("tem manteiga em casa?")
- Adição manual ou via scanner

## Scanner de Código de Barras

Usa o pacote `mobile_scanner` para leitura de códigos EAN. O scanner funciona em tempo real via câmera.

```
lib/app/pantry/
├── screens/
│   ├── pantry_screen.dart          # Tela principal da despensa
│   └── pantry_scanner_screen.dart  # Tela do scanner EAN
└── widgets/
    └── add_pantry_item_dialog.dart
```

## Modelo de Dados

```dart
class PantryItem {
  final String id;
  final String name;
  final double quantity;
  final String? unit;
  final DateTime? expiryDate;
  final String? barcode;          // Código EAN do produto
  final String? category;
  final DateTime createdAt;
}
```

## Firestore

Itens da despensa ficam em `users/{uid}/pantry/{itemId}`.

## Integração com IA

O Kipi pode consultar a despensa ao planejar refeições ou gerar listas de compras. A ferramenta `check_pantry` verifica quais ingredientes já estão disponíveis antes de sugerir compras.
