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
    if (!mounted) {
      return;
    }
    setState(() => _isAiTyping = false);

    final buffer = StringBuffer();
    for (final item in items) {
      buffer.writeln('• $item');
      await Future<void>.delayed(200.ms);
      if (!mounted) {
        return;
      }
      setState(() {
        _messages.last = _ChatMessage(isUser: false, text: buffer.toString().trimRight());
      });
      _scrollToBottom();
    }

    await Future<void>.delayed(500.ms);
    if (!mounted) {
      return;
    }
    await _addAiMessage(l10n.onboardingAiDemoReaction(items.length));
    if (mounted) {
      setState(() => _step = _ChatStep.done);
    }
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
