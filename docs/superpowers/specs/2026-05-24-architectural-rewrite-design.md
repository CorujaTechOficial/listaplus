# KipiList — Reestruturação Arquitetural

## Visão Geral

Reescrever a estrutura do app KipiList (Flutter, Riverpod, Firebase) seguindo **Clean Architecture simplificada** com **layers + feature grouping**. Manter todas as funcionalidades atuais, mas reorganizar arquivos, quebrar arquivos gigantes, consolidar providers e simplificar dependências.

## Estrutura Alvo

```
lib/
├── main.dart                        # Entry point mínimo
├── core/                            # Compartilhado entre todas as features
│   ├── theme/
│   │   ├── app_theme.dart           # Tema Material 3
│   │   ├── colors.dart              # Paleta de cores
│   │   ├── page_transitions.dart    # Transições customizadas
│   │   └── tokens.dart              # Design tokens (spacing, radius)
│   ├── constants/
│   │   ├── app_constants.dart       # Constantes globais + premium_feature enum
│   │   └── common_products.dart     # Produtos comuns para autocomplete
│   ├── utils/
│   │   ├── extensions.dart          # Extensões de tipos
│   │   ├── formatters.dart          # Formatadores (moeda, data)
│   │   ├── logger.dart              # Logger service (antes logger_service.dart)
│   │   └── test_utils.dart          # Utilitários de teste
│   ├── widgets/                     # Widgets verdadeiramente globais
│   │   ├── empty_state.dart
│   │   ├── premium_gate.dart
│   │   ├── shimmer_list.dart
│   │   └── init_error_screen.dart
│   └── providers/                   # Providers cross-cutting (DI)
│       ├── firebase_providers.dart  # firestoreServiceProvider
│       ├── monetization_providers.dart # revenuecat + premium
│       ├── analytics_provider.dart
│       ├── auth_provider.dart
│       └── preferences_providers.dart # darkMode, locale, themeColor, onboarding
│
├── domain/                          # Abstrações puras (sem Flutter/Firebase/Riverpod)
│   ├── entities/                    # Entidades de negócio
│   │   ├── shopping_list.dart
│   │   ├── shopping_item.dart
│   │   ├── unit.dart
│   │   ├── category.dart
│   │   ├── pantry_item.dart
│   │   ├── recipe.dart
│   │   ├── meal_plan.dart
│   │   └── user_profile.dart
│   └── repositories/                # Interfaces abstratas
│       ├── storage_repository.dart  # Antigo StorageBackend
│       ├── ai_repository.dart       # Antigo AiService
│       └── analytics_repository.dart
│
├── data/                            # Implementações concretas
│   ├── models/                      # DTOs com fromJson/toJson (Firebase)
│   │   ├── shopping_list_model.dart # Entidade + serialização + category_data
│   │   ├── shopping_item_model.dart
│   │   ├── pantry_item_model.dart
│   │   ├── recipe_model.dart
│   │   ├── meal_plan_model.dart
│   │   ├── user_profile_model.dart
│   │   └── chat_message_model.dart
│   ├── datasources/
│   │   ├── firestore/
│   │   │   ├── firestore_list_ds.dart
│   │   │   ├── firestore_item_ds.dart
│   │   │   ├── firestore_pantry_ds.dart
│   │   │   ├── firestore_user_ds.dart
│   │   │   ├── firestore_chat_ds.dart
│   │   │   └── firestore_share_ds.dart
│   │   ├── open_code_go_datasource.dart
│   │   ├── revenuecat_datasource.dart
│   │   ├── analytics_datasource.dart
│   │   └── update_datasource.dart
│   └── repositories/                # Orquestram datasources
│       ├── list_repository.dart
│       ├── item_repository.dart
│       ├── pantry_repository.dart
│       ├── chat_repository.dart
│       ├── auth_repository.dart
│       ├── user_repository.dart
│       ├── ai_repository_impl.dart
│       └── share_repository.dart
│
├── app/                             # Features do usuário (telas + estado + widgets)
│   ├── app.dart                     # MyApp e MainShell (antes em main.dart)
│   │
│   ├── lists/
│   │   ├── providers/
│   │   │   └── list_providers.dart  # shoppingLists, shoppingList, currentList, categories, share, itemHistory, priceHistory
│   │   ├── screens/
│   │   │   └── list_screen.dart     # Antigo home_screen.dart (~300 linhas)
│   │   └── widgets/
│   │       ├── shopping_item_tile.dart
│   │       ├── list_app_bar.dart
│   │       ├── list_body.dart
│   │       ├── filter_bar.dart
│   │       ├── quick_add_bar.dart
│   │       ├── add_item_dialog.dart
│   │       ├── edit_item_dialog.dart
│   │       ├── create_list_dialog.dart
│   │       ├── list_switcher_sheet.dart
│   │       ├── budget_dialog.dart
│   │       ├── add_edit_category_dialog.dart
│   │       ├── styled_autocomplete.dart
│   │       └── show_animated_dialog.dart
│   │
│   ├── ai/
│   │   ├── providers/
│   │   │   ├── chat_providers.dart  # chatState, chatLoop + artifactState
│   │   │   └── ai_config_providers.dart # aiConfig, aiUsage, apiKey
│   │   ├── screens/
│   │   │   ├── ai_home_screen.dart
│   │   │   ├── chat_screen.dart
│   │   │   └── chat_history_screen.dart
│   │   ├── widgets/
│   │   │   ├── chat_panel.dart      # Container principal (~400 linhas)
│   │   │   ├── chat_message_list.dart
│   │   │   ├── chat_input_bar.dart
│   │   │   ├── chat_bubble.dart
│   │   │   ├── animated_typing_dots.dart
│   │   │   ├── ai_chat_sheet.dart
│   │   │   └── artifact_widgets/   # Mantém estrutura atual
│   │   └── agent/
│   │       ├── tool_definitions.dart  # Constantes/tipos das tools
│   │       ├── tools/
│   │       │   ├── list_tools.dart
│   │       │   ├── item_tools.dart
│   │       │   ├── pantry_tools.dart
│   │       │   ├── budget_tools.dart
│   │       │   ├── share_tools.dart
│   │       │   └── config_tools.dart
│   │       └── executors/
│   │           ├── tool_executor.dart  # Router
│   │           ├── list_executor.dart
│   │           ├── item_executor.dart
│   │           ├── pantry_executor.dart
│   │           ├── budget_executor.dart
│   │           ├── share_executor.dart
│   │           └── config_executor.dart
│   │
│   ├── pantry/
│   │   ├── providers/
│   │   │   └── pantry_providers.dart  # pantryItems, pantrySuggestions
│   │   ├── screens/
│   │   │   └── pantry_screen.dart
│   │   └── widgets/
│   │       └── add_pantry_item_dialog.dart
│   │
│   ├── recipes/
│   │   ├── providers/
│   │   │   └── recipes_providers.dart
│   │   ├── screens/
│   │   │   └── recipes_screen.dart
│   │   └── widgets/
│   │       └── add_recipe_dialog.dart
│   │
│   ├── meal_planner/
│   │   ├── providers/
│   │   │   └── meal_planner_providers.dart
│   │   ├── screens/
│   │   │   └── meal_planner_screen.dart
│   │   └── widgets/ (se houver específicos)
│   │
│   ├── settings/
│   │   ├── providers/
│   │   │   ├── settings_providers.dart  # userProfile, monthlyBudget, userStats, voiceInput
│   │   │   └── backup_providers.dart
│   │   ├── screens/
│   │   │   ├── settings_screen.dart
│   │   │   ├── user_profile_screen.dart
│   │   │   ├── theme_selection_screen.dart
│   │   │   ├── manage_categories_screen.dart
│   │   │   ├── backup_screen.dart
│   │   │   ├── budget_dashboard_screen.dart
│   │   │   └── achievements_screen.dart
│   │   └── widgets/ (se houver específicos)
│   │
│   ├── auth/
│   │   ├── providers/
│   │   │   └── auth_providers.dart
│   │   ├── screens/
│   │   │   └── auth_screen.dart
│   │   └── widgets/ (se houver)
│   │
│   └── onboarding/
│       ├── providers/
│       │   └── onboarding_providers.dart  # (se necessário separar)
│       └── screens/
│           └── onboarding_screen.dart
│
├── l10n/                             # Mantém como está
└── generated/l10n/                   # Mantém como está
```

## Quebra de Arquivos Gigantes

| Arquivo Atual | Linhas | Quebra em |
|---|---|---|
| `lib/widgets/ai_chat_panel.dart` | 2672 | `app/ai/widgets/chat_panel.dart`, `chat_message_list.dart`, `chat_input_bar.dart`, `chat_bubble.dart` |
| `lib/providers/chat_provider.dart` | 1218 | `app/ai/providers/chat_providers.dart` (2-3 arquivos: estado, loop, serviço) |
| `lib/screens/home_screen.dart` | 1719 | `app/lists/screens/list_screen.dart` (~300) + `app/lists/widgets/list_app_bar.dart`, `list_body.dart` |
| `lib/agent/tool.dart` | 972 | `app/ai/agent/tools/*_tools.dart` (6 arquivos) |
| `lib/agent/tool_executor.dart` | 927 | `app/ai/agent/executors/*_executor.dart` (7 arquivos) |
| `lib/services/firestore_service.dart` | 824 | `data/datasources/firestore/*_ds.dart` (6 datasources) |
| `lib/widgets/shopping_item_tile.dart` | 559 | `app/lists/widgets/shopping_item_tile.dart` (único, mas reduzido extraindo lógica) |
| `lib/screens/ai_home_screen.dart` | 470 | `app/ai/screens/ai_home_screen.dart` (pode ficar como está, ~300 após extrair widgets) |

## Simplificação de Providers (56 → ~26)

**Consolidados em arquivo único por feature:**
- `list_providers.dart` (7 providers: shoppingLists, shoppingList, currentList, categories, share, itemHistory, priceHistory)
- `chat_providers.dart` (2 providers: chat, artifactState)
- `ai_config_providers.dart` (3 providers: aiConfig, aiUsage, apiKey)
- `pantry_providers.dart` (2 providers: pantryItems, pantrySuggestions)
- `recipes_providers.dart` (1 provider: recipes)
- `meal_planner_providers.dart` (1 provider: mealPlans)
- `settings_providers.dart` (4 providers: userProfile, monthlyBudget, userStats, voiceInput)
- `backup_providers.dart` (1 provider: backup)
- `preferences_providers.dart` (4 providers: darkMode, locale, themeColor, onboarding)
- `firebase_providers.dart` (1 provider: firestoreService)
- `monetization_providers.dart` (2 providers: revenuecat, premium)

**Removidos/Fundidos:**
- `dark_mode_provider`, `locale_provider`, `theme_color_provider`, `onboarding_provider` → `preferences_providers.dart`
- `ai_service_provider`, `ai_config_provider`, `ai_usage_provider`, `api_key_provider` → `ai_config_providers.dart`
- `app_review_service_provider`, `update_service_provider` → `data/datasources/` (não precisam de provider próprio)

## Camadas e Dependências

```
app/ (screens, providers, widgets específicos)
  ↓ depende de
domain/ (entidades, interfaces)
  ↑ implementado por
data/ (models, datasources, repositories_impl)
  ↓ usa
core/ (tema, utils, constants, widgets globais)
```

- `domain/` **não pode importar** Flutter, Firebase, Riverpod
- `data/` **não pode importar** widgets ou screens
- `app/` importa `domain/`, `data/`, `core/`
- `core/` não importa nada do projeto

## Metodologia: TDD (Test-Driven Development)

Todo o código novo ou refatorado será guiado por TDD no ciclo **Red → Green → Refactor**:

1. **Red** — Escrever o teste que falha (antes de qualquer código de produção)
2. **Green** — Escrever o código mínimo para passar no teste
3. **Refactor** — Melhorar o código mantendo os testes verdes

### Regras de TDD para este projeto

| Regra | Descrição |
|---|---|
| Testes primeiro | Nenhum arquivo de produção é criado sem seu teste correspondente |
| Commits atômicos | Cada ciclo Red-Green-Refactor é um commit separado |
| 100% contínuo | `flutter test --coverage` roda após cada ciclo, cobertura nunca cai |
| Testes falhando bloqueiam PR | CI falha se qualquer teste não passar |
| Sem débito técnico de teste | Se um arquivo existente não tem teste, escrever teste ANTES de tocar no arquivo |

### Ciclo TDD para cada fase

```
Fase 1 (Core + Data + Domain):
  Para cada entidade/model:
    1. Escrever test → falha (Red)
    2. Criar entidade/model mínimo → passa (Green)
    3. Refatorar (extrair, renomear, limpar) → testes ainda passam (Refactor)

Fase 2 (Features):
  Para cada widget/provider/screen:
    1. Escrever widget/provider test → falha (Red)
    2. Criar widget/provider mínimo → passa (Green)
    3. Refatorar → testes ainda passam (Refactor)

Fase 3 (Integration):
  Escrever integration tests primeiro (Red)
  Implementar suporte a Firebase Emulator (Green)
  Refatorar (Refactor)
```

## Estratégia de Testes

**Meta:** 100% de cobertura em todo `lib/` (excluindo `.g.dart`, `generated/`, e arquivos de coverage-ignore já definidos no AGENTS.md).

### Tipos de Teste

#### 1. Unit Tests (entidades, providers, datasources, repositories)

Testam lógica pura, regras de negócio e transformações de dados. Rápidos, sem UI.

| Camada | O que testar | Ferramenta |
|---|---|---|
| `domain/entities/` | Regras de negócio, validações, factories | `test` puro |
| `data/models/` | `fromJson` / `toJson`, `toEntity`, `fromEntity` | `test` puro |
| `data/datasources/` | CRUD, queries, tratamento de erros | `fake_cloud_firestore`, `MockFirebaseAuth` |
| `data/repositories/` | Orquestração de datasources, regras combinadas | Fakes + Mocks |
| `app/*/providers/` | Estado, transições, `ref.invalidate`, gerenciamento | `ProviderContainer` + Fakes |
| `core/utils/` | Formatadores, extensões, logger | `test` puro |
| `core/constants/` | Dados estáticos, validação de integridade | `test` puro |

**Padrão:** 1 arquivo de teste por arquivo de produção. `shopping_item.dart` → `shopping_item_test.dart`.

#### 2. Widget Tests (componentes e telas)

Testam renderização, interações (tap, scroll, input) e navegação.

| Componente | O que testar |
|---|---|
| `app/lists/widgets/shopping_item_tile.dart` | Renderização do item, checkbox (toggle purchased), Dismissible (swipe), ícone de quantidade |
| `app/lists/widgets/list_body.dart` | Lista com itens, lista vazia, filtro, drag-reorder |
| `app/lists/widgets/quick_add_bar.dart` | Input de texto, autocomplete, submit |
| `app/lists/widgets/list_app_bar.dart` | Título, PopupMenuButton, ações |
| `app/lists/screens/list_screen.dart` | Tela completa com integração aos providers |
| `app/ai/widgets/chat_panel.dart` | Container do chat |
| `app/ai/widgets/chat_message_list.dart` | Lista de mensagens, vazia, scrolling |
| `app/ai/widgets/chat_input_bar.dart` | Input + botão enviar, gravação de áudio |
| `app/ai/widgets/chat_bubble.dart` | Renderização de mensagem (texto, markdown, tool call) |
| `app/ai/screens/ai_home_screen.dart` | Tela inicial com estado e navegação |
| `core/widgets/premium_gate.dart` | Bloqueio de conteúdo não-premium |
| `core/widgets/empty_state.dart` | Renderização com diferentes ícones/textos |

**Setup:** Usar `wrapWithProviders()` helper (atualizar ambos `test/helpers/test_widgets.dart` e `test/widgets/widgets_test.dart`).

#### 3. Golden Tests (regressão visual)

Capturam screenshots dos widgets para detectar mudanças visuais não-intencionais.

| Componente | Variações |
|---|---|
| `shopping_item_tile` | Normal, comprado, com quantidade, unchecked, dark mode |
| `chat_bubble` | User message, AI message, streaming, com tool call, erro |
| `empty_state` | Com/sem ícone, com/sem subtítulo, dark mode |
| `list_body` | Com 1 item, 10 itens, vazio, filtrado |
| `premium_gate` | Bloqueado, liberado |


**Setup:** `flutter test --update-goldens` para gerar, CI para comparar. Manter em `test/goldens/`.

#### 4. Integration Tests (fluxos completos)

Testam o app rodando de ponta a ponta com Firebase Emulator.

| Fluxo | Descrição |
|---|---|
| **Criar lista + adicionar item** | Navegação → criar lista → adicionar item → marcar comprado → remover |
| **Chat AI básico** | Abrir chat → enviar mensagem → receber resposta com tool call |
| **Dispensa** | Navegar dispensa → adicionar item → consumir → ver histórico |
| **Premium** | Navegar paywall → simular compra → feature liberada |
| **Compartilhar por código** | Criar lista → gerar código → entrar com outro usuário |
| **Onboarding** | Primeiro acesso → onboarding → criar lista |

**Nota:** Integration tests atuais estão quebrados (`integration_test/app_test.dart`). Reescrever do zero usando Firebase Emulator.

### Estrutura de Diretórios de Teste

```
test/
├── core/
│   ├── theme/app_theme_test.dart
│   └── utils/
│       ├── formatters_test.dart
│       ├── extensions_test.dart
│       └── logger_test.dart
│
├── domain/
│   └── entities/
│       ├── shopping_list_test.dart
│       ├── shopping_item_test.dart
│       ├── category_test.dart
│       ├── unit_test.dart
│       ├── pantry_item_test.dart
│       ├── recipe_test.dart
│       ├── meal_plan_test.dart
│       └── user_profile_test.dart
│
├── data/
│   ├── models/
│   │   ├── shopping_list_model_test.dart
│   │   ├── shopping_item_model_test.dart
│   │   ├── pantry_item_model_test.dart
│   │   ├── recipe_model_test.dart
│   │   ├── meal_plan_model_test.dart
│   │   ├── user_profile_model_test.dart
│   │   └── chat_message_model_test.dart
│   ├── datasources/
│   │   ├── firestore/
│   │   │   ├── firestore_list_ds_test.dart
│   │   │   ├── firestore_item_ds_test.dart
│   │   │   ├── firestore_pantry_ds_test.dart
│   │   │   ├── firestore_user_ds_test.dart
│   │   │   └── firestore_chat_ds_test.dart
│   │   └── open_code_go_datasource_test.dart
│   └── repositories/
│       ├── list_repository_test.dart
│       ├── item_repository_test.dart
│       ├── pantry_repository_test.dart
│       ├── chat_repository_test.dart
│       ├── auth_repository_test.dart
│       └── user_repository_test.dart
│
├── app/
│   ├── lists/
│   │   ├── providers/list_providers_test.dart
│   │   ├── screens/list_screen_test.dart
│   │   └── widgets/
│   │       ├── shopping_item_tile_test.dart
│   │       ├── list_body_test.dart
│   │       ├── quick_add_bar_test.dart
│   │       ├── list_app_bar_test.dart
│   │       ├── create_list_dialog_test.dart
│   │       ├── add_item_dialog_test.dart
│   │       ├── edit_item_dialog_test.dart
│   │       ├── filter_bar_test.dart
│   │       └── budget_dialog_test.dart
│   │
│   ├── ai/
│   │   ├── providers/
│   │   │   ├── chat_providers_test.dart
│   │   │   └── ai_config_providers_test.dart
│   │   ├── screens/
│   │   │   ├── ai_home_screen_test.dart
│   │   │   └── chat_screen_test.dart
│   │   ├── widgets/
│   │   │   ├── chat_panel_test.dart
│   │   │   ├── chat_message_list_test.dart
│   │   │   ├── chat_input_bar_test.dart
│   │   │   └── chat_bubble_test.dart
│   │   └── agent/
│   │       ├── tools/
│   │       │   ├── list_tools_test.dart
│   │       │   ├── item_tools_test.dart
│   │       │   ├── pantry_tools_test.dart
│   │       │   ├── budget_tools_test.dart
│   │       │   ├── share_tools_test.dart
│   │       │   └── config_tools_test.dart
│   │       └── executors/
│   │           ├── tool_executor_test.dart
│   │           ├── list_executor_test.dart
│   │           ├── item_executor_test.dart
│   │           ├── pantry_executor_test.dart
│   │           ├── budget_executor_test.dart
│   │           ├── share_executor_test.dart
│   │           └── config_executor_test.dart
│   │
│   ├── pantry/
│   │   ├── providers/pantry_providers_test.dart
│   │   ├── screens/pantry_screen_test.dart
│   │   └── widgets/add_pantry_item_dialog_test.dart
│   │
│   ├── recipes/
│   │   ├── providers/recipes_providers_test.dart
│   │   ├── screens/recipes_screen_test.dart
│   │   └── widgets/add_recipe_dialog_test.dart
│   │
│   ├── meal_planner/
│   │   ├── providers/meal_planner_providers_test.dart
│   │   └── screens/meal_planner_screen_test.dart
│   │
│   ├── settings/
│   │   ├── providers/
│   │   │   ├── settings_providers_test.dart
│   │   │   └── backup_providers_test.dart
│   │   └── screens/
│   │       ├── settings_screen_test.dart
│   │       ├── user_profile_screen_test.dart
│   │       ├── theme_selection_screen_test.dart
│   │       ├── manage_categories_screen_test.dart
│   │       ├── backup_screen_test.dart
│   │       ├── budget_dashboard_screen_test.dart
│   │       └── achievements_screen_test.dart
│   │
│   ├── auth/
│   │   ├── providers/auth_providers_test.dart
│   │   └── screens/auth_screen_test.dart
│   │
│   ├── onboarding/
│   │   ├── providers/onboarding_providers_test.dart
│   │   └── screens/onboarding_screen_test.dart
│   │
│   └── app_test.dart                   # Teste de integração MyApp + MainShell
│
├── golden/                              # Referências golden
│   └── widgets/
│       ├── shopping_item_tile.normal.png
│       ├── shopping_item_tile.purchased.png
│       ├── chat_bubble.user.png
│       ├── chat_bubble.ai.png
│       ├── empty_state.default.png
│       └── premium_gate.locked.png
│
├── integration_test/                    # Fluxos E2E com Firebase Emulator
│   ├── create_list_flow_test.dart
│   ├── ai_chat_flow_test.dart
│   ├── pantry_flow_test.dart
│   ├── premium_flow_test.dart
│   ├── share_flow_test.dart
│   └── onboarding_flow_test.dart
│
├── helpers/                             # Fakes e mocks compartilhados
│   ├── fake_storage_backend.dart
│   ├── fake_revenuecat_service.dart
│   ├── fake_ai_service.dart
│   ├── fake_ai_usage_state.dart
│   └── test_widgets.dart                # wrapWithProviders()
│
├── test_layout_test.dart                # Mantido como está
└── widget_test.dart                     # Mantido como está (smoke test)
```

### Regras TDD para 100% de Cobertura

1. **Cada arquivo em `lib/**/*.dart`** (exceto `.g.dart`, `generated/`, coverage-ignore) deve ter pelo menos 1 arquivo de teste correspondente
2. **Exclusões permitidas** (mantidas do AGENTS.md atual):
   - `main.dart` (coverage:ignore-start/end)
   - `*_provider.dart` para firestore, revenuecat, analytics services
   - `revenuecat_service_impl.dart`
   - `analytics_service.dart` (quando não injetável)
   - `PaywallScreen`, `AuthScreen`, `AuthService`
   - `FirestoreService` constructor fallbacks
3. **Novas exclusões mínimas**: A nova arquitetura reduz a necessidade de exclusões. Idealmente 0 exclusões em `domain/` e `data/repositories/`.
4. **Cobertura de branches**: Buscar 100% de branch coverage em `domain/entities/` (regras de negócio).
5. **Verificação**: `flutter test --coverage` + script awk para validar 100% (já existente no CI).

### Planejamento de Testes por Fase

**Fase 1 (Estrutura + Core + Data):**
- Escrever testes para `domain/entities/` (regras de negócio puras)
- Escrever testes para `data/models/` (serialização)
- Escrever testes para `core/utils/` (formatadores, extensões)
- Adaptar `test/helpers/` para nova estrutura

**Fase 2 (Features):**
- Para CADA novo arquivo criado, escrever teste correspondente
- Widget tests para cada widget novo
- Provider tests para cada provider novo
- Golden tests para componentes visuais críticos
- Manter 100% desde o início (não acumular débito)

**Fase 3 (Limpeza + Testes Finais):**
- Integration tests com Firebase Emulator
- Verificar cobertura final com CI
- Remover testes antigos que não se encaixam na nova estrutura

## Roadmap de Migração

### Fase 1: Estrutura + Core + Data + Domain (TDD)

Para cada item abaixo: **Red (teste) → Green (código mínimo) → Refactor → `flutter test --coverage`**

1. Criar diretórios vazios da nova estrutura
2. [TDD] Escrever testes para `domain/entities/` → criar entidades puras
3. [TDD] Escrever testes para `data/models/` → criar DTOs com fromJson/toJson
4. [TDD] Escrever testes para `core/utils/` → criar formatadores, extensões, logger
5. Copiar theme/, constants/ para `core/` (sem TDD, é movimentação pura)
6. [TDD] Escrever interfaces em `domain/repositories/` + testes
7. Copiar services/ para `data/datasources/` (movimentação com adaptação)
8. [TDD] Escrever testes para datasources → implementar/adaptar
9. Adicionar redirects nos arquivos originais
10. `flutter analyze --fatal-infos` + `flutter test --coverage` (100%)

### Fase 2: Features + Feature Tests (TDD)

Para cada item abaixo: **Red (teste) → Green (código mínimo) → Refactor → `flutter test --coverage`**

11. [TDD] Mover agent/ para `app/ai/agent/` e quebrar tool.dart → testes para cada tool
12. [TDD] Quebrar tool_executor.dart → testes para cada executor
13. [TDD] Criar `app/lists/` e quebrar home_screen.dart → widget tests para cada parte
14. [TDD] Criar list_providers consolidado → provider tests
15. [TDD] Criar `app/ai/` e quebrar ai_chat_panel.dart → widget tests
16. [TDD] Quebrar chat_provider.dart → provider tests
17. [TDD] Consolidar providers (56 → ~26) → provider tests para cada consolidado
18. [TDD] Criar demais features (pantry, recipes, meal_planner, settings, auth, onboarding)
19. [TDD] Widget tests + provider tests + screen tests para cada feature
20. Extrair widgets para `core/widgets/`
21. [TDD] Golden tests para componentes visuais críticos
22. `flutter analyze --fatal-infos` + `flutter test --coverage` (100%)

### Fase 3: Limpeza + Testes Finais (TDD)

23. [TDD] Escrever integration tests com Firebase Emulator (6 fluxos) → implementar suporte
24. Reorganizar `test/` espelhando `lib/` (remover arquivos de teste antigos)
25. Remover arquivos velhos e redirects
26. `flutter analyze --fatal-infos` limpo
27. `flutter test --coverage` com 100%
28. `dart run build_runner build --delete-conflicting-outputs`
29. `custom_lints` compilando limpo: `cd custom_lints && dart analyze lib/`

## Riscos e Mitigações

| Risco | Mitigação |
|---|---|
| Quebrar imports durante a migração | Fase 1 mantém arquivos originais como proxies. Remoção só na Fase 3 |
| Perder cobertura de testes | Manter 100% como gate. CI bloqueia se cair |
| Riverpod codegen quebrar | Executar build_runner no final de cada fase |
| Conflitos com branch principal | Trabalhar em branch separada, commits atômicos por fase |
| Tamanho do PR | Cada fase é um PR separado para facilitar review |
