// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romansh (`rm`).
class AppLocalizationsRm extends AppLocalizations {
  AppLocalizationsRm([String locale = 'rm']) : super(locale);

  @override
  String get appTitle => 'Lista da cumpras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get cancel => 'Interrumper';

  @override
  String get save => 'Memorar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Agiuntar';

  @override
  String get remove => 'Allontanar';

  @override
  String get delete => 'Stizzar';

  @override
  String get edit => 'Modifitgar';

  @override
  String get copy => 'Copiar';

  @override
  String get retry => 'Empruvar puspè';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copià en la clipboard';

  @override
  String get confirm => 'Confermar';

  @override
  String get close => 'Serrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renumnar';

  @override
  String get upgrade => 'Actualisar';

  @override
  String get clear => 'Sgiar';

  @override
  String error(String message) {
    return 'Errur: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errur: $message';
  }

  @override
  String get purchaseError =>
      'Errur durant il processament da la cumprà. Empruvà anc ina giada.';

  @override
  String get restoreError =>
      'Errur restituind las cumpras. Empruvà anc ina giada.';

  @override
  String get loading => 'Chargiar...';

  @override
  String get fieldRequired => 'Champ obligatoric';

  @override
  String get addedFeedback => 'Agiuntà!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecziunads',
      one: '$count selecziunà',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Stimà';

  @override
  String get alreadyPurchased => 'Già cumprà';

  @override
  String get clearList => 'Sgiar la lista';

  @override
  String get clearPurchased => 'Sgiar cumprà';

  @override
  String get share => 'Cundivider';

  @override
  String get shareViaCode => 'Cundivider cun in codesch';

  @override
  String get importViaCode => 'Importar cun in codesch';

  @override
  String get listAssistant => 'Assistant per la lista';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Daventar Premium';

  @override
  String get manageSubscription => 'Administrar l\'abilitaziun';

  @override
  String get completePurchase => 'Complettar la cumprà';

  @override
  String get confirmClearList => 'Allontanar tut ils objects?';

  @override
  String get shareListTitle => 'Cundivider la lista';

  @override
  String get shareThisCode => 'Cundivider quest codesch:';

  @override
  String get validForLimitedTime => 'Valid per in temp limità';

  @override
  String get importListTitle => 'Importar la lista';

  @override
  String get enterCodeHint => 'Endatar il codesch';

  @override
  String get confirmArchiveTitle => 'Complettar la cumprà';

  @override
  String get confirmArchiveContent =>
      'Complettar questa cumprà ed archivar la lista?';

  @override
  String get complete => 'Complettar';

  @override
  String get listArchived => 'La lista è vegnida archivada cun success!';

  @override
  String listAdded(String listName) {
    return '$listName agiuntà!';
  }

  @override
  String get buy => 'Cumprar';

  @override
  String get unmark => 'De-marcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Allontanar $count object(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confermar';

  @override
  String confirmContent(int count) {
    return 'Allontanar $count object(s)?';
  }

  @override
  String get archiveList => 'Archivar la lista';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Generar la lista da cumpras';

  @override
  String get pantryEmpty => 'Dispensa vita';

  @override
  String get pantryEmptySubtitle =>
      'Agiuntar products che Vus volais tegnair a chasa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit object(s) ston vegnir cumprà';
  }

  @override
  String get noItemsToBuy => 'Nagins objects ston vegnir cumprà';

  @override
  String get newPantryList => 'Cumprar da la dispensa';

  @override
  String get newListTitle => 'Nova lista da cumpras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count object(s) vegnan agiuntads';
  }

  @override
  String get listNameLabel => 'Num da la lista';

  @override
  String listCreated(String name, int count) {
    return 'La lista \"$name\" è vegnida creada cun $count objects';
  }

  @override
  String get noTracking => 'Nagina monitoraziun';

  @override
  String get markAsPurchased => 'Marcar sco cumprà';

  @override
  String editPantryItem(String name) {
    return 'Modifitgar $name';
  }

  @override
  String get idealQuantity => 'Quantitad ideal';

  @override
  String get currentQuantity => 'Quantitad actuala';

  @override
  String get consumed => 'Consumà';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restockà a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Allontanar \"$name\" da la dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifitgar $name';
  }

  @override
  String get settingsAppBar => 'Configuraziuns';

  @override
  String get language => 'Lingua';

  @override
  String get languagePortuguese => 'Portugais (Brasil)';

  @override
  String get languageEnglish => 'Englais';

  @override
  String get languageSystem => 'Predefiniziun dal sistem';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Aspetg';

  @override
  String get light => 'Clèr';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Stgir';

  @override
  String get themeColor => 'Culur dal tema';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Budget mensil';

  @override
  String get budgetSubtitle => 'Moniturschar Vossas expensas mensilas';

  @override
  String get data => 'Datas';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar u importar Vossas datas';

  @override
  String get about => 'Davart';

  @override
  String get version => 'Versiun';

  @override
  String get privacy => 'Privatesa';

  @override
  String get termsOfUse => 'Cundiziuns d\'utilisaziun';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup ed export è ina funcziun Premium';

  @override
  String get exportData => 'Exportar datas';

  @override
  String get exportDataSubtitle => 'Memorar tut las listas sco JSON';

  @override
  String get importData => 'Importar datas';

  @override
  String get importDataSubtitle => 'Restituir listas d\'in JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Tippar il JSON da backup qua...';

  @override
  String get backupExported => 'Backup exportà!';

  @override
  String get budgetAppBar => 'Budget mensil';

  @override
  String get budgetPremiumLocked => 'Il budget mensil global è Premium';

  @override
  String get budgetUpgradePrompt => 'Actualisar per debloccar';

  @override
  String get noBudgetDefined => 'Nagins budget fixà';

  @override
  String totalEstimated(String amount) {
    return 'Total stimà: $amount';
  }

  @override
  String get setBudgetButton => 'Fixar il budget';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Import';

  @override
  String get setBudgetTitle => 'Budget mensil';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tut';

  @override
  String get filterPending => 'Spetga';

  @override
  String get filterPurchased => 'Cumprà';

  @override
  String get sortName => 'Num';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Agiuntar object';

  @override
  String get itemName => 'Num da l\'object';

  @override
  String get quantityShort => 'Qta';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Pretsch stimà';

  @override
  String get addItemPrice => 'Pretsch stimà';

  @override
  String get editItem => 'Modifitgar object';

  @override
  String get quantityFull => 'Quantitad';

  @override
  String get editItemPrice => 'Pretsch stimà';

  @override
  String get addToPantry => 'Agiuntar a la dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Agiuntar \"$name\" a Vossa dispensa?';
  }

  @override
  String get yes => 'Gea';

  @override
  String get productName => 'Num dal product';

  @override
  String get idealQty => 'Quantitad ideal';

  @override
  String get currentQty => 'Quantitad actuala';

  @override
  String get trackStock => 'Moniturschar il stock';

  @override
  String get trackStockActive => 'Apparescha en suggeriuns da cumpras';

  @override
  String get trackStockInactive => 'Na genera nagina suggestiun da cumpras';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renumnar la lista';

  @override
  String get listHistory => 'Istorgia da las listas';

  @override
  String get myLists => 'Mi listas';

  @override
  String get viewActive => 'Mussar activ';

  @override
  String get viewHistory => 'Mussar istorgia';

  @override
  String get noArchivedLists => 'Naginas listas archivadas';

  @override
  String get noActiveLists => 'Naginas listas activas';

  @override
  String completedOn(String date) {
    return 'Complettà ils $date';
  }

  @override
  String get sharedLabel => 'Cundivis';

  @override
  String get restore => 'Restituir';

  @override
  String get removeSharedTooltip => 'Allontanar';

  @override
  String get deleteListTitle => 'Stizzar la lista';

  @override
  String deleteListContent(String name) {
    return 'Es Vus segirs che Vus vulais stizzar \"$name\"? Tut ils objects vegnan allontanads.';
  }

  @override
  String get removeSharedListTitle => 'Allontanar la lista cundivisa';

  @override
  String removeSharedListContent(String name) {
    return 'Allontanar \"$name\" da Vossas listas? La lista originala na vegn betg affectada.';
  }

  @override
  String get createNewList => 'Crear ina nova lista';

  @override
  String get aiAssistant => 'Assistant AI';

  @override
  String get aiAssistantDescription =>
      'Survegnir suggeriuns intelligentas, recipes e cussegls persunalisads cun nos assistant AI.';

  @override
  String get generalAssistant => 'Assistant general';

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
  String get clearHistory => 'Sgiar l\'istorgia';

  @override
  String get clearHistoryConfirm => 'Sgiar tut ils messadis en questa sesiun?';

  @override
  String get chatHint => 'Tippar Voss messadi...';

  @override
  String chatError(String error) {
    return 'Errur chargiand il chat: $error';
  }

  @override
  String get listHelp => 'Co poss jau gidar cun Vossa lista?';

  @override
  String get generalHelp => 'Co poss jau gidar cun Vossas cumpras oz?';

  @override
  String get chatSubtitle =>
      'Dumandar per suggeriuns d\'objects, recipes u cussegls da spargn.';

  @override
  String get aiError =>
      'Perstgisai, in errur è capità processond Vossa dumonda. Controllai Vossa connexiun u empruvai pli tard.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Annunzia per debloccar\nfuncziuns Premium';

  @override
  String get signInGoogle => 'Annunzia cun Google';

  @override
  String get signInApple => 'Annunzia cun Apple';

  @override
  String get continueAsGuest => 'Cuntinuar sco convidà';

  @override
  String loginError(String error) {
    return 'Errur da l\'annunzia: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Actualisar per debloccar';

  @override
  String get itemRemoved => 'Object allontanà';

  @override
  String get undo => 'Revocar';

  @override
  String get emptyListTitle => 'Vossa lista è vita';

  @override
  String get emptyListSubtitle => 'Agiuntar objects per cumenzar';

  @override
  String get noListFoundTitle => 'Naginas listas chattadas';

  @override
  String get noListFoundSubtitle => 'Crear Vossa emprima lista per cumenzar';

  @override
  String get createFirstList => 'Crear l\'emprima lista';

  @override
  String get listBudgetTitle => 'Budget da la lista';

  @override
  String get budgetAmountLabel => 'Import dal budget';

  @override
  String get removeBudget => 'Allontanar';

  @override
  String get prefUnlimitedLists => 'Listas illimità';

  @override
  String get prefSharing => 'Cundivider listas';

  @override
  String get prefFullHistory => 'Istorgia cumpletta';

  @override
  String get prefExportData => 'Exportar datas';

  @override
  String get prefCustomThemes => 'Temas persunalisads';

  @override
  String get prefMonthlyBudget => 'Budget mensil global';

  @override
  String get prefAIAssistant => 'Assistant AI persunalisà';

  @override
  String get prefUnlimitedPantry => 'Dispensa illimitada';

  @override
  String get prefInteractiveArtifacts => 'Artifacts AI interactivs';

  @override
  String get themeGreen => 'Verd';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Cotschen';

  @override
  String get themeOrange => 'Oransch';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Blau-verd';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Fractas';

  @override
  String get catCleaning => 'Netegia';

  @override
  String get catBeverages => 'Bervandas';

  @override
  String get catBakery => 'Pastizaria';

  @override
  String get catOthers => 'Auters';

  @override
  String get unitPack => 'pachet';

  @override
  String get shareSubject => 'Lista da cumpras';

  @override
  String get monthlyBudgetTitle => 'Budget mensil';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Stizzar la lista';

  @override
  String get pantryItemRemoved => 'Object allontanà';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit objects ston vegnir cumprà',
      one: '$deficit object sto vegnir cumprà',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total dal chassis';

  @override
  String get restockLabel => 'Restockar';

  @override
  String get advancedFeatures => 'Funcziuns avanzadas';

  @override
  String get selectAll => 'Tut selegier';

  @override
  String get deselectAll => 'Tut desselegier';

  @override
  String get monthlyBudgetAppBar => 'Budget mensil';

  @override
  String get budgetEditTitle => 'Budget mensil';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Selegi ina lista per mussar il dashboard.';

  @override
  String get spendingAnalysis => 'Analisa da las expensas';

  @override
  String get noItemsToAnalyze => 'Nagins objects en la lista per analisar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marcar objects sco cumprà per ver l\'analisa.';

  @override
  String get totalSpending => 'Total spender';

  @override
  String get spendingByCategory => 'Expensas per categoria';

  @override
  String get achievements => 'Reussitas';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar sco PDF';

  @override
  String get exportExcel => 'Exportar sco Excel';

  @override
  String get organizingAi => 'ORGANISAR CUN AI...';

  @override
  String get yesLabel => 'Gea';

  @override
  String get noLabel => 'Na';

  @override
  String get shareListText => 'Ma lista da cumpras';

  @override
  String get emptyListAddItems =>
      'Vossa lista è vita! Agiuntar objects l\'emprim.';

  @override
  String get listOrganizedMagic =>
      'La lista è vegnida organisada magicamain per categorias!';

  @override
  String get shoppingMode => 'Modus da cumpras';

  @override
  String get smartOrganization => 'Organisaziun intelligenta';

  @override
  String get savings => 'Spargns';

  @override
  String get shoppingModeHeader => 'MODUS DA CUMPRAS';

  @override
  String get shareAsText => 'Trametter objects sco text formatà';

  @override
  String get shareRealtime => 'Sincronisaziun en temp real cun autras persunas';

  @override
  String get quickRecipe => 'Recipe spert';

  @override
  String get quickRecipePrompt => 'Suggerir recipes cun objects da ma lista.';

  @override
  String get economyTips => 'Cussegls da spargn';

  @override
  String get economyTipsPrompt =>
      'Co poss jau spargnà daners sin questa cumprà?';

  @override
  String get organizeAisles => 'Organisar per curridors';

  @override
  String get organizeAislesPrompt => 'Organisar per curridors dal martgà.';

  @override
  String get recipeSuggestion => 'Suggestiun da recipe';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits restants';
  }

  @override
  String get addAllToList => 'Tut agiuntar a la lista';

  @override
  String get organizeByAisles => 'Organisar per curridors';

  @override
  String get voiceTranscriptionTooltip => 'Scriver cun la vusch (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Cumond vocal AI (Premium)';

  @override
  String get voiceCommandTitle => 'Cumond vocal AI';

  @override
  String get voiceCommandContent =>
      'Discurri natiralmain per administrar Vossa lista!\n\nExempels:\n• \'Agiuntar paun, chaschiel e charmella\'\n• \'Allontanar detergent\'\n• \'Midar il tema en blau\'\n\nQuai è ina funcziun exclusiva da Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Mussar plans';

  @override
  String get itemsAddedSuccess => 'Objects agiuntads cun success a la lista!';

  @override
  String get viewList => 'Mussar la lista';

  @override
  String get feedbackTitle => 'Trametter feedback';

  @override
  String get feedbackPrompt => 'Tge vuls ti cundivider?';

  @override
  String get feedbackTypeBug => 'Annunziar in error';

  @override
  String get feedbackTypeBugHint => 'Inzatge n\'è betg funcziunant';

  @override
  String get feedbackTypeSuggestion => 'Suggestiun';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per meglierar l\'app';

  @override
  String get feedbackTypeTranslation => 'Problem da translaziun';

  @override
  String get feedbackTypeTranslationHint =>
      'Translaziun nuncorrecta u maladretga';

  @override
  String get feedbackTypeFeature => 'Dumonda da funcziun';

  @override
  String get feedbackTypeFeatureHint => 'Funcziun che ti vuls veser';

  @override
  String get feedbackTypeOther => 'Auter';

  @override
  String get feedbackTypeOtherHint => 'Auter tip da feedback';

  @override
  String get feedbackHint => 'Descriver tes feedback detagliadamain...';

  @override
  String get feedbackSend => 'Trametter feedback';

  @override
  String get feedbackSending => 'Tramettend...';

  @override
  String get feedbackThankYou => 'Grazia fitg!';

  @override
  String get feedbackThankYouMessage =>
      'Tia feedback è vegnida retschavida e gida a meglierar Lista Plus per tuts.';

  @override
  String get feedbackBack => 'Enavos';

  @override
  String feedbackError(String error) {
    return 'Errur tramettend: $error';
  }

  @override
  String get feedbackRetry => 'Empruvar puspè';

  @override
  String get feedbackSettingsTitle => 'Trametter feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Annunziar errors, suggerir meglieraziuns u curregir translaziuns';

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
  String get openMenu => 'Open menu';

  @override
  String get viewRecipe => 'View Recipe';

  @override
  String get recipeCreated => 'Recipe created!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Delete';

  @override
  String get deleteRecipeConfirm => 'Delete this recipe?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Are you sure you want to delete \"$recipeName\"? This action cannot be undone.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Prep time';

  @override
  String get recipeSaved => 'Recipe saved!';

  @override
  String get noRecipesSaved => 'No recipes saved';

  @override
  String get noRecipesSavedHint =>
      'Create your first custom recipe by tapping the button below.';

  @override
  String get myRecipes => 'My Recipes';

  @override
  String get newRecipe => 'New Recipe';

  @override
  String get loadingRecipes => 'Loading your recipes...';

  @override
  String get errorLoadingRecipes => 'Error loading recipes';

  @override
  String get addIngredient => 'Add ingredient';

  @override
  String get saveRecipe => 'Save';

  @override
  String get recipeName => 'Recipe name';

  @override
  String get shortDescription => 'Short description';

  @override
  String get prepTimeMinutes => 'Prep time (minutes)';

  @override
  String get instructionsHint => 'Type one step per line...';

  @override
  String get addPhoto => 'Add photo';

  @override
  String get imageUrlPlaceholder => 'Or paste an image URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Recipe tags';

  @override
  String get suggestedTags => 'Suggested';

  @override
  String get searchRecipes => 'Search recipes...';

  @override
  String get filterByTag => 'Filter by tag';

  @override
  String get allTags => 'All';

  @override
  String get recipeDeleted => 'Recipe deleted';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get editRecipeTitle => 'Edit Recipe';

  @override
  String get newRecipeTitle => 'New Recipe';

  @override
  String get requiredField => 'Required';

  @override
  String get chooseImageSource => 'Choose image source';

  @override
  String get gallery => 'Gallery';

  @override
  String get enterUrl => 'Enter URL';

  @override
  String get recipeImage => 'Recipe image';

  @override
  String get removeImage => 'Remove image';

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
