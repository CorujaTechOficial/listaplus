# Configuração de Moeda — Plano de Implementação

> **Para workers de agente:** SUB-SKILL OBRIGATÓRIA: Use superpowers:subagent-driven-development (recomendado) ou superpowers:executing-plans para implementar este plano tarefa por tarefa. Os passos usam checkbox (`- [ ]`) para rastreamento.

**Objetivo:** Adicionar configuração de moeda selecionável (ISO 4217) nas configurações do app, substituindo `R$` hardcoded por formatação dinâmica via `NumberFormat`.

**Arquitetura:** Provider `CurrencySetting` no Firestore (`users/{uid}` → `currencyCode`), função `formatCurrency()` refatorada usando `intl`/`NumberFormat.simpleCurrency`, tela de seleção de moeda com lista completa, migração de 19 ocorrências de `R$` hardcoded.

**Tech Stack:** Riverpod, Firestore, intl (NumberFormat), Flutter

---

### Task 1: CurrencySetting Provider + formatCurrency()

**Arquivos:**
- Modificar: `lib/core/providers/preferences_providers.dart`
- Modificar: `lib/core/utils/formatters.dart`

- [ ] **Passo 1: Adicionar CurrencySetting provider**

Adicionar em `lib/core/providers/preferences_providers.dart` antes de `ThemeColor`:

```dart
@riverpod
class CurrencySetting extends _$CurrencySetting {
  @override
  Future<String> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      final data = await service.getUserData();
      final saved = data?['currencyCode'] as String?;
      if (saved != null) return saved;
      final locale = ref.read(localeSettingProvider).value;
      return _inferirDoLocale(locale);
    } on Exception {
      return 'BRL';
    }
  }

  Future<void> setCurrency(String code) async {
    final service = ref.read(firestoreServiceProvider);
    final previous = state.value;
    state = AsyncValue.data(code);
    try {
      await service.updateUserData({'currencyCode': code});
    } on Exception {
      state = AsyncValue.data(previous ?? 'BRL');
      rethrow;
    }
  }

  String _inferirDoLocale(String? locale) {
    if (locale == null) return 'BRL';
    if (locale.startsWith('pt')) return 'BRL';
    if (locale.startsWith('en_US')) return 'USD';
    if (locale.startsWith('en_GB')) return 'GBP';
    if (locale.startsWith('pt_PT')) return 'EUR';
    if (locale.startsWith('es_AR')) return 'ARS';
    if (locale.startsWith('es_CL')) return 'CLP';
    if (locale.startsWith('es_CO')) return 'COP';
    if (locale.startsWith('es_MX')) return 'MXN';
    if (locale.startsWith('ja')) return 'JPY';
    if (locale.startsWith('de')) return 'EUR';
    if (locale.startsWith('fr')) return 'EUR';
    if (locale.startsWith('it')) return 'EUR';
    if (locale.startsWith('es')) return 'EUR';
    return 'USD';
  }
}
```

- [ ] **Passo 2: Refatorar formatCurrency()**

Substituir `lib/core/utils/formatters.dart` por:

```dart
import 'package:intl/intl.dart';

String formatCurrency(double value, String currencyCode) {
  final format = NumberFormat.simpleCurrency(
    name: currencyCode,
    decimalDigits: 2,
  );
  return format.format(value);
}

String pluralize(int count, String singular, String plural) {
  return '$count ${count == 1 ? singular : plural}';
}
```

- [ ] **Passo 3: Rodar build_runner**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && dart run build_runner build --delete-conflicting-outputs
```

---

### Task 2: CurrencyData + CurrencySelectionScreen

**Arquivos:**
- Criar: `lib/core/utils/currency_data.dart`
- Criar: `lib/app/settings/screens/currency_selection_screen.dart`

- [ ] **Passo 1: Criar currency_data.dart**

Criar `lib/core/utils/currency_data.dart` com todos os códigos ISO 4217 + nome legível:

```dart
class CurrencyInfo {
  final String code;
  final String name;

  const CurrencyInfo(this.code, this.name);
}

const List<CurrencyInfo> allCurrencies = [
  CurrencyInfo('AED', 'Dirham dos Emirados'),
  CurrencyInfo('AFN', 'Afegane afegão'),
  CurrencyInfo('ALL', 'Lek albanês'),
  CurrencyInfo('AMD', 'Dram armênio'),
  CurrencyInfo('ANG', 'Florim das Antilhas Holandesas'),
  CurrencyInfo('AOA', 'Kwanza angolano'),
  CurrencyInfo('ARS', 'Peso argentino'),
  CurrencyInfo('AUD', 'Dólar australiano'),
  CurrencyInfo('AWG', 'Florim arubano'),
  CurrencyInfo('AZN', 'Manat azerbaijano'),
  CurrencyInfo('BAM', 'Marco bósnio-herzegovino'),
  CurrencyInfo('BBD', 'Dólar barbadense'),
  CurrencyInfo('BDT', 'Taka bengali'),
  CurrencyInfo('BGN', 'Lev búlgaro'),
  CurrencyInfo('BHD', 'Dinar bareinita'),
  CurrencyInfo('BIF', 'Franco burundiano'),
  CurrencyInfo('BMD', 'Dólar bermudense'),
  CurrencyInfo('BND', 'Dólar bruneano'),
  CurrencyInfo('BOB', 'Boliviano'),
  CurrencyInfo('BRL', 'Real brasileiro'),
  CurrencyInfo('BSD', 'Dólar bahamense'),
  CurrencyInfo('BTN', 'Ngultrum butanês'),
  CurrencyInfo('BWP', 'Pula botsuanesa'),
  CurrencyInfo('BYN', 'Rublo bielorrusso'),
  CurrencyInfo('BZD', 'Dólar belizenho'),
  CurrencyInfo('CAD', 'Dólar canadense'),
  CurrencyInfo('CDF', 'Franco congolês'),
  CurrencyInfo('CHF', 'Franco suíço'),
  CurrencyInfo('CLP', 'Peso chileno'),
  CurrencyInfo('CNY', 'Yuan chinês'),
  CurrencyInfo('COP', 'Peso colombiano'),
  CurrencyInfo('CRC', 'Colón costarriquenho'),
  CurrencyInfo('CUP', 'Peso cubano'),
  CurrencyInfo('CVE', 'Escudo cabo-verdiano'),
  CurrencyInfo('CZK', 'Coroa tcheca'),
  CurrencyInfo('DJF', 'Franco djibutiense'),
  CurrencyInfo('DKK', 'Coroa dinamarquesa'),
  CurrencyInfo('DOP', 'Peso dominicano'),
  CurrencyInfo('DZD', 'Dinar argelino'),
  CurrencyInfo('EGP', 'Libra egípcia'),
  CurrencyInfo('ERN', 'Nakfa eritreia'),
  CurrencyInfo('ETB', 'Birr etíope'),
  CurrencyInfo('EUR', 'Euro'),
  CurrencyInfo('FJD', 'Dólar fijiano'),
  CurrencyInfo('FKP', 'Libra malvinense'),
  CurrencyInfo('GBP', 'Libra esterlina'),
  CurrencyInfo('GEL', 'Lari georgiano'),
  CurrencyInfo('GHS', 'Cedi ganês'),
  CurrencyInfo('GIP', 'Libra de Gibraltar'),
  CurrencyInfo('GMD', 'Dalasi gambiano'),
  CurrencyInfo('GNF', 'Franco guineense'),
  CurrencyInfo('GTQ', 'Quetzal guatemalteco'),
  CurrencyInfo('GYD', 'Dólar guianense'),
  CurrencyInfo('HKD', 'Dólar de Hong Kong'),
  CurrencyInfo('HNL', 'Lempira hondurenha'),
  CurrencyInfo('HRK', 'Kuna croata'),
  CurrencyInfo('HTG', 'Gourde haitiano'),
  CurrencyInfo('HUF', 'Florim húngaro'),
  CurrencyInfo('IDR', 'Rupia indonésia'),
  CurrencyInfo('ILS', 'Novo shekel israelense'),
  CurrencyInfo('INR', 'Rupia indiana'),
  CurrencyInfo('IQD', 'Dinar iraquiano'),
  CurrencyInfo('IRR', 'Rial iraniano'),
  CurrencyInfo('ISK', 'Coroa islandesa'),
  CurrencyInfo('JMD', 'Dólar jamaicano'),
  CurrencyInfo('JOD', 'Dinar jordaniano'),
  CurrencyInfo('JPY', 'Iene japonês'),
  CurrencyInfo('KES', 'Xelim queniano'),
  CurrencyInfo('KGS', 'Som quirguiz'),
  CurrencyInfo('KHR', 'Riel cambojano'),
  CurrencyInfo('KMF', 'Franco comoriano'),
  CurrencyInfo('KPW', 'Won norte-coreano'),
  CurrencyInfo('KRW', 'Won sul-coreano'),
  CurrencyInfo('KWD', 'Dinar kuwaitiano'),
  CurrencyInfo('KYD', 'Dólar das Ilhas Cayman'),
  CurrencyInfo('KZT', 'Tenge cazaque'),
  CurrencyInfo('LAK', 'Kip laosiano'),
  CurrencyInfo('LBP', 'Libra libanesa'),
  CurrencyInfo('LKR', 'Rupia ceilandesa'),
  CurrencyInfo('LRD', 'Dólar liberiano'),
  CurrencyInfo('LSL', 'Loti lesotiano'),
  CurrencyInfo('LYD', 'Dinar líbio'),
  CurrencyInfo('MAD', 'Dirham marroquino'),
  CurrencyInfo('MDL', 'Leu moldavo'),
  CurrencyInfo('MGA', 'Ariary malgaxe'),
  CurrencyInfo('MKD', 'Dinar macedônio'),
  CurrencyInfo('MMK', 'Kyat mianmarense'),
  CurrencyInfo('MNT', 'Tugrik mongol'),
  CurrencyInfo('MOP', 'Pataca macaense'),
  CurrencyInfo('MRU', 'Ouguiya mauritana'),
  CurrencyInfo('MUR', 'Rupia mauriciana'),
  CurrencyInfo('MVR', 'Rupia maldiva'),
  CurrencyInfo('MWK', 'Kwacha malawiana'),
  CurrencyInfo('MXN', 'Peso mexicano'),
  CurrencyInfo('MYR', 'Ringgit malaio'),
  CurrencyInfo('MZN', 'Metical moçambicano'),
  CurrencyInfo('NAD', 'Dólar namibiano'),
  CurrencyInfo('NGN', 'Naira nigeriana'),
  CurrencyInfo('NIO', 'Córdova nicaraguense'),
  CurrencyInfo('NOK', 'Coroa norueguesa'),
  CurrencyInfo('NPR', 'Rupia nepalesa'),
  CurrencyInfo('NZD', 'Dólar neozelandês'),
  CurrencyInfo('OMR', 'Rial omanense'),
  CurrencyInfo('PAB', 'Balboa panamenho'),
  CurrencyInfo('PEN', 'Sol peruano'),
  CurrencyInfo('PGK', 'Kina papuásia'),
  CurrencyInfo('PHP', 'Peso filipino'),
  CurrencyInfo('PKR', 'Rupia paquistanesa'),
  CurrencyInfo('PLN', 'Zloty polonês'),
  CurrencyInfo('PYG', 'Guarani paraguaio'),
  CurrencyInfo('QAR', 'Rial catarense'),
  CurrencyInfo('RON', 'Leu romeno'),
  CurrencyInfo('RSD', 'Dinar sérvio'),
  CurrencyInfo('RUB', 'Rublo russo'),
  CurrencyInfo('RWF', 'Franco ruandês'),
  CurrencyInfo('SAR', 'Riyal saudita'),
  CurrencyInfo('SBD', 'Dólar salomônico'),
  CurrencyInfo('SCR', 'Rupia seichelense'),
  CurrencyInfo('SDG', 'Libra sudanesa'),
  CurrencyInfo('SEK', 'Coroa sueca'),
  CurrencyInfo('SGD', 'Dólar singapuriano'),
  CurrencyInfo('SHP', 'Libra de Santa Helena'),
  CurrencyInfo('SLE', 'Leone serra-leonês'),
  CurrencyInfo('SOS', 'Xelim somali'),
  CurrencyInfo('SRD', 'Dólar surinamês'),
  CurrencyInfo('SSP', 'Libra sul-sudanesa'),
  CurrencyInfo('STN', 'Dobra são-tomense'),
  CurrencyInfo('SVC', 'Colón salvadorenho'),
  CurrencyInfo('SYP', 'Libra síria'),
  CurrencyInfo('SZL', 'Lilangeni suazi'),
  CurrencyInfo('THB', 'Baht tailandês'),
  CurrencyInfo('TJS', 'Somoni tadjique'),
  CurrencyInfo('TMT', 'Manat turcomeno'),
  CurrencyInfo('TND', 'Dinar tunisiano'),
  CurrencyInfo('TOP', 'Paʻanga tonganesa'),
  CurrencyInfo('TRY', 'Lira turca'),
  CurrencyInfo('TTD', 'Dólar trinitário'),
  CurrencyInfo('TWD', 'Novo dólar taiwanês'),
  CurrencyInfo('TZS', 'Xelim tanzaniano'),
  CurrencyInfo('UAH', 'Hryvnia ucraniano'),
  CurrencyInfo('UGX', 'Xelim ugandense'),
  CurrencyInfo('USD', 'Dólar americano'),
  CurrencyInfo('UYU', 'Peso uruguaio'),
  CurrencyInfo('UZS', 'Som uzbeque'),
  CurrencyInfo('VES', 'Bolívar venezuelano'),
  CurrencyInfo('VND', 'Dong vietnamita'),
  CurrencyInfo('VUV', 'Vatu vanuatuense'),
  CurrencyInfo('WST', 'Tala samoana'),
  CurrencyInfo('XAF', 'Franco CFA central'),
  CurrencyInfo('XCD', 'Dólar do Caribe Oriental'),
  CurrencyInfo('XOF', 'Franco CFA ocidental'),
  CurrencyInfo('XPF', 'Franco CFP'),
  CurrencyInfo('YER', 'Rial iemenita'),
  CurrencyInfo('ZAR', 'Rand sul-africano'),
  CurrencyInfo('ZMW', 'Kwacha zambiana'),
  CurrencyInfo('ZWL', 'Dólar zimbabuano'),
];
```

- [ ] **Passo 2: Criar CurrencySelectionScreen**

Criar `lib/app/settings/screens/currency_selection_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/currency_data.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class CurrencySelectionScreen extends ConsumerStatefulWidget {
  const CurrencySelectionScreen({super.key});

  @override
  ConsumerState<CurrencySelectionScreen> createState() => _CurrencySelectionScreenState();
}

class _CurrencySelectionScreenState extends ConsumerState<CurrencySelectionScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final currencyAsync = ref.watch(currencySettingProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Moeda')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            setState(() => _searchQuery = '');
                          },
                        )
                      : null,
                  hintText: l10n.searchLanguage,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
                ),
                onChanged: (val) => setState(() => _searchQuery = val),
              ),
            ),
            Expanded(
              child: currencyAsync.when(
                data: (currentCode) {
                  final query = _searchQuery.toLowerCase().trim();
                  final filtered = query.isEmpty
                      ? allCurrencies
                      : allCurrencies.where((c) =>
                          c.code.toLowerCase().contains(query) ||
                          c.name.toLowerCase().contains(query)).toList();

                  if (filtered.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(Spacing.xl),
                        child: Text(
                          l10n.noMessagesFound,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final currency = filtered[index];
                      final isSelected = currentCode == currency.code;
                      String symbol;
                      try {
                        symbol = NumberFormat.simpleCurrency(name: currency.code).format(1).replaceAll(RegExp(r'[0-9,.\s\u00a0]'), '').trim();
                      } catch (_) {
                        symbol = currency.code;
                      }

                      return ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? theme.colorScheme.primaryContainer
                                : theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              currency.code.substring(0, 2),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: isSelected
                                    ? theme.colorScheme.onPrimaryContainer
                                    : theme.colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          '${currency.code} ($symbol)',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                        subtitle: Text(
                          currency.name,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        trailing: isSelected
                            ? Icon(Icons.check, color: theme.colorScheme.primary)
                            : null,
                        onTap: () async {
                          await ref.read(currencySettingProvider.notifier).setCurrency(currency.code);
                          if (context.mounted) Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator.adaptive()),
                error: (e, _) => Center(child: Text('Erro: $e')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Task 3: Adicionar Moeda nas Configurações

**Arquivos:**
- Modificar: `lib/app/settings/screens/settings_screen.dart`

- [ ] **Passo 1: Adicionar import da CurrencySelectionScreen**

```dart
import 'package:shopping_list/app/settings/screens/currency_selection_screen.dart';
```

- [ ] **Passo 2: Adicionar provider e ListTile**

Adicionar watch:
```dart
final currencyAsync = ref.watch(currencySettingProvider);
```

Adicionar `ListTile` de moeda após o `ListTile` de idioma (após linha 246):

```dart
          ListTile(
            leading: Icon(Icons.attach_money, color: theme.colorScheme.primary),
            title: Text('Moeda'),
            subtitle: Text(currencyAsync.value ?? 'BRL'),
            trailing: Icon(Icons.chevron_right, color: theme.colorScheme.onSurfaceVariant),
            onTap: () {
              Navigator.push(
                context,
                fadeSlideRoute<void>(const CurrencySelectionScreen()),
              );
            },
          ),
```

---

### Task 4: Limpar ARB Files

**Arquivos:**
- Modificar: `lib/l10n/app_en.arb`
- Modificar: `lib/l10n/app_en_AU.arb`
- Modificar: `lib/l10n/app_en_CA.arb`
- Modificar: `lib/l10n/app_en_GB.arb`
- Modificar: `lib/l10n/app_en_IN.arb`
- Modificar: `lib/l10n/app_en_SG.arb`
- Modificar: `lib/l10n/app_en_ZA.arb`
- Modificar: `lib/l10n/app_pt.arb`
- Modificar: `lib/l10n/app_pt_BR.arb`
- Modificar: `lib/l10n/app_pt_PT.arb`

- [ ] **Passo 1: Limpar app_en.arb**

Trocar `"budgetValueLabel": "Amount (R$)"` → `"budgetValueLabel": "Amount"`
Trocar `"estimatedPrice": "Estimated price (R$)"` → `"estimatedPrice": "Estimated price"`

- [ ] **Passo 2: Limpar app_en_AU.arb**

Mesma troca: `"Amount (R$)"` → `"Amount"`, `"Estimated price (R$)"` → `"Estimated price"`

- [ ] **Passo 3: Limpar app_en_CA.arb, app_en_GB.arb, app_en_IN.arb, app_en_SG.arb, app_en_ZA.arb**

Mesma troca em cada.

- [ ] **Passo 4: Limpar app_pt.arb**

Trocar `"budgetValueLabel": "Valor (R$)"` → `"budgetValueLabel": "Valor"`
Trocar `"estimatedPrice": "Preço estimado (R$)"` → `"estimatedPrice": "Preço estimado"`

- [ ] **Passo 5: Limpar app_pt_BR.arb e app_pt_PT.arb**

Mesma troca: `"Valor (R$)"` → `"Valor"`, `"Preço estimado (R$)"` → `"Preço estimado"`

- [ ] **Passo 6: Rodar gen-l10n**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter gen-l10n
```

---

### Task 5: Migrar Widgets de Lista (shopping_item_tile + list_screen_body)

**Arquivos:**
- Modificar: `lib/app/lists/widgets/shopping_item_tile.dart`
- Modificar: `lib/app/lists/list_screen_body.dart`

- [ ] **Passo 1: Migrar shopping_item_tile.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch no início do `build`:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 112:
```dart
// ANTES:
'R\$ ${(item.estimatedPrice! * item.quantity).toStringAsFixed(2)}',
// DEPOIS:
formatCurrency(item.estimatedPrice! * item.quantity, currencyCode),
```

- [ ] **Passo 2: Migrar list_screen_body.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch no `build`:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 328:
```dart
// ANTES:
'Total: R\$ ${totalEstimated.toStringAsFixed(2)}'
// DEPOIS:
'Total: ${formatCurrency(totalEstimated, currencyCode)}'
```

Substituir linha 504:
```dart
// ANTES:
pw.Text('R\$ ${(item.estimatedPrice! * item.quantity).toStringAsFixed(2)}')
// DEPOIS:
pw.Text(formatCurrency(item.estimatedPrice! * item.quantity, currencyCode))
```

---

### Task 6: Migrar BudgetDialog

**Arquivos:**
- Modificar: `lib/app/lists/widgets/budget_dialog.dart`

- [ ] **Passo 1: Migrar budget_dialog.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar no `build`:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 45:
```dart
// ANTES:
prefixText: 'R\$ ',
// DEPOIS:
prefixText: '$currencyCode ',
```

---

### Task 7: Migrar Telas de IA (ai_home_screen + ai_chat_panel)

**Arquivos:**
- Modificar: `lib/app/ai/screens/ai_home_screen.dart`
- Modificar: `lib/app/ai/widgets/ai_chat_panel.dart`

- [ ] **Passo 1: Migrar ai_home_screen.dart (2 ocorrências)**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linhas 423 e 753:
```dart
// ANTES:
'R\$ ${totalValue.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(totalValue, currencyCode)
```

- [ ] **Passo 2: Migrar ai_chat_panel.dart (2 ocorrências)**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 2212:
```dart
// ANTES:
' (R\$ ${item.estimatedPrice!.toStringAsFixed(2)})'
// DEPOIS:
' (${formatCurrency(item.estimatedPrice!, currencyCode)})'
```

Substituir linha 2255:
```dart
// ANTES:
'R\$ ${prevBudget.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(prevBudget, currencyCode)
```

---

### Task 8: Migrar Provider e Executores de IA (chat_provider + list_executor + budget_executor)

**Arquivos:**
- Modificar: `lib/app/ai/providers/chat_provider.dart`
- Modificar: `lib/app/ai/agent/executors/list_executor.dart`
- Modificar: `lib/app/ai/agent/executors/budget_executor.dart`

- [ ] **Passo 1: Migrar chat_provider.dart**

Adicionar import:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

A função que gera a string de ação está em um switch/case. Acessar o provider via container:

Substituir linha 488:
```dart
// ANTES:
return 'Definindo orçamento para R\$${budget.toStringAsFixed(2)}';
// DEPOIS:
final moeda = ref.read(currencySettingProvider).value ?? 'BRL';
return 'Definindo orçamento para ${formatCurrency(budget, moeda)}';
```

- [ ] **Passo 2: Migrar list_executor.dart**

Adicionar no início da classe (ou import):
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Para usar nos métodos que têm `ProviderContainer container`, ler currency:
```dart
final currencyCode = container.read(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 28:
```dart
// ANTES:
final budget = list.budget != null ? ' (R\$${list.budget!.toStringAsFixed(2)})' : '';
// DEPOIS:
final budget = list.budget != null ? ' (${formatCurrency(list.budget!, currencyCode)})' : '';
```

Substituir linha 50:
```dart
// ANTES:
'Lista atual: ${list.name} (ID: ${list.id})${list.budget != null ? ', Orçamento: R\$${list.budget!.toStringAsFixed(2)}' : ''}'
// DEPOIS:
'Lista atual: ${list.name} (ID: ${list.id})${list.budget != null ? ', Orçamento: ${formatCurrency(list.budget!, currencyCode)}' : ''}'
```

- [ ] **Passo 3: Migrar budget_executor.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar nos métodos que recebem `container`:
```dart
final currencyCode = container.read(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 15:
```dart
// ANTES:
'Orçamento mensal: R\$${budget.toStringAsFixed(2)}'
// DEPOIS:
'Orçamento mensal: ${formatCurrency(budget, currencyCode)}'
```

Substituir linha 25:
```dart
// ANTES:
'Orçamento mensal definido como R\$${budget.toStringAsFixed(2)}.'
// DEPOIS:
'Orçamento mensal definido como ${formatCurrency(budget, currencyCode)}.'
```

---

### Task 9: Migrar Telas de Orçamento (budget_dashboard + achievements)

**Arquivos:**
- Modificar: `lib/app/settings/screens/budget_dashboard_screen.dart`
- Modificar: `lib/app/settings/screens/achievements_screen.dart`

- [ ] **Passo 1: Migrar budget_dashboard_screen.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 77:
```dart
// ANTES:
'R\$ ${totalSpent.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(totalSpent, currencyCode)
```

Substituir linha 135:
```dart
// ANTES:
'R\$ ${e.value.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(e.value, currencyCode)
```

- [ ] **Passo 2: Migrar achievements_screen.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 31:
```dart
// ANTES:
'R\$ ${stats.totalSavings.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(stats.totalSavings, currencyCode)
```

---

### Task 10: Migrar Artifact Widgets

**Arquivos:**
- Modificar: `lib/widgets/artifact_widgets/artifact_card_shell.dart`
- Modificar: `lib/widgets/artifact_widgets/artifact_content_renderer.dart`

- [ ] **Passo 1: Migrar artifact_card_shell.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 166:
```dart
// ANTES:
'R\$ ${totalCost.toStringAsFixed(2)} / R\$ ${budget.toStringAsFixed(2)}'
// DEPOIS:
'${formatCurrency(totalCost, currencyCode)} / ${formatCurrency(budget, currencyCode)}'
```

Substituir linha 204:
```dart
// ANTES:
'R\$ ${totalCost.toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(totalCost, currencyCode)
```

- [ ] **Passo 2: Migrar artifact_content_renderer.dart**

Adicionar imports:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

Adicionar watch:
```dart
final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
```

Substituir linha 99:
```dart
// ANTES:
'R\$ ${(alt.quantity * alt.estimatedPrice!).toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(alt.quantity * alt.estimatedPrice!, currencyCode)
```

Substituir linha 411:
```dart
// ANTES:
'R\$ ${(qty * item.estimatedPrice!).toStringAsFixed(2)}'
// DEPOIS:
formatCurrency(qty * item.estimatedPrice!, currencyCode)
```

---

### Task 11: Build Final + Verificação

- [ ] **Passo 1: Rodar build_runner (se providers foram alterados)**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && dart run build_runner build --delete-conflicting-outputs
```

- [ ] **Passo 2: Rodar flutter gen-l10n**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter gen-l10n
```

- [ ] **Passo 3: Rodar flutter analyze**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos
```
