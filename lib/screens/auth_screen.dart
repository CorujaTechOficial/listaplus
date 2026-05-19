import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../providers/auth_service_provider.dart';

// coverage:ignore-start
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Plus')),
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
                'Faça login para desbloquear\nrecursos premium',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: Spacing.xl),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text('Entrar com Google'),
                  onPressed: () => _signInWithGoogle(context, ref),
                ),
              ),
              const SizedBox(height: Spacing.md),
              if (Platform.isIOS || Platform.isMacOS)
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.apple),
                    label: const Text('Entrar com Apple'),
                    onPressed: () => _signInWithApple(context, ref),
                  ),
                ),
              const SizedBox(height: Spacing.xl),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Continuar como visitante'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithGoogle(BuildContext context, WidgetRef ref) async {
    final authService = ref.read(authServiceProvider);
    try {
      final user = await authService.signInWithGoogle();
      if (user != null && context.mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao fazer login: $e')),
        );
      }
    }
  }

  Future<void> _signInWithApple(BuildContext context, WidgetRef ref) async {
    final authService = ref.read(authServiceProvider);
    try {
      final user = await authService.signInWithApple();
      if (user != null && context.mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao fazer login: $e')),
        );
      }
    }
  }
}
// coverage:ignore-end
