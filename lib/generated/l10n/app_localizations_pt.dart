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
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Procurar idioma...';

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
      'Disable dynamic colors for the theme color to take effect';

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
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m your smart assistant. What would you like to call me?';

  @override
  String onboardingAiNameResponse(String name) {
    return '$name? Love it! I can help with lists, categorize items, give suggestions and much more. What\'s your favorite food?';
  }

  @override
  String get onboardingAiFoodResponse =>
      'Yum! And how do you prepare it? I can suggest the ingredients!';

  @override
  String get onboardingAiListReady =>
      'Done! Your list is organized. Do you want to go to the shopping list or keep chatting?';

  @override
  String get onboardingAiSuggestButton => 'Suggest!';

  @override
  String get onboardingGoToList => 'Go to list';

  @override
  String get onboardingKeepChatting => 'Keep chatting';

  @override
  String get onboardingSkipToApp => 'Skip to app';

  @override
  String get onboardingChatPlaceholder => 'Type a message...';

  @override
  String get onboardingLoginTitle => 'Save everything to the cloud';

  @override
  String get onboardingLoginDesc => 'Your data synced across all your devices';

  @override
  String get onboardingShareTitle => 'Share with the ones you love';

  @override
  String get onboardingShareDesc =>
      'Sync lists with family and friends in real time';

  @override
  String get onboardingPremiumTitle => 'Unlock all features';

  @override
  String get onboardingPremiumSubtitle =>
      'Get the most out of your shopping lists';

  @override
  String get onboardingAnnualBadge => 'Best Value';

  @override
  String get onboardingMonthlyLabel => 'Monthly';

  @override
  String get onboardingAnnualLabel => 'Annual';

  @override
  String get onboardingViewAllPlans => 'View all plans';

  @override
  String get onboardingSubscribeCta => 'Subscribe';

  @override
  String get onboardingCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get onboardingContinueAsGuest => 'Continue as guest';

  @override
  String get onboardingRestore => 'Restore';

  @override
  String get settingsDefaultScreen => 'Default home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choose between shopping list or AI chat';

  @override
  String get settingsScreenList => 'Shopping List';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
  String get themeTeal => 'Teal';

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
  String get budgetDashboardTitle => 'Dashboard';

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
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do Lista Plus Premium.';

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
      'O teu feedback foi recebido e ajuda-nos a melhorar o Lista Plus para todos.';

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
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';

  @override
  String shareReferralText(Object url) {
    return 'I\'m using Lista Plus to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of Lista Plus Premium!';
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
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Pesquisar idioma...';

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
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
  String get themeTeal => 'Teal';

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
  String get budgetDashboardTitle => 'Dashboard';

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
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do Lista Plus Premium.';

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
      'Seu feedback foi recebido e nos ajuda a melhorar o Lista Plus para todos.';

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
  String get tags => 'Tags';

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
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Convidar para lista';

  @override
  String get shareApp => 'Compartilhar o app';

  @override
  String get shareAppDescription => 'Convide amigos para usar o Lista Plus';

  @override
  String shareReferralText(Object url) {
    return 'Estou usando o Lista Plus para organizar minhas compras! Baixe pelo meu link e nós dois ganhamos 7 dias de Premium grátis: $url';
  }

  @override
  String get shareReferralSubject => 'Ganhe 7 dias de Lista Plus Premium!';
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
  String get settingsAppBar => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get chooseLanguage => 'Escolher Idioma';

  @override
  String get searchLanguage => 'Procurar idioma...';

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
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
  String get themeTeal => 'Teal';

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
  String get budgetDashboardTitle => 'Dashboard';

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
      'Fale naturalmente para gerenciar sua lista!\n\nExemplos:\n• \'Adicione pão, queijo e presunto\'\n• \'Remova o sabão em pó\'\n• \'Mude o tema para azul\'\n\nEste é um recurso exclusivo do Lista Plus Premium.';

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
      'O seu feedback foi recebido e ajuda-nos a melhorar o Lista Plus para todos.';

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
    return '$minutes min';
  }
}
