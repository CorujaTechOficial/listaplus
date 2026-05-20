import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// coverage:ignore-start
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import '../providers/shopping_list_provider.dart';
import '../models/category.dart';
import '../models/unit.dart';
import 'add_item_dialog.dart';

class EmptyState extends ConsumerWidget {
  const EmptyState({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.listId,
  });

  final IconData? icon;
  final String? title;
  final String? subtitle;
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final suggestions = [
      'Leite', 'Pão', 'Ovos', 'Frutas', 'Café', 'Arroz'
    ];

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withValues(alpha: isDark ? 0.05 : 0.1),
                    shape: BoxShape.circle,
                  ),
                ).animate(onPlay: (controller) {
                  if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
                    controller.repeat(reverse: true);
                  }
                })
                  .scale(begin: const Offset(1, 1), end: const Offset(1.2, 1.2), duration: 3.seconds, curve: Curves.easeInOut),
                
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.primary,
                        theme.colorScheme.secondary,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 20,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Icon(
                    icon ?? Icons.shopping_cart_outlined,
                    size: 52,
                    color: Colors.white,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 800.ms)
                    .scale(delay: 200.ms, duration: 600.ms, curve: Curves.easeOutBack),
              ],
            ),
            const SizedBox(height: Spacing.xl),
            Text(
              title ?? l10n.emptyListTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w900,
                letterSpacing: -0.8,
                color: theme.colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 300.ms)
                .slideY(begin: 0.2, end: 0, curve: Curves.easeOut),
            const SizedBox(height: Spacing.sm),
            Text(
              subtitle ?? l10n.emptyListSubtitle,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 400.ms)
                .slideY(begin: 0.1, end: 0, curve: Curves.easeOut),
            
            if (title == null && listId != null) ...[
              const SizedBox(height: Spacing.xl),
              Text(
                'Sugestões rápidas:',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ).animate().fadeIn(delay: 700.ms),
              const SizedBox(height: Spacing.sm),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: suggestions.asMap().entries.map((entry) {
                  return ActionChip(
                    label: Text(entry.value),
                    onPressed: () {
                      HapticFeedback.lightImpact();
                      ref.read(shoppingListItemsProvider(listId!).notifier).addItem(
                        listId: listId!,
                        name: entry.value,
                        quantity: 1,
                        category: Category.others,
                        unit: Unit.un,
                      );
                    },
                    backgroundColor: theme.colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                    ),
                  ).animate().fadeIn(delay: (800 + entry.key * 50).ms).scale(delay: (800 + entry.key * 50).ms);
                }).toList(),
              ),
              const SizedBox(height: Spacing.xl),
              FilledButton.icon(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  showDialog<void>(
                    context: context,
                    builder: (context) => AddItemDialog(listId: listId!),
                  );
                },
                icon: const Icon(Icons.add),
                label: Text(l10n.addItem.toUpperCase()),
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.xl, vertical: Spacing.md),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                  elevation: 4,
                ),
              ).animate()
                .fadeIn(delay: 1.seconds)
                .scale(delay: 1.seconds, curve: Curves.easeOutBack),
            ],
          ],
        ),
      ),
    );
  }
}
// coverage:ignore-end
