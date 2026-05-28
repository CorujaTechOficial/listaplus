// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

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
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

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
    return 'Inloggningsfel: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera bugg';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsförfrågan';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra Lista Plus för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid sändning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera buggar, föreslå förbättringar eller korrigera översättningar';

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

/// The translations for Swedish, as used in Sweden (`sv_SE`).
class AppLocalizationsSvSe extends AppLocalizationsSv {
  AppLocalizationsSvSe() : super('sv_SE');

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

  @override
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String loginError(String error) {
    return 'Inloggningsfel: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera fel';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsbegäran';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra Lista Plus för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid skickning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera fel, föreslå förbättringar eller fixa översättningar';

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
}
