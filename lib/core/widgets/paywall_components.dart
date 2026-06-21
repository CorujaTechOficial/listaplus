/// Shared presentational building blocks for the KipiList paywalls.
///
/// Design intent (PRODUCT.md): monetization should feel calm and premium —
/// hierarchy and whitespace over noise. These widgets favor a single quiet
/// surface, restrained accents (brand green for action, amber only for the
/// premium marker), and no nested cards.
library;

import 'package:flutter/material.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// Small amber "PRO" marker used in the hero lockup instead of a loud icon
/// badge. Amber is reserved for premium signaling.
class PaywallProBadge extends StatelessWidget {
  const PaywallProBadge({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.premiumAmber,
        borderRadius: BorderRadius.circular(RadiusTokens.xs),
      ),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: AppColors.onPremiumAmber,
          fontWeight: FontWeight.w800,
          fontSize: 11,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

/// A single quiet line of social proof (star + text). No box.
class PaywallRatingLine extends StatelessWidget {
  const PaywallRatingLine({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      children: [
        const Icon(PhosphorIconsFill.star, size: 16, color: AppColors.premiumAmber),
        const SizedBox(width: Spacing.xxs),
        Flexible(
          child: Text(
            text,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

/// The one value surface on the paywall: a calm panel that groups the premium
/// benefits. Deliberately the only card on the screen — no nesting inside it.
class PaywallValuePanel extends StatelessWidget {
  const PaywallValuePanel({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.xl),
        border: Border.all(color: scheme.outlineVariant.withAlpha(90)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurfaceVariant,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          ...children,
        ],
      ),
    );
  }
}

/// One benefit row inside [PaywallValuePanel]. Bare leading icon in brand
/// green, no box, consistent rhythm. [emphasized] promotes the headline
/// benefit (e.g. the AI assistant) with a supporting subtitle.
class PaywallValueRow extends StatelessWidget {
  const PaywallValueRow({
    required this.text,
    this.icon,
    this.subtitle,
    this.emphasized = false,
    this.isLast = false,
    super.key,
  });

  final String text;
  final IconData? icon;
  final String? subtitle;
  final bool emphasized;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : Spacing.sm),
      child: Row(
        crossAxisAlignment:
            subtitle != null
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        children: [
          Icon(
            icon ?? PhosphorIconsFill.checkCircle,
            size: 20,
            color: scheme.primary,
          ),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style:
                      emphasized
                          ? theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: scheme.onSurface,
                          )
                          : theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: scheme.onSurface,
                          ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    subtitle!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                      height: 1.35,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// A selectable plan row. Calm by default; selection is carried by a brand
/// green border, a faint tint and a soft lift — not a full-width color banner.
/// The optional [badgeText] surfaces as a small amber pill on the corner.
class PaywallPlanTile extends StatelessWidget {
  const PaywallPlanTile({
    required this.name,
    required this.priceString,
    required this.selected,
    required this.onTap,
    this.caption,
    this.trialText,
    this.badgeText,
    super.key,
  });

  final String name;
  final String priceString;
  final bool selected;
  final VoidCallback onTap;
  final String? caption;
  final String? trialText;
  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    final bool hasBadge = badgeText != null && badgeText!.isNotEmpty;

    return Semantics(
      selected: selected,
      button: true,
      label: name,
      child: AnimatedContainer(
        duration: DurationTokens.fast,
        curve: Curves.easeOutCubic,
        decoration: BoxDecoration(
          color:
              selected ? scheme.primaryContainer.withAlpha(70) : scheme.surface,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: Border.all(
            color: selected ? scheme.primary : scheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          boxShadow:
              selected
                  ? [
                    BoxShadow(
                      color: scheme.primary.withAlpha(40),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ]
                  : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: Spacing.md,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        selected
                            ? PhosphorIconsFill.radioButton
                            : PhosphorIconsRegular.circle,
                        color:
                            selected
                                ? scheme.primary
                                : scheme.onSurfaceVariant.withAlpha(120),
                      ),
                      const SizedBox(width: Spacing.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color:
                                    selected
                                        ? scheme.primary
                                        : scheme.onSurface,
                              ),
                            ),
                            if (caption != null) ...[
                              const SizedBox(height: 2),
                              Text(
                                caption!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                            if (trialText != null) ...[
                              const SizedBox(height: Spacing.xxs),
                              Text(
                                trialText!,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: AppColors.premiumAmber,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Text(
                        priceString,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: selected ? scheme.primary : scheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                if (hasBadge)
                  Positioned(
                    top: -10,
                    right: Spacing.md,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.premiumAmber,
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                      ),
                      child: Text(
                        badgeText!,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: AppColors.onPremiumAmber,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Free-trial timeline (today → reminder → charge). A trust device that makes
/// the billing moment transparent. Borderless rows on a quiet panel.
class PaywallTrialTimeline extends StatelessWidget {
  const PaywallTrialTimeline({
    required this.trialDays,
    required this.todayLabel,
    required this.todayDesc,
    required this.reminderLabel,
    required this.reminderDesc,
    required this.chargeLabel,
    required this.chargeDesc,
    super.key,
  });

  final int trialDays;
  final String todayLabel;
  final String todayDesc;
  final String reminderLabel;
  final String reminderDesc;
  final String chargeLabel;
  final String chargeDesc;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;

    final List<_TimelineStep> steps = <_TimelineStep>[
      _TimelineStep(
        icon: PhosphorIconsRegular.lockOpen,
        label: todayLabel,
        desc: todayDesc,
        accent: true,
      ),
      _TimelineStep(
        icon: PhosphorIconsRegular.bellRinging,
        label: reminderLabel,
        desc: reminderDesc,
      ),
      _TimelineStep(
        icon: PhosphorIconsRegular.calendarCheck,
        label: chargeLabel,
        desc: chargeDesc,
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.xl),
        border: Border.all(color: scheme.outlineVariant.withAlpha(90)),
      ),
      child: Column(
        children: [
          for (int i = 0; i < steps.length; i++)
            _TimelineRow(
              step: steps[i],
              isLast: i == steps.length - 1,
              scheme: scheme,
              theme: theme,
            ),
        ],
      ),
    );
  }
}

class _TimelineStep {
  const _TimelineStep({
    required this.icon,
    required this.label,
    required this.desc,
    this.accent = false,
  });

  final IconData icon;
  final String label;
  final String desc;
  final bool accent;
}

class _TimelineRow extends StatelessWidget {
  const _TimelineRow({
    required this.step,
    required this.isLast,
    required this.scheme,
    required this.theme,
  });

  final _TimelineStep step;
  final bool isLast;
  final ColorScheme scheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final Color dotColor =
        step.accent ? scheme.primary : scheme.surfaceContainerHighest;
    final Color iconColor =
        step.accent ? scheme.onPrimary : scheme.onSurfaceVariant;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(step.icon, size: 18, color: iconColor),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: scheme.outlineVariant.withAlpha(128),
                  ),
                ),
            ],
          ),
          const SizedBox(width: Spacing.md),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : Spacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.label,
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    step.desc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Quiet reassurance lines under the CTA: trial/cancel disclaimer plus the
/// precise billing disclosure. Plain centered text, no box.
class PaywallTrustLines extends StatelessWidget {
  const PaywallTrustLines({
    required this.disclaimer,
    required this.billing,
    super.key,
  });

  final String disclaimer;
  final String billing;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return Column(
      children: [
        Text(
          disclaimer,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(
            color: scheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          billing,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(
            color: scheme.onSurfaceVariant,
            height: 1.35,
          ),
        ),
      ],
    );
  }
}

/// Lock + store reassurance, a single centered line.
class PaywallSecuredLine extends StatelessWidget {
  const PaywallSecuredLine({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(PhosphorIconsRegular.lock, size: 13, color: scheme.outline),
        const SizedBox(width: Spacing.xxs),
        Flexible(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelSmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
