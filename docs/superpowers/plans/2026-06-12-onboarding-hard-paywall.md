# Novo Onboarding Quiz + Hard Paywall — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Substituir o onboarding atual por um quiz de investimento de 10 telas terminando em hard paywall (sem saída) + login pós-compra.

**Architecture:** `OnboardingScreen` orquestra um `PageView` de 11 páginas (hook, 5 quiz, prova social, loading, revelação, paywall hard, login). Respostas persistem no draft `OnboardingData` (SharedPreferences) e vão ao Firestore após login. `markAsSeen()` só dispara após compra/restore — `main.dart` já troca onboarding/app por esse flag, nenhuma mudança lá.

**Tech Stack:** Flutter, Riverpod 3 codegen, RevenueCat (`purchases_flutter`), flutter_animate, Firebase (Auth/Firestore/Analytics), l10n ARB (86 idiomas).

**Spec:** `docs/superpowers/specs/2026-06-12-onboarding-hard-paywall-design.md`

---

## Contexto essencial para quem nunca viu o repo

- **Gating:** `lib/main.dart:281-297` — `onboardingProvider` (`lib/core/providers/preferences_providers.dart`, classe `Onboarding`, método `markAsSeen()`) decide entre `_buildOnboardingShell` (home: `OnboardingScreen`) e `_buildMainShell`. Flipar o flag troca o shell. **Não tocar em main.dart.**
- **Draft:** `lib/app/onboarding/providers/onboarding_data_provider.dart` (`OnboardingData`, keepAlive, persiste `UserPreferences` em SharedPreferences key `onboarding_draft_v2`). `hydrate()` restaura, `updateCurrentStep(int)` salva o step, `clearDraft()` limpa.
- **RevenueCat:** `lib/services/revenuecat_service.dart` — `PaywallPackage` (tem `hasFreeTrial`, `trialPeriodDays`, `priceString`, `rawPackage?.packageType`), `RevenueCatService.getPaywallPackages()`, `.purchasePackage()`, `.restorePurchases()`, `.isEntitlementActive('kipilist_pro')`. Provider: `revenueCatServiceProvider` em `lib/core/providers/monetization_providers.dart`; `premiumProvider` é o gate de premium.
- **Auth:** `lib/services/auth_service.dart` — `signInWithGoogle()`, `signInWithApple()` (ambos fazem link de usuário anônimo). Provider `authServiceProvider` em `lib/core/providers/` (procurar com grep, provavelmente `auth_providers.dart` ou `firebase_providers.dart`).
- **Firestore:** `firestoreServiceProvider` (nullable) com `updateUserData(Map<String, dynamic>)` (`lib/services/firestore/firestore_user_mixin.dart:55`).
- **Analytics:** `analyticsServiceProvider` → `AnalyticsService` (`lib/services/analytics_service.dart`) — já tem `logOnboardingStarted/StepViewed/StepCompleted/Completed`, `logPaywallViewed/PurchaseCompleted/RestoreCompleted/Error`, `logEvent(name:, parameters:)`.
- **Tokens:** `package:shopping_list/theme/tokens.dart` re-exporta `lib/core/theme/tokens.dart` — `Spacing.xxs/xs/sm/md/lg/xl/xxl`, `DurationTokens.fast/normal`, `CornerRadius` (ver arquivo).
- **l10n:** toda string visível via `AppLocalizations.of(context)!`. Adicionar em `lib/l10n/app_en.arb`, rodar `flutter gen-l10n`. Tradução em massa fica para a Task 12 (scripts Python).
- **Comandos:** codegen `dart run build_runner build --delete-conflicting-outputs`; analyze `flutter analyze --fatal-infos`; testes `flutter test`.
- **Commits:** frequentes, conventional commits.

## File Structure

```
lib/app/onboarding/
  models/user_preferences.dart            # MODIFY: +4 campos quiz
  models/quiz_config.dart                 # CREATE: pergunta/opções tipadas
  providers/onboarding_data_provider.dart # MODIFY: +4 updaters
  screens/onboarding_screen.dart          # REWRITE: 11 páginas
  screens/onboarding_slide_hook.dart      # REWRITE
  screens/onboarding_slide_social_proof.dart # CREATE
  screens/onboarding_slide_plan_loading.dart # REWRITE
  screens/onboarding_slide_plan_reveal.dart  # CREATE
  screens/onboarding_slide_paywall.dart   # CREATE (hard)
  screens/onboarding_slide_login.dart     # REWRITE (pós-compra)
  widgets/quiz_slide.dart                 # CREATE: slide genérico de quiz
  widgets/onboarding_dots.dart            # DELETE (não usado no novo fluxo)
  [13 arquivos antigos]                   # DELETE (Task 11)
test/app/onboarding/
  models/user_preferences_test.dart       # MODIFY
  providers/onboarding_data_provider_test.dart # MODIFY
  widgets/quiz_slide_test.dart            # CREATE
  screens/onboarding_slide_paywall_test.dart # CREATE
  screens/onboarding_screen_test.dart     # CREATE
lib/l10n/app_en.arb                       # MODIFY: ~45 chaves
```

---

### Task 1: Campos de quiz em `UserPreferences`

**Files:**
- Modify: `lib/app/onboarding/models/user_preferences.dart`
- Test: `test/app/onboarding/models/user_preferences_test.dart`

- [ ] **Step 1: Teste falhando — roundtrip JSON dos novos campos**

Adicionar ao `main()` de `test/app/onboarding/models/user_preferences_test.dart`:

```dart
test('serializes and restores quiz fields', () {
  const prefs = UserPreferences(
    householdSize: 'family3to4',
    shoppingFrequency: 'weekly',
    mainPain: 'overspend',
    savingsGoal: 'save200',
    listMethod: 'paper',
  );
  final restored = UserPreferences.fromJson(prefs.toJson());
  expect(restored.shoppingFrequency, 'weekly');
  expect(restored.mainPain, 'overspend');
  expect(restored.savingsGoal, 'save200');
  expect(restored.listMethod, 'paper');
});

test('quiz fields default to empty', () {
  const prefs = UserPreferences();
  expect(prefs.shoppingFrequency, '');
  expect(prefs.mainPain, '');
  expect(prefs.savingsGoal, '');
  expect(prefs.listMethod, '');
});
```

- [ ] **Step 2: Rodar — deve falhar**

Run: `flutter test test/app/onboarding/models/user_preferences_test.dart`
Expected: FAIL — "No named parameter with the name 'shoppingFrequency'".

- [ ] **Step 3: Implementar**

Em `user_preferences.dart`, seguir o padrão exato do arquivo (construtor const, fromJson com `?? ''`, copyWith, toJson). Adicionar aos quatro lugares:

```dart
// construtor (novos parâmetros)
this.shoppingFrequency = '',
this.mainPain = '',
this.savingsGoal = '',
this.listMethod = '',

// fromJson
shoppingFrequency: json['shoppingFrequency'] as String? ?? '',
mainPain: json['mainPain'] as String? ?? '',
savingsGoal: json['savingsGoal'] as String? ?? '',
listMethod: json['listMethod'] as String? ?? '',

// campos
final String shoppingFrequency;
final String mainPain;
final String savingsGoal;
final String listMethod;

// copyWith (parâmetros + atribuições `?? this.x`)
String? shoppingFrequency,
String? mainPain,
String? savingsGoal,
String? listMethod,
...
shoppingFrequency: shoppingFrequency ?? this.shoppingFrequency,
mainPain: mainPain ?? this.mainPain,
savingsGoal: savingsGoal ?? this.savingsGoal,
listMethod: listMethod ?? this.listMethod,

// toJson
'shoppingFrequency': shoppingFrequency,
'mainPain': mainPain,
'savingsGoal': savingsGoal,
'listMethod': listMethod,
```

- [ ] **Step 4: Rodar — deve passar**

Run: `flutter test test/app/onboarding/models/user_preferences_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/models/user_preferences.dart test/app/onboarding/models/user_preferences_test.dart
git commit -m "feat(onboarding): add quiz fields to UserPreferences"
```

### Task 2: Updaters no `OnboardingData`

**Files:**
- Modify: `lib/app/onboarding/providers/onboarding_data_provider.dart`
- Test: `test/app/onboarding/providers/onboarding_data_provider_test.dart`

- [ ] **Step 1: Teste falhando**

Adicionar ao `main()` existente (já tem `setUp` com `SharedPreferences.setMockInitialValues`):

```dart
test('persists quiz answers and hydrates them', () async {
  final first = ProviderContainer();
  addTearDown(first.dispose);
  final notifier = first.read(onboardingDataProvider.notifier);

  notifier.updateShoppingFrequency('weekly');
  notifier.updateMainPain('overspend');
  notifier.updateSavingsGoal('save200');
  notifier.updateListMethod('paper');
  await notifier.flush();

  final second = ProviderContainer();
  addTearDown(second.dispose);
  await second.read(onboardingDataProvider.notifier).hydrate();
  final restored = second.read(onboardingDataProvider);
  expect(restored.shoppingFrequency, 'weekly');
  expect(restored.mainPain, 'overspend');
  expect(restored.savingsGoal, 'save200');
  expect(restored.listMethod, 'paper');
});
```

- [ ] **Step 2: Rodar — falha** (`updateShoppingFrequency` não existe)

Run: `flutter test test/app/onboarding/providers/onboarding_data_provider_test.dart`

- [ ] **Step 3: Implementar** — seguir padrão dos updaters existentes:

```dart
void updateShoppingFrequency(String value) {
  state = state.copyWith(shoppingFrequency: value);
  _persist();
}

void updateMainPain(String value) {
  state = state.copyWith(mainPain: value);
  _persist();
}

void updateSavingsGoal(String value) {
  state = state.copyWith(savingsGoal: value);
  _persist();
}

void updateListMethod(String value) {
  state = state.copyWith(listMethod: value);
  _persist();
}
```

- [ ] **Step 4: Rodar testes + codegen se necessário**

Run: `dart run build_runner build --delete-conflicting-outputs && flutter test test/app/onboarding/`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/providers/ test/app/onboarding/providers/
git commit -m "feat(onboarding): quiz answer updaters in OnboardingData"
```

### Task 3: Chaves l10n (inglês) + gen-l10n

**Files:**
- Modify: `lib/l10n/app_en.arb`

- [ ] **Step 1: Adicionar chaves** (antes do `}` final; placeholders no padrão ICU do arquivo). Reusar chaves de paywall existentes (`paywallTrialCta`, `paywallCtaUnlock`, `paywallCancelAnytime`, `paywallTrialDisclosureAnnual/Monthly`, `paywallBillingAnnual/Monthly`, `purchaseError`, `restoreError`, `paywallLoadingError`, `paywallRestore`, `onboardingProgress`). Novas:

```json
"obHookTitle": "Smarter shopping starts here",
"obHookSubtitle": "AI-powered lists that save you time and money, every single trip.",
"obHookSocial": "Trusted by thousands of shoppers worldwide",
"obHookCta": "Get Started",
"obQuizHouseholdTitle": "Who do you shop for?",
"obQuizHouseholdSolo": "Just me",
"obQuizHouseholdCouple": "Me and my partner",
"obQuizHouseholdFamilySmall": "Family of 3–4",
"obQuizHouseholdFamilyLarge": "Family of 5+",
"obQuizFrequencyTitle": "How often do you shop for groceries?",
"obQuizFrequencyDaily": "Almost every day",
"obQuizFrequencyWeekly": "Once a week",
"obQuizFrequencyBiweekly": "Every two weeks",
"obQuizFrequencyMonthly": "Big monthly haul",
"obQuizPainTitle": "What frustrates you most about shopping?",
"obQuizPainForget": "I always forget items",
"obQuizPainOverspend": "I spend more than planned",
"obQuizPainWaste": "Food goes to waste at home",
"obQuizPainTime": "It takes too much time",
"obQuizSavingsTitle": "How much would you like to save monthly?",
"obQuizSavingsSmall": "A little — every bit counts",
"obQuizSavingsMedium": "Around 10% of my grocery bill",
"obQuizSavingsLarge": "As much as possible",
"obQuizMethodTitle": "How do you make shopping lists today?",
"obQuizMethodPaper": "Pen and paper",
"obQuizMethodNotes": "Notes app",
"obQuizMethodMemory": "I keep it in my head",
"obQuizMethodNone": "I don't make lists",
"obSocialTitle": "You're in good company",
"obSocialSubtitle": "Shoppers like you are already saving with KipiList",
"obSocialQuote1": "I never forget anything anymore. The AI builds my list in seconds.",
"obSocialQuote2": "We cut our grocery bill noticeably in the first month.",
"obSocialQuote3": "Sharing the list with my partner ended our shopping chaos.",
"obLoadingTitle": "Building your personalized plan...",
"obLoadingStepProfile": "Adjusting for your household",
"obLoadingStepHabits": "Tuning to your shopping routine",
"obLoadingStepSavings": "Optimizing your savings strategy",
"obLoadingStepLists": "Preparing your smart lists",
"obRevealTitle": "Your plan is ready!",
"obRevealSubtitle": "Here's how KipiList will work for you",
"obRevealSavingsCaption": "Projected savings with KipiList",
"obRevealMonth": "Month {n}",
"@obRevealMonth": {"placeholders": {"n": {"type": "int"}}},
"obRevealFeatureAi": "AI builds and organizes your lists",
"obRevealFeatureBudget": "Spending tracked against your goal",
"obRevealFeaturePantry": "Pantry tracking cuts food waste",
"obRevealFeatureShare": "Real-time sharing with your household",
"obPaywallTitle": "Unlock your plan",
"obPaywallRetry": "Try again",
"obLoginTitle": "Save your plan",
"obLoginSubtitle": "Sign in so your lists sync across devices",
"obLoginGoogle": "Continue with Google",
"obLoginApple": "Continue with Apple",
"obLoginSkip": "Not now",
"obLoginError": "Sign-in failed. Try again or skip for now."
```

- [ ] **Step 2: Gerar e validar**

Run: `flutter gen-l10n && flutter analyze lib/l10n --no-fatal-infos`
Expected: sem erros; getters `obHookTitle` etc. disponíveis em `AppLocalizations`.

- [ ] **Step 3: Commit**

```bash
git add lib/l10n/app_en.arb lib/generated
git commit -m "feat(l10n): english keys for quiz onboarding and hard paywall"
```

### Task 4: `QuizConfig` + widget genérico `QuizSlide`

**Files:**
- Create: `lib/app/onboarding/models/quiz_config.dart`
- Create: `lib/app/onboarding/widgets/quiz_slide.dart`
- Test: `test/app/onboarding/widgets/quiz_slide_test.dart`

- [ ] **Step 1: Modelo**

```dart
// lib/app/onboarding/models/quiz_config.dart
import 'package:flutter/material.dart';

@immutable
class QuizOption {
  const QuizOption({required this.id, required this.emoji, required this.label});

  final String id;
  final String emoji;
  final String label;
}

@immutable
class QuizConfig {
  const QuizConfig({
    required this.title,
    required this.options,
    required this.selectedId,
    required this.onSelected,
  });

  final String title;
  final List<QuizOption> options;
  final String selectedId;
  final ValueChanged<String> onSelected;
}
```

- [ ] **Step 2: Teste falhando do widget**

```dart
// test/app/onboarding/widgets/quiz_slide_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/app/onboarding/widgets/quiz_slide.dart';

void main() {
  testWidgets('tapping an option fires onSelected with the option id', (tester) async {
    String? selected;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: QuizSlide(
            config: QuizConfig(
              title: 'Question?',
              options: const [
                QuizOption(id: 'a', emoji: '🛒', label: 'Option A'),
                QuizOption(id: 'b', emoji: '🥦', label: 'Option B'),
              ],
              selectedId: '',
              onSelected: (id) => selected = id,
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Option B'));
    await tester.pump();
    expect(selected, 'b');
  });
}
```

Run: `flutter test test/app/onboarding/widgets/quiz_slide_test.dart` — FAIL (arquivo não existe).

- [ ] **Step 3: Implementar widget**

```dart
// lib/app/onboarding/widgets/quiz_slide.dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/theme/tokens.dart';

class QuizSlide extends StatelessWidget {
  const QuizSlide({super.key, required this.config});

  final QuizConfig config;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              config.title,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(duration: DurationTokens.normal).slideY(begin: 0.1),
            const SizedBox(height: Spacing.xl),
            for (final (index, option) in config.options.indexed) ...[
              _OptionTile(
                option: option,
                selected: option.id == config.selectedId,
                onTap: () => config.onSelected(option.id),
              ).animate(delay: Duration(milliseconds: 60 * index)).fadeIn().slideY(begin: 0.15),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final QuizOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected ? scheme.primaryContainer : scheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
            vertical: Spacing.md,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected ? scheme.primary : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Text(option.emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  option.label,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (selected) Icon(Icons.check_circle_rounded, color: scheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}
```

Nota: se `CornerRadius.lg` (16) existir em `lib/core/theme/tokens.dart`, usar token no lugar do literal `16`.

- [ ] **Step 4: Rodar — PASS**

Run: `flutter test test/app/onboarding/widgets/quiz_slide_test.dart`

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/models/quiz_config.dart lib/app/onboarding/widgets/quiz_slide.dart test/app/onboarding/widgets/
git commit -m "feat(onboarding): generic QuizSlide widget"
```

### Task 5: Hook, prova social, loading e revelação

**Files:**
- Rewrite: `lib/app/onboarding/screens/onboarding_slide_hook.dart`
- Create: `lib/app/onboarding/screens/onboarding_slide_social_proof.dart`
- Rewrite: `lib/app/onboarding/screens/onboarding_slide_plan_loading.dart`
- Create: `lib/app/onboarding/screens/onboarding_slide_plan_reveal.dart`

Telas de apresentação — sem lógica de negócio, teste manual via `flutter run` na Task 10. TDD não se aplica a layout puro; o teste de navegação da Task 10 cobre a integração.

- [ ] **Step 1: Hook** — sobrescrever o arquivo inteiro:

```dart
// lib/app/onboarding/screens/onboarding_slide_hook.dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideHook extends StatelessWidget {
  const OnboardingSlideHook({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/kipi/kipi_welcome.png',
              height: 160,
              filterQuality: FilterQuality.high,
            ).animate().fadeIn(duration: DurationTokens.normal).scale(begin: const Offset(0.9, 0.9)),
            const SizedBox(height: Spacing.xl),
            Text(
              l10n.obHookTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
            ).animate(delay: 150.ms).fadeIn().slideY(begin: 0.15),
            const SizedBox(height: Spacing.sm),
            Text(
              l10n.obHookSubtitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ).animate(delay: 300.ms).fadeIn(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  5,
                  (_) => const Icon(Icons.star_rounded, color: Colors.amber, size: 20),
                ),
                const SizedBox(width: Spacing.xs),
                Flexible(
                  child: Text(l10n.obHookSocial, style: theme.textTheme.bodySmall),
                ),
              ],
            ).animate(delay: 450.ms).fadeIn(),
            const SizedBox(height: Spacing.md),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: Text(l10n.obHookCta),
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Prova social**

```dart
// lib/app/onboarding/screens/onboarding_slide_social_proof.dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideSocialProof extends StatelessWidget {
  const OnboardingSlideSocialProof({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final quotes = [l10n.obSocialQuote1, l10n.obSocialQuote2, l10n.obSocialQuote3];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              l10n.obSocialTitle,
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ).animate().fadeIn().slideY(begin: 0.1),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.obSocialSubtitle,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            for (final (index, quote) in quotes.indexed) ...[
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (_) => const Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                        ),
                      ),
                      const SizedBox(height: Spacing.xs),
                      Text(quote, style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ),
              ).animate(delay: Duration(milliseconds: 150 * index)).fadeIn().slideY(begin: 0.2),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(flex: 2),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: Text(MaterialLocalizations.of(context).continueButtonLabel),
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 3: Loading do plano** — sobrescrever `onboarding_slide_plan_loading.dart`:

```dart
// lib/app/onboarding/screens/onboarding_slide_plan_loading.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanLoading extends StatefulWidget {
  const OnboardingSlidePlanLoading({
    super.key,
    required this.active,
    required this.onFinished,
  });

  /// Só inicia a sequência quando a página fica visível.
  final bool active;
  final VoidCallback onFinished;

  @override
  State<OnboardingSlidePlanLoading> createState() => _OnboardingSlidePlanLoadingState();
}

class _OnboardingSlidePlanLoadingState extends State<OnboardingSlidePlanLoading> {
  int _completedSteps = 0;
  Timer? _timer;
  static const _stepInterval = Duration(milliseconds: 900);

  @override
  void didUpdateWidget(covariant OnboardingSlidePlanLoading oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.active && !oldWidget.active) {
      _start();
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.active) {
      _start();
    }
  }

  void _start() {
    _timer?.cancel();
    setState(() => _completedSteps = 0);
    _timer = Timer.periodic(_stepInterval, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      setState(() => _completedSteps++);
      if (_completedSteps >= 4) {
        timer.cancel();
        Future<void>.delayed(DurationTokens.normal, () {
          if (mounted) {
            widget.onFinished();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final steps = [
      l10n.obLoadingStepProfile,
      l10n.obLoadingStepHabits,
      l10n.obLoadingStepSavings,
      l10n.obLoadingStepLists,
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 72,
                height: 72,
                child: CircularProgressIndicator(
                  strokeWidth: 6,
                  value: widget.active ? null : 0,
                ),
              ),
            ),
            const SizedBox(height: Spacing.xl),
            Center(
              child: Text(
                l10n.obLoadingTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: Spacing.xl),
            for (final (index, step) in steps.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: Spacing.sm),
                child: Row(
                  children: [
                    AnimatedSwitcher(
                      duration: DurationTokens.fast,
                      child: index < _completedSteps
                          ? Icon(
                              Icons.check_circle_rounded,
                              key: ValueKey('done_$index'),
                              color: theme.colorScheme.primary,
                            )
                          : Icon(
                              Icons.circle_outlined,
                              key: ValueKey('pending_$index'),
                              color: theme.colorScheme.outlineVariant,
                            ),
                    ),
                    const SizedBox(width: Spacing.sm),
                    Expanded(child: Text(step, style: theme.textTheme.bodyLarge)),
                  ],
                ),
              ).animate(delay: Duration(milliseconds: 100 * index)).fadeIn(),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 4: Revelação do plano**

```dart
// lib/app/onboarding/screens/onboarding_slide_plan_reveal.dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanReveal extends ConsumerWidget {
  const OnboardingSlidePlanReveal({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final data = ref.watch(onboardingDataProvider);

    // Curva de economia projetada: cresce conforme a ambição da meta.
    final multiplier = switch (data.savingsGoal) {
      'saveLarge' => 1.0,
      'saveMedium' => 0.7,
      _ => 0.45,
    };
    final bars = [0.25, 0.45, 0.7, 1.0].map((v) => v * multiplier).toList();

    final features = [
      (Icons.auto_awesome_rounded, l10n.obRevealFeatureAi),
      (Icons.savings_rounded, l10n.obRevealFeatureBudget),
      (Icons.kitchen_rounded, l10n.obRevealFeaturePantry),
      (Icons.group_rounded, l10n.obRevealFeatureShare),
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.obRevealTitle,
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ).animate().fadeIn().slideY(begin: 0.1),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.obRevealSubtitle,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.obRevealSavingsCaption, style: theme.textTheme.labelLarge),
                    const SizedBox(height: Spacing.md),
                    SizedBox(
                      height: 120,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          for (final (index, value) in bars.indexed) ...[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 100 * value,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(6),
                                      ),
                                    ),
                                  )
                                      .animate(delay: Duration(milliseconds: 150 * index))
                                      .scaleY(begin: 0, alignment: Alignment.bottomCenter),
                                  const SizedBox(height: Spacing.xxs),
                                  Text(
                                    l10n.obRevealMonth(index + 1),
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ),
                            if (index < bars.length - 1) const SizedBox(width: Spacing.sm),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ).animate().fadeIn(),
            const SizedBox(height: Spacing.lg),
            for (final (index, feature) in features.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: Spacing.sm),
                child: Row(
                  children: [
                    Icon(feature.$1, color: theme.colorScheme.primary),
                    const SizedBox(width: Spacing.sm),
                    Expanded(child: Text(feature.$2, style: theme.textTheme.bodyLarge)),
                  ],
                ),
              ).animate(delay: Duration(milliseconds: 100 * index)).fadeIn().slideX(begin: 0.1),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onNext,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: Text(MaterialLocalizations.of(context).continueButtonLabel),
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 5: Compilar e commitar**

Run: `flutter analyze lib/app/onboarding --no-fatal-infos`
Expected: sem erros nesses 4 arquivos (warnings de arquivos antigos ainda intactos são OK por enquanto).

```bash
git add lib/app/onboarding/screens/onboarding_slide_hook.dart lib/app/onboarding/screens/onboarding_slide_social_proof.dart lib/app/onboarding/screens/onboarding_slide_plan_loading.dart lib/app/onboarding/screens/onboarding_slide_plan_reveal.dart
git commit -m "feat(onboarding): hook, social proof, plan loading and reveal slides"
```

### Task 6: Paywall hard

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_paywall.dart`
- Test: `test/app/onboarding/screens/onboarding_slide_paywall_test.dart`

Lógica de compra portada de `onboarding_slide_premium.dart` (purchase/restore/error handling/analytics) **sem** o caminho `_skipOnboarding`. Diferenças-chave: não chama `markAsSeen` na compra — chama `widget.onPurchased()` (o orquestrador navega para o login); restore chama `widget.onRestored()`.

- [ ] **Step 1: Teste falhando — sem saída + callbacks**

```dart
// test/app/onboarding/screens/onboarding_slide_paywall_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';

class _FakeRevenueCat implements RevenueCatService {
  @override
  Future<List<PaywallPackage>> getPaywallPackages() async => [
        PaywallPackage(
          identifier: 'annual',
          priceString: r'$39.99',
          price: 39.99,
          currencyCode: 'USD',
          title: 'Annual',
          description: '',
          trialPeriodDays: 7,
        ),
        PaywallPackage(
          identifier: 'monthly',
          priceString: r'$4.99',
          price: 4.99,
          currencyCode: 'USD',
          title: 'Monthly',
          description: '',
        ),
      ];

  @override
  Future<bool> isEntitlementActive(String entitlementId) async => false;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('hard paywall has no close, skip or free-continue affordance', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(_FakeRevenueCat()),
        ],
        child: const MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: OnboardingSlidePaywall(onPurchased: _noop, onRestored: _noop),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.close), findsNothing);
    expect(find.byIcon(Icons.close_rounded), findsNothing);
    // CTA de trial presente (pacote anual com trial pré-selecionado)
    expect(find.text('Start Free Trial'), findsOneWidget);
  });
}

void _noop() {}
```

Nota: `_FakeRevenueCat` usa `noSuchMethod` para os métodos não exercitados (`init`, `purchasePackage`, listeners etc.) — padrão aceitável para fake de interface larga. Se `analyticsServiceProvider` exigir Firebase no teste, sobrescrever com `AnalyticsService()` (construtor aceita analytics null — não loga nada).

Run: `flutter test test/app/onboarding/screens/onboarding_slide_paywall_test.dart` — FAIL (arquivo não existe).

- [ ] **Step 2: Implementar**

```dart
// lib/app/onboarding/screens/onboarding_slide_paywall.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingSlidePaywall extends ConsumerStatefulWidget {
  const OnboardingSlidePaywall({
    super.key,
    required this.onPurchased,
    required this.onRestored,
  });

  final VoidCallback onPurchased;
  final VoidCallback onRestored;

  @override
  ConsumerState<OnboardingSlidePaywall> createState() => _OnboardingSlidePaywallState();
}

class _OnboardingSlidePaywallState extends ConsumerState<OnboardingSlidePaywall> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  bool _loadFailed = false;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  static const _termsUrl = 'https://kipilist.com/terms';
  static const _privacyUrl = 'https://kipilist.com/privacy';

  @override
  void initState() {
    super.initState();
    unawaited(ref.read(analyticsServiceProvider).logPaywallViewed());
    unawaited(_loadPackages());
  }

  Future<void> _loadPackages() async {
    setState(() {
      _isLoading = true;
      _loadFailed = false;
    });
    try {
      // Já assinante (ex.: restore em sessão anterior, app morto antes do login).
      final alreadyPro = await ref
          .read(revenueCatServiceProvider)
          .isEntitlementActive('kipilist_pro');
      if (alreadyPro) {
        widget.onRestored();
        return;
      }
      final pkgs = await ref
          .read(revenueCatServiceProvider)
          .getPaywallPackages()
          .timeout(const Duration(seconds: 15));
      if (!mounted) {
        return;
      }
      setState(() {
        _packages = pkgs;
        _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
              (p) => p?.rawPackage?.packageType == PackageType.annual,
              orElse: () => pkgs.cast<PaywallPackage?>().firstWhere(
                    (p) => p?.rawPackage?.packageType == PackageType.monthly,
                    orElse: () => pkgs.isEmpty ? null : pkgs.first,
                  ),
            );
        // Fallback para teste/ambientes sem rawPackage: primeiro da lista.
        _selectedPackage ??= pkgs.isEmpty ? null : pkgs.first;
        _isLoading = false;
        _loadFailed = pkgs.isEmpty;
      });
      if (_loadFailed) {
        unawaited(
          ref.read(analyticsServiceProvider).logEvent(name: 'paywall_blocked_retry'),
        );
      }
    } on Exception {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _loadFailed = true;
        });
        unawaited(
          ref.read(analyticsServiceProvider).logEvent(name: 'paywall_blocked_retry'),
        );
      }
    }
  }

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null || _isPurchasing) {
      return;
    }
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        widget.onPurchased();
      }
    } on PlatformException catch (e) {
      final errorCode = PurchasesErrorHelper.getErrorCode(e);
      if (errorCode == PurchasesErrorCode.purchaseCancelledError) {
        unawaited(
          ref.read(analyticsServiceProvider).logEvent(name: 'onboarding_purchase_cancelled'),
        );
      } else {
        unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.purchaseError)),
          );
        }
      }
      if (mounted) {
        setState(() => _isPurchasing = false);
      }
    } on Exception catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
      if (mounted) {
        setState(() => _isPurchasing = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.purchaseError)),
        );
      }
    }
  }

  Future<void> _restore() async {
    if (_isPurchasing) {
      return;
    }
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      final isPro = await ref
          .read(revenueCatServiceProvider)
          .isEntitlementActive('kipilist_pro');
      if (!isPro) {
        if (mounted) {
          setState(() => _isPurchasing = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.restoreError)),
          );
        }
        return;
      }
      unawaited(ref.read(analyticsServiceProvider).logPaywallRestoreCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        widget.onRestored();
      }
    } on Exception {
      if (mounted) {
        setState(() => _isPurchasing = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.restoreError)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (_loadFailed) {
      return _RetryView(onRetry: _loadPackages);
    }

    final selected = _selectedPackage;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.obPaywallTitle,
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Spacing.lg),
            for (final pkg in _packages) ...[
              _PackageTile(
                package: pkg,
                selected: pkg.identifier == selected?.identifier,
                onTap: () => setState(() => _selectedPackage = pkg),
              ),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(),
            Text(
              _billingDisclosure(l10n),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.sm),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _isPurchasing ? null : _purchase,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: _isPurchasing
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(
                        (selected?.hasFreeTrial ?? false)
                            ? l10n.paywallTrialCta
                            : l10n.paywallCtaUnlock,
                      ),
              ),
            ),
            const SizedBox(height: Spacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _isPurchasing ? null : _restore,
                  child: Text(l10n.paywallRestore),
                ),
                TextButton(
                  onPressed: () => unawaited(launchUrl(Uri.parse(_termsUrl))),
                  child: Text(l10n.termsOfService),
                ),
                TextButton(
                  onPressed: () => unawaited(launchUrl(Uri.parse(_privacyUrl))),
                  child: Text(l10n.privacyPolicy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _billingDisclosure(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg == null) {
      return l10n.paywallCancelAnytime;
    }
    final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
    if (pkg.hasFreeTrial) {
      return isAnnual
          ? l10n.paywallTrialDisclosureAnnual(pkg.trialPeriodDays!, pkg.priceString)
          : l10n.paywallTrialDisclosureMonthly(pkg.trialPeriodDays!, pkg.priceString);
    }
    return isAnnual
        ? l10n.paywallBillingAnnual(pkg.priceString)
        : l10n.paywallBillingMonthly(pkg.priceString);
  }
}

class _PackageTile extends StatelessWidget {
  const _PackageTile({
    required this.package,
    required this.selected,
    required this.onTap,
  });

  final PaywallPackage package;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected ? scheme.primaryContainer : scheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(Spacing.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected ? scheme.primary : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      package.priceString,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              if (selected) Icon(Icons.check_circle_rounded, color: scheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}

class _RetryView extends StatelessWidget {
  const _RetryView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              size: 56,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: Spacing.md),
            Text(l10n.paywallLoadingError, textAlign: TextAlign.center),
            const SizedBox(height: Spacing.md),
            FilledButton(onPressed: onRetry, child: Text(l10n.obPaywallRetry)),
          ],
        ),
      ),
    );
  }
}
```

Notas para o engenheiro:
- Verificar nomes reais das chaves `termsOfService`/`privacyPolicy` no `app_en.arb` (grep). Se diferirem, usar as existentes.
- Verificar URLs reais de termos/privacidade (grep por `terms` em `lib/`); usar as mesmas do paywall de settings.
- O badge de desconto anual e o destaque do trial podem reusar a UI de `onboarding_slide_premium.dart` (será deletado na Task 11 — copiar o que valer a pena antes).

- [ ] **Step 3: Rodar teste — PASS**

Run: `flutter test test/app/onboarding/screens/onboarding_slide_paywall_test.dart`

- [ ] **Step 4: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_paywall.dart test/app/onboarding/screens/
git commit -m "feat(onboarding): hard paywall slide without exit affordance"
```

### Task 7: Login pós-compra

**Files:**
- Rewrite: `lib/app/onboarding/screens/onboarding_slide_login.dart`

Sobrescrever o arquivo. Callbacks: `onDone` (login ok ou "agora não") — orquestrador faz `markAsSeen`. Grep para achar o provider do `AuthService`: `grep -rn "AuthService(" lib/core/providers/`.

- [ ] **Step 1: Implementar**

```dart
// lib/app/onboarding/screens/onboarding_slide_login.dart
import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart'; // ajustar import conforme grep do authServiceProvider
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideLogin extends ConsumerStatefulWidget {
  const OnboardingSlideLogin({super.key, required this.onDone});

  final VoidCallback onDone;

  @override
  ConsumerState<OnboardingSlideLogin> createState() => _OnboardingSlideLoginState();
}

class _OnboardingSlideLoginState extends ConsumerState<OnboardingSlideLogin> {
  bool _busy = false;

  Future<void> _signIn(Future<dynamic> Function() method, String provider) async {
    setState(() => _busy = true);
    try {
      final user = await method();
      if (user != null) {
        unawaited(
          ref.read(analyticsServiceProvider).logEvent(
            name: 'onboarding_login_completed',
            parameters: {'provider': provider},
          ),
        );
        widget.onDone();
        return;
      }
      if (mounted) {
        setState(() => _busy = false);
      }
    } on Exception {
      if (mounted) {
        setState(() => _busy = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.obLoginError)),
        );
      }
    }
  }

  void _skip() {
    unawaited(
      ref.read(analyticsServiceProvider).logEvent(name: 'onboarding_login_skipped'),
    );
    widget.onDone();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final auth = ref.read(authServiceProvider);
    final showApple = !kIsWeb && Platform.isIOS;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          children: [
            const Spacer(),
            Icon(Icons.cloud_done_rounded, size: 72, color: theme.colorScheme.primary),
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.obLoginTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.obLoginSubtitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: _busy ? null : () => _signIn(auth.signInWithGoogle, 'google'),
                icon: const Icon(Icons.g_mobiledata_rounded),
                label: Text(l10n.obLoginGoogle),
              ),
            ),
            if (showApple) ...[
              const SizedBox(height: Spacing.sm),
              SizedBox(
                width: double.infinity,
                child: FilledButton.tonalIcon(
                  onPressed: _busy ? null : () => _signIn(auth.signInWithApple, 'apple'),
                  icon: const Icon(Icons.apple_rounded),
                  label: Text(l10n.obLoginApple),
                ),
              ),
            ],
            const SizedBox(height: Spacing.xs),
            TextButton(
              onPressed: _busy ? null : _skip,
              child: Text(l10n.obLoginSkip),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Analyze + commit**

Run: `flutter analyze lib/app/onboarding/screens/onboarding_slide_login.dart --no-fatal-infos`

```bash
git add lib/app/onboarding/screens/onboarding_slide_login.dart
git commit -m "feat(onboarding): post-purchase login slide"
```

### Task 8: Orquestrador `OnboardingScreen` (reescrita)

**Files:**
- Rewrite: `lib/app/onboarding/screens/onboarding_screen.dart`
- Test: `test/app/onboarding/screens/onboarding_screen_test.dart`

Páginas (índices): 0 hook · 1-5 quiz · 6 social · 7 loading · 8 reveal · 9 paywall · 10 login. Back habilitado para 1–8; bloqueado em 0, 9 e 10. Quiz auto-avança com delay de 250ms após seleção. `markAsSeen` + `clearDraft` + persistência do quiz no Firestore acontecem **somente** em `_completeOnboarding()` (chamado pelo `onDone` do login).

- [ ] **Step 1: Implementar**

```dart
// lib/app/onboarding/screens/onboarding_screen.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_hook.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_loading.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_plan_reveal.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_social_proof.dart';
import 'package:shopping_list/app/onboarding/widgets/quiz_slide.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart'; // firestoreServiceProvider — ajustar conforme grep
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentSlide = 0;
  DateTime _stepStartedAt = DateTime.now();
  bool _hydrated = false;

  static const int _slideCount = 11;
  static const int _paywallIndex = 9;
  static const int _loginIndex = 10;
  static const _stepNames = <String>[
    'hook',
    'quiz_household',
    'quiz_frequency',
    'quiz_pain',
    'quiz_savings',
    'quiz_method',
    'social_proof',
    'plan_loading',
    'plan_reveal',
    'paywall',
    'login',
  ];

  @override
  void initState() {
    super.initState();
    unawaited(_initialize());
  }

  Future<void> _initialize() async {
    final notifier = ref.read(onboardingDataProvider.notifier);
    await notifier.hydrate();
    if (!mounted) {
      return;
    }
    final restoredStep =
        ref.read(onboardingDataProvider).currentStep.clamp(0, _slideCount - 1);
    setState(() {
      _currentSlide = restoredStep;
      _hydrated = true;
      _stepStartedAt = DateTime.now();
    });
    _pageController.jumpToPage(restoredStep);
    final analytics = ref.read(analyticsServiceProvider);
    unawaited(analytics.logOnboardingStarted());
    unawaited(
      analytics.logOnboardingStepViewed(
        step: restoredStep,
        name: _stepNames[restoredStep],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNext() {
    if (_currentSlide >= _slideCount - 1) {
      return;
    }
    final duration = DateTime.now().difference(_stepStartedAt).inMilliseconds;
    unawaited(
      ref.read(analyticsServiceProvider).logOnboardingStepCompleted(
            step: _currentSlide,
            name: _stepNames[_currentSlide],
            durationMs: duration,
          ),
    );
    _pageController.animateToPage(
      _currentSlide + 1,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  void _selectQuizAnswer(void Function(String) save, String id) {
    save(id);
    // Auto-advance: tempo de ver a seleção marcada antes de avançar.
    Future<void>.delayed(const Duration(milliseconds: 250), () {
      if (mounted) {
        _goToNext();
      }
    });
  }

  bool get _canGoBack =>
      _currentSlide > 0 && _currentSlide < _paywallIndex;

  void _goBack() {
    if (!_canGoBack) {
      return;
    }
    unawaited(
      ref.read(analyticsServiceProvider).logEvent(
            name: 'onboarding_back_tapped',
            parameters: {'step': _currentSlide},
          ),
    );
    _pageController.animateToPage(
      _currentSlide - 1,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  void _handlePageChanged(int index) {
    setState(() {
      _currentSlide = index;
      _stepStartedAt = DateTime.now();
    });
    ref.read(onboardingDataProvider.notifier).updateCurrentStep(index);
    unawaited(
      ref
          .read(analyticsServiceProvider)
          .logOnboardingStepViewed(step: index, name: _stepNames[index]),
    );
  }

  void _goToLogin() {
    _pageController.animateToPage(
      _loginIndex,
      duration: DurationTokens.fast,
      curve: Curves.easeOutCubic,
    );
  }

  Future<void> _completeOnboarding() async {
    final data = ref.read(onboardingDataProvider);
    final firestore = ref.read(firestoreServiceProvider);
    if (firestore != null) {
      try {
        await firestore.updateUserData({
          'onboardingQuiz': {
            'householdSize': data.householdSize,
            'shoppingFrequency': data.shoppingFrequency,
            'mainPain': data.mainPain,
            'savingsGoal': data.savingsGoal,
            'listMethod': data.listMethod,
          },
        });
      } on Exception {
        // Quiz no Firestore é best-effort; não bloqueia a entrada no app.
      }
    }
    await ref.read(onboardingDataProvider.notifier).clearDraft();
    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    await ref.read(onboardingProvider.notifier).markAsSeen();
    // markAsSeen flipa onboardingProvider; main.dart troca para o shell principal.
  }

  @override
  Widget build(BuildContext context) {
    if (!_hydrated) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      );
    }

    final l10n = AppLocalizations.of(context)!;
    final data = ref.watch(onboardingDataProvider);
    final notifier = ref.read(onboardingDataProvider.notifier);
    final showProgress = _currentSlide >= 1 && _currentSlide <= 8;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, Object? result) {
        if (!didPop) {
          _goBack(); // no-op nas páginas 0, 9 e 10
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: _handlePageChanged,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                OnboardingSlideHook(onNext: _goToNext),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizHouseholdTitle,
                    selectedId: data.householdSize,
                    onSelected: (id) =>
                        _selectQuizAnswer(notifier.updateHouseholdSize, id),
                    options: [
                      QuizOption(id: 'solo', emoji: '🙋', label: l10n.obQuizHouseholdSolo),
                      QuizOption(id: 'couple', emoji: '💑', label: l10n.obQuizHouseholdCouple),
                      QuizOption(id: 'family3to4', emoji: '👨‍👩‍👧', label: l10n.obQuizHouseholdFamilySmall),
                      QuizOption(id: 'family5plus', emoji: '👨‍👩‍👧‍👦', label: l10n.obQuizHouseholdFamilyLarge),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizFrequencyTitle,
                    selectedId: data.shoppingFrequency,
                    onSelected: (id) =>
                        _selectQuizAnswer(notifier.updateShoppingFrequency, id),
                    options: [
                      QuizOption(id: 'daily', emoji: '🗓️', label: l10n.obQuizFrequencyDaily),
                      QuizOption(id: 'weekly', emoji: '📅', label: l10n.obQuizFrequencyWeekly),
                      QuizOption(id: 'biweekly', emoji: '🛒', label: l10n.obQuizFrequencyBiweekly),
                      QuizOption(id: 'monthly', emoji: '📦', label: l10n.obQuizFrequencyMonthly),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizPainTitle,
                    selectedId: data.mainPain,
                    onSelected: (id) => _selectQuizAnswer(notifier.updateMainPain, id),
                    options: [
                      QuizOption(id: 'forget', emoji: '🤦', label: l10n.obQuizPainForget),
                      QuizOption(id: 'overspend', emoji: '💸', label: l10n.obQuizPainOverspend),
                      QuizOption(id: 'waste', emoji: '🗑️', label: l10n.obQuizPainWaste),
                      QuizOption(id: 'time', emoji: '⏰', label: l10n.obQuizPainTime),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizSavingsTitle,
                    selectedId: data.savingsGoal,
                    onSelected: (id) => _selectQuizAnswer(notifier.updateSavingsGoal, id),
                    options: [
                      QuizOption(id: 'saveSmall', emoji: '🪙', label: l10n.obQuizSavingsSmall),
                      QuizOption(id: 'saveMedium', emoji: '💰', label: l10n.obQuizSavingsMedium),
                      QuizOption(id: 'saveLarge', emoji: '🏆', label: l10n.obQuizSavingsLarge),
                    ],
                  ),
                ),
                QuizSlide(
                  config: QuizConfig(
                    title: l10n.obQuizMethodTitle,
                    selectedId: data.listMethod,
                    onSelected: (id) => _selectQuizAnswer(notifier.updateListMethod, id),
                    options: [
                      QuizOption(id: 'paper', emoji: '📝', label: l10n.obQuizMethodPaper),
                      QuizOption(id: 'notes', emoji: '📱', label: l10n.obQuizMethodNotes),
                      QuizOption(id: 'memory', emoji: '🧠', label: l10n.obQuizMethodMemory),
                      QuizOption(id: 'none', emoji: '🤷', label: l10n.obQuizMethodNone),
                    ],
                  ),
                ),
                OnboardingSlideSocialProof(onNext: _goToNext),
                OnboardingSlidePlanLoading(
                  active: _currentSlide == 7,
                  onFinished: _goToNext,
                ),
                OnboardingSlidePlanReveal(onNext: _goToNext),
                OnboardingSlidePaywall(
                  onPurchased: _goToLogin,
                  onRestored: _goToLogin,
                ),
                OnboardingSlideLogin(
                  onDone: () => unawaited(_completeOnboarding()),
                ),
              ],
            ),
            if (showProgress)
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Spacing.sm,
                    Spacing.xs,
                    Spacing.lg,
                    0,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _goBack,
                        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                      const SizedBox(width: Spacing.xs),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: _currentSlide / (_slideCount - 1),
                            minHeight: 5,
                          ),
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Semantics(
                        label: AppLocalizations.of(context)!
                            .onboardingProgress(_currentSlide, _slideCount - 2),
                        child: Text(
                          '$_currentSlide/${_slideCount - 2}',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
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

- [ ] **Step 2: Teste de integração de navegação**

```dart
// test/app/onboarding/screens/onboarding_screen_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  // Nota: overrides de analytics/revenuecat/firestore podem ser necessários se
  // os providers tocarem Firebase no construtor. Usar os mesmos fakes da Task 6.
  testWidgets('quiz answers persist and auto-advance through the flow', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: const MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: OnboardingScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Hook
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Quiz 1 — household
    await tester.tap(find.text('Just me'));
    await tester.pumpAndSettle();

    // Quiz 2 visível, resposta persistida
    expect(find.text('How often do you shop for groceries?'), findsOneWidget);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(OnboardingScreen)),
    );
    expect(container.read(onboardingDataProvider).householdSize, 'solo');
  });

  testWidgets('hook page has no skip affordance and back is blocked', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: const MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: OnboardingScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Skip'), findsNothing);

    final popScope = tester.widget<PopScope>(
      find.byType(PopScope).first,
    );
    expect(popScope.canPop, isFalse);
  });
}
```

- [ ] **Step 3: Rodar**

Run: `flutter test test/app/onboarding/`
Expected: PASS. Se providers tocarem Firebase no setup, adicionar overrides (fakes da Task 6) ao `ProviderScope` — não inicializar Firebase em teste.

- [ ] **Step 4: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_screen.dart test/app/onboarding/screens/onboarding_screen_test.dart
git commit -m "feat(onboarding): 11-page quiz flow with hard paywall gating"
```

### Task 9: Analytics — eventos novos

**Files:**
- Modify: `lib/services/analytics_service.dart`

Eventos `paywall_blocked_retry`, `onboarding_login_skipped`, `onboarding_login_completed` já são emitidos via `logEvent` genérico nas tasks 6–8 — nada a fazer aqui além de confirmar. `logPaywallDismissed` fica órfão de chamadas do onboarding mas continua usado pelo paywall de settings (verificar com grep antes de qualquer remoção; em dúvida, manter).

- [ ] **Step 1: Verificar**

Run: `grep -rn "logPaywallDismissed\|paywall_blocked_retry\|onboarding_login" lib/ --include="*.dart" | grep -v "\.g\.dart"`
Expected: chamadas presentes nos slides novos; `logPaywallDismissed` só em `lib/app/settings/`.

Sem commit (task de verificação).

### Task 10: Smoke test manual

- [ ] **Step 1: Rodar app com onboarding resetado**

Run: `flutter run` (device/emulador). Antes, apagar o app do device (limpa SharedPreferences) ou setar `hasSeenOnboarding=false` via debug.

Checklist manual:
- Hook → quiz 5 perguntas com auto-advance → social → loading anima 4 checkmarks → reveal com gráfico → paywall.
- Paywall: sem X/skip; botão back do Android não sai; pacotes carregam; modo avião → retry view.
- Compra sandbox (ou restore) → login → "Agora não" → entra no app.
- Matar o app no meio do quiz → reabre no mesmo step.

- [ ] **Step 2: Corrigir o que quebrar, commitar ajustes**

```bash
git add -A lib test
git commit -m "fix(onboarding): manual smoke test adjustments"
```

### Task 11: Deletar código morto do onboarding antigo

**Files:**
- Delete: `lib/app/onboarding/screens/onboarding_slide_ai_demo.dart`, `onboarding_ai_chat.dart`, `onboarding_slide_pain_point.dart`, `onboarding_slide_personalization.dart`, `onboarding_slide_premium.dart`, `onboarding_slide_share.dart`, `onboarding_slide_setup.dart`, `onboarding_slide_welcome.dart`, `onboarding_slide_welcome_login.dart`, `onboarding_slide_commitments.dart`, `onboarding_slide_ai_show.dart`, `onboarding_slide_action.dart`
- Delete: `lib/app/onboarding/widgets/personalization_bottom_sheets.dart`, `onboarding_slide_value_prop.dart`, `onboarding_dots.dart`

- [ ] **Step 1: Verificar referências externas antes de deletar**

Run: `grep -rln "onboarding_slide_ai_demo\|onboarding_ai_chat\|onboarding_slide_pain_point\|onboarding_slide_personalization\|onboarding_slide_premium\|onboarding_slide_share\|onboarding_slide_setup\|onboarding_slide_welcome\|onboarding_slide_commitments\|onboarding_slide_ai_show\|onboarding_slide_action\|personalization_bottom_sheets\|onboarding_slide_value_prop\|onboarding_dots" lib/ test/ --include="*.dart"`
Expected: só os próprios arquivos. Se algo de fora referenciar (ex.: settings reusa um widget), mover o widget, não deletar.

- [ ] **Step 2: Deletar + analyze**

```bash
git rm lib/app/onboarding/screens/onboarding_slide_ai_demo.dart lib/app/onboarding/screens/onboarding_ai_chat.dart lib/app/onboarding/screens/onboarding_slide_pain_point.dart lib/app/onboarding/screens/onboarding_slide_personalization.dart lib/app/onboarding/screens/onboarding_slide_premium.dart lib/app/onboarding/screens/onboarding_slide_share.dart lib/app/onboarding/screens/onboarding_slide_setup.dart lib/app/onboarding/screens/onboarding_slide_welcome.dart lib/app/onboarding/screens/onboarding_slide_welcome_login.dart lib/app/onboarding/screens/onboarding_slide_commitments.dart lib/app/onboarding/screens/onboarding_slide_ai_show.dart lib/app/onboarding/screens/onboarding_slide_action.dart lib/app/onboarding/widgets/personalization_bottom_sheets.dart lib/app/onboarding/widgets/onboarding_slide_value_prop.dart lib/app/onboarding/widgets/onboarding_dots.dart
```

Deletar também testes que cobriam esses arquivos (grep em `test/`). **Não** deletar `lib/app/settings/screens/paywall_screen.dart` nem `lib/core/widgets/premium_gate.dart`.

Run: `flutter analyze --fatal-infos`
Expected: limpo (CI usa Flutter 3.29.3; infos extras de versão local são conhecidos — comparar com baseline antes do PR).

- [ ] **Step 3: Commit**

```bash
git commit -m "refactor(onboarding): delete legacy onboarding slides"
```

### Task 12: Traduções (86 idiomas)

- [ ] **Step 1: Traduzir + revisar + gerar**

```bash
python3 scripts/translate_missing.py
python3 scripts/review_translations.py
flutter gen-l10n
```

- [ ] **Step 2: Validação ARB pré-build (obrigatória — bugs conhecidos do script)**

Rodar os checks do CLAUDE.md (seção "ARB Pre-Build Validation"): ICU keyword `other` traduzido e placeholders quebrados. Corrigir qualquer ocorrência nas chaves novas (`obRevealMonth` tem placeholder).

- [ ] **Step 3: Commit**

```bash
git add lib/l10n lib/generated
git commit -m "feat(l10n): translations for quiz onboarding keys"
```

### Task 13: Verificação final

- [ ] **Step 1: Suite completa + analyze**

```bash
flutter analyze --fatal-infos
flutter test
```

Expected: tudo verde (modulo infos de diferença de versão Flutter local vs CI).

- [ ] **Step 2: Limpar chaves ARB órfãs do fluxo antigo (opcional, só se não usadas)**

Run: `python3 find_missing_keys.py` (existe na raiz) ou grep por chaves `onboarding*` antigas em `lib/`. Remover do `app_en.arb` + todos os ARBs apenas as chaves sem nenhuma referência. Em dúvida, deixar.

- [ ] **Step 3: Commit final**

```bash
git add -A
git commit -m "chore(onboarding): final cleanup for quiz onboarding + hard paywall"
```

---

## Self-review notes

- Spec §1 fluxo 10 telas → Tasks 4–8 (11 páginas: 10 + login). ✓
- Spec §2 hard paywall (markAsSeen só pós compra/restore, PopScope, retry, restore reinstala) → Tasks 6 e 8. ✓
- Spec §3 componentes → Tasks 4–7. ✓
- Spec §4 dados+analytics → Tasks 1, 2, 8 (`_completeOnboarding` grava Firestore), 9. ✓
- Spec §5 i18n → Tasks 3 e 12. ✓
- Spec §6 limpeza → Task 11. ✓
- Spec §7 testes → Tasks 1, 2, 4, 6, 8. ✓
- Imports de providers (`firebase_providers.dart`, nome exato de `authServiceProvider`/`firestoreServiceProvider`) marcados para grep pelo executor — caminhos variam, instrução explícita dada.
