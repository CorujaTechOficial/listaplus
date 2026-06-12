import 'dart:async';

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideLogin extends ConsumerStatefulWidget {
  const OnboardingSlideLogin({super.key, required this.onDone});

  final VoidCallback onDone;

  @override
  ConsumerState<OnboardingSlideLogin> createState() =>
      _OnboardingSlideLoginState();
}

class _OnboardingSlideLoginState extends ConsumerState<OnboardingSlideLogin> {
  bool _busy = false;

  Future<void> _signIn(
    Future<dynamic> Function() method,
    String provider,
  ) async {
    setState(() => _busy = true);
    try {
      final user = await method();
      if (user != null) {
        unawaited(
          ref.read(analyticsServiceProvider).logEvent(
            name: 'onboarding_login_completed',
            parameters: {'provider': provider},
          ),
        );
        widget.onDone();
        return;
      }
      if (mounted) {
        setState(() => _busy = false);
      }
    } on Exception {
      if (mounted) {
        setState(() => _busy = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.obLoginError),
          ),
        );
      }
    }
  }

  void _skip() {
    unawaited(
      ref
          .read(analyticsServiceProvider)
          .logEvent(name: 'onboarding_login_skipped'),
    );
    widget.onDone();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final auth = ref.read(authServiceProvider);
    final showApple =
        !kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.macOS);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: Spacing.xl),
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary.withAlpha(
                      (0.1 * 255).toInt(),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Spacing.lg),
                    child: Image.asset(
                      'assets/images/kipi/kipi_welcome.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: Spacing.lg),
                Text(
                  l10n.obLoginTitle,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Spacing.xs),
                Text(
                  l10n.obLoginSubtitle,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Spacing.xl),
                // Google sign-in — branded SVG logo on white outlined button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed:
                        _busy ? null : () => _signIn(auth.signInWithGoogle, 'google'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.md),
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
                          l10n.obLoginGoogle,
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
                if (showApple) ...[
                  const SizedBox(height: Spacing.md),
                  // Apple sign-in — black FilledButton with apple icon
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed:
                          _busy
                              ? null
                              : () => _signIn(auth.signInWithApple, 'apple'),
                      icon: const Icon(Icons.apple),
                      label: Text(l10n.obLoginApple),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                        ),
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: Spacing.sm),
                TextButton(
                  onPressed: _busy ? null : _skip,
                  child: Text(l10n.obLoginSkip),
                ),
                const SizedBox(height: Spacing.xl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
