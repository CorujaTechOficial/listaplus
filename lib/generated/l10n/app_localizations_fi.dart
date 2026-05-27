// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Ostoslista';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Ruokakomero';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get create => 'Luo';

  @override
  String get add => 'Lisää';

  @override
  String get remove => 'Poista';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokkaa';

  @override
  String get copy => 'Kopioi';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get regenerate => 'Luo uudelleen';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle';

  @override
  String get confirm => 'Vahvista';

  @override
  String get close => 'Sulje';

  @override
  String get import => 'Tuo';

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get upgrade => 'Päivitä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String error(String message) {
    return 'Virhe: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Virhe: $message';
  }

  @override
  String get purchaseError => 'Virhe ostoksen käsittelyssä. Yritä uudelleen.';

  @override
  String get restoreError => 'Virhe ostosten palauttamisessa. Yritä uudelleen.';

  @override
  String get loading => 'Ladataan...';

  @override
  String get fieldRequired => 'Pakollinen kenttä';

  @override
  String get addedFeedback => 'Lisätty!';

  @override
  String selectedItems(int count) {
    return 'Valittu $count';
  }

  @override
  String get estimated => 'Arvioitu';

  @override
  String get alreadyPurchased => 'Jo ostettu';

  @override
  String get clearList => 'Tyhjennä lista';

  @override
  String get clearPurchased => 'Tyhjennä ostetut';

  @override
  String get share => 'Jaa';

  @override
  String get shareViaCode => 'Jaa koodilla';

  @override
  String get importViaCode => 'Tuo koodilla';

  @override
  String get listAssistant => 'Lista-assistentti';

  @override
  String get globalAssistant => 'Yleinen assistentti';

  @override
  String get becomePremium => 'Hanki Premium';

  @override
  String get manageSubscription => 'Hallinnoi tilausta';

  @override
  String get completePurchase => 'Suorita osto';

  @override
  String get confirmClearList => 'Poistetaanko kaikki kohteet?';

  @override
  String get shareListTitle => 'Jaa lista';

  @override
  String get shareThisCode => 'Jaa tämä koodi:';

  @override
  String get validForLimitedTime => 'Voimassa rajoitetun ajan';

  @override
  String get importListTitle => 'Tuo lista';

  @override
  String get enterCodeHint => 'Syötä koodi';

  @override
  String get confirmArchiveTitle => 'Suorita osto';

  @override
  String get confirmArchiveContent =>
      'Suoritetaanko tämä osto ja arkistoidaan lista?';

  @override
  String get complete => 'Suorita';

  @override
  String get listArchived => 'Lista arkistoitu onnistuneesti!';

  @override
  String listAdded(String listName) {
    return '$listName lisätty!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Poista merkintä';

  @override
  String confirmDeleteItems(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get confirmDeleteTitle => 'Vahvista';

  @override
  String confirmContent(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get archiveList => 'Arkistoi lista';

  @override
  String get pantryAppBar => 'Ruokakomero';

  @override
  String get generateShoppingList => 'Luo ostoslista';

  @override
  String get pantryEmpty => 'Tyhjä ruokakomero';

  @override
  String get pantryEmptySubtitle =>
      'Lisää tuotteita, joita haluat pitää kotona';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get noItemsToBuy => 'Ei ostettavia kohteita';

  @override
  String get newPantryList => 'Ruokakomero-ostokset';

  @override
  String get newListTitle => 'Uusi ostoslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count kohde(tta) lisätään';
  }

  @override
  String get listNameLabel => 'Listan nimi';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" luotu $count kohteella';
  }

  @override
  String get noTracking => 'Ei seurantaa';

  @override
  String get markAsPurchased => 'Merkitse ostetuksi';

  @override
  String editPantryItem(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get idealQuantity => 'Ihannemäärä';

  @override
  String get currentQuantity => 'Nykyinen määrä';

  @override
  String get consumed => 'Kulutettu';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täydennetty määrään $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Poistetaanko \"$name\" ruokakomerosta?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get settingsAppBar => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Järjestelmän oletus';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get light => 'Vaalea';

  @override
  String get system => 'Järjestelmä';

  @override
  String get dark => 'Tumma';

  @override
  String get themeColor => 'Teeman väri';

  @override
  String get finance => 'Talous';

  @override
  String get monthlyBudgetNav => 'Kuukausibudjetti';

  @override
  String get budgetSubtitle => 'Seuraa kuukausittaisia kulujasi';

  @override
  String get data => 'Tiedot';

  @override
  String get backupNav => 'Varmuuskopio';

  @override
  String get backupSubtitle => 'Vie tai tuo tietosi';

  @override
  String get about => 'Tietoja';

  @override
  String get version => 'Versio';

  @override
  String get privacy => 'Yksityisyys';

  @override
  String get termsOfUse => 'Käyttöehdot';

  @override
  String get backupTitle => 'Varmuuskopio';

  @override
  String get backupPremiumDescription =>
      'Varmuuskopiointi ja vienti on Premium-ominaisuus';

  @override
  String get exportData => 'Vie tiedot';

  @override
  String get exportDataSubtitle => 'Tallenna kaikki listat JSON-muodossa';

  @override
  String get importData => 'Tuo tiedot';

  @override
  String get importDataSubtitle => 'Palauta listat JSON-tiedostosta';

  @override
  String get importJsonTitle => 'Tuo JSON';

  @override
  String get importJsonHint => 'Liitä varmuuskopion JSON tähän...';

  @override
  String get backupExported => 'Varmuuskopio viety!';

  @override
  String get budgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetPremiumLocked => 'Globaali kuukausibudjetti on Premium';

  @override
  String get budgetUpgradePrompt => 'Päivitä avataksesi';

  @override
  String get noBudgetDefined => 'Budjettia ei asetettu';

  @override
  String totalEstimated(String amount) {
    return 'Arvioitu yhteensä: $amount';
  }

  @override
  String get setBudgetButton => 'Aseta budjetti';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuukausibudjetti';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterPending => 'Odottaa';

  @override
  String get filterPurchased => 'Ostetut';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Päivämäärä';

  @override
  String get sortManual => 'Manuaalinen';

  @override
  String get addItem => 'Lisää kohde';

  @override
  String get itemName => 'Kohteen nimi';

  @override
  String get quantityShort => 'Määrä';

  @override
  String get unit => 'Yksikkö';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Arvioitu hinta';

  @override
  String get addItemPrice => 'Arvioitu hinta';

  @override
  String get editItem => 'Muokkaa kohdetta';

  @override
  String get quantityFull => 'Määrä';

  @override
  String get editItemPrice => 'Arvioitu hinta';

  @override
  String get addToPantry => 'Lisää ruokakomeroon';

  @override
  String addToPantryPrompt(String name) {
    return 'Lisätäänkö \"$name\" ruokakomeroosi?';
  }

  @override
  String get yes => 'Kyllä';

  @override
  String get productName => 'Tuotteen nimi';

  @override
  String get idealQty => 'Ihannemäärä';

  @override
  String get currentQty => 'Nykyinen määrä';

  @override
  String get trackStock => 'Seuraa varastoa';

  @override
  String get trackStockActive => 'Näkyy ostoehdotuksissa';

  @override
  String get trackStockInactive => 'Ei luo ostoehdotusta';

  @override
  String get createListDialog => 'Luo lista';

  @override
  String get renameListDialog => 'Nimeä lista uudelleen';

  @override
  String get listHistory => 'Listahistoria';

  @override
  String get myLists => 'Minun listat';

  @override
  String get viewActive => 'Näytä aktiiviset';

  @override
  String get viewHistory => 'Näytä historia';

  @override
  String get noArchivedLists => 'Ei arkistoituja listoja';

  @override
  String get noActiveLists => 'Ei aktiivisia listoja';

  @override
  String completedOn(String date) {
    return 'Suoritettu $date';
  }

  @override
  String get sharedLabel => 'Jaettu';

  @override
  String get restore => 'Palauta';

  @override
  String get removeSharedTooltip => 'Poista';

  @override
  String get deleteListTitle => 'Poista lista';

  @override
  String deleteListContent(String name) {
    return 'Oletko varma, että haluat poistaa \"$name\"? Kaikki kohteet poistetaan.';
  }

  @override
  String get removeSharedListTitle => 'Poista jaettu lista';

  @override
  String removeSharedListContent(String name) {
    return 'Poistetaanko \"$name\" listoistasi? Alkuperäiseen listaan ei kosketa.';
  }

  @override
  String get createNewList => 'Luo uusi lista';

  @override
  String get aiAssistant => 'AI-assistentti';

  @override
  String get aiAssistantDescription =>
      'Saa älykkäitä ehdotuksia, reseptejä ja henkilökohtaisia vinkkejä AI-assistentiltamme.';

  @override
  String get generalAssistant => 'Yleinen assistentti';

  @override
  String get clearHistory => 'Tyhjennä historia';

  @override
  String get clearHistoryConfirm =>
      'Poistetaanko kaikki viestit tästä istunnosta?';

  @override
  String get chatHint => 'Kirjoita viestisi...';

  @override
  String chatError(String error) {
    return 'Virhe ladattaessa chattia: $error';
  }

  @override
  String get listHelp => 'Miten voin auttaa listasi kanssa?';

  @override
  String get generalHelp => 'Miten voin auttaa ostoksissasi tänään?';

  @override
  String get chatSubtitle =>
      'Kysy kohde-ehdotuksia, reseptejä tai säästövinkkejä.';

  @override
  String get aiError =>
      'Anteeksi, pyyntösi käsittelyssä tapahtui virhe. Tarkista yhteys tai yritä myöhemmin uudelleen.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Kirjaudu sisään avataksesi\nPremium-ominaisuudet';

  @override
  String get signInGoogle => 'Kirjaudu Google-tilillä';

  @override
  String get signInApple => 'Kirjaudu Apple-tilillä';

  @override
  String get continueAsGuest => 'Jatka vieraana';

  @override
  String loginError(String error) {
    return 'Kirjautumisvirhe: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Päivitä avataksesi';

  @override
  String get itemRemoved => 'Kohde poistettu';

  @override
  String get undo => 'Kumoa';

  @override
  String get emptyListTitle => 'Listasi on tyhjä';

  @override
  String get emptyListSubtitle => 'Lisää kohteita aloittaaksesi';

  @override
  String get noListFoundTitle => 'Listoja ei löytynyt';

  @override
  String get noListFoundSubtitle => 'Luo ensimmäinen listasi aloittaaksesi';

  @override
  String get createFirstList => 'Luo ensimmäinen lista';

  @override
  String get listBudgetTitle => 'Listan budjetti';

  @override
  String get budgetAmountLabel => 'Budjetin määrä';

  @override
  String get removeBudget => 'Poista';

  @override
  String get prefUnlimitedLists => 'Rajattomat listat';

  @override
  String get prefSharing => 'Jaa listat';

  @override
  String get prefFullHistory => 'Täysi historia';

  @override
  String get prefExportData => 'Vie tiedot';

  @override
  String get prefCustomThemes => 'Mukautetut teemat';

  @override
  String get prefMonthlyBudget => 'Globaali kuukausibudjetti';

  @override
  String get prefAIAssistant => 'Henkilökohtainen AI-assistentti';

  @override
  String get prefUnlimitedPantry => 'Rajaton ruokakomero';

  @override
  String get prefInteractiveArtifacts => 'Interaktiiviset AI-artefaktit';

  @override
  String get themeGreen => 'Vihreä';

  @override
  String get themeBlue => 'Sininen';

  @override
  String get themePurple => 'Violetti';

  @override
  String get themeRed => 'Punainen';

  @override
  String get themeOrange => 'Oranssi';

  @override
  String get themePink => 'Vaaleanpunainen';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Meripihka';

  @override
  String get themeTeal => 'Tavi';

  @override
  String get themeBrown => 'Ruskea';

  @override
  String get catFruits => 'Hedelmät';

  @override
  String get catCleaning => 'Siivous';

  @override
  String get catBeverages => 'Juomat';

  @override
  String get catBakery => 'Leipomo';

  @override
  String get catOthers => 'Muut';

  @override
  String get unitPack => 'pakkaus';

  @override
  String get shareSubject => 'Ostoslista';

  @override
  String get monthlyBudgetTitle => 'Kuukausibudjetti';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Poista lista';

  @override
  String get pantryItemRemoved => 'Kohde poistettu';

  @override
  String deficitItems(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get cartTotal => 'Ostoskorin yhteensä';

  @override
  String get restockLabel => 'Täydennä';

  @override
  String get advancedFeatures => 'Edistyneet ominaisuudet';

  @override
  String get selectAll => 'Valitse kaikki';

  @override
  String get deselectAll => 'Poista kaikki valinnat';

  @override
  String get monthlyBudgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetEditTitle => 'Kuukausibudjetti';

  @override
  String get budgetDashboardTitle => 'Hallintapaneeli';

  @override
  String get selectListForDashboard =>
      'Valitse lista nähdäksesi hallintapaneelin.';

  @override
  String get spendingAnalysis => 'Kulutusanalyysi';

  @override
  String get noItemsToAnalyze => 'Listalla ei ole analysoitavia kohteita.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merkitse kohteet ostetuiksi nähdäksesi analyysin.';

  @override
  String get totalSpending => 'Kulutettu yhteensä';

  @override
  String get spendingByCategory => 'Kulut kategorioittain';

  @override
  String get achievements => 'Saavutukset';

  @override
  String get exportPdfExcel => 'Vie PDF/Excel';

  @override
  String get exportPdf => 'Vie PDF-muodossa';

  @override
  String get exportExcel => 'Vie Excel-muodossa';

  @override
  String get organizingAi => 'JÄRJESTETÄÄN AI:LLA...';

  @override
  String get yesLabel => 'Kyllä';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Ostoslistani';

  @override
  String get emptyListAddItems => 'Listasi on tyhjä! Lisää ensin kohteita. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista maagisesti järjestetty kategorioittain! ✨';

  @override
  String get shoppingMode => 'Ostotila';

  @override
  String get smartOrganization => 'Älykäs järjestys';

  @override
  String get savings => 'Säästöt';

  @override
  String get shoppingModeHeader => 'OSTOTILA';

  @override
  String get shareAsText => 'Lähetä kohteet muotoiltuna tekstinä';

  @override
  String get shareRealtime => 'Reaaliaikainen synkronointi muiden kanssa';

  @override
  String get quickRecipe => 'Nopea resepti';

  @override
  String get quickRecipePrompt => 'Ehdota reseptejä listani kohteilla.';

  @override
  String get economyTips => 'Säästövinkit';

  @override
  String get economyTipsPrompt => 'Kuinka voin säästää rahaa tässä ostoksessa?';

  @override
  String get organizeAisles => 'Järjestä käytävittäin';

  @override
  String get organizeAislesPrompt => 'Järjestä kaupan käytävien mukaan.';

  @override
  String get recipeSuggestion => 'Reseptiehdotus';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediittiä jäljellä';
  }

  @override
  String get addAllToList => 'Lisää kaikki listalle';

  @override
  String get organizeByAisles => 'Järjestä käytävittäin';

  @override
  String get voiceTranscriptionTooltip => 'Puhekirjoitus (Ilmainen)';

  @override
  String get aiVoiceCommandTooltip => 'AI-äänikomento (Premium)';

  @override
  String get voiceCommandTitle => 'AI-äänikomento';

  @override
  String get voiceCommandContent =>
      'Puhu luonnollisesti hallitaksesi listaasi!\n\nEsimerkkejä:\n• \'Lisää leipää, juustoa ja kinkkua\'\n• \'Poista pyykinpesuaine\'\n• \'Vaihda teema siniseksi\'\n\nTämä on Lista Plus Premiumin eksklusiivinen ominaisuus.';

  @override
  String get voiceCommandPlanBtn => 'Katso suunnitelmat';

  @override
  String get itemsAddedSuccess => 'Kohteet lisätty onnistuneesti listalle!';

  @override
  String get viewList => 'Katso lista';

  @override
  String get feedbackTitle => 'Lähetä palautetta';

  @override
  String get feedbackPrompt => 'Mitä haluat jakaa?';

  @override
  String get feedbackTypeBug => 'Ilmoita viasta';

  @override
  String get feedbackTypeBugHint => 'Jokin ei toimi';

  @override
  String get feedbackTypeSuggestion => 'Ehdotus';

  @override
  String get feedbackTypeSuggestionHint => 'Idea sovelluksen parantamiseksi';

  @override
  String get feedbackTypeTranslation => 'Käännösongelma';

  @override
  String get feedbackTypeTranslationHint =>
      'Virheellinen tai luonnoton käännös';

  @override
  String get feedbackTypeFeature => 'Ominaisuusehdotus';

  @override
  String get feedbackTypeFeatureHint => 'Ominaisuus, jonka haluaisit nähdä';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muu palautetyyppi';

  @override
  String get feedbackHint => 'Kuvaile palautteesi yksityiskohtaisesti...';

  @override
  String get feedbackSend => 'Lähetä palautetta';

  @override
  String get feedbackSending => 'Lähetetään...';

  @override
  String get feedbackThankYou => 'Kiitos!';

  @override
  String get feedbackThankYouMessage =>
      'Palautteesi on vastaanotettu ja se auttaa meitä parantamaan Lista Plusia kaikille.';

  @override
  String get feedbackBack => 'Takaisin';

  @override
  String feedbackError(String error) {
    return 'Virhe lähetyksessä: $error';
  }

  @override
  String get feedbackRetry => 'Yritä uudelleen';

  @override
  String get feedbackSettingsTitle => 'Lähetä palautetta';

  @override
  String get feedbackSettingsSubtitle =>
      'Ilmoita vioista, ehdota parannuksia tai korjaa käännöksiä';

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
}

/// The translations for Finnish, as used in Finland (`fi_FI`).
class AppLocalizationsFiFi extends AppLocalizationsFi {
  AppLocalizationsFiFi() : super('fi_FI');

  @override
  String get appTitle => 'Ostoslista';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Ruokakomero';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get create => 'Luo';

  @override
  String get add => 'Lisää';

  @override
  String get remove => 'Poista';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokkaa';

  @override
  String get copy => 'Kopioi';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get regenerate => 'Luo uudelleen';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle';

  @override
  String get confirm => 'Vahvista';

  @override
  String get close => 'Sulje';

  @override
  String get import => 'Tuo';

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get upgrade => 'Päivitä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String error(String message) {
    return 'Virhe: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Virhe: $message';
  }

  @override
  String get purchaseError => 'Virhe ostoksen käsittelyssä. Yritä uudelleen.';

  @override
  String get restoreError => 'Virhe ostosten palauttamisessa. Yritä uudelleen.';

  @override
  String get loading => 'Ladataan...';

  @override
  String get fieldRequired => 'Pakollinen kenttä';

  @override
  String get addedFeedback => 'Lisätty!';

  @override
  String selectedItems(int count) {
    return 'Valittu $count';
  }

  @override
  String get estimated => 'Arvioitu';

  @override
  String get alreadyPurchased => 'Jo ostettu';

  @override
  String get clearList => 'Tyhjennä lista';

  @override
  String get clearPurchased => 'Tyhjennä ostetut';

  @override
  String get share => 'Jaa';

  @override
  String get shareViaCode => 'Jaa koodilla';

  @override
  String get importViaCode => 'Tuo koodilla';

  @override
  String get listAssistant => 'Lista-assistentti';

  @override
  String get globalAssistant => 'Yleinen assistentti';

  @override
  String get becomePremium => 'Hanki Premium';

  @override
  String get manageSubscription => 'Hallinnoi tilausta';

  @override
  String get completePurchase => 'Suorita osto';

  @override
  String get confirmClearList => 'Poistetaanko kaikki kohteet?';

  @override
  String get shareListTitle => 'Jaa lista';

  @override
  String get shareThisCode => 'Jaa tämä koodi:';

  @override
  String get validForLimitedTime => 'Voimassa rajoitetun ajan';

  @override
  String get importListTitle => 'Tuo lista';

  @override
  String get enterCodeHint => 'Syötä koodi';

  @override
  String get confirmArchiveTitle => 'Suorita osto';

  @override
  String get confirmArchiveContent =>
      'Suoritetaanko tämä osto ja arkistoidaan lista?';

  @override
  String get complete => 'Suorita';

  @override
  String get listArchived => 'Lista arkistoitu onnistuneesti!';

  @override
  String listAdded(String listName) {
    return '$listName lisätty!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Poista merkintä';

  @override
  String confirmDeleteItems(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get confirmDeleteTitle => 'Vahvista';

  @override
  String confirmContent(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get archiveList => 'Arkistoi lista';

  @override
  String get pantryAppBar => 'Ruokakomero';

  @override
  String get generateShoppingList => 'Luo ostoslista';

  @override
  String get pantryEmpty => 'Tyhjä ruokakomero';

  @override
  String get pantryEmptySubtitle =>
      'Lisää tuotteita, joita haluat pitää kotona';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get noItemsToBuy => 'Ei ostettavia kohteita';

  @override
  String get newPantryList => 'Ruokakomero-ostokset';

  @override
  String get newListTitle => 'Uusi ostoslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count kohde(tta) lisätään';
  }

  @override
  String get listNameLabel => 'Listan nimi';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" luotu $count kohteella';
  }

  @override
  String get noTracking => 'Ei seurantaa';

  @override
  String get markAsPurchased => 'Merkitse ostetuksi';

  @override
  String editPantryItem(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get idealQuantity => 'Ihannemäärä';

  @override
  String get currentQuantity => 'Nykyinen määrä';

  @override
  String get consumed => 'Kulutettu';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täydennetty määrään $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Poistetaanko \"$name\" ruokakomerosta?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get settingsAppBar => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Järjestelmän oletus';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get light => 'Vaalea';

  @override
  String get system => 'Järjestelmä';

  @override
  String get dark => 'Tumma';

  @override
  String get themeColor => 'Teeman väri';

  @override
  String get finance => 'Talous';

  @override
  String get monthlyBudgetNav => 'Kuukausibudjetti';

  @override
  String get budgetSubtitle => 'Seuraa kuukausittaisia kulujasi';

  @override
  String get data => 'Tiedot';

  @override
  String get backupNav => 'Varmuuskopio';

  @override
  String get backupSubtitle => 'Vie tai tuo tietosi';

  @override
  String get about => 'Tietoja';

  @override
  String get version => 'Versio';

  @override
  String get privacy => 'Yksityisyys';

  @override
  String get termsOfUse => 'Käyttöehdot';

  @override
  String get backupTitle => 'Varmuuskopio';

  @override
  String get backupPremiumDescription =>
      'Varmuuskopiointi ja vienti on Premium-ominaisuus';

  @override
  String get exportData => 'Vie tiedot';

  @override
  String get exportDataSubtitle => 'Tallenna kaikki listat JSON-muodossa';

  @override
  String get importData => 'Tuo tiedot';

  @override
  String get importDataSubtitle => 'Palauta listat JSON-tiedostosta';

  @override
  String get importJsonTitle => 'Tuo JSON';

  @override
  String get importJsonHint => 'Liitä varmuuskopion JSON tähän...';

  @override
  String get backupExported => 'Varmuuskopio viety!';

  @override
  String get budgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetPremiumLocked => 'Globaali kuukausibudjetti on Premium';

  @override
  String get budgetUpgradePrompt => 'Päivitä avataksesi';

  @override
  String get noBudgetDefined => 'Budjettia ei asetettu';

  @override
  String totalEstimated(String amount) {
    return 'Arvioitu yhteensä: $amount';
  }

  @override
  String get setBudgetButton => 'Aseta budjetti';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuukausibudjetti';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterPending => 'Odottaa';

  @override
  String get filterPurchased => 'Ostetut';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Päivämäärä';

  @override
  String get sortManual => 'Manuaalinen';

  @override
  String get addItem => 'Lisää kohde';

  @override
  String get itemName => 'Kohteen nimi';

  @override
  String get quantityShort => 'Määrä';

  @override
  String get unit => 'Yksikkö';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Arvioitu hinta';

  @override
  String get addItemPrice => 'Arvioitu hinta';

  @override
  String get editItem => 'Muokkaa kohdetta';

  @override
  String get quantityFull => 'Määrä';

  @override
  String get editItemPrice => 'Arvioitu hinta';

  @override
  String get addToPantry => 'Lisää ruokakomeroon';

  @override
  String addToPantryPrompt(String name) {
    return 'Lisätäänkö \"$name\" ruokakomeroosi?';
  }

  @override
  String get yes => 'Kyllä';

  @override
  String get productName => 'Tuotteen nimi';

  @override
  String get idealQty => 'Ihannemäärä';

  @override
  String get currentQty => 'Nykyinen määrä';

  @override
  String get trackStock => 'Seuraa varastoa';

  @override
  String get trackStockActive => 'Näkyy ostoehdotuksissa';

  @override
  String get trackStockInactive => 'Ei luo ostoehdotusta';

  @override
  String get createListDialog => 'Luo lista';

  @override
  String get renameListDialog => 'Nimeä lista uudelleen';

  @override
  String get listHistory => 'Listahistoria';

  @override
  String get myLists => 'Minun listat';

  @override
  String get viewActive => 'Näytä aktiiviset';

  @override
  String get viewHistory => 'Näytä historia';

  @override
  String get noArchivedLists => 'Ei arkistoituja listoja';

  @override
  String get noActiveLists => 'Ei aktiivisia listoja';

  @override
  String completedOn(String date) {
    return 'Suoritettu $date';
  }

  @override
  String get sharedLabel => 'Jaettu';

  @override
  String get restore => 'Palauta';

  @override
  String get removeSharedTooltip => 'Poista';

  @override
  String get deleteListTitle => 'Poista lista';

  @override
  String deleteListContent(String name) {
    return 'Oletko varma, että haluat poistaa \"$name\"? Kaikki kohteet poistetaan.';
  }

  @override
  String get removeSharedListTitle => 'Poista jaettu lista';

  @override
  String removeSharedListContent(String name) {
    return 'Poistetaanko \"$name\" listoistasi? Alkuperäiseen listaan ei kosketa.';
  }

  @override
  String get createNewList => 'Luo uusi lista';

  @override
  String get aiAssistant => 'AI-assistentti';

  @override
  String get aiAssistantDescription =>
      'Saa älykkäitä ehdotuksia, reseptejä ja henkilökohtaisia vinkkejä AI-assistentiltamme.';

  @override
  String get generalAssistant => 'Yleinen assistentti';

  @override
  String get clearHistory => 'Tyhjennä historia';

  @override
  String get clearHistoryConfirm =>
      'Poistetaanko kaikki viestit tästä istunnosta?';

  @override
  String get chatHint => 'Kirjoita viestisi...';

  @override
  String chatError(String error) {
    return 'Virhe ladattaessa chattia: $error';
  }

  @override
  String get listHelp => 'Miten voin auttaa listasi kanssa?';

  @override
  String get generalHelp => 'Miten voin auttaa ostoksissasi tänään?';

  @override
  String get chatSubtitle =>
      'Kysy kohde-ehdotuksia, reseptejä tai säästövinkkejä.';

  @override
  String get aiError =>
      'Anteeksi, pyyntösi käsittelyssä tapahtui virhe. Tarkista yhteys tai yritä myöhemmin uudelleen.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Kirjaudu sisään avataksesi Premium-ominaisuudet';

  @override
  String get signInGoogle => 'Kirjaudu Google-tilillä';

  @override
  String get signInApple => 'Kirjaudu Apple-tilillä';

  @override
  String get continueAsGuest => 'Jatka vieraana';

  @override
  String loginError(String error) {
    return 'Kirjautumisvirhe: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Päivitä avataksesi';

  @override
  String get itemRemoved => 'Kohde poistettu';

  @override
  String get undo => 'Kumoa';

  @override
  String get emptyListTitle => 'Listasi on tyhjä';

  @override
  String get emptyListSubtitle => 'Lisää kohteita aloittaaksesi';

  @override
  String get noListFoundTitle => 'Listoja ei löytynyt';

  @override
  String get noListFoundSubtitle => 'Luo ensimmäinen listasi aloittaaksesi';

  @override
  String get createFirstList => 'Luo ensimmäinen lista';

  @override
  String get listBudgetTitle => 'Listan budjetti';

  @override
  String get budgetAmountLabel => 'Budjetin määrä';

  @override
  String get removeBudget => 'Poista';

  @override
  String get prefUnlimitedLists => 'Rajattomat listat';

  @override
  String get prefSharing => 'Jaa listat';

  @override
  String get prefFullHistory => 'Täysi historia';

  @override
  String get prefExportData => 'Vie tiedot';

  @override
  String get prefCustomThemes => 'Mukautetut teemat';

  @override
  String get prefMonthlyBudget => 'Globaali kuukausibudjetti';

  @override
  String get prefAIAssistant => 'Henkilökohtainen AI-assistentti';

  @override
  String get prefUnlimitedPantry => 'Rajaton ruokakomero';

  @override
  String get prefInteractiveArtifacts => 'Interaktiiviset AI-artefaktit';

  @override
  String get themeGreen => 'Vihreä';

  @override
  String get themeBlue => 'Sininen';

  @override
  String get themePurple => 'Violetti';

  @override
  String get themeRed => 'Punainen';

  @override
  String get themeOrange => 'Oranssi';

  @override
  String get themePink => 'Vaaleanpunainen';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Meripihka';

  @override
  String get themeTeal => 'Tavi';

  @override
  String get themeBrown => 'Ruskea';

  @override
  String get catFruits => 'Hedelmät';

  @override
  String get catCleaning => 'Siivous';

  @override
  String get catBeverages => 'Juomat';

  @override
  String get catBakery => 'Leipomo';

  @override
  String get catOthers => 'Muut';

  @override
  String get unitPack => 'pakkaus';

  @override
  String get shareSubject => 'Ostoslista';

  @override
  String get monthlyBudgetTitle => 'Kuukausibudjetti';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Poista lista';

  @override
  String get pantryItemRemoved => 'Kohde poistettu';

  @override
  String deficitItems(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get cartTotal => 'Ostoskorin yhteensä';

  @override
  String get restockLabel => 'Täydennä';

  @override
  String get advancedFeatures => 'Edistyneet ominaisuudet';

  @override
  String get selectAll => 'Valitse kaikki';

  @override
  String get deselectAll => 'Poista kaikki valinnat';

  @override
  String get monthlyBudgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetEditTitle => 'Kuukausibudjetti';

  @override
  String get budgetDashboardTitle => 'Hallintapaneeli';

  @override
  String get selectListForDashboard =>
      'Valitse lista nähdäksesi hallintapaneelin.';

  @override
  String get spendingAnalysis => 'Kulutusanalyysi';

  @override
  String get noItemsToAnalyze => 'Listalla ei ole analysoitavia kohteita.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merkitse kohteet ostetuiksi nähdäksesi analyysin.';

  @override
  String get totalSpending => 'Kulutettu yhteensä';

  @override
  String get spendingByCategory => 'Kulut kategorioittain';

  @override
  String get achievements => 'Saavutukset';

  @override
  String get exportPdfExcel => 'Vie PDF/Excel';

  @override
  String get exportPdf => 'Vie PDF-muodossa';

  @override
  String get exportExcel => 'Vie Excel-muodossa';

  @override
  String get organizingAi => 'JÄRJESTETÄÄN AI:LLA...';

  @override
  String get yesLabel => 'Kyllä';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Ostoslistani';

  @override
  String get emptyListAddItems => 'Listasi on tyhjä! Lisää ensin kohteita. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista maagisesti järjestetty kategorioittain! ✨';

  @override
  String get shoppingMode => 'Ostotila';

  @override
  String get smartOrganization => 'Älykäs järjestys';

  @override
  String get savings => 'Säästöt';

  @override
  String get shoppingModeHeader => 'OSTOTILA';

  @override
  String get shareAsText => 'Lähetä kohteet muotoiltuna tekstinä';

  @override
  String get shareRealtime => 'Reaaliaikainen synkronointi muiden kanssa';

  @override
  String get quickRecipe => 'Nopea resepti';

  @override
  String get quickRecipePrompt => 'Ehdota reseptejä listani kohteilla.';

  @override
  String get economyTips => 'Säästövinkit';

  @override
  String get economyTipsPrompt => 'Kuinka voin säästää rahaa tässä ostoksessa?';

  @override
  String get organizeAisles => 'Järjestä käytävittäin';

  @override
  String get organizeAislesPrompt => 'Järjestä kaupan käytävien mukaan.';

  @override
  String get recipeSuggestion => 'Reseptiehdotus';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediittiä jäljellä';
  }

  @override
  String get addAllToList => 'Lisää kaikki listalle';

  @override
  String get organizeByAisles => 'Järjestä käytävittäin';

  @override
  String get voiceTranscriptionTooltip => 'Puhekirjoitus (Ilmainen)';

  @override
  String get aiVoiceCommandTooltip => 'AI-äänikomento (Premium)';

  @override
  String get voiceCommandTitle => 'AI-äänikomento';

  @override
  String get voiceCommandContent =>
      'Puhu luonnollisesti hallitaksesi listaasi!\n\nEsimerkkejä:\n• \'Lisää leipää, juustoa ja kinkkua\'\n• \'Poista pyykinpesuaine\'\n• \'Vaihda teema siniseksi\'\n\nTämä on Lista Plus Premiumin eksklusiivinen ominaisuus.';

  @override
  String get voiceCommandPlanBtn => 'Katso suunnitelmat';

  @override
  String get itemsAddedSuccess => 'Kohteet lisätty onnistuneesti listalle!';

  @override
  String get viewList => 'Katso lista';

  @override
  String get feedbackTitle => 'Lähetä palautetta';

  @override
  String get feedbackPrompt => 'Mitä haluaisit jakaa?';

  @override
  String get feedbackTypeBug => 'Ilmoita viasta';

  @override
  String get feedbackTypeBugHint => 'Jokin ei toimi';

  @override
  String get feedbackTypeSuggestion => 'Ehdotus';

  @override
  String get feedbackTypeSuggestionHint => 'Idea sovelluksen parantamiseksi';

  @override
  String get feedbackTypeTranslation => 'Käännösvirhe';

  @override
  String get feedbackTypeTranslationHint => 'Virheellinen tai kömpelö käännös';

  @override
  String get feedbackTypeFeature => 'Ominaisuuspyyntö';

  @override
  String get feedbackTypeFeatureHint => 'Ominaisuus, jonka haluaisit nähdä';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muun tyyppinen palaute';

  @override
  String get feedbackHint => 'Kuvaile palautettasi yksityiskohtaisesti...';

  @override
  String get feedbackSend => 'Lähetä palaute';

  @override
  String get feedbackSending => 'Lähetetään...';

  @override
  String get feedbackThankYou => 'Kiitos!';

  @override
  String get feedbackThankYouMessage =>
      'Palaute on vastaanotettu ja auttaa meitä parantamaan Lista Plusia kaikille.';

  @override
  String get feedbackBack => 'Takaisin';

  @override
  String feedbackError(String error) {
    return 'Virhe lähetyksessä: $error';
  }

  @override
  String get feedbackRetry => 'Yritä uudelleen';

  @override
  String get feedbackSettingsTitle => 'Lähetä palautetta';

  @override
  String get feedbackSettingsSubtitle =>
      'Ilmoita vioista, ehdota parannuksia tai korjaa käännöksiä';

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
