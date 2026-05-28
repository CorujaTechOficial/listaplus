// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Lista da Compra';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Gardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Engadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Rexerar';

  @override
  String get copiedToClipboard => 'Copiado ao portapapeis';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Pechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Mellorar';

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
  String get purchaseError => 'Erro ao procesar a compra. Téntao de novo.';

  @override
  String get restoreError => 'Erro ao restaurar as compras. Téntao de novo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obrigatorio';

  @override
  String get addedFeedback => 'Engadido!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionados',
      one: '$count seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Xa mercados';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar mercados';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir mediante código';

  @override
  String get importViaCode => 'Importar mediante código';

  @override
  String get listAssistant => 'Asistente de lista';

  @override
  String get globalAssistant => 'Asistente global';

  @override
  String get becomePremium => 'Faite Premium';

  @override
  String get manageSubscription => 'Xestionar subscrición';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar todos os elementos?';

  @override
  String get shareListTitle => 'Compartir Lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Introduce o código';

  @override
  String get confirmArchiveTitle => 'Completar Compra';

  @override
  String get confirmArchiveContent =>
      'Completar esta compra e arquivar a lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Lista arquivada correctamente!';

  @override
  String listAdded(String listName) {
    return '$listName engadida!';
  }

  @override
  String get buy => 'Mercar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count elemento(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count elemento(s)?';
  }

  @override
  String get archiveList => 'Arquivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Xerar lista da compra';

  @override
  String get pantryEmpty => 'Despensa baleira';

  @override
  String get pantryEmptySubtitle => 'Engade os produtos que queres ter na casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit elemento(s) precisan mercarse';
  }

  @override
  String get noItemsToBuy => 'Non hai elementos que mercar';

  @override
  String get newPantryList => 'Compra da Despensa';

  @override
  String get newListTitle => 'Nova Lista da Compra';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elemento(s) engadiranse';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count elementos';
  }

  @override
  String get noTracking => 'Sen seguimento';

  @override
  String get markAsPurchased => 'Marcar como mercada';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidade ideal';

  @override
  String get currentQuantity => 'Cantidade actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" da despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configuración';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado do sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get appearance => 'Aparencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinámicas';

  @override
  String get dynamicColorsSubtitle =>
      'Usa cores baseadas no teu fondo de pantalla';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Orzamento mensual';

  @override
  String get budgetSubtitle => 'Sigue os teus gastos mensuais';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguranza';

  @override
  String get backupSubtitle => 'Exporta ou importa os teus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Copia de seguranza';

  @override
  String get backupPremiumDescription =>
      'A copia de seguranza e exportación é unha función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Gardar todas as listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega aquí o JSON da copia de seguranza...';

  @override
  String get backupExported => 'Copia de seguranza exportada!';

  @override
  String get budgetAppBar => 'Orzamento Mensual';

  @override
  String get budgetPremiumLocked => 'O orzamento mensual global é premium';

  @override
  String get budgetUpgradePrompt => 'Mellora para desbloquear';

  @override
  String get noBudgetDefined => 'Non se definiu orzamento';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer orzamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Orzamento Mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Mercados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Engadir Elemento';

  @override
  String get itemName => 'Nome do elemento';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Prezo estimado';

  @override
  String get addItemPrice => 'Prezo estimado';

  @override
  String get editItem => 'Editar Elemento';

  @override
  String get quantityFull => 'Cantidade';

  @override
  String get editItemPrice => 'Prezo estimado';

  @override
  String get addToPantry => 'Engadir á Despensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Engadir \"$name\" á túa Despensa?';
  }

  @override
  String get yes => 'Si';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Cant ideal';

  @override
  String get currentQty => 'Cant actual';

  @override
  String get trackStock => 'Seguir stock';

  @override
  String get trackStockActive => 'Aparece nos suxestións de compra';

  @override
  String get trackStockInactive => 'Non xera suxestión de compra';

  @override
  String get createListDialog => 'Crear Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Historial de Listas';

  @override
  String get myLists => 'As Miñas Listas';

  @override
  String get viewActive => 'Ver Activas';

  @override
  String get viewHistory => 'Ver Historial';

  @override
  String get noArchivedLists => 'Non hai listas arquivadas';

  @override
  String get noActiveLists => 'Non hai listas activas';

  @override
  String completedOn(String date) {
    return 'Completada o $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return 'Seguro que queres borrar \"$name\"? Todos os elementos serán eliminados.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" das túas listas? A lista orixinal non se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nova lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suxestións intelixentes, receitas e consellos personalizados co noso asistente de IA.';

  @override
  String get generalAssistant => 'Asistente Xeral';

  @override
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Limpar Historial';

  @override
  String get clearHistoryConfirm => 'Limpar todas as mensaxes desta sesión?';

  @override
  String get chatHint => 'Escribe a túa mensaxe...';

  @override
  String chatError(String error) {
    return 'Erro ao cargar o chat: $error';
  }

  @override
  String get listHelp => 'Como podo axudar coa túa lista?';

  @override
  String get generalHelp => 'Como podo axudar coas túas compras hoxe?';

  @override
  String get chatSubtitle =>
      'Pide suxestións de artigos, receitas ou consellos para aforrar.';

  @override
  String get aiError =>
      'Sentímolo, produciuse un erro ao procesar a túa solicitude. Comproba a túa conexión ou téntao de novo máis tarde.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Inicia sesión para desbloquear\nas funcións premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String loginError(String error) {
    return 'Erro de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Mellora para desbloquear';

  @override
  String get itemRemoved => 'Elemento eliminado';

  @override
  String get undo => 'Desfacer';

  @override
  String get emptyListTitle => 'A túa lista está baleira';

  @override
  String get emptyListSubtitle => 'Engade elementos para comezar';

  @override
  String get noListFoundTitle => 'Non se atoparon listas';

  @override
  String get noListFoundSubtitle => 'Crea a túa primeira lista para comezar';

  @override
  String get createFirstList => 'Crear Primeira Lista';

  @override
  String get listBudgetTitle => 'Orzamento da Lista';

  @override
  String get budgetAmountLabel => 'Importe do orzamento';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartir listas';

  @override
  String get prefFullHistory => 'Historial completo';

  @override
  String get prefExportData => 'Exportar datos';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orzamento mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA Persoal';

  @override
  String get prefUnlimitedPantry => 'Despensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefactos Interactivos de IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Púrpura';

  @override
  String get themeRed => 'Vermello';

  @override
  String get themeOrange => 'Laranxa';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ámbar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Marrón';

  @override
  String get catFruits => 'Froitas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadaría';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista da Compra';

  @override
  String get monthlyBudgetTitle => 'Orzamento Mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Elemento eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit elementos precisan ser mercadas',
      one: '$deficit elemento precisa ser mercada',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carro';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funcións avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Orzamento Mensual';

  @override
  String get budgetEditTitle => 'Orzamento Mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona unha lista para ver o panel.';

  @override
  String get spendingAnalysis => 'Análise de Gastos';

  @override
  String get noItemsToAnalyze => 'Non hai elementos na lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca os elementos como mercados para ver a análise.';

  @override
  String get totalSpending => 'Gasto Total';

  @override
  String get spendingByCategory => 'Gastos por Categoría';

  @override
  String get achievements => 'Logros';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO CON IA...';

  @override
  String get yesLabel => 'Si';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'A Miña Lista da Compra';

  @override
  String get emptyListAddItems =>
      'A túa lista está baleira! Engade elementos primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada maxicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo de Compra';

  @override
  String get smartOrganization => 'Organización Intelixente';

  @override
  String get savings => 'Aforros';

  @override
  String get shoppingModeHeader => 'MODO DE COMPRA';

  @override
  String get shareAsText => 'Enviar elementos como texto formatado';

  @override
  String get shareRealtime => 'Sincronización en tempo real con outras persoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt =>
      'Suxire receitas con elementos da miña lista.';

  @override
  String get economyTips => 'Consellos de aforro';

  @override
  String get economyTipsPrompt => 'Como podo aforrar cartos nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organizar por corredores do mercado.';

  @override
  String get recipeSuggestion => 'Suxestión de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Engadir todo á lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratuíta)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de Voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de Voz con IA';

  @override
  String get voiceCommandContent =>
      'Fala naturalmente para xestionar a túa lista!\n\nExemplos:\n• \'Engadir pan, queixo e xamón\'\n• \'Eliminar deterxente\'\n• \'Cambiar o tema a azul\'\n\nEsta é unha función exclusiva de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver Plans';

  @override
  String get itemsAddedSuccess => 'Elementos engadidos correctamente á lista!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar Comentarios';

  @override
  String get feedbackPrompt => 'Que che gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar Erro';

  @override
  String get feedbackTypeBugHint => 'Algo non funciona';

  @override
  String get feedbackTypeSuggestion => 'Suxestión';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mellorar a app';

  @override
  String get feedbackTypeTranslation => 'Problema de Tradución';

  @override
  String get feedbackTypeTranslationHint =>
      'Tradución incorrecta ou pouco natural';

  @override
  String get feedbackTypeFeature => 'Solicitude de Funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que che gustaría ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de comentario';

  @override
  String get feedbackHint => 'Describe os teus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar Comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => 'Grazas!';

  @override
  String get feedbackThankYouMessage =>
      'Recibíronse os teus comentarios e axúdannos a mellorar Lista Plus para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Tentar de novo';

  @override
  String get feedbackSettingsTitle => 'Enviar Comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reportar erros, suxerir melloras ou corrixir traducións';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receita';

  @override
  String get recipeCreated => 'Receita creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => 'Borrar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Seguro que queres borrar \"$recipeName\"? Esta acción non se pode desfacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucións';

  @override
  String get prepTime => 'Tempo de prep.';

  @override
  String get recipeSaved => 'Receita gardada!';

  @override
  String get noRecipesSaved => 'Non hai receitas gardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea a túa primeira receita personalizada tocando o botón de abaixo.';

  @override
  String get myRecipes => 'As miñas receitas';

  @override
  String get newRecipe => 'Nova receita';

  @override
  String get loadingRecipes => 'Cargando as túas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao cargar as receitas';

  @override
  String get addIngredient => 'Engadir ingrediente';

  @override
  String get saveRecipe => 'Gardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Descrición curta';

  @override
  String get prepTimeMinutes => 'Tempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por liña...';

  @override
  String get addPhoto => 'Engadir foto';

  @override
  String get imageUrlPlaceholder => 'Ou pega un URL de imaxe';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Suxeridas';

  @override
  String get searchRecipes => 'Buscar receitas...';

  @override
  String get filterByTag => 'Filtrer por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receita borrada';

  @override
  String get saveChanges => 'Gardar cambios';

  @override
  String get editRecipeTitle => 'Editar receita';

  @override
  String get newRecipeTitle => 'Nova receita';

  @override
  String get requiredField => 'Obrigatorio';

  @override
  String get chooseImageSource => 'Escoller a fonte da imaxe';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imaxe da receita';

  @override
  String get removeImage => 'Retirar imaxe';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'Non hai comidas planificadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para engadir unha comida';

  @override
  String get mealPlannerLoading => 'Cargando o plan de comidas...';

  @override
  String get mealPlannerError => 'Erro ao cargar o plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Engadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Retirar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida retirada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racións',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racións';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar unha receita';

  @override
  String get mealPlannerSearchRecipes => 'Buscar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Non se atoparon receitas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea primeiro receitas na pestana Receitas';

  @override
  String get mealPlannerSave => 'Engadir ao plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planificadas';
  }

  @override
  String get mealPlannerGenerateList => 'Xerar lista da compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Engadir todos os ingredientes das comidas planificadas esta semana á túa lista da compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Engadíronse $count ingrediente(s) á túa lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Non hai ingredientes que engadir. Planifica primeiro algunhas comidas con receitas.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primeiro unha lista da compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Almorzo';

  @override
  String get mealPlannerMealTypeLunch => 'Xantar';

  @override
  String get mealPlannerMealTypeDinner => 'Cea';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planificado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca calquera día para comezar a planificar as túas comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}

/// The translations for Galician, as used in Spain (`gl_ES`).
class AppLocalizationsGlEs extends AppLocalizationsGl {
  AppLocalizationsGlEs() : super('gl_ES');

  @override
  String get appTitle => 'Lista da Compra';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Gardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Engadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Rexenerar';

  @override
  String get copiedToClipboard => 'Copiado ao portapapeis';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Pechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Mellorar';

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
  String get purchaseError => 'Erro ao procesar a compra. Inténtao de novo.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Inténtao de novo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obrigatorio';

  @override
  String get addedFeedback => 'Engadido!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionados',
      one: '$count seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Xa mercada';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar mercadas';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir mediante código';

  @override
  String get importViaCode => 'Importar mediante código';

  @override
  String get listAssistant => 'Asistente de lista';

  @override
  String get globalAssistant => 'Asistente global';

  @override
  String get becomePremium => 'Fai Premium';

  @override
  String get manageSubscription => 'Xestionar subscrición';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar todos os artigos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce o código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      'Completar esta compra e arquivar a lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Lista arquivada correctamente!';

  @override
  String listAdded(String listName) {
    return '$listName engadida!';
  }

  @override
  String get buy => 'Mercar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count artigo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count artigo(s)?';
  }

  @override
  String get archiveList => 'Arquivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Xerar lista da compra';

  @override
  String get pantryEmpty => 'Despensa baleira';

  @override
  String get pantryEmptySubtitle => 'Engade produtos que queiras ter na casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artigo(s) necesita(n) mercarse';
  }

  @override
  String get noItemsToBuy => 'Non hai artigos que mercar';

  @override
  String get newPantryList => 'Compra de despensa';

  @override
  String get newListTitle => 'Nova lista da compra';

  @override
  String itemsWillBeAdded(int count) {
    return 'Engadiranse $count artigo(s)';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artigos';
  }

  @override
  String get noTracking => 'Sen seguimento';

  @override
  String get markAsPurchased => 'Marcar como mercada';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidade ideal';

  @override
  String get currentQuantity => 'Cantidade actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" da despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Axustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado do sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinámicas';

  @override
  String get dynamicColorsSubtitle =>
      'Usa cores baseadas no teu fondo de pantalla';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Orzamento mensual';

  @override
  String get budgetSubtitle => 'Controla o teu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridade';

  @override
  String get backupSubtitle => 'Exporta ou importa os teus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Copia de seguridade';

  @override
  String get backupPremiumDescription =>
      'A copia de seguridade e exportación é unha función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Gardar todas as listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega o JSON da copia de seguridade aquí...';

  @override
  String get backupExported => 'Copia de seguridade exportada!';

  @override
  String get budgetAppBar => 'Orzamento mensual';

  @override
  String get budgetPremiumLocked => 'O orzamento mensual global é premium';

  @override
  String get budgetUpgradePrompt => 'Mellora para desbloquear';

  @override
  String get noBudgetDefined => 'Sen orzamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer orzamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Orzamento mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Mercadas';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Engadir artigo';

  @override
  String get itemName => 'Nome do artigo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Prezo estimado';

  @override
  String get addItemPrice => 'Prezo estimado';

  @override
  String get editItem => 'Editar artigo';

  @override
  String get quantityFull => 'Cantidade';

  @override
  String get editItemPrice => 'Prezo estimado';

  @override
  String get addToPantry => 'Engadir á despensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Engadir \"$name\" á túa despensa?';
  }

  @override
  String get yes => 'Si';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en suxestións de compra';

  @override
  String get trackStockInactive => 'Non xera suxestión de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renomear lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'As miñas listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'Non hai listas arquivadas';

  @override
  String get noActiveLists => 'Non hai listas activas';

  @override
  String completedOn(String date) {
    return 'Completada o $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return 'Estás seguro de que queres borrar \"$name\"? Eliminaranse todos os artigos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" das túas listas? A lista orixinal non se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nova lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suxestións intelixentes, receitas e consellos personalizados co noso asistente de IA.';

  @override
  String get generalAssistant => 'Asistente xeral';

  @override
  String get clearHistory => 'Limpar historial';

  @override
  String get clearHistoryConfirm => 'Borrar todas as mensaxes desta sesión?';

  @override
  String get chatHint => 'Escribe a túa mensaxe...';

  @override
  String chatError(String error) {
    return 'Erro ao cargar o chat: $error';
  }

  @override
  String get listHelp => 'Como podo axudar coa túa lista?';

  @override
  String get generalHelp => 'Como podo axudar coas túas compras hoxe?';

  @override
  String get chatSubtitle =>
      'Pide suxestións de artigos, receitas ou consellos de aforro.';

  @override
  String get aiError =>
      'Sentímolo, produciuse un erro ao procesar a túa solicitude. Comproba a túa conexión ou inténtao de novo máis tarde.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funcións premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String loginError(String error) {
    return 'Erro de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Mellora para desbloquear';

  @override
  String get itemRemoved => 'Artigo eliminado';

  @override
  String get undo => 'Desfacer';

  @override
  String get emptyListTitle => 'A túa lista está baleira';

  @override
  String get emptyListSubtitle => 'Engade artigos para comezar';

  @override
  String get noListFoundTitle => 'Non se atoparon listas';

  @override
  String get noListFoundSubtitle => 'Crea a túa primeira lista para comezar';

  @override
  String get createFirstList => 'Crear primeira lista';

  @override
  String get listBudgetTitle => 'Orzamento da lista';

  @override
  String get budgetAmountLabel => 'Importe do orzamento';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartir listas';

  @override
  String get prefFullHistory => 'Historial completo';

  @override
  String get prefExportData => 'Exportar datos';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orzamento mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA persoal';

  @override
  String get prefUnlimitedPantry => 'Despensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefactos interactivos de IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Púrpura';

  @override
  String get themeRed => 'Vermello';

  @override
  String get themeOrange => 'Laranxa';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ámbar';

  @override
  String get themeTeal => 'Verde azulado';

  @override
  String get themeBrown => 'Marrón';

  @override
  String get catFruits => 'Froitas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadaría';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista da compra';

  @override
  String get monthlyBudgetTitle => 'Orzamento mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artigo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artigos necesitan mercarse',
      one: '$deficit artigo necesita mercarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carro';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funcións avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Orzamento mensual';

  @override
  String get budgetEditTitle => 'Orzamento mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona unha lista para ver o panel.';

  @override
  String get spendingAnalysis => 'Análise de gastos';

  @override
  String get noItemsToAnalyze => 'Non hai artigos na lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca os artigos como comprados para ver a análise.';

  @override
  String get totalSpending => 'Gasto total';

  @override
  String get spendingByCategory => 'Gastos por categoría';

  @override
  String get achievements => 'Logros';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO CON IA...';

  @override
  String get yesLabel => 'Si';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'A miña lista da compra';

  @override
  String get emptyListAddItems =>
      'A túa lista está baleira! Engade artigos primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada maxicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización intelixente';

  @override
  String get savings => 'Aforro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artigos como texto formatado';

  @override
  String get shareRealtime => 'Sincronización en tempo real con outras persoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt => 'Suxire receitas con artigos da miña lista.';

  @override
  String get economyTips => 'Consellos de aforro';

  @override
  String get economyTipsPrompt => 'Como podo aforrar cartos nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organiza por corredores do supermercado.';

  @override
  String get recipeSuggestion => 'Suxestión de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Engadir todo á lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Escrita por voz (Gratuíto)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      'Fala de forma natural para xestionar a túa lista!\n\nExemplos:\n• \'Engade pan, queixo e xamón\'\n• \'Elimina o deterxente\'\n• \'Cambia o tema a azul\'\n\nEsta é unha función exclusiva de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver plans';

  @override
  String get itemsAddedSuccess => 'Artigos engadidos á lista correctamente!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentario';

  @override
  String get feedbackPrompt => 'Que queres compartir?';

  @override
  String get feedbackTypeBug => 'Informar dun erro';

  @override
  String get feedbackTypeBugHint => 'Algo non funciona';

  @override
  String get feedbackTypeSuggestion => 'Suxestión';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mellorar a app';

  @override
  String get feedbackTypeTranslation => 'Problema de tradución';

  @override
  String get feedbackTypeTranslationHint => 'Tradución incorrecta ou estraña';

  @override
  String get feedbackTypeFeature => 'Solicitude de funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que che gustaría ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de comentario';

  @override
  String get feedbackHint => 'Describe o teu comentario en detalle...';

  @override
  String get feedbackSend => 'Enviar comentario';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => 'Grazas!';

  @override
  String get feedbackThankYouMessage =>
      'Recibíuse o teu comentario e axúdanos a mellorar Lista Plus para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de novo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentario';

  @override
  String get feedbackSettingsSubtitle =>
      'Informa de erros, suxire melloras ou arranxa traducións';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receita';

  @override
  String get recipeCreated => 'Receita creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => 'Borrar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Seguro que queres borrar \"$recipeName\"? Esta acción non se pode desfacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucións';

  @override
  String get prepTime => 'Tempo de prep.';

  @override
  String get recipeSaved => 'Receita gardada!';

  @override
  String get noRecipesSaved => 'Non hai receitas gardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea a túa primeira receita personalizada tocando o botón de abaixo.';

  @override
  String get myRecipes => 'As miñas receitas';

  @override
  String get newRecipe => 'Nova receita';

  @override
  String get loadingRecipes => 'Cargando as túas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao cargar as receitas';

  @override
  String get addIngredient => 'Engadir ingrediente';

  @override
  String get saveRecipe => 'Gardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Descrición curta';

  @override
  String get prepTimeMinutes => 'Tempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por liña...';

  @override
  String get addPhoto => 'Engadir foto';

  @override
  String get imageUrlPlaceholder => 'Ou pega un URL de imaxe';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Suxeridas';

  @override
  String get searchRecipes => 'Buscar receitas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receita borrada';

  @override
  String get saveChanges => 'Gardar cambios';

  @override
  String get editRecipeTitle => 'Editar receita';

  @override
  String get newRecipeTitle => 'Nova receita';

  @override
  String get requiredField => 'Obrigatorio';

  @override
  String get chooseImageSource => 'Escoller a fonte da imaxe';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imaxe da receita';

  @override
  String get removeImage => 'Retirar imaxe';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'Non hai comidas planificadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para engadir unha comida';

  @override
  String get mealPlannerLoading => 'Cargando o plan de comidas...';

  @override
  String get mealPlannerError => 'Erro ao cargar o plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Engadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Retirar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida retirada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racións',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racións';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar unha receita';

  @override
  String get mealPlannerSearchRecipes => 'Buscar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Non se atoparon receitas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea primeiro receitas na pestana Receitas';

  @override
  String get mealPlannerSave => 'Engadir ao plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planificadas';
  }

  @override
  String get mealPlannerGenerateList => 'Xerar lista da compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Engadir todos os ingredientes das comidas planificadas esta semana á túa lista da compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Engadíronse $count ingrediente(s) á túa lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Non hai ingredientes que engadir. Planifica primeiro algunhas comidas con receitas.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primeiro unha lista da compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Almorzo';

  @override
  String get mealPlannerMealTypeLunch => 'Xantar';

  @override
  String get mealPlannerMealTypeDinner => 'Cea';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planificado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca calquera día para comezar a planificar as túas comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
