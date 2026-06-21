import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/widgets/animated_typing_dots.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class ThinkingIndicator extends ConsumerWidget {
  const ThinkingIndicator({super.key, this.listId});

  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final activityDescription = ref.watch(chatActivityProvider(listId));

    // Announce generation as a single live region so a screen reader speaks the
    // current activity ("searching", "adding items") or a generic fallback —
    // state granularity, never the per-token stream. The animated dots are
    // decorative and excluded from semantics.
    return Semantics(
      liveRegion: true,
      container: true,
      label: activityDescription ?? l10n.aiGeneratingResponse,
      child: ExcludeSemantics(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Spacing.xs,
            horizontal: Spacing.xxs,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.10),
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/images/kipi/kipi_helper.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: Spacing.xs),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(RadiusTokens.bubble),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AnimatedTypingDots(),
                    if (activityDescription != null) ...[
                      const SizedBox(width: Spacing.xs),
                      Text(
                        activityDescription,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
