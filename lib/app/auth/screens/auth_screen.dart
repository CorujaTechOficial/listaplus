import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.kipiListTitle)),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xl),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(Spacing.md),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt()),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
              ).animate().fadeIn(duration: DurationTokens.normal).scale(
                begin: const Offset(0, 0),
                end: const Offset(1, 1),
                duration: DurationTokens.normal,
                curve: Curves.easeOutBack,
              ),
              const SizedBox(height: Spacing.lg),
              Text(
                l10n.loginPrompt,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 200),
              ).slideY(
                begin: 0.2,
                end: 0,
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
              ),
              const SizedBox(height: Spacing.xl),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: SvgPicture.asset(
                    'assets/images/google_logo.svg',
                    width: 20,
                    height: 20,
                  ),
                  label: Text(l10n.signInGoogle),
                  onPressed: () => _signInWithGoogle(context, ref),
                ),
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 300),
              ).slideY(
                begin: 0.2,
                end: 0,
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              ),
              const SizedBox(height: Spacing.md),
              if (!kIsWeb && (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS))
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.apple),
                    label: Text(l10n.signInApple),
                    onPressed: () => _signInWithApple(context, ref),
                  ),
                ).animate().fadeIn(
                  duration: DurationTokens.fast,
                  delay: const Duration(milliseconds: 400),
                ).slideY(
                  begin: 0.2,
                  end: 0,
                  duration: DurationTokens.fast,
                  delay: const Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                ),
              const SizedBox(height: Spacing.xl),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.continueAsGuest),
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 500),
              ),
            ],
          ),
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
