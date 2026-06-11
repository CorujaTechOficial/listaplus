# Onboarding Alta Conversão — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Redesenhar o fluxo de onboarding do KipiList em 7 passos para maximizar conversão no hard paywall com 7 dias de trial, usando sunk cost, micro-commitments e personalização progressiva.

**Architecture:** Cada passo é um widget de slide independente orchestrado pelo `OnboardingScreen`. O modelo `UserPreferences` é expandido para capturar categoria, tamanho do grupo e objetivos. Os dados fluem do passo 3→4→7 via `OnboardingData` provider (Riverpod keepAlive).

**Tech Stack:** Flutter, Riverpod 3.x com codegen, flutter_animate, RevenueCat (purchases_flutter), AppLocalizations (flutter gen-l10n)

---

## Mapa de Arquivos

| Arquivo | Ação |
|---|---|
| `lib/app/onboarding/models/user_preferences.dart` | Modificar — adicionar campos |
| `lib/app/onboarding/providers/onboarding_data_provider.dart` | Modificar — novos métodos |
| `lib/app/onboarding/screens/onboarding_screen.dart` | Modificar — novo fluxo 7 passos |
| `lib/app/onboarding/screens/onboarding_slide_hook.dart` | Criar — tela animada 3,5s |
| `lib/app/onboarding/screens/onboarding_slide_welcome_login.dart` | Modificar — ajuste de strings |
| `lib/app/onboarding/screens/onboarding_slide_personalization.dart` | Modificar — chips categoria + grupo |
| `lib/app/onboarding/screens/onboarding_ai_chat.dart` | Modificar — quick-reply buttons |
| `lib/app/onboarding/screens/onboarding_slide_commitments.dart` | Criar — micro-commitments |
| `lib/app/onboarding/screens/onboarding_slide_plan_loading.dart` | Criar — loading + prova social |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | Modificar — headline dinâmico + depoimento + stagger |
| `lib/l10n/app_pt.arb` | Modificar — novas strings |
| `lib/l10n/app_en.arb` | Modificar — novas strings |

---

## Task 1: Expandir UserPreferences e OnboardingData

**Files:**
- Modify: `lib/app/onboarding/models/user_preferences.dart`
- Modify: `lib/app/onboarding/providers/onboarding_data_provider.dart`

- [ ] **Step 1: Atualizar UserPreferences**

Substituir o conteúdo de `lib/app/onboarding/models/user_preferences.dart` por:

```dart
class UserPreferences {
  const UserPreferences({
    this.displayName = '',
    this.favoriteFood = '',
    this.shoppingCategory = '',
    this.householdSize = '',
    this.goals = const [],
  });

  final String displayName;
  final String favoriteFood;
  final String shoppingCategory;
  final String householdSize;
  final List<String> goals;

  UserPreferences copyWith({
    String? displayName,
    String? favoriteFood,
    String? shoppingCategory,
    String? householdSize,
    List<String>? goals,
  }) {
    return UserPreferences(
      displayName: displayName ?? this.displayName,
      favoriteFood: favoriteFood ?? this.favoriteFood,
      shoppingCategory: shoppingCategory ?? this.shoppingCategory,
      householdSize: householdSize ?? this.householdSize,
      goals: goals ?? this.goals,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'favoriteFood': favoriteFood,
      'shoppingCategory': shoppingCategory,
      'householdSize': householdSize,
      'goals': goals,
    };
  }
}
```

- [ ] **Step 2: Atualizar OnboardingData provider**

Substituir o conteúdo de `lib/app/onboarding/providers/onboarding_data_provider.dart` por:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/user_preferences.dart';

part 'onboarding_data_provider.g.dart';

@Riverpod(keepAlive: true)
class OnboardingData extends _$OnboardingData {
  @override
  UserPreferences build() {
    return const UserPreferences();
  }

  void updateDisplayName(String name) {
    state = state.copyWith(displayName: name);
  }

  void updateFavoriteFood(String food) {
    state = state.copyWith(favoriteFood: food);
  }

  void updateShoppingCategory(String category) {
    state = state.copyWith(shoppingCategory: category);
  }

  void updateHouseholdSize(String size) {
    state = state.copyWith(householdSize: size);
  }

  void updateGoals(List<String> goals) {
    state = state.copyWith(goals: goals);
  }
}
```

- [ ] **Step 3: Rodar build_runner**

```bash
dart run build_runner build --delete-conflicting-outputs
```

Esperado: sem erros, `onboarding_data_provider.g.dart` regenerado.

- [ ] **Step 4: Commit**

```bash
git add lib/app/onboarding/models/user_preferences.dart lib/app/onboarding/providers/onboarding_data_provider.dart lib/app/onboarding/providers/onboarding_data_provider.g.dart
git commit -m "feat(onboarding): expand UserPreferences with category, householdSize, goals"
```

---

## Task 2: Adicionar strings ARB (PT + EN)

**Files:**
- Modify: `lib/l10n/app_pt.arb`
- Modify: `lib/l10n/app_en.arb`

- [ ] **Step 1: Adicionar strings em app_pt.arb**

Adicionar as seguintes entradas ao `lib/l10n/app_pt.arb` (antes do `}`final):

```json
  "onboardingHookHeadline": "Sua lista de compras com inteligência artificial",
  "@onboardingHookHeadline": {},

  "onboardingLoginHeadline": "Entre em 1 segundo",
  "@onboardingLoginHeadline": {},

  "onboardingLoginSubtitle": "Suas listas ficam salvas e sincronizadas",
  "@onboardingLoginSubtitle": {},

  "onboardingPersonalizationNameLabel": "Como posso te chamar?",
  "@onboardingPersonalizationNameLabel": {},

  "onboardingPersonalizationNameHint": "Seu nome (opcional)",
  "@onboardingPersonalizationNameHint": {},

  "onboardingPersonalizationCategoryTitle": "O que você organiza com mais frequência?",
  "@onboardingPersonalizationCategoryTitle": {},

  "onboardingPersonalizationGroupTitle": "Você compra sozinho ou em grupo?",
  "@onboardingPersonalizationGroupTitle": {},

  "onboardingCategoryGrocery": "🛒 Mercado",
  "@onboardingCategoryGrocery": {},

  "onboardingCategoryPharmacy": "💊 Farmácia",
  "@onboardingCategoryPharmacy": {},

  "onboardingCategoryRecipes": "🍽️ Receitas",
  "@onboardingCategoryRecipes": {},

  "onboardingCategoryHome": "🏠 Casa",
  "@onboardingCategoryHome": {},

  "onboardingCategoryPet": "🐾 Pet",
  "@onboardingCategoryPet": {},

  "onboardingGroupSolo": "👤 Só eu",
  "@onboardingGroupSolo": {},

  "onboardingGroupCouple": "👥 Com alguém",
  "@onboardingGroupCouple": {},

  "onboardingGroupFamily": "👨‍👩‍👧 Família",
  "@onboardingGroupFamily": {},

  "onboardingAiDemoGreeting": "Oi {name}! Vi que você organiza {category} 😊",
  "@onboardingAiDemoGreeting": {
    "placeholders": {
      "name": {"type": "String"},
      "category": {"type": "String"}
    }
  },

  "onboardingAiDemoGreetingNoName": "Oi! Vi que você organiza {category} 😊",
  "@onboardingAiDemoGreetingNoName": {
    "placeholders": {
      "category": {"type": "String"}
    }
  },

  "onboardingAiDemoOffer": "Quer que eu monte uma lista agora?",
  "@onboardingAiDemoOffer": {},

  "onboardingAiDemoYes": "✅ Sim, monta pra mim!",
  "@onboardingAiDemoYes": {},

  "onboardingAiDemoChange": "🔄 Outra categoria",
  "@onboardingAiDemoChange": {},

  "onboardingAiDemoReaction": "Pronto! Criei {count} itens para você 🎉",
  "@onboardingAiDemoReaction": {
    "placeholders": {
      "count": {"type": "int"}
    }
  },

  "onboardingAiDemoContinue": "Incrível! Quero mais →",
  "@onboardingAiDemoContinue": {},

  "onboardingCommitmentsTitle": "O que você quer conquistar?",
  "@onboardingCommitmentsTitle": {},

  "onboardingCommitmentsSubtitle": "Escolha tudo que se aplica a você",
  "@onboardingCommitmentsSubtitle": {},

  "onboardingGoalSaveMoney": "💰 Gastar menos no mercado",
  "@onboardingGoalSaveMoney": {},

  "onboardingGoalNeverForget": "✅ Nunca esquecer um item",
  "@onboardingGoalNeverForget": {},

  "onboardingGoalFaster": "⚡ Fazer compras mais rápido",
  "@onboardingGoalFaster": {},

  "onboardingGoalFamily": "👨‍👩‍👧 Organizar com a família",
  "@onboardingGoalFamily": {},

  "onboardingGoalRecipes": "🍽️ Planejar receitas da semana",
  "@onboardingGoalRecipes": {},

  "onboardingGoalPantry": "📦 Controlar o estoque em casa",
  "@onboardingGoalPantry": {},

  "onboardingLoadingTitle": "Montando seu plano...",
  "@onboardingLoadingTitle": {},

  "onboardingLoadingStep1": "Analisando suas preferências...",
  "@onboardingLoadingStep1": {},

  "onboardingLoadingStep2": "Configurando sua lista personalizada...",
  "@onboardingLoadingStep2": {},

  "onboardingLoadingStep3": "Seu plano está pronto! 🎉",
  "@onboardingLoadingStep3": {},

  "onboardingLoadingStat1Label": "Avaliação média",
  "@onboardingLoadingStat1Label": {},

  "onboardingLoadingStat2Label": "Listas criadas essa semana",
  "@onboardingLoadingStat2Label": {},

  "onboardingLoadingStat3Label": "Recomendam o app",
  "@onboardingLoadingStat3Label": {},

  "paywallGoalHeadlineSaveMoney": "{name}, você está a 7 dias de gastar menos nas compras",
  "@paywallGoalHeadlineSaveMoney": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineNeverForget": "{name}, você está a 7 dias de nunca mais esquecer um item",
  "@paywallGoalHeadlineNeverForget": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineFaster": "{name}, você está a 7 dias de fazer compras em metade do tempo",
  "@paywallGoalHeadlineFaster": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineFamily": "{name}, você está a 7 dias de organizar as compras de toda a família",
  "@paywallGoalHeadlineFamily": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineRecipes": "{name}, você está a 7 dias de planejar suas receitas automaticamente",
  "@paywallGoalHeadlineRecipes": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlinePantry": "{name}, você está a 7 dias de ter controle total do seu estoque",
  "@paywallGoalHeadlinePantry": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineNoNameSaveMoney": "Você está a 7 dias de gastar menos nas compras",
  "@paywallGoalHeadlineNoNameSaveMoney": {},

  "paywallGoalHeadlineNoNameNeverForget": "Você está a 7 dias de nunca mais esquecer um item",
  "@paywallGoalHeadlineNoNameNeverForget": {},

  "paywallGoalHeadlineNoNameFaster": "Você está a 7 dias de fazer compras em metade do tempo",
  "@paywallGoalHeadlineNoNameFaster": {},

  "paywallGoalHeadlineNoNameFamily": "Você está a 7 dias de organizar as compras de toda a família",
  "@paywallGoalHeadlineNoNameFamily": {},

  "paywallGoalHeadlineNoNameRecipes": "Você está a 7 dias de planejar suas receitas automaticamente",
  "@paywallGoalHeadlineNoNameRecipes": {},

  "paywallGoalHeadlineNoNamePantry": "Você está a 7 dias de ter controle total do seu estoque",
  "@paywallGoalHeadlineNoNamePantry": {},

  "paywallTestimonial": "\"Economizei R$180 no primeiro mês organizando melhor as compras\"",
  "@paywallTestimonial": {},

  "paywallTestimonialAuthor": "Ana R., São Paulo",
  "@paywallTestimonialAuthor": {},

  "paywallTrialDisclaimer": "Cancele quando quiser · Cobrado após {days} dias",
  "@paywallTrialDisclaimer": {
    "placeholders": {"days": {"type": "int"}}
  },

  "paywallSkipNow": "Agora não",
  "@paywallSkipNow": {}
```

- [ ] **Step 2: Adicionar strings em app_en.arb**

Adicionar as mesmas keys em `lib/l10n/app_en.arb` com traduções em inglês:

```json
  "onboardingHookHeadline": "Your shopping list with artificial intelligence",
  "@onboardingHookHeadline": {},

  "onboardingLoginHeadline": "Sign in in 1 second",
  "@onboardingLoginHeadline": {},

  "onboardingLoginSubtitle": "Your lists are saved and synced automatically",
  "@onboardingLoginSubtitle": {},

  "onboardingPersonalizationNameLabel": "What can I call you?",
  "@onboardingPersonalizationNameLabel": {},

  "onboardingPersonalizationNameHint": "Your name (optional)",
  "@onboardingPersonalizationNameHint": {},

  "onboardingPersonalizationCategoryTitle": "What do you organize most often?",
  "@onboardingPersonalizationCategoryTitle": {},

  "onboardingPersonalizationGroupTitle": "Do you shop alone or with others?",
  "@onboardingPersonalizationGroupTitle": {},

  "onboardingCategoryGrocery": "🛒 Grocery",
  "@onboardingCategoryGrocery": {},

  "onboardingCategoryPharmacy": "💊 Pharmacy",
  "@onboardingCategoryPharmacy": {},

  "onboardingCategoryRecipes": "🍽️ Recipes",
  "@onboardingCategoryRecipes": {},

  "onboardingCategoryHome": "🏠 Home",
  "@onboardingCategoryHome": {},

  "onboardingCategoryPet": "🐾 Pet",
  "@onboardingCategoryPet": {},

  "onboardingGroupSolo": "👤 Just me",
  "@onboardingGroupSolo": {},

  "onboardingGroupCouple": "👥 With someone",
  "@onboardingGroupCouple": {},

  "onboardingGroupFamily": "👨‍👩‍👧 Family",
  "@onboardingGroupFamily": {},

  "onboardingAiDemoGreeting": "Hi {name}! I see you organize {category} 😊",
  "@onboardingAiDemoGreeting": {
    "placeholders": {
      "name": {"type": "String"},
      "category": {"type": "String"}
    }
  },

  "onboardingAiDemoGreetingNoName": "Hi! I see you organize {category} 😊",
  "@onboardingAiDemoGreetingNoName": {
    "placeholders": {
      "category": {"type": "String"}
    }
  },

  "onboardingAiDemoOffer": "Want me to build a list right now?",
  "@onboardingAiDemoOffer": {},

  "onboardingAiDemoYes": "✅ Yes, build it for me!",
  "@onboardingAiDemoYes": {},

  "onboardingAiDemoChange": "🔄 Different category",
  "@onboardingAiDemoChange": {},

  "onboardingAiDemoReaction": "Done! I created {count} items for you 🎉",
  "@onboardingAiDemoReaction": {
    "placeholders": {
      "count": {"type": "int"}
    }
  },

  "onboardingAiDemoContinue": "Amazing! I want more →",
  "@onboardingAiDemoContinue": {},

  "onboardingCommitmentsTitle": "What do you want to achieve?",
  "@onboardingCommitmentsTitle": {},

  "onboardingCommitmentsSubtitle": "Choose everything that applies to you",
  "@onboardingCommitmentsSubtitle": {},

  "onboardingGoalSaveMoney": "💰 Spend less at the store",
  "@onboardingGoalSaveMoney": {},

  "onboardingGoalNeverForget": "✅ Never forget an item",
  "@onboardingGoalNeverForget": {},

  "onboardingGoalFaster": "⚡ Shop faster",
  "@onboardingGoalFaster": {},

  "onboardingGoalFamily": "👨‍👩‍👧 Organize with family",
  "@onboardingGoalFamily": {},

  "onboardingGoalRecipes": "🍽️ Plan weekly recipes",
  "@onboardingGoalRecipes": {},

  "onboardingGoalPantry": "📦 Track pantry stock",
  "@onboardingGoalPantry": {},

  "onboardingLoadingTitle": "Building your plan...",
  "@onboardingLoadingTitle": {},

  "onboardingLoadingStep1": "Analyzing your preferences...",
  "@onboardingLoadingStep1": {},

  "onboardingLoadingStep2": "Setting up your personalized list...",
  "@onboardingLoadingStep2": {},

  "onboardingLoadingStep3": "Your plan is ready! 🎉",
  "@onboardingLoadingStep3": {},

  "onboardingLoadingStat1Label": "Average rating",
  "@onboardingLoadingStat1Label": {},

  "onboardingLoadingStat2Label": "Lists created this week",
  "@onboardingLoadingStat2Label": {},

  "onboardingLoadingStat3Label": "Recommend the app",
  "@onboardingLoadingStat3Label": {},

  "paywallGoalHeadlineSaveMoney": "{name}, you're 7 days away from spending less on shopping",
  "@paywallGoalHeadlineSaveMoney": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineNeverForget": "{name}, you're 7 days away from never forgetting an item again",
  "@paywallGoalHeadlineNeverForget": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineFaster": "{name}, you're 7 days away from shopping in half the time",
  "@paywallGoalHeadlineFaster": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineFamily": "{name}, you're 7 days away from organizing the whole family's shopping",
  "@paywallGoalHeadlineFamily": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineRecipes": "{name}, you're 7 days away from planning your recipes automatically",
  "@paywallGoalHeadlineRecipes": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlinePantry": "{name}, you're 7 days away from full control of your pantry",
  "@paywallGoalHeadlinePantry": {
    "placeholders": {"name": {"type": "String"}}
  },

  "paywallGoalHeadlineNoNameSaveMoney": "You're 7 days away from spending less on shopping",
  "@paywallGoalHeadlineNoNameSaveMoney": {},

  "paywallGoalHeadlineNoNameNeverForget": "You're 7 days away from never forgetting an item again",
  "@paywallGoalHeadlineNoNameNeverForget": {},

  "paywallGoalHeadlineNoNameFaster": "You're 7 days away from shopping in half the time",
  "@paywallGoalHeadlineNoNameFaster": {},

  "paywallGoalHeadlineNoNameFamily": "You're 7 days away from organizing the whole family's shopping",
  "@paywallGoalHeadlineNoNameFamily": {},

  "paywallGoalHeadlineNoNameRecipes": "You're 7 days away from planning your recipes automatically",
  "@paywallGoalHeadlineNoNameRecipes": {},

  "paywallGoalHeadlineNoNamePantry": "You're 7 days away from full control of your pantry",
  "@paywallGoalHeadlineNoNamePantry": {},

  "paywallTestimonial": "\"I saved R$180 in the first month by better organizing my shopping\"",
  "@paywallTestimonial": {},

  "paywallTestimonialAuthor": "Ana R., São Paulo",
  "@paywallTestimonialAuthor": {},

  "paywallTrialDisclaimer": "Cancel anytime · Charged after {days} days",
  "@paywallTrialDisclaimer": {
    "placeholders": {"days": {"type": "int"}}
  },

  "paywallSkipNow": "Not now",
  "@paywallSkipNow": {}
```

- [ ] **Step 3: Rodar gen-l10n**

```bash
flutter gen-l10n
```

Esperado: sem erros, arquivos em `lib/generated/l10n/` atualizados.

- [ ] **Step 4: Commit**

```bash
git add lib/l10n/app_pt.arb lib/l10n/app_en.arb lib/generated/
git commit -m "feat(l10n): add onboarding high-conversion strings"
```

---

## Task 3: Criar OnboardingSlideHook (Tela 1)

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_hook.dart`

- [ ] **Step 1: Criar o arquivo**

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideHook extends StatefulWidget {
  const OnboardingSlideHook({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<OnboardingSlideHook> createState() => _OnboardingSlideHookState();
}

class _OnboardingSlideHookState extends State<OnboardingSlideHook> {
  static const _items = [
    '🥩 Frango grelhado',
    '🧀 Queijo mussarela',
    '🍅 Tomate cereja',
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(3500.ms, () {
      if (mounted) widget.onFinished();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.tertiary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/kipi/kipi_welcome.png',
                  height: 120,
                  filterQuality: FilterQuality.high,
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .scale(begin: const Offset(0.8, 0.8)),
                const SizedBox(height: Spacing.lg),
                Text(
                  l10n.onboardingHookHeadline,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .slideY(begin: 0.2, end: 0),
                const SizedBox(height: Spacing.xl),
                Container(
                  padding: const EdgeInsets.all(Spacing.md),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(25),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _items.asMap().entries.map((entry) {
                      final delay = (800 + entry.key * 400).ms;
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Spacing.xs,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: Spacing.sm),
                            Text(
                              entry.value,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                            .animate()
                            .fadeIn(delay: delay, duration: 400.ms)
                            .slideX(begin: -0.2, end: 0),
                      );
                    }).toList(),
                  ),
                )
                    .animate()
                    .fadeIn(delay: 600.ms, duration: 400.ms),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_hook.dart
```

Esperado: sem erros ou warnings.

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_hook.dart
git commit -m "feat(onboarding): add animated hook slide (step 1)"
```

---

## Task 4: Refatorar OnboardingSlidePersonalization (Tela 3)

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_slide_personalization.dart`

- [ ] **Step 1: Substituir o conteúdo pelo novo widget**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

class OnboardingSlidePersonalization extends ConsumerStatefulWidget {
  const OnboardingSlidePersonalization({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  ConsumerState<OnboardingSlidePersonalization> createState() =>
      _OnboardingSlidePersonalizationState();
}

class _OnboardingSlidePersonalizationState
    extends ConsumerState<OnboardingSlidePersonalization> {
  late final TextEditingController _nameController;
  String _selectedCategory = '';
  String _selectedGroup = '';

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingDataProvider);
    _nameController = TextEditingController(text: data.displayName);
    _selectedCategory = data.shoppingCategory;
    _selectedGroup = data.householdSize;
    _nameController.addListener(_onNameChanged);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onNameChanged() {
    ref
        .read(onboardingDataProvider.notifier)
        .updateDisplayName(_nameController.text.trim());
  }

  void _selectCategory(String category) {
    setState(() => _selectedCategory = category);
    ref.read(onboardingDataProvider.notifier).updateShoppingCategory(category);
  }

  void _selectGroup(String group) {
    setState(() => _selectedGroup = group);
    ref.read(onboardingDataProvider.notifier).updateHouseholdSize(group);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final categories = [
      (key: 'grocery', label: l10n.onboardingCategoryGrocery),
      (key: 'pharmacy', label: l10n.onboardingCategoryPharmacy),
      (key: 'recipes', label: l10n.onboardingCategoryRecipes),
      (key: 'home', label: l10n.onboardingCategoryHome),
      (key: 'pet', label: l10n.onboardingCategoryPet),
    ];

    final groups = [
      (key: 'solo', label: l10n.onboardingGroupSolo),
      (key: 'couple', label: l10n.onboardingGroupCouple),
      (key: 'family', label: l10n.onboardingGroupFamily),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(Spacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Spacing.lg),
                    Text(
                      l10n.onboardingPersonalizationNameLabel,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: l10n.onboardingPersonalizationNameHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationCategoryTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: categories.map((cat) {
                        final isSelected = _selectedCategory == cat.key;
                        return FilterChip(
                          label: Text(cat.label),
                          selected: isSelected,
                          onSelected: (_) => _selectCategory(cat.key),
                          selectedColor:
                              theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationGroupTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: groups.map((g) {
                        final isSelected = _selectedGroup == g.key;
                        return FilterChip(
                          label: Text(g.label),
                          selected: isSelected,
                          onSelected: (_) => _selectGroup(g.key),
                          selectedColor:
                              theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.lg),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: widget.onNext,
                  child: const Text('Continuar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_personalization.dart
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_personalization.dart
git commit -m "feat(onboarding): refactor personalization slide with category + group chips"
```

---

## Task 5: Refatorar OnboardingAiChat para quick-reply (Tela 4)

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_ai_chat.dart`

- [ ] **Step 1: Substituir o conteúdo**

```dart
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import '../providers/onboarding_data_provider.dart';

const _itemsByCategory = <String, List<String>>{
  'grocery': ['🥩 Frango', '🥛 Leite integral', '🧀 Queijo mussarela', '🍅 Tomate', '🥦 Brócolis', '🍚 Arroz'],
  'pharmacy': ['💊 Paracetamol', '🩹 Curativo', '🧴 Protetor solar', '💉 Vitamina C', '🌡️ Termômetro'],
  'recipes': ['🫒 Azeite extravirgem', '🧄 Alho', '🧅 Cebola', '🌿 Ervas frescas', '🍋 Limão', '🥚 Ovos'],
  'home': ['🧹 Vassoura', '🧽 Esponja', '🧴 Detergente', '🪣 Balde', '🧻 Papel toalha'],
  'pet': ['🐾 Ração premium', '🦴 Petisco', '🛁 Shampoo pet', '💊 Vermífugo', '🪮 Escova'],
};

const _defaultItems = ['🥩 Proteína', '🥦 Legumes', '🍚 Arroz', '🥚 Ovos', '🧴 Produtos de limpeza'];

class _ChatMessage {
  const _ChatMessage({required this.isUser, required this.text});
  final bool isUser;
  final String text;
}

enum _ChatStep { greeting, offered, generating, done }

class OnboardingAiChat extends ConsumerStatefulWidget {
  const OnboardingAiChat({
    super.key,
    required this.onFinished,
    required this.onSkipped,
  });

  final VoidCallback onFinished;
  final VoidCallback onSkipped;

  @override
  ConsumerState<OnboardingAiChat> createState() => _OnboardingAiChatState();
}

class _OnboardingAiChatState extends ConsumerState<OnboardingAiChat> {
  final _messages = <_ChatMessage>[];
  final _scrollController = ScrollController();
  bool _isAiTyping = false;
  _ChatStep _step = _ChatStep.greeting;
  bool _showCategoryPicker = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _startChat());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _startChat() async {
    final l10n = AppLocalizations.of(context)!;
    final data = ref.read(onboardingDataProvider);
    final name = data.displayName;
    final category = _categoryLabel(data.shoppingCategory, l10n);

    final greeting = name.isNotEmpty
        ? l10n.onboardingAiDemoGreeting(name, category)
        : l10n.onboardingAiDemoGreetingNoName(category);

    await _addAiMessage(greeting);
    await Future<void>.delayed(600.ms);
    if (!mounted) return;
    await _addAiMessage(l10n.onboardingAiDemoOffer);
    if (mounted) setState(() => _step = _ChatStep.offered);
  }

  String _categoryLabel(String key, AppLocalizations l10n) {
    return switch (key) {
      'grocery' => 'mercado',
      'pharmacy' => 'farmácia',
      'recipes' => 'receitas',
      'home' => 'casa',
      'pet' => 'pet',
      _ => 'compras',
    };
  }

  Future<void> _addAiMessage(String text) async {
    setState(() => _isAiTyping = true);
    await Future<void>.delayed(500.ms);
    if (!mounted) return;
    setState(() {
      _messages.add(_ChatMessage(isUser: false, text: text));
      _isAiTyping = false;
    });
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: DurationTokens.fast,
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _onYes() async {
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _step = _ChatStep.generating;
      _messages.add(const _ChatMessage(isUser: true, text: '✅ Sim, monta pra mim!'));
    });
    _scrollToBottom();

    final category = ref.read(onboardingDataProvider).shoppingCategory;
    final items = _itemsByCategory[category] ?? _defaultItems;

    setState(() => _isAiTyping = true);
    await Future<void>.delayed(800.ms);
    if (!mounted) return;
    setState(() => _isAiTyping = false);

    final buffer = StringBuffer();
    for (final item in items) {
      buffer.writeln('• $item');
      await Future<void>.delayed(200.ms);
      if (!mounted) return;
      setState(() {
        _messages.last = _ChatMessage(isUser: false, text: buffer.toString().trimRight());
      });
      _scrollToBottom();
    }

    await Future<void>.delayed(500.ms);
    if (!mounted) return;
    await _addAiMessage(l10n.onboardingAiDemoReaction(items.length));
    if (mounted) setState(() => _step = _ChatStep.done);
  }

  void _onChangeCategory() {
    setState(() {
      _messages.add(const _ChatMessage(isUser: true, text: '🔄 Outra categoria'));
      _showCategoryPicker = true;
      _step = _ChatStep.greeting;
    });
  }

  Future<void> _onCategorySelected(String key) async {
    ref.read(onboardingDataProvider.notifier).updateShoppingCategory(key);
    setState(() => _showCategoryPicker = false);

    final l10n = AppLocalizations.of(context)!;
    await _addAiMessage(l10n.onboardingAiDemoOffer);
    if (mounted) setState(() => _step = _ChatStep.offered);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Row(
            children: [
              const SizedBox(width: Spacing.md),
              Image.asset('assets/images/kipi/kipi_helper.png', height: 32),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  l10n.onboardingAiTitle,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: widget.onSkipped,
                child: Text(l10n.skip),
              ),
              const SizedBox(width: Spacing.sm),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.sm,
              ),
              itemCount: _messages.length + (_isAiTyping ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _messages.length && _isAiTyping) {
                  return _KipiTypingIndicator();
                }
                return _ChatBubble(message: _messages[index]);
              },
            ),
          ),
          if (_showCategoryPicker)
            _CategoryPicker(onSelected: _onCategorySelected)
          else
            _buildActionArea(theme, l10n),
        ],
      ),
    );
  }

  Widget _buildActionArea(ThemeData theme, AppLocalizations l10n) {
    if (_step == _ChatStep.offered) {
      return Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: _onChangeCategory,
                child: Text(l10n.onboardingAiDemoChange),
              ),
            ),
            const SizedBox(width: Spacing.sm),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: _onYes,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.premiumAmber,
                  foregroundColor: Colors.black,
                ),
                child: Text(l10n.onboardingAiDemoYes),
              ),
            ),
          ],
        ),
      );
    }

    if (_step == _ChatStep.done) {
      return Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: widget.onFinished,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.premiumAmber,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              l10n.onboardingAiDemoContinue,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    return const SizedBox(height: Spacing.md);
  }
}

class _CategoryPicker extends StatelessWidget {
  const _CategoryPicker({required this.onSelected});
  final void Function(String key) onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final items = [
      (key: 'grocery', label: l10n.onboardingCategoryGrocery),
      (key: 'pharmacy', label: l10n.onboardingCategoryPharmacy),
      (key: 'recipes', label: l10n.onboardingCategoryRecipes),
      (key: 'home', label: l10n.onboardingCategoryHome),
      (key: 'pet', label: l10n.onboardingCategoryPet),
    ];

    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      child: Wrap(
        spacing: Spacing.sm,
        runSpacing: Spacing.sm,
        children: items.map((item) => ActionChip(
          label: Text(item.label),
          onPressed: () => onSelected(item.key),
        )).toList(),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});
  final _ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (message.isUser) {
      return Padding(
        padding: const EdgeInsets.only(bottom: Spacing.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(Spacing.md),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20).copyWith(
                    bottomRight: const Radius.circular(4),
                  ),
                ),
                child: Text(
                  message.text,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ),
            const SizedBox(width: Spacing.xs),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: Spacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.premiumAmber.withAlpha(30),
            child: Image.asset('assets/images/kipi/kipi_helper.png', height: 18),
          ),
          const SizedBox(width: Spacing.xs),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(Spacing.md),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(20).copyWith(
                  bottomLeft: const Radius.circular(4),
                ),
              ),
              child: Text(
                message.text,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _KipiTypingIndicator extends StatefulWidget {
  @override
  State<_KipiTypingIndicator> createState() => _KipiTypingIndicatorState();
}

class _KipiTypingIndicatorState extends State<_KipiTypingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Spacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.premiumAmber.withAlpha(30),
            child: Image.asset('assets/images/kipi/kipi_helper.png', height: 18),
          ),
          const SizedBox(width: Spacing.xs),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(20).copyWith(
                bottomLeft: const Radius.circular(4),
              ),
            ),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, _) => Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(3, (i) {
                  final value = _controller.value * 2 * math.pi;
                  final phase = value + i * 2.0;
                  final scale = 0.5 + 0.5 * (1.0 + math.cos(phase)) / 2.0;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Transform.scale(
                      scale: scale,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onSurfaceVariant,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 2: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_ai_chat.dart
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_ai_chat.dart
git commit -m "feat(onboarding): refactor AI chat to quick-reply buttons, no keyboard input"
```

---

## Task 6: Criar OnboardingSlideCommitments (Tela 5)

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_commitments.dart`

- [ ] **Step 1: Criar o arquivo**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

class OnboardingSlideCommitments extends ConsumerStatefulWidget {
  const OnboardingSlideCommitments({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  ConsumerState<OnboardingSlideCommitments> createState() =>
      _OnboardingSlideCommitmentsState();
}

class _OnboardingSlideCommitmentsState
    extends ConsumerState<OnboardingSlideCommitments> {
  final Set<String> _selected = {};

  void _toggle(String key) {
    setState(() {
      if (_selected.contains(key)) {
        _selected.remove(key);
      } else {
        _selected.add(key);
      }
    });
    ref.read(onboardingDataProvider.notifier).updateGoals(_selected.toList());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final goals = [
      (key: 'saveMoney', label: l10n.onboardingGoalSaveMoney),
      (key: 'neverForget', label: l10n.onboardingGoalNeverForget),
      (key: 'faster', label: l10n.onboardingGoalFaster),
      (key: 'family', label: l10n.onboardingGoalFamily),
      (key: 'recipes', label: l10n.onboardingGoalRecipes),
      (key: 'pantry', label: l10n.onboardingGoalPantry),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Spacing.lg),
              Text(
                l10n.onboardingCommitmentsTitle,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.2, end: 0),
              const SizedBox(height: Spacing.xs),
              Text(
                l10n.onboardingCommitmentsSubtitle,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ).animate().fadeIn(delay: 100.ms, duration: 400.ms),
              const SizedBox(height: Spacing.xl),
              Expanded(
                child: Wrap(
                  spacing: Spacing.sm,
                  runSpacing: Spacing.sm,
                  children: goals.asMap().entries.map((entry) {
                    final key = entry.value.key;
                    final label = entry.value.label;
                    final isSelected = _selected.contains(key);
                    return FilterChip(
                      label: Text(
                        label,
                        style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.normal,
                        ),
                      ),
                      selected: isSelected,
                      onSelected: (_) => _toggle(key),
                      selectedColor: theme.colorScheme.primaryContainer,
                      checkmarkColor: theme.colorScheme.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.sm,
                        vertical: Spacing.xs,
                      ),
                    )
                        .animate()
                        .fadeIn(
                          delay: (200 + entry.key * 60).ms,
                          duration: 300.ms,
                        )
                        .scale(
                          begin: const Offset(0.9, 0.9),
                          delay: (200 + entry.key * 60).ms,
                          duration: 300.ms,
                        );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: _selected.isNotEmpty ? widget.onNext : null,
                  child: const Text('Esses são meus objetivos →'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_commitments.dart
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_commitments.dart
git commit -m "feat(onboarding): add micro-commitments slide (step 5)"
```

---

## Task 7: Criar OnboardingSlidePlanLoading (Tela 6)

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_plan_loading.dart`

- [ ] **Step 1: Criar o arquivo**

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanLoading extends StatefulWidget {
  const OnboardingSlidePlanLoading({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<OnboardingSlidePlanLoading> createState() =>
      _OnboardingSlidePlanLoadingState();
}

class _OnboardingSlidePlanLoadingState
    extends State<OnboardingSlidePlanLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _progressController;
  int _stepIndex = 0;
  Timer? _stepTimer;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    _progressController.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        widget.onFinished();
      }
    });

    _progressController.forward();

    _stepTimer = Timer.periodic(const Duration(milliseconds: 1300), (t) {
      if (!mounted) return;
      setState(() {
        _stepIndex = (_stepIndex + 1).clamp(0, 2);
      });
      if (_stepIndex == 2) t.cancel();
    });
  }

  @override
  void dispose() {
    _progressController.dispose();
    _stepTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final steps = [
      l10n.onboardingLoadingStep1,
      l10n.onboardingLoadingStep2,
      l10n.onboardingLoadingStep3,
    ];

    final stats = [
      (value: '⭐ 4,8', label: l10n.onboardingLoadingStat1Label),
      (value: '12.847', label: l10n.onboardingLoadingStat2Label),
      (value: '94%', label: l10n.onboardingLoadingStat3Label),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/kipi/kipi_welcome.png',
                height: 80,
                filterQuality: FilterQuality.high,
              ).animate().fadeIn(duration: 400.ms),
              const SizedBox(height: Spacing.xl),
              Text(
                l10n.onboardingLoadingTitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Spacing.lg),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: Text(
                  steps[_stepIndex],
                  key: ValueKey(_stepIndex),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: Spacing.lg),
              AnimatedBuilder(
                animation: _progressController,
                builder: (context, _) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: _progressController.value,
                    minHeight: 8,
                    backgroundColor:
                        theme.colorScheme.surfaceContainerHighest,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.xxl),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: stats.asMap().entries.map((entry) {
                  return _StatCard(
                    value: entry.value.value,
                    label: entry.value.label,
                    delay: (entry.key * 200).ms,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.value,
    required this.label,
    required this.delay,
  });

  final String value;
  final String label;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w900,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    )
        .animate()
        .fadeIn(delay: delay + 500.ms, duration: 400.ms)
        .slideY(begin: 0.3, end: 0, delay: delay + 500.ms, duration: 400.ms);
  }
}
```

- [ ] **Step 2: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_plan_loading.dart
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_plan_loading.dart
git commit -m "feat(onboarding): add plan loading slide with social proof (step 6)"
```

---

## Task 8: Atualizar OnboardingSlidePremium (Tela 7)

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_slide_premium.dart`

- [ ] **Step 1: Substituir `_buildHero` para usar headline dinâmico baseado em goals**

Localizar o método `_buildHero` e substituí-lo por:

```dart
String _goalHeadline(AppLocalizations l10n) {
  final data = ref.read(onboardingDataProvider);
  final name = data.displayName.trim();
  final goals = data.goals;
  final firstGoal = goals.isNotEmpty ? goals.first : '';
  final hasName = name.isNotEmpty;

  return switch (firstGoal) {
    'saveMoney' => hasName
        ? l10n.paywallGoalHeadlineSaveMoney(name)
        : l10n.paywallGoalHeadlineNoNameSaveMoney,
    'neverForget' => hasName
        ? l10n.paywallGoalHeadlineNeverForget(name)
        : l10n.paywallGoalHeadlineNoNameNeverForget,
    'faster' => hasName
        ? l10n.paywallGoalHeadlineFaster(name)
        : l10n.paywallGoalHeadlineNoNameFaster,
    'family' => hasName
        ? l10n.paywallGoalHeadlineFamily(name)
        : l10n.paywallGoalHeadlineNoNameFamily,
    'recipes' => hasName
        ? l10n.paywallGoalHeadlineRecipes(name)
        : l10n.paywallGoalHeadlineNoNameRecipes,
    'pantry' => hasName
        ? l10n.paywallGoalHeadlinePantry(name)
        : l10n.paywallGoalHeadlineNoNamePantry,
    _ => hasName
        ? l10n.paywallHeroSubtitlePersonalized(name)
        : l10n.paywallHeroSubtitle,
  };
}
```

No método `_buildHero`, substituir a linha que usa `l10n.paywallHeroHeadline` por `_goalHeadline(l10n)`.

- [ ] **Step 2: Adicionar stagger animation nas features**

No método `_buildBenefitCell`, envolver o `Row` retornado com:

```dart
.animate(delay: (PremiumFeature.values.indexOf(feature) * 50).ms)
.fadeIn(duration: 300.ms)
.slideX(begin: 0.1, end: 0)
```

- [ ] **Step 3: Adicionar depoimento abaixo do grid de features**

Após `_buildBenefits(theme, l10n)` no `build`, adicionar chamada para `_buildTestimonial(theme, l10n)`:

```dart
Widget _buildTestimonial(ThemeData theme, AppLocalizations l10n) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: Spacing.lg,
      vertical: Spacing.sm,
    ),
    child: Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outlineVariant,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 14)),
          const SizedBox(height: Spacing.xs),
          Text(
            l10n.paywallTestimonial,
            style: theme.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            l10n.paywallTestimonialAuthor,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    ),
  );
}
```

- [ ] **Step 4: Substituir skip button**

Localizar qualquer botão de skip existente no `build` e substituir por `TextButton` no `AppBar` da tela ou no topo:

```dart
// No início do Scaffold body, adicionar skip discreto no topo direito
Align(
  alignment: Alignment.topRight,
  child: SafeArea(
    child: Padding(
      padding: const EdgeInsets.only(right: Spacing.md, top: Spacing.xs),
      child: TextButton(
        onPressed: _skipOnboarding,
        child: Text(
          l10n.paywallSkipNow,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    ),
  ),
),
```

- [ ] **Step 5: Adicionar disclaimer do trial**

Abaixo do CTA principal, substituir o texto de segurança existente por:

```dart
Text(
  l10n.paywallTrialDisclaimer(
    _selectedPackage?.trialPeriodDays ?? 7,
  ),
  style: theme.textTheme.bodySmall?.copyWith(
    color: theme.colorScheme.onSurfaceVariant,
  ),
  textAlign: TextAlign.center,
),
```

- [ ] **Step 6: Verificar análise**

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_premium.dart
```

- [ ] **Step 7: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_premium.dart
git commit -m "feat(onboarding): personalized paywall headline, testimonial, stagger animation"
```

---

## Task 9: Orquestrar OnboardingScreen com novo fluxo de 7 passos

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_screen.dart`

- [ ] **Step 1: Substituir o conteúdo por**

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_hook.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_welcome_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_personalization.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_commitments.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_loading.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  bool _hasCompletedOnboarding = false;

  static const int _slideCount = 7;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNext() {
    if (_currentSlide < _slideCount - 1) {
      _pageController.animateToPage(
        _currentSlide + 1,
        duration: DurationTokens.fast,
        curve: Curves.easeOutCubic,
      );
    }
  }

  Future<void> _finishOnboarding() async {
    if (_hasCompletedOnboarding) return;
    _hasCompletedOnboarding = true;
    try {
      await ref.read(onboardingProvider.notifier).markAsSeen();
    } on Exception {
      // markAsSeen failure must not block navigation
    }
    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  void _handlePageChanged(int index) {
    setState(() => _currentSlide = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _handlePageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Step 1: Hook animado
          OnboardingSlideHook(onFinished: _goToNext),
          // Step 2: Login SSO
          OnboardingSlideWelcomeLogin(
            onLoggedIn: _goToNext,
            onSkipped: _goToNext,
          ),
          // Step 3: Personalização
          OnboardingSlidePersonalization(onNext: _goToNext),
          // Step 4: Demo AI com quick-reply
          OnboardingAiChat(
            onFinished: _goToNext,
            onSkipped: _goToNext,  // skip vai para próximo slide, não sai do app
          ),
          // Step 5: Micro-commitments
          OnboardingSlideCommitments(onNext: _goToNext),
          // Step 6: Loading + prova social
          OnboardingSlidePlanLoading(onFinished: _goToNext),
          // Step 7: Hard Paywall
          const OnboardingSlidePremium(),
        ],
      ),
    );
  }
}
```

- [ ] **Step 2: Verificar análise completa**

```bash
flutter analyze lib/app/onboarding/
```

Esperado: zero erros.

- [ ] **Step 3: Rodar build_runner se necessário**

```bash
dart run build_runner build --delete-conflicting-outputs
```

- [ ] **Step 4: Commit final**

```bash
git add lib/app/onboarding/screens/onboarding_screen.dart
git commit -m "feat(onboarding): orchestrate 7-step high-conversion flow"
```

---

## Task 10: Verificação final

- [ ] **Step 1: Análise completa do projeto**

```bash
flutter analyze --fatal-infos
```

Esperado: zero erros, zero warnings.

- [ ] **Step 2: Verificar que nenhum skip sai do app antes do paywall**

Auditar todos os `Navigator.of(context).pop()` nas telas de onboarding. Apenas `OnboardingSlidePremium._skipOnboarding()` e `_purchase()` devem chamar `pop()`. Todos os outros skips devem chamar `_goToNext()` ou equivalente que avança para o próximo slide.

- [ ] **Step 3: Commit final**

```bash
git add -A
git commit -m "feat(onboarding): complete 7-step high-conversion onboarding redesign"
```
