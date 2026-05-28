// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Llista de la Compra';

  @override
  String get lists => 'Llistes';

  @override
  String get pantry => 'Rebost';

  @override
  String get cancel => 'Cancel·lar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Afegir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Suprimir';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiat al porta-retalls';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Tancar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Millorar';

  @override
  String get clear => 'Netejar';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError =>
      'Error en processar la compra. Torna-ho a provar.';

  @override
  String get restoreError =>
      'Error en restaurar les compres. Torna-ho a provar.';

  @override
  String get loading => 'Carregant...';

  @override
  String get fieldRequired => 'Camp obligatori';

  @override
  String get addedFeedback => 'Afegit!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionats',
      one: '$count seleccionat',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimat';

  @override
  String get alreadyPurchased => 'Ja comprat';

  @override
  String get clearList => 'Netejar llista';

  @override
  String get clearPurchased => 'Netejar comprats';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir via codi';

  @override
  String get importViaCode => 'Importar via codi';

  @override
  String get listAssistant => 'Assistent de llista';

  @override
  String get globalAssistant => 'Assistent global';

  @override
  String get becomePremium => 'Fes-te Premium';

  @override
  String get manageSubscription => 'Gestionar subscripció';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar tots els articles?';

  @override
  String get shareListTitle => 'Compartir llista';

  @override
  String get shareThisCode => 'Comparteix aquest codi:';

  @override
  String get validForLimitedTime => 'Vàlid per temps limitat';

  @override
  String get importListTitle => 'Importar llista';

  @override
  String get enterCodeHint => 'Introdueix el codi';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      'Completar aquesta compra i arxivar la llista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Llista arxivada correctament!';

  @override
  String listAdded(String listName) {
    return '$listName afegida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count article(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count article(s)?';
  }

  @override
  String get archiveList => 'Arxivar llista';

  @override
  String get pantryAppBar => 'Rebost';

  @override
  String get generateShoppingList => 'Generar llista de compra';

  @override
  String get pantryEmpty => 'Rebost buit';

  @override
  String get pantryEmptySubtitle =>
      'Afegeix productes que vulguis tenir a casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) necessiten comprar-se';
  }

  @override
  String get noItemsToBuy => 'No cal comprar cap article';

  @override
  String get newPantryList => 'Compra de rebost';

  @override
  String get newListTitle => 'Nova llista de compra';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) s\'afegiran';
  }

  @override
  String get listNameLabel => 'Nom de la llista';

  @override
  String listCreated(String name, int count) {
    return 'Llista \"$name\" creada amb $count articles';
  }

  @override
  String get noTracking => 'Sense seguiment';

  @override
  String get markAsPurchased => 'Marcar com a comprat';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantitat ideal';

  @override
  String get currentQuantity => 'Quantitat actual';

  @override
  String get consumed => 'Consumit';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastit a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" del rebost?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configuració';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Per defecte del sistema';

  @override
  String get chooseLanguage => 'Selecciona l\'idioma';

  @override
  String get searchLanguage => 'Cercar idioma...';

  @override
  String get appearance => 'Aparença';

  @override
  String get light => 'Clar';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Fosc';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colors dinàmics';

  @override
  String get dynamicColorsSubtitle =>
      'Utilitza colors basats en el teu fons de pantalla';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Pressupost mensual';

  @override
  String get budgetSubtitle => 'Controla les teves despeses mensuals';

  @override
  String get data => 'Dades';

  @override
  String get backupNav => 'Còpia de seguretat';

  @override
  String get backupSubtitle => 'Exporta o importa les teves dades';

  @override
  String get about => 'Quant a';

  @override
  String get version => 'Versió';

  @override
  String get privacy => 'Privacitat';

  @override
  String get termsOfUse => 'Termes d\'ús';

  @override
  String get backupTitle => 'Còpia de seguretat';

  @override
  String get backupPremiumDescription =>
      'La còpia de seguretat i l\'exportació són una funció Premium';

  @override
  String get exportData => 'Exportar dades';

  @override
  String get exportDataSubtitle => 'Guardar totes les llistes com a JSON';

  @override
  String get importData => 'Importar dades';

  @override
  String get importDataSubtitle => 'Restaurar llistes des d\'un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Enganxa el JSON de còpia de seguretat aquí...';

  @override
  String get backupExported => 'Còpia de seguretat exportada!';

  @override
  String get budgetAppBar => 'Pressupost mensual';

  @override
  String get budgetPremiumLocked => 'El pressupost mensual global és Premium';

  @override
  String get budgetUpgradePrompt => 'Millora per desbloquejar';

  @override
  String get noBudgetDefined => 'Cap pressupost definit';

  @override
  String totalEstimated(String amount) {
    return 'Total estimat: $amount';
  }

  @override
  String get setBudgetButton => 'Definir pressupost';

  @override
  String get budgetLists => 'Llistes';

  @override
  String get budgetValueLabel => 'Import';

  @override
  String get setBudgetTitle => 'Pressupost mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tots';

  @override
  String get filterPending => 'Pendents';

  @override
  String get filterPurchased => 'Comprats';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Afegir article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Quant';

  @override
  String get unit => 'Unitat';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preu estimat';

  @override
  String get addItemPrice => 'Preu estimat';

  @override
  String get editItem => 'Editar article';

  @override
  String get quantityFull => 'Quantitat';

  @override
  String get editItemPrice => 'Preu estimat';

  @override
  String get addToPantry => 'Afegir al rebost';

  @override
  String addToPantryPrompt(String name) {
    return 'Afegir \"$name\" al teu rebost?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nom del producte';

  @override
  String get idealQty => 'Quant ideal';

  @override
  String get currentQty => 'Quant actual';

  @override
  String get trackStock => 'Seguir estoc';

  @override
  String get trackStockActive => 'Apareix en suggeriments de compra';

  @override
  String get trackStockInactive => 'No genera suggeriment de compra';

  @override
  String get createListDialog => 'Crear llista';

  @override
  String get renameListDialog => 'Renombrar llista';

  @override
  String get listHistory => 'Historial de llistes';

  @override
  String get myLists => 'Les meves llistes';

  @override
  String get viewActive => 'Veure actives';

  @override
  String get viewHistory => 'Veure historial';

  @override
  String get noArchivedLists => 'No hi ha llistes arxivades';

  @override
  String get noActiveLists => 'No hi ha llistes actives';

  @override
  String completedOn(String date) {
    return 'Completada el $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Suprimir llista';

  @override
  String deleteListContent(String name) {
    return 'Estàs segur que vols suprimir \"$name\"? Tots els articles s\'eliminaran.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar llista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" de les teves llistes? La llista original no es veurà afectada.';
  }

  @override
  String get createNewList => 'Crear nova llista';

  @override
  String get aiAssistant => 'Assistent d\'IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suggeriments intel·ligents, receptes i consells personalitzats amb el nostre assistent d\'IA.';

  @override
  String get generalAssistant => 'Assistent general';

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
  String get clearHistory => 'Netejar historial';

  @override
  String get clearHistoryConfirm =>
      'Netejar tots els missatges d\'aquesta sessió?';

  @override
  String get chatHint => 'Escriu el teu missatge...';

  @override
  String chatError(String error) {
    return 'Error en carregar el xat: $error';
  }

  @override
  String get listHelp => 'Com puc ajudar-te amb la teva llista?';

  @override
  String get generalHelp => 'Com puc ajudar-te amb les teves compres avui?';

  @override
  String get chatSubtitle =>
      'Demana suggeriments d\'articles, receptes o consells d\'estalvi.';

  @override
  String get aiError =>
      'Ho sentim, s\'ha produït un error en processar la teva sol·licitud. Comprova la teva connexió o torna-ho a provar més tard.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sessió per desbloquejar\nfuncions Premium';

  @override
  String get signInGoogle => 'Iniciar sessió amb Google';

  @override
  String get signInApple => 'Iniciar sessió amb Apple';

  @override
  String get continueAsGuest => 'Continuar com a convidat';

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
    return 'Error d\'inici de sessió: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Millora per desbloquejar';

  @override
  String get itemRemoved => 'Article eliminat';

  @override
  String get undo => 'Desfer';

  @override
  String get emptyListTitle => 'La teva llista està buida';

  @override
  String get emptyListSubtitle => 'Afegeix articles per començar';

  @override
  String get noListFoundTitle => 'No s\'han trobat llistes';

  @override
  String get noListFoundSubtitle => 'Crea la teva primera llista per començar';

  @override
  String get createFirstList => 'Crear primera llista';

  @override
  String get listBudgetTitle => 'Pressupost de la llista';

  @override
  String get budgetAmountLabel => 'Import del pressupost';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Llistes il·limitades';

  @override
  String get prefSharing => 'Compartir llistes';

  @override
  String get prefFullHistory => 'Historial complet';

  @override
  String get prefExportData => 'Exportar dades';

  @override
  String get prefCustomThemes => 'Temes personalitzats';

  @override
  String get prefMonthlyBudget => 'Pressupost mensual global';

  @override
  String get prefAIAssistant => 'Assistent d\'IA personal';

  @override
  String get prefUnlimitedPantry => 'Rebost il·limitat';

  @override
  String get prefInteractiveArtifacts => 'Artefactes interactius d\'IA';

  @override
  String get themeGreen => 'Verd';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Porpra';

  @override
  String get themeRed => 'Vermell';

  @override
  String get themeOrange => 'Taronja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Xarxet';

  @override
  String get themeBrown => 'Marró';

  @override
  String get catFruits => 'Fruites';

  @override
  String get catCleaning => 'Neteja';

  @override
  String get catBeverages => 'Begudes';

  @override
  String get catBakery => 'Fleca';

  @override
  String get catOthers => 'Altres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Llista de la compra';

  @override
  String get monthlyBudgetTitle => 'Pressupost mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Suprimir llista';

  @override
  String get pantryItemRemoved => 'Article eliminat';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles necessiten comprar-se',
      one: '$deficit article necessita comprar-se',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carretó';

  @override
  String get restockLabel => 'Reabastir';

  @override
  String get advancedFeatures => 'Funcions avançades';

  @override
  String get selectAll => 'Seleccionar tot';

  @override
  String get deselectAll => 'Desseleccionar tot';

  @override
  String get monthlyBudgetAppBar => 'Pressupost mensual';

  @override
  String get budgetEditTitle => 'Pressupost mensual';

  @override
  String get budgetDashboardTitle => 'Tauler';

  @override
  String get selectListForDashboard =>
      'Selecciona una llista per veure el tauler.';

  @override
  String get spendingAnalysis => 'Anàlisi de despeses';

  @override
  String get noItemsToAnalyze => 'No hi ha articles a la llista per analitzar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca els articles com a comprats per veure l\'anàlisi.';

  @override
  String get totalSpending => 'Despesa total';

  @override
  String get spendingByCategory => 'Despeses per categoria';

  @override
  String get achievements => 'Assoliments';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar com a PDF';

  @override
  String get exportExcel => 'Exportar com a Excel';

  @override
  String get organizingAi => 'ORGANITZANT AMB IA...';

  @override
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'La meva llista de la compra';

  @override
  String get emptyListAddItems =>
      'La teva llista és buida! Afegeix articles primer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Llista organitzada màgicament per categories! ✨';

  @override
  String get shoppingMode => 'Mode compra';

  @override
  String get smartOrganization => 'Organització intel·ligent';

  @override
  String get savings => 'Estalvis';

  @override
  String get shoppingModeHeader => 'MODE COMPRA';

  @override
  String get shareAsText => 'Enviar articles com a text formatat';

  @override
  String get shareRealtime =>
      'Sincronització en temps real amb altres persones';

  @override
  String get quickRecipe => 'Recepta ràpida';

  @override
  String get quickRecipePrompt =>
      'Suggereix receptes amb articles de la meva llista.';

  @override
  String get economyTips => 'Consells d\'estalvi';

  @override
  String get economyTipsPrompt => 'Com puc estalviar diners en aquesta compra?';

  @override
  String get organizeAisles => 'Organitzar per passadissos';

  @override
  String get organizeAislesPrompt => 'Organitza per passadissos del mercat.';

  @override
  String get recipeSuggestion => 'Suggeriment de recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crèdits restants';
  }

  @override
  String get addAllToList => 'Afegir tot a la llista';

  @override
  String get organizeByAisles => 'Organitzar per passadissos';

  @override
  String get voiceTranscriptionTooltip => 'Escriptura per veu (Gratuït)';

  @override
  String get aiVoiceCommandTooltip => 'Comandament de veu IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comandament de veu IA';

  @override
  String get voiceCommandContent =>
      'Parla de manera natural per gestionar la teva llista!\n\nExemples:\n• \'Afegeix pa, formatge i pernil\'\n• \'Elimina el detergent\'\n• \'Canvia el tema a blau\'\n\nAquesta és una funció exclusiva de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Veure plans';

  @override
  String get itemsAddedSuccess => 'Articles afegits correctament a la llista!';

  @override
  String get viewList => 'Veure llista';

  @override
  String get feedbackTitle => 'Enviar comentaris';

  @override
  String get feedbackPrompt => 'Què voleu compartir?';

  @override
  String get feedbackTypeBug => 'Informar d\'un error';

  @override
  String get feedbackTypeBugHint => 'Alguna cosa no funciona';

  @override
  String get feedbackTypeSuggestion => 'Suggeriment';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per millorar l\'aplicació';

  @override
  String get feedbackTypeTranslation => 'Problema de traducció';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducció incorrecta o poc natural';

  @override
  String get feedbackTypeFeature => 'Sol·licitud de funció';

  @override
  String get feedbackTypeFeatureHint => 'Funció que us agradaria veure';

  @override
  String get feedbackTypeOther => 'Altres';

  @override
  String get feedbackTypeOtherHint => 'Altres tipus de comentaris';

  @override
  String get feedbackHint => 'Descriviu els vostres comentaris en detall...';

  @override
  String get feedbackSend => 'Enviar comentaris';

  @override
  String get feedbackSending => 'Enviant...';

  @override
  String get feedbackThankYou => 'Gràcies!';

  @override
  String get feedbackThankYouMessage =>
      'Els vostres comentaris s\'han rebut i ens ajuden a millorar Lista Plus per a tothom.';

  @override
  String get feedbackBack => 'Enrere';

  @override
  String feedbackError(String error) {
    return 'Error en enviar: $error';
  }

  @override
  String get feedbackRetry => 'Torna-ho a provar';

  @override
  String get feedbackSettingsTitle => 'Enviar comentaris';

  @override
  String get feedbackSettingsSubtitle =>
      'Informeu d\'errors, suggeriu millores o corregiu traduccions';

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
  String get openMenu => 'Obrir el menú';

  @override
  String get viewRecipe => 'Veure recepta';

  @override
  String get recipeCreated => 'Recepta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Eliminar';

  @override
  String get deleteRecipeConfirm => 'Eliminar aquesta recepta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Estàs segur que vols eliminar \"$recipeName\"? Aquesta acció no es pot desfer.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instruccions';

  @override
  String get prepTime => 'Temps de preparació';

  @override
  String get recipeSaved => 'Recepta guardada!';

  @override
  String get noRecipesSaved => 'No hi ha receptes guardades';

  @override
  String get noRecipesSavedHint =>
      'Crea la teva primera recepta personalitzada tocant el botó de sota.';

  @override
  String get myRecipes => 'Les meves receptes';

  @override
  String get newRecipe => 'Nova recepta';

  @override
  String get loadingRecipes => 'Carregant les teves receptes...';

  @override
  String get errorLoadingRecipes => 'Error en carregar les receptes';

  @override
  String get addIngredient => 'Afegir ingredient';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nom de la recepta';

  @override
  String get shortDescription => 'Descripció curta';

  @override
  String get prepTimeMinutes => 'Temps de preparació (minuts)';

  @override
  String get instructionsHint => 'Escriu un pas per línia...';

  @override
  String get addPhoto => 'Afegir foto';

  @override
  String get imageUrlPlaceholder => 'O enganxa l\'URL d\'una imatge';

  @override
  String get tags => 'Etiquetes';

  @override
  String get recipeTags => 'Etiquetes de la recepta';

  @override
  String get suggestedTags => 'Suggerits';

  @override
  String get searchRecipes => 'Cercar receptes...';

  @override
  String get filterByTag => 'Filtrar per tiquet';

  @override
  String get allTags => 'Tots';

  @override
  String get recipeDeleted => 'Recepta eliminada';

  @override
  String get saveChanges => 'Guardar els canvis';

  @override
  String get editRecipeTitle => 'Editar recepta';

  @override
  String get newRecipeTitle => 'Nova recepta';

  @override
  String get requiredField => 'Obligatori';

  @override
  String get chooseImageSource => 'Tria la font de la imatge';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Introdueix l\'URL';

  @override
  String get recipeImage => 'Imatge de la recepta';

  @override
  String get removeImage => 'Eliminar imatge';

  @override
  String get mealPlannerTitle => 'Planificador d\'àpats';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista setmanal';

  @override
  String get mealPlannerNoMeals => 'No hi ha àpats planificats';

  @override
  String get mealPlannerNoMealsHint => 'Toca un dia per afegir un àpat';

  @override
  String get mealPlannerLoading => 'Carregant el pla d\'àpats...';

  @override
  String get mealPlannerError => 'Error en carregar el pla d\'àpats';

  @override
  String get mealPlannerAddMeal => 'Afegir àpat';

  @override
  String get mealPlannerEditMeal => 'Editar àpat';

  @override
  String get mealPlannerDeleteMeal => 'Eliminar àpat';

  @override
  String get mealPlannerMealDeleted => 'Àpat eliminat';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racions',
      one: '$count ració',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racions';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Selecciona una recepta';

  @override
  String get mealPlannerSearchRecipes => 'Cercar receptes...';

  @override
  String get mealPlannerNoRecipesFound => 'No s\'han trobat receptes';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea receptes a la pestanya de Receptes primer';

  @override
  String get mealPlannerSave => 'Afegir al pla';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total àpats planificats';
  }

  @override
  String get mealPlannerGenerateList => 'Generar llista de compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Vols afegir tots els ingredients dels àpats planificats per a aquesta setmana a la teva llista de compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'S\'han afegit $count ingredient(s) a la teva llista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hi ha ingredients per afegir. Planifica primer alguns àpats amb receptes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primer una llista de compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Esmorzar';

  @override
  String get mealPlannerMealTypeLunch => 'Dinar';

  @override
  String get mealPlannerMealTypeDinner => 'Sopar';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'No hi ha res planificat per a aquesta setmana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca qualsevol dia per començar a planificar els teus àpats!';

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
