import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_profile.dart';
import '../providers/user_profile_provider.dart';
import '../theme/tokens.dart';

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
        const SnackBar(content: Text('Perfil salvo com sucesso!')),
      );
      Navigator.pop(context);
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao salvar: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final profileAsync = ref.watch(userProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          TextButton(
            onPressed: _save,
            child: const Text('Salvar'),
          ),
        ],
      ),
      body: profileAsync.when(
        data: (profile) {
          _initControllers(profile);
          return _buildForm(theme);
        },
        loading: () => const Center(child: CircularProgressIndicator.adaptive()),
        error: (e, _) => Center(child: Text('Erro: $e')),
      ),
    );
  }

  Widget _buildForm(ThemeData theme) {
    return ListView(
      padding: const EdgeInsets.all(Spacing.md),
      children: [
        Text(
          'Informe suas preferências pessoais para que o assistente IA '
          'possa sugerir itens e receitas personalizados.',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: Spacing.lg),
        TextField(
          controller: _preferredStoreController,
          decoration: const InputDecoration(
            labelText: 'Mercado Preferido',
            hintText: 'Ex: Supermercado X',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.store),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _dietaryRestrictionsController,
          decoration: const InputDecoration(
            labelText: 'Restrições Alimentares',
            hintText: 'Ex: vegano, vegetariano, sem glúten',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.restaurant),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _avoidedStoresController,
          decoration: const InputDecoration(
            labelText: 'Mercados a Evitar',
            hintText: 'Ex: Mercado Y, Mercado Z',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.block),
          ),
        ),
        const SizedBox(height: Spacing.md),
        TextField(
          controller: _notesController,
          decoration: const InputDecoration(
            labelText: 'Observações',
            hintText: 'Outras preferências para o assistente',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.note),
          ),
          maxLines: 3,
        ),
        const SizedBox(height: Spacing.lg),
        FilledButton.icon(
          onPressed: _save,
          icon: const Icon(Icons.save),
          label: const Text('Salvar Perfil'),
        ),
      ],
    );
  }
}
