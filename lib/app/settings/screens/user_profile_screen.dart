import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/user_profile.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/theme/tokens.dart';

class UserProfileScreen extends ConsumerStatefulWidget {
  const UserProfileScreen({super.key});

  @override
  ConsumerState<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends ConsumerState<UserProfileScreen> {
  final _preferredStoreController = TextEditingController();
  final _dietaryRestrictionsController = TextEditingController();
  final _avoidedStoresController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _preferredStoreController.dispose();
    _dietaryRestrictionsController.dispose();
    _avoidedStoresController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _initControllers(UserProfile profile) {
    _preferredStoreController.text = profile.preferredStore ?? '';
    _dietaryRestrictionsController.text = profile.dietaryRestrictions ?? '';
    _avoidedStoresController.text = profile.avoidedStores ?? '';
    _notesController.text = profile.notes ?? '';
  }

  Future<void> _save() async {
    final l10n = AppLocalizations.of(context)!;
    final profile = UserProfile(
      preferredStore: _preferredStoreController.text.trim(),
      dietaryRestrictions: _dietaryRestrictionsController.text.trim(),
      avoidedStores: _avoidedStoresController.text.trim(),
      notes: _notesController.text.trim(),
    );
    try {
      await ref.read(userProfileServiceProvider).updateProfile(profile);
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.profileSaved)),
      );
      Navigator.pop(context);
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${l10n.errorSavingProfile}: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final profileAsync = ref.watch(userProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.userProfile),
        actions: [
          TextButton(
            onPressed: _save,
            child: Text(l10n.save),
          ),
        ],
      ),
      body: SafeArea(
        child: profileAsync.when(
          data: (profile) {
            _initControllers(profile);
            return _buildForm(theme);
          },
          loading: () => const Center(child: CircularProgressIndicator.adaptive()),
          error: (e, _) => Center(child: Text(l10n.error('$e'))),
        ),
      ),
    );
  }

  Widget _buildForm(ThemeData theme) {
    final profileFormL10n = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.all(Spacing.md),
      children: [
        Text(
          profileFormL10n.profileDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: Spacing.lg),
        TextField(
          controller: _preferredStoreController,
          decoration: InputDecoration(
            labelText: profileFormL10n.preferredMarket,
            hintText: profileFormL10n.preferredMarketHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.store),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _dietaryRestrictionsController,
          decoration: InputDecoration(
            labelText: profileFormL10n.dietaryRestrictions,
            hintText: profileFormL10n.dietaryRestrictionsHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.restaurant),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _avoidedStoresController,
          decoration: InputDecoration(
            labelText: profileFormL10n.marketsToAvoid,
            hintText: profileFormL10n.marketsToAvoidHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.block),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _notesController,
          decoration: InputDecoration(
            labelText: profileFormL10n.observations,
            hintText: profileFormL10n.observationsHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.note),
          ),
          maxLines: 3,
        ),
        const SizedBox(height: Spacing.lg),
        FilledButton.icon(
          onPressed: _save,
          icon: const Icon(Icons.save),
          label: Text(profileFormL10n.saveProfile),
        ),
      ],
    );
  }
}
