import 'package:flutter/material.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  final List<CatalogCategory> categories;
  final void Function(CatalogCategory) onCategoryTap;

  Color _adaptColor(Color base, bool isDark) {
    if (!isDark) {
      return base;
    }
    final hsl = HSLColor.fromColor(base);
    return hsl
        .withLightness(0.18)
        .withSaturation(hsl.saturation * 0.6)
        .toColor();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.8,
        crossAxisSpacing: Spacing.sm,
        mainAxisSpacing: Spacing.sm,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final bgColor = _adaptColor(
          AppColors.categoryTints[index % AppColors.categoryTints.length],
          isDark,
        );

        return InkWell(
          onTap: () => onCategoryTap(category),
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          child: Ink(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(RadiusTokens.md),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
            child: Row(
              children: [
                Text(category.emoji, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: Spacing.sm),
                Expanded(
                  child: Text(
                    category.name,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
