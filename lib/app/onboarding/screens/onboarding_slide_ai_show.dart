import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import '../providers/onboarding_data_provider.dart';

class OnboardingSlideAiShow extends ConsumerStatefulWidget {
  const OnboardingSlideAiShow({
    super.key,
    required this.onFinished,
  });

  final VoidCallback onFinished;

  @override
  ConsumerState<OnboardingSlideAiShow> createState() => _OnboardingSlideAiShowState();
}

class _OnboardingSlideAiShowState extends ConsumerState<OnboardingSlideAiShow> {
  final _simulationController = TextEditingController();
  final _chatKey = GlobalKey<AiChatPanelState>();
  final String _sessionId = 'onboarding_demo_${DateTime.now().millisecondsSinceEpoch}';

  @override
  void initState() {
    super.initState();
    // Iniciar a simulação após um pequeno delay para a tela carregar
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startFullSimulation();
    });
  }

  @override
  void dispose() {
    _simulationController.dispose();
    super.dispose();
  }

  Future<void> _simulateTyping(String text) async {
    for (int i = 0; i <= text.length; i++) {
      if (!mounted) {
        return;
      }
      setState(() {
        _simulationController.text = text.substring(0, i);
        // Colocar o cursor no final
        _simulationController.selection = TextSelection.fromPosition(
          TextPosition(offset: _simulationController.text.length),
        );
      });
      await Future<void>.delayed(const Duration(milliseconds: 15));
    }
    await Future<void>.delayed(300.ms);
  }

  Future<void> _startFullSimulation() async {
    // Definir o ID da sessão ativa para que o AiChatPanel use o mesmo que nós
    ref.read(activeChatSessionIdProvider(null).notifier).set(_sessionId);

    final data = ref.read(onboardingDataProvider);

    // Pequena pausa inicial
    await Future<void>.delayed(1.seconds);

    // 1. Simular primeira mensagem do usuário
    final food = data.favoriteFood.isNotEmpty ? data.favoriteFood : 'pizza';
    final message1 = 'Oi! Minha comida preferida é $food. Pode me ajudar a organizar os ingredientes para fazer isso?';
    await _simulateTyping(message1);
    
    if (!mounted) {
      return;
    }
    try {
      await _chatKey.currentState?.sendMessage();
    } on Exception catch (_) {
      return;
    }
    _simulationController.clear();

    // Esperar a IA terminar de responder (monitorando o provider de streaming)
    await _waitForAi();

    // 2. Simular segunda interação opcional ou finalizar
    await Future<void>.delayed(2.seconds);
    const message2 = 'Incrível! Já pode colocar tudo na minha lista de compras?';
    await _simulateTyping(message2);
    
    if (!mounted) {
      return;
    }
    try {
      await _chatKey.currentState?.sendMessage();
    } on Exception catch (_) {
      return;
    }
    _simulationController.clear();

    await _waitForAi();

    // Finalizar simulação
    if (mounted) {
      widget.onFinished();
    }
  }

  Future<void> _waitForAi() async {
    await Future<void>.delayed(500.ms);

    final startTime = DateTime.now();
    const maxWait = Duration(seconds: 60);

    while (mounted &&
        (ref.read(chatThinkingProvider(null)) ||
            ref.read(chatStreamingProvider(null)))) {
      if (DateTime.now().difference(startTime) > maxWait) {
        break;
      }
      await Future<void>.delayed(500.ms);
    }
    await Future<void>.delayed(1.seconds);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: Spacing.xl),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
                child: Text(
                  'Veja a Inteligência em ação!',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.sm),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
                child: Text(
                  'Estou preparando tudo para você...',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.md),

              // O CHAT REAL
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(Spacing.md),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: theme.colorScheme.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha((0.05 * 255).toInt()),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: AiChatPanel(
                      key: _chatKey,
                      listId: null,
                      isSimulation: true,
                      externalController: _simulationController,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  }
