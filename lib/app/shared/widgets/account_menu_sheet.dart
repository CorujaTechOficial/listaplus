import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

class AccountMenuSheet extends StatelessWidget {
  const AccountMenuSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => const AccountMenuSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text(l10n.profile),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const UserProfileScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(l10n.settingsAppBar),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const SettingsScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium_outlined),
            title: Text(l10n.becomePremium),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
            },
          ),
        ],
      ),
    );
  }
}
