// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Lista e Blerjeve';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Qilar';

  @override
  String get cancel => 'Anulo';

  @override
  String get save => 'Ruaj';

  @override
  String get create => 'Krijo';

  @override
  String get add => 'Shto';

  @override
  String get remove => 'Hiq';

  @override
  String get delete => 'Fshi';

  @override
  String get edit => 'Ndrysho';

  @override
  String get copy => 'Kopjo';

  @override
  String get retry => 'Provo përsëri';

  @override
  String get regenerate => 'Rigjenero';

  @override
  String get copiedToClipboard => 'Kopjuar në clipboard';

  @override
  String get confirm => 'Konfirmo';

  @override
  String get close => 'Mbyll';

  @override
  String get import => 'Importo';

  @override
  String get rename => 'Riemërto';

  @override
  String get upgrade => 'Përmirëso';

  @override
  String get clear => 'Pastro';

  @override
  String error(String message) {
    return 'Gabim: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Gabim: $message';
  }

  @override
  String get purchaseError => 'Gabim në përpunimin e blerjes. Provo përsëri.';

  @override
  String get restoreError => 'Gabim në restaurimin e blerjeve. Provo përsëri.';

  @override
  String get loading => 'Duke u ngarkuar...';

  @override
  String get fieldRequired => 'Fushë e detyrueshme';

  @override
  String get addedFeedback => 'U shtua!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count të zgjedhura',
      one: '$count i zgjedhur',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Vlerësuar';

  @override
  String get alreadyPurchased => 'Tashmë të blera';

  @override
  String get clearList => 'Pastro listën';

  @override
  String get clearPurchased => 'Pastro të blerat';

  @override
  String get share => 'Ndaj';

  @override
  String get shareViaCode => 'Ndaj përmes kodit';

  @override
  String get importViaCode => 'Importo përmes kodit';

  @override
  String get listAssistant => 'Asistent i listës';

  @override
  String get globalAssistant => 'Asistent global';

  @override
  String get becomePremium => 'Bëhu Premium';

  @override
  String get manageSubscription => 'Menaxho abonimin';

  @override
  String get completePurchase => 'Përfundo blerjen';

  @override
  String get confirmClearList => 'Hiq të gjithë artikujt?';

  @override
  String get shareListTitle => 'Ndaj Listën';

  @override
  String get shareThisCode => 'Ndaj këtë kod:';

  @override
  String get validForLimitedTime => 'Vlefshëm për kohë të kufizuar';

  @override
  String get importListTitle => 'Importo Listën';

  @override
  String get enterCodeHint => 'Fut kodin';

  @override
  String get confirmArchiveTitle => 'Përfundo Blerjen';

  @override
  String get confirmArchiveContent => 'Përfundo këtë blerje dhe arkivo listën?';

  @override
  String get complete => 'Përfundo';

  @override
  String get listArchived => 'Lista u arkivua me sukses!';

  @override
  String listAdded(String listName) {
    return '$listName u shtua!';
  }

  @override
  String get buy => 'Bli';

  @override
  String get unmark => 'Çshëno';

  @override
  String confirmDeleteItems(int count) {
    return 'Hiq $count artikuj?';
  }

  @override
  String get confirmDeleteTitle => 'Konfirmo';

  @override
  String confirmContent(int count) {
    return 'Hiq $count artikuj?';
  }

  @override
  String get archiveList => 'Arkivo listën';

  @override
  String get pantryAppBar => 'Qilar';

  @override
  String get generateShoppingList => 'Gjenero listën e blerjeve';

  @override
  String get pantryEmpty => 'Qilar bosh';

  @override
  String get pantryEmptySubtitle =>
      'Shto produktet që dëshiron të mbash në shtëpi';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artikuj duhet të blihen';
  }

  @override
  String get noItemsToBuy => 'Asnjë artikull nuk ka nevojë të blihet';

  @override
  String get newPantryList => 'Blerje nga Qilar';

  @override
  String get newListTitle => 'Listë e Re Blerjesh';

  @override
  String itemsWillBeAdded(int count) {
    return '$count artikuj do të shtohen';
  }

  @override
  String get listNameLabel => 'Emri i listës';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" u krijua me $count artikuj';
  }

  @override
  String get noTracking => 'Pa gjurmim';

  @override
  String get markAsPurchased => 'Shëno si të blerë';

  @override
  String editPantryItem(String name) {
    return 'Ndrysho $name';
  }

  @override
  String get idealQuantity => 'Sasia ideale';

  @override
  String get currentQuantity => 'Sasia aktuale';

  @override
  String get consumed => 'Konsumuar';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name u rimbush në $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Hiq \"$name\" nga qilari?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Ndrysho $name';
  }

  @override
  String get settingsAppBar => 'Cilësimet';

  @override
  String get language => 'Gjuha';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Parazgjedhja e sistemit';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Pamja';

  @override
  String get light => 'E çelët';

  @override
  String get system => 'Sistemi';

  @override
  String get dark => 'E errët';

  @override
  String get themeColor => 'Ngjyra e temës';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Financa';

  @override
  String get monthlyBudgetNav => 'Buxheti mujor';

  @override
  String get budgetSubtitle => 'Gjurmo shpenzimet e tua mujore';

  @override
  String get data => 'Të dhënat';

  @override
  String get backupNav => 'Rezervim';

  @override
  String get backupSubtitle => 'Eksporto ose importo të dhënat e tua';

  @override
  String get about => 'Rreth';

  @override
  String get version => 'Versioni';

  @override
  String get privacy => 'Privatësia';

  @override
  String get termsOfUse => 'Kushtet e përdorimit';

  @override
  String get backupTitle => 'Rezervim';

  @override
  String get backupPremiumDescription =>
      'Rezervimi dhe eksportimi janë veçori premium';

  @override
  String get exportData => 'Eksporto të dhënat';

  @override
  String get exportDataSubtitle => 'Ruaj të gjitha listat si JSON';

  @override
  String get importData => 'Importo të dhënat';

  @override
  String get importDataSubtitle => 'Rivendos listat nga një JSON';

  @override
  String get importJsonTitle => 'Importo JSON';

  @override
  String get importJsonHint => 'Ngjit JSON-in e rezervimit këtu...';

  @override
  String get backupExported => 'Rezervimi u eksportua!';

  @override
  String get budgetAppBar => 'Buxheti Mujor';

  @override
  String get budgetPremiumLocked => 'Buxheti global mujor është premium';

  @override
  String get budgetUpgradePrompt => 'Përmirëso për të zhbllokuar';

  @override
  String get noBudgetDefined => 'Asnjë buxhet i caktuar';

  @override
  String totalEstimated(String amount) {
    return 'Totali i vlerësuar: $amount';
  }

  @override
  String get setBudgetButton => 'Cakto buxhetin';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Shuma';

  @override
  String get setBudgetTitle => 'Buxheti Mujor';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Të gjitha';

  @override
  String get filterPending => 'Në pritje';

  @override
  String get filterPurchased => 'Të blera';

  @override
  String get sortName => 'Emri';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Shto Artikull';

  @override
  String get itemName => 'Emri i artikullit';

  @override
  String get quantityShort => 'Sasia';

  @override
  String get unit => 'Njësia';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Çmimi i vlerësuar';

  @override
  String get addItemPrice => 'Çmimi i vlerësuar';

  @override
  String get editItem => 'Ndrysho Artikull';

  @override
  String get quantityFull => 'Sasia';

  @override
  String get editItemPrice => 'Çmimi i vlerësuar';

  @override
  String get addToPantry => 'Shto në Qilar';

  @override
  String addToPantryPrompt(String name) {
    return 'Shto \"$name\" në Qilarin tënd?';
  }

  @override
  String get yes => 'Po';

  @override
  String get productName => 'Emri i produktit';

  @override
  String get idealQty => 'Sasia ideale';

  @override
  String get currentQty => 'Sasia aktuale';

  @override
  String get trackStock => 'Gjurmo stokun';

  @override
  String get trackStockActive => 'Shfaqet në sugjerimet e blerjeve';

  @override
  String get trackStockInactive => 'Nuk gjeneron sugjerim blerjeje';

  @override
  String get createListDialog => 'Krijo Listë';

  @override
  String get renameListDialog => 'Riemërto Listën';

  @override
  String get listHistory => 'Historiku i Listave';

  @override
  String get myLists => 'Listat e Mia';

  @override
  String get viewActive => 'Shiko Aktive';

  @override
  String get viewHistory => 'Shiko Historikun';

  @override
  String get noArchivedLists => 'Asnjë listë e arkivuar';

  @override
  String get noActiveLists => 'Asnjë listë aktive';

  @override
  String completedOn(String date) {
    return 'Përfunduar më $date';
  }

  @override
  String get sharedLabel => 'E ndarë';

  @override
  String get restore => 'Rivendos';

  @override
  String get removeSharedTooltip => 'Hiq';

  @override
  String get deleteListTitle => 'Fshi listën';

  @override
  String deleteListContent(String name) {
    return 'Jeni të sigurt që doni të fshini \"$name\"? Të gjithë artikujt do të hiqen.';
  }

  @override
  String get removeSharedListTitle => 'Hiq listën e ndarë';

  @override
  String removeSharedListContent(String name) {
    return 'Hiq \"$name\" nga listat e tua? Lista origjinale nuk do të ndikohet.';
  }

  @override
  String get createNewList => 'Krijo listë të re';

  @override
  String get aiAssistant => 'Asistent AI';

  @override
  String get aiAssistantDescription =>
      'Merr sugjerime të zgjuara, receta dhe këshilla të personalizuara me asistentin tonë AI.';

  @override
  String get generalAssistant => 'Asistent i Përgjithshëm';

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
  String get clearHistory => 'Pastro Historikun';

  @override
  String get clearHistoryConfirm => 'Pastro të gjitha mesazhet në këtë sesion?';

  @override
  String get chatHint => 'Shkruaj mesazhin tënd...';

  @override
  String chatError(String error) {
    return 'Gabim në ngarkimin e bisedës: $error';
  }

  @override
  String get listHelp => 'Si mund të ndihmoj me listën tënde?';

  @override
  String get generalHelp => 'Si mund të ndihmoj me blerjet e tua sot?';

  @override
  String get chatSubtitle =>
      'Kërko sugjerime për artikuj, receta ose këshilla kursimi.';

  @override
  String get aiError =>
      'Na vjen keq, ndodhi një gabim gjatë përpunimit të kërkesës suaj. Kontrollo lidhjen ose provo përsëri më vonë.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Hyr për të zhbllokuar\nveçoritë premium';

  @override
  String get signInGoogle => 'Hyr me Google';

  @override
  String get signInApple => 'Hyr me Apple';

  @override
  String get continueAsGuest => 'Vazhdo si i ftuar';

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
    return 'Gabim në hyrje: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Përmirëso për të zhbllokuar';

  @override
  String get itemRemoved => 'Artikulli u hoq';

  @override
  String get undo => 'Çbëj';

  @override
  String get emptyListTitle => 'Lista jote është bosh';

  @override
  String get emptyListSubtitle => 'Shto artikuj për të filluar';

  @override
  String get noListFoundTitle => 'Nuk u gjetën lista';

  @override
  String get noListFoundSubtitle => 'Krijo listën tënde të parë për të filluar';

  @override
  String get createFirstList => 'Krijo Listën e Parë';

  @override
  String get listBudgetTitle => 'Buxheti i Listës';

  @override
  String get budgetAmountLabel => 'Shuma e buxhetit';

  @override
  String get removeBudget => 'Hiq';

  @override
  String get prefUnlimitedLists => 'Lista të pakufizuara';

  @override
  String get prefSharing => 'Ndaj lista';

  @override
  String get prefFullHistory => 'Historik i plotë';

  @override
  String get prefExportData => 'Eksporto të dhënat';

  @override
  String get prefCustomThemes => 'Tema të personalizuara';

  @override
  String get prefMonthlyBudget => 'Buxhet global mujor';

  @override
  String get prefAIAssistant => 'Asistent Personal AI';

  @override
  String get prefUnlimitedPantry => 'Qilar i pakufizuar';

  @override
  String get prefInteractiveArtifacts => 'Artifakte Interaktive AI';

  @override
  String get themeGreen => 'Jeshile';

  @override
  String get themeBlue => 'Blu';

  @override
  String get themePurple => 'Vjollcë';

  @override
  String get themeRed => 'Kuqe';

  @override
  String get themeOrange => 'Portokalli';

  @override
  String get themePink => 'Rozë';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Qelibar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kafe';

  @override
  String get catFruits => 'Frutat';

  @override
  String get catCleaning => 'Pastrimi';

  @override
  String get catBeverages => 'Pijet';

  @override
  String get catBakery => 'Furra';

  @override
  String get catOthers => 'Të tjera';

  @override
  String get unitPack => 'pako';

  @override
  String get shareSubject => 'Lista e Blerjeve';

  @override
  String get monthlyBudgetTitle => 'Buxheti Mujor';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Fshi listën';

  @override
  String get pantryItemRemoved => 'Artikulli u hoq';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artikuj duhet të blihen',
      one: '$deficit artikull duhet të blihet',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Totali i shportës';

  @override
  String get restockLabel => 'Rimbush';

  @override
  String get advancedFeatures => 'Veçori të avancuara';

  @override
  String get selectAll => 'Zgjidh të gjitha';

  @override
  String get deselectAll => 'Çzgjidh të gjitha';

  @override
  String get monthlyBudgetAppBar => 'Buxheti Mujor';

  @override
  String get budgetEditTitle => 'Buxheti Mujor';

  @override
  String get budgetDashboardTitle => 'Paneli';

  @override
  String get selectListForDashboard => 'Zgjidh një listë për të parë panelin.';

  @override
  String get spendingAnalysis => 'Analiza e Shpenzimeve';

  @override
  String get noItemsToAnalyze => 'Asnjë artikull në listë për të analizuar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Shëno artikujt si të blerë për të parë analizën.';

  @override
  String get totalSpending => 'Totali i Shpenzuar';

  @override
  String get spendingByCategory => 'Shpenzimet sipas Kategorisë';

  @override
  String get achievements => 'Arritjet';

  @override
  String get exportPdfExcel => 'Eksporto PDF/Excel';

  @override
  String get exportPdf => 'Eksporto si PDF';

  @override
  String get exportExcel => 'Eksporto si Excel';

  @override
  String get organizingAi => 'DUKE ORGANIZUAR ME AI...';

  @override
  String get yesLabel => 'Po';

  @override
  String get noLabel => 'Jo';

  @override
  String get shareListText => 'Lista Ime e Blerjeve';

  @override
  String get emptyListAddItems =>
      'Lista jote është bosh! Shto artikuj së pari. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista e organizuar për mrekulli sipas kategorive! ✨';

  @override
  String get shoppingMode => 'Modaliteti i Blerjeve';

  @override
  String get smartOrganization => 'Organizim i Mençur';

  @override
  String get savings => 'Kursimet';

  @override
  String get shoppingModeHeader => 'MODALITETI I BLERJEVE';

  @override
  String get shareAsText => 'Dërgo artikujt si tekst të formatuar';

  @override
  String get shareRealtime => 'Sinkronizim në kohë reale me persona të tjerë';

  @override
  String get quickRecipe => 'Recetë e shpejtë';

  @override
  String get quickRecipePrompt => 'Sugjero receta me artikuj nga lista ime.';

  @override
  String get economyTips => 'Këshilla kursimi';

  @override
  String get economyTipsPrompt => 'Si mund të kursej para në këtë blerje?';

  @override
  String get organizeAisles => 'Organizo sipas korridoreve';

  @override
  String get organizeAislesPrompt =>
      'Organizo sipas korridoreve të supermarketit.';

  @override
  String get recipeSuggestion => 'Sugjerim recete';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredite të mbetura';
  }

  @override
  String get addAllToList => 'Shto të gjitha në listë';

  @override
  String get organizeByAisles => 'Organizo sipas korridoreve';

  @override
  String get voiceTranscriptionTooltip => 'Shtypje me zë (Falas)';

  @override
  String get aiVoiceCommandTooltip => 'Komandë Zëri AI (Premium)';

  @override
  String get voiceCommandTitle => 'Komandë Zëri AI';

  @override
  String get voiceCommandContent =>
      'Flit natyrshëm për të menaxhuar listën tënde!\n\nShembuj:\n• \'Shto bukë, djathë dhe proshutë\'\n• \'Hiq detergjentin e rrobave\'\n• \'Ndrysho temën në blu\'\n\nKjo është një veçori ekskluzive e Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Shiko Planet';

  @override
  String get itemsAddedSuccess => 'Artikujt u shtuan me sukses në listë!';

  @override
  String get viewList => 'Shiko listën';

  @override
  String get feedbackTitle => 'Dërgo Feedback';

  @override
  String get feedbackPrompt => 'Çfarë dëshiron të ndash?';

  @override
  String get feedbackTypeBug => 'Raporto Gabim';

  @override
  String get feedbackTypeBugHint => 'Diçka nuk funksionon';

  @override
  String get feedbackTypeSuggestion => 'Sugjerim';

  @override
  String get feedbackTypeSuggestionHint =>
      'Ide për të përmirësuar aplikacionin';

  @override
  String get feedbackTypeTranslation => 'Çështje Përkthimi';

  @override
  String get feedbackTypeTranslationHint => 'Përkthim i pasaktë ose i vështirë';

  @override
  String get feedbackTypeFeature => 'Kërkesë për Veçori';

  @override
  String get feedbackTypeFeatureHint => 'Veçori që dëshiron të shohësh';

  @override
  String get feedbackTypeOther => 'Tjetër';

  @override
  String get feedbackTypeOtherHint => 'Lloj tjetër feedback-u';

  @override
  String get feedbackHint => 'Përshkruaj feedback-un tënd në detaje...';

  @override
  String get feedbackSend => 'Dërgo Feedback';

  @override
  String get feedbackSending => 'Duke dërguar...';

  @override
  String get feedbackThankYou => 'Faleminderit!';

  @override
  String get feedbackThankYouMessage =>
      'Feedback-u yt u mor dhe na ndihmon të përmirësojmë Lista Plus për të gjithë.';

  @override
  String get feedbackBack => 'Mbrapa';

  @override
  String feedbackError(String error) {
    return 'Gabim në dërgim: $error';
  }

  @override
  String get feedbackRetry => 'Provo përsëri';

  @override
  String get feedbackSettingsTitle => 'Dërgo Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Raporto gabime, sugjero përmirësime ose rregullo përkthime';

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
