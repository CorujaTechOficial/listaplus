import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/premium_feature.dart';
import '../providers/theme_color_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

class ThemeSelectionScreen extends ConsumerWidget {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColorAsync = ref.watch(themeColorProvider);
    final isPremiumAsync = ref.watch(premiumProvider);
    final currentColor = currentColorAsync.value ?? Colors.green.toARGB32();
    final isPremium = isPremiumAsync.value ?? false;

    return Scaffold(
      appBar: AppBar(title: const Text('Temas')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: ThemeOption.options.length,
        itemBuilder: (context, index) {
          final option = ThemeOption.options[index];
          final isSelected = option.color.toARGB32() == currentColor;
          final isLocked = option.isPremium && !isPremium;

          return Card(
            color: isSelected ? option.color.withValues(alpha: 0.2) : null,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: isLocked
                  ? () {
                      ref.read(analyticsServiceProvider).logUpgradeTapped('theme');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PaywallScreen()),
                      );
                    }
                  : () {
                      ref.read(themeColorProvider.notifier).setColor(option.color.toARGB32());
                    },
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, color: option.color, size: 40),
                        const SizedBox(height: 8),
                        Text(option.name),
                      ],
                    ),
                  ),
                  if (isSelected)
                    const Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(Icons.check_circle),
                    ),
                  if (isLocked)
                    const Positioned(
                      top: 8,
                      left: 8,
                      child: Icon(Icons.lock, size: 18, color: Colors.grey),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
