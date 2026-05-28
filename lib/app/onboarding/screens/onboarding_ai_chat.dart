import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_state_provider.dart' show ChatMessage, onboardingAiNameProvider, onboardingFavoriteFoodProvider;
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

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
  static const _foodMap = <String, List<String>>{
    'strogonoff': ['alcatra', 'creme de leite', 'ketchup', 'mostarda', 'cebola', 'champignon', 'arroz', 'batata palha'],
    'lasanha': ['massa para lasanha', 'carne moída', 'molho de tomate', 'queijo muçarela', 'presunto', 'creme de leite'],
    'feijoada': ['feijão preto', 'carne seca', 'costelinha', 'linguiça', 'lombo', 'alho', 'cebola', 'louro'],
    'churrasco': ['picanha', 'alcatra', 'linguiça', 'frango', 'pão de alho', 'carvão', 'sal grosso', 'cerveja'],
    'salada': ['alface', 'tomate', 'cenoura', 'pepino', 'cebola roxa', 'azeite', 'vinagre', 'limão'],
  };

  final List<ChatMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    _startGreeting();
  }

  void _startGreeting() {
    final l10n = AppLocalizations.of(context)!;
    _typeMessage(l10n.onboardingAiGreeting);
  }

  void _addAiMessage(String text) {
    setState(() => _messages.add(ChatMessage(text: text, isUser: false)));
  }

  void _addUserMessage(String text) {
    setState(() => _messages.add(ChatMessage(text: text, isUser: true)));
  }

  Future<void> _typeMessage(String text) async {
    setState(() => _isAiTyping = true);
    await Future<void>.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      setState(() {
        _isAiTyping = false;
        _addAiMessage(text);
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    Future<void>.delayed(const Duration(milliseconds: 100), () {
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
    if (text.trim().isEmpty) {
      return;
    }

    _addUserMessage(text);
    _controller.clear();
    _scrollToBottom();

    final l10n = AppLocalizations.of(context)!;

    if (_step == 0) {
      // User named the AI
      ref.read<StateController<String>>(onboardingAiNameProvider.notifier).state = text;
      setState(() => _step = 1);
      _typeMessage(l10n.onboardingAiNameResponse(text));
    } else if (_step == 1) {
      // User told favorite food
      ref.read<StateController<String>>(onboardingFavoriteFoodProvider.notifier).state = text;
      setState(() => _step = 2);
      _typeMessage(l10n.onboardingAiFoodResponse);
    } else if (_step == 2) {
      // User described preparation or asked for suggestion
      setState(() => _step = 3);
      final food = ref.read<String>(onboardingFavoriteFoodProvider).toLowerCase();
      final ingredients = _findIngredients(food);
      final listText = ingredients.isNotEmpty
          ? '${l10n.onboardingAiListReady}\n\n${ingredients.map((i) => '• $i').join('\n')}'
          : l10n.onboardingAiListReady;
      _typeMessage(listText);
    }
  }

  List<String> _findIngredients(String food) {
    for (final entry in _foodMap.entries) {
      if (food.contains(entry.key)) {
        return entry.value;
      }
    }
    // Generic fallback
    return ['$food (main ingredient)', 'seasonings to taste', 'side dish of choice'];
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
    final aiName = ref.watch<String>(onboardingAiNameProvider);

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
                  aiName.isNotEmpty ? aiName : 'Assistente',
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
        // Input area
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
                        horizontal: Spacing.md,
                        vertical: Spacing.sm,
                      ),
                    ),
                    onSubmitted: _isAiTyping ? null : _handleUserMessage,
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
                      setState(() => _step = 1);
                      _addAiMessage('Claro! Qual sua comida favorita?');
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
