import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';

class OnboardingSlideWelcomeLogin extends ConsumerWidget {
  const OnboardingSlideWelcomeLogin({
    super.key,
    required this.onLoggedIn,
    required this.onSkipped,
  });

  final VoidCallback onLoggedIn;
  final VoidCallback onSkipped;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.80,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // Logo de boas-vindas
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary.withAlpha(50),
                    blurRadius: 30,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
              child: Icon(
                Icons.shopping_basket_rounded,
                size: 80,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            // Título de boas-vindas
            Text(
              l10n.onboardingWelcomeTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.sm),
            // Descrição de boas-vindas
            Text(
              l10n.onboardingWelcomeDesc,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.xl),
            // Subtítulo da área de login
            Text(
              l10n.onboardingLoginDesc,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.lg),
            Divider(
              color: theme.colorScheme.outlineVariant,
              thickness: 1,
            ),
            const SizedBox(height: Spacing.lg),
            // Botão Google
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => _signInWithGoogle(context, ref),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.grey.shade300),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/google_logo.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      l10n.signInGoogle,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Spacing.md),
            // Botão Apple (iOS / macOS)
            if (!kIsWeb &&
                (defaultTargetPlatform == TargetPlatform.iOS ||
                    defaultTargetPlatform == TargetPlatform.macOS))
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.apple),
                  label: Text(l10n.signInApple),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => _signInWithApple(context, ref),
                ),
              ),
            const SizedBox(height: Spacing.md),
            // Continuar como convidado
            TextButton(
              onPressed: onSkipped,
              child: Text(
                l10n.onboardingContinueAsGuest,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            const SizedBox(height: Spacing.lg),
          ],
        ),
        ),
      ),
    );
  }

  Future<void> _signInWithGoogle(BuildContext context, WidgetRef ref) async {
    final authService = ref.read(authServiceProvider);
    try {
      await authService.signInWithGoogle();
      if (context.mounted) {
        onLoggedIn();
      }
    } on Exception {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(AppLocalizations.of(context)!.onboardingContinueAsGuest),
          ),
        );
      }
    }
  }

  Future<void> _signInWithApple(BuildContext context, WidgetRef ref) async {
    final authService = ref.read(authServiceProvider);
    try {
      await authService.signInWithApple();
      if (context.mounted) {
        onLoggedIn();
      }
    } on Exception {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(AppLocalizations.of(context)!.onboardingContinueAsGuest),
          ),
        );
      }
    }
  }
}
