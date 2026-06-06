import 'package:flutter/material.dart';

void showUniqueSnackBar(
  BuildContext context, {
  required Widget content,
  SnackBarAction? action,
}) {
  if (!context.mounted) {
    return;
  }
  final messenger = ScaffoldMessenger.of(context);
  messenger.clearSnackBars();
  messenger.showSnackBar(
    SnackBar(content: content, action: action),
  );
}
