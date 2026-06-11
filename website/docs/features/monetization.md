---
id: monetization
title: Monetização (KipiList Pro)
sidebar_label: Monetização / Pro
---

# Monetização

KipiList usa o modelo **freemium** com assinaturas gerenciadas pelo RevenueCat.

## Planos

| Plano | Preço | Benefícios |
|---|---|---|
| **Gratuito** | R$ 0 | Até 3 listas, uso básico de IA |
| **Pro — Mensal** | R$ 4,99/mês | Listas ilimitadas, IA avançada |
| **Pro — Anual** | R$ 29,99/ano | Tudo do mensal + melhor custo-benefício |

## RevenueCat

- **SDK**: `purchases_flutter` v10.x
- **Entitlement**: `kipilist_pro`
- **Offering**: `default_play`
- **Packages**: `$rc_monthly`, `$rc_annual`
- **API Key**: passada via `--dart-define=REVENUECAT_API_KEY=xxx`

### Configuração

O UID do Firebase é sincronizado com o RevenueCat em `main.dart`:

```dart
// Em main.dart → _setupAuthSync()
FirebaseAuth.instance.authStateChanges().listen((user) async {
  if (user != null) {
    await Purchases.logIn(user.uid);
  }
});
```

### Verificação de Premium

```dart
// lib/core/providers/ → premiumProvider
final isPremium = ref.watch(premiumProvider).value ?? false;
```

O `premiumProvider` é a **única** fonte da verdade para status premium. Nunca verificar créditos diretamente no Firestore.

## Gate de Funcionalidades

| Funcionalidade | Gratuito | Pro |
|---|---|---|
| Número de listas | 3 | Ilimitado |
| Uso diário de IA | Limitado | Mais amplo |
| Recursos premium de IA | — | Sim |

## Fluxo de Paywall

O paywall é exibido quando:
1. Usuário tenta criar a 4ª lista
2. Usuário tenta acessar recurso Pro

A tela de paywall vive em `lib/app/onboarding/screens/onboarding_slide_premium.dart` (~41KB) e inclui:
- Headline personalizada baseada no perfil do onboarding
- Depoimentos de usuários
- Trial gratuito (quando disponível)
- Animações stagger

## Google Ads

O app usa `google_mobile_ads` para usuários do plano gratuito. O serviço é abstraído em `AdService` / `AdServiceImpl`.

## In-App Review

Após compras bem-sucedidas ou marcos de uso, o `AppReviewService` (`in_app_review`) solicita avaliação na Play Store.

## Scripts de Assinatura (Play Store)

```bash
# Criar produtos de assinatura
python3 create_subscriptions.py

# Atualizar preços
python3 update_prices.py
```
