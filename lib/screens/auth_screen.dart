import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_service_provider.dart';

// coverage:ignore-start
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Plus')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.shopping_cart, size: 80, color: Colors.green),
              const SizedBox(height: 24),
              const Text(
                'Faça login para desbloquear\nrecursos premium',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text('Entrar com Google'),
                  onPressed: () => _signInWithGoogle(context, ref),
                ),
              ),
              const SizedBox(height: 16),
              if (Platform.isIOS || Platform.isMacOS)
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.apple),
                    label: const Text('Entrar com Apple'),
                    onPressed: () => _signInWithApple(context, ref),
                  ),
                ),
              const SizedBox(height: 32),
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