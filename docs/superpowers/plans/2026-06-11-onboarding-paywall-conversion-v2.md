# Onboarding para Conversao no Paywall V2

**Data:** 2026-06-11  
**Status:** Plano consolidado  
**Objetivo:** Maximizar a conversao de novos usuarios no paywall exibido obrigatoriamente ao fim do onboarding, mantendo uma saida clara para a versao gratuita.

## 1. Principio central

O onboarding nao deve explicar todo o produto. Ele deve:

1. Demonstrar o diferencial do Kipi em poucos segundos.
2. Fazer o usuario declarar uma necessidade real.
3. Entregar uma primeira lista verdadeira e salva.
4. Mostrar o paywall imediatamente depois do primeiro sucesso.

O paywall continua sendo parte obrigatoria do fluxo. "Pular" significa entrar na versao gratuita, nao evitar a exibicao do paywall.

## 2. Metas do funil

| Metrica | Meta inicial |
|---|---:|
| Inicio do onboarding -> paywall visto | >= 80% |
| Tempo mediano ate o paywall | <= 35 segundos |
| Paywall visto -> CTA tocado | >= 25% |
| CTA tocado -> compra/trial confirmado | >= 70% |
| Lista criada antes do paywall | >= 90% |
| Falha tecnica sem fallback | < 1% |
| Saida pelo plano gratuito | Medir, nao esconder |

As metas devem ser recalibradas depois de 14 dias de baseline real.

## 3. Fluxo alvo

```text
[1. Demonstracao da IA]
          |
[2. Problema principal]
          |
[3. Personalizacao rapida]
          |
[4. Primeira lista criada]
          |
[5. Paywall obrigatorio]
       /       \
  Trial/Pro   Versao gratis
```

Cinco telas incluindo o paywall. Sem login, formulario longo ou loading artificial antes da oferta.

## 4. Navegacao global

- Exibir progresso discreto nas telas 2 a 4: `2 de 4`, `3 de 4`, `4 de 4`.
- Permitir voltar nas telas 2 a 4 sem perder selecoes.
- O botao Android Back volta uma etapa. Na primeira tela, abre confirmacao de saida.
- Nenhum skip anterior encerra o onboarding. O unico caminho para o app gratuito fica no paywall.
- Precarregar os pacotes RevenueCat ao iniciar a tela 1 para o paywall abrir sem spinner.
- Persistir o rascunho localmente a cada escolha para sobreviver a fechamento ou recriacao do processo.
- Se o app for reaberto com onboarding incompleto, retomar da ultima etapa concluida.

## 5. Tela 1: demonstracao da IA

### Objetivo

Comunicar em ate cinco segundos: "Kipi transforma uma intencao em uma lista pronta".

### UI

- Fundo com gradiente suave `primary -> tertiary`, sem excesso de brilho.
- Mascote Kipi com animacao curta de entrada.
- Headline de resultado, nao de tecnologia:
  - `Diga o que vai fazer. Kipi monta a lista.`
- Subtitulo:
  - `Receba os itens organizados em segundos.`
- Card central simulando uma conversa e uma lista sendo formada.
- CTA fixo inferior:
  - `Montar a minha lista`
- Link secundario nao necessario nesta tela.

### Interacao

- A animacao comeca automaticamente, mas o CTA aparece em ate 1,5 segundo.
- O usuario nao precisa esperar a demonstracao terminar.
- Respeitar `MediaQuery.disableAnimations`: mostrar o estado final imediatamente.
- Duracao maxima da sequencia completa: 4 segundos.

### Correcao do estado atual

- Remover espera obrigatoria ate `_showCta`.
- Eliminar textos e itens hardcoded por idioma. Todo conteudo deve vir de l10n.
- Manter exemplos culturalmente adequados, mas definidos em estrutura localizada e testavel.

## 6. Tela 2: problema principal

### Objetivo

Criar identificacao e capturar o beneficio que liderara a narrativa do paywall.

### UI

- Header com voltar e progresso.
- Headline:
  - `O que mais atrapalha suas compras?`
- Subtitulo:
  - `Escolha o principal. Vamos preparar o Kipi para isso.`
- Quatro cards de selecao unica:
  - `Esqueco itens`
  - `Gasto mais do que planejei`
  - `Minha familia nao acompanha a lista`
  - `Perco tempo organizando tudo`
- Card inteiro clicavel, alvo minimo 48 dp, estado selecionado com borda, fundo e check.
- CTA inferior:
  - Antes da selecao: desabilitado, `Escolha uma opcao`
  - Depois: `Continuar`

### Decisao de UX

Usar selecao unica. A headline do paywall precisa de uma motivacao primaria deterministica; multisselecao cria uma personalizacao arbitraria pelo "primeiro item" do `Set`.

## 7. Tela 3: personalizacao rapida

### Objetivo

Obter somente os dados necessarios para criar a primeira lista relevante.

### UI

- Header com voltar e progresso.
- Headline dinamica:
  - `Vamos montar algo util para voce`
- Duas perguntas, ambas por chips:
  - `O que voce organiza com mais frequencia?`
  - Mercado, casa, farmacia, receitas, pet.
  - `Para quantas pessoas?`
  - So eu, duas pessoas, familia.
- Nome opcional em um campo recolhido:
  - Link `Quero personalizar com meu nome`
  - Ao tocar, revelar o campo.
- CTA inferior:
  - `Criar minha primeira lista`

### Regras

- Categoria obrigatoria.
- Grupo recebe default `So eu`, editavel.
- Nao abrir teclado automaticamente.
- O texto deve explicar o efeito da escolha:
  - `Isso ajuda o Kipi a sugerir quantidades e itens mais relevantes.`

### Persistencia

Salvar `primaryGoal`, `shoppingCategory`, `householdSize` e `displayName`:

- imediatamente em `SharedPreferences`, como rascunho;
- no perfil Firestore depois que o servico estiver disponivel;
- manter no provider para uso imediato no fluxo.

## 8. Tela 4: primeira lista criada

### Objetivo

Produzir o pico emocional do onboarding. O usuario deve ver um resultado real, nao uma promessa.

### Estado inicial

- Headline:
  - `O que voce esta planejando?`
- Tres sugestoes contextuais e uma entrada livre:
  - Exemplo para mercado: `Compras da semana`, `Churrasco`, `Cafe da manha`.
- Sugestoes devem ser frases completas que gerem listas diferentes, nao apenas nomes de categoria.
- CTA de envio no thumb zone.

### Geracao

1. Enviar a solicitacao ao servico de IA com timeout curto.
2. Mostrar itens entrando progressivamente.
3. Salvar lista e itens antes de declarar sucesso.
4. Atualizar `currentListIdProvider`.
5. Persistir no estado do onboarding `createdListId`, `createdItemCount` e `creationSource`.

### Fallback obrigatorio

- Timeout de IA: 6 segundos.
- Em timeout, offline ou erro, gerar uma lista local curada pela combinacao categoria + sugestao + grupo.
- Salvar a lista fallback da mesma forma.
- Nunca deixar o usuario preso em spinner.
- Nao exibir erro tecnico se o fallback funcionar.

### Estado de sucesso

- Check animado e resposta:
  - `Sua lista esta pronta`
  - `{count} itens organizados para voce`
- Exibir preview dos primeiros 4 itens e `+N itens`.
- CTA:
  - `Continuar`
- Autoavanco apenas depois de 1,2 segundo e somente se o usuario nao estiver usando leitor de tela.

### Estado de falha total

Se IA e persistencia falharem:

- Exibir explicacao curta e dois botoes:
  - `Tentar novamente`
  - `Continuar com uma lista de exemplo`
- A lista de exemplo precisa existir localmente e ser importada assim que houver backend.

### Correcao do estado atual

- O paywall so pode mostrar `Lista criada` quando `createdListId != null`.
- Falha de IA nao deve ser tratada como conclusao silenciosa.
- O CTA final deve refletir o resultado: sucesso, fallback ou erro recuperavel.

## 9. Transicao para o paywall

Remover a tela atual de loading de quatro segundos.

Substituir por uma transicao de 500-800 ms:

- o card da lista sobe;
- o fundo muda para o gradiente do paywall;
- o titulo vira a promessa Pro ligada ao problema selecionado.

Isso preserva continuidade visual e investimento percebido sem fingir processamento.

## 10. Tela 5: paywall obrigatorio

### Estrutura acima da dobra

1. Link `Restaurar` no topo.
2. Hero compacto com mascote pequeno.
3. Headline personalizada pelo problema principal.
4. Confirmacao verdadeira da lista criada, quando aplicavel.
5. Tres beneficios no maximo.
6. Plano anual e mensal visiveis.
7. CTA sticky.
8. Saida para a versao gratuita abaixo do CTA.

### Headlines por problema

| Problema | Headline |
|---|---|
| Esquecimento | `Nunca mais volte ao mercado por um item esquecido` |
| Gastos | `Planeje melhor e mantenha suas compras sob controle` |
| Familia | `Uma lista que toda a familia acompanha em tempo real` |
| Tempo | `Organize suas compras em minutos, nao em horas` |
| Fallback | `Deixe o Kipi cuidar da parte chata das compras` |

O nome pode aparecer no subtitulo, mas nao deve alongar a headline.

### Confirmacao de valor

Quando uma lista foi criada:

```text
Sua primeira lista esta pronta
8 itens organizados para voce
```

Quando o usuario usou fallback:

```text
Sua primeira lista esta pronta
Voce pode ajustar tudo quando entrar
```

Quando nenhuma lista foi salva, nao renderizar esse bloco.

### Beneficios

Mostrar apenas os tres mais relevantes, reordenados pela dor:

- IA sem limites para montar e organizar listas.
- Planejamento, despensa e receitas conectados.
- Listas compartilhadas e sincronizadas em tempo real.

Evitar nove features, comparacao antes/depois e dois depoimentos simultaneos.

### Prova social

- Usar avaliacao, numero de familias e depoimentos somente com fonte verificavel.
- Se nao houver dado confiavel, usar trust signals reais:
  - `Pagamento protegido pelo Google Play`
  - `Cancele quando quiser`
  - `Restaure sua compra a qualquer momento`
- Nao usar numeros inventados ou depoimentos ficticios.

### Planos

- Anual selecionado por default quando disponivel.
- Mostrar:
  - preco anual total;
  - equivalente mensal;
  - economia percentual real contra 12 mensalidades;
  - dias de trial obtidos do RevenueCat.
- Mensal permanece visivel, nao escondido em outra tela.
- Nao usar preco por dia comparado a cafe como informacao principal.

### CTA

Com trial:

```text
Experimentar gratis por {days} dias
Hoje: R$ 0,00. Depois: {annualPrice}/ano. Cancele quando quiser.
```

Sem trial:

```text
Desbloquear KipiList Pro
{annualPrice}/ano. Cancele quando quiser.
```

O texto deve mudar ao selecionar o plano mensal.

### Saida gratuita

- Label: `Continuar com a versao gratuita`.
- Abaixo do CTA, com alvo de toque minimo de 44 dp.
- Cor secundaria com contraste legivel, sem alpha de 25%.
- Ao tocar, marcar onboarding como visto, registrar `paywall_dismissed` e abrir a lista que acabou de ser criada.
- Nao adicionar confirmacao punitiva, contagem regressiva ou texto de culpa.

### Estados tecnicos

- Pacotes ja devem estar em cache ao chegar.
- Se RevenueCat ainda estiver carregando, manter CTA desabilitado por no maximo 3 segundos.
- Em falha, exibir:
  - `Nao foi possivel carregar os planos`
  - `Tentar novamente`
  - `Continuar com a versao gratuita`
- Compra cancelada pelo usuario nao deve aparecer como erro.
- Compra pendente deve ter estado especifico e orientacao.

## 11. Sistema visual

### Hierarquia

- Uma headline por tela.
- Um CTA primario.
- No maximo quatro tamanhos tipograficos.
- Evitar `FontWeight.w900` em todos os elementos; reservar para headline e CTA.

### Layout

- Grid de 4/8 dp.
- Padding horizontal: 24 dp.
- Cards: raio 20 dp, padding 16-20 dp.
- CTA: altura 56 dp, raio 28 dp.
- Area inferior deve respeitar teclado e safe area.
- Validar em 320, 360, 375 e 412 dp de largura.

### Movimento

- Duracoes entre 180 e 450 ms.
- Uma animacao dominante por tela.
- Sem pulsacao infinita no CTA do paywall.
- Haptic leve em selecao; medio na lista criada.
- Respeitar configuracao de reduzir movimento.

### Acessibilidade

- Contraste WCAG AA.
- Alvos de toque >= 44 dp.
- `Semantics` para cards selecionaveis, progresso e lista gerada.
- Anunciar sucesso e mudanca de etapa ao leitor de tela.
- Layout funcional com escala de fonte 1.3 e 2.0.
- Nao depender somente de cor para estado selecionado.

## 12. Modelo de estado

Adicionar ao estado do onboarding:

```dart
class OnboardingState {
  final int currentStep;
  final String primaryGoal;
  final String shoppingCategory;
  final String householdSize;
  final String displayName;
  final String? selectedPrompt;
  final String? createdListId;
  final int createdItemCount;
  final String? creationSource; // ai, fallback, example
  final DateTime startedAt;
}
```

O estado deve ter serializacao, persistencia local e limpeza depois da conclusao.

## 13. Analytics

### Eventos

```text
onboarding_started
onboarding_step_viewed
onboarding_step_completed
onboarding_back_tapped
onboarding_exit_attempted
onboarding_goal_selected
onboarding_profile_completed
onboarding_list_generation_started
onboarding_list_generation_succeeded
onboarding_list_generation_fallback
onboarding_list_generation_failed
onboarding_list_saved
onboarding_paywall_viewed
onboarding_plan_selected
onboarding_purchase_tapped
onboarding_purchase_completed
onboarding_purchase_cancelled
onboarding_purchase_failed
onboarding_free_continue_tapped
onboarding_completed
```

### Parametros permitidos

- `step`
- `goal`
- `category`
- `household_size`
- `creation_source`
- `item_count`
- `package_type`
- `has_trial`
- `trial_days`
- `duration_ms`
- `error_category`
- `variant`

Nao enviar nome, prompt livre ou conteudo da lista ao Analytics.

### Funis

1. Inicio -> cada etapa -> paywall.
2. Paywall -> selecao de plano -> CTA -> confirmacao.
3. Geracao IA versus fallback -> conversao.
4. Dor selecionada -> conversao por headline.
5. Tempo ate valor -> conversao.

## 14. Experimentos

Implementar variantes via Firebase Remote Config. Testar uma variavel principal por ciclo.

### Teste 1: quantidade de etapas

- Controle: fluxo de quatro etapas antes do paywall.
- Variante: combinar problema e personalizacao em uma unica tela.
- Hipotese: reduzir um toque aumenta chegada ao paywall sem reduzir conversao.
- Metrica primaria: paywall visto / onboarding iniciado.
- Guardrail: compra concluida / onboarding iniciado.

### Teste 2: CTA do paywall

- A: `Experimentar gratis por 7 dias`.
- B: `Comecar agora por R$ 0`.
- Metrica primaria: CTA tocado / paywall visto.
- Guardrail: compra confirmada / CTA tocado.

### Teste 3: framing do hero

- A: headline baseada na dor.
- B: headline baseada na lista criada.
- Metrica primaria: compra/trial / paywall visto.

### Teste 4: apresentacao dos planos

- A: anual e mensal com o mesmo peso.
- B: anual expandido, mensal compacto.
- Metrica primaria: trial iniciado.
- Guardrail: receita prevista e reembolso.

### Regras

- Nao encerrar teste por tendencia de poucos dias.
- Definir amostra antes do inicio.
- Nao alterar preco, headline e CTA no mesmo experimento.
- Avaliar conversao e tambem D1, D7, cancelamento e reembolso.

## 15. Fases de implementacao

### Fase 0: baseline

- Adicionar eventos ao fluxo atual antes de redesenhar.
- Coletar pelo menos 7 dias de funil.
- Registrar trial, precos e elegibilidade reais por pacote.

### Fase 1: confiabilidade

- Adicionar estado persistente.
- Garantir fallback local.
- Corrigir confirmacao falsa de lista.
- Tratar cancelamento, erro e compra pendente separadamente.
- Precarregar RevenueCat.

### Fase 2: fluxo e UI

- Implementar navegacao, progresso e voltar.
- Refatorar telas 1 a 4.
- Remover loading artificial.
- Aplicar transicao de sucesso para paywall.

### Fase 3: paywall

- Reduzir conteudo.
- Personalizar hero.
- Tornar preco e trial totalmente transparentes.
- Corrigir acessibilidade do botao gratuito.
- Remover pulsacao infinita.

### Fase 4: persistencia e ativacao

- Salvar preferencias no perfil.
- Abrir a lista criada ao continuar gratis.
- Manter a mesma lista ao concluir compra.
- Limpar rascunho apenas depois da navegacao final.

### Fase 5: experimentacao

- Configurar variantes no Remote Config.
- Criar dashboard por etapa, pacote e variante.
- Rodar os testes na ordem definida.

## 16. Arquivos principais

| Arquivo | Mudanca |
|---|---|
| `lib/app/onboarding/screens/onboarding_screen.dart` | Novo fluxo, progresso, voltar e retomada |
| `lib/app/onboarding/screens/onboarding_slide_ai_demo.dart` | CTA antecipado, l10n e reduzir movimento |
| `lib/app/onboarding/screens/onboarding_slide_pain_point.dart` | Selecao unica e semantica |
| `lib/app/onboarding/screens/onboarding_slide_personalization.dart` | Defaults, nome opcional e validacao |
| `lib/app/onboarding/screens/onboarding_ai_chat.dart` | Timeout, fallback, estado de sucesso e persistencia confiavel |
| `lib/app/onboarding/screens/onboarding_slide_plan_loading.dart` | Remover do fluxo |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | Paywall compacto, transparente e personalizado |
| `lib/app/onboarding/providers/onboarding_data_provider.dart` | Estado serializavel e persistente |
| `lib/app/onboarding/models/user_preferences.dart` | Adicionar goal e resultado da primeira lista |
| `lib/services/analytics_service.dart` | Eventos completos do funil |
| `lib/core/providers/preferences_providers.dart` | Rascunho e conclusao do onboarding |
| `lib/l10n/app_en.arb` | Novas copias e placeholders |
| `lib/l10n/app_pt.arb` | Copia PT-BR revisada |
| `test/app/onboarding/` | Testes de estado, widgets e fluxo |

## 17. Testes obrigatorios

### Unidade

- Mapeamento de problema para headline.
- Calculo de economia anual.
- Trial label por dias, semanas e meses.
- Serializacao e retomada do estado.
- Fallback de lista por categoria e grupo.
- Parser de lista da IA.

### Widget

- CTA da tela 1 aparece antes da animacao terminar.
- Tela 2 exige exatamente uma selecao.
- Tela 3 usa default de grupo.
- Sucesso so aparece depois de salvar.
- Paywall nao afirma lista criada sem `createdListId`.
- Botao gratuito permanece visivel e acessivel.
- Erro do RevenueCat nao bloqueia entrada gratuita.
- Fonte ampliada nao causa overflow.

### Integracao

- Caminho IA -> lista -> paywall -> gratuito.
- Caminho fallback -> lista -> paywall -> gratuito.
- Caminho IA -> paywall -> compra.
- Compra cancelada permanece no paywall.
- App fechado e reaberto retoma etapa.
- Back conserva as selecoes.

## 18. Criterios de aceite

- Todo usuario ve o paywall antes de entrar no app.
- Todo usuario pode entrar gratuitamente sem procurar um controle oculto.
- Nenhuma tela simula processamento inexistente.
- Nenhuma confirmacao de sucesso aparece antes da persistencia.
- Nenhuma prova social sem fonte verificavel.
- O paywall exibe preco total, recorrencia, trial e momento da cobranca.
- O fluxo funciona offline com fallback.
- As preferencias coletadas continuam sendo usadas depois do onboarding.
- Todos os eventos do funil chegam ao Analytics.
- `flutter gen-l10n`, `flutter analyze --fatal-infos` e `flutter test` passam.

## 19. Ordem recomendada de entrega

1. Instrumentacao e baseline.
2. Confiabilidade da primeira lista.
3. Persistencia e retomada.
4. Novo fluxo visual.
5. Paywall compacto.
6. Acessibilidade e testes.
7. Remote Config e primeiro experimento.

Nao misturar a reescrita completa com o primeiro teste A/B. Primeiro estabilizar a experiencia e medir; depois experimentar.
