import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// Centralized bottom sheet helper — KipiList
///
/// Always use [KipiSheets.show] instead of calling [showModalBottomSheet]
/// directly. This guarantees consistent configuration across the app:
/// - [useSafeArea] = true (handles iPhone home indicator)
/// - [isScrollControlled] = true (allows full-height sheets)
/// - Consistent [shape] via the global BottomSheetTheme
/// - Optional [showDragHandle] for sheets that benefit from the affordance
///
/// Example:
/// ```dart
/// await KipiSheets.show<void>(
///   context: context,
///   builder: (context) => const MySortSheet(),
/// );
/// ```
abstract final class KipiSheets {
  /// Shows a standard bottom sheet with consistent configuration.
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool showDragHandle = true,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? backgroundColor,
    double? maxHeightFactor,
    BoxConstraints? constraints,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      backgroundColor: backgroundColor,
      constraints:
          maxHeightFactor != null
              ? BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height * maxHeightFactor,
              )
              : constraints,
      builder: builder,
    );
  }

  /// Shows a large bottom sheet that occupies up to 90% of screen height.
  /// Ideal for heavy content like the list switcher or add forms.
  static Future<T?> showLarge<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool showDragHandle = true,
    bool isDismissible = true,
  }) {
    return show<T>(
      context: context,
      builder: builder,
      showDragHandle: showDragHandle,
      isDismissible: isDismissible,
      maxHeightFactor: 0.9,
    );
  }

  /// Shows a compact bottom sheet for menus and option lists.
  /// Content wraps to minimum needed height.
  static Future<T?> showCompact<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool showDragHandle = true,
  }) {
    return show<T>(
      context: context,
      builder: (ctx) => IntrinsicHeight(child: builder(ctx)),
      showDragHandle: showDragHandle,
    );
  }

  /// Shows a full-screen bottom sheet (modal page style).
  /// Useful for scanner, camera, or immersive flows.
  static Future<T?> showFullScreen<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) {
    return show<T>(
      context: context,
      builder: builder,
      showDragHandle: false,
      maxHeightFactor: 1,
    );
  }
}

/// Standard drag handle used at the top of bottom sheets.
/// Use when building a sheet that does NOT use [showDragHandle] from Material.
class KipiSheetHandle extends StatelessWidget {
  const KipiSheetHandle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Container(
        width: 32,
        height: 4,
        margin: const EdgeInsets.only(top: Spacing.sm, bottom: Spacing.xs),
        decoration: BoxDecoration(
          color: theme.colorScheme.outlineVariant,
          borderRadius: BorderRadius.circular(RadiusTokens.full),
        ),
      ),
    );
  }
}

/// Standard sheet header row with title and optional close button.
class KipiSheetHeader extends StatelessWidget {
  const KipiSheetHeader({
    super.key,
    required this.title,
    this.trailing,
    this.showCloseButton = true,
    this.onClose,
  });

  final String title;
  final Widget? trailing;
  final bool showCloseButton;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (trailing != null) trailing!,
          if (showCloseButton)
            IconButton(
              icon: const Icon(PhosphorIconsRegular.x),
              onPressed: onClose ?? () => Navigator.pop(context),
            ),
        ],
      ),
    );
  }
}
