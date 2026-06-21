import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HelpSection {
  const HelpSection({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;
}

class ContextualHelpSheet extends StatelessWidget {
  const ContextualHelpSheet({
    super.key,
    required this.title,
    required this.sections,
  });

  final String title;
  final List<HelpSection> sections;

  static Future<void> show(BuildContext context, {
    required String title,
    required List<HelpSection> sections,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(RadiusTokens.xxxl),
        ),
      ),
      builder: (_) => ContextualHelpSheet(title: title, sections: sections),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.4,
      maxChildSize: 0.85,
      expand: false,
      builder: (context, scrollController) => Padding(
        padding: const EdgeInsets.fromLTRB(
          Spacing.lg,
          Spacing.md,
          Spacing.lg,
          Spacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: scheme.onSurfaceVariant.withAlpha(77),
                  borderRadius: BorderRadius.circular(RadiusTokens.bar),
                ),
              ),
            ),
            const SizedBox(height: Spacing.lg),
            Text(
              title,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: Spacing.lg),
            Expanded(
              child: ListView.separated(
                controller: scrollController,
                itemCount: sections.length,
                separatorBuilder: (_, _) => const SizedBox(height: Spacing.md),
                itemBuilder: (context, index) {
                  final section = sections[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: scheme.primaryContainer,
                          borderRadius: BorderRadius.circular(RadiusTokens.sm),
                        ),
                        child: Icon(
                          section.icon,
                          size: 20,
                          color: scheme.onPrimaryContainer,
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              section.title,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              section.description,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: scheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: Spacing.sm),
          ],
        ),
      ),
    );
  }
}

class HelpIconButton extends StatelessWidget {
  const HelpIconButton({
    super.key,
    required this.title,
    required this.sections,
  });

  final String title;
  final List<HelpSection> sections;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(PhosphorIconsRegular.question),
      tooltip: AppLocalizations.of(context)!.help,
      onPressed: () => ContextualHelpSheet.show(
        context,
        title: title,
        sections: sections,
      ),
    );
  }
}
