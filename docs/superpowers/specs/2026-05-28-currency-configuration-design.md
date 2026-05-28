# Configuração de Moeda — Documento de Design

## Problema

O app possui "R$" (Real Brasileiro) hardcoded como símbolo de moeda em 19+ lugares espalhados por 11 arquivos Dart e 2 chaves ARB. Com 86 locales e uma base de usuários internacional crescendo, o app precisa suportar exibição de moeda configurável.

## Solução

Um provider Riverpod `CurrencySetting` que armazena um código ISO 4217 (ex: `BRL`, `USD`, `EUR`) no Firestore `users/{uid}`, junto com uma função `formatCurrency()` refatorada usando `NumberFormat.simpleCurrency(name: ...)` do pacote `intl`.

## Arquitetura

### 1. Camada de Dados — Preferência no Firestore

- **Chave:** `currencyCode`
- **Local:** `users/{uid}` (mesmo documento de `themeMode`, `locale`, `themeColor`)
- **Tipo:** `String` (ISO 4217, ex: `"BRL"`)
- **Fallback (null → inferido):** mapeado a partir do locale do app:
  - `pt_BR`, `pt` → `BRL`
  - `en_US` → `USD`
  - `pt_PT` → `EUR`
  - `en_GB` → `GBP`
  - `es_AR`, `es_CL`, `es_CO`, `es_MX` → moedas locais respectivas
  - Demais → `USD`

### 2. Provider — `CurrencySetting`

**Arquivo:** `lib/core/providers/preferences_providers.dart`

Padrão: idêntico ao `LocaleSetting` e `DarkMode`.

```dart
@riverpod
class CurrencySetting extends _$CurrencySetting {
  @override
  Future<String> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      final saved = await service.getUserData().then((d) => d?['currencyCode'] as String?);
      if (saved != null) return saved;
      return _inferirDoLocale(ref.read(localeSettingProvider).value);
    } on Exception {
      return 'BRL';
    }
  }

  Future<void> setCurrency(String code) async { ... }
}
```

### 3. Formatador — `formatCurrency()`

**Arquivo:** `lib/core/utils/formatters.dart`

```dart
String formatCurrency(double valor, String moeda) {
  final formato = NumberFormat.simpleCurrency(
    locale: 'pt_BR',
    name: moeda,
    decimalDigits: 2,
  );
  return formato.format(valor);
}
```

O parâmetro `name:` aceita códigos ISO 4217 (`BRL`, `USD`, `EUR`) e o `NumberFormat` resolve automaticamente o símbolo e a formatação correta (ex: `R$ 1.234,56` vs `$1,234.56`).

### 4. Interface — Tela de Seleção de Moeda

**Arquivo:** `lib/app/settings/screens/currency_selection_screen.dart`

- **Acesso:** Configurações → "Moeda" (novo `ListTile` em `settings_screen.dart`)
- **Conteúdo:** Lista completa de moedas ISO 4217 `RadioListTile` — **todas as moedas disponíveis no pacote `intl`**. A lista é populada dinamicamente via `NumberFormat.simpleCurrency` para gerar símbolo + nome localizado.
- **Nomes localizados:** cada moeda mostra `CÓDIGO (SÍMBOLO) — Nome` (ex: `BRL (R$) — Real Brasileiro`)
- **Salvar:** chama `ref.read(currencySettingProvider.notifier).setCurrency(codigo)`

### 5. Migração — Substituir todos os `R$` hardcoded

19 ocorrências em 11 arquivos:

| Arquivo | Ocorrências | Ação |
|---------|------------|------|
| `lib/core/utils/formatters.dart` | 1 (função existente) | Refatorar para aceitar `moeda` + usar `NumberFormat.simpleCurrency` |
| `lib/app/lists/widgets/shopping_item_tile.dart` | 1 | Substituir por `formatCurrency(...)` |
| `lib/app/lists/list_screen_body.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/ai/screens/ai_home_screen.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/ai/providers/chat_provider.dart` | 1 | Substituir por `formatCurrency(...)` |
| `lib/app/ai/widgets/ai_chat_panel.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/ai/agent/executors/list_executor.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/ai/agent/executors/budget_executor.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/settings/screens/budget_dashboard_screen.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/app/settings/screens/achievements_screen.dart` | 1 | Substituir por `formatCurrency(...)` |
| `lib/app/lists/widgets/budget_dialog.dart` | 1 | Substituir texto do prefixo |
| `lib/widgets/artifact_widgets/artifact_card_shell.dart` | 2 | Substituir por `formatCurrency(...)` |
| `lib/widgets/artifact_widgets/artifact_content_renderer.dart` | 2 | Substituir por `formatCurrency(...)` |

Cada arquivo precisa observar o `currencySettingProvider` e chamar `formatCurrency(valor, moeda)` em vez de `'R$ ${valor.toStringAsFixed(2)}'`.

### 6. Atualizações ARB

Duas chaves em todos os 123 arquivos ARB contêm `(R$)` hardcoded:
- `budgetValueLabel`: `"Amount (R$)"` → `"Amount"`
- `estimatedPrice`: `"Estimated price (R$)"` → `"Estimated price"`

Atualizar o template (`app_en.arb`) e propagar para todas as variantes regionais em inglês. ARBs já traduzidos sem `(R$)` não precisam de alteração.

Após editar ARBs: `flutter gen-l10n`

### 7. Executores do Agente de IA

Os executores do agente (`list_executor.dart`, `budget_executor.dart`) formatam moeda para respostas do LLM. Devem usar `formatCurrency()` também, acessando o `currencySettingProvider` via `ref.read()`.

## Testes

- Teste unitário para `formatCurrency()` com múltiplos códigos de moeda
- Teste de widget para `CurrencySelectionScreen`
- Testes existentes devem continuar passando (apenas formatação de exibição muda, sem alteração em modelo de dados)

## Considerações Futuras

- **Conversão de moeda** (fora do escopo): armazenar `moedaOriginal` e `taxaCambio` nos itens para compras multi-moeda
- **Preços RevenueCat:** já são localizados pela loja — sem alteração necessária
