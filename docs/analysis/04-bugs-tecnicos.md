# Bugs e Débitos Técnicos com Impacto no Negócio

> Problemas técnicos encontrados na análise que não estão no plano de audit existente (`2026-06-07-audit-improvements`).  
> O audit existente cobre: testes, CI, tree-shaking, Firestore security rules, atomic rollback, dead providers.

---

## 1. Referral URL Errada

**Arquivo:** `lib/services/referral_service.dart:16`

```dart
return 'https://listaplus.com/invite?ref=${user.uid}';
```

**Problema:** `listaplus.com` não é o domínio do app. O domínio correto (pelo código do paywall e settings) é `kipilist-6547b.web.app`. Toda campanha de referral atual geraria links quebrados.

**Fix:**
```dart
return 'https://kipilist-6547b.web.app/invite?ref=${user.uid}';
// Ou configurar Firebase Dynamic Links para app deep linking real
```

---

## 2. `_awardPremiumDays` é Stub Vazio

**Arquivo:** `lib/services/referral_service.dart:62-75`

```dart
Future<void> _awardPremiumDays(String uid, int days) async {
  // SIMULATION: ... (comentários sem implementação)
}
```

**Problema:** O método existe, é chamado, mas não faz absolutamente nada. Qualquer referral processado não dá nenhuma recompensa. Pior: `referralProcessed: true` é marcado no Firestore, então o referral é consumido sem recompensa — impossível dar retry.

**Fix:** Implementar via Cloud Function que chama RevenueCat API:
```
POST https://api.revenuecat.com/v1/subscribers/{uid}/entitlements/kipilist_pro
Body: { "duration": "week" }  // para 7 dias
```

---

## 3. `premiumProvider` Não Considera `bonusPremiumUntil`

**Arquivo:** `lib/core/providers/monetization_providers.dart` (inferido)

**Problema:** O `ReferralService` planeja salvar `bonusPremiumUntil` no Firestore, mas o `premiumProvider` só verifica RevenueCat entitlements. Mesmo quando o referral for implementado com Firestore, o gate de premium não vai reconhecer o bonus.

**Fix:** Quando Cloud Function for implementada para dar premium via RevenueCat API, isso será resolvido automaticamente pois o entitlement vai estar no RevenueCat. Mas se o fallback Firestore for mantido, `premiumProvider` precisa fazer `OR` entre RevenueCat e Firestore.

---

## 4. Race Condition em `_setupAuthSync`

**Arquivo:** `lib/main.dart:215-229`

**Problema:** `authStateChanges().listen()` pode disparar antes do `RevenueCat.init()` completar se o timeout de 5s do RevenueCat for atingido. O `Purchases.logIn(user.uid)` seria chamado em um RevenueCat não inicializado.

```dart
await revenueCat.init(...).timeout(5s, onTimeout: () {
  debugPrint('Timeout...'); // RevenueCat pode não estar inicializado
});

runApp(...); // auth listener já rodando
```

**Fix:** Flag `_revenueCatInitialized` que o listener checa antes de chamar `Purchases.logIn`.

---

## 5. `clearHistory` Sem `cancelRequest` — Bug Documentado Não Corrigido

**Arquivo:** `lib/app/ai/providers/chat_provider.dart`

**Problema:** AGENTS.md documenta: "`clearHistory()` must call `cancelRequest()` first". Isso está implementado? Precisa verificar.

**Verificar:**
```bash
grep -n "clearHistory" lib/app/ai/providers/chat_provider.dart
```
Se `cancelRequest()` não for a primeira linha de `clearHistory()`, é um bug ativo que causa state corruption.

---

## 6. `ErrorWidget.builder` com Texto Hardcoded em Inglês

**Arquivo:** `lib/main.dart:154-163`

```dart
ErrorWidget.builder = (details) {
  return const Center(
    child: Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        'Oops! Something went wrong rendering this screen.', // hardcoded!
```

**Problema:** App multi-locale com mensagem crítica de erro em inglês. Usuário alemão/árabe/tailandês vê inglês em momentos de stress.

**Fix:** Usar `PlatformDispatcher.instance.locale` para determinar o locale e carregar a string do ARB sem acesso ao context.

---

## 7. `ShoppingItemTile` — Animação de Remoção Faltando

**Arquivo:** `lib/app/lists/widgets/shopping_item_tile.dart` (inferido)

**Observação:** O tile provavelmente usa `Dismissible` para arrastar e deletar. Verificar se há animação de `AnimatedList` para suavizar a remoção. Sem isso, a lista "pula" ao deletar item.

---

## 8. Firebase Performance — Está Sendo Usado?

**Arquivo:** `pubspec.yaml` tem `firebase_performance: ^0.11.4+1`

**Problema:** `firebase_performance` tem overhead de monitoramento. Se não estiver sendo usado ativamente para traces customizados, está apenas adicionando cold start time.

**Verificar:**
```bash
grep -r "FirebasePerformance\|HttpMetric\|Trace" lib/
```
Se não houver traces customizados, avaliar remover o package ou adicionar traces úteis (tempo de load da lista, tempo de resposta do AI).

---

## 9. `in_app_update` — Forçar Update Agressivo?

**Arquivo:** `lib/services/update_service.dart`

**Verificar:** O `update_service.dart` usa `in_app_update`. Está configurado para `AppUpdateType.immediate` (força update) ou `AppUpdateType.flexible` (baixa em background)?

- `IMMEDIATE` para usuários com versão muito antiga = correto
- `IMMEDIATE` para qualquer update = péssima UX, garante reviews negativos

**Recomendação:** Usar `FLEXIBLE` padrão, `IMMEDIATE` apenas quando `stalenessDays > 30`.

---

## 10. Firestore Queries Sem Índice Documentado

**Arquivos:** Mixins em `lib/services/firestore/`

**Verificar:** Queries com múltiplos `where` + `orderBy` em Firestore exigem índices compostos. Se não estiverem no `firestore.indexes.json`, as queries falham silenciosamente em produção (fallback para scan completo ou erro).

```bash
find . -name "firestore.indexes.json" 2>/dev/null
```

**Verificar especialmente:**
- `items where shoppingListId == X orderBy createdAt`
- `ai_usage where month == YYYY-MM`
- `pantry where expiryDate < now`

---

## 11. `AdService` Configurado mas Não Usado?

**Arquivos:** `lib/services/ad_service.dart` + `lib/services/ad_service_impl.dart`

**Observação:** Existe um `AdService` e implementação. O app usa anúncios? Se sim:
- Anúncios para usuários premium = péssima UX, garante cancelamento
- Deve ter gate: `if (!isPremium) showAd()`

**Verificar que o gate existe antes de qualquer lançamento.**

---

## 12. Sentry Replay — `sessionSampleRate: 0.0`

**Arquivo:** `lib/main.dart:66`

```dart
options.replay.sessionSampleRate = 0.0;   // 0% de sessões gravadas
options.replay.onErrorSampleRate = 0.2;   // 20% de erros com replay
```

**Observação:** Replay em erros (20%) está ativado — isso grava a tela do usuário no momento do crash. Para um app de lista de compras com dados pessoais (nomes de itens, valores de compra), verificar se isso está em conformidade com LGPD/GDPR e se há disclosure na política de privacidade.

---

## 13. `chatStreamingTextProvider` — Flush Faltando

**Arquivo:** `lib/app/ai/providers/chat_provider.dart` (AGENTS.md documenta)

**AGENTS.md:** "after the SSE stream loop ends, flush remaining tokens to `chatStreamingTextProvider` before setting to null to avoid visual jumps"

**Verificar se este flush está implementado:**
```bash
grep -n "chatStreamingTextProvider" lib/app/ai/providers/chat_provider.dart | tail -10
```

Se a última linha for `state = null` sem flush anterior, é um bug visual ativo.
