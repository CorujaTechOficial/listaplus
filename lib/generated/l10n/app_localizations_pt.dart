// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get navChat => 'Bater papo';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Cardápio';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get create => 'Criar';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get regenerate => 'Regerar';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Fechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Fazer upgrade';

  @override
  String get clear => 'Limpar';

  @override
  String error(String message) {
    return 'Erro: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erro: $message';
  }

  @override
  String get purchaseError => 'Erro ao processar compra. Tente novamente.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Tente novamente.';

  @override
  String get loading => 'Carregando...';

  @override
  String get fieldRequired => 'Campo obrigatório';

  @override
  String get addedFeedback => 'Adicionados!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Sair do modo de compras';

  @override
  String get exit => 'Saída';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecionados',
      one: '$count selecionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Já comprado';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar comprados';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareViaCode => 'Compartilhar via código';

  @override
  String get importViaCode => 'Importar via código';

  @override
  String get listAssistant => 'Assistente desta lista';

  @override
  String get globalAssistant => 'Assistente geral';

  @override
  String get becomePremium => 'Tornar-se Premium';

  @override
  String get manageSubscription => 'Gerenciar assinatura';

  @override
  String get completePurchase => 'Concluir Compra';

  @override
  String get confirmClearList => 'Remover todos os itens?';

  @override
  String get shareListTitle => 'Compartilhar Lista';

  @override
  String get shareThisCode => 'Compartilhe este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Digite o código';

  @override
  String get confirmArchiveTitle => 'Concluir Compra';

  @override
  String get confirmArchiveContent =>
      'Deseja concluir esta compra e arquivar a lista?';

  @override
  String get complete => 'Concluir';

  @override
  String get listArchived => 'Lista arquivada com sucesso!';

  @override
  String listAdded(String listName) {
    return '$listName adicionada!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get archiveList => 'Concluir Compra';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Gerar lista de compras';

  @override
  String get pantryEmpty => 'Dispensa vazia';

  @override
  String get pantryEmptySubtitle =>
      'Adicione produtos que você quer manter em casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(ns) precisam ser comprados';
  }

  @override
  String get noItemsToBuy => 'Nenhum item precisa ser comprado';

  @override
  String get newPantryList => 'Compras da Dispensa';

  @override
  String get newListTitle => 'Nova Lista de Compras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(ns) serão adicionados';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" criada com $count itens';
  }

  @override
  String get noTracking => 'Sem rastreamento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantidade ideal';

  @override
  String get currentQuantity => 'Quantidade atual';

  @override
  String get consumed => 'Consumi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido para $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remover \"$name\" da dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Digitalizar produto';

  @override
  String get positionBarcodeCenter => 'Posicione o código de barras no centro';

  @override
  String get product => 'Produto';

  @override
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglês';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Procurar idioma...';

  @override
  String get currency => 'Moeda';

  @override
  String get chooseCurrency => 'Selecione a moeda';

  @override
  String get searchCurrency => 'Pesquisar moeda...';

  @override
  String get appearance => 'Aparência';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinâmicas';

  @override
  String get dynamicColorsSubtitle =>
      'Usa cores baseadas no teu papel de parede';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desative as cores dinâmicas para que a cor do tema tenha efeito';

  @override
  String get finance => 'Financeiro';

  @override
  String get monthlyBudgetNav => 'Orçamento mensal';

  @override
  String get budgetSubtitle => 'Acompanhe seus gastos do mês';

  @override
  String get data => 'Dados';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar ou importar seus dados';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get myAchievements => 'Minhas conquistas';

  @override
  String get itemsPurchased => 'Itens comprados';

  @override
  String get totalSavings => 'Economia total';

  @override
  String get currentStreak => 'Sequência Atual';

  @override
  String streakDays(int count) {
    return '$days dias';
  }

  @override
  String get unlockedBadges => 'Emblemas desbloqueados';

  @override
  String get badgeBeginner => 'Novato';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Salvando Mestre';

  @override
  String get badgeSuperPlanner => 'Superplanejador';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription => 'Backup e exportação é premium';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get exportDataSubtitle => 'Salvar todas as listas como JSON';

  @override
  String get importData => 'Importar dados';

  @override
  String get importDataSubtitle => 'Restaurar listas de um JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Cole o JSON do backup aqui...';

  @override
  String get backupExported => 'Backup exportado!';

  @override
  String get budgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetPremiumLocked => 'Orçamento mensal global é premium';

  @override
  String get budgetUpgradePrompt => 'Faça upgrade para desbloquear';

  @override
  String get noBudgetDefined => 'Nenhum orçamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Definir orçamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Valor';

  @override
  String get setBudgetTitle => 'Orçamento Mensal';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total itens';
  }

  @override
  String progressBudget(String amount) {
    return 'Orçamento: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Adicionar Item';

  @override
  String get itemName => 'Nome do item';

  @override
  String get quantityShort => 'Qtd';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preço estimado';

  @override
  String get addItemPrice => 'Preço estimado';

  @override
  String get editItem => 'Editar Item';

  @override
  String get quantityFull => 'Quantidade';

  @override
  String get editItemPrice => 'Preço estimado';

  @override
  String get addToPantry => 'Adicionar à Dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Deseja adicionar \"$name\" à sua Dispensa?';
  }

  @override
  String get yes => 'Sim';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Qtd ideal';

  @override
  String get currentQty => 'Qtd atual';

  @override
  String get trackStock => 'Rastrear estoque';

  @override
  String get trackStockActive => 'Aparece na sugestão de compras';

  @override
  String get trackStockInactive => 'Não gera sugestão de compra';

  @override
  String get createListDialog => 'Criar Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Histórico de Listas';

  @override
  String get myLists => 'Minhas Listas';

  @override
  String get viewActive => 'Ver Ativas';

  @override
  String get viewHistory => 'Ver Histórico';

  @override
  String get noArchivedLists => 'Nenhuma lista arquivada';

  @override
  String get noActiveLists => 'Nenhuma lista ativa';

  @override
  String completedOn(String date) {
    return 'Concluída em $date';
  }

  @override
  String get sharedLabel => 'Compartilhada';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Remover';

  @override
  String get deleteListTitle => 'Excluir lista';

  @override
  String deleteListContent(String name) {
    return 'Tem certeza que deseja excluir \"$name\"? Todos os itens serão removidos.';
  }

  @override
  String get removeSharedListTitle => 'Remover lista compartilhada';

  @override
  String removeSharedListContent(String name) {
    return 'Remover \"$name\" da sua lista de listas? A lista original não será afetada.';
  }

  @override
  String get createNewList => 'Criar nova lista';

  @override
  String get aiAssistant => 'Assistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtenha sugestões inteligentes, receitas e dicas personalizadas com nosso assistente de IA.';

  @override
  String get generalAssistant => 'Assistente Geral';

  @override
  String get newChat => 'Nova Conversa';

  @override
  String get noHistory => 'Sem histórico de conversas';

  @override
  String get deleteSession => 'Excluir Conversa';

  @override
  String get deleteSessionConfirm =>
      'Tem certeza que deseja excluir esta conversa? As mensagens serão perdidas permanentemente.';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String get chatHintBlocked => 'Desbloqueie IA para conversar';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Assistente de IA';

  @override
  String get closeSheet => 'Fechar';

  @override
  String get scanBarcodeTitle => 'Digitalizar código de barras';

  @override
  String get listHelp => 'Como posso ajudar com sua lista?';

  @override
  String get generalHelp => 'Como posso ajudar com suas compras hoje?';

  @override
  String get chatSubtitle =>
      'Peça sugestões de itens, receitas or dicas de economia.';

  @override
  String get aiError =>
      'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get aiLimitAlmostReached => 'Quase sem mensagens de IA';

  @override
  String get unlockAi => 'Desbloqueie IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Assine o Premium para desbloquear a resposta completa e obter dicas ilimitadas de IA para suas compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining ações de IA restantes este mês — assine para ilimitado';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensal de IA atingido. Assine o Pro para ilimitado →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get onboardingWelcomeTitle => 'Bem-vindo ao KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'A maneira mais inteligente de organizar suas compras e economizar dinheiro.';

  @override
  String get onboardingSetupTitle => 'Personalize sua experiência';

  @override
  String get onboardingSetupDesc =>
      'Escolha como você deseja que o KipiList seja exibido e funcione para você.';

  @override
  String get onboardingLoginTitle => 'Salve tudo na nuvem';

  @override
  String get onboardingLoginDesc =>
      'Seus dados sincronizados em todos os seus dispositivos';

  @override
  String get onboardingShareTitle => 'Compartilhe com quem você ama';

  @override
  String get onboardingShareDesc =>
      'Sincronize listas com familiares e amigos em tempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloqueie todos os recursos';

  @override
  String get onboardingPremiumSubtitle =>
      'Aproveite ao máximo suas listas de compras';

  @override
  String get onboardingAnnualBadge => 'Melhor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensal';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos os planos';

  @override
  String get onboardingSubscribeCta => 'Inscrever-se';

  @override
  String get onboardingCancelAnytime =>
      'Cancele a qualquer momento. Sem compromisso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como convidado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      'Já tem uma assinatura? Toque aqui para restaurá-lo.';

  @override
  String get onboardingMaybeLater => 'Talvez mais tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Ei $name, organize suas compras da maneira certa.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crie e compartilhe listas instantaneamente. O Kipi adiciona itens automaticamente com base nos seus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conheça Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pergunte qualquer coisa: crie listas, encontre receitas, controle sua despensa, planeje sua semana.';

  @override
  String get onboardingSlide3Title => 'Despensa e planejamento de refeições';

  @override
  String get onboardingSlide3Body =>
      'Acompanhe o que você tem, planeje refeições e gere listas de compras automaticamente.';

  @override
  String get onboardingExit => 'Saída';

  @override
  String get onboardingPersonalizationTitle => 'Vamos conhecer você';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos isso para personalizar suas sugestões e tornar as compras mais inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Qual é a sua comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'por exemplo Pizza, Sushi, Lasanha...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Pular por enquanto';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Conte-nos sua comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Tela inicial padrão';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Escolha entre lista de compras ou bate-papo com IA';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Bate-papo com IA';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erro ao carregar ofertas. Tente novamente.';

  @override
  String get paywallPurchaseError =>
      'Não foi possível concluir a compra. Tente novamente.';

  @override
  String get paywallRestoreError =>
      'Nenhuma assinatura ativa encontrada para restaurar.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIAS GRÁTIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMANAS GRÁTIS',
      one: '$count SEMANA GRÁTIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESES GRÁTIS',
      one: '$count MÊS GRÁTIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Experimente grátis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele a qualquer momento. Sem cobrança hoje.';

  @override
  String get paywallTrialCta => 'Iniciar Teste Grátis';

  @override
  String get recipeAddToList => 'Adicionar à lista de compras';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingredientes adicionados a $listName';
  }

  @override
  String get noListSelected => 'Nenhuma lista de compras selecionada';

  @override
  String get paywallFeaturesTitle => 'Tudo que você precisa:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza sua lista automaticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crie quantas listas você precisar';

  @override
  String get paywallFeatureDescSharing => 'Compre juntos em tempo real';

  @override
  String get paywallFeatureDescPantry => 'Acompanhe o que você tem em casa';

  @override
  String get paywallFeatureDescBudget =>
      'Fique dentro do orçamento todos os meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Família conectada';

  @override
  String get paywallFeatureSmartAI => 'IA ilimitada';

  @override
  String get paywallFeatureExpenseControl => 'Controle de Gastos';

  @override
  String get paywallFeatureSharing => 'Compartilhamento';

  @override
  String get paywallBeforeAfterTitle => 'O antes e depois da IA:';

  @override
  String get paywallLabelCommon => 'Comum';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'sabão';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pão';

  @override
  String get paywallAfterItem1 => 'Grãos';

  @override
  String get paywallAfterItem2 => 'Limpeza';

  @override
  String get paywallAfterItem3 => 'Carnes';

  @override
  String get paywallAfterItem4 => 'Padaria';

  @override
  String get paywallTestimonialsTitle => 'O que nossos usuários dizem:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'A IA organiza minhas compras em segundos. Economizo 20 min por ida ao mercado.';

  @override
  String get paywallTestimonial2Name => 'Carlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca mais esqueci um item da lista. O chat com IA é sensacional!';

  @override
  String get paywallSocialProof => '+2.400 famílias usam';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MELHOR VALOR';

  @override
  String get paywallMostPopular => 'MAIS POPULAR';

  @override
  String get paywallProLabel => 'PRÓ';

  @override
  String get paywallSafeCheckout => 'Pagamento seguro';

  @override
  String get paywallSelectPlan => 'Escolha seu plano:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ECONOMIZE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Apenas $price/mês';
  }

  @override
  String get paywallPackageAnnual => 'Plano Anual';

  @override
  String get paywallPackageMonthly => 'Plano Mensal';

  @override
  String get paywallPackageLifetime => 'Acesso Vitalício';

  @override
  String get paywallCancelAnytime => 'Cancele quando quiser. Sem compromisso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeiros $days dias GRÁTIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Pagamento seguro · Cancele quando quiser';

  @override
  String get paywallPolicy => 'Política de Privacidade';

  @override
  String get paywallTerms => 'Termos de Uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi sem limites';

  @override
  String get paywallHeroSubtitle =>
      'IA ilimitada, planejamento completo e listas em família — tudo em um só app';

  @override
  String get paywallBenefit1Desc =>
      'Sem limite de ações. Kipi sempre disponível para agir.';

  @override
  String get paywallBenefit2Desc => 'Listas compartilhadas com quem você ama';

  @override
  String get paywallBenefit3Desc =>
      'Acompanhamento de despesas e listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidade total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Comece gratuitamente – $days dias';
  }

  @override
  String get premiumUpgrade => 'Faça upgrade para desbloquear';

  @override
  String get itemRemoved => 'Item removido';

  @override
  String get undo => 'Desfazer';

  @override
  String get emptyListTitle => 'Sua lista está vazia';

  @override
  String get emptyListSubtitle => 'Adicione itens para começar';

  @override
  String get noListFoundTitle => 'Nenhuma lista encontrada';

  @override
  String get noListFoundSubtitle => 'Crie sua primeira lista para começar';

  @override
  String get createFirstList => 'Criar Primeira Lista';

  @override
  String get listBudgetTitle => 'Orçamento da Lista';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get removeBudget => 'Remover';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartilhar listas';

  @override
  String get prefFullHistory => 'Histórico completo';

  @override
  String get prefExportData => 'Exportar dados';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orçamento mensal global';

  @override
  String get prefAIAssistant => 'Assistente de IA Personalizado';

  @override
  String get prefUnlimitedPantry => 'Dispensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefatos Interativos da IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Roxo';

  @override
  String get themeRed => 'Vermelho';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Âmbar';

  @override
  String get themeTeal => 'Cerceta';

  @override
  String get themeBrown => 'Marrom';

  @override
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Padaria';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'pacote';

  @override
  String get shareSubject => 'Lista de Compras';

  @override
  String get monthlyBudgetTitle => 'Orçamento Mensal';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Excluir lista';

  @override
  String get pantryItemRemoved => 'Item removido';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit itens precisam ser comprados',
      one: '$deficit item precisa ser comprado',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carrinho';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Recursos avançados';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desselecionar tudo';

  @override
  String get monthlyBudgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetEditTitle => 'Orçamento Mensal';

  @override
  String get budgetDashboardTitle => 'Painel';

  @override
  String get selectListForDashboard =>
      'Selecione uma lista para ver o dashboard.';

  @override
  String get spendingAnalysis => 'Análise de Gastos';

  @override
  String get noItemsToAnalyze => 'Nenhum item na lista para analisar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marque itens como comprados para ver a análise.';

  @override
  String get totalSpending => 'Gasto Total';

  @override
  String get spendingByCategory => 'Gastos por Categoria';

  @override
  String get achievements => 'Conquistas';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO COM IA...';

  @override
  String get yesLabel => 'Sim';

  @override
  String get noLabel => 'Não';

  @override
  String get shareListText => 'Minha Lista de Compras';

  @override
  String get emptyListAddItems =>
      'Sua lista está vazia! Adicione itens primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada magicamente por categorias! ✨';

  @override
  String get shoppingMode => 'Modo Compras';

  @override
  String get smartOrganization => 'Organização Inteligente';

  @override
  String get savings => 'Economia';

  @override
  String get shoppingModeHeader => 'MODO COMPRAS';

  @override
  String get shareAsText => 'Enviar itens como texto formatado';

  @override
  String get shareRealtime => 'Sincronizar em tempo real com outras pessoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt =>
      'Sugira receitas com os itens da minha lista.';

  @override
  String get economyTips => 'Dicas de economia';

  @override
  String get economyTipsPrompt => 'Como economizar nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organize por corredores de mercado.';

  @override
  String get recipeSuggestion => 'Sugestão de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Adicionar tudo à lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Digitar por voz (Grátis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz com IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de Voz com IA';

  @override
  String get voiceCommandContent =>
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver Planos';

  @override
  String get itemsAddedSuccess => 'Itens adicionados à lista!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar Feedback';

  @override
  String get feedbackPrompt => 'O que gostarias de partilhar?';

  @override
  String get feedbackTypeBug => 'Reportar Erro';

  @override
  String get feedbackTypeBugHint => 'Algo não está a funcionar';

  @override
  String get feedbackTypeSuggestion => 'Sugestão';

  @override
  String get feedbackTypeSuggestionHint => 'Ideia para melhorar a app';

  @override
  String get feedbackTypeTranslation => 'Problema de Tradução';

  @override
  String get feedbackTypeTranslationHint =>
      'Tradução incorreta ou pouco natural';

  @override
  String get feedbackTypeFeature => 'Pedido de Funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que gostarias de ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de feedback';

  @override
  String get feedbackHint => 'Descreve o teu feedback em detalhe...';

  @override
  String get feedbackSend => 'Enviar Feedback';

  @override
  String get feedbackSending => 'A enviar...';

  @override
  String get feedbackThankYou => 'Obrigado!';

  @override
  String get feedbackThankYouMessage =>
      'O teu feedback foi recebido e ajuda-nos a melhorar o KipiList para todos.';

  @override
  String get feedbackBack => 'Voltar';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Tentar novamente';

  @override
  String get feedbackSettingsTitle => 'Enviar Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Reportar erros, sugerir melhorias ou corrigir traduções';

  @override
  String get aiEnergy => 'Energia da IA';

  @override
  String get searchInConversation => 'Pesquisar na conversa...';

  @override
  String get noMessagesFound => 'Nenhuma mensagem encontrada';

  @override
  String get suggestedQuestions => 'Perguntas sugeridas:';

  @override
  String get shoppingAssistant => 'Assistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprados';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver itens';

  @override
  String get noItemsInList => 'Nenhum item na lista';

  @override
  String get longHistoryWarning =>
      'Histórico longo: o assistente foca nas últimas mensagens para otimizar o desempenho.';

  @override
  String get listening => 'Ouvindo...';

  @override
  String get addDirectToList => 'Adicionar direto na lista';

  @override
  String get unlockFullResponse => 'Desbloquear Resposta Completa';

  @override
  String get switchList => 'Trocar lista';

  @override
  String get marketMode => 'Modo Mercado';

  @override
  String get backToChat => 'Voltar para o Chat';

  @override
  String get finishShopping => 'Concluir Compras';

  @override
  String get welcomeAiAssistant => 'Bem-vindo ao Assistente IA';

  @override
  String get createListToStartAi =>
      'Crie uma lista de compras para começar a usar o chat inteligente.';

  @override
  String get howCanIHelp => 'Como posso ajudar?';

  @override
  String get chatSubtitleShort =>
      'Pergunte sobre preços, receitas, organização...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprados';
  }

  @override
  String get quickReplies => 'Respostas rápidas:';

  @override
  String get voiceProFeature =>
      'Comandos de voz avançados são Pro. Ativando ditado básico...';

  @override
  String get viewPro => 'Ver Pro';

  @override
  String get errorLoadingChat => 'Ops! Algo deu errado ao carregar o chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get errorOscillation =>
      'Isso pode ocorrer devido a oscilações de rede ou indisponibilidade temporária. Por favor, tente novamente.';

  @override
  String get activeListening => 'Escuta Ativa';

  @override
  String get whatToDoWithItem => 'O que deseja fazer com este item?';

  @override
  String get viewDetails => 'Ver Detalhes';

  @override
  String get openMenu => 'Abrir menu';

  @override
  String get viewRecipe => 'Ver Receita';

  @override
  String get recipeCreated => 'Receita criada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Eliminar';

  @override
  String get deleteRecipeConfirm => 'Eliminar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Tens a certeza de que queres eliminar \"$recipeName\"? Esta ação não pode ser desfeita.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instruções';

  @override
  String get prepTime => 'Tempo de preparação';

  @override
  String get recipeSaved => 'Receita guardada!';

  @override
  String get noRecipesSaved => 'Nenhuma receita guardada';

  @override
  String get noRecipesSavedHint =>
      'Cria a tua primeira receita personalizada tocando no botão abaixo.';

  @override
  String get myRecipes => 'Minhas Receitas';

  @override
  String get newRecipe => 'Nova Receita';

  @override
  String get loadingRecipes => 'A carregar as tuas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao carregar receitas';

  @override
  String get addIngredient => 'Adicionar ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Breve descrição';

  @override
  String get prepTimeMinutes => 'Tempo de preparação (minutos)';

  @override
  String get instructionsHint => 'Introduz um passo por linha...';

  @override
  String get addPhoto => 'Adicionar foto';

  @override
  String get imageUrlPlaceholder => 'Ou cola o URL de uma imagem';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Procurar receitas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todas';

  @override
  String get recipeDeleted => 'Receita eliminada';

  @override
  String get saveChanges => 'Guardar alterações';

  @override
  String get editRecipeTitle => 'Editar Receita';

  @override
  String get newRecipeTitle => 'Nova Receita';

  @override
  String get requiredField => 'Obrigatório';

  @override
  String get chooseImageSource => 'Escolher origem da imagem';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Introduzir URL';

  @override
  String get recipeImage => 'Imagem da receita';

  @override
  String get removeImage => 'Remover imagem';

  @override
  String get mealPlannerTitle => 'Planeador de Refeições';

  @override
  String get mealPlannerViewMonthly => 'Ver mensal';

  @override
  String get mealPlannerViewWeekly => 'Ver semanal';

  @override
  String get mealPlannerNoMeals => 'Nenhuma refeição planeada';

  @override
  String get mealPlannerNoMealsHint => 'Toca num dia para adicionar';

  @override
  String get mealPlannerLoading => 'A carregar ementa...';

  @override
  String get mealPlannerError => 'Erro ao carregar ementa';

  @override
  String get mealPlannerAddMeal => 'Adicionar Refeição';

  @override
  String get mealPlannerEditMeal => 'Editar Refeição';

  @override
  String get mealPlannerDeleteMeal => 'Remover refeição';

  @override
  String get mealPlannerMealDeleted => 'Refeição removida';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doses',
      one: '$count dose',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Doses';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleciona uma receita';

  @override
  String get mealPlannerSearchRecipes => 'Procurar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Nenhuma receita encontrada';

  @override
  String get mealPlannerNoRecipesHint =>
      'Cria receitas no separador Receitas primeiro';

  @override
  String get mealPlannerSave => 'Adicionar ao plano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total refeições planeadas';
  }

  @override
  String get mealPlannerGenerateList => 'Gerar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Adicionar todos os ingredientes das refeições planeadas desta semana à tua lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediente(s) adicionado(s) à tua lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nenhum ingrediente para adicionar. Planeia refeições com receitas primeiro.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Cria uma lista de compras primeiro.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Pequeno-Almoço';

  @override
  String get mealPlannerMealTypeLunch => 'Almoço';

  @override
  String get mealPlannerMealTypeDinner => 'Jantar';

  @override
  String get mealPlannerMealTypeSnack => 'Lanche';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planehado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca em qualquer dia para começares a planear as tuas refeições!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutos';
  }

  @override
  String get inviteToList => 'Convidar para listar';

  @override
  String get shareApp => 'Compartilhar aplicativo';

  @override
  String get shareAppDescription => 'Convide amigos para usar o KipiList';

  @override
  String shareReferralText(String url) {
    return 'Estou usando o KipiList para organizar minhas compras! Baixe através do meu link e ambos ganhamos 7 dias de Premium grátis: $url';
  }

  @override
  String get shareReferralSubject => 'Ganhe 7 dias de KipiList Premium!';

  @override
  String get gestureHint => 'Segure para selecionar • Deslize para remover';

  @override
  String get catalogTitle => 'Catálogo';

  @override
  String get catalogMyFrequents => 'Meus frequentadores';

  @override
  String get catalogSearchGlobal => 'Pesquise qualquer produto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Pesquisar em $category...';
  }

  @override
  String get catalogSortPopular => 'Mais popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionais';

  @override
  String get catalogRareSection => 'menos comum em seu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Adicione $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produto não encontrado, digite o nome';

  @override
  String get catalogBrowse => 'Navegar no catálogo';

  @override
  String get offlineBanner => 'Você está off-line';

  @override
  String get consentTitle => 'Privacidade e análise';

  @override
  String get consentBody =>
      'KipiList usa Firebase Analytics para melhorar sua experiência. Os seus dados são processados ​​de acordo com a nossa Política de Privacidade.';

  @override
  String get consentAccept => 'Aceitar';

  @override
  String get consentDecline => 'Não, obrigado';

  @override
  String get mealPlannerPantryAllAvailable => 'Em estoque';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens faltando',
      one: '$count item faltando',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Data de validade';

  @override
  String get notInformed => 'Não informada';

  @override
  String get skip => 'Pular';

  @override
  String get onboardingAiTitle => 'Conversar com Kipi';

  @override
  String get onboardingAiGreeting =>
      'Oi! Sou Kipi, seu assistente pessoal de compras! 🛒';

  @override
  String get onboardingAiAskName => 'Qual o seu nome?';

  @override
  String get onboardingAiNameHint => 'Digite seu nome...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Prazer em conhecê-lo, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Qual é a sua comida favorita?';

  @override
  String get onboardingAiFoodHint => 'por exemplo Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Ótimas escolhas! Aqui está o que eu adicionaria à sua lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Isso parece bom? Tente digitar outra coisa!';

  @override
  String get onboardingAiReady =>
      'Ótimo! Você está pronto para começar. Vamos configurar sua conta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Erro de conexão';

  @override
  String connectionErrorDesc(String error) {
    return 'Não foi possível conectar-se ao servidor. Verifique sua internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Erro ao carregar listas';

  @override
  String get noListsFound => 'Nenhuma lista encontrada';

  @override
  String get backToToday => 'De volta a hoje';

  @override
  String get quickSuggestions => 'Sugestões rápidas';

  @override
  String get aiEnergyLow => 'Baixa energia de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloqueie IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoje';
  }

  @override
  String get aiSubscribeUnlimited => 'Assine para IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear com anúncio';

  @override
  String get conversationHistoryTitle => 'Histórico de conversas';

  @override
  String get noConversationsFound => 'Nenhuma conversa encontrada';

  @override
  String get errorLoadingHistory => 'Erro ao carregar o histórico';

  @override
  String get deleteConversationTitle => 'Excluir conversa?';

  @override
  String get deleteConversationConfirm => 'Esta ação não pode ser desfeita.';

  @override
  String get deleteConversation => 'Excluir';

  @override
  String get subscription => 'Subscrição';

  @override
  String get kipiListProActive => 'KipiList Pro ativo';

  @override
  String get unlockPremiumTitle =>
      'Desbloqueie listas ilimitadas, IA e muito mais';

  @override
  String get loadingSubscription => 'Carregando assinatura...';

  @override
  String get errorLoadingSubscription => 'Erro ao carregar assinatura';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'Meu perfil';

  @override
  String get profileSubtitle => 'Preferências pessoais para o assistente de IA';

  @override
  String get customizeAiAssistant => 'Personalize o assistente de IA';

  @override
  String get assistantHistory => 'Histórico do assistente';

  @override
  String get assistantHistorySubtitle => 'Veja seu histórico de conversas';

  @override
  String get manageCategories => 'Gerenciar categorias';

  @override
  String get manageCategoriesSubtitle => 'Gerenciar categorias de itens';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nome do assistente';

  @override
  String get chooseIcon => 'Escolha o ícone';

  @override
  String get profileSaved => 'Perfil salvo com sucesso!';

  @override
  String get errorSavingProfile => 'Erro ao salvar: null';

  @override
  String get userProfile => 'Perfil de usuário';

  @override
  String get profileDescription =>
      'Diga-nos suas preferências pessoais para que o assistente de IA possa sugerir itens e receitas personalizadas.';

  @override
  String get preferredMarket => 'Mercado Preferencial';

  @override
  String get preferredMarketHint => 'Ex.: Supermercado X';

  @override
  String get dietaryRestrictions => 'Restrições Dietéticas';

  @override
  String get dietaryRestrictionsHint => 'Ex.: vegano, vegetariano, sem glúten';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Ex.: Mercado Y, Mercado Z';

  @override
  String get observations => 'Notas';

  @override
  String get observationsHint => 'Outras preferências para o assistente';

  @override
  String get saveProfile => 'Salvar perfil';

  @override
  String get everythingReady => 'Tudo pronto!';

  @override
  String get youCompletedList => 'Você completou a lista!';

  @override
  String get selectCheaperAlternative =>
      'Selecione uma alternativa de produto mais barata para otimizar custos.';

  @override
  String get suggestedItems => 'Itens sugeridos';

  @override
  String get swapped => 'Trocado';

  @override
  String get swap => 'Trocar';

  @override
  String get chooseThemeColor => 'Escolha a cor do tema';

  @override
  String get manageCategoriesTitle => 'Gerenciar categorias';

  @override
  String get categoryLimitReached =>
      'Limite de 10 categorias na versão gratuita. Atualize para o Pro!';

  @override
  String get deleteCategoryTitle => 'Excluir categoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Os itens da categoria \"$category\" serão movidos para \"Outros\".\nContinuar?';
  }

  @override
  String get deleteCategory => 'Excluir';

  @override
  String get newCategoryDialog => 'Nova categoria';

  @override
  String get editCategoryDialog => 'Editar categoria';

  @override
  String get categoryName => 'Nome da categoria';

  @override
  String get categoryNameHint => 'Ex.: Carnes';

  @override
  String get categoryColorLabel => 'Cor';

  @override
  String get categoryIconLabel => 'Ícone';

  @override
  String itemAddedSnack(String name) {
    return '$name adicionado';
  }

  @override
  String get kipiQuickBarHint => 'O que você precisa comprar?';

  @override
  String replaceItem(String item) {
    return 'Substitua $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Nunca mais se esqueça de um item de mercearia';

  @override
  String get onboardingGoalSaveMoney => 'Economize dinheiro';

  @override
  String get onboardingGoalNeverForget => 'Nunca se esqueça dos itens';

  @override
  String get onboardingGoalFaster => 'Compre mais rápido';

  @override
  String get onboardingGoalFamily => 'Organize as compras da família';

  @override
  String get onboardingGoalRecipes => 'Descubra receitas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => 'O que é importante para você?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Escolha seus objetivos para personalizar o KipiList';

  @override
  String get onboardingCommitmentsCta => 'Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Seu nome';

  @override
  String get onboardingPersonalizationNameHint => 'Digite seu nome';

  @override
  String get onboardingPersonalizationCategoryTitle => 'O que você compra?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Para quem você compra?';

  @override
  String get onboardingCategoryGrocery => 'Mantimentos';

  @override
  String get onboardingCategoryPharmacy => 'Farmácia';

  @override
  String get onboardingCategoryRecipes => 'Receitas';

  @override
  String get onboardingCategoryHome => 'Lar';

  @override
  String get onboardingCategoryPet => 'Bicho de estimação';

  @override
  String get onboardingGroupSolo => 'Apenas eu';

  @override
  String get onboardingGroupCouple => 'Casal';

  @override
  String get onboardingGroupFamily => 'Família';

  @override
  String get onboardingLoadingTitle => 'Preparando sua experiência...';

  @override
  String get onboardingLoadingStep1 => 'Analisando suas preferências...';

  @override
  String get onboardingLoadingStep2 => 'Configurando o assistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Quase pronto...';

  @override
  String get onboardingLoadingStat1Label => 'Itens catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Usuários ajudados';

  @override
  String get onboardingLoadingStat3Label => 'Minutos economizados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, economize em cada viagem!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nunca se esqueça de um item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, compre na metade do tempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organize as compras da família!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, descubra novas receitas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, monitore sua despensa perfeitamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Economize em cada viagem!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nunca se esqueça de um item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Compre na metade do tempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organize as compras da família!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Descubra novas receitas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Acompanhe sua despensa perfeitamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Apenas $price/dia – menos que um café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Pular por enquanto';

  @override
  String get paywallTestimonial =>
      'AI organiza minhas compras em segundos. Economizo 20 minutos por viagem.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancele a qualquer momento · Sem custos até o final do período de avaliação';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Ei, $name! De que $category você precisa?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De que $category você precisa?';
  }

  @override
  String get onboardingAiDemoYes => 'Sim!';

  @override
  String get onboardingAiDemoReaction => 'Legal!';

  @override
  String get onboardingAiDemoChange => 'Alterar item';

  @override
  String get onboardingAiDemoOffer => 'Tente digitar outra coisa!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Sua lista de compras, agora com IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Veja como o Kipi monta sua lista completa em segundos';

  @override
  String get onboardingAiDemoSlideCta => 'Eu quero isso! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Vou fazer um churrasco 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Pronto! Tudo que você vai precisar:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa em segundos ✨';

  @override
  String get onboardingPainTitle => 'O que mais te frustra?';

  @override
  String get onboardingPainSubtitle => 'Seja honesto — vamos resolver cada um';

  @override
  String get onboardingPainCta => 'Sim, resolve isso pra mim →';

  @override
  String get onboardingPainForget => 'Esqueço itens no mercado';

  @override
  String get onboardingPainFamily => 'Minha família não vê a lista';

  @override
  String get onboardingPainOverspend => 'Sempre gasto mais que planejei';

  @override
  String get onboardingPainRepeat => 'Uma ida ao mercado nunca basta';

  @override
  String get aiWelcomeContent =>
      'Olá! 👋 Sou **Kipi**, seu assistente pessoal de compras e receitas!\n\nEstou aqui para ajudá-lo:\n🛒 **Organize** suas compras por categorias automaticamente\n💰 **Acompanhe** seu orçamento e dê dicas para economizar dinheiro\n🍲 **Sugira** receitas deliciosas com o que você já tem\n\nComo posso ajudá-lo hoje? Você pode começar criando sua primeira lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Criar minha primeira lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, me ajude a criar minha primeira lista de compras';

  @override
  String get aiWelcomeSuggestSave => 'Como economizar dinheiro?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, como você pode me ajudar a economizar dinheiro em compras?';

  @override
  String get suggestionMilk => 'Leite';

  @override
  String get suggestionBread => 'Pão';

  @override
  String get suggestionEggs => 'Ovos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'Frutas';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get navChat => 'Bater papo';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get create => 'Criar';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Avançar';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get regenerate => 'Regerar';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Fechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Fazer upgrade';

  @override
  String get clear => 'Limpar';

  @override
  String error(String message) {
    return 'Erro: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erro: $message';
  }

  @override
  String get purchaseError => 'Erro ao processar compra. Tente novamente.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Tente novamente.';

  @override
  String get loading => 'Carregando...';

  @override
  String get fieldRequired => 'Campo obrigatório';

  @override
  String get addedFeedback => 'Adicionados!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Sair do modo de compras';

  @override
  String get exit => 'Saída';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecionados',
      one: '$count selecionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Já comprado';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar comprados';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareViaCode => 'Compartilhar via código';

  @override
  String get importViaCode => 'Importar via código';

  @override
  String get listAssistant => 'Assistente desta lista';

  @override
  String get globalAssistant => 'Assistente geral';

  @override
  String get becomePremium => 'Tornar-se Premium';

  @override
  String get manageSubscription => 'Gerenciar assinatura';

  @override
  String get completePurchase => 'Concluir Compra';

  @override
  String get confirmClearList => 'Remover todos os itens?';

  @override
  String get shareListTitle => 'Compartilhar Lista';

  @override
  String get shareThisCode => 'Compartilhe este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Digite o código';

  @override
  String get confirmArchiveTitle => 'Concluir Compra';

  @override
  String get confirmArchiveContent =>
      'Deseja concluir esta compra e arquivar a lista?';

  @override
  String get complete => 'Concluir';

  @override
  String get listArchived => 'Lista arquivada com sucesso!';

  @override
  String listAdded(String listName) {
    return '$listName adicionada!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get archiveList => 'Concluir Compra';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Gerar lista de compras';

  @override
  String get pantryEmpty => 'Dispensa vazia';

  @override
  String get pantryEmptySubtitle =>
      'Adicione produtos que você quer manter em casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(ns) precisam ser comprados';
  }

  @override
  String get noItemsToBuy => 'Nenhum item precisa ser comprado';

  @override
  String get newPantryList => 'Compras da Dispensa';

  @override
  String get newListTitle => 'Nova Lista de Compras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(ns) serão adicionados';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" criada com $count itens';
  }

  @override
  String get noTracking => 'Sem rastreamento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantidade ideal';

  @override
  String get currentQuantity => 'Quantidade atual';

  @override
  String get consumed => 'Consumi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido para $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remover \"$name\" da dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Digitalizar produto';

  @override
  String get positionBarcodeCenter => 'Posicione o código de barras no centro';

  @override
  String get product => 'Produto';

  @override
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglês';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Pesquisar idioma...';

  @override
  String get currency => 'Moeda';

  @override
  String get chooseCurrency => 'Selecione a moeda';

  @override
  String get searchCurrency => 'Pesquisar moeda...';

  @override
  String get appearance => 'Aparência';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinâmicas';

  @override
  String get dynamicColorsSubtitle => 'Usar cores baseadas no papel de parede';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desative as cores dinâmicas para que a cor do tema tenha efeito';

  @override
  String get finance => 'Financeiro';

  @override
  String get monthlyBudgetNav => 'Orçamento mensal';

  @override
  String get budgetSubtitle => 'Acompanhe seus gastos do mês';

  @override
  String get data => 'Dados';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar ou importar seus dados';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get myAchievements => 'Minhas conquistas';

  @override
  String get itemsPurchased => 'Itens comprados';

  @override
  String get totalSavings => 'Economia total';

  @override
  String get currentStreak => 'Sequência Atual';

  @override
  String streakDays(int count) {
    return '$days dias';
  }

  @override
  String get unlockedBadges => 'Emblemas desbloqueados';

  @override
  String get badgeBeginner => 'Novato';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Salvando Mestre';

  @override
  String get badgeSuperPlanner => 'Superplanejador';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription => 'Backup e exportação é premium';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get exportDataSubtitle => 'Salvar todas as listas como JSON';

  @override
  String get importData => 'Importar dados';

  @override
  String get importDataSubtitle => 'Restaurar listas de um JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Cole o JSON do backup aqui...';

  @override
  String get backupExported => 'Backup exportado!';

  @override
  String get budgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetPremiumLocked => 'Orçamento mensal global é premium';

  @override
  String get budgetUpgradePrompt => 'Faça upgrade para desbloquear';

  @override
  String get noBudgetDefined => 'Nenhum orçamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Definir orçamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Valor';

  @override
  String get setBudgetTitle => 'Orçamento Mensal';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total itens';
  }

  @override
  String progressBudget(String amount) {
    return 'Orçamento: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Adicionar Item';

  @override
  String get itemName => 'Nome do item';

  @override
  String get quantityShort => 'Qtd';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preço estimado';

  @override
  String get addItemPrice => 'Preço estimado';

  @override
  String get editItem => 'Editar Item';

  @override
  String get quantityFull => 'Quantidade';

  @override
  String get editItemPrice => 'Preço estimado';

  @override
  String get addToPantry => 'Adicionar à Dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Deseja adicionar \"$name\" à sua Dispensa?';
  }

  @override
  String get yes => 'Sim';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Qtd ideal';

  @override
  String get currentQty => 'Qtd atual';

  @override
  String get trackStock => 'Rastrear estoque';

  @override
  String get trackStockActive => 'Aparece na sugestão de compras';

  @override
  String get trackStockInactive => 'Não gera sugestão de compra';

  @override
  String get createListDialog => 'Criar Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Histórico de Listas';

  @override
  String get myLists => 'Minhas Listas';

  @override
  String get viewActive => 'Ver Ativas';

  @override
  String get viewHistory => 'Ver Histórico';

  @override
  String get noArchivedLists => 'Nenhuma lista arquivada';

  @override
  String get noActiveLists => 'Nenhuma lista ativa';

  @override
  String completedOn(String date) {
    return 'Concluída em $date';
  }

  @override
  String get sharedLabel => 'Compartilhada';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Remover';

  @override
  String get deleteListTitle => 'Excluir lista';

  @override
  String deleteListContent(String name) {
    return 'Tem certeza que deseja excluir \"$name\"? Todos os itens serão removidos.';
  }

  @override
  String get removeSharedListTitle => 'Remover lista compartilhada';

  @override
  String removeSharedListContent(String name) {
    return 'Remover \"$name\" da sua lista de listas? A lista original não será afetada.';
  }

  @override
  String get createNewList => 'Criar nova lista';

  @override
  String get aiAssistant => 'Assistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtenha sugestões inteligentes, receitas e dicas personalizadas com nosso assistente de IA.';

  @override
  String get generalAssistant => 'Assistente Geral';

  @override
  String get newChat => 'Novo bate-papo';

  @override
  String get noHistory => 'Sem histórico de bate-papo';

  @override
  String get deleteSession => 'Excluir bate-papo';

  @override
  String get deleteSessionConfirm =>
      'Tem certeza de que deseja excluir este bate-papo? As mensagens serão perdidas permanentemente.';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String get chatHintBlocked => 'Desbloqueie IA para conversar';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Assistente de IA';

  @override
  String get closeSheet => 'Fechar';

  @override
  String get scanBarcodeTitle => 'Digitalizar código de barras';

  @override
  String get listHelp => 'Como posso ajudar com sua lista?';

  @override
  String get generalHelp => 'Como posso ajudar com suas compras hoje?';

  @override
  String get chatSubtitle =>
      'Peça sugestões de itens, receitas or dicas de economia.';

  @override
  String get aiError =>
      'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get aiLimitAlmostReached => 'Quase sem mensagens de IA';

  @override
  String get unlockAi => 'Desbloqueie IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Assine o Premium para desbloquear a resposta completa e obter dicas ilimitadas de IA para suas compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining ações de IA restantes este mês — assine para ilimitado';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensal de IA atingido. Assine o Pro para ilimitado →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get onboardingWelcomeTitle => 'Bem-vindo ao KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'A maneira mais inteligente de organizar suas compras e economizar.';

  @override
  String get onboardingSetupTitle => 'Personalize sua experiência';

  @override
  String get onboardingSetupDesc =>
      'Escolha como você quer que o KipiList apareça e funcione para você.';

  @override
  String get onboardingLoginTitle => 'Salve tudo na nuvem';

  @override
  String get onboardingLoginDesc =>
      'Seus dados sincronizados em todos os seus dispositivos';

  @override
  String get onboardingShareTitle => 'Compartilhe com quem você ama';

  @override
  String get onboardingShareDesc =>
      'Sincronize listas com familiares e amigos em tempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloqueie todos os recursos';

  @override
  String get onboardingPremiumSubtitle =>
      'Aproveite ao máximo suas listas de compras';

  @override
  String get onboardingAnnualBadge => 'Melhor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensal';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos os planos';

  @override
  String get onboardingSubscribeCta => 'Inscrever-se';

  @override
  String get onboardingCancelAnytime =>
      'Cancele a qualquer momento. Sem compromisso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como convidado';

  @override
  String get onboardingRestore => 'Restaurar Compras';

  @override
  String get onboardingRestoreDesc =>
      'Já possui uma assinatura? Toque aqui para restaurá-la.';

  @override
  String get onboardingMaybeLater => 'Talvez mais tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Ei $name, organize suas compras da maneira certa.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crie e compartilhe listas instantaneamente. O Kipi adiciona itens automaticamente com base nos seus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conheça Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pergunte qualquer coisa: crie listas, encontre receitas, controle sua despensa, planeje sua semana.';

  @override
  String get onboardingSlide3Title => 'Despensa e planejamento de refeições';

  @override
  String get onboardingSlide3Body =>
      'Acompanhe o que você tem, planeje refeições e gere listas de compras automaticamente.';

  @override
  String get onboardingExit => 'Sair';

  @override
  String get onboardingPersonalizationTitle => 'Vamos conhecer você';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos isso para personalizar suas sugestões e tornar as compras mais inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Qual é a sua comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'por exemplo Pizza, Sushi, Lasanha...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Pular por enquanto';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Conte-nos sua comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Tela inicial padrão';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Escolha entre lista de compras ou bate-papo com IA';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Bate-papo com IA';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erro ao carregar ofertas. Tente novamente.';

  @override
  String get paywallPurchaseError =>
      'Não foi possível completar a compra. Tente novamente.';

  @override
  String get paywallRestoreError =>
      'Nenhuma assinatura ativa encontrada para restaurar.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIAS GRÁTIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMANAS GRÁTIS',
      one: '$count SEMANA GRÁTIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESES GRÁTIS',
      one: '$count MÊS GRÁTIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Experimente gratuitamente!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele a qualquer momento. Sem cobrança hoje.';

  @override
  String get paywallTrialCta => 'Comece o teste gratuito';

  @override
  String get recipeAddToList => 'Adicionar à lista de compras';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected =>
      'Nenhuma lista selecionada. Abra uma lista primeiro.';

  @override
  String get paywallFeaturesTitle => 'Tudo o que você precisa:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza sua lista automaticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crie quantas listas você precisar';

  @override
  String get paywallFeatureDescSharing => 'Compre juntos em tempo real';

  @override
  String get paywallFeatureDescPantry => 'Acompanhe o que você tem em casa';

  @override
  String get paywallFeatureDescBudget =>
      'Fique dentro do orçamento todos os meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Família conectada';

  @override
  String get paywallFeatureSmartAI => 'IA ilimitada';

  @override
  String get paywallFeatureExpenseControl => 'Controle de Gastos';

  @override
  String get paywallFeatureSharing => 'Compartilhamento';

  @override
  String get paywallBeforeAfterTitle => 'Sua experiência evoluída:';

  @override
  String get paywallLabelCommon => 'Plano Grátis';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'Esquecer itens importantes';

  @override
  String get paywallBeforeItem2 => 'Perder o controle do gasto';

  @override
  String get paywallBeforeItem3 => 'Lista desorganizada';

  @override
  String get paywallBeforeItem4 => 'Digitação manual lenta';

  @override
  String get paywallAfterItem1 => 'Assistente de IA 24h';

  @override
  String get paywallAfterItem2 => 'Orçamento em tempo real';

  @override
  String get paywallAfterItem3 => 'Organização por categoria';

  @override
  String get paywallAfterItem4 => 'Comandos de voz rápidos';

  @override
  String get paywallTestimonialsTitle => 'O que dizem nossos usuários:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'A IA organiza minhas compras em segundos. Economizo 20 min por ida ao mercado.';

  @override
  String get paywallTestimonial2Name => 'Carlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca mais esqueci um item da lista. O chat com IA é sensacional!';

  @override
  String get paywallSocialProof => '+2.400 famílias usam';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MELHOR VALOR';

  @override
  String get paywallMostPopular => 'MAIS POPULAR';

  @override
  String get paywallProLabel => 'PRÓ';

  @override
  String get paywallSafeCheckout => 'Pagamento seguro';

  @override
  String get paywallSelectPlan => 'Escolha seu plano:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ECONOMIZE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Apenas $price/mês';
  }

  @override
  String get paywallPackageAnnual => 'Plano Anual';

  @override
  String get paywallPackageMonthly => 'Plano Mensal';

  @override
  String get paywallPackageLifetime => 'Acesso Vitalício';

  @override
  String get paywallCancelAnytime => 'Cancele quando quiser. Sem compromisso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeiros $days dias GRATUITOS';
  }

  @override
  String get paywallSecuredByStore =>
      'Protegido pelo Google Play · Cancele a qualquer momento';

  @override
  String get paywallPolicy => 'Política de Privacidade';

  @override
  String get paywallTerms => 'Termos de Uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi sem limites';

  @override
  String get paywallHeroSubtitle =>
      'IA ilimitada, planejamento completo e listas em família — tudo em um só app';

  @override
  String get paywallBenefit1Desc =>
      'Sem limite de ações. Kipi sempre disponível para agir.';

  @override
  String get paywallBenefit2Desc => 'Listas compartilhadas com quem você ama';

  @override
  String get paywallBenefit3Desc => 'Controle de gastos e listas em família';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidade total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Começar grátis — $days dias';
  }

  @override
  String get premiumUpgrade => 'Faça upgrade para desbloquear';

  @override
  String get itemRemoved => 'Item removido';

  @override
  String get undo => 'Desfazer';

  @override
  String get emptyListTitle => 'Sua lista está vazia';

  @override
  String get emptyListSubtitle => 'Adicione itens para começar';

  @override
  String get noListFoundTitle => 'Nenhuma lista encontrada';

  @override
  String get noListFoundSubtitle => 'Crie sua primeira lista para começar';

  @override
  String get createFirstList => 'Criar Primeira Lista';

  @override
  String get listBudgetTitle => 'Orçamento da Lista';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get removeBudget => 'Remover';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartilhar listas';

  @override
  String get prefFullHistory => 'Histórico completo';

  @override
  String get prefExportData => 'Exportar dados';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orçamento mensal global';

  @override
  String get prefAIAssistant => 'Assistente de IA Personalizado';

  @override
  String get prefUnlimitedPantry => 'Dispensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefatos Interativos da IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Roxo';

  @override
  String get themeRed => 'Vermelho';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Âmbar';

  @override
  String get themeTeal => 'Cerceta';

  @override
  String get themeBrown => 'Marrom';

  @override
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Padaria';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'pacote';

  @override
  String get shareSubject => 'Lista de Compras';

  @override
  String get monthlyBudgetTitle => 'Orçamento Mensal';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Excluir lista';

  @override
  String get pantryItemRemoved => 'Item removido';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit itens precisam ser comprados',
      one: '$deficit item precisa ser comprado',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carrinho';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Recursos avançados';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desselecionar tudo';

  @override
  String get monthlyBudgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetEditTitle => 'Orçamento Mensal';

  @override
  String get budgetDashboardTitle => 'Painel';

  @override
  String get selectListForDashboard =>
      'Selecione uma lista para ver o dashboard.';

  @override
  String get spendingAnalysis => 'Análise de Gastos';

  @override
  String get noItemsToAnalyze => 'Nenhum item na lista para analisar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marque itens como comprados para ver a análise.';

  @override
  String get totalSpending => 'Gasto Total';

  @override
  String get spendingByCategory => 'Gastos por Categoria';

  @override
  String get achievements => 'Conquistas';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO COM IA...';

  @override
  String get yesLabel => 'Sim';

  @override
  String get noLabel => 'Não';

  @override
  String get shareListText => 'Minha Lista de Compras';

  @override
  String get emptyListAddItems =>
      'Sua lista está vazia! Adicione itens primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada magicamente por categorias! ✨';

  @override
  String get shoppingMode => 'Modo Compras';

  @override
  String get smartOrganization => 'Organização Inteligente';

  @override
  String get savings => 'Economia';

  @override
  String get shoppingModeHeader => 'MODO COMPRAS';

  @override
  String get shareAsText => 'Enviar itens como texto formatado';

  @override
  String get shareRealtime => 'Sincronizar em tempo real com outras pessoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt =>
      'Sugira receitas com os itens da minha lista.';

  @override
  String get economyTips => 'Dicas de economia';

  @override
  String get economyTipsPrompt => 'Como economizar nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organize por corredores de mercado.';

  @override
  String get recipeSuggestion => 'Sugestão de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Adicionar tudo à lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Digitar por voz (Grátis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz com IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de Voz com IA';

  @override
  String get voiceCommandContent =>
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver Planos';

  @override
  String get itemsAddedSuccess => 'Itens adicionados à lista!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar Feedback';

  @override
  String get feedbackPrompt => 'O que você gostaria de compartilhar?';

  @override
  String get feedbackTypeBug => 'Relatar Bug';

  @override
  String get feedbackTypeBugHint => 'Algo não está funcionando';

  @override
  String get feedbackTypeSuggestion => 'Sugestão';

  @override
  String get feedbackTypeSuggestionHint => 'Ideia para melhorar o app';

  @override
  String get feedbackTypeTranslation => 'Problema de Tradução';

  @override
  String get feedbackTypeTranslationHint => 'Tradução incorreta ou não natural';

  @override
  String get feedbackTypeFeature => 'Pedido de Funcionalidade';

  @override
  String get feedbackTypeFeatureHint =>
      'Funcionalidade que você gostaria de ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de feedback';

  @override
  String get feedbackHint => 'Descreva seu feedback em detalhes...';

  @override
  String get feedbackSend => 'Enviar Feedback';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => 'Obrigado!';

  @override
  String get feedbackThankYouMessage =>
      'Seu feedback foi recebido e nos ajuda a melhorar o KipiList para todos.';

  @override
  String get feedbackBack => 'Voltar';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Tentar novamente';

  @override
  String get feedbackSettingsTitle => 'Enviar Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Relatar bugs, sugerir melhorias ou corrigir traduções';

  @override
  String get aiEnergy => 'Energia da IA';

  @override
  String get searchInConversation => 'Pesquisar na conversa...';

  @override
  String get noMessagesFound => 'Nenhuma mensagem encontrada';

  @override
  String get suggestedQuestions => 'Perguntas sugeridas:';

  @override
  String get shoppingAssistant => 'Assistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprados';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver itens';

  @override
  String get noItemsInList => 'Nenhum item na lista';

  @override
  String get longHistoryWarning =>
      'Histórico longo: o assistente foca nas últimas mensagens para otimizar o desempenho.';

  @override
  String get listening => 'Ouvindo...';

  @override
  String get addDirectToList => 'Adicionar direto na lista';

  @override
  String get unlockFullResponse => 'Desbloquear Resposta Completa';

  @override
  String get switchList => 'Trocar lista';

  @override
  String get marketMode => 'Modo Mercado';

  @override
  String get backToChat => 'Voltar para o Chat';

  @override
  String get finishShopping => 'Concluir Compras';

  @override
  String get welcomeAiAssistant => 'Bem-vindo ao Assistente IA';

  @override
  String get createListToStartAi =>
      'Crie uma lista de compras para começar a usar o chat inteligente.';

  @override
  String get howCanIHelp => 'Como posso ajudar?';

  @override
  String get chatSubtitleShort =>
      'Pergunte sobre preços, receitas, organização...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprados';
  }

  @override
  String get quickReplies => 'Respostas rápidas:';

  @override
  String get voiceProFeature =>
      'Comandos de voz avançados são Pro. Ativando ditado básico...';

  @override
  String get viewPro => 'Ver Pro';

  @override
  String get errorLoadingChat => 'Ops! Algo deu errado ao carregar o chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get errorOscillation =>
      'Isso pode ocorrer devido a oscilações de rede ou indisponibilidade temporária. Por favor, tente novamente.';

  @override
  String get activeListening => 'Escuta Ativa';

  @override
  String get whatToDoWithItem => 'O que deseja fazer com este item?';

  @override
  String get viewDetails => 'Ver Detalhes';

  @override
  String get openMenu => 'Abrir menu';

  @override
  String get viewRecipe => 'Ver Receita';

  @override
  String get recipeCreated => 'Receita criada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Excluir';

  @override
  String get deleteRecipeConfirm => 'Excluir esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Tem certeza de que deseja excluir \"$recipeName\"? Esta ação não pode ser desfeita.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instruções';

  @override
  String get prepTime => 'Tempo de preparo';

  @override
  String get recipeSaved => 'Receita salva!';

  @override
  String get noRecipesSaved => 'Nenhuma receita salva';

  @override
  String get noRecipesSavedHint =>
      'Crie sua primeira receita personalizada tocando no botão abaixo.';

  @override
  String get myRecipes => 'Minhas Receitas';

  @override
  String get newRecipe => 'Nova Receita';

  @override
  String get loadingRecipes => 'Carregando suas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao carregar receitas';

  @override
  String get addIngredient => 'Adicionar ingrediente';

  @override
  String get saveRecipe => 'Salvar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Breve descrição';

  @override
  String get prepTimeMinutes => 'Tempo de preparo (minutos)';

  @override
  String get instructionsHint => 'Digite um passo por linha...';

  @override
  String get addPhoto => 'Adicionar foto';

  @override
  String get imageUrlPlaceholder => 'Ou cole o URL de uma imagem';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Tags da receita';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Buscar receitas...';

  @override
  String get filterByTag => 'Filtrar por tag';

  @override
  String get allTags => 'Todas';

  @override
  String get recipeDeleted => 'Receita excluída';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get editRecipeTitle => 'Editar Receita';

  @override
  String get newRecipeTitle => 'Nova Receita';

  @override
  String get requiredField => 'Obrigatório';

  @override
  String get chooseImageSource => 'Escolher origem da imagem';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Digitar URL';

  @override
  String get recipeImage => 'Imagem da receita';

  @override
  String get removeImage => 'Remover imagem';

  @override
  String get mealPlannerTitle => 'Planejador de Refeições';

  @override
  String get mealPlannerViewMonthly => 'Ver mensal';

  @override
  String get mealPlannerViewWeekly => 'Ver semanal';

  @override
  String get mealPlannerNoMeals => 'Nenhuma refeição planejada';

  @override
  String get mealPlannerNoMealsHint => 'Toque em um dia para adicionar';

  @override
  String get mealPlannerLoading => 'Carregando cardápio...';

  @override
  String get mealPlannerError => 'Erro ao carregar cardápio';

  @override
  String get mealPlannerAddMeal => 'Adicionar Refeição';

  @override
  String get mealPlannerEditMeal => 'Editar Refeição';

  @override
  String get mealPlannerDeleteMeal => 'Remover refeição';

  @override
  String get mealPlannerMealDeleted => 'Refeição removida';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porções',
      one: '$count porção',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porções';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Selecione uma receita';

  @override
  String get mealPlannerSearchRecipes => 'Buscar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Nenhuma receita encontrada';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crie receitas na aba Receitas primeiro';

  @override
  String get mealPlannerSave => 'Adicionar ao plano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total refeições planejadas';
  }

  @override
  String get mealPlannerGenerateList => 'Gerar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Adicionar todos os ingredientes das refeições planejadas desta semana à sua lista?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediente(s) adicionado(s) à sua lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nenhum ingrediente para adicionar. Planeje refeições com receitas primeiro.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crie uma lista de compras primeiro.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Café da Manhã';

  @override
  String get mealPlannerMealTypeLunch => 'Almoço';

  @override
  String get mealPlannerMealTypeDinner => 'Jantar';

  @override
  String get mealPlannerMealTypeSnack => 'Lanche';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planejado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toque em qualquer dia para começar a planejar suas refeições!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutos';
  }

  @override
  String get inviteToList => 'Convidar para lista';

  @override
  String get shareApp => 'Compartilhar o app';

  @override
  String get shareAppDescription => 'Convide amigos para usar o KipiList';

  @override
  String shareReferralText(String url) {
    return 'Estou usando o KipiList para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: $url';
  }

  @override
  String get shareReferralSubject => 'Ganhe 7 dias de KipiList Premium!';

  @override
  String get gestureHint => 'Segure para selecionar • Deslize para remover';

  @override
  String get catalogTitle => 'Catálogo';

  @override
  String get catalogMyFrequents => 'Meus frequentadores';

  @override
  String get catalogSearchGlobal => 'Pesquise qualquer produto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Pesquisar em $category...';
  }

  @override
  String get catalogSortPopular => 'Mais popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionais';

  @override
  String get catalogRareSection => 'menos comum em seu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Adicione $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produto não encontrado, digite o nome';

  @override
  String get catalogBrowse => 'Navegar no catálogo';

  @override
  String get offlineBanner => 'Você está off-line';

  @override
  String get consentTitle => 'Privacidade e análise';

  @override
  String get consentBody =>
      'KipiList usa Firebase Analytics para melhorar sua experiência. Os seus dados são processados ​​de acordo com a nossa Política de Privacidade.';

  @override
  String get consentAccept => 'Aceitar';

  @override
  String get consentDecline => 'Não, obrigado';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos os ingredientes disponíveis';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 ausente';
  }

  @override
  String get expirationDate => 'Data de validade';

  @override
  String get notInformed => 'Não definido';

  @override
  String get skip => 'Pular';

  @override
  String get onboardingAiTitle => 'Conversar com Kipi';

  @override
  String get onboardingAiGreeting =>
      'Oi! Sou Kipi, seu assistente pessoal de compras! 🛒';

  @override
  String get onboardingAiAskName => 'Qual o seu nome?';

  @override
  String get onboardingAiNameHint => 'Digite seu nome...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Prazer em conhecê-lo, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Qual é a sua comida favorita?';

  @override
  String get onboardingAiFoodHint => 'por exemplo Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Ótimas escolhas! Aqui está o que eu adicionaria à sua lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Isso parece bom? Tente digitar outra coisa!';

  @override
  String get onboardingAiReady =>
      'Ótimo! Você está pronto para começar. Vamos configurar sua conta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Erro de conexão';

  @override
  String connectionErrorDesc(String error) {
    return 'Não foi possível conectar-se ao servidor. Verifique sua internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Erro ao carregar listas';

  @override
  String get noListsFound => 'Nenhuma lista encontrada';

  @override
  String get backToToday => 'De volta a hoje';

  @override
  String get quickSuggestions => 'Sugestões rápidas';

  @override
  String get aiEnergyLow => 'Baixa energia de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloqueie IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoje';
  }

  @override
  String get aiSubscribeUnlimited => 'Assine para IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear com anúncio';

  @override
  String get conversationHistoryTitle => 'Histórico de conversas';

  @override
  String get noConversationsFound => 'Nenhuma conversa encontrada';

  @override
  String get errorLoadingHistory => 'Erro ao carregar o histórico';

  @override
  String get deleteConversationTitle => 'Excluir conversa?';

  @override
  String get deleteConversationConfirm => 'Esta ação não pode ser desfeita.';

  @override
  String get deleteConversation => 'Excluir';

  @override
  String get subscription => 'Subscrição';

  @override
  String get kipiListProActive => 'KipiList Pro ativo';

  @override
  String get unlockPremiumTitle =>
      'Desbloqueie listas ilimitadas, IA e muito mais';

  @override
  String get loadingSubscription => 'Carregando assinatura...';

  @override
  String get errorLoadingSubscription => 'Erro ao carregar assinatura';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'Meu perfil';

  @override
  String get profileSubtitle => 'Preferências pessoais para o assistente de IA';

  @override
  String get customizeAiAssistant => 'Personalize o assistente de IA';

  @override
  String get assistantHistory => 'Histórico do assistente';

  @override
  String get assistantHistorySubtitle => 'Veja seu histórico de conversas';

  @override
  String get manageCategories => 'Gerenciar categorias';

  @override
  String get manageCategoriesSubtitle => 'Gerenciar categorias de itens';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nome do assistente';

  @override
  String get chooseIcon => 'Escolha o ícone';

  @override
  String get profileSaved => 'Perfil salvo com sucesso!';

  @override
  String get errorSavingProfile => 'Erro ao salvar: null';

  @override
  String get userProfile => 'Perfil de usuário';

  @override
  String get profileDescription =>
      'Diga-nos suas preferências pessoais para que o assistente de IA possa sugerir itens e receitas personalizadas.';

  @override
  String get preferredMarket => 'Mercado Preferencial';

  @override
  String get preferredMarketHint => 'Ex.: Supermercado X';

  @override
  String get dietaryRestrictions => 'Restrições Dietéticas';

  @override
  String get dietaryRestrictionsHint => 'Ex.: vegano, vegetariano, sem glúten';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Ex.: Mercado Y, Mercado Z';

  @override
  String get observations => 'Notas';

  @override
  String get observationsHint => 'Outras preferências para o assistente';

  @override
  String get saveProfile => 'Salvar perfil';

  @override
  String get everythingReady => 'Tudo pronto!';

  @override
  String get youCompletedList => 'Você completou a lista!';

  @override
  String get selectCheaperAlternative =>
      'Selecione uma alternativa de produto mais barata para otimizar custos.';

  @override
  String get suggestedItems => 'Itens sugeridos';

  @override
  String get swapped => 'Trocado';

  @override
  String get swap => 'Trocar';

  @override
  String get chooseThemeColor => 'Escolha a cor do tema';

  @override
  String get manageCategoriesTitle => 'Gerenciar categorias';

  @override
  String get categoryLimitReached =>
      'Limite de 10 categorias na versão gratuita. Atualize para o Pro!';

  @override
  String get deleteCategoryTitle => 'Excluir categoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Os itens da categoria \"$category\" serão movidos para \"Outros\".\nContinuar?';
  }

  @override
  String get deleteCategory => 'Excluir';

  @override
  String get newCategoryDialog => 'Nova categoria';

  @override
  String get editCategoryDialog => 'Editar categoria';

  @override
  String get categoryName => 'Nome da categoria';

  @override
  String get categoryNameHint => 'Ex.: Carnes';

  @override
  String get categoryColorLabel => 'Cor';

  @override
  String get categoryIconLabel => 'Ícone';

  @override
  String itemAddedSnack(String name) {
    return '$name adicionado';
  }

  @override
  String get kipiQuickBarHint => 'O que você precisa comprar?';

  @override
  String replaceItem(String item) {
    return 'Substitua $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Nunca mais se esqueça de um item de mercearia';

  @override
  String get onboardingGoalSaveMoney => 'Economize dinheiro';

  @override
  String get onboardingGoalNeverForget => 'Nunca se esqueça dos itens';

  @override
  String get onboardingGoalFaster => 'Compre mais rápido';

  @override
  String get onboardingGoalFamily => 'Organize as compras da família';

  @override
  String get onboardingGoalRecipes => 'Descubra receitas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => 'O que é importante para você?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Escolha seus objetivos para personalizar o KipiList';

  @override
  String get onboardingCommitmentsCta => 'Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Seu nome';

  @override
  String get onboardingPersonalizationNameHint => 'Digite seu nome';

  @override
  String get onboardingPersonalizationCategoryTitle => 'O que você compra?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Para quem você compra?';

  @override
  String get onboardingCategoryGrocery => 'Mantimentos';

  @override
  String get onboardingCategoryPharmacy => 'Farmácia';

  @override
  String get onboardingCategoryRecipes => 'Receitas';

  @override
  String get onboardingCategoryHome => 'Lar';

  @override
  String get onboardingCategoryPet => 'Bicho de estimação';

  @override
  String get onboardingGroupSolo => 'Apenas eu';

  @override
  String get onboardingGroupCouple => 'Casal';

  @override
  String get onboardingGroupFamily => 'Família';

  @override
  String get onboardingLoadingTitle => 'Preparando sua experiência...';

  @override
  String get onboardingLoadingStep1 => 'Analisando suas preferências...';

  @override
  String get onboardingLoadingStep2 => 'Configurando o assistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Quase pronto...';

  @override
  String get onboardingLoadingStat1Label => 'Itens catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Usuários ajudados';

  @override
  String get onboardingLoadingStat3Label => 'Minutos economizados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, economize em cada viagem!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nunca se esqueça de um item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, compre na metade do tempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organize as compras da família!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, descubra novas receitas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, monitore sua despensa perfeitamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Economize em cada viagem!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nunca se esqueça de um item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Compre na metade do tempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organize as compras da família!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Descubra novas receitas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Acompanhe sua despensa perfeitamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Apenas $price/dia – menos que um café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Pular por enquanto';

  @override
  String get paywallTestimonial =>
      'AI organiza minhas compras em segundos. Economizo 20 minutos por viagem.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancele a qualquer momento · Sem custos até o final do período de avaliação';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Ei, $name! De que $category você precisa?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De que $category você precisa?';
  }

  @override
  String get onboardingAiDemoYes => 'Sim!';

  @override
  String get onboardingAiDemoReaction => 'Legal!';

  @override
  String get onboardingAiDemoChange => 'Alterar item';

  @override
  String get onboardingAiDemoOffer => 'Tente digitar outra coisa!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Sua lista de compras, agora com IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Veja como o Kipi monta sua lista completa em segundos';

  @override
  String get onboardingAiDemoSlideCta => 'Eu quero isso! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Vou fazer um churrasco 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Pronto! Tudo que você vai precisar:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa em segundos ✨';

  @override
  String get onboardingPainTitle => 'O que mais te frustra?';

  @override
  String get onboardingPainSubtitle => 'Seja honesto — vamos resolver cada um';

  @override
  String get onboardingPainCta => 'Sim, resolve isso pra mim →';

  @override
  String get onboardingPainForget => 'Esqueço itens no mercado';

  @override
  String get onboardingPainFamily => 'Minha família não vê a lista';

  @override
  String get onboardingPainOverspend => 'Sempre gasto mais que planejei';

  @override
  String get onboardingPainRepeat => 'Uma ida ao mercado nunca basta';

  @override
  String get aiWelcomeContent =>
      'Olá! 👋 Sou **Kipi**, seu assistente pessoal de compras e receitas!\n\nEstou aqui para ajudá-lo:\n🛒 **Organize** suas compras por categorias automaticamente\n💰 **Acompanhe** seu orçamento e dê dicas para economizar dinheiro\n🍲 **Sugira** receitas deliciosas com o que você já tem\n\nComo posso ajudá-lo hoje? Você pode começar criando sua primeira lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Criar minha primeira lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, me ajude a criar minha primeira lista de compras';

  @override
  String get aiWelcomeSuggestSave => 'Como economizar dinheiro?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, como você pode me ajudar a economizar dinheiro em compras?';

  @override
  String get suggestionMilk => 'Leite';

  @override
  String get suggestionBread => 'Pão';

  @override
  String get suggestionEggs => 'Ovos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'Frutas';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get navChat => 'Bater papo';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get create => 'Criar';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get regenerate => 'Regerar';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Fechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Fazer upgrade';

  @override
  String get clear => 'Limpar';

  @override
  String error(String message) {
    return 'Erro: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erro: $message';
  }

  @override
  String get purchaseError => 'Erro ao processar compra. Tente novamente.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Tente novamente.';

  @override
  String get loading => 'Carregando...';

  @override
  String get fieldRequired => 'Campo obrigatório';

  @override
  String get addedFeedback => 'Adicionados!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Sair do modo de compras';

  @override
  String get exit => 'Saída';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecionados',
      one: '$count selecionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Já comprado';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar comprados';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareViaCode => 'Compartilhar via código';

  @override
  String get importViaCode => 'Importar via código';

  @override
  String get listAssistant => 'Assistente desta lista';

  @override
  String get globalAssistant => 'Assistente geral';

  @override
  String get becomePremium => 'Tornar-se Premium';

  @override
  String get manageSubscription => 'Gerenciar assinatura';

  @override
  String get completePurchase => 'Concluir Compra';

  @override
  String get confirmClearList => 'Remover todos os itens?';

  @override
  String get shareListTitle => 'Compartilhar Lista';

  @override
  String get shareThisCode => 'Compartilhe este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Digite o código';

  @override
  String get confirmArchiveTitle => 'Concluir Compra';

  @override
  String get confirmArchiveContent =>
      'Deseja concluir esta compra e arquivar a lista?';

  @override
  String get complete => 'Concluir';

  @override
  String get listArchived => 'Lista arquivada com sucesso!';

  @override
  String listAdded(String listName) {
    return '$listName adicionada!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get archiveList => 'Concluir Compra';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Gerar lista de compras';

  @override
  String get pantryEmpty => 'Dispensa vazia';

  @override
  String get pantryEmptySubtitle =>
      'Adicione produtos que você quer manter em casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(ns) precisam ser comprados';
  }

  @override
  String get noItemsToBuy => 'Nenhum item precisa ser comprado';

  @override
  String get newPantryList => 'Compras da Dispensa';

  @override
  String get newListTitle => 'Nova Lista de Compras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(ns) serão adicionados';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" criada com $count itens';
  }

  @override
  String get noTracking => 'Sem rastreamento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantidade ideal';

  @override
  String get currentQuantity => 'Quantidade atual';

  @override
  String get consumed => 'Consumi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido para $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remover \"$name\" da dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Digitalizar produto';

  @override
  String get positionBarcodeCenter => 'Posicione o código de barras no centro';

  @override
  String get product => 'Produto';

  @override
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglês';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Procurar idioma...';

  @override
  String get currency => 'Moeda';

  @override
  String get chooseCurrency => 'Selecione a moeda';

  @override
  String get searchCurrency => 'Pesquisar moeda...';

  @override
  String get appearance => 'Aparência';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinâmicas';

  @override
  String get dynamicColorsSubtitle =>
      'Use cores baseadas no seu papel de parede';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desative as cores dinâmicas para que a cor do tema tenha efeito';

  @override
  String get finance => 'Financeiro';

  @override
  String get monthlyBudgetNav => 'Orçamento mensal';

  @override
  String get budgetSubtitle => 'Acompanhe seus gastos do mês';

  @override
  String get data => 'Dados';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar ou importar seus dados';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get myAchievements => 'Minhas conquistas';

  @override
  String get itemsPurchased => 'Itens comprados';

  @override
  String get totalSavings => 'Economia total';

  @override
  String get currentStreak => 'Sequência Atual';

  @override
  String streakDays(int count) {
    return '$days dias';
  }

  @override
  String get unlockedBadges => 'Emblemas desbloqueados';

  @override
  String get badgeBeginner => 'Novato';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Salvando Mestre';

  @override
  String get badgeSuperPlanner => 'Superplanejador';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription => 'Backup e exportação é premium';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get exportDataSubtitle => 'Salvar todas as listas como JSON';

  @override
  String get importData => 'Importar dados';

  @override
  String get importDataSubtitle => 'Restaurar listas de um JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Cole o JSON do backup aqui...';

  @override
  String get backupExported => 'Backup exportado!';

  @override
  String get budgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetPremiumLocked => 'Orçamento mensal global é premium';

  @override
  String get budgetUpgradePrompt => 'Faça upgrade para desbloquear';

  @override
  String get noBudgetDefined => 'Nenhum orçamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Definir orçamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Valor';

  @override
  String get setBudgetTitle => 'Orçamento Mensal';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total itens';
  }

  @override
  String progressBudget(String amount) {
    return 'Orçamento: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Adicionar Item';

  @override
  String get itemName => 'Nome do item';

  @override
  String get quantityShort => 'Qtd';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preço estimado';

  @override
  String get addItemPrice => 'Preço estimado';

  @override
  String get editItem => 'Editar Item';

  @override
  String get quantityFull => 'Quantidade';

  @override
  String get editItemPrice => 'Preço estimado';

  @override
  String get addToPantry => 'Adicionar à Dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Deseja adicionar \"$name\" à sua Dispensa?';
  }

  @override
  String get yes => 'Sim';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Qtd ideal';

  @override
  String get currentQty => 'Qtd atual';

  @override
  String get trackStock => 'Rastrear estoque';

  @override
  String get trackStockActive => 'Aparece na sugestão de compras';

  @override
  String get trackStockInactive => 'Não gera sugestão de compra';

  @override
  String get createListDialog => 'Criar Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Histórico de Listas';

  @override
  String get myLists => 'Minhas Listas';

  @override
  String get viewActive => 'Ver Ativas';

  @override
  String get viewHistory => 'Ver Histórico';

  @override
  String get noArchivedLists => 'Nenhuma lista arquivada';

  @override
  String get noActiveLists => 'Nenhuma lista ativa';

  @override
  String completedOn(String date) {
    return 'Concluída em $date';
  }

  @override
  String get sharedLabel => 'Compartilhada';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Remover';

  @override
  String get deleteListTitle => 'Excluir lista';

  @override
  String deleteListContent(String name) {
    return 'Tem certeza que deseja excluir \"$name\"? Todos os itens serão removidos.';
  }

  @override
  String get removeSharedListTitle => 'Remover lista compartilhada';

  @override
  String removeSharedListContent(String name) {
    return 'Remover \"$name\" da sua lista de listas? A lista original não será afetada.';
  }

  @override
  String get createNewList => 'Criar nova lista';

  @override
  String get aiAssistant => 'Assistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtenha sugestões inteligentes, receitas e dicas personalizadas com nosso assistente de IA.';

  @override
  String get generalAssistant => 'Assistente Geral';

  @override
  String get newChat => 'Novo bate-papo';

  @override
  String get noHistory => 'Sem histórico de bate-papo';

  @override
  String get deleteSession => 'Excluir bate-papo';

  @override
  String get deleteSessionConfirm =>
      'Tem certeza de que deseja excluir este bate-papo? As mensagens serão perdidas permanentemente.';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String get chatHintBlocked => 'Desbloqueie IA para conversar';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Assistente de IA';

  @override
  String get closeSheet => 'Fechar';

  @override
  String get scanBarcodeTitle => 'Digitalizar código de barras';

  @override
  String get listHelp => 'Como posso ajudar com sua lista?';

  @override
  String get generalHelp => 'Como posso ajudar com suas compras hoje?';

  @override
  String get chatSubtitle =>
      'Peça sugestões de itens, receitas or dicas de economia.';

  @override
  String get aiError =>
      'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get aiLimitAlmostReached => 'Quase sem mensagens de IA';

  @override
  String get unlockAi => 'Desbloqueie IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Assine o Premium para desbloquear a resposta completa e obter dicas ilimitadas de IA para suas compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Ações de IA restantes este mês – atualização ilimitada';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensal de IA atingido. Atualize para o Pro de forma ilimitada →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get onboardingWelcomeTitle => 'Bem-vindo ao KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'A maneira mais inteligente de organizar suas compras e economizar dinheiro.';

  @override
  String get onboardingSetupTitle => 'Personalize sua experiência';

  @override
  String get onboardingSetupDesc =>
      'Escolha como você deseja que o KipiList seja exibido e funcione para você.';

  @override
  String get onboardingLoginTitle => 'Salve tudo na nuvem';

  @override
  String get onboardingLoginDesc =>
      'Seus dados sincronizados em todos os seus dispositivos';

  @override
  String get onboardingShareTitle => 'Compartilhe com quem você ama';

  @override
  String get onboardingShareDesc =>
      'Sincronize listas com familiares e amigos em tempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloqueie todos os recursos';

  @override
  String get onboardingPremiumSubtitle =>
      'Aproveite ao máximo suas listas de compras';

  @override
  String get onboardingAnnualBadge => 'Melhor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensal';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos os planos';

  @override
  String get onboardingSubscribeCta => 'Inscrever-se';

  @override
  String get onboardingCancelAnytime =>
      'Cancele a qualquer momento. Sem compromisso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como convidado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      'Já tem uma assinatura? Toque aqui para restaurá-lo.';

  @override
  String get onboardingMaybeLater => 'Talvez mais tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Ei $name, organize suas compras da maneira certa.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crie e compartilhe listas instantaneamente. O Kipi adiciona itens automaticamente com base nos seus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conheça Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pergunte qualquer coisa: crie listas, encontre receitas, controle sua despensa, planeje sua semana.';

  @override
  String get onboardingSlide3Title => 'Despensa e planejamento de refeições';

  @override
  String get onboardingSlide3Body =>
      'Acompanhe o que você tem, planeje refeições e gere listas de compras automaticamente.';

  @override
  String get onboardingExit => 'Saída';

  @override
  String get onboardingPersonalizationTitle => 'Vamos conhecer você';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos isso para personalizar suas sugestões e tornar as compras mais inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Qual é a sua comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'por exemplo Pizza, Sushi, Lasanha...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Pular por enquanto';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Conte-nos sua comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Tela inicial padrão';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Escolha entre lista de compras ou bate-papo com IA';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Bate-papo com IA';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erro ao carregar ofertas. Tente novamente.';

  @override
  String get paywallPurchaseError =>
      'Não foi possível concluir a compra. Tente novamente.';

  @override
  String get paywallRestoreError =>
      'Nenhuma assinatura ativa encontrada para restaurar.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIAS GRÁTIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMANAS GRATUITAS',
      one: '$count SEMANA GRATUITA',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESES GRATUITOS',
      one: '$count MÊS GRATUITO',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Experimente gratuitamente!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele a qualquer momento. Sem cobrança hoje.';

  @override
  String get paywallTrialCta => 'Comece o teste gratuito';

  @override
  String get recipeAddToList => 'Adicionar à lista de compras';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected =>
      'Nenhuma lista selecionada. Abra uma lista primeiro.';

  @override
  String get paywallFeaturesTitle => 'Tudo que você precisa:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza sua lista automaticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crie quantas listas você precisar';

  @override
  String get paywallFeatureDescSharing => 'Compre juntos em tempo real';

  @override
  String get paywallFeatureDescPantry => 'Acompanhe o que você tem em casa';

  @override
  String get paywallFeatureDescBudget =>
      'Fique dentro do orçamento todos os meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'IA inteligente';

  @override
  String get paywallFeatureExpenseControl => 'Controle de despesas';

  @override
  String get paywallFeatureSharing => 'Compartilhamento';

  @override
  String get paywallBeforeAfterTitle => 'IA antes e depois:';

  @override
  String get paywallLabelCommon => 'Comum';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'sabão';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pão';

  @override
  String get paywallAfterItem1 => 'Grãos';

  @override
  String get paywallAfterItem2 => 'Limpeza';

  @override
  String get paywallAfterItem3 => 'Carnes';

  @override
  String get paywallAfterItem4 => 'Padaria';

  @override
  String get paywallTestimonialsTitle => 'O que nossos usuários dizem:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiza minhas compras em segundos. Economizo 20 minutos por viagem ao mercado.';

  @override
  String get paywallTestimonial2Name => 'Carlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca mais esqueci um item da lista. O chat da IA ​​é sensacional!';

  @override
  String get paywallSocialProof => '+2.400 famílias usam';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MELHOR VALOR';

  @override
  String get paywallMostPopular => 'MAIS POPULAR';

  @override
  String get paywallProLabel => 'PRÓ';

  @override
  String get paywallSafeCheckout => 'Pagamento seguro';

  @override
  String get paywallSelectPlan => 'Escolha seu plano:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ECONOMIZE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Apenas $price/mês';
  }

  @override
  String get paywallPackageAnnual => 'Plano Anual';

  @override
  String get paywallPackageMonthly => 'Plano Mensal';

  @override
  String get paywallPackageLifetime => 'Acesso vitalício';

  @override
  String get paywallCancelAnytime =>
      'Cancele a qualquer momento. Sem compromisso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeiros $days dias GRATUITOS';
  }

  @override
  String get paywallSecuredByStore =>
      'Protegido pelo Google Play · Cancele a qualquer momento';

  @override
  String get paywallPolicy => 'política de Privacidade';

  @override
  String get paywallTerms => 'Termos de Uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI sempre ao seu lado';

  @override
  String get paywallHeroSubtitle =>
      'Adicione itens, organize listas e economize tempo com a IA no seu bolso';

  @override
  String get paywallBenefit1Desc =>
      'Adiciona, organiza e sugere itens 24 horas por dia, 7 dias por semana';

  @override
  String get paywallBenefit2Desc => 'Sem limite de 3 listas';

  @override
  String get paywallBenefit3Desc =>
      'Acompanhamento de despesas e listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidade total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Comece gratuitamente – $days dias';
  }

  @override
  String get premiumUpgrade => 'Faça upgrade para desbloquear';

  @override
  String get itemRemoved => 'Item removido';

  @override
  String get undo => 'Desfazer';

  @override
  String get emptyListTitle => 'Sua lista está vazia';

  @override
  String get emptyListSubtitle => 'Adicione itens para começar';

  @override
  String get noListFoundTitle => 'Nenhuma lista encontrada';

  @override
  String get noListFoundSubtitle => 'Crie sua primeira lista para começar';

  @override
  String get createFirstList => 'Criar Primeira Lista';

  @override
  String get listBudgetTitle => 'Orçamento da Lista';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get removeBudget => 'Remover';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartilhar listas';

  @override
  String get prefFullHistory => 'Histórico completo';

  @override
  String get prefExportData => 'Exportar dados';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orçamento mensal global';

  @override
  String get prefAIAssistant => 'Assistente de IA Personalizado';

  @override
  String get prefUnlimitedPantry => 'Dispensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefatos Interativos da IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Roxo';

  @override
  String get themeRed => 'Vermelho';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Âmbar';

  @override
  String get themeTeal => 'Cerceta';

  @override
  String get themeBrown => 'Marrom';

  @override
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Padaria';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'pacote';

  @override
  String get shareSubject => 'Lista de Compras';

  @override
  String get monthlyBudgetTitle => 'Orçamento Mensal';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Excluir lista';

  @override
  String get pantryItemRemoved => 'Item removido';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit itens precisam ser comprados',
      one: '$deficit item precisa ser comprado',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carrinho';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Recursos avançados';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desselecionar tudo';

  @override
  String get monthlyBudgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetEditTitle => 'Orçamento Mensal';

  @override
  String get budgetDashboardTitle => 'Painel';

  @override
  String get selectListForDashboard =>
      'Selecione uma lista para ver o dashboard.';

  @override
  String get spendingAnalysis => 'Análise de Gastos';

  @override
  String get noItemsToAnalyze => 'Nenhum item na lista para analisar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marque itens como comprados para ver a análise.';

  @override
  String get totalSpending => 'Gasto Total';

  @override
  String get spendingByCategory => 'Gastos por Categoria';

  @override
  String get achievements => 'Conquistas';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO COM IA...';

  @override
  String get yesLabel => 'Sim';

  @override
  String get noLabel => 'Não';

  @override
  String get shareListText => 'Minha Lista de Compras';

  @override
  String get emptyListAddItems =>
      'Sua lista está vazia! Adicione itens primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada magicamente por categorias! ✨';

  @override
  String get shoppingMode => 'Modo Compras';

  @override
  String get smartOrganization => 'Organização Inteligente';

  @override
  String get savings => 'Economia';

  @override
  String get shoppingModeHeader => 'MODO COMPRAS';

  @override
  String get shareAsText => 'Enviar itens como texto formatado';

  @override
  String get shareRealtime => 'Sincronizar em tempo real com outras pessoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt =>
      'Sugira receitas com os itens da minha lista.';

  @override
  String get economyTips => 'Dicas de economia';

  @override
  String get economyTipsPrompt => 'Como economizar nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organize por corredores de mercado.';

  @override
  String get recipeSuggestion => 'Sugestão de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Adicionar tudo à lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Digitar por voz (Grátis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz com IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de Voz com IA';

  @override
  String get voiceCommandContent =>
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver Planos';

  @override
  String get itemsAddedSuccess => 'Itens adicionados à lista!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar Feedback';

  @override
  String get feedbackPrompt => 'O que gostaria de partilhar?';

  @override
  String get feedbackTypeBug => 'Reportar Erro';

  @override
  String get feedbackTypeBugHint => 'Algo não está a funcionar';

  @override
  String get feedbackTypeSuggestion => 'Sugestão';

  @override
  String get feedbackTypeSuggestionHint => 'Ideia para melhorar a aplicação';

  @override
  String get feedbackTypeTranslation => 'Problema de Tradução';

  @override
  String get feedbackTypeTranslationHint => 'Tradução incorreta ou estranha';

  @override
  String get feedbackTypeFeature => 'Pedido de Funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que gostaria de ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de feedback';

  @override
  String get feedbackHint => 'Descreva o seu feedback em detalhe...';

  @override
  String get feedbackSend => 'Enviar Feedback';

  @override
  String get feedbackSending => 'A enviar...';

  @override
  String get feedbackThankYou => 'Obrigado!';

  @override
  String get feedbackThankYouMessage =>
      'O seu feedback foi recebido e ajuda-nos a melhorar o KipiList para todos.';

  @override
  String get feedbackBack => 'Voltar';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Tentar novamente';

  @override
  String get feedbackSettingsTitle => 'Enviar Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Reporte erros, sugira melhorias ou corrija traduções';

  @override
  String get aiEnergy => 'Energia da IA';

  @override
  String get searchInConversation => 'Pesquisar na conversa...';

  @override
  String get noMessagesFound => 'Nenhuma mensagem encontrada';

  @override
  String get suggestedQuestions => 'Perguntas sugeridas:';

  @override
  String get shoppingAssistant => 'Assistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprados';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver itens';

  @override
  String get noItemsInList => 'Nenhum item na lista';

  @override
  String get longHistoryWarning =>
      'Histórico longo: o assistente foca nas últimas mensagens para otimizar o desempenho.';

  @override
  String get listening => 'Ouvindo...';

  @override
  String get addDirectToList => 'Adicionar direto na lista';

  @override
  String get unlockFullResponse => 'Desbloquear Resposta Completa';

  @override
  String get switchList => 'Trocar lista';

  @override
  String get marketMode => 'Modo Mercado';

  @override
  String get backToChat => 'Voltar para o Chat';

  @override
  String get finishShopping => 'Concluir Compras';

  @override
  String get welcomeAiAssistant => 'Bem-vindo ao Assistente IA';

  @override
  String get createListToStartAi =>
      'Crie uma lista de compras para começar a usar o chat inteligente.';

  @override
  String get howCanIHelp => 'Como posso ajudar?';

  @override
  String get chatSubtitleShort =>
      'Pergunte sobre preços, receitas, organização...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprados';
  }

  @override
  String get quickReplies => 'Respostas rápidas:';

  @override
  String get voiceProFeature =>
      'Comandos de voz avançados são Pro. Ativando ditado básico...';

  @override
  String get viewPro => 'Ver Pro';

  @override
  String get errorLoadingChat => 'Ops! Algo deu errado ao carregar o chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get errorOscillation =>
      'Isso pode ocorrer devido a oscilações de rede ou indisponibilidade temporária. Por favor, tente novamente.';

  @override
  String get activeListening => 'Escuta Ativa';

  @override
  String get whatToDoWithItem => 'O que deseja fazer com este item?';

  @override
  String get viewDetails => 'Ver Detalhes';

  @override
  String get openMenu => 'Abrir menu';

  @override
  String get viewRecipe => 'Ver Receita';

  @override
  String get recipeCreated => 'Receita criada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Eliminar';

  @override
  String get deleteRecipeConfirm => 'Eliminar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Tem a certeza de que deseja eliminar \"$recipeName\"? Esta ação não pode ser desfeita.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instruções';

  @override
  String get prepTime => 'Tempo de preparação';

  @override
  String get recipeSaved => 'Receita guardada!';

  @override
  String get noRecipesSaved => 'Nenhuma receita guardada';

  @override
  String get noRecipesSavedHint =>
      'Crie a sua primeira receita personalizada tocando no botão abaixo.';

  @override
  String get myRecipes => 'Minhas Receitas';

  @override
  String get newRecipe => 'Nova Receita';

  @override
  String get loadingRecipes => 'A carregar as suas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao carregar receitas';

  @override
  String get addIngredient => 'Adicionar ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Breve descrição';

  @override
  String get prepTimeMinutes => 'Tempo de preparação (minutos)';

  @override
  String get instructionsHint => 'Introduza um passo por linha...';

  @override
  String get addPhoto => 'Adicionar foto';

  @override
  String get imageUrlPlaceholder => 'Ou cole o URL de uma imagem';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Procurar receitas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todas';

  @override
  String get recipeDeleted => 'Receita eliminada';

  @override
  String get saveChanges => 'Guardar alterações';

  @override
  String get editRecipeTitle => 'Editar Receita';

  @override
  String get newRecipeTitle => 'Nova Receita';

  @override
  String get requiredField => 'Obrigatório';

  @override
  String get chooseImageSource => 'Escolher origem da imagem';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Introduzir URL';

  @override
  String get recipeImage => 'Imagem da receita';

  @override
  String get removeImage => 'Remover imagem';

  @override
  String get mealPlannerTitle => 'Planeador de Refeições';

  @override
  String get mealPlannerViewMonthly => 'Ver mensal';

  @override
  String get mealPlannerViewWeekly => 'Ver semanal';

  @override
  String get mealPlannerNoMeals => 'Nenhuma refeição planeada';

  @override
  String get mealPlannerNoMealsHint => 'Toque num dia para adicionar';

  @override
  String get mealPlannerLoading => 'A carregar ementa...';

  @override
  String get mealPlannerError => 'Erro ao carregar ementa';

  @override
  String get mealPlannerAddMeal => 'Adicionar Refeição';

  @override
  String get mealPlannerEditMeal => 'Editar Refeição';

  @override
  String get mealPlannerDeleteMeal => 'Remover refeição';

  @override
  String get mealPlannerMealDeleted => 'Refeição removida';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doses',
      one: '$count dose',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Doses';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Selecione uma receita';

  @override
  String get mealPlannerSearchRecipes => 'Procurar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Nenhuma receita encontrada';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crie receitas no separador Receitas primeiro';

  @override
  String get mealPlannerSave => 'Adicionar ao plano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total refeições planeadas';
  }

  @override
  String get mealPlannerGenerateList => 'Gerar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Adicionar todos os ingredientes das refeições planeadas desta semana à sua lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediente(s) adicionado(s) à sua lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nenhum ingrediente para adicionar. Planeie refeições com receitas primeiro.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crie uma lista de compras primeiro.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Pequeno-Almoço';

  @override
  String get mealPlannerMealTypeLunch => 'Almoço';

  @override
  String get mealPlannerMealTypeDinner => 'Jantar';

  @override
  String get mealPlannerMealTypeSnack => 'Lanche';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planeado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toque em qualquer dia para começar a planear as suas refeições!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutos';
  }

  @override
  String get inviteToList => 'Convidar para listar';

  @override
  String get shareApp => 'Compartilhar aplicativo';

  @override
  String get shareAppDescription => 'Convide amigos para usar o KipiList';

  @override
  String shareReferralText(String url) {
    return 'Estou usando o KipiList para organizar minhas compras! Baixe através do meu link e ambos ganhamos 7 dias de Premium grátis: $url';
  }

  @override
  String get shareReferralSubject => 'Ganhe 7 dias de KipiList Premium!';

  @override
  String get gestureHint => 'Segure para selecionar • Deslize para remover';

  @override
  String get catalogTitle => 'Catálogo';

  @override
  String get catalogMyFrequents => 'Meus frequentadores';

  @override
  String get catalogSearchGlobal => 'Pesquise qualquer produto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Pesquisar em $category...';
  }

  @override
  String get catalogSortPopular => 'Mais popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionais';

  @override
  String get catalogRareSection => 'menos comum em seu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Adicione $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produto não encontrado, digite o nome';

  @override
  String get catalogBrowse => 'Navegar no catálogo';

  @override
  String get offlineBanner => 'Você está off-line';

  @override
  String get consentTitle => 'Privacidade e análise';

  @override
  String get consentBody =>
      'KipiList usa Firebase Analytics para melhorar sua experiência. Os seus dados são processados ​​de acordo com a nossa Política de Privacidade.';

  @override
  String get consentAccept => 'Aceitar';

  @override
  String get consentDecline => 'Não, obrigado';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos os ingredientes disponíveis';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 ausente';
  }

  @override
  String get expirationDate => 'Data de validade';

  @override
  String get notInformed => 'Não definido';

  @override
  String get skip => 'Pular';

  @override
  String get onboardingAiTitle => 'Conversar com Kipi';

  @override
  String get onboardingAiGreeting =>
      'Oi! Sou Kipi, seu assistente pessoal de compras! 🛒';

  @override
  String get onboardingAiAskName => 'Qual o seu nome?';

  @override
  String get onboardingAiNameHint => 'Digite seu nome...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Prazer em conhecê-lo, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Qual é a sua comida favorita?';

  @override
  String get onboardingAiFoodHint => 'por exemplo Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Ótimas escolhas! Aqui está o que eu adicionaria à sua lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Isso parece bom? Tente digitar outra coisa!';

  @override
  String get onboardingAiReady =>
      'Ótimo! Você está pronto para começar. Vamos configurar sua conta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Erro de conexão';

  @override
  String connectionErrorDesc(String error) {
    return 'Não foi possível conectar-se ao servidor. Verifique sua internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Erro ao carregar listas';

  @override
  String get noListsFound => 'Nenhuma lista encontrada';

  @override
  String get backToToday => 'De volta a hoje';

  @override
  String get quickSuggestions => 'Sugestões rápidas';

  @override
  String get aiEnergyLow => 'Baixa energia de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloqueie IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoje';
  }

  @override
  String get aiSubscribeUnlimited => 'Assine para IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear com anúncio';

  @override
  String get conversationHistoryTitle => 'Histórico de conversas';

  @override
  String get noConversationsFound => 'Nenhuma conversa encontrada';

  @override
  String get errorLoadingHistory => 'Erro ao carregar o histórico';

  @override
  String get deleteConversationTitle => 'Excluir conversa?';

  @override
  String get deleteConversationConfirm => 'Esta ação não pode ser desfeita.';

  @override
  String get deleteConversation => 'Excluir';

  @override
  String get subscription => 'Subscrição';

  @override
  String get kipiListProActive => 'KipiList Pro ativo';

  @override
  String get unlockPremiumTitle =>
      'Desbloqueie listas ilimitadas, IA e muito mais';

  @override
  String get loadingSubscription => 'Carregando assinatura...';

  @override
  String get errorLoadingSubscription => 'Erro ao carregar assinatura';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'Meu perfil';

  @override
  String get profileSubtitle => 'Preferências pessoais para o assistente de IA';

  @override
  String get customizeAiAssistant => 'Personalize o assistente de IA';

  @override
  String get assistantHistory => 'Histórico do assistente';

  @override
  String get assistantHistorySubtitle => 'Veja seu histórico de conversas';

  @override
  String get manageCategories => 'Gerenciar categorias';

  @override
  String get manageCategoriesSubtitle => 'Gerenciar categorias de itens';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nome do assistente';

  @override
  String get chooseIcon => 'Escolha o ícone';

  @override
  String get profileSaved => 'Perfil salvo com sucesso!';

  @override
  String get errorSavingProfile => 'Erro ao salvar: null';

  @override
  String get userProfile => 'Perfil de usuário';

  @override
  String get profileDescription =>
      'Diga-nos suas preferências pessoais para que o assistente de IA possa sugerir itens e receitas personalizadas.';

  @override
  String get preferredMarket => 'Mercado Preferencial';

  @override
  String get preferredMarketHint => 'Ex.: Supermercado X';

  @override
  String get dietaryRestrictions => 'Restrições Dietéticas';

  @override
  String get dietaryRestrictionsHint => 'Ex.: vegano, vegetariano, sem glúten';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Ex.: Mercado Y, Mercado Z';

  @override
  String get observations => 'Notas';

  @override
  String get observationsHint => 'Outras preferências para o assistente';

  @override
  String get saveProfile => 'Salvar perfil';

  @override
  String get everythingReady => 'Tudo pronto!';

  @override
  String get youCompletedList => 'Você completou a lista!';

  @override
  String get selectCheaperAlternative =>
      'Selecione uma alternativa de produto mais barata para otimizar custos.';

  @override
  String get suggestedItems => 'Itens sugeridos';

  @override
  String get swapped => 'Trocado';

  @override
  String get swap => 'Trocar';

  @override
  String get chooseThemeColor => 'Escolha a cor do tema';

  @override
  String get manageCategoriesTitle => 'Gerenciar categorias';

  @override
  String get categoryLimitReached =>
      'Limite de 10 categorias na versão gratuita. Atualize para o Pro!';

  @override
  String get deleteCategoryTitle => 'Excluir categoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Os itens da categoria \"$category\" serão movidos para \"Outros\".\nContinuar?';
  }

  @override
  String get deleteCategory => 'Excluir';

  @override
  String get newCategoryDialog => 'Nova categoria';

  @override
  String get editCategoryDialog => 'Editar categoria';

  @override
  String get categoryName => 'Nome da categoria';

  @override
  String get categoryNameHint => 'Ex.: Carnes';

  @override
  String get categoryColorLabel => 'Cor';

  @override
  String get categoryIconLabel => 'Ícone';

  @override
  String itemAddedSnack(String name) {
    return '$name adicionado';
  }

  @override
  String get kipiQuickBarHint => 'O que você precisa comprar?';

  @override
  String replaceItem(String item) {
    return 'Substitua $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Nunca mais se esqueça de um item de mercearia';

  @override
  String get onboardingGoalSaveMoney => 'Economize dinheiro';

  @override
  String get onboardingGoalNeverForget => 'Nunca se esqueça dos itens';

  @override
  String get onboardingGoalFaster => 'Compre mais rápido';

  @override
  String get onboardingGoalFamily => 'Organize as compras da família';

  @override
  String get onboardingGoalRecipes => 'Descubra receitas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => 'O que é importante para você?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Escolha seus objetivos para personalizar o KipiList';

  @override
  String get onboardingCommitmentsCta => 'Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Seu nome';

  @override
  String get onboardingPersonalizationNameHint => 'Digite seu nome';

  @override
  String get onboardingPersonalizationCategoryTitle => 'O que você compra?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Para quem você compra?';

  @override
  String get onboardingCategoryGrocery => 'Mantimentos';

  @override
  String get onboardingCategoryPharmacy => 'Farmácia';

  @override
  String get onboardingCategoryRecipes => 'Receitas';

  @override
  String get onboardingCategoryHome => 'Lar';

  @override
  String get onboardingCategoryPet => 'Bicho de estimação';

  @override
  String get onboardingGroupSolo => 'Apenas eu';

  @override
  String get onboardingGroupCouple => 'Casal';

  @override
  String get onboardingGroupFamily => 'Família';

  @override
  String get onboardingLoadingTitle => 'Preparando sua experiência...';

  @override
  String get onboardingLoadingStep1 => 'Analisando suas preferências...';

  @override
  String get onboardingLoadingStep2 => 'Configurando o assistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Quase pronto...';

  @override
  String get onboardingLoadingStat1Label => 'Itens catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Usuários ajudados';

  @override
  String get onboardingLoadingStat3Label => 'Minutos economizados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, economize em cada viagem!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nunca se esqueça de um item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, compre na metade do tempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organize as compras da família!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, descubra novas receitas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, monitore sua despensa perfeitamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Economize em cada viagem!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nunca se esqueça de um item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Compre na metade do tempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organize as compras da família!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Descubra novas receitas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Acompanhe sua despensa perfeitamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Apenas $price/dia – menos que um café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Pular por enquanto';

  @override
  String get paywallTestimonial =>
      'AI organiza minhas compras em segundos. Economizo 20 minutos por viagem.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancele a qualquer momento · Sem custos até o final do período de avaliação';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Ei, $name! De que $category você precisa?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De que $category você precisa?';
  }

  @override
  String get onboardingAiDemoYes => 'Sim!';

  @override
  String get onboardingAiDemoReaction => 'Legal!';

  @override
  String get onboardingAiDemoChange => 'Alterar item';

  @override
  String get onboardingAiDemoOffer => 'Tente digitar outra coisa!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Sua lista de compras, agora com IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Veja como o Kipi constrói sua lista completa em segundos';

  @override
  String get onboardingAiDemoSlideCta => 'Eu quero isso! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Estou organizando um churrasco 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Preparar! Aqui está tudo que você precisa:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa em segundos ✨';

  @override
  String get onboardingPainTitle => 'O que mais te frustra?';

  @override
  String get onboardingPainSubtitle =>
      'Seja honesto – nós consertaremos cada um deles';

  @override
  String get onboardingPainCta => 'Sim, corrija isso para mim →';

  @override
  String get onboardingPainForget => 'Eu esqueço itens na loja';

  @override
  String get onboardingPainFamily => 'Minha família nunca vê a lista';

  @override
  String get onboardingPainOverspend => 'Eu sempre estou acima do orçamento';

  @override
  String get onboardingPainRepeat => 'Uma viagem nunca é suficiente';

  @override
  String get aiWelcomeContent =>
      'Olá! 👋 Sou **Kipi**, seu assistente pessoal de compras e receitas!\n\nEstou aqui para ajudá-lo:\n🛒 **Organize** suas compras por categorias automaticamente\n💰 **Acompanhe** seu orçamento e dê dicas para economizar dinheiro\n🍲 **Sugira** receitas deliciosas com o que você já tem\n\nComo posso ajudá-lo hoje? Você pode começar criando sua primeira lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Criar minha primeira lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, me ajude a criar minha primeira lista de compras';

  @override
  String get aiWelcomeSuggestSave => 'Como economizar dinheiro?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, como você pode me ajudar a economizar dinheiro em compras?';

  @override
  String get suggestionMilk => 'Leite';

  @override
  String get suggestionBread => 'Pão';

  @override
  String get suggestionEggs => 'Ovos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'Frutas';
}
