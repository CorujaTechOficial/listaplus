# Diário de Correções — Lista Plus

## Sessão 1 — 32 bugs corrigidos

- [x] **#1** — `as double?` crash em models
- [x] **#2** — chat_provider `state.value!` null dereference
- [x] **#3** — share_provider `currentUser!` force-unwrap
- [x] **#4** — auth_screen `Platform` crash na web
- [x] **#5** — firestore_service stream subscription leak
- [x] **#6** — firestore_service batch >500 ops
- [x] **#7** — home_screen state mutation fora de setState
- [x] **#8** — home_screen stale provider read
- [x] **#9** — quick_add_bar double-pop barcode scan
- [x] **#10** — auth_service null credentials
- [x] **#11** — pantry_items_provider optimistic updates sem rollback
- [x] **#12** — shopping_lists_provider firstWhere sem orElse
- [x] **#13** — monthly_budget_provider unsafe as double?
- [x] **#14** — backup_provider não invalida providers no import
- [x] **#15** — paywall_screen context após unmount
- [x] **#16** — home_screen firstWhere fallback enganoso
- [x] **#17** — kilo_ai_service .first em choices vazio
- [x] **#18** — update_service completeFlexibleUpdate prematuro
- [x] **#19** — user_stats_provider streak com inDays (dias calendário)
- [x] **#20** — credits_provider DateTime.parse sem try/catch
- [x] **#21** — shopping_list_provider _ownerUid engole exceções
- [x] **#22** — Strings hardcoded → ARBs + gen-l10n (item_tile, budget_dashboard, home_screen)
- [x] **#23** — settings_screen versão hardcoded
- [x] **#24** — home_screen progress bar sem clamp
- [x] **#25** — ad_service_impl isAvailable sempre true
- [x] **#26** — share_provider sem verificação de colisão de código
- [x] **#27** — main.dart catch Object muito amplo
- [x] **#28** — revenuecat_service_impl listener concurrent modification
- [x] **#29** — revenuecat_service_impl LogLevel.debug em produção
- [x] **#30** — pantry_items_provider lê state.value após set
- [x] **#31** — shopping_lists_provider empty string currentListId
- [x] **#32** — model copyWith não permite limpar nullable fields (sentinel pattern)

## Sessão 2 — +12 bugs/segurança corrigidos

- [x] **#33** — `_retryStream` loop infinito (`attempt` resetando)
- [x] **#34** — Import ambíguo `Category` (`foundation` vs model)
- [x] **#35** — `setCurrentListId(null)` type error (interface `String?`)
- [x] **#36** — `AdServiceImpl.initialize()` nunca chamado no provider
- [x] **#37** — locale/dark_mode provider catch `FirebaseException` em vez de `Exception`
- [x] **#38** — home_screen: `Navigator.push` sem `await`, hardcoded strings
- [x] **#39** — `_retryStream` sem `controller.onCancel` cleanup
- [x] **#40** — Firebase rules: `sharedLists/{code}` write aberto, shared users podiam escrever em listas de outros
- [x] **#41** — `_showExportOptions`/`_exportExcel` sem acesso a `l10n`
- [x] **#42** — `Share.shareXFiles` deprecated → `SharePlus.instance.share`
- [x] **#43** — More hardcoded strings localizadas (achievements, exportPdf/Excel, yes/no, organizing AI)
- [x] **#44** — `_exportPdf` com string hardcoded

## Notas Finais

- `flutter analyze`: **0 erros**
- `flutter test`: **286 passed, 1 fails** (pre-existing: `settings_screen renders sections correctly` — test já falhava antes das correções)
- RevenueCat API key movida para `const String.fromEnvironment('REVENUECAT_API_KEY')` com fallback
- Sentry `sendDefaultPii` desligado, `tracesSampleRate` reduzido para 0.2
- `_retry` agora trata `SocketException`, `HttpException`, `TimeoutException`
- Firebase rules: `sharedLists/{code}` agora só `create`, não `update`/`delete`
- `shared_preferences` mantido (ainda usado por 4 providers)
