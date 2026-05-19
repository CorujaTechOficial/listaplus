import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../providers/auth_service_provider.dart';

// coverage:ignore-start
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.listaPlusTitle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(Spacing.md),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: Spacing.lg),
              Text(
                l10n.loginPrompt,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: Spacing.xl),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.g_mobiledata),
                  label: Text(l10n.signInGoogle),
                  onPressed: () => _signInWithGoogle(context, ref),
                ),
              ),
              const SizedBox(height: Spacing.md),
              if (Platform.isIOS || Platform.isMacOS)
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.apple),
                    label: Text(l10n.signInApple),
                    onPressed: () => _signInWithApple(context, ref),
                  ),
                ),
              const SizedBox(height: Spacing.xl),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.continueAsGuest),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithGoogle(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context)!;
    final authService = ref.read(authServiceProvider);
    try {
      final user = await authService.signInWithGoogle();
      if (user != null && context.mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.loginError(e.toString()))),
        );
      }
    }
  }

  Future<void> _signInWithApple(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context)!;
    final authService = ref.read(authServiceProvider);
    try {
      final user = await authService.signInWithApple();
      if (user != null && context.mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.loginError(e.toString()))),
        );
      }
    }
  }
}
// coverage:ignore-end
