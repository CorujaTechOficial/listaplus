---
id: gotchas
title: Gotchas e Bugs Conhecidos
sidebar_label: Gotchas / Bugs Conhecidos
---

# Gotchas e Bugs Conhecidos

Esta página documenta armadilhas não óbvias e comportamentos que já causaram problemas. Leia antes de mexer nas partes afetadas.

## Build

### `--no-tree-shake-icons` obrigatório

**Problema**: `category_data.dart` usa `IconData(codepoint)` com valores numéricos dinâmicos. O Flutter tree-shaker de ícones remove ícones não referenciados estaticamente.

**Solução**: Sempre buildar com `--no-tree-shake-icons`:
```bash
flutter build appbundle --no-tree-shake-icons
```

**Alternativa de longo prazo**: Refatorar para usar constantes estáticas em vez de `IconData(codepoint)`.

---

## Autenticação

### `signOut()` + listener de stream

**Problema**: `AuthService.signOut()` já chama `signInAnonymously()` internamente para re-logar. Se o listener do `authStateChanges()` também chamar `signInAnonymously()`, cria uma race condition com duas sessões anônimas.

```dart
// Errado — causa duplicação
FirebaseAuth.instance.authStateChanges().listen((user) {
  if (user == null) {
    firebaseAuth.signInAnonymously(); // NÃO FAÇA
  }
});

// Correto — AuthService gerencia isso
await authService.signOut(); // já re-loga anonimamente
```

---

## AI / Chat

### switch fall-through em `executeAction`

**Problema**: Dart trata `case` sem `break` entre `case 'add_items'` e `case 'organize'` como fall-through (erro de compilação em modo strict).

**Solução**: Adicionar `break` explícito entre os cases em `chat_provider.dart`.

### Agent loop após cancelamento

**Problema**: Sem verificação de cancelamento, `_agentLoop` pode continuar executando rounds após `cancelRequest()`.

**Solução**: `_agentLoop` verifica `_isCancelled` antes de cada round e antes de cada tool execution.

### `clearHistory` com request ativo

**Problema**: Limpar o histórico sem cancelar o request ativo causa state inconsistency.

**Solução**: `clearHistory()` sempre chama `cancelRequest()` primeiro.

### Streaming buffer flush

**Problema**: Ao final do SSE stream, tokens restantes no buffer não exibidos causam salto visual.

**Solução**: Após o loop do stream terminar, fazer flush dos tokens restantes para `chatStreamingTextProvider` antes de setá-lo como `null`.

---

## Providers

### Imports em `chat_provider.dart`

**Problema**: `chat_provider.dart` importa `premiumProvider`, `authProvider`, `userStatsProvider` e `packageInfoProvider`. Quando esses providers se movem de lugar, os imports quebram silenciosamente em runtime.

**Solução**: Ao mover qualquer desses providers, atualizar os imports em `chat_provider.dart` imediatamente.

---

## Undo (Desfazer)

### Undo parcial

**Problema**: O loop de undo reverte etapas em ordem inversa. Se uma etapa falhar no meio, as anteriores já foram commitadas no Firestore.

**Status**: É best-effort. Atomicidade total requereria Firestore batch operations (não implementado).

---

## ARB / Localização

### ICU `other` traduzido

`translate_missing.py` às vezes traduz a palavra `other` nas plurais ICU para o idioma local. Isso quebra `flutter gen-l10n` com `Syntax Error`.

Chaves afetadas: `aiRemainingFreeToday`, `paywallTrialMonths`.

**Solução**: Ver [script de correção rápida](../architecture/localization#script-de-correção-rápida).

### JSON corrompido pós-tradução

`translate_missing.py` pode inserir um `}` prematuro que fecha o JSON no meio do arquivo.

**Diagnóstico**:
```bash
python3 -c "import json, glob; [json.loads(open(f).read()) for f in glob.glob('lib/l10n/*.arb')]"
```

---

## Quick Actions

### `action_add` removido

O atalho de "adicionar item" foi removido da tela inicial do Android porque não existe infraestrutura para exibir diálogos fora da árvore de widgets.

Apenas `action_pantry` (abrir a aba de Despensa) está ativo.

---

## Lint

### `prefer_int_literals` falso positivo

```dart
// Este código falha no lint mas é correto
final total = items.fold(0.0, (acc, item) => acc + item.price);

// Suprimir:
// ignore: prefer_int_literals
final total = items.fold(0.0, (acc, item) => acc + item.price);
```
