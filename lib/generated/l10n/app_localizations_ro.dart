// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Listă de cumpărături';

  @override
  String get lists => 'Liste';

  @override
  String get pantry => 'Cămară';

  @override
  String get cancel => 'Anulează';

  @override
  String get save => 'Salvează';

  @override
  String get create => 'Creează';

  @override
  String get add => 'Adaugă';

  @override
  String get remove => 'Elimină';

  @override
  String get delete => 'Șterge';

  @override
  String get edit => 'Editează';

  @override
  String get copy => 'Copiază';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get regenerate => 'Regenerează';

  @override
  String get copiedToClipboard => 'Copiat în clipboard';

  @override
  String get confirm => 'Confirmă';

  @override
  String get close => 'Închide';

  @override
  String get import => 'Importă';

  @override
  String get rename => 'Redenumește';

  @override
  String get upgrade => 'Fă upgrade';

  @override
  String get clear => 'Curăță';

  @override
  String error(String message) {
    return 'Eroare: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Eroare: $message';
  }

  @override
  String get purchaseError =>
      'Eroare la procesarea achiziției. Încearcă din nou.';

  @override
  String get restoreError =>
      'Eroare la restaurarea achizițiilor. Încearcă din nou.';

  @override
  String get loading => 'Se încarcă...';

  @override
  String get fieldRequired => 'Câmp obligatoriu';

  @override
  String get addedFeedback => 'Adăugat!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selectate',
      few: '$count selectate',
      one: '$count selectat',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimat';

  @override
  String get alreadyPurchased => 'Deja achiziționat';

  @override
  String get clearList => 'Curăță lista';

  @override
  String get clearPurchased => 'Elimină cumpăratele';

  @override
  String get share => 'Partajează';

  @override
  String get shareViaCode => 'Partajează prin cod';

  @override
  String get importViaCode => 'Importă prin cod';

  @override
  String get listAssistant => 'Asistent listă';

  @override
  String get globalAssistant => 'Asistent global';

  @override
  String get becomePremium => 'Devino Premium';

  @override
  String get manageSubscription => 'Gestionează abonamentul';

  @override
  String get completePurchase => 'Finalizează achiziția';

  @override
  String get confirmClearList => 'Elimin toate articolele?';

  @override
  String get shareListTitle => 'Partajează lista';

  @override
  String get shareThisCode => 'Partajează acest cod:';

  @override
  String get validForLimitedTime => 'Valabil pentru timp limitat';

  @override
  String get importListTitle => 'Importă lista';

  @override
  String get enterCodeHint => 'Introdu codul';

  @override
  String get confirmArchiveTitle => 'Finalizează achiziția';

  @override
  String get confirmArchiveContent =>
      'Finalizez această achiziție și arhivez lista?';

  @override
  String get complete => 'Finalizează';

  @override
  String get listArchived => 'Lista arhivată cu succes!';

  @override
  String listAdded(String listName) {
    return '$listName adăugată!';
  }

  @override
  String get buy => 'Cumpără';

  @override
  String get unmark => 'Elimină marcarea';

  @override
  String confirmDeleteItems(int count) {
    return 'Elimin $count articol(oare)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmă';

  @override
  String confirmContent(int count) {
    return 'Elimin $count articol(oare)?';
  }

  @override
  String get archiveList => 'Arhivează lista';

  @override
  String get pantryAppBar => 'Cămară';

  @override
  String get generateShoppingList => 'Generează lista de cumpărături';

  @override
  String get pantryEmpty => 'Cămara goală';

  @override
  String get pantryEmptySubtitle =>
      'Adaugă produse pe care vrei să le ai acasă';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit articol(oare) trebuie cumpărat(e)';
  }

  @override
  String get noItemsToBuy => 'Niciun articol de cumpărat';

  @override
  String get newPantryList => 'Cumpărături din cămară';

  @override
  String get newListTitle => 'Listă nouă de cumpărături';

  @override
  String itemsWillBeAdded(int count) {
    return '$count articol(oare) vor fi adăugate';
  }

  @override
  String get listNameLabel => 'Numele listei';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creată cu $count articole';
  }

  @override
  String get noTracking => 'Fără urmărire';

  @override
  String get markAsPurchased => 'Marchează ca achiziționat';

  @override
  String editPantryItem(String name) {
    return 'Editează $name';
  }

  @override
  String get idealQuantity => 'Cantitate ideală';

  @override
  String get currentQuantity => 'Cantitate curentă';

  @override
  String get consumed => 'Consumat';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reaprovizionat la $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Elimin \"$name\" din cămară?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editează $name';
  }

  @override
  String get settingsAppBar => 'Setări';

  @override
  String get language => 'Limbă';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Implicit sistem';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Aspect';

  @override
  String get light => 'Luminos';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Întunecat';

  @override
  String get themeColor => 'Culoare temă';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Finanțe';

  @override
  String get monthlyBudgetNav => 'Buget lunar';

  @override
  String get budgetSubtitle => 'Urmărește-ți cheltuielile lunare';

  @override
  String get data => 'Date';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportă sau importă datele tale';

  @override
  String get about => 'Despre';

  @override
  String get version => 'Versiune';

  @override
  String get privacy => 'Confidențialitate';

  @override
  String get termsOfUse => 'Termeni de utilizare';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup-ul și exportul sunt o funcție premium';

  @override
  String get exportData => 'Exportă datele';

  @override
  String get exportDataSubtitle => 'Salvează toate listele ca JSON';

  @override
  String get importData => 'Importă datele';

  @override
  String get importDataSubtitle => 'Restaurează liste dintr-un JSON';

  @override
  String get importJsonTitle => 'Importă JSON';

  @override
  String get importJsonHint => 'Lipește JSON-ul de backup aici...';

  @override
  String get backupExported => 'Backup exportat!';

  @override
  String get budgetAppBar => 'Buget lunar';

  @override
  String get budgetPremiumLocked => 'Bugetul lunar global este premium';

  @override
  String get budgetUpgradePrompt => 'Fă upgrade pentru a debloca';

  @override
  String get noBudgetDefined => 'Niciun buget stabilit';

  @override
  String totalEstimated(String amount) {
    return 'Total estimat: $amount';
  }

  @override
  String get setBudgetButton => 'Setează buget';

  @override
  String get budgetLists => 'Liste';

  @override
  String get budgetValueLabel => 'Sumă';

  @override
  String get setBudgetTitle => 'Buget lunar';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Toate';

  @override
  String get filterPending => 'În așteptare';

  @override
  String get filterPurchased => 'Achiziționate';

  @override
  String get sortName => 'Nume';

  @override
  String get sortCategory => 'Categorie';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Adaugă articol';

  @override
  String get itemName => 'Nume articol';

  @override
  String get quantityShort => 'Cant.';

  @override
  String get unit => 'Unitate';

  @override
  String get category => 'Categorie';

  @override
  String get estimatedPrice => 'Preț estimat';

  @override
  String get addItemPrice => 'Preț estimat';

  @override
  String get editItem => 'Editează articol';

  @override
  String get quantityFull => 'Cantitate';

  @override
  String get editItemPrice => 'Preț estimat';

  @override
  String get addToPantry => 'Adaugă în cămară';

  @override
  String addToPantryPrompt(String name) {
    return 'Adaug \"$name\" în cămara ta?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Nume produs';

  @override
  String get idealQty => 'Cant. ideală';

  @override
  String get currentQty => 'Cant. curentă';

  @override
  String get trackStock => 'Urmărește stocul';

  @override
  String get trackStockActive => 'Apare în sugestiile de cumpărături';

  @override
  String get trackStockInactive => 'Nu generează sugestii de cumpărături';

  @override
  String get createListDialog => 'Creează listă';

  @override
  String get renameListDialog => 'Redenumește lista';

  @override
  String get listHistory => 'Istoric liste';

  @override
  String get myLists => 'Listele mele';

  @override
  String get viewActive => 'Vezi active';

  @override
  String get viewHistory => 'Vezi istoric';

  @override
  String get noArchivedLists => 'Nicio listă arhivată';

  @override
  String get noActiveLists => 'Nicio listă activă';

  @override
  String completedOn(String date) {
    return 'Finalizată pe $date';
  }

  @override
  String get sharedLabel => 'Partajată';

  @override
  String get restore => 'Restaurează';

  @override
  String get removeSharedTooltip => 'Elimină';

  @override
  String get deleteListTitle => 'Șterge lista';

  @override
  String deleteListContent(String name) {
    return 'Ești sigur că vrei să ștergi \"$name\"? Toate articolele vor fi eliminate.';
  }

  @override
  String get removeSharedListTitle => 'Elimină lista partajată';

  @override
  String removeSharedListContent(String name) {
    return 'Elimin \"$name\" din listele tale? Lista originală nu va fi afectată.';
  }

  @override
  String get createNewList => 'Creează o listă nouă';

  @override
  String get aiAssistant => 'Asistent AI';

  @override
  String get aiAssistantDescription =>
      'Primește sugestii inteligente, rețete și sfaturi personalizate cu asistentul nostru AI.';

  @override
  String get generalAssistant => 'Asistent general';

  @override
  String get clearHistory => 'Curăță istoricul';

  @override
  String get clearHistoryConfirm => 'Șterg toate mesajele din această sesiune?';

  @override
  String get chatHint => 'Scrie mesajul tău...';

  @override
  String chatError(String error) {
    return 'Eroare la încărcarea chatului: $error';
  }

  @override
  String get listHelp => 'Cum pot ajuta cu lista ta?';

  @override
  String get generalHelp => 'Cum te pot ajuta cu cumpărăturile tale astăzi?';

  @override
  String get chatSubtitle =>
      'Cere sugestii de articole, rețete sau sfaturi de economisire.';

  @override
  String get aiError =>
      'Ne pare rău, a apărut o eroare la procesarea cererii tale. Verifică conexiunea sau încearcă din nou mai târziu.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Autentifică-te pentru\na debloca funcțiile premium';

  @override
  String get signInGoogle => 'Conectează-te cu Google';

  @override
  String get signInApple => 'Conectează-te cu Apple';

  @override
  String get continueAsGuest => 'Continuă ca invitat';

  @override
  String loginError(String error) {
    return 'Eroare de autentificare: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Fă upgrade pentru a debloca';

  @override
  String get itemRemoved => 'Articol eliminat';

  @override
  String get undo => 'Anulează';

  @override
  String get emptyListTitle => 'Lista ta este goală';

  @override
  String get emptyListSubtitle => 'Adaugă articole pentru a începe';

  @override
  String get noListFoundTitle => 'Nicio listă găsită';

  @override
  String get noListFoundSubtitle => 'Creează prima ta listă pentru a începe';

  @override
  String get createFirstList => 'Creează prima listă';

  @override
  String get listBudgetTitle => 'Buget listă';

  @override
  String get budgetAmountLabel => 'Sumă buget';

  @override
  String get removeBudget => 'Elimină';

  @override
  String get prefUnlimitedLists => 'Liste nelimitate';

  @override
  String get prefSharing => 'Partajează liste';

  @override
  String get prefFullHistory => 'Istoric complet';

  @override
  String get prefExportData => 'Exportă date';

  @override
  String get prefCustomThemes => 'Teme personalizate';

  @override
  String get prefMonthlyBudget => 'Buget lunar global';

  @override
  String get prefAIAssistant => 'Asistent AI personal';

  @override
  String get prefUnlimitedPantry => 'Cămară nelimitată';

  @override
  String get prefInteractiveArtifacts => 'Artefacte AI interactive';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Albastru';

  @override
  String get themePurple => 'Mov';

  @override
  String get themeRed => 'Roșu';

  @override
  String get themeOrange => 'Portocaliu';

  @override
  String get themePink => 'Roz';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Chihlimbar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Maro';

  @override
  String get catFruits => 'Fructe';

  @override
  String get catCleaning => 'Curățenie';

  @override
  String get catBeverages => 'Băuturi';

  @override
  String get catBakery => 'Panificație';

  @override
  String get catOthers => 'Altele';

  @override
  String get unitPack => 'pachet';

  @override
  String get shareSubject => 'Listă de cumpărături';

  @override
  String get monthlyBudgetTitle => 'Buget lunar';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Șterge lista';

  @override
  String get pantryItemRemoved => 'Articol eliminat';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit de articole trebuie cumpărate',
      few: '$deficit articole trebuie cumpărate',
      one: '$deficit articol trebuie cumpărat',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total coș';

  @override
  String get restockLabel => 'Reaprovizionează';

  @override
  String get advancedFeatures => 'Funcții avansate';

  @override
  String get selectAll => 'Selectează tot';

  @override
  String get deselectAll => 'Deselectează tot';

  @override
  String get monthlyBudgetAppBar => 'Buget lunar';

  @override
  String get budgetEditTitle => 'Buget lunar';

  @override
  String get budgetDashboardTitle => 'Tablou de bord';

  @override
  String get selectListForDashboard =>
      'Selectează o listă pentru a vedea tabloul de bord.';

  @override
  String get spendingAnalysis => 'Analiză cheltuieli';

  @override
  String get noItemsToAnalyze => 'Niciun articol în listă de analizat.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marchează articolele ca achiziționate pentru a vedea analiza.';

  @override
  String get totalSpending => 'Total cheltuit';

  @override
  String get spendingByCategory => 'Cheltuieli pe categorii';

  @override
  String get achievements => 'Realizări';

  @override
  String get exportPdfExcel => 'Exportă PDF/Excel';

  @override
  String get exportPdf => 'Exportă ca PDF';

  @override
  String get exportExcel => 'Exportă ca Excel';

  @override
  String get organizingAi => 'SE ORGANIZEAZĂ CU AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Nu';

  @override
  String get shareListText => 'Lista mea de cumpărături';

  @override
  String get emptyListAddItems =>
      'Lista ta este goală! Adaugă articole mai întâi. ℹ️';

  @override
  String get listOrganizedMagic => 'Listă organizată magic pe categorii! ✨';

  @override
  String get shoppingMode => 'Mod cumpărături';

  @override
  String get smartOrganization => 'Organizare inteligentă';

  @override
  String get savings => 'Economii';

  @override
  String get shoppingModeHeader => 'MOD CUMPĂRĂTURI';

  @override
  String get shareAsText => 'Trimite articolele ca text formatat';

  @override
  String get shareRealtime => 'Sincronizare în timp real cu alte persoane';

  @override
  String get quickRecipe => 'Rețetă rapidă';

  @override
  String get quickRecipePrompt => 'Sugerează rețete cu articole din lista mea.';

  @override
  String get economyTips => 'Sfaturi de economisire';

  @override
  String get economyTipsPrompt =>
      'Cum pot economisi bani la această achiziție?';

  @override
  String get organizeAisles => 'Organizează pe culoare';

  @override
  String get organizeAislesPrompt => 'Organizează pe culoarele magazinului.';

  @override
  String get recipeSuggestion => 'Sugestie de rețetă';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credite rămase';
  }

  @override
  String get addAllToList => 'Adaugă tot în listă';

  @override
  String get organizeByAisles => 'Organizează pe culoare';

  @override
  String get voiceTranscriptionTooltip => 'Tastare vocală (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Comandă vocală AI (Premium)';

  @override
  String get voiceCommandTitle => 'Comandă vocală AI';

  @override
  String get voiceCommandContent =>
      'Vorbește natural pentru a-ți gestiona lista!\n\nExemple:\n• \'Adaugă pâine, brânză și șuncă\'\n• \'Elimină detergentul de rufe\'\n• \'Schimbă tema în albastru\'\n\nAceasta este o funcție exclusivă a Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Vezi planuri';

  @override
  String get itemsAddedSuccess => 'Articole adăugate cu succes în listă!';

  @override
  String get viewList => 'Vezi lista';

  @override
  String get feedbackTitle => 'Trimite feedback';

  @override
  String get feedbackPrompt => 'Ce doriți să împărtășiți?';

  @override
  String get feedbackTypeBug => 'Raportează o eroare';

  @override
  String get feedbackTypeBugHint => 'Ceva nu funcționează';

  @override
  String get feedbackTypeSuggestion => 'Sugestie';

  @override
  String get feedbackTypeSuggestionHint =>
      'Idee pentru îmbunătățirea aplicației';

  @override
  String get feedbackTypeTranslation => 'Problemă de traducere';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducere incorectă sau nefirească';

  @override
  String get feedbackTypeFeature => 'Solicitare funcționalitate';

  @override
  String get feedbackTypeFeatureHint =>
      'Funcționalitate pe care ați dori să o vedeți';

  @override
  String get feedbackTypeOther => 'Altul';

  @override
  String get feedbackTypeOtherHint => 'Alt tip de feedback';

  @override
  String get feedbackHint => 'Descrieți feedback-ul în detaliu...';

  @override
  String get feedbackSend => 'Trimite feedback';

  @override
  String get feedbackSending => 'Se trimite...';

  @override
  String get feedbackThankYou => 'Mulțumim!';

  @override
  String get feedbackThankYouMessage =>
      'Feedback-ul dumneavoastră a fost primit și ne ajută să îmbunătățim Lista Plus pentru toată lumea.';

  @override
  String get feedbackBack => 'Înapoi';

  @override
  String feedbackError(String error) {
    return 'Eroare la trimitere: $error';
  }

  @override
  String get feedbackRetry => 'Încearcă din nou';

  @override
  String get feedbackSettingsTitle => 'Trimite feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Raportează erori, sugerează îmbunătățiri sau corectează traduceri';

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
