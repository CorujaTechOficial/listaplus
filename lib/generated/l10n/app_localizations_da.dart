// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Indkøbsliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spisekammer';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get create => 'Opret';

  @override
  String get add => 'Tilføj';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopiér';

  @override
  String get retry => 'Prøv igen';

  @override
  String get regenerate => 'Regenerér';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder';

  @override
  String get confirm => 'Bekræft';

  @override
  String get close => 'Luk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Omdøb';

  @override
  String get upgrade => 'Opgrader';

  @override
  String get clear => 'Ryd';

  @override
  String error(String message) {
    return 'Fejl: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fejl: $message';
  }

  @override
  String get purchaseError => 'Fejl ved behandling af køb. Prøv igen.';

  @override
  String get restoreError => 'Fejl ved gendannelse af køb. Prøv igen.';

  @override
  String get loading => 'Indlæser...';

  @override
  String get fieldRequired => 'Påkrævet felt';

  @override
  String get addedFeedback => 'Tilføjet!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'Valgt $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Anslået';

  @override
  String get alreadyPurchased => 'Allerede købt';

  @override
  String get clearList => 'Ryd liste';

  @override
  String get clearPurchased => 'Ryd købte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Assistent til liste';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bliv Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fuldfør køb';

  @override
  String get confirmClearList => 'Fjern alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne kode:';

  @override
  String get validForLimitedTime => 'Gyldig i begrænset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Indtast koden';

  @override
  String get confirmArchiveTitle => 'Fuldfør køb';

  @override
  String get confirmArchiveContent => 'Fuldfør dette køb og arkivér listen?';

  @override
  String get complete => 'Fuldfør';

  @override
  String get listArchived => 'Listen er arkiveret!';

  @override
  String listAdded(String listName) {
    return '$listName tilføjet!';
  }

  @override
  String get buy => 'Køb';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekræft';

  @override
  String confirmContent(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkivér liste';

  @override
  String get pantryAppBar => 'Spisekammer';

  @override
  String get generateShoppingList => 'Generér indkøbsliste';

  @override
  String get pantryEmpty => 'Tomt spisekammer';

  @override
  String get pantryEmptySubtitle => 'Tilføj produkter, du vil have derhjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) skal købes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer skal købes';

  @override
  String get newPantryList => 'Indkøb til spisekammer';

  @override
  String get newListTitle => 'Ny indkøbsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil blive tilføjet';
  }

  @override
  String get listNameLabel => 'Navn på liste';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" oprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Markér som købt';

  @override
  String editPantryItem(String name) {
    return 'Redigér $name';
  }

  @override
  String get idealQuantity => 'Ideel mængde';

  @override
  String get currentQuantity => 'Aktuel mængde';

  @override
  String get consumed => 'Forbrugt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name genopfyldt til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjern \"$name\" fra spisekammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigér $name';
  }

  @override
  String get settingsAppBar => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get searchLanguage => 'Søg sprog...';

  @override
  String get appearance => 'Udseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarve';

  @override
  String get dynamicColors => 'Dynamiske farver';

  @override
  String get dynamicColorsSubtitle => 'Brug farver baseret på dit tapet';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedligt budget';

  @override
  String get budgetSubtitle => 'Følg dine månedlige udgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Eksportér eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privatliv';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup og eksport er en Premium-funktion';

  @override
  String get exportData => 'Eksportér data';

  @override
  String get exportDataSubtitle => 'Gem alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gendan lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Indsæt backup-JSON her...';

  @override
  String get backupExported => 'Backup eksporteret!';

  @override
  String get budgetAppBar => 'Månedligt budget';

  @override
  String get budgetPremiumLocked => 'Globalt månedligt budget er Premium';

  @override
  String get budgetUpgradePrompt => 'Opgrader for at låse op';

  @override
  String get noBudgetDefined => 'Intet budget sat';

  @override
  String totalEstimated(String amount) {
    return 'Anslået i alt: $amount';
  }

  @override
  String get setBudgetButton => 'Sæt budget';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløb';

  @override
  String get setBudgetTitle => 'Månedligt budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Afventende';

  @override
  String get filterPurchased => 'Købte';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuelt';

  @override
  String get addItem => 'Tilføj vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhed';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Anslået pris';

  @override
  String get addItemPrice => 'Anslået pris';

  @override
  String get editItem => 'Redigér vare';

  @override
  String get quantityFull => 'Mængde';

  @override
  String get editItemPrice => 'Anslået pris';

  @override
  String get addToPantry => 'Tilføj til spisekammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Tilføj \"$name\" til dit spisekammer?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideel ant';

  @override
  String get currentQty => 'Aktuel ant';

  @override
  String get trackStock => 'Følg lager';

  @override
  String get trackStockActive => 'Vises i indkøbsforslag';

  @override
  String get trackStockInactive => 'Genererer ikke indkøbsforslag';

  @override
  String get createListDialog => 'Opret liste';

  @override
  String get renameListDialog => 'Omdøb liste';

  @override
  String get listHistory => 'Listehistorik';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historik';

  @override
  String get noArchivedLists => 'Ingen arkiverede lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fuldført den $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gendan';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slet liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"? Alle varer vil blive fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjern \"$name\" fra dine lister? Den originale liste vil ikke blive påvirket.';
  }

  @override
  String get createNewList => 'Opret ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, opskrifter og personlige tips med vores AI-assistent.';

  @override
  String get generalAssistant => 'Generel assistent';

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
  String get clearHistory => 'Ryd historik';

  @override
  String get clearHistoryConfirm => 'Slet alle meddelelser i denne session?';

  @override
  String get chatHint => 'Skriv din besked...';

  @override
  String chatError(String error) {
    return 'Fejl ved indlæsning af chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjælpe med din liste?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjælpe med din shopping i dag?';

  @override
  String get chatSubtitle =>
      'Spørg efter vareforslag, opskrifter eller sparetips.';

  @override
  String get aiError =>
      'Beklager, der opstod en fejl ved behandling af din anmodning. Tjek din forbindelse eller prøv igen senere.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Log ind for at låse op\nfor Premium-funktioner';

  @override
  String get signInGoogle => 'Log ind med Google';

  @override
  String get signInApple => 'Log ind med Apple';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

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
    return 'Log-in fejl: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Opgrader for at låse op';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Fortryd';

  @override
  String get emptyListTitle => 'Din liste er tom';

  @override
  String get emptyListSubtitle => 'Tilføj varer for at komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister fundet';

  @override
  String get noListFoundSubtitle =>
      'Opret din første liste for at komme i gang';

  @override
  String get createFirstList => 'Opret første liste';

  @override
  String get listBudgetTitle => 'Listebudget';

  @override
  String get budgetAmountLabel => 'Budgetbeløb';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Fuld historik';

  @override
  String get prefExportData => 'Eksportér data';

  @override
  String get prefCustomThemes => 'Brugerdefinerede temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedligt budget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrænset spisekammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grøn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Lyserød';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Krikand';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frugt';

  @override
  String get catCleaning => 'Rengøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Andet';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Indkøbsliste';

  @override
  String get monthlyBudgetTitle => 'Månedligt budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slet liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer skal købes',
      one: '$deficit vare skal købes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kurv i alt';

  @override
  String get restockLabel => 'Genopfyld';

  @override
  String get advancedFeatures => 'Avancerede funktioner';

  @override
  String get selectAll => 'Vælg alle';

  @override
  String get deselectAll => 'Fravælg alle';

  @override
  String get monthlyBudgetAppBar => 'Månedligt budget';

  @override
  String get budgetEditTitle => 'Månedligt budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vælg en liste for at se dashboardet.';

  @override
  String get spendingAnalysis => 'Forbrugsanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer på listen at analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markér varer som købt for at se analysen.';

  @override
  String get totalSpending => 'Samlet forbrug';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get achievements => 'Resultater';

  @override
  String get exportPdfExcel => 'Eksportér PDF/Excel';

  @override
  String get exportPdf => 'Eksportér som PDF';

  @override
  String get exportExcel => 'Eksportér som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min indkøbsliste';

  @override
  String get emptyListAddItems => 'Din liste er tom! Tilføj først varer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen er magisk organiseret efter kategorier! ✨';

  @override
  String get shoppingMode => 'Indkøbstilstand';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparelser';

  @override
  String get shoppingModeHeader => 'INDKØBSTILSTAND';

  @override
  String get shareAsText => 'Send varer som formateret tekst';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andre';

  @override
  String get quickRecipe => 'Hurtig opskrift';

  @override
  String get quickRecipePrompt => 'Foreslå opskrifter med varer fra min liste.';

  @override
  String get economyTips => 'Sparetips';

  @override
  String get economyTipsPrompt => 'Hvordan kan jeg spare penge på dette køb?';

  @override
  String get organizeAisles => 'Organisér efter gange';

  @override
  String get organizeAislesPrompt => 'Organisér efter butiksgange.';

  @override
  String get recipeSuggestion => 'Opskriftforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits tilbage';
  }

  @override
  String get addAllToList => 'Tilføj alle til listen';

  @override
  String get organizeByAisles => 'Organisér efter gange';

  @override
  String get voiceTranscriptionTooltip => 'Tale til tekst (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Tal naturligt for at administrere din liste!\n\nEksempler:\n• \'Tilføj brød, ost og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Skift tema til blå\'\n\nDette er en eksklusiv funktion i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer blev tilføjet til listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send feedback';

  @override
  String get feedbackPrompt => 'Hvad vil du gerne dele?';

  @override
  String get feedbackTypeBug => 'Rapporter fejl';

  @override
  String get feedbackTypeBugHint => 'Noget fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til at forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversættelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Forkert eller akavet oversættelse';

  @override
  String get feedbackTypeFeature => 'Funktionsanmodning';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du gerne vil se';

  @override
  String get feedbackTypeOther => 'Andet';

  @override
  String get feedbackTypeOtherHint => 'Anden type feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detaljer...';

  @override
  String get feedbackSend => 'Send feedback';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Tak!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback er modtaget og hjælper os med at forbedre Lista Plus for alle.';

  @override
  String get feedbackBack => 'Tilbage';

  @override
  String feedbackError(String error) {
    return 'Fejl ved afsendelse: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igen';

  @override
  String get feedbackSettingsTitle => 'Send feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter fejl, foreslå forbedringer eller ret oversættelser';

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
  String get openMenu => 'Åbn menu';

  @override
  String get viewRecipe => 'Vis opskrift';

  @override
  String get recipeCreated => 'Opskrift oprettet!';

  @override
  String get editRecipe => 'Rediger';

  @override
  String get deleteRecipe => 'Slet';

  @override
  String get deleteRecipeConfirm => 'Slet denne opskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på, at du vil slette \"$recipeName\"? Denne handling kan ikke fortrydes.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Tilberedningstid';

  @override
  String get recipeSaved => 'Opskrift gemt!';

  @override
  String get noRecipesSaved => 'Ingen opskrifter gemt';

  @override
  String get noRecipesSavedHint =>
      'Opret din første brugerdefinerede opskrift ved at trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine opskrifter';

  @override
  String get newRecipe => 'Ny opskrift';

  @override
  String get loadingRecipes => 'Indlæser dine opskrifter...';

  @override
  String get errorLoadingRecipes => 'Fejl ved indlæsning af opskrifter';

  @override
  String get addIngredient => 'Tilføj ingrediens';

  @override
  String get saveRecipe => 'Gem';

  @override
  String get recipeName => 'Navn på opskrift';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Tilberedningstid (minutter)';

  @override
  String get instructionsHint => 'Skriv ét trin pr. linje...';

  @override
  String get addPhoto => 'Tilføj billede';

  @override
  String get imageUrlPlaceholder => 'Eller indsæt en billed-URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Tags til opskrift';

  @override
  String get suggestedTags => 'Forslag';

  @override
  String get searchRecipes => 'Søg i opskrifter...';

  @override
  String get filterByTag => 'Filtrer efter tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Opskrift slettet';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get editRecipeTitle => 'Rediger opskrift';

  @override
  String get newRecipeTitle => 'Ny opskrift';

  @override
  String get requiredField => 'Påkrævet';

  @override
  String get chooseImageSource => 'Vælg billedkilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Indtast URL';

  @override
  String get recipeImage => 'Opskriftsbillede';

  @override
  String get removeImage => 'Fjern billede';

  @override
  String get mealPlannerTitle => 'Madplanlægger';

  @override
  String get mealPlannerViewMonthly => 'Månedsvisning';

  @override
  String get mealPlannerViewWeekly => 'Ugevisning';

  @override
  String get mealPlannerNoMeals => 'Ingen måltider planlagt';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryk på en dag for at tilføje et måltid';

  @override
  String get mealPlannerLoading => 'Indlæser madplan...';

  @override
  String get mealPlannerError => 'Fejl ved indlæsning af madplan';

  @override
  String get mealPlannerAddMeal => 'Tilføj måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portioner';

  @override
  String get mealPlannerNoteLabel => 'Note (valgfrit)';

  @override
  String get mealPlannerSelectRecipe => 'Vælg en opskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søg i opskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen opskrifter fundet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Opret opskrifter i fanen Opskrifter først';

  @override
  String get mealPlannerSave => 'Tilføj til plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer indkøbsliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tilføj alle ingredienser fra planlagte måltider i denne uge til din indkøbsliste?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) tilføjet til din liste!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser at tilføje. Planlæg nogle måltider med opskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Opret en indkøbsliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgenmad';

  @override
  String get mealPlannerMealTypeLunch => 'Frokost';

  @override
  String get mealPlannerMealTypeDinner => 'Aftensmad';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Intet planlagt for denne uge';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryk på en vilkårlig dag for at begynde at planlægge dine måltider!';

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

/// The translations for Danish, as used in Denmark (`da_DK`).
class AppLocalizationsDaDk extends AppLocalizationsDa {
  AppLocalizationsDaDk() : super('da_DK');

  @override
  String get appTitle => 'Indkøbsliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spisekammer';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get create => 'Opret';

  @override
  String get add => 'Tilføj';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopiér';

  @override
  String get retry => 'Prøv igen';

  @override
  String get regenerate => 'Regenerér';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder';

  @override
  String get confirm => 'Bekræft';

  @override
  String get close => 'Luk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Omdøb';

  @override
  String get upgrade => 'Opgrader';

  @override
  String get clear => 'Ryd';

  @override
  String error(String message) {
    return 'Fejl: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fejl: $message';
  }

  @override
  String get purchaseError => 'Fejl ved behandling af køb. Prøv igen.';

  @override
  String get restoreError => 'Fejl ved gendannelse af køb. Prøv igen.';

  @override
  String get loading => 'Indlæser...';

  @override
  String get fieldRequired => 'Påkrævet felt';

  @override
  String get addedFeedback => 'Tilføjet!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'Valgt $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Anslået';

  @override
  String get alreadyPurchased => 'Allerede købt';

  @override
  String get clearList => 'Ryd liste';

  @override
  String get clearPurchased => 'Ryd købte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Assistent til liste';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bliv Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fuldfør køb';

  @override
  String get confirmClearList => 'Fjern alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne kode:';

  @override
  String get validForLimitedTime => 'Gyldig i begrænset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Indtast koden';

  @override
  String get confirmArchiveTitle => 'Fuldfør køb';

  @override
  String get confirmArchiveContent => 'Fuldfør dette køb og arkivér listen?';

  @override
  String get complete => 'Fuldfør';

  @override
  String get listArchived => 'Listen er arkiveret!';

  @override
  String listAdded(String listName) {
    return '$listName tilføjet!';
  }

  @override
  String get buy => 'Køb';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekræft';

  @override
  String confirmContent(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkivér liste';

  @override
  String get pantryAppBar => 'Spisekammer';

  @override
  String get generateShoppingList => 'Generér indkøbsliste';

  @override
  String get pantryEmpty => 'Tomt spisekammer';

  @override
  String get pantryEmptySubtitle => 'Tilføj produkter, du vil have derhjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) skal købes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer skal købes';

  @override
  String get newPantryList => 'Indkøb til spisekammer';

  @override
  String get newListTitle => 'Ny indkøbsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil blive tilføjet';
  }

  @override
  String get listNameLabel => 'Navn på liste';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" oprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Markér som købt';

  @override
  String editPantryItem(String name) {
    return 'Redigér $name';
  }

  @override
  String get idealQuantity => 'Ideel mængde';

  @override
  String get currentQuantity => 'Aktuel mængde';

  @override
  String get consumed => 'Forbrugt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name genopfyldt til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjern \"$name\" fra spisekammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigér $name';
  }

  @override
  String get settingsAppBar => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get searchLanguage => 'Søg sprog...';

  @override
  String get appearance => 'Udseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarve';

  @override
  String get dynamicColors => 'Dynamiske farver';

  @override
  String get dynamicColorsSubtitle => 'Brug farver baseret på dit tapet';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedligt budget';

  @override
  String get budgetSubtitle => 'Følg dine månedlige udgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Eksportér eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privatliv';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup og eksport er en Premium-funktion';

  @override
  String get exportData => 'Eksportér data';

  @override
  String get exportDataSubtitle => 'Gem alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gendan lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Indsæt backup-JSON her...';

  @override
  String get backupExported => 'Backup eksporteret!';

  @override
  String get budgetAppBar => 'Månedligt budget';

  @override
  String get budgetPremiumLocked => 'Globalt månedligt budget er Premium';

  @override
  String get budgetUpgradePrompt => 'Opgrader for at låse op';

  @override
  String get noBudgetDefined => 'Intet budget sat';

  @override
  String totalEstimated(String amount) {
    return 'Anslået i alt: $amount';
  }

  @override
  String get setBudgetButton => 'Sæt budget';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløb';

  @override
  String get setBudgetTitle => 'Månedligt budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Afventende';

  @override
  String get filterPurchased => 'Købte';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuelt';

  @override
  String get addItem => 'Tilføj vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhed';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Anslået pris';

  @override
  String get addItemPrice => 'Anslået pris';

  @override
  String get editItem => 'Redigér vare';

  @override
  String get quantityFull => 'Mængde';

  @override
  String get editItemPrice => 'Anslået pris';

  @override
  String get addToPantry => 'Tilføj til spisekammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Tilføj \"$name\" til dit spisekammer?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideel ant';

  @override
  String get currentQty => 'Aktuel ant';

  @override
  String get trackStock => 'Følg lager';

  @override
  String get trackStockActive => 'Vises i indkøbsforslag';

  @override
  String get trackStockInactive => 'Genererer ikke indkøbsforslag';

  @override
  String get createListDialog => 'Opret liste';

  @override
  String get renameListDialog => 'Omdøb liste';

  @override
  String get listHistory => 'Listehistorik';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historik';

  @override
  String get noArchivedLists => 'Ingen arkiverede lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fuldført den $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gendan';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slet liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"? Alle varer vil blive fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjern \"$name\" fra dine lister? Den originale liste vil ikke blive påvirket.';
  }

  @override
  String get createNewList => 'Opret ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, opskrifter og personlige tips med vores AI-assistent.';

  @override
  String get generalAssistant => 'Generel assistent';

  @override
  String get clearHistory => 'Ryd historik';

  @override
  String get clearHistoryConfirm => 'Slet alle meddelelser i denne session?';

  @override
  String get chatHint => 'Skriv din besked...';

  @override
  String chatError(String error) {
    return 'Fejl ved indlæsning af chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjælpe med din liste?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjælpe med din shopping i dag?';

  @override
  String get chatSubtitle =>
      'Spørg efter vareforslag, opskrifter eller sparetips.';

  @override
  String get aiError =>
      'Beklager, der opstod en fejl ved behandling af din anmodning. Tjek din forbindelse eller prøv igen senere.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Log ind for at låse op for Premium-funktioner';

  @override
  String get signInGoogle => 'Log ind med Google';

  @override
  String get signInApple => 'Log ind med Apple';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

  @override
  String loginError(String error) {
    return 'Log-in fejl: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Opgrader for at låse op';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Fortryd';

  @override
  String get emptyListTitle => 'Din liste er tom';

  @override
  String get emptyListSubtitle => 'Tilføj varer for at komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister fundet';

  @override
  String get noListFoundSubtitle =>
      'Opret din første liste for at komme i gang';

  @override
  String get createFirstList => 'Opret første liste';

  @override
  String get listBudgetTitle => 'Listebudget';

  @override
  String get budgetAmountLabel => 'Budgetbeløb';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Fuld historik';

  @override
  String get prefExportData => 'Eksportér data';

  @override
  String get prefCustomThemes => 'Brugerdefinerede temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedligt budget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrænset spisekammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grøn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Lyserød';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Krikand';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frugt';

  @override
  String get catCleaning => 'Rengøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Andet';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Indkøbsliste';

  @override
  String get monthlyBudgetTitle => 'Månedligt budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slet liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer skal købes',
      one: '$deficit vare skal købes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kurv i alt';

  @override
  String get restockLabel => 'Genopfyld';

  @override
  String get advancedFeatures => 'Avancerede funktioner';

  @override
  String get selectAll => 'Vælg alle';

  @override
  String get deselectAll => 'Fravælg alle';

  @override
  String get monthlyBudgetAppBar => 'Månedligt budget';

  @override
  String get budgetEditTitle => 'Månedligt budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vælg en liste for at se dashboardet.';

  @override
  String get spendingAnalysis => 'Forbrugsanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer på listen at analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markér varer som købt for at se analysen.';

  @override
  String get totalSpending => 'Samlet forbrug';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get achievements => 'Resultater';

  @override
  String get exportPdfExcel => 'Eksportér PDF/Excel';

  @override
  String get exportPdf => 'Eksportér som PDF';

  @override
  String get exportExcel => 'Eksportér som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min indkøbsliste';

  @override
  String get emptyListAddItems => 'Din liste er tom! Tilføj først varer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen er magisk organiseret efter kategorier! ✨';

  @override
  String get shoppingMode => 'Indkøbstilstand';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparelser';

  @override
  String get shoppingModeHeader => 'INDKØBSTILSTAND';

  @override
  String get shareAsText => 'Send varer som formateret tekst';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andre';

  @override
  String get quickRecipe => 'Hurtig opskrift';

  @override
  String get quickRecipePrompt => 'Foreslå opskrifter med varer fra min liste.';

  @override
  String get economyTips => 'Sparetips';

  @override
  String get economyTipsPrompt => 'Hvordan kan jeg spare penge på dette køb?';

  @override
  String get organizeAisles => 'Organisér efter gange';

  @override
  String get organizeAislesPrompt => 'Organisér efter butiksgange.';

  @override
  String get recipeSuggestion => 'Opskriftforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits tilbage';
  }

  @override
  String get addAllToList => 'Tilføj alle til listen';

  @override
  String get organizeByAisles => 'Organisér efter gange';

  @override
  String get voiceTranscriptionTooltip => 'Tale til tekst (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Tal naturligt for at administrere din liste!\n\nEksempler:\n• \'Tilføj brød, ost og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Skift tema til blå\'\n\nDette er en eksklusiv funktion i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer blev tilføjet til listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send feedback';

  @override
  String get feedbackPrompt => 'Hvad vil du gerne dele?';

  @override
  String get feedbackTypeBug => 'Rapporter fejl';

  @override
  String get feedbackTypeBugHint => 'Noget fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til at forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversættelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Forkert eller akavet oversættelse';

  @override
  String get feedbackTypeFeature => 'Funktionsanmodning';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du gerne vil se';

  @override
  String get feedbackTypeOther => 'Andet';

  @override
  String get feedbackTypeOtherHint => 'Anden type feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detaljer...';

  @override
  String get feedbackSend => 'Send feedback';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Tak!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback er modtaget og hjælper os med at forbedre Lista Plus for alle.';

  @override
  String get feedbackBack => 'Tilbage';

  @override
  String feedbackError(String error) {
    return 'Fejl ved afsendelse: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igen';

  @override
  String get feedbackSettingsTitle => 'Send feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter fejl, foreslå forbedringer eller ret oversættelser';

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
  String get openMenu => 'Åbn menu';

  @override
  String get viewRecipe => 'Vis opskrift';

  @override
  String get recipeCreated => 'Opskrift oprettet!';

  @override
  String get editRecipe => 'Rediger';

  @override
  String get deleteRecipe => 'Slet';

  @override
  String get deleteRecipeConfirm => 'Slet denne opskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på, at du vil slette \"$recipeName\"? Denne handling kan ikke fortrydes.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Forberedelsestid';

  @override
  String get recipeSaved => 'Opskrift gemt!';

  @override
  String get noRecipesSaved => 'Ingen opskrifter gemt';

  @override
  String get noRecipesSavedHint =>
      'Opret din første tilpassede opskrift ved at trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine opskrifter';

  @override
  String get newRecipe => 'Ny opskrift';

  @override
  String get loadingRecipes => 'Indlæser dine opskrifter...';

  @override
  String get errorLoadingRecipes => 'Fejl ved indlæsning af opskrifter';

  @override
  String get addIngredient => 'Tilføj ingrediens';

  @override
  String get saveRecipe => 'Gem';

  @override
  String get recipeName => 'Navn på opskrift';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Forberedelsestid (minutter)';

  @override
  String get instructionsHint => 'Skriv et trin pr. linje...';

  @override
  String get addPhoto => 'Tilføj foto';

  @override
  String get imageUrlPlaceholder => 'Indsæt billed-URL';

  @override
  String get tags => 'Mærker';

  @override
  String get recipeTags => 'Opskriftsmærker';

  @override
  String get suggestedTags => 'Foreslåede';

  @override
  String get searchRecipes => 'Søg i opskrifter...';

  @override
  String get filterByTag => 'Filtrer efter mærke';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Opskrift slettet';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get editRecipeTitle => 'Rediger opskrift';

  @override
  String get newRecipeTitle => 'Ny opskrift';

  @override
  String get requiredField => 'Påkrævet';

  @override
  String get chooseImageSource => 'Vælg billedkilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Indtast URL';

  @override
  String get recipeImage => 'Opskriftsbillede';

  @override
  String get removeImage => 'Fjern billede';

  @override
  String get mealPlannerTitle => 'Madplan';

  @override
  String get mealPlannerViewMonthly => 'Månedsvisning';

  @override
  String get mealPlannerViewWeekly => 'Ugevisning';

  @override
  String get mealPlannerNoMeals => 'Ingen planlagte måltider';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryk på en dag for at tilføje et måltid';

  @override
  String get mealPlannerLoading => 'Indlæser madplan...';

  @override
  String get mealPlannerError => 'Fejl ved indlæsning af madplan';

  @override
  String get mealPlannerAddMeal => 'Tilføj måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portioner';

  @override
  String get mealPlannerNoteLabel => 'Note (valgfrit)';

  @override
  String get mealPlannerSelectRecipe => 'Vælg en opskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søg i opskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen opskrifter fundet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Opret opskrifter i fanen Opskrifter først';

  @override
  String get mealPlannerSave => 'Tilføj til plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer indkøbsliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tilføj alle ingredienser fra planlagte måltider i denne uge til din indkøbsliste?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) føjet til din liste!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser at tilføje. Planlæg nogle måltider med opskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Opret en indkøbsliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgenmad';

  @override
  String get mealPlannerMealTypeLunch => 'Frokost';

  @override
  String get mealPlannerMealTypeDinner => 'Aftensmad';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Intet planlagt for denne uge';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryk på en dag for at begynde at planlægge dine måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
