// coverage:ignore-start
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:url_launcher/url_launcher.dart';

class PaywallScreen extends ConsumerStatefulWidget {
  const PaywallScreen({super.key});

  @override
  ConsumerState<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends ConsumerState<PaywallScreen> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  String? _errorMessage;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  @override
  void initState() {
    super.initState();
    ref.read(analyticsServiceProvider).logPaywallViewed();
    _loadPackages();
  }

  Future<void> _loadPackages() async {
    try {
      final pkgs = await ref.read(revenueCatServiceProvider).getPaywallPackages();
      if (mounted) {
        setState(() {
          _packages = pkgs;
          // Select Annual by default, or monthly if no annual, or first available
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.firstWhere(
              (p) => p.identifier.toLowerCase().contains('annual') || p.identifier.toLowerCase().contains('ano'),
              orElse: () => pkgs.firstWhere(
                (p) => p.identifier.toLowerCase().contains('monthly') || p.identifier.toLowerCase().contains('mes'),
                orElse: () => pkgs.first,
              ),
            );
          } else {
            _selectedPackage = null;
          }
          _isLoading = false;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() {
          _errorMessage = 'Erro ao carregar ofertas. Tente novamente.';
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null) {
      return;
    }

    setState(() {
      _isPurchasing = true;
      _errorMessage = null;
    });

    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on Exception catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
      if (mounted) {
        setState(() {
          _errorMessage = 'Não foi possível concluir a compra. Tente novamente.';
          _isPurchasing = false;
        });
      }
    }
  }

  Future<void> _restore() async {
    setState(() {
      _isPurchasing = true;
      _errorMessage = null;
    });

    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      unawaited(ref.read(analyticsServiceProvider).logPaywallRestoreCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on Exception catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
      if (mounted) {
        setState(() {
          _errorMessage = 'Nenhuma assinatura ativa encontrada para restaurar.';
          _isPurchasing = false;
        });
      }
    }
  }

  Widget _buildHeader(ThemeData theme) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary.withAlpha((0.8 * 255).toInt()),
            theme.colorScheme.tertiary.withAlpha((0.6 * 255).toInt()),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xl, vertical: Spacing.xl),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xs),
            decoration: BoxDecoration(
              color: AppColors.premiumAmber,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              '7 DIAS GRÁTIS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: Spacing.md),
          const Icon(
            Icons.workspace_premium,
            size: 64,
            color: AppColors.premiumAmber,
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            'Lista Plus PRO',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            'Desbloqueie todo o poder da organização inteligente',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white.withAlpha((0.9 * 255).toInt()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesList(ThemeData theme, AppLocalizations l10n) {
    final features = [
      ('Listas Ilimitadas', 'Crie quantas listas quiser, sem limite de 3 listas.'),
      ('Inteligência Artificial', 'Organize itens por categorias automaticamente e tire dúvidas no Chat.'),
      ('Orçamento Mensal', 'Planeje seus gastos e controle suas compras com gráficos detalhados.'),
      ('Temas Personalizados', 'Acesso exclusivo a todos os 10 temas elegantes do aplicativo.'),
      ('Compartilhamento por Código', 'Sincronize listas com familiares e amigos em tempo real.'),
      ('Backup na Nuvem', 'Exporte e importe seus dados de compras com facilidade.'),
    ];

    return Padding(
      padding: const EdgeInsets.all(Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'O que você ganha com o PRO:',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.md),
          ...features.map((f) => Padding(
                padding: const EdgeInsets.only(bottom: Spacing.sm),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: theme.colorScheme.primary,
                      size: 20,
                    ),
                    const SizedBox(width: Spacing.sm),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            f.$1,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            f.$2,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildPackagesList(ThemeData theme) {
    if (_packages.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        children: [
          ..._packages.map((pkg) {
            final isSelected = _selectedPackage?.identifier == pkg.identifier;
            final isAnnual = pkg.identifier.toLowerCase().contains('annual') || pkg.identifier.toLowerCase().contains('ano');
            final isLifetime = pkg.identifier.toLowerCase().contains('lifetime') || pkg.identifier.toLowerCase().contains('vida');

            String badgeText = '';
            if (isAnnual) {
              badgeText = 'Mais Popular - Salve 50%';
            } else if (isLifetime) {
              badgeText = 'Melhor Valor';
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: Spacing.sm),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedPackage = pkg;
                  });
                },
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outline.withAlpha((0.3 * 255).toInt()),
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    color: isSelected ? theme.colorScheme.primaryContainer.withAlpha((0.1 * 255).toInt()) : null,
                  ),
                  padding: const EdgeInsets.all(Spacing.md),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (badgeText.isNotEmpty) ...[
                              Container(
                                decoration: BoxDecoration(
                                  color: isAnnual ? theme.colorScheme.primary : AppColors.premiumAmber,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: 2),
                                child: Text(
                                  badgeText,
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                            ],
                            Text(
                              _mapPackageName(pkg.identifier),
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              pkg.description,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        pkg.priceString,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          const SizedBox(height: Spacing.md),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _selectedPackage != null ? _purchase : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'Começar 7 dias grátis',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            'Cancele quando quiser. Sem compromisso.',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
            ),
          ),
        ],
      ),
    );
  }

  String _mapPackageName(String id) {
    final lower = id.toLowerCase();
    if (lower.contains('annual') || lower.contains('ano')) {
      return 'Plano Anual';
    }
    if (lower.contains('lifetime') || lower.contains('vida')) {
      return 'Plano Vitalício';
    }
    if (lower.contains('monthly') || lower.contains('mes')) {
      return 'Plano Mensal';
    }
    return id;
  }

  Widget _buildFooterLinks(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://listaplus-6547b.web.app/privacidade.html'),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text(
            'Política de Privacidade',
            style: TextStyle(
              fontSize: 12,
              color: theme.colorScheme.onSurfaceVariant,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          '•',
          style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
        ),
        TextButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://listaplus-6547b.web.app/termos.html'),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text(
            'Termos de Uso',
            style: TextStyle(
              fontSize: 12,
              color: theme.colorScheme.onSurfaceVariant,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.paywallTitle),
        actions: [
          TextButton(
            onPressed: _restore,
            child: const Text('Restaurar'),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeader(theme),
                  _buildFeaturesList(theme, l10n),
                  if (_isLoading)
                    const Padding(
                      padding: EdgeInsets.all(Spacing.lg),
                      child: CircularProgressIndicator.adaptive(),
                    )
                  else if (_errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.all(Spacing.lg),
                      child: Column(
                        children: [
                          Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
                          const SizedBox(height: Spacing.sm),
                          ElevatedButton(onPressed: _loadPackages, child: const Text('Tentar Novamente')),
                        ],
                      ),
                    )
                  else
                    _buildPackagesList(theme),
                  const SizedBox(height: Spacing.lg),
                  _buildFooterLinks(theme),
                  const SizedBox(height: Spacing.xl),
                ],
              ),
            ),
            if (_isPurchasing)
              Container(
                color: Colors.black54,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
// coverage:ignore-end
