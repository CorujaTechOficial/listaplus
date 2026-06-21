# Status de execução - 2026-06-11

Este arquivo consolida a execução dos itens em `docs/analysis/`. Itens de código
foram implementados ou verificados no repositório. Itens que dependem de produto,
credenciais, console externo ou infraestrutura ainda não configurada estão
marcados explicitamente.

## Implementado nesta execução

- Referral seguro:
  - URL corrigida para `kipilist-6547b.web.app`.
  - Pedido idempotente em `referralRewards/{referrer}_{referee}`.
  - Firestore Rules restringem criação ao usuário convidado.
  - Cloud Function concede uma semana de `kipilist_pro` aos dois usuários.
  - Fallback `bonusPremiumUntil` reconhecido pelo `premiumProvider`.
- Race do RevenueCat: o auth sync aguarda a inicialização real, mesmo após o
  timeout de startup.
- Contexto de assinatura no menu de conta para Free e Pro.
- Versão do app obtida com `package_info_plus`.
- Nomes de temas exibidos por localização, sem português hardcoded.
- Erro de renderização usa localização compatível com o locale do dispositivo.
- Empty state do chat com três prompts acionáveis.
- Banner de uso da IA inserido no chat e antecipado para 10 ações.
- Upsell não bloqueante após concluir uma compra.
- Review prompt ligado à terceira conclusão elegível, com no mínimo cinco itens
  e 72 horas desde a primeira conclusão.
- Conquistas Pro bloqueadas com CTA para o paywall.
- Banner offline ativado no shell principal.
- Exportação ganhou compartilhamento como texto e cópia para clipboard.
- Firebase Performance removido por não possuir traces nem uso no app.
- Landing page e suporte publicados em `hosting/index.html`, incluindo FAQ,
  contato, links legais e fallback web para convites/listas.

## Já existia e foi verificado

- Modo de compras, progresso, confetti e haptics.
- Receita para lista em um toque.
- Memória de itens no Quick Add.
- Dispensa com déficit, reposição e geração de lista.
- Pizza de gastos por categoria.
- Update flexível via Play Core.
- Cancelamento antes de `clearHistory`.
- Flush final do streaming SSE.
- Anúncios não são exibidos: o serviço existe, mas não há chamada de
  `showRewardedAd`.
- Queries atuais não combinam `where` e `orderBy` de forma que exija os índices
  compostos citados na análise.

## Configuração externa necessária

### Referral

```sh
firebase functions:secrets:set REVENUECAT_SECRET_API_KEY
cd functions && npm install && npm run build
firebase deploy --only functions,firestore:rules,hosting
```

O secret deve ser uma chave RevenueCat com permissão para conceder promotional
entitlements. A função usa o entitlement `kipilist_pro`.

### Play Console / RevenueCat

- Criar e precificar o plano Família e decidir elegibilidade por plataforma.
- Configurar webhook de término de trial e política de envio por FCM.
- Atualizar título, descrição, screenshots e feature graphic por mercado.
- Estruturar tracks Alpha/Beta e grupos de testadores.
- Desabilitar auto-translate da Play Console para strings do app.

### App Links

A landing preserva parâmetros e encaminha para a Play Store. A abertura
automática pós-instalação ainda requer:

- SHA-256 do certificado de assinatura em `.well-known/assetlinks.json`.
- Intent filter Android verificado.
- Captura do link inicial no Flutter.

## Backlog de produto/infraestrutura

Estes itens são épicos independentes e não devem ser tratados como pequenos
fixes dentro do mesmo release:

- Widget Android interativo e sincronização em background.
- FCM completo e notificações segmentadas.
- Templates/listas recorrentes.
- Histórico e alertas de preço.
- Multi-loja.
- Foto por item com resize/upload.
- Comparação mensal de orçamento por categoria.
- Plano Família.
- Remote Config para teste de ordem da navegação.
- Catálogo regional por país.
- Integrações com supermercados e conteúdo de marketing.

Cada épico exige modelo de dados, migração, regras, telemetria, testes e rollout
próprios. Implementá-los simultaneamente criaria um release sem isolamento de
risco.

## Validação

- `flutter gen-l10n`: concluído.
- `npm run build` em `functions/`: concluído.
- `cd custom_lints && dart analyze lib/`: sem issues.
- `flutter test`: 112 testes passando.
- `flutter analyze --fatal-infos`: sem erros de compilação; permanece o backlog
  conhecido de infos/warnings de lint em arquivos preexistentes.
