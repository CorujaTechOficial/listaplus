import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import '../providers/onboarding_data_provider.dart';

import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/services/ai_service.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/services/logger_service.dart';

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
  final _textController = TextEditingController();
  bool _isAiTyping = false;
  bool _hasText = false;
  _ChatStep _step = _ChatStep.greeting;
  bool _showCategoryPicker = false;
  AiCancellationToken? _cancelToken;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      final hasText = _textController.text.trim().isNotEmpty;
      if (hasText != _hasText) {
        setState(() {
          _hasText = hasText;
        });
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _startChat());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    _cancelToken?.cancel();
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
    if (!mounted) {
      return;
    }
    await _addAiMessage(l10n.onboardingAiDemoOffer);
    if (mounted) {
      setState(() => _step = _ChatStep.offered);
    }
  }

  String _categoryLabel(String key, AppLocalizations l10n) {
    return switch (key) {
      'grocery' => l10n.onboardingCategoryGrocery,
      'pharmacy' => l10n.onboardingCategoryPharmacy,
      'recipes' => l10n.onboardingCategoryRecipes,
      'home' => l10n.onboardingCategoryHome,
      'pet' => l10n.onboardingCategoryPet,
      _ => 'shopping',
    };
  }

  Future<void> _addAiMessage(String text) async {
    setState(() => _isAiTyping = true);
    await Future<void>.delayed(500.ms);
    if (!mounted) {
      return;
    }
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

  Future<void> _sendPrompt(String promptText) async {
    if (promptText.trim().isEmpty) {
      return;
    }

    final l10n = AppLocalizations.of(context)!;
    
    setState(() {
      _messages.add(_ChatMessage(isUser: true, text: promptText));
      _step = _ChatStep.generating;
      _isAiTyping = true;
    });
    _scrollToBottom();

    final userPrefs = ref.read(onboardingDataProvider);
    final categoryName = _categoryLabel(userPrefs.shoppingCategory, l10n);
    final householdSize = userPrefs.householdSize.isNotEmpty ? userPrefs.householdSize : 'solo';
    
    final systemPrompt = 'Você é o Kipi, o assistente inteligente de compras do aplicativo KipiList.\n'
        'O usuário está configurando o aplicativo pela primeira vez no onboarding.\n'
        'Sua tarefa é gerar uma lista de compras realista de 5 a 8 itens principais baseando-se no pedido do usuário e no perfil dele:\n'
        'Categoria de compras favorita: $categoryName\n'
        'Tamanho da família/grupo: $householdSize\n\n'
        'IMPORTANTE:\n'
        '1. Retorne a resposta em português brasileiro (ou no idioma da solicitação se for diferente).\n'
        '2. Formate a resposta como uma lista direta de itens de compras, com um emoji no início de cada item (ex: \'🍎 Maçã (1 kg)\' ou \'🥛 Leite integral\').\n'
        '3. Não escreva textos explicativos ou introduções longas. Vá direto ao ponto para que possamos salvar a lista para o usuário.\n'
        '4. Coloque cada item em uma nova linha.';

    _cancelToken = AiCancellationToken();

    final history = _messages.map((m) => ChatMessage(
      role: m.isUser ? 'user' : 'assistant',
      content: m.text,
    )).toList();

    try {
      final aiService = ref.read(aiServiceProvider);
      final stream = aiService.getChatCompletionStream(
        history,
        systemPrompt: systemPrompt,
        cancelToken: _cancelToken,
      );

      setState(() {
        _messages.add(const _ChatMessage(isUser: false, text: ''));
      });

      final buffer = StringBuffer();
      await for (final chunk in stream) {
        if (!mounted || _cancelToken?.isCancelled == true) {
          return;
        }
        buffer.write(chunk);
        setState(() {
          _isAiTyping = false;
          _messages[_messages.length - 1] = _ChatMessage(
            isUser: false,
            text: buffer.toString(),
          );
        });
        _scrollToBottom();
      }

      if (mounted && _cancelToken?.isCancelled != true) {
        setState(() {
          _step = _ChatStep.done;
        });
        
        final parsed = _parseGeneratedList(buffer.toString());
        if (parsed.isNotEmpty) {
          final listName = '${_categoryLabel(userPrefs.shoppingCategory, l10n)} 🛒';
          await _saveList(listName, parsed);
        }
      }
    } on Exception catch (e, s) {
      LoggerService.error(e, stackTrace: s, message: 'Erro ao gerar lista na IA no onboarding');
      if (mounted) {
        setState(() {
          _isAiTyping = false;
          _step = _ChatStep.done;
        });
      }
    }
  }

  List<String> _parseGeneratedList(String text) {
    final lines = text.split('\n');
    final items = <String>[];
    for (var line in lines) {
      line = line.trim();
      if (line.isEmpty) {
        continue;
      }
      line = line.replaceFirst(RegExp(r'^[-*•\d\.\s#]+'), '').trim();
      if (line.length > 50) {
        continue;
      }
      if (line.isNotEmpty) {
        items.add(line);
      }
    }
    return items;
  }

  Future<void> _saveList(String name, List<String> parsedItems) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) {
      return;
    }
    try {
      final newList = ShoppingList(name: name);
      await service.saveList(newList);

      final items = parsedItems.map((itemName) {
        return ShoppingItem(
          shoppingListId: newList.id,
          name: itemName,
          quantity: 1,
          categoryId: 'others',
        );
      }).toList();

      await service.saveItems(items);
      await ref.read(currentListIdProvider.notifier).setCurrentList(newList.id);
      
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        setState(() {
          _messages.add(_ChatMessage(
            isUser: false,
            text: '✅ ${l10n.onboardingAiChatSaved}',
          ));
        });
        _scrollToBottom();
      }
    } on Exception catch (e, s) {
      LoggerService.error(e, stackTrace: s, message: 'Failed to save onboarding list');
    }
  }

  void _onChangeCategory() {
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _messages.add(_ChatMessage(isUser: true, text: l10n.onboardingAiDemoChange));
      _showCategoryPicker = true;
      _step = _ChatStep.greeting;
    });
  }

  Future<void> _onCategorySelected(String key) async {
    ref.read(onboardingDataProvider.notifier).updateShoppingCategory(key);
    setState(() => _showCategoryPicker = false);

    final l10n = AppLocalizations.of(context)!;
    await _addAiMessage(l10n.onboardingAiDemoOffer);
    if (mounted) {
      setState(() => _step = _ChatStep.offered);
    }
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
          else ...[
            if (_step == _ChatStep.offered) _buildSuggestionChips(l10n, theme),
            _buildInputArea(theme, l10n),
          ],
        ],
      ),
    );
  }

  Widget _buildSuggestionChips(AppLocalizations l10n, ThemeData theme) {
    final category = ref.watch(onboardingDataProvider).shoppingCategory;
    final suggestions = <String>[];
    
    switch (category) {
      case 'grocery':
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        suggestions.add(l10n.onboardingAiChatSuggestRecipes);
        break;
      case 'recipes':
        suggestions.add(l10n.onboardingAiChatSuggestRecipes);
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        break;
      case 'pet':
        suggestions.add(l10n.onboardingAiChatSuggestPet);
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        break;
      case 'pharmacy':
        suggestions.add(l10n.onboardingAiChatSuggestPharmacy);
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        break;
      case 'home':
        suggestions.add(l10n.onboardingAiChatSuggestHome);
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        break;
      default:
        suggestions.add(l10n.onboardingAiChatSuggestGrocery);
        suggestions.add(l10n.onboardingAiChatSuggestRecipes);
        break;
    }

    return Container(
      height: 44,
      margin: const EdgeInsets.only(bottom: Spacing.xs),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return Padding(
            padding: const EdgeInsets.only(right: Spacing.xs),
            child: ActionChip(
              label: Text(
                suggestion,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              onPressed: () => _sendPrompt(suggestion),
              backgroundColor: theme.colorScheme.surfaceContainerHighest.withAlpha(120),
              side: BorderSide(
                color: theme.colorScheme.outlineVariant.withAlpha(100),
                width: 0.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInputArea(ThemeData theme, AppLocalizations l10n) {
    if (_step == _ChatStep.done) {
      return Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: FilledButton(
            onPressed: widget.onFinished,
            style: FilledButton.styleFrom(
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

    final isGenerating = _step == _ChatStep.generating;

    return Container(
      padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.xs, Spacing.md, Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withAlpha(80),
            width: 0.5,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            if (_step == _ChatStep.offered) ...[
              IconButton(
                onPressed: isGenerating ? null : _onChangeCategory,
                icon: const Icon(Icons.tune_rounded),
                tooltip: l10n.onboardingAiDemoChange,
              ),
              const SizedBox(width: Spacing.xs),
            ],
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest.withAlpha(150),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(horizontal: Spacing.sm),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        enabled: !isGenerating,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (val) {
                          if (val.trim().isNotEmpty) {
                            _sendPrompt(val);
                            _textController.clear();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: l10n.onboardingAiChatHint,
                          hintStyle: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: Spacing.xs,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                    if (isGenerating)
                      const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    else
                      IconButton(
                        onPressed: _hasText
                            ? () {
                                final text = _textController.text;
                                _sendPrompt(text);
                                _textController.clear();
                              }
                            : (_step == _ChatStep.offered
                                ? () => _sendPrompt(l10n.onboardingAiDemoYes)
                                : null),
                        icon: Icon(
                          _hasText ? Icons.send_rounded : Icons.play_arrow_rounded,
                          color: _hasText || _step == _ChatStep.offered
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onSurfaceVariant.withAlpha(100),
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
