import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/utils/test_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// First-run surface for the assistant. Leads with Kipi's identity, a warm
/// greeting, and three concrete capabilities the user can tap to start — the
/// pitch of the screen, not a "nothing here" message.
class ChatEmptyState extends ConsumerWidget {
  const ChatEmptyState({super.key, required this.onPromptSelected});

  final ValueChanged<String> onPromptSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final reducedMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    final name = ref.watch(
      onboardingDataProvider.select((p) => p.displayName.trim()),
    );

    final greeting =
        name.isEmpty
            ? l10n.chatEmptyGreetingNoName
            : l10n.chatEmptyGreeting(name);

    final capabilities = <_Capability>[
      _Capability(
        icon: PhosphorIconsRegular.shoppingCartSimple,
        label: l10n.aiWelcomeSuggestCreateList,
        prompt: l10n.aiWelcomeSuggestCreateListPrompt,
      ),
      _Capability(
        icon: PhosphorIconsRegular.flame,
        label: l10n.aiWelcomeSuggestBarbecue,
        prompt: l10n.aiWelcomeSuggestBarbecuePrompt,
      ),
      _Capability(
        icon: PhosphorIconsRegular.piggyBank,
        label: l10n.aiWelcomeSuggestSave,
        prompt: l10n.aiWelcomeSuggestSavePrompt,
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.xl,
          vertical: Spacing.xxl,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A single settle on entrance — the mascot greets, then rests.
            // Perpetual bobbing is decorative motion the product register avoids.
            if (isTestMode || reducedMotion)
              Image.asset(
                'assets/images/kipi/kipi_welcome.png',
                width: 120,
                height: 120,
              )
            else
              Image.asset(
                    'assets/images/kipi/kipi_welcome.png',
                    width: 120,
                    height: 120,
                  )
                  .animate()
                  .fadeIn(duration: 320.ms)
                  .moveY(
                    begin: -12,
                    end: 0,
                    duration: 480.ms,
                    curve: Curves.easeOutCubic,
                  ),
            const SizedBox(height: Spacing.lg),
            Text(
                  greeting,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: theme.colorScheme.onSurface,
                  ),
                )
                .animate()
                .fadeIn(duration: 280.ms)
                .slideY(begin: 0.12, end: 0, curve: Curves.easeOutCubic),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.chatEmptyPitch,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                height: 1.5,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.90),
              ),
            ).animate().fadeIn(delay: 80.ms, duration: 280.ms),
            const SizedBox(height: Spacing.xl),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final (i, cap) in capabilities.indexed)
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: i == capabilities.length - 1 ? 0 : Spacing.sm,
                    ),
                    child: _CapabilityButton(
                          capability: cap,
                          onTap: () {
                            HapticFeedback.selectionClick();
                            onPromptSelected(cap.prompt);
                          },
                        )
                        .animate()
                        .fadeIn(delay: (160 + i * 70).ms, duration: 260.ms)
                        .slideY(
                          begin: 0.18,
                          end: 0,
                          curve: Curves.easeOutCubic,
                        ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Capability {
  const _Capability({
    required this.icon,
    required this.label,
    required this.prompt,
  });

  final IconData icon;
  final String label;
  final String prompt;
}

/// A tappable capability: leading icon, label, trailing chevron. Reads as an
/// affordance to start, not a passive chip.
class _CapabilityButton extends StatelessWidget {
  const _CapabilityButton({required this.capability, required this.onTap});

  final _Capability capability;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(RadiusTokens.lg),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 52),
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
            vertical: Spacing.sm,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.18),
            ),
          ),
          child: Row(
            children: [
              Icon(capability.icon, size: 20, color: theme.colorScheme.primary),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  capability.label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              Icon(
                PhosphorIconsRegular.arrowRight,
                size: 18,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
