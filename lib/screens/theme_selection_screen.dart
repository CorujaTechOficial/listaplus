import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_color_provider.dart';
import '../providers/premium_provider.dart';
import '../models/premium_feature.dart';
import '../theme/tokens.dart';
import 'paywall_screen.dart';
import '../theme/page_transitions.dart';

class ThemeSelectionScreen extends ConsumerWidget {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColorAsync = ref.watch(themeColorProvider);
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolher Cor do Tema'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(Spacing.md),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: Spacing.md,
          mainAxisSpacing: Spacing.md,
        ),
        itemCount: ThemeOption.options.length,
        itemBuilder: (context, index) {
          final option = ThemeOption.options[index];
          final color = option.color;
          final isSelected = currentColorAsync.value?.toARGB32() == color.toARGB32();

          return InkWell(
            onTap: () {
              if (option.isPremium && !isPremium) {
                Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
                return;
              }
              ref.read(themeColorProvider.notifier).setColor(color);
            },
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                    border: isSelected
                        ? Border.all(color: theme.colorScheme.onSurface, width: 3)
                        : null,
                    boxShadow: [
                      BoxShadow(
                        color: color.withAlpha((0.3 * 255).toInt()),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: isSelected
                        ? Icon(Icons.check, color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white)
                        : null,
                  ),
                ),
                if (option.isPremium && !isPremium)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Icon(Icons.lock, size: 14, color: color.computeLuminance() > 0.5 ? Colors.black54 : Colors.white70),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
