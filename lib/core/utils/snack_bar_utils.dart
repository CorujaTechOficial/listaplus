import 'package:flutter/material.dart';
import 'package:shopping_list/core/theme/app_theme.dart';
import 'package:shopping_list/core/theme/tokens.dart';

enum SnackBarType { error, success, info, warning, celebration }

void showKipiSnackBar(
  BuildContext context, {
  required String message,
  SnackBarType type = SnackBarType.info,
  SnackBarAction? action,
  IconData? icon,
  Duration? duration,
}) {
  if (!context.mounted) {
    return;
  }
  final messenger = ScaffoldMessenger.of(context);
  final colorScheme = Theme.of(context).colorScheme;
  final semantic = AppSemanticColors.of(context);

  Color backgroundColor;
  Color textColor;

  switch (type) {
    case SnackBarType.error:
      backgroundColor = colorScheme.error;
      textColor = colorScheme.onError;
    case SnackBarType.success:
      backgroundColor = semantic.successContainer;
      textColor = semantic.onSuccessContainer;
    case SnackBarType.info:
      backgroundColor = semantic.infoContainer;
      textColor = semantic.onInfoContainer;
    case SnackBarType.warning:
      backgroundColor = semantic.warningContainer;
      textColor = semantic.onWarningContainer;
    case SnackBarType.celebration:
      backgroundColor = semantic.premiumContainer;
      textColor = semantic.onPremiumContainer;
  }

  final effectiveDuration = duration ?? switch (type) {
    SnackBarType.error => const Duration(seconds: 4),
    SnackBarType.success => const Duration(seconds: 2),
    SnackBarType.info => const Duration(seconds: 2),
    SnackBarType.warning => const Duration(seconds: 4),
    SnackBarType.celebration => const Duration(seconds: 3),
  };

  final contentWidget = icon != null
      ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: textColor, size: 20),
            const SizedBox(width: Spacing.xs),
            Flexible(child: Text(message, style: TextStyle(color: textColor))),
          ],
        )
      : Text(message, style: TextStyle(color: textColor));

  messenger.clearSnackBars();
  messenger.showSnackBar(
    SnackBar(
      content: contentWidget,
      backgroundColor: backgroundColor,
      action: action != null
          ? SnackBarAction(label: action.label, textColor: textColor, onPressed: action.onPressed)
          : null,
      duration: effectiveDuration,
    ),
  );
}
