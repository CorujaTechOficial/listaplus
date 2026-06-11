---
id: state-management
title: Gerenciamento de Estado (Riverpod)
sidebar_label: Riverpod / Estado
---

# Gerenciamento de Estado

KipiList usa **Riverpod 3.x com codegen** (`riverpod_annotation` + `build_runner`). Todos os providers usam anotações `@riverpod` que geram automaticamente os arquivos `*.g.dart`.

## Como Funciona

### Definindo um Provider

```dart
// lib/app/lists/providers/lists_provider.dart
part 'lists_provider.g.dart';

@riverpod
class ListsNotifier extends _$ListsNotifier {
  @override
  Future<List<ShoppingList>> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final uid = ref.watch(authProvider).value?.uid;
    return service.getLists(uid!);
  }

  Future<void> addList(String name) async { ... }
}
```

O `build_runner` gera `lists_provider.g.dart` com `listsNotifierProvider`.

### Consumindo no Widget

```dart
class ListsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(listsNotifierProvider);
    return lists.when(
      data: (data) => ListView(...),
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text('Erro: $e'),
    );
  }
}
```

## Geração de Código

Após editar qualquer arquivo com `@riverpod`:

```bash
# Uma vez
dart run build_runner build --delete-conflicting-outputs

# Em modo watch (durante desenvolvimento)
dart run build_runner watch --delete-conflicting-outputs
```

Os arquivos `.g.dart` **não** são commitados no git (`.gitignore`) e devem ser regenerados localmente.

## Providers Especiais

### `premiumProvider`
Gate de monetização. Retorna `true` se o usuário tem entitlement `kipilist_pro` ativo. **Nunca** verifica créditos no Firestore — apenas RevenueCat.

```dart
final isPremium = ref.watch(premiumProvider).value ?? false;
if (!isPremium && lists.length >= 3) {
  // Mostrar paywall
}
```

### `chatProvider`
Notifier principal do chat AI (`~1931 linhas`). Dividido em arquivos auxiliares:

| Arquivo | Responsabilidade |
|---|---|
| `chat_provider.dart` | Notifier principal, agent loop, tool execution |
| `chat_helpers.dart` | Funções auxiliares de mensagem |
| `chat_streaming.dart` | Lógica de streaming SSE |
| `chat_tool_descriptions.dart` | Descrições das ferramentas para o modelo |
| `chat_small_providers.dart` | Providers pequenos derivados |

## Strict Type Safety

O projeto usa `strict-casts`, `strict-inference` e `strict-raw-types`. Tipos explícitos são obrigatórios em todos os lugares. O lint `always_put_control_body_on_new_line` também está ativo.
