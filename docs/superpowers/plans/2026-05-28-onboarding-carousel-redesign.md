# Onboarding Carousel Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the current `introduction_screen` carousel with an AI-first conversational onboarding where the user interacts with a simulated AI agent, followed by login/share/premium slides.

**Architecture:** AI chat screen (simulated, no API calls) → PageView with 3 slides (login, share, premium inline paywall). AI responses are locally scripted with animated typing indicators. RevenueCat offerings pre-loaded. Default screen preference (list/chat) saved to SharedPreferences.

**Tech Stack:** Flutter, Riverpod, RevenueCat, Firebase Auth, Google Sign-In, Sign in with Apple.

---

## File Structure

| File | Role | Change |
|---|---|---|
| `lib/l10n/app_en.arb` | Localization source | +20 keys |
| `lib/generated/l10n/` | Generated locale code | `flutter gen-l10n` |
| `lib/app/onboarding/screens/onboarding_screen.dart` | Main onboarding scaffold | Full rewrite |
| `lib/app/onboarding/screens/onboarding_ai_chat.dart` | AI chat screen (simulated) | Create |
| `lib/app/onboarding/screens/onboarding_slide_login.dart` | Login slide | Create |
| `lib/app/onboarding/screens/onboarding_slide_share.dart` | Share slide | Create |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | Premium paywall slide | Create |
| `lib/app/onboarding/providers/onboarding_state_provider.dart` | AI name, default screen, slide index | Create |
| `lib/app/onboarding/widgets/chat_bubble.dart` | Chat bubble widget | Create |
| `lib/app/onboarding/widgets/onboarding_dots.dart` | Dot indicator widget | Create |
| `lib/core/providers/preferences_providers.dart` | Add default screen preference | Modify |
| `lib/app/settings/screens/settings_screen.dart` | Add default screen toggle | Modify |

---

### Task 1: Add Localization Keys

**Files:**
- Modify: `lib/l10n/app_en.arb`
- Run: `flutter gen-l10n`

- [ ] **Step 1: Add onboarding AI and premium keys to `app_en.arb`**

Insert after the existing `continueAsGuest` key:

```arb
  "@_Onboarding": "description: Onboarding Carousel",
  "onboardingAiGreeting": "Hi! I'm your smart assistant. What would you like to call me?",
  "@onboardingAiGreeting": { "description": "AI first message asking for name" },
  "onboardingAiNameResponse": "{name}? Love it! I can help with lists, categorize items, give suggestions and much more. What's your favorite food?",
  "@onboardingAiNameResponse": { "description": "AI response after user gives a name", "placeholders": { "name": { "type": "String" } } },
  "onboardingAiFoodResponse": "Yum! And how do you prepare it? I can suggest the ingredients!",
  "@onboardingAiFoodResponse": { "description": "AI asks about food preparation" },
  "onboardingAiListReady": "Done! Your list is organized. Do you want to go to the shopping list or keep chatting?",
  "@onboardingAiListReady": { "description": "AI offers list or chat choice" },
  "onboardingAiSuggestButton": "Suggest!",
  "@onboardingAiSuggestButton": { "description": "Button to ask AI for suggestions" },
  "onboardingGoToList": "Go to list",
  "@onboardingGoToList": { "description": "Button to go to shopping list" },
  "onboardingKeepChatting": "Keep chatting",
  "@onboardingKeepChatting": { "description": "Button to continue chatting" },
  "onboardingSkipToApp": "Skip to app",
  "@onboardingSkipToApp": { "description": "Skip onboarding link" },
  "onboardingChatPlaceholder": "Type a message...",
  "@onboardingChatPlaceholder": { "description": "Chat input placeholder" },
  "onboardingLoginTitle": "Save everything to the cloud",
  "@onboardingLoginTitle": { "description": "Slide 2 headline" },
  "onboardingLoginDesc": "Your data synced across all your devices",
  "@onboardingLoginDesc": { "description": "Slide 2 body" },
  "onboardingShareTitle": "Share with the ones you love",
  "@onboardingShareTitle": { "description": "Slide 3 headline" },
  "onboardingShareDesc": "Sync lists with family and friends in real time",
  "@onboardingShareDesc": { "description": "Slide 3 body" },
  "onboardingPremiumTitle": "Unlock all features",
  "@onboardingPremiumTitle": { "description": "Slide 4 headline" },
  "onboardingPremiumSubtitle": "Get the most out of your shopping lists",
  "@onboardingPremiumSubtitle": { "description": "Slide 4 subtitle" },
  "onboardingAnnualBadge": "Best Value",
  "@onboardingAnnualBadge": { "description": "Annual plan badge" },
  "onboardingMonthlyLabel": "Monthly",
  "@onboardingMonthlyLabel": { "description": "Monthly plan label" },
  "onboardingAnnualLabel": "Annual",
  "@onboardingAnnualLabel": { "description": "Annual plan label" },
  "onboardingViewAllPlans": "View all plans",
  "@onboardingViewAllPlans": { "description": "Link to show additional plans" },
  "onboardingSubscribeCta": "Subscribe",
  "@onboardingSubscribeCta": { "description": "Subscribe button text" },
  "onboardingCancelAnytime": "Cancel anytime. No commitment.",
  "@onboardingCancelAnytime": { "description": "Cancellation disclaimer" },
  "onboardingContinueAsGuest": "Continue as guest",
  "@onboardingContinueAsGuest": { "description": "Skip login link" },
  "onboardingRestore": "Restore",
  "@onboardingRestore": { "description": "Restore purchases button" },
  "settingsDefaultScreen": "Default home screen",
  "@settingsDefaultScreen": { "description": "Settings option label" },
  "settingsDefaultScreenSubtitle": "Choose between shopping list or AI chat",
  "@settingsDefaultScreenSubtitle": { "description": "Settings option subtitle" },
  "settingsScreenList": "Shopping List",
  "@settingsScreenList": { "description": "List screen option" },
  "settingsScreenChat": "AI Chat",
  "@settingsScreenChat": { "description": "Chat screen option" }
```

- [ ] **Step 2: Run Flutter gen-l10n**

```bash
flutter gen-l10n
```

Expected: generates updated files in `lib/generated/l10n/` with all new keys.

- [ ] **Step 3: Commit**

```bash
git add lib/l10n/app_en.arb lib/generated/l10n/
git commit -m "feat: add onboarding and settings localization keys"
```

---

### Task 2: Create Onboarding State Provider

**Files:**
- Create: `lib/app/onboarding/providers/onboarding_state_provider.dart`

- [ ] **Step 1: Create provider file**

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingSlideIndexProvider = StateProvider<int>((ref) => 0);

final onboardingAiNameProvider = StateProvider<String>((ref) => '');

final onboardingFavoriteFoodProvider = StateProvider<String>((ref) => '');

final onboardingChatMessagesProvider = StateProvider<List<ChatMessage>>((ref) => []);

class ChatMessage {
  const ChatMessage({
    required this.text,
    required this.isUser,
  });

  final String text;
  final bool isUser;
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/onboarding/providers/onboarding_state_provider.dart
git commit -m "feat: add onboarding state providers"
```

---

### Task 3: Add Default Screen Preference to SharedPreferences

**Files:**
- Modify: `lib/core/providers/preferences_providers.dart`

- [ ] **Step 1: Add default screen provider**

Add after the `UseDynamicColor` class in `preferences_providers.dart`:

```dart
@riverpod
class DefaultScreen extends _$DefaultScreen {
  static const _key = 'defaultScreen';

  @override
  Future<String> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key) ?? 'list';
  }

  Future<void> setScreen(String screen) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, screen);
    state = AsyncValue.data(screen);
  }
}
```

- [ ] **Step 2: Run build_runner**

```bash
dart run build_runner build --delete-conflicting-outputs
```

Expected: `preferences_providers.g.dart` regenerated with `defaultScreenProvider`.

- [ ] **Step 3: Commit**

```bash
git add lib/core/providers/preferences_providers.dart lib/core/providers/preferences_providers.g.dart
git commit -m "feat: add default screen preference provider"
```

---

### Task 4: Create Chat Bubble Widget

**Files:**
- Create: `lib/app/onboarding/widgets/chat_bubble.dart`

- [ ] **Step 1: Write the widget**

```dart
import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.text,
    required this.isUser,
    this.isTyping = false,
  });

  final String text;
  final bool isUser;
  final bool isTyping;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        left: isUser ? Spacing.xl : 0,
        right: isUser ? 0 : Spacing.xl,
        bottom: Spacing.sm,
      ),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser) ...[
            CircleAvatar(
              radius: 16,
              backgroundColor: theme.colorScheme.primary,
              child: const Icon(Icons.smart_toy, size: 18, color: Colors.white),
            ),
            const SizedBox(width: Spacing.sm),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(Spacing.md),
              decoration: BoxDecoration(
                color: isUser
                    ? theme.colorScheme.primary
                    : theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: Radius.circular(isUser ? 20 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 20),
                ),
              ),
              child: isTyping
                  ? _TypingIndicator(color: theme.colorScheme.onSurfaceVariant)
                  : Text(
                      text,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: isUser
                            ? theme.colorScheme.onPrimary
                            : theme.colorScheme.onSurface,
                      ),
                    ),
            ),
          ),
          if (isUser) ...[
            const SizedBox(width: Spacing.sm),
            CircleAvatar(
              radius: 16,
              backgroundColor: theme.colorScheme.secondaryContainer,
              child: Icon(Icons.person, size: 18, color: theme.colorScheme.onSecondaryContainer),
            ),
          ],
        ],
      ),
    );
  }
}

class _TypingIndicator extends StatefulWidget {
  const _TypingIndicator({required this.color});

  final Color color;

  @override
  State<_TypingIndicator> createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<_TypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (i) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final delay = i * 200;
            final t = (_controller.value * 1200 - delay).clamp(0, 600) / 600;
            final scale = 0.3 + (0.7 * sin(t * pi)).clamp(0.0, 1.0);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Transform.scale(
                scale: scale,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
```

Note: Add `import 'dart:math' show sin, pi;` at the top.

- [ ] **Step 2: Commit**

```bash
git add lib/app/onboarding/widgets/chat_bubble.dart
git commit -m "feat: add chat bubble widget with typing indicator"
```

---

### Task 5: Create Dot Indicator Widget

**Files:**
- Create: `lib/app/onboarding/widgets/onboarding_dots.dart`

```dart
import 'package:flutter/material.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({
    super.key,
    required this.count,
    required this.currentIndex,
    this.activeColor,
    this.inactiveColor,
  });

  final int count;
  final int currentIndex;
  final Color? activeColor;
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final active = activeColor ?? theme.colorScheme.primary;
    final inactive = inactiveColor ??
        theme.colorScheme.onSurfaceVariant.withAlpha((0.3 * 255).toInt());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) {
        final isActive = i == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 22 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: isActive ? active : inactive,
            borderRadius: BorderRadius.circular(25),
          ),
        );
      }),
    );
  }
}
```

- [ ] **Step 1: Commit**

```bash
git add lib/app/onboarding/widgets/onboarding_dots.dart
git commit -m "feat: add onboarding dot indicator widget"
```

---

### Task 6: Create AI Chat Screen

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_ai_chat.dart`

- [ ] **Step 1: Create the simulated AI chat widget**

```dart
import 'dart:async';
import 'dart:math' show sin, pi;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_state_provider.dart';
import 'package:shopping_list/app/onboarding/widgets/chat_bubble.dart';

class OnboardingAiChat extends ConsumerStatefulWidget {
  const OnboardingAiChat({
    super.key,
    required this.onChatComplete,
  });

  final VoidCallback onChatComplete;

  @override
  ConsumerState<OnboardingAiChat> createState() => _OnboardingAiChatState();
}

class _OnboardingAiChatState extends ConsumerState<OnboardingAiChat> {
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  bool _isAiTyping = false;
  int _step = 0;

  // Pre-defined food → ingredient mapping
  static const _foodMap = {
    'strogonoff': ['alcatra', 'creme de leite', 'ketchup', 'mostarda', 'cebola', 'champignon', 'arroz', 'batata palha'],
    'lasanha': ['massa para lasanha', 'carne moída', 'molho de tomate', 'queijo muçarela', 'presunto', 'creme de leite'],
    'feijoada': ['feijão preto', 'carne seca', 'costelinha', 'linguiça', 'lombo', 'alho', 'cebola', 'louro'],
    'churrasco': ['picanha', 'alcatra', 'linguiça', 'frango', 'pão de alho', 'carvão', 'sal grosso', 'cerveja'],
    'salada': ['alface', 'tomate', 'cenoura', 'pepino', 'cebola roxa', 'azeite', 'vinagre', 'limão'],
  };

  final _messages = <ChatMessage>[];

  @override
  void initState() {
    super.initState();
    _addAiMessage('');
    Future.delayed(const Duration(milliseconds: 800), () => _typeMessage(
      ref.read(onboardingStateProvider.notifier).state != ''
          ? '${ref.read(onboardingStateProvider.notifier).state}! Que bom ver você de novo! Vamos continuar? Qual sua comida favorita?'
          : 'Oi! Eu sou seu assistente inteligente. Como quer me chamar?',
    ));
  }

  void _addAiMessage(String text) {
    setState(() => _messages.add(ChatMessage(text: text, isUser: false)));
  }

  void _addUserMessage(String text) {
    setState(() => _messages.add(ChatMessage(text: text, isUser: true)));
  }

  Future<void> _typeMessage(String text) async {
    setState(() => _isAiTyping = true);
    await Future.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      setState(() {
        _isAiTyping = false;
        _addAiMessage(text);
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _handleUserMessage(String text) {
    if (text.trim().isEmpty) return;

    _addUserMessage(text);
    _controller.clear();
    _scrollToBottom();

    final name = ref.read(onboardingAiNameProvider);

    if (_step == 0) {
      // User named the AI
      ref.read(onboardingAiNameProvider.notifier).state = text;
      setState(() => _step = 1);
      _typeMessage('$text? Adorei! Posso ajudar com listas, categorizar itens, dar sugestões e muito mais.\n\nQual sua comida favorita?');
    } else if (_step == 1) {
      // User told favorite food
      ref.read(onboardingFavoriteFoodProvider.notifier).state = text;
      setState(() => _step = 2);
      _typeMessage('Hmm, delícia! E como você prepara? Posso sugerir os ingredientes!');
    } else if (_step == 2) {
      // User described preparation or asked for suggestion
      setState(() => _step = 3);
      final food = ref.read(onboardingFavoriteFoodProvider).toLowerCase();
      final ingredients = _findIngredients(food);
      final listText = ingredients.isNotEmpty
          ? 'Pronto! Organizei sua lista:\n\n${ingredients.map((i) => '• $i').join('\n')}\n\nQuer ir pra lista de compras ou continuar conversando?'
          : 'Pronto! Anotei aqui. Quer ir pra lista de compras ou continuar conversando?';
      _typeMessage(listText);
    }
  }

  List<String> _findIngredients(String food) {
    for (final entry in _foodMap.entries) {
      if (food.contains(entry.key)) return entry.value;
    }
    // Generate generic list based on food type
    return ['$food (ingrediente principal)', 'temperos a gosto', 'acompanhamento'];
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      children: [
        // Header
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.lg, vertical: Spacing.md),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(color: theme.colorScheme.outlineVariant),
            ),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: theme.colorScheme.primary,
                child: const Icon(Icons.smart_toy, color: Colors.white),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  ref.watch(onboardingAiNameProvider).isNotEmpty
                      ? ref.watch(onboardingAiNameProvider)
                      : 'Assistente',
                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        // Messages
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(Spacing.md),
            itemCount: _messages.length + (_isAiTyping ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == _messages.length && _isAiTyping) {
                return const ChatBubble(text: '', isUser: false, isTyping: true);
              }
              final msg = _messages[index];
              return ChatBubble(text: msg.text, isUser: msg.isUser);
            },
          ),
        ),
        // Input
        if (_step < 3)
          Container(
            padding: const EdgeInsets.all(Spacing.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              border: Border(
                top: BorderSide(color: theme.colorScheme.outlineVariant),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: l10n.onboardingChatPlaceholder,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.md, vertical: Spacing.sm),
                    ),
                    onSubmitted: _isAiTyping ? null : (_) => _handleUserMessage(_),
                  ),
                ),
                const SizedBox(width: Spacing.sm),
                IconButton.filled(
                  onPressed: _isAiTyping
                      ? null
                      : () => _handleUserMessage(_controller.text),
                  icon: const Icon(Icons.send_rounded),
                ),
              ],
            ),
          )
        else
          // Choices after list is ready
          Padding(
            padding: const EdgeInsets.all(Spacing.lg),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: widget.onChatComplete,
                    icon: const Icon(Icons.list_alt),
                    label: Text(l10n.onboardingGoToList),
                  ),
                ),
                const SizedBox(height: Spacing.sm),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      setState(() {
                        _step = 1;
                        _addAiMessage('Claro! Qual sua comida favorita?');
                      });
                    },
                    icon: const Icon(Icons.chat),
                    label: Text(l10n.onboardingKeepChatting),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
```

- [ ] **Step 2: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_ai_chat.dart
git commit -m "feat: add simulated AI chat onboarding"
```

---

### Task 7: Create Login Slide

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_login.dart`

Same as previously designed — Google/Apple buttons + guest link. Reference the previous plan's Task 5 code.

- [ ] **Step 1: Write the file** (same as Task 5 from previous plan)
- [ ] **Step 2: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_login.dart
git commit -m "feat: add onboarding login slide"
```

---

### Task 8: Create Share Slide

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_share.dart`

```dart
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideShare extends StatelessWidget {
  const OnboardingSlideShare({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: theme.colorScheme.tertiary.withAlpha((0.1 * 255).toInt()),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.group,
              size: 64,
              color: theme.colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Text(
            l10n.onboardingShareTitle,
            style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            l10n.onboardingShareDesc,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 1: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_share.dart
git commit -m "feat: add onboarding share slide"
```

---

### Task 9: Create Premium Paywall Slide

**Files:**
- Create: `lib/app/onboarding/screens/onboarding_slide_premium.dart`

Same as previously designed — RevenueCat offerings, annual highlighted, monthly behind "View all plans", purchase + restore. Reference Task 7 from previous plan.

- [ ] **Step 1: Write the file** (same code as previous plan's Task 7)
- [ ] **Step 2: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_premium.dart
git commit -m "feat: add onboarding premium paywall slide"
```

---

### Task 10: Rewrite Onboarding Screen Scaffold

**Files:**
- Rewrite: `lib/app/onboarding/screens/onboarding_screen.dart`

- [ ] **Step 1: Write the main scaffold**

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_state_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_ai_chat.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_login.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_share.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_premium.dart';
import 'package:shopping_list/app/onboarding/widgets/onboarding_dots.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  bool _showPageView = false;
  int _currentSlide = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool get _isLastSlide => _currentSlide == 2;

  Future<void> _exitOnboarding() async {
    await ref.read(onboardingProvider.notifier).markAsSeen();
  }

  void _onChatComplete() {
    setState(() => _showPageView = true);
  }

  void _onLoginComplete() {
    _goToSlide(1);
  }

  void _goToSlide(int index) {
    setState(() => _currentSlide = index);
    _pageController.animateToPage(
      index,
      duration: DurationTokens.normal,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // AI Chat (full screen)
            if (!_showPageView)
              OnboardingAiChat(onChatComplete: _onChatComplete)
            else ...[
              // Login → Share → Premium slides
              PageView(
                controller: _pageController,
                physics: _isLastSlide
                    ? const NeverScrollableScrollPhysics()
                    : const PageScrollPhysics(),
                onPageChanged: (index) => setState(() => _currentSlide = index),
                children: [
                  OnboardingSlideLogin(
                    onLoggedIn: _onLoginComplete,
                    onSkipped: () => _goToSlide(1),
                  ),
                  const OnboardingSlideShare(),
                  const OnboardingSlidePremium(),
                ],
              ),
              // Dot indicators (slides 2-4)
              Positioned(
                bottom: Spacing.xl,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OnboardingDots(
                      count: 3,
                      currentIndex: _currentSlide,
                      activeColor: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: Spacing.lg),
                    if (!_isLastSlide)
                      FilledButton.tonalIcon(
                        onPressed: () => _goToSlide(_currentSlide + 1),
                        icon: const Icon(Icons.arrow_forward),
                        label: const SizedBox.shrink(),
                      ),
                  ],
                ),
              ),
            ],
            // X button (top right, always visible)
            Positioned(
              top: Spacing.sm,
              right: Spacing.sm,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: _exitOnboarding,
                style: IconButton.styleFrom(
                  foregroundColor: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            // Skip link shown during chat only
            if (!_showPageView)
              Positioned(
                top: Spacing.sm,
                left: Spacing.sm,
                child: TextButton(
                  onPressed: () {
                    ref.read(onboardingProvider.notifier).markAsSeen();
                  },
                  child: Text(
                    l10n.onboardingSkipToApp,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
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

- [ ] **Step 2: Remove `introduction_screen` from pubspec if unused**

```bash
grep -r "introduction_screen" lib/ --include="*.dart" | grep -v ".dart" || echo "No usages found"
```

If no usages: remove from pubspec.yaml and run `flutter pub get`.

- [ ] **Step 3: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_screen.dart
git commit -m "feat: rewrite onboarding with AI chat + slides"
```

---

### Task 11: Add Default Screen Setting to Settings Screen

**Files:**
- Modify: `lib/app/settings/screens/settings_screen.dart`

- [ ] **Step 1: Search for settings screen file**

```bash
ls lib/app/settings/screens/
```

Expected output includes `settings_screen.dart` or similar.

- [ ] **Step 2: Add the default screen toggle**

Find the settings list and add a ListTile after existing preference options:

```dart
// Inside the settings list, add:
ListTile(
  leading: const Icon(Icons.home_work),
  title: Text(l10n.settingsDefaultScreen),
  subtitle: Text(l10n.settingsDefaultScreenSubtitle),
  trailing: SegmentedButton<String>(
    segments: [
      ButtonSegment(
        value: 'list',
        label: Text(l10n.settingsScreenList),
        icon: const Icon(Icons.list_alt),
      ),
      ButtonSegment(
        value: 'chat',
        label: Text(l10n.settingsScreenChat),
        icon: const Icon(Icons.chat),
      ),
    ],
    selected: {ref.watch(defaultScreenProvider).valueOrNull ?? 'list'},
    onSelectionChanged: (selected) {
      ref.read(defaultScreenProvider.notifier).setScreen(selected.first);
    },
  ),
),
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/settings/screens/settings_screen.dart
git commit -m "feat: add default home screen setting"
```

---

### Task 12: Verify Build

- [ ] **Step 1: Run analyzer**

```bash
flutter analyze --fatal-infos
```

Expected: No new errors related to onboarding files.

- [ ] **Step 2: Run build_runner**

```bash
dart run build_runner build --delete-conflicting-outputs
```

- [ ] **Step 3: Custom lints**

```bash
cd custom_lints && dart analyze lib/ && cd ..
```

Expected: "No issues found!"
