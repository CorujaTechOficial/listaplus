// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Handleliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spiskammer';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get create => 'Opprett';

  @override
  String get add => 'Legg til';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slett';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopier';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get regenerate => 'Regenerer';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get close => 'Lukk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get upgrade => 'Oppgrader';

  @override
  String get clear => 'Tøm';

  @override
  String error(String message) {
    return 'Feil: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Feil: $message';
  }

  @override
  String get purchaseError => 'Feil ved behandling av kjøp. Prøv igjen.';

  @override
  String get restoreError => 'Feil ved gjenoppretting av kjøp. Prøv igjen.';

  @override
  String get loading => 'Laster...';

  @override
  String get fieldRequired => 'Påkrevd felt';

  @override
  String get addedFeedback => 'Lagt til!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valgte',
      one: '$count valgt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimert';

  @override
  String get alreadyPurchased => 'Allerede kjøpt';

  @override
  String get clearList => 'Tøm liste';

  @override
  String get clearPurchased => 'Fjern kjøpte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Listeassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fullfør kjøp';

  @override
  String get confirmClearList => 'Fjerne alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne koden:';

  @override
  String get validForLimitedTime => 'Gyldig i begrenset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Skriv inn koden';

  @override
  String get confirmArchiveTitle => 'Fullfør kjøp';

  @override
  String get confirmArchiveContent => 'Fullfør dette kjøpet og arkiver listen?';

  @override
  String get complete => 'Fullfør';

  @override
  String get listArchived => 'Listen ble arkivert!';

  @override
  String listAdded(String listName) {
    return '$listName lagt til!';
  }

  @override
  String get buy => 'Kjøp';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekreft';

  @override
  String confirmContent(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkiver liste';

  @override
  String get pantryAppBar => 'Spiskammer';

  @override
  String get generateShoppingList => 'Generer handleliste';

  @override
  String get pantryEmpty => 'Tomt spiskammer';

  @override
  String get pantryEmptySubtitle => 'Legg til produkter du ønsker å ha hjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) må kjøpes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer må kjøpes';

  @override
  String get newPantryList => 'Spiskammerhandling';

  @override
  String get newListTitle => 'Ny handleliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil bli lagt til';
  }

  @override
  String get listNameLabel => 'Listenavn';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" opprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Marker som kjøpt';

  @override
  String editPantryItem(String name) {
    return 'Rediger $name';
  }

  @override
  String get idealQuantity => 'Ideell mengde';

  @override
  String get currentQuantity => 'Nåværende mengde';

  @override
  String get consumed => 'Forbrukt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name fylt opp til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjerne \"$name\" fra spiskammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediger $name';
  }

  @override
  String get settingsAppBar => 'Innstillinger';

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
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarge';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedlig budsjett';

  @override
  String get budgetSubtitle => 'Spor dine månedlige utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sikkerhetskopi';

  @override
  String get backupSubtitle => 'Eksporter eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Versjon';

  @override
  String get privacy => 'Personvern';

  @override
  String get termsOfUse => 'Vilkår for bruk';

  @override
  String get backupTitle => 'Sikkerhetskopi';

  @override
  String get backupPremiumDescription =>
      'Sikkerhetskopi og eksport er en premiumfunksjon';

  @override
  String get exportData => 'Eksporter data';

  @override
  String get exportDataSubtitle => 'Lagre alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gjenopprett lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Lim inn sikkerhetskopi-JSON her...';

  @override
  String get backupExported => 'Sikkerhetskopi eksportert!';

  @override
  String get budgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetPremiumLocked => 'Globalt månedlig budsjett er premium';

  @override
  String get budgetUpgradePrompt => 'Oppgrader for å låse opp';

  @override
  String get noBudgetDefined => 'Ingen budsjett satt';

  @override
  String totalEstimated(String amount) {
    return 'Total estimert: $amount';
  }

  @override
  String get setBudgetButton => 'Sett budsjett';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløp';

  @override
  String get setBudgetTitle => 'Månedlig budsjett';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ventende';

  @override
  String get filterPurchased => 'Kjøpt';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Legg til vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant.';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Estimert pris';

  @override
  String get addItemPrice => 'Estimert pris';

  @override
  String get editItem => 'Rediger vare';

  @override
  String get quantityFull => 'Antall';

  @override
  String get editItemPrice => 'Estimert pris';

  @override
  String get addToPantry => 'Legg til i spiskammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Legg til \"$name\" i spiskammeret?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideell ant.';

  @override
  String get currentQty => 'Nåværende ant.';

  @override
  String get trackStock => 'Spor lager';

  @override
  String get trackStockActive => 'Vises i handleforslag';

  @override
  String get trackStockInactive => 'Genererer ikke handleforslag';

  @override
  String get createListDialog => 'Opprett liste';

  @override
  String get renameListDialog => 'Gi listen nytt navn';

  @override
  String get listHistory => 'Listehistorikk';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historikk';

  @override
  String get noArchivedLists => 'Ingen arkiverte lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fullført $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gjenopprett';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slett liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på at du vil slette \"$name\"? Alle varer vil bli fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjerne \"$name\" fra dine lister? Den opprinnelige listen vil ikke bli påvirket.';
  }

  @override
  String get createNewList => 'Opprett ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, oppskrifter og personlige tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Generell assistent';

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
  String get clearHistory => 'Tøm historikk';

  @override
  String get clearHistoryConfirm => 'Slette alle meldinger i denne økten?';

  @override
  String get chatHint => 'Skriv meldingen din...';

  @override
  String chatError(String error) {
    return 'Feil ved lasting av chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjelpe med listen din?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjelpe deg med handlingen i dag?';

  @override
  String get chatSubtitle =>
      'Spør etter vareforslag, oppskrifter eller sparingstips.';

  @override
  String get aiError =>
      'Beklager, det oppstod en feil under behandlingen. Sjekk tilkoblingen din eller prøv igjen senere.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Logg inn for å låse opp\npremiumfunksjoner';

  @override
  String get signInGoogle => 'Logg inn med Google';

  @override
  String get signInApple => 'Logg inn med Apple';

  @override
  String get continueAsGuest => 'Fortsett som gjest';

  @override
  String loginError(String error) {
    return 'Innloggingsfeil: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Oppgrader for å låse opp';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Angre';

  @override
  String get emptyListTitle => 'Listen din er tom';

  @override
  String get emptyListSubtitle => 'Legg til varer for å komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister funnet';

  @override
  String get noListFoundSubtitle =>
      'Opprett din første liste for å komme i gang';

  @override
  String get createFirstList => 'Opprett første liste';

  @override
  String get listBudgetTitle => 'Listebudsjett';

  @override
  String get budgetAmountLabel => 'Budsjettbeløp';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrensede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Full historikk';

  @override
  String get prefExportData => 'Eksporter data';

  @override
  String get prefCustomThemes => 'Egendefinerte temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedlig budsjett';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrenset spiskammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grønn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Oransje';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Rengjøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bakevarer';

  @override
  String get catOthers => 'Andre';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Handleliste';

  @override
  String get monthlyBudgetTitle => 'Månedlig budsjett';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slett liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer må kjøpes',
      one: '$deficit vare må kjøpes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Handlevogn total';

  @override
  String get restockLabel => 'Fyll opp';

  @override
  String get advancedFeatures => 'Avanserte funksjoner';

  @override
  String get selectAll => 'Velg alle';

  @override
  String get deselectAll => 'Velg bort alle';

  @override
  String get monthlyBudgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetEditTitle => 'Månedlig budsjett';

  @override
  String get budgetDashboardTitle => 'Dashbord';

  @override
  String get selectListForDashboard => 'Velg en liste for å se dashbordet.';

  @override
  String get spendingAnalysis => 'Forbruksanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer i listen å analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk varer som kjøpt for å se analysen.';

  @override
  String get totalSpending => 'Totalt forbruk';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get achievements => 'Prestasjoner';

  @override
  String get exportPdfExcel => 'Eksporter PDF/Excel';

  @override
  String get exportPdf => 'Eksporter som PDF';

  @override
  String get exportExcel => 'Eksporter som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Min handleliste';

  @override
  String get emptyListAddItems => 'Listen din er tom! Legg til varer først. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen magisk organisert etter kategorier! ✨';

  @override
  String get shoppingMode => 'Handlemåte';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparing';

  @override
  String get shoppingModeHeader => 'HANDLEMÅTE';

  @override
  String get shareAsText => 'Send varer som formatert tekst';

  @override
  String get shareRealtime => 'Sanntidssynkronisering med andre';

  @override
  String get quickRecipe => 'Rask oppskrift';

  @override
  String get quickRecipePrompt =>
      'Foreslå oppskrifter med varer fra listen min.';

  @override
  String get economyTips => 'Sparingstips';

  @override
  String get economyTipsPrompt =>
      'Hvordan kan jeg spare penger på dette kjøpet?';

  @override
  String get organizeAisles => 'Organiser etter ganger';

  @override
  String get organizeAislesPrompt => 'Organiser etter butikkganger.';

  @override
  String get recipeSuggestion => 'Oppskriftsforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditter igjen';
  }

  @override
  String get addAllToList => 'Legg alle til listen';

  @override
  String get organizeByAisles => 'Organiser etter ganger';

  @override
  String get voiceTranscriptionTooltip => 'Stemmeskriving (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Snakk naturlig for å administrere listen din!\n\nEksempler:\n• \'Legg til brød, ost, og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Endre tema til blått\'\n\nDette er en eksklusiv funksjon i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer ble lagt til i listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send tilbakemelding';

  @override
  String get feedbackPrompt => 'Hva vil du dele?';

  @override
  String get feedbackTypeBug => 'Rapporter feil';

  @override
  String get feedbackTypeBugHint => 'Noe fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til å forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversettelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Feil eller dårlig oversettelse';

  @override
  String get feedbackTypeFeature => 'Funksjonsforespørsel';

  @override
  String get feedbackTypeFeatureHint => 'Funksjon du ønsker å se';

  @override
  String get feedbackTypeOther => 'Annet';

  @override
  String get feedbackTypeOtherHint => 'Annen type tilbakemelding';

  @override
  String get feedbackHint => 'Beskriv tilbakemeldingen din i detalj...';

  @override
  String get feedbackSend => 'Send tilbakemelding';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Tilbakemeldingen din er mottatt og hjelper oss å forbedre Lista Plus for alle.';

  @override
  String get feedbackBack => 'Tilbake';

  @override
  String feedbackError(String error) {
    return 'Feil ved sending: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igjen';

  @override
  String get feedbackSettingsTitle => 'Send tilbakemelding';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter feil, foreslå forbedringer eller fiks oversettelser';

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

/// The translations for Norwegian, as used in Norway (`no_NO`).
class AppLocalizationsNoNo extends AppLocalizationsNo {
  AppLocalizationsNoNo() : super('no_NO');

  @override
  String get appTitle => 'Handleliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spiskammer';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get create => 'Opprett';

  @override
  String get add => 'Legg til';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slett';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopier';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get regenerate => 'Regenerer';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get close => 'Lukk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get upgrade => 'Oppgrader';

  @override
  String get clear => 'Tøm';

  @override
  String error(String message) {
    return 'Feil: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Feil: $message';
  }

  @override
  String get purchaseError => 'Feil ved behandling av kjøp. Prøv igjen.';

  @override
  String get restoreError => 'Feil ved gjenoppretting av kjøp. Prøv igjen.';

  @override
  String get loading => 'Laster...';

  @override
  String get fieldRequired => 'Påkrevd felt';

  @override
  String get addedFeedback => 'Lagt til!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valgte',
      one: '$count valgt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimert';

  @override
  String get alreadyPurchased => 'Allerede kjøpt';

  @override
  String get clearList => 'Tøm liste';

  @override
  String get clearPurchased => 'Fjern kjøpte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Listeassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fullfør kjøp';

  @override
  String get confirmClearList => 'Fjerne alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne koden:';

  @override
  String get validForLimitedTime => 'Gyldig i begrenset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Skriv inn koden';

  @override
  String get confirmArchiveTitle => 'Fullfør kjøp';

  @override
  String get confirmArchiveContent => 'Fullfør dette kjøpet og arkiver listen?';

  @override
  String get complete => 'Fullfør';

  @override
  String get listArchived => 'Listen ble arkivert!';

  @override
  String listAdded(String listName) {
    return '$listName lagt til!';
  }

  @override
  String get buy => 'Kjøp';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekreft';

  @override
  String confirmContent(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkiver liste';

  @override
  String get pantryAppBar => 'Spiskammer';

  @override
  String get generateShoppingList => 'Generer handleliste';

  @override
  String get pantryEmpty => 'Tomt spiskammer';

  @override
  String get pantryEmptySubtitle => 'Legg til produkter du ønsker å ha hjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) må kjøpes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer må kjøpes';

  @override
  String get newPantryList => 'Spiskammerhandling';

  @override
  String get newListTitle => 'Ny handleliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil bli lagt til';
  }

  @override
  String get listNameLabel => 'Listenavn';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" opprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Marker som kjøpt';

  @override
  String editPantryItem(String name) {
    return 'Rediger $name';
  }

  @override
  String get idealQuantity => 'Ideell mengde';

  @override
  String get currentQuantity => 'Nåværende mengde';

  @override
  String get consumed => 'Forbrukt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name fylt opp til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjerne \"$name\" fra spiskammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediger $name';
  }

  @override
  String get settingsAppBar => 'Innstillinger';

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
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarge';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedlig budsjett';

  @override
  String get budgetSubtitle => 'Spor dine månedlige utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sikkerhetskopi';

  @override
  String get backupSubtitle => 'Eksporter eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Versjon';

  @override
  String get privacy => 'Personvern';

  @override
  String get termsOfUse => 'Vilkår for bruk';

  @override
  String get backupTitle => 'Sikkerhetskopi';

  @override
  String get backupPremiumDescription =>
      'Sikkerhetskopi og eksport er en premiumfunksjon';

  @override
  String get exportData => 'Eksporter data';

  @override
  String get exportDataSubtitle => 'Lagre alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gjenopprett lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Lim inn sikkerhetskopi-JSON her...';

  @override
  String get backupExported => 'Sikkerhetskopi eksportert!';

  @override
  String get budgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetPremiumLocked => 'Globalt månedlig budsjett er premium';

  @override
  String get budgetUpgradePrompt => 'Oppgrader for å låse opp';

  @override
  String get noBudgetDefined => 'Ingen budsjett satt';

  @override
  String totalEstimated(String amount) {
    return 'Total estimert: $amount';
  }

  @override
  String get setBudgetButton => 'Sett budsjett';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløp';

  @override
  String get setBudgetTitle => 'Månedlig budsjett';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ventende';

  @override
  String get filterPurchased => 'Kjøpt';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Legg til vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant.';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Estimert pris';

  @override
  String get addItemPrice => 'Estimert pris';

  @override
  String get editItem => 'Rediger vare';

  @override
  String get quantityFull => 'Antall';

  @override
  String get editItemPrice => 'Estimert pris';

  @override
  String get addToPantry => 'Legg til i spiskammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Legg til \"$name\" i spiskammeret?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideell ant.';

  @override
  String get currentQty => 'Nåværende ant.';

  @override
  String get trackStock => 'Spor lager';

  @override
  String get trackStockActive => 'Vises i handleforslag';

  @override
  String get trackStockInactive => 'Genererer ikke handleforslag';

  @override
  String get createListDialog => 'Opprett liste';

  @override
  String get renameListDialog => 'Gi listen nytt navn';

  @override
  String get listHistory => 'Listehistorikk';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historikk';

  @override
  String get noArchivedLists => 'Ingen arkiverte lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fullført $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gjenopprett';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slett liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på at du vil slette \"$name\"? Alle varer vil bli fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjerne \"$name\" fra dine lister? Den opprinnelige listen vil ikke bli påvirket.';
  }

  @override
  String get createNewList => 'Opprett ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, oppskrifter og personlige tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Generell assistent';

  @override
  String get clearHistory => 'Tøm historikk';

  @override
  String get clearHistoryConfirm => 'Slette alle meldinger i denne økten?';

  @override
  String get chatHint => 'Skriv meldingen din...';

  @override
  String chatError(String error) {
    return 'Feil ved lasting av chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjelpe med listen din?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjelpe deg med handlingen i dag?';

  @override
  String get chatSubtitle =>
      'Spør etter vareforslag, oppskrifter eller sparingstips.';

  @override
  String get aiError =>
      'Beklager, det oppstod en feil under behandlingen. Sjekk tilkoblingen din eller prøv igjen senere.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Logg inn for å låse opp\npremiumfunksjoner';

  @override
  String get signInGoogle => 'Logg inn med Google';

  @override
  String get signInApple => 'Logg inn med Apple';

  @override
  String get continueAsGuest => 'Fortsett som gjest';

  @override
  String loginError(String error) {
    return 'Innloggingsfeil: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Oppgrader for å låse opp';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Angre';

  @override
  String get emptyListTitle => 'Listen din er tom';

  @override
  String get emptyListSubtitle => 'Legg til varer for å komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister funnet';

  @override
  String get noListFoundSubtitle =>
      'Opprett din første liste for å komme i gang';

  @override
  String get createFirstList => 'Opprett første liste';

  @override
  String get listBudgetTitle => 'Listebudsjett';

  @override
  String get budgetAmountLabel => 'Budsjettbeløp';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrensede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Full historikk';

  @override
  String get prefExportData => 'Eksporter data';

  @override
  String get prefCustomThemes => 'Egendefinerte temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedlig budsjett';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrenset spiskammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grønn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Oransje';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Rengjøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bakevarer';

  @override
  String get catOthers => 'Andre';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Handleliste';

  @override
  String get monthlyBudgetTitle => 'Månedlig budsjett';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slett liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer må kjøpes',
      one: '$deficit vare må kjøpes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Handlevogn total';

  @override
  String get restockLabel => 'Fyll opp';

  @override
  String get advancedFeatures => 'Avanserte funksjoner';

  @override
  String get selectAll => 'Velg alle';

  @override
  String get deselectAll => 'Velg bort alle';

  @override
  String get monthlyBudgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetEditTitle => 'Månedlig budsjett';

  @override
  String get budgetDashboardTitle => 'Dashbord';

  @override
  String get selectListForDashboard => 'Velg en liste for å se dashbordet.';

  @override
  String get spendingAnalysis => 'Forbruksanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer i listen å analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk varer som kjøpt for å se analysen.';

  @override
  String get totalSpending => 'Totalt forbruk';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get achievements => 'Prestasjoner';

  @override
  String get exportPdfExcel => 'Eksporter PDF/Excel';

  @override
  String get exportPdf => 'Eksporter som PDF';

  @override
  String get exportExcel => 'Eksporter som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Min handleliste';

  @override
  String get emptyListAddItems => 'Listen din er tom! Legg til varer først. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen magisk organisert etter kategorier! ✨';

  @override
  String get shoppingMode => 'Handlemåte';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparing';

  @override
  String get shoppingModeHeader => 'HANDLEMÅTE';

  @override
  String get shareAsText => 'Send varer som formatert tekst';

  @override
  String get shareRealtime => 'Sanntidssynkronisering med andre';

  @override
  String get quickRecipe => 'Rask oppskrift';

  @override
  String get quickRecipePrompt =>
      'Foreslå oppskrifter med varer fra listen min.';

  @override
  String get economyTips => 'Sparingstips';

  @override
  String get economyTipsPrompt =>
      'Hvordan kan jeg spare penger på dette kjøpet?';

  @override
  String get organizeAisles => 'Organiser etter ganger';

  @override
  String get organizeAislesPrompt => 'Organiser etter butikkganger.';

  @override
  String get recipeSuggestion => 'Oppskriftsforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditter igjen';
  }

  @override
  String get addAllToList => 'Legg alle til listen';

  @override
  String get organizeByAisles => 'Organiser etter ganger';

  @override
  String get voiceTranscriptionTooltip => 'Stemmeskriving (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Snakk naturlig for å administrere listen din!\n\nEksempler:\n• \'Legg til brød, ost, og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Endre tema til blått\'\n\nDette er en eksklusiv funksjon i Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer ble lagt til i listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send tilbakemelding';

  @override
  String get feedbackPrompt => 'Hva ønsker du å dele?';

  @override
  String get feedbackTypeBug => 'Rapporter feil';

  @override
  String get feedbackTypeBugHint => 'Noe fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Ide for å forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversettelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Feil eller dårlig oversettelse';

  @override
  String get feedbackTypeFeature => 'Funksjonsforespørsel';

  @override
  String get feedbackTypeFeatureHint => 'Funksjon du ønsker å se';

  @override
  String get feedbackTypeOther => 'Annet';

  @override
  String get feedbackTypeOtherHint => 'Annen type tilbakemelding';

  @override
  String get feedbackHint => 'Beskriv tilbakemeldingen din i detalj...';

  @override
  String get feedbackSend => 'Send tilbakemelding';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Din tilbakemelding er mottatt og hjelper oss med å forbedre Lista Plus for alle.';

  @override
  String get feedbackBack => 'Tilbake';

  @override
  String feedbackError(String error) {
    return 'Feil ved sending: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igjen';

  @override
  String get feedbackSettingsTitle => 'Send tilbakemelding';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter feil, foreslå forbedringer, eller fiks oversettelser';

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
