# Monetização & Conversão — Gaps Não Cobertos

> Todos os itens aqui são **novos** — não estão nos specs de paywall-redesign, paywall-cro, onboarding-high-conversion ou value-proposition-redesign.

---

## 1. Referral Program — Implementação Real

**Status atual:** `ReferralService` existe em `lib/services/referral_service.dart` mas `_awardPremiumDays()` é um stub vazio. A URL gerada aponta para `listaplus.com` (domínio errado — deveria ser `kipilist-6547b.web.app` ou domínio próprio). Não há UI de convite em lugar nenhum no app.

**O que falta:**
- Cloud Function para creditar dias premium no RevenueCat de forma segura (RevenueCat tem API de promotional entitlements)
- UI de convite: botão "Convidar amigos" em settings ou após completar uma lista
- Deep link processing: Firebase Dynamic Links ou AppLinks para capturar `?ref=uid` na instalação
- Tracking: quantos convites enviados, quantos converteram

**Impacto:** Referral boca-a-boca é o canal de menor CAC possível. 7 dias grátis para quem convida e para quem aceita é um incentivo provado. Sem isso o crescimento orgânico fica zero.

**Referências:**
- `lib/services/referral_service.dart` — stub para completar
- RevenueCat API: `POST /v1/subscribers/{app_user_id}/entitlements/{entitlement_identifier}` (promotional)

---

## 2. Widget Android (Home Screen)

**Status atual:** Não existe. `quick_actions` está configurado mas só abre o app.

**O que construir:**
- `AppWidget` com `home_widget` package (já popular no Flutter)
- Exibe a lista ativa com checkboxes interativas
- Tap no item → abre o app direto na lista
- Atualiza via `WorkManager` quando a lista muda no Firestore

**Impacto:** Widgets são o maior driver de DAU para apps de produtividade. Usuário vê a lista sem abrir o app → usa o app mais → retém mais → converte mais.

**Complexidade:** Alta (requer código nativo Android + `home_widget` package).

---

## 3. Push Notifications — Firebase Cloud Messaging

**Status atual:** `firebase_core` está configurado mas FCM não está no `pubspec.yaml`. Não há sistema de notificações.

**Notificações de alto impacto para instalar:**

| Tipo | Trigger | Valor |
|---|---|---|
| Lembrete de compra | Usuário criou lista mas não abriu há 3 dias | Re-engajamento |
| Alerta de orçamento | 80% do budget mensal atingido | Premium gate |
| Dispensa vencendo | Item com data de validade próxima | Retention |
| "Você compra X toda semana" | Baseado em histórico | Upsell IA |
| Lista compartilhada atualizada | Colega editou a lista | Social |

**Dependências a adicionar:**
```yaml
firebase_messaging: ^15.x.x
flutter_local_notifications: ^18.x.x
```

**Impacto:** Notificações bem-segmentadas aumentam DAU 40-60%. Budget alert é direto em conversão premium.

---

## 4. Prompt de Upgrade Diferido ("Wow Moment")

**Status atual:** Paywall só é mostrado quando usuário bate no limite. Zero prompts contextuais de upgrade dentro do fluxo de sucesso.

**O que adicionar:**

**4a. Pós-conclusão de lista (premium upsell suave):**
Quando usuário marca todos os itens (tela `ShoppingCompletionView`), adicionar após o confetti:
```
"Kipi ajudou você a comprar X itens hoje!
Desbloqueie IA ilimitada para planejar toda a semana →"
```
`FilledButton.tonal` (não bloqueante, fecha fácil).

**4b. Pós-AI action bem-sucedida:**
Quando `chat_provider.dart` executa `add_items` com sucesso e usuário está chegando no limite (≥ 20 de 30 ações), mostrar in-line no chat:
```
"✨ Kipi adicionou 8 itens — você tem 7 ações restantes este mês.
[Assinar Pro — IA ilimitada por R$0,83/dia]"
```

**4c. Compartilhamento como gancho:**
Quando usuário tenta compartilhar lista → paywall já existe, mas poderia mostrar antes: "Compartilhe esta lista com a família — só no Pro".

**Impacto:** Deferred prompts no momento de valor máximo convertem 3-5x mais que prompts no momento de bloqueio.

---

## 5. Plano Família

**Status atual:** Não existe. O app já tem sharing de listas mas não pricing familiar.

**O que construir:**
- RevenueCat offering: "Família" (ex: R$9,99/mês ou R$59,99/ano, até 6 membros)
- Google Play Family Library suporta subscrições compartilhadas
- UI no paywall: terceira card "Família" com badge "Melhor valor"

**Impacto:** Famílias têm muito menor churn (membros travam uns aos outros). ARPU familiar ≈ 2x ARPU individual. O Mercado Pago e Spotify provaram este modelo no Brasil.

---

## 6. Banner "Free Trial" para Usuários Free

**Status atual:** O trial (7 dias) só é comunicado quando o usuário chega no paywall. No dia-a-dia do app free, ZERO menção de que existe um trial gratuito.

**O que adicionar:**
- Banner não-obstrusivo no topo da AI screen para usuários free com ≥ 10 ações usadas:
  ```
  🎁 Experimente o Pro grátis por 7 dias — sem compromisso  [Experimentar]
  ```
- Disappears quando usuário assina ou dispensa 3x
- Implementar em `lib/app/ai/screens/ai_home_screen.dart`

**Impacto:** Usuários que nunca chegam no paywall de outra forma, mas estão engajados, podem ser convertidos via trial offer proativo.

---

## 7. App Review Prompt Otimizado

**Status atual:** `in_app_review: ^2.0.9` está no pubspec. `AppReviewService` existe. Não está claro quando é acionado.

**Ideal para pedir review:**
1. Após completar lista pela 3ª vez (não na primeira — usuário ainda não entendeu o valor)
2. Após AI adicionar 5+ itens com sucesso
3. NUNCA no onboarding, NUNCA em tela de erro

**Adicionar:**
- Lógica de "golden moment" no `ShoppingCompletionView` (já tem confetti)
- Contar completions no `UserStats`
- Trigger na 3ª completion com pelo menos 5 itens

**Impacto direto em ASO:** Reviews aumentam ranking orgânico → mais downloads → mais receita.

---

## 8. Upsell na Tela de Configurações — Contexto Premium

**Status atual:** `AccountMenuSheet` mostra "Become Premium" para usuários free, mas não mostra nada diferente para usuários premium (exceto o item de settings já mostrando "Pro ativo").

**O que melhorar:**
- Para usuários FREE: adicionar "X dias de trial grátis" ao lado de "Become Premium" no AccountMenuSheet
- Para usuários PRO: adicionar badge dourado no avatar/ícone de conta no header da lista
- Para usuários PRO: mostrar data de renovação na tela de settings

**Impacto:** Usuários premium vendo reforço positivo de que são "Pro" ficam mais satisfeitos e menos propensos a cancelar.

---

## 9. Notificação de Término do Trial

**Status atual:** RevenueCat gerencia o trial mas não há notificação in-app de "seu trial termina em 2 dias".

**O que fazer:**
- Webhook RevenueCat → Cloud Function → FCM: enviar notificação 2 dias antes do trial expirar
- In-app: verificar `CustomerInfo.entitlements` e se `expirationDate` está próxima, mostrar banner

**Impacto:** Trial-to-paid de 40% pode subir para 55-60% com lembretes bem-timed.
