import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CategorySectionHeader extends StatelessWidget {
  const CategorySectionHeader({
    super.key,
    required this.categoryId,
    required this.category,
    required this.itemCount,
  });

  final String categoryId;
  final CategoryData? category;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final categoryColor = category?.colorValue ?? theme.colorScheme.secondary;
    final categoryName = category?.localizedName(l10n) ?? categoryId;

    return Semantics(
      header: true,
      label: '$categoryName, $itemCount',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Spacing.md,
          Spacing.md,
          Spacing.md,
          Spacing.xxs,
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: categoryColor.withAlpha(32),
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
              ),
              child: Icon(
                category?.icon ?? PhosphorIconsRegular.squaresFour,
                size: 18,
                color: categoryColor,
              ),
            ),
            const SizedBox(width: Spacing.sm),
            Expanded(
              child: Text(
                categoryName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 28),
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.xs,
                vertical: Spacing.xxs,
              ),
              decoration: BoxDecoration(
                color: categoryColor.withAlpha(24),
                borderRadius: BorderRadius.circular(RadiusTokens.full),
              ),
              child: Text(
                '$itemCount',
                textAlign: TextAlign.center,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: categoryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
