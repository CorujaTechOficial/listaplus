import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AccountMenuSheet extends ConsumerWidget {
  const AccountMenuSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (_) => const AccountMenuSheet(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final isPremium = ref.watch(premiumProvider).value ?? false;
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(PhosphorIconsRegular.user),
            title: Text(l10n.profile),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                fadeSlideRoute<void>(const UserProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(PhosphorIconsRegular.gearSix),
            title: Text(l10n.settingsAppBar),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                fadeSlideRoute<void>(const SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              isPremium
                  ? PhosphorIconsRegular.crown
                  : PhosphorIconsRegular.crown,
              color: isPremium ? AppColors.premiumAmber : null,
            ),
            title: Text(
              isPremium ? l10n.kipiListProActive : l10n.becomePremium,
            ),
            subtitle: Text(
              isPremium ? l10n.manageSubscription : l10n.paywallTrialDisclaimer,
            ),
            onTap: () async {
              Navigator.pop(context);
              if (isPremium) {
                await ref
                    .read(revenueCatServiceProvider)
                    .presentCustomerCenter();
              } else {
                await Navigator.push(
                  context,
                  fadeSlideRoute<void>(const PaywallScreen()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
