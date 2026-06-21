import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          // Gradient: soft primaryContainer tint at the top, fades to surface
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.45],
                  colors: [
                    colorScheme.primaryContainer.withAlpha(48),
                    colorScheme.surface.withAlpha(0),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.xl,
                  vertical: Spacing.lg,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: Spacing.xxl),
                    // Logo — larger with shadow for visual impact
                    Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: colorScheme.primary.withAlpha(38),
                                blurRadius: 24,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Icon(
                            PhosphorIconsRegular.shoppingCart,
                            size: 44,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        )
                        .animate()
                        .fadeIn(duration: DurationTokens.normal)
                        .scale(
                          begin: const Offset(0.7, 0.7),
                          end: const Offset(1, 1),
                          duration: DurationTokens.normal,
                          curve: Curves.easeOutCubic,
                        ),
                    const SizedBox(height: Spacing.lg),
                    // App name
                    Text(
                          l10n.kipiListTitle,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.5,
                          ),
                        )
                        .animate()
                        .fadeIn(
                          duration: DurationTokens.fast,
                          delay: const Duration(milliseconds: 150),
                        )
                        .slideY(
                          begin: 0.15,
                          end: 0,
                          duration: DurationTokens.fast,
                          delay: const Duration(milliseconds: 150),
                          curve: Curves.easeOut,
                        ),
                    const SizedBox(height: Spacing.xs),
                    // Warm welcome tagline
                    Text(
                          l10n.onboardingWelcomeDesc,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            height: 1.5,
                          ),
                        )
                        .animate()
                        .fadeIn(
                          duration: DurationTokens.fast,
                          delay: const Duration(milliseconds: 220),
                        ),
                    const SizedBox(height: Spacing.xxl),
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
                        )
                        .animate()
                        .fadeIn(
                          duration: DurationTokens.fast,
                          delay: const Duration(milliseconds: 300),
                        )
                        .slideY(
                          begin: 0.2,
                          end: 0,
                          duration: DurationTokens.fast,
                          delay: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        ),
                    const SizedBox(height: Spacing.sm),
                    if (!kIsWeb &&
                        (defaultTargetPlatform == TargetPlatform.iOS ||
                            defaultTargetPlatform == TargetPlatform.macOS))
                      SizedBox(
                            width: double.infinity,
                            child: FilledButton.icon(
                              icon: const Icon(PhosphorIconsRegular.appleLogo),
                              label: Text(l10n.signInApple),
                              onPressed: () => _signInWithApple(context, ref),
                            ),
                          )
                          .animate()
                          .fadeIn(
                            duration: DurationTokens.fast,
                            delay: const Duration(milliseconds: 380),
                          )
                          .slideY(
                            begin: 0.2,
                            end: 0,
                            duration: DurationTokens.fast,
                            delay: const Duration(milliseconds: 380),
                            curve: Curves.easeOut,
                          ),
                    const SizedBox(height: Spacing.xl),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(l10n.continueAsGuest),
                    ).animate().fadeIn(
                      duration: DurationTokens.fast,
                      delay: const Duration(milliseconds: 480),
                    ),
                    const SizedBox(height: Spacing.lg),
                  ],
                ),
              ),
            ),
          ),
        ],
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
        showKipiSnackBar(
          context,
          message: l10n.loginError(e.toString()),
          type: SnackBarType.error,
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
        showKipiSnackBar(
          context,
          message: l10n.loginError(e.toString()),
          type: SnackBarType.error,
        );
      }
    }
  }
}
