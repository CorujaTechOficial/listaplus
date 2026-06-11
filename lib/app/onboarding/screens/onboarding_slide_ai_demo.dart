import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideAiDemo extends StatefulWidget {
  const OnboardingSlideAiDemo({super.key, required this.onFinished});
  final VoidCallback onFinished;

  @override
  State<OnboardingSlideAiDemo> createState() => _OnboardingSlideAiDemoState();
}

class _OnboardingSlideAiDemoState extends State<OnboardingSlideAiDemo> {
  static const _demoItems = [
    '🥩 Picanha (1 kg)',
    '🌽 Milho verde',
    '🍺 Cerveja gelada (12 un)',
    '🧀 Queijo coalho',
    '🧅 Cebola e alho',
    '🍋 Limão para tempero',
  ];

  bool _showUserMsg = false;
  bool _showTyping = false;
  bool _showAiMsg = false;
  bool _isDone = false;
  bool _showCta = false;
  final List<String> _visibleItems = [];

  @override
  void initState() {
    super.initState();
    _runSequence();
  }

  Future<void> _runSequence() async {
    await Future<void>.delayed(700.ms);
    if (!mounted) {
      return;
    }
    setState(() => _showUserMsg = true);

    await Future<void>.delayed(900.ms);
    if (!mounted) {
      return;
    }
    setState(() => _showTyping = true);

    await Future<void>.delayed(1100.ms);
    if (!mounted) {
      return;
    }
    setState(() {
      _showTyping = false;
      _showAiMsg = true;
    });

    for (final item in _demoItems) {
      await Future<void>.delayed(260.ms);
      if (!mounted) {
        return;
      }
      setState(() => _visibleItems.add(item));
    }

    await Future<void>.delayed(500.ms);
    if (!mounted) {
      return;
    }
    setState(() {
      _isDone = true;
      _showCta = true;
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  Spacing.lg,
                  Spacing.lg,
                  Spacing.lg,
                  Spacing.sm,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/kipi/kipi_helper.png',
                      height: 60,
                      filterQuality: FilterQuality.high,
                    )
                        .animate()
                        .fadeIn(duration: 500.ms)
                        .scale(begin: const Offset(0.6, 0.6)),
                    const SizedBox(height: Spacing.md),
                    Text(
                      l10n.onboardingAiDemoSlideHeadline,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    )
                        .animate()
                        .fadeIn(delay: 300.ms, duration: 500.ms)
                        .slideY(begin: 0.2, end: 0),
                    const SizedBox(height: Spacing.xs),
                    Text(
                      l10n.onboardingAiDemoSlideSubtitle,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withAlpha(200),
                      ),
                    ).animate().fadeIn(delay: 500.ms, duration: 400.ms),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(60),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Column(
                        children: [
                          _ChatHeader(theme: theme),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(Spacing.md),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (_showUserMsg)
                                    _UserBubble(
                                      text: l10n.onboardingAiDemoSlideUserMsg,
                                      theme: theme,
                                    ),
                                  if (_showTyping) _TypingBubble(theme: theme),
                                  if (_showAiMsg)
                                    _AiBubble(
                                      theme: theme,
                                      l10n: l10n,
                                      items: _visibleItems,
                                      isDone: _isDone,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Spacing.lg),
                child: AnimatedOpacity(
                  opacity: _showCta ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 400),
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: _showCta ? widget.onFinished : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                        elevation: 4,
                        shadowColor: Colors.black.withAlpha(60),
                      ),
                      child: Text(
                        l10n.onboardingAiDemoSlideCta,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatHeader extends StatelessWidget {
  const _ChatHeader({required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.sm,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withAlpha(80),
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.premiumAmber.withAlpha(40),
            child: Image.asset(
              'assets/images/kipi/kipi_helper.png',
              height: 18,
            ),
          ),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kipi IA',
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'online',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: AppColors.premiumAmber.withAlpha(30),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              '✦ IA Agêntica',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                color: AppColors.premiumAmber,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserBubble extends StatelessWidget {
  const _UserBubble({required this.text, required this.theme});
  final String text;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: Spacing.sm, left: 48),
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.sm,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(18).copyWith(
            bottomRight: const Radius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
          ),
        ),
      )
          .animate()
          .fadeIn(duration: 300.ms)
          .slideX(begin: 0.2, end: 0),
    );
  }
}

class _TypingBubble extends StatefulWidget {
  const _TypingBubble({required this.theme});
  final ThemeData theme;

  @override
  State<_TypingBubble> createState() => _TypingBubbleState();
}

class _TypingBubbleState extends State<_TypingBubble>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Spacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 13,
            backgroundColor: AppColors.premiumAmber.withAlpha(30),
            child: Image.asset(
              'assets/images/kipi/kipi_helper.png',
              height: 16,
            ),
          ),
          const SizedBox(width: Spacing.xs),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: widget.theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(18).copyWith(
                bottomLeft: const Radius.circular(4),
              ),
            ),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, _) => Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(3, (i) {
                  final phase =
                      _controller.value * 2 * math.pi + i * 1.2;
                  final scale = 0.5 + 0.5 * (math.sin(phase) + 1) / 2;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Transform.scale(
                      scale: scale,
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: widget.theme.colorScheme.onSurfaceVariant,
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
    ).animate().fadeIn(duration: 200.ms);
  }
}

class _AiBubble extends StatelessWidget {
  const _AiBubble({
    required this.theme,
    required this.l10n,
    required this.items,
    required this.isDone,
  });
  final ThemeData theme;
  final AppLocalizations l10n;
  final List<String> items;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 13,
              backgroundColor: AppColors.premiumAmber.withAlpha(30),
              child: Image.asset(
                'assets/images/kipi/kipi_helper.png',
                height: 16,
              ),
            ),
            const SizedBox(width: Spacing.xs),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(Spacing.sm),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(18).copyWith(
                    bottomLeft: const Radius.circular(4),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.onboardingAiDemoSlideReady,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    ...items.map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          '  $item',
                          style: theme.textTheme.bodyMedium,
                        )
                            .animate()
                            .fadeIn(duration: 200.ms)
                            .slideX(begin: -0.08, end: 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (isDone)
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: Spacing.sm),
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.xs,
              ),
              decoration: BoxDecoration(
                color: Colors.green.withAlpha(25),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.green.withAlpha(60)),
              ),
              child: Text(
                l10n.onboardingAiDemoSlideDone,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
                .animate()
                .fadeIn(duration: 400.ms)
                .scale(begin: const Offset(0.8, 0.8)),
          ),
      ],
    );
  }
}
