import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class InitErrorScreen extends StatelessWidget {
  const InitErrorScreen(this.error, {super.key});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Builder(
        builder: (context) {
          final l10n = AppLocalizations.of(context)!;
          return Scaffold(
            body: Center(
              child: Text(l10n.errorGeneric(error.toString())),
            ),
          );
        },
      ),
    );
  }
}
