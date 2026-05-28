// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Nakupovalni seznam';

  @override
  String get lists => 'Seznami';

  @override
  String get pantry => 'Shramba';

  @override
  String get cancel => 'Prekliči';

  @override
  String get save => 'Shrani';

  @override
  String get create => 'Ustvari';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Odstrani';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get copy => 'Kopiraj';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get regenerate => 'Znova ustvari';

  @override
  String get copiedToClipboard => 'Kopirano v odložišče';

  @override
  String get confirm => 'Potrdi';

  @override
  String get close => 'Zapri';

  @override
  String get import => 'Uvozi';

  @override
  String get rename => 'Preimenuj';

  @override
  String get upgrade => 'Nadgradi';

  @override
  String get clear => 'Počisti';

  @override
  String error(String message) {
    return 'Napaka: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Napaka: $message';
  }

  @override
  String get purchaseError => 'Napaka pri obdelavi nakupa. Poskusite znova.';

  @override
  String get restoreError => 'Napaka pri obnovi nakupov. Poskusite znova.';

  @override
  String get loading => 'Nalaganje...';

  @override
  String get fieldRequired => 'Obvezno polje';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izbranih $count',
      few: 'Izbrani $count',
      two: 'Izbrana $count',
      one: 'Izbran $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Ocenjeno';

  @override
  String get alreadyPurchased => 'Že kupljeno';

  @override
  String get clearList => 'Počisti seznam';

  @override
  String get clearPurchased => 'Počisti kupljeno';

  @override
  String get share => 'Deli';

  @override
  String get shareViaCode => 'Deli prek kode';

  @override
  String get importViaCode => 'Uvozi prek kode';

  @override
  String get listAssistant => 'Pomočnik seznama';

  @override
  String get globalAssistant => 'Globalni pomočnik';

  @override
  String get becomePremium => 'Postani Premium';

  @override
  String get manageSubscription => 'Upravljaj naročnino';

  @override
  String get completePurchase => 'Zaključi nakup';

  @override
  String get confirmClearList => 'Odstranim vse predmete?';

  @override
  String get shareListTitle => 'Deli seznam';

  @override
  String get shareThisCode => 'Delite to kodo:';

  @override
  String get validForLimitedTime => 'Velja omejen čas';

  @override
  String get importListTitle => 'Uvozi seznam';

  @override
  String get enterCodeHint => 'Vnesite kodo';

  @override
  String get confirmArchiveTitle => 'Zaključi nakup';

  @override
  String get confirmArchiveContent => 'Zaključim ta nakup in arhiviram seznam?';

  @override
  String get complete => 'Zaključi';

  @override
  String get listArchived => 'Seznam uspešno arhiviran!';

  @override
  String listAdded(String listName) {
    return '$listName dodan!';
  }

  @override
  String get buy => 'Kupi';

  @override
  String get unmark => 'Odznači';

  @override
  String confirmDeleteItems(int count) {
    return 'Odstranim $count predmet(e/ov)?';
  }

  @override
  String get confirmDeleteTitle => 'Potrdi';

  @override
  String confirmContent(int count) {
    return 'Odstranim $count predmet(e/ov)?';
  }

  @override
  String get archiveList => 'Arhiviraj seznam';

  @override
  String get pantryAppBar => 'Shramba';

  @override
  String get generateShoppingList => 'Ustvari nakupovalni seznam';

  @override
  String get pantryEmpty => 'Prazna shramba';

  @override
  String get pantryEmptySubtitle => 'Dodajte izdelke, ki jih želite imeti doma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit predmet(e/ov) je treba kupiti';
  }

  @override
  String get noItemsToBuy => 'Ni predmetov za nakup';

  @override
  String get newPantryList => 'Nakup iz shrambe';

  @override
  String get newListTitle => 'Nov nakupovalni seznam';

  @override
  String itemsWillBeAdded(int count) {
    return '$count predmet(e/ov) bo dodanih';
  }

  @override
  String get listNameLabel => 'Ime seznama';

  @override
  String listCreated(String name, int count) {
    return 'Seznam \"$name\" ustvarjen s $count predmeti';
  }

  @override
  String get noTracking => 'Brez sledenja';

  @override
  String get markAsPurchased => 'Označi kot kupljeno';

  @override
  String editPantryItem(String name) {
    return 'Uredi $name';
  }

  @override
  String get idealQuantity => 'Idealna količina';

  @override
  String get currentQuantity => 'Trenutna količina';

  @override
  String get consumed => 'Porabljeno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name dopolnjen na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Odstranim \"$name\" iz shrambe?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Uredi $name';
  }

  @override
  String get settingsAppBar => 'Nastavitve';

  @override
  String get language => 'Jezik';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Privzeto sistem';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Videz';

  @override
  String get light => 'Svetlo';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Temno';

  @override
  String get themeColor => 'Barva teme';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Mesečni proračun';

  @override
  String get budgetSubtitle => 'Spremljajte svoje mesečne stroške';

  @override
  String get data => 'Podatki';

  @override
  String get backupNav => 'Varnostna kopija';

  @override
  String get backupSubtitle => 'Izvozi ali uvozi svoje podatke';

  @override
  String get about => 'O aplikaciji';

  @override
  String get version => 'Različica';

  @override
  String get privacy => 'Zasebnost';

  @override
  String get termsOfUse => 'Pogoji uporabe';

  @override
  String get backupTitle => 'Varnostna kopija';

  @override
  String get backupPremiumDescription =>
      'Varnostno kopiranje in izvoz sta premium funkciji';

  @override
  String get exportData => 'Izvozi podatke';

  @override
  String get exportDataSubtitle => 'Shrani vse sezname kot JSON';

  @override
  String get importData => 'Uvozi podatke';

  @override
  String get importDataSubtitle => 'Obnovi sezname iz JSON';

  @override
  String get importJsonTitle => 'Uvozi JSON';

  @override
  String get importJsonHint => 'Prilepite JSON varnostne kopije sem...';

  @override
  String get backupExported => 'Varnostna kopija izvožena!';

  @override
  String get budgetAppBar => 'Mesečni proračun';

  @override
  String get budgetPremiumLocked => 'Globalni mesečni proračun je premium';

  @override
  String get budgetUpgradePrompt => 'Nadgradite za odklep';

  @override
  String get noBudgetDefined => 'Proračun ni nastavljen';

  @override
  String totalEstimated(String amount) {
    return 'Skupaj ocenjeno: $amount';
  }

  @override
  String get setBudgetButton => 'Nastavi proračun';

  @override
  String get budgetLists => 'Seznami';

  @override
  String get budgetValueLabel => 'Znesek';

  @override
  String get setBudgetTitle => 'Mesečni proračun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Vse';

  @override
  String get filterPending => 'Nerešeno';

  @override
  String get filterPurchased => 'Kupljeno';

  @override
  String get sortName => 'Ime';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ročno';

  @override
  String get addItem => 'Dodaj predmet';

  @override
  String get itemName => 'Ime predmeta';

  @override
  String get quantityShort => 'Kol.';

  @override
  String get unit => 'Enota';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Ocenjena cena';

  @override
  String get addItemPrice => 'Ocenjena cena';

  @override
  String get editItem => 'Uredi predmet';

  @override
  String get quantityFull => 'Količina';

  @override
  String get editItemPrice => 'Ocenjena cena';

  @override
  String get addToPantry => 'Dodaj v shrambo';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodam \"$name\" v vašo shrambo?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Ime izdelka';

  @override
  String get idealQty => 'Idealna kol.';

  @override
  String get currentQty => 'Trenutna kol.';

  @override
  String get trackStock => 'Spremljaj zalogo';

  @override
  String get trackStockActive => 'Prikaže se v nakupovalnih predlogih';

  @override
  String get trackStockInactive => 'Ne ustvarja nakupovalnega predloga';

  @override
  String get createListDialog => 'Ustvari seznam';

  @override
  String get renameListDialog => 'Preimenuj seznam';

  @override
  String get listHistory => 'Zgodovina seznamov';

  @override
  String get myLists => 'Moji seznami';

  @override
  String get viewActive => 'Pokaži aktivne';

  @override
  String get viewHistory => 'Pokaži zgodovino';

  @override
  String get noArchivedLists => 'Ni arhiviranih seznamov';

  @override
  String get noActiveLists => 'Ni aktivnih seznamov';

  @override
  String completedOn(String date) {
    return 'Zaključeno $date';
  }

  @override
  String get sharedLabel => 'Skupni';

  @override
  String get restore => 'Obnovi';

  @override
  String get removeSharedTooltip => 'Odstrani';

  @override
  String get deleteListTitle => 'Izbriši seznam';

  @override
  String deleteListContent(String name) {
    return 'Ali ste prepričani, da želite izbrisati \"$name\"? Vsi predmeti bodo odstranjeni.';
  }

  @override
  String get removeSharedListTitle => 'Odstrani skupni seznam';

  @override
  String removeSharedListContent(String name) {
    return 'Odstranim \"$name\" iz vaših seznamov? Prvotni seznam ne bo prizadet.';
  }

  @override
  String get createNewList => 'Ustvari nov seznam';

  @override
  String get aiAssistant => 'AI pomočnik';

  @override
  String get aiAssistantDescription =>
      'Pridobite pametne predloge, recepte in personalizirane nasvete z našim AI pomočnikom.';

  @override
  String get generalAssistant => 'Splošni pomočnik';

  @override
  String get clearHistory => 'Počisti zgodovino';

  @override
  String get clearHistoryConfirm => 'Izbrišem vsa sporočila v tej seji?';

  @override
  String get chatHint => 'Vpišite svoje sporočilo...';

  @override
  String chatError(String error) {
    return 'Napaka pri nalaganju klepeta: $error';
  }

  @override
  String get listHelp => 'Kako lahko pomagam z vašim seznamom?';

  @override
  String get generalHelp => 'Kako vam lahko danes pomagam pri nakupovanju?';

  @override
  String get chatSubtitle =>
      'Vprašajte za predloge predmetov, recepte ali nasvete za varčevanje.';

  @override
  String get aiError =>
      'Oprostite, prišlo je do napake pri obdelavi vaše zahteve. Preverite povezavo ali poskusite znova pozneje.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Prijavite se za odklep\npremium funkcij';

  @override
  String get signInGoogle => 'Prijava z Google';

  @override
  String get signInApple => 'Prijava z Apple';

  @override
  String get continueAsGuest => 'Nadaljuj kot gost';

  @override
  String loginError(String error) {
    return 'Napaka pri prijavi: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Nadgradite za odklep';

  @override
  String get itemRemoved => 'Predmet odstranjen';

  @override
  String get undo => 'Razveljavi';

  @override
  String get emptyListTitle => 'Vaš seznam je prazen';

  @override
  String get emptyListSubtitle => 'Dodajte predmete za začetek';

  @override
  String get noListFoundTitle => 'Ni najdenih seznamov';

  @override
  String get noListFoundSubtitle => 'Ustvarite svoj prvi seznam za začetek';

  @override
  String get createFirstList => 'Ustvari prvi seznam';

  @override
  String get listBudgetTitle => 'Proračun seznama';

  @override
  String get budgetAmountLabel => 'Znesek proračuna';

  @override
  String get removeBudget => 'Odstrani';

  @override
  String get prefUnlimitedLists => 'Neomejeni seznami';

  @override
  String get prefSharing => 'Deli sezname';

  @override
  String get prefFullHistory => 'Popolna zgodovina';

  @override
  String get prefExportData => 'Izvozi podatke';

  @override
  String get prefCustomThemes => 'Poljubne teme';

  @override
  String get prefMonthlyBudget => 'Globalni mesečni proračun';

  @override
  String get prefAIAssistant => 'Osebni AI pomočnik';

  @override
  String get prefUnlimitedPantry => 'Neomejena shramba';

  @override
  String get prefInteractiveArtifacts => 'Interaktivni AI artefakti';

  @override
  String get themeGreen => 'Zelena';

  @override
  String get themeBlue => 'Modra';

  @override
  String get themePurple => 'Vijolična';

  @override
  String get themeRed => 'Rdeča';

  @override
  String get themeOrange => 'Oranžna';

  @override
  String get themePink => 'Roza';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantarna';

  @override
  String get themeTeal => 'Zelenkasto modra';

  @override
  String get themeBrown => 'Rjava';

  @override
  String get catFruits => 'Sadje';

  @override
  String get catCleaning => 'Čiščenje';

  @override
  String get catBeverages => 'Pijače';

  @override
  String get catBakery => 'Pekarna';

  @override
  String get catOthers => 'Drugo';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Nakupovalni seznam';

  @override
  String get monthlyBudgetTitle => 'Mesečni proračun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Izbriši seznam';

  @override
  String get pantryItemRemoved => 'Predmet odstranjen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit predmetov je treba kupiti',
      few: '$deficit predmete je treba kupiti',
      two: '$deficit predmeta je treba kupiti',
      one: '$deficit predmet je treba kupiti',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Skupaj voziček';

  @override
  String get restockLabel => 'Dopolni';

  @override
  String get advancedFeatures => 'Napredne funkcije';

  @override
  String get selectAll => 'Izberi vse';

  @override
  String get deselectAll => 'Odznači vse';

  @override
  String get monthlyBudgetAppBar => 'Mesečni proračun';

  @override
  String get budgetEditTitle => 'Mesečni proračun';

  @override
  String get budgetDashboardTitle => 'Nadzorna plošča';

  @override
  String get selectListForDashboard =>
      'Izberite seznam za ogled nadzorne plošče.';

  @override
  String get spendingAnalysis => 'Analiza porabe';

  @override
  String get noItemsToAnalyze => 'Ni predmetov v seznamu za analizo.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označite predmete kot kupljene za ogled analize.';

  @override
  String get totalSpending => 'Skupaj porabljeno';

  @override
  String get spendingByCategory => 'Poraba po kategorijah';

  @override
  String get achievements => 'Dosežki';

  @override
  String get exportPdfExcel => 'Izvozi PDF/Excel';

  @override
  String get exportPdf => 'Izvozi kot PDF';

  @override
  String get exportExcel => 'Izvozi kot Excel';

  @override
  String get organizingAi => 'ORGANIZIRANJE Z AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Moj nakupovalni seznam';

  @override
  String get emptyListAddItems =>
      'Vaš seznam je prazen! Najprej dodajte predmete. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Seznam čarobno organiziran po kategorijah! ✨';

  @override
  String get shoppingMode => 'Način nakupovanja';

  @override
  String get smartOrganization => 'Pametna organizacija';

  @override
  String get savings => 'Prihranki';

  @override
  String get shoppingModeHeader => 'NAČIN NAKUPOVANJA';

  @override
  String get shareAsText => 'Pošlji predmete kot oblikovano besedilo';

  @override
  String get shareRealtime => 'Sinhronizacija v realnem času z drugimi';

  @override
  String get quickRecipe => 'Hitri recept';

  @override
  String get quickRecipePrompt =>
      'Predlagaj recepte s predmeti iz mojega seznama.';

  @override
  String get economyTips => 'Nasveti za varčevanje';

  @override
  String get economyTipsPrompt => 'Kako lahko prihranim pri tem nakupu?';

  @override
  String get organizeAisles => 'Organiziraj po oddelkih';

  @override
  String get organizeAislesPrompt => 'Organiziraj po trgovskih oddelkih.';

  @override
  String get recipeSuggestion => 'Predlog recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Preostalo $remaining kreditov';
  }

  @override
  String get addAllToList => 'Dodaj vse na seznam';

  @override
  String get organizeByAisles => 'Organiziraj po oddelkih';

  @override
  String get voiceTranscriptionTooltip => 'Govorno tipkanje (Brezplačno)';

  @override
  String get aiVoiceCommandTooltip => 'AI glasovni ukaz (Premium)';

  @override
  String get voiceCommandTitle => 'AI glasovni ukaz';

  @override
  String get voiceCommandContent =>
      'Govorite naravno za upravljanje svojega seznama!\n\nPrimeri:\n• \'Dodaj kruh, sir in šunko\'\n• \'Odstrani pralni prašek\'\n• \'Spremeni temo v modro\'\n\nTo je ekskluzivna funkcija Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pokaži načrte';

  @override
  String get itemsAddedSuccess => 'Predmeti uspešno dodani na seznam!';

  @override
  String get viewList => 'Pokaži seznam';

  @override
  String get feedbackTitle => 'Pošlji povratne informacije';

  @override
  String get feedbackPrompt => 'Kaj želite deliti?';

  @override
  String get feedbackTypeBug => 'Prijavi napako';

  @override
  String get feedbackTypeBugHint => 'Nekaj ne deluje';

  @override
  String get feedbackTypeSuggestion => 'Predlog';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja za izboljšanje aplikacije';

  @override
  String get feedbackTypeTranslation => 'Težava s prevodom';

  @override
  String get feedbackTypeTranslationHint => 'Napačen ali nenaraven prevod';

  @override
  String get feedbackTypeFeature => 'Zahteva za funkcijo';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, ki bi jo želeli videti';

  @override
  String get feedbackTypeOther => 'Drugo';

  @override
  String get feedbackTypeOtherHint => 'Druga vrsta povratnih informacij';

  @override
  String get feedbackHint => 'Podrobno opišite svoje povratne informacije...';

  @override
  String get feedbackSend => 'Pošlji povratne informacije';

  @override
  String get feedbackSending => 'Pošiljanje...';

  @override
  String get feedbackThankYou => 'Hvala!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše povratne informacije so bile prejete in nam pomagajo izboljšati Lista Plus za vse.';

  @override
  String get feedbackBack => 'Nazaj';

  @override
  String feedbackError(String error) {
    return 'Napaka pri pošiljanju: $error';
  }

  @override
  String get feedbackRetry => 'Poskusi znova';

  @override
  String get feedbackSettingsTitle => 'Pošlji povratne informacije';

  @override
  String get feedbackSettingsSubtitle =>
      'Prijavite napake, predlagajte izboljšave ali popravite prevode';

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
