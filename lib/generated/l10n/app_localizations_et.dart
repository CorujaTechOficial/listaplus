// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Ostunimekiri';

  @override
  String get lists => 'Nimekirjad';

  @override
  String get pantry => 'Sahver';

  @override
  String get cancel => 'Tühista';

  @override
  String get save => 'Salvesta';

  @override
  String get create => 'Loo';

  @override
  String get add => 'Lisa';

  @override
  String get remove => 'Eemalda';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Muuda';

  @override
  String get copy => 'Kopeeri';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get regenerate => 'Loo uuesti';

  @override
  String get copiedToClipboard => 'Lõikelauale kopeeritud';

  @override
  String get confirm => 'Kinnita';

  @override
  String get close => 'Sulge';

  @override
  String get import => 'Impordi';

  @override
  String get rename => 'Nimeta ümber';

  @override
  String get upgrade => 'Täienda';

  @override
  String get clear => 'Tühjenda';

  @override
  String error(String message) {
    return 'Viga: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Viga: $message';
  }

  @override
  String get purchaseError => 'Viga ostu töötlemisel. Proovi uuesti.';

  @override
  String get restoreError => 'Viga ostude taastamisel. Proovi uuesti.';

  @override
  String get loading => 'Laadimine...';

  @override
  String get fieldRequired => 'Kohustuslik väli';

  @override
  String get addedFeedback => 'Lisatud!';

  @override
  String selectedItems(int count) {
    return 'Valitud $count';
  }

  @override
  String get estimated => 'Hinnanguline';

  @override
  String get alreadyPurchased => 'Juba ostetud';

  @override
  String get clearList => 'Tühjenda nimekiri';

  @override
  String get clearPurchased => 'Eemalda ostetud';

  @override
  String get share => 'Jaga';

  @override
  String get shareViaCode => 'Jaga koodiga';

  @override
  String get importViaCode => 'Impordi koodiga';

  @override
  String get listAssistant => 'Nimekirja abiline';

  @override
  String get globalAssistant => 'Üldine abiline';

  @override
  String get becomePremium => 'Hangi Premium';

  @override
  String get manageSubscription => 'Halda tellimust';

  @override
  String get completePurchase => 'Lõpeta ost';

  @override
  String get confirmClearList => 'Eemaldada kõik üksused?';

  @override
  String get shareListTitle => 'Jaga nimekirja';

  @override
  String get shareThisCode => 'Jaga seda koodi:';

  @override
  String get validForLimitedTime => 'Kehtib piiratud aja';

  @override
  String get importListTitle => 'Impordi nimekiri';

  @override
  String get enterCodeHint => 'Sisesta kood';

  @override
  String get confirmArchiveTitle => 'Lõpeta ost';

  @override
  String get confirmArchiveContent =>
      'Lõpetada see ost ja arhiveerida nimekiri?';

  @override
  String get complete => 'Lõpeta';

  @override
  String get listArchived => 'Nimekiri edukalt arhiveeritud!';

  @override
  String listAdded(String listName) {
    return '$listName lisatud!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Eemalda märge';

  @override
  String confirmDeleteItems(int count) {
    return 'Eemalda $count üksust?';
  }

  @override
  String get confirmDeleteTitle => 'Kinnita';

  @override
  String confirmContent(int count) {
    return 'Eemalda $count üksust?';
  }

  @override
  String get archiveList => 'Arhiveeri nimekiri';

  @override
  String get pantryAppBar => 'Sahver';

  @override
  String get generateShoppingList => 'Loo ostunimekiri';

  @override
  String get pantryEmpty => 'Tühi sahver';

  @override
  String get pantryEmptySubtitle => 'Lisa tooted, mida soovid kodus hoida';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit üksus(t) vajab ostmist';
  }

  @override
  String get noItemsToBuy => 'Pole vaja osta ühtegi üksust';

  @override
  String get newPantryList => 'Sahvrioste';

  @override
  String get newListTitle => 'Uus ostunimekiri';

  @override
  String itemsWillBeAdded(int count) {
    return 'Lisatakse $count üksus(t)';
  }

  @override
  String get listNameLabel => 'Nimekirja nimi';

  @override
  String listCreated(String name, int count) {
    return 'Nimekiri \"$name\" loodud $count üksusega';
  }

  @override
  String get noTracking => 'Jälgimiseta';

  @override
  String get markAsPurchased => 'Märgi ostetuks';

  @override
  String editPantryItem(String name) {
    return 'Muuda $name';
  }

  @override
  String get idealQuantity => 'Ideaalne kogus';

  @override
  String get currentQuantity => 'Praegune kogus';

  @override
  String get consumed => 'Tarbitud';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täiendatud $quantity $unit-ni';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eemaldada \"$name\" sahvrist?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muuda $name';
  }

  @override
  String get settingsAppBar => 'Seaded';

  @override
  String get language => 'Keel';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Süsteemi vaikeväärtus';

  @override
  String get chooseLanguage => 'Vali keel';

  @override
  String get searchLanguage => 'Otsi keelt...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

  @override
  String get appearance => 'Välimus';

  @override
  String get light => 'Heled';

  @override
  String get system => 'Süsteem';

  @override
  String get dark => 'Tume';

  @override
  String get themeColor => 'Teema värv';

  @override
  String get dynamicColors => 'Dünaamilised värvid';

  @override
  String get dynamicColorsSubtitle => 'Kasuta taustapildil põhinevaid värve';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Rahandus';

  @override
  String get monthlyBudgetNav => 'Kuueelarve';

  @override
  String get budgetSubtitle => 'Jälgi oma igakuiseid kulutusi';

  @override
  String get data => 'Andmed';

  @override
  String get backupNav => 'Varukoopia';

  @override
  String get backupSubtitle => 'Ekspordi või impordi oma andmed';

  @override
  String get about => 'Teave';

  @override
  String get version => 'Versioon';

  @override
  String get privacy => 'Privaatsus';

  @override
  String get termsOfUse => 'Kasutustingimused';

  @override
  String get backupTitle => 'Varukoopia';

  @override
  String get backupPremiumDescription =>
      'Varundamine ja eksport on Premium funktsioon';

  @override
  String get exportData => 'Ekspordi andmed';

  @override
  String get exportDataSubtitle => 'Salvesta kõik nimekirjad JSON-ina';

  @override
  String get importData => 'Impordi andmed';

  @override
  String get importDataSubtitle => 'Taasta nimekirjad JSON-failist';

  @override
  String get importJsonTitle => 'Impordi JSON';

  @override
  String get importJsonHint => 'Kleebi varukoopia JSON siia...';

  @override
  String get backupExported => 'Varukoopia eksporditud!';

  @override
  String get budgetAppBar => 'Kuueelarve';

  @override
  String get budgetPremiumLocked => 'Globaalne kuueelarve on Premium';

  @override
  String get budgetUpgradePrompt => 'Täienda, et avada';

  @override
  String get noBudgetDefined => 'Eelarvet pole määratud';

  @override
  String totalEstimated(String amount) {
    return 'Hinnanguline kogusumma: $amount';
  }

  @override
  String get setBudgetButton => 'Määra eelarve';

  @override
  String get budgetLists => 'Nimekirjad';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuueelarve';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kõik';

  @override
  String get filterPending => 'Ootel';

  @override
  String get filterPurchased => 'Ostetud';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategooria';

  @override
  String get sortDate => 'Kuupäev';

  @override
  String get sortManual => 'Käsitsi';

  @override
  String get addItem => 'Lisa üksus';

  @override
  String get itemName => 'Üksuse nimi';

  @override
  String get quantityShort => 'Kogus';

  @override
  String get unit => 'Ühik';

  @override
  String get category => 'Kategooria';

  @override
  String get estimatedPrice => 'Hinnanguline hind';

  @override
  String get addItemPrice => 'Hinnanguline hind';

  @override
  String get editItem => 'Muuda üksust';

  @override
  String get quantityFull => 'Kogus';

  @override
  String get editItemPrice => 'Hinnanguline hind';

  @override
  String get addToPantry => 'Lisa sahvrisse';

  @override
  String addToPantryPrompt(String name) {
    return 'Kas lisada \"$name\" sinu sahvrisse?';
  }

  @override
  String get yes => 'Jah';

  @override
  String get productName => 'Toote nimi';

  @override
  String get idealQty => 'Ideaalne kogus';

  @override
  String get currentQty => 'Praegune kogus';

  @override
  String get trackStock => 'Jälgi varu';

  @override
  String get trackStockActive => 'Kuvatakse ostusoovitustes';

  @override
  String get trackStockInactive => 'Ei genereeri ostusoovitust';

  @override
  String get createListDialog => 'Loo nimekiri';

  @override
  String get renameListDialog => 'Nimeta nimekiri ümber';

  @override
  String get listHistory => 'Nimekirjade ajalugu';

  @override
  String get myLists => 'Minu nimekirjad';

  @override
  String get viewActive => 'Vaata aktiivseid';

  @override
  String get viewHistory => 'Vaata ajalugu';

  @override
  String get noArchivedLists => 'Arhiveeritud nimekirju pole';

  @override
  String get noActiveLists => 'Aktiivseid nimekirju pole';

  @override
  String completedOn(String date) {
    return 'Lõpetatud $date';
  }

  @override
  String get sharedLabel => 'Jagatud';

  @override
  String get restore => 'Taasta';

  @override
  String get removeSharedTooltip => 'Eemalda';

  @override
  String get deleteListTitle => 'Kustuta nimekiri';

  @override
  String deleteListContent(String name) {
    return 'Oled sa kindel, et soovid kustutada \"$name\"? Kõik üksused eemaldatakse.';
  }

  @override
  String get removeSharedListTitle => 'Eemalda jagatud nimekiri';

  @override
  String removeSharedListContent(String name) {
    return 'Eemaldada \"$name\" sinu nimekirjadest? Algset nimekirja see ei mõjuta.';
  }

  @override
  String get createNewList => 'Loo uus nimekiri';

  @override
  String get aiAssistant => 'AI abiline';

  @override
  String get aiAssistantDescription =>
      'Hangi nutikaid soovitusi, retsepte ja isikupärastatud näpunäiteid meie AI abilisega.';

  @override
  String get generalAssistant => 'Üldine abiline';

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
  String get clearHistory => 'Tühjenda ajalugu';

  @override
  String get clearHistoryConfirm =>
      'Kas kustutada kõik sõnumid selles sessioonis?';

  @override
  String get chatHint => 'Kirjuta oma sõnum...';

  @override
  String chatError(String error) {
    return 'Viga vestluse laadimisel: $error';
  }

  @override
  String get listHelp => 'Kuidas saan aidata sinu nimekirjaga?';

  @override
  String get generalHelp => 'Kuidas saan täna aidata sinu ostlemisel?';

  @override
  String get chatSubtitle =>
      'Küsi üksuste soovitusi, retsepte või säästunõuandeid.';

  @override
  String get aiError =>
      'Vabandust, sinu päringu töötlemisel tekkis viga. Kontrolli ühendust või proovi hiljem uuesti.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Logi sisse, et avada\nPremium funktsioonid';

  @override
  String get signInGoogle => 'Logi sisse Google\'iga';

  @override
  String get signInApple => 'Logi sisse Apple\'iga';

  @override
  String get continueAsGuest => 'Jätka külalisena';

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
    return 'Sisselogimise viga: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Täienda, et avada';

  @override
  String get itemRemoved => 'Üksus eemaldatud';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get emptyListTitle => 'Sinu nimekiri on tühi';

  @override
  String get emptyListSubtitle => 'Alustamiseks lisa üksusi';

  @override
  String get noListFoundTitle => 'Nimekirju ei leitud';

  @override
  String get noListFoundSubtitle => 'Alustamiseks loe oma esimene nimekiri';

  @override
  String get createFirstList => 'Loo esimene nimekiri';

  @override
  String get listBudgetTitle => 'Nimekirja eelarve';

  @override
  String get budgetAmountLabel => 'Eelarve summa';

  @override
  String get removeBudget => 'Eemalda';

  @override
  String get prefUnlimitedLists => 'Piiramatud nimekirjad';

  @override
  String get prefSharing => 'Jaga nimekirju';

  @override
  String get prefFullHistory => 'Täielik ajalugu';

  @override
  String get prefExportData => 'Ekspordi andmed';

  @override
  String get prefCustomThemes => 'Kohandatud teemad';

  @override
  String get prefMonthlyBudget => 'Globaalne kuueelarve';

  @override
  String get prefAIAssistant => 'Isiklik AI abiline';

  @override
  String get prefUnlimitedPantry => 'Piiramatu sahver';

  @override
  String get prefInteractiveArtifacts => 'Interaktiivsed AI artefaktid';

  @override
  String get themeGreen => 'Roheline';

  @override
  String get themeBlue => 'Sinine';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Punane';

  @override
  String get themeOrange => 'Oranž';

  @override
  String get themePink => 'Roosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Merevaik';

  @override
  String get themeTeal => 'Sinakasroheline';

  @override
  String get themeBrown => 'Pruun';

  @override
  String get catFruits => 'Puuviljad';

  @override
  String get catCleaning => 'Puhastus';

  @override
  String get catBeverages => 'Joogid';

  @override
  String get catBakery => 'Pagaritooted';

  @override
  String get catOthers => 'Muud';

  @override
  String get unitPack => 'pakk';

  @override
  String get shareSubject => 'Ostunimekiri';

  @override
  String get monthlyBudgetTitle => 'Kuueelarve';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Kustuta nimekiri';

  @override
  String get pantryItemRemoved => 'Üksus eemaldatud';

  @override
  String deficitItems(int deficit) {
    return '$deficit üksus(t) vajab ostmist';
  }

  @override
  String get cartTotal => 'Ostukorvi summa';

  @override
  String get restockLabel => 'Täienda';

  @override
  String get advancedFeatures => 'Täiustatud funktsioonid';

  @override
  String get selectAll => 'Vali kõik';

  @override
  String get deselectAll => 'Tühista kõik';

  @override
  String get monthlyBudgetAppBar => 'Kuueelarve';

  @override
  String get budgetEditTitle => 'Kuueelarve';

  @override
  String get budgetDashboardTitle => 'Töölaud';

  @override
  String get selectListForDashboard => 'Töölaua vaatamiseks vali nimekiri.';

  @override
  String get spendingAnalysis => 'Kulude analüüs';

  @override
  String get noItemsToAnalyze => 'Nimekirjas pole analüüsitavaid üksusi.';

  @override
  String get markItemsToSeeAnalysis =>
      'Märgi üksused ostetuks, et näha analüüsi.';

  @override
  String get totalSpending => 'Kulutatud kokku';

  @override
  String get spendingByCategory => 'Kulud kategooriate kaupa';

  @override
  String get achievements => 'Saavutused';

  @override
  String get exportPdfExcel => 'Ekspordi PDF/Excel';

  @override
  String get exportPdf => 'Ekspordi PDF-ina';

  @override
  String get exportExcel => 'Ekspordi Excel-ina';

  @override
  String get organizingAi => 'KORRALDAN AI-ga...';

  @override
  String get yesLabel => 'Jah';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Minu ostunimekiri';

  @override
  String get emptyListAddItems =>
      'Sinu nimekiri on tühi! Lisa esmalt üksusi. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Nimekiri maagiliselt kategooriate kaupa korrastatud! ✨';

  @override
  String get shoppingMode => 'Osturežiim';

  @override
  String get smartOrganization => 'Nutikas korraldus';

  @override
  String get savings => 'Sääst';

  @override
  String get shoppingModeHeader => 'OSTUREŽIIM';

  @override
  String get shareAsText => 'Saada üksused vormindatud tekstina';

  @override
  String get shareRealtime => 'Reaalajas sünkroonimine teiste inimestega';

  @override
  String get quickRecipe => 'Kiire retsept';

  @override
  String get quickRecipePrompt => 'Soovita retsepte minu nimekirja üksustega.';

  @override
  String get economyTips => 'Säästunõuanded';

  @override
  String get economyTipsPrompt =>
      'Kuidas saan selle ostu pealt raha kokku hoida?';

  @override
  String get organizeAisles => 'Korralda vahekäikude kaupa';

  @override
  String get organizeAislesPrompt => 'Korralda poe vahekäikude kaupa.';

  @override
  String get recipeSuggestion => 'Retsepti soovitus';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Jäänud $remaining krediiti';
  }

  @override
  String get addAllToList => 'Lisa kõik nimekirja';

  @override
  String get organizeByAisles => 'Korralda vahekäikude kaupa';

  @override
  String get voiceTranscriptionTooltip => 'Häältrükkimine (Tasuta)';

  @override
  String get aiVoiceCommandTooltip => 'AI häälejuhtimine (Premium)';

  @override
  String get voiceCommandTitle => 'AI häälejuhtimine';

  @override
  String get voiceCommandContent =>
      'Räägi loomulikult, et oma nimekirja hallata!\n\nNäited:\n• \'Lisa leib, juust ja sink\'\n• \'Eemalda pesupulber\'\n• \'Muuda teema siniseks\'\n\nSee on Lista Plus Premium eksklusiivne funktsioon.';

  @override
  String get voiceCommandPlanBtn => 'Vaata plaane';

  @override
  String get itemsAddedSuccess => 'Üksused edukalt nimekirja lisatud!';

  @override
  String get viewList => 'Vaata nimekirja';

  @override
  String get feedbackTitle => 'Saada tagasiside';

  @override
  String get feedbackPrompt => 'Mida soovite jagada?';

  @override
  String get feedbackTypeBug => 'Teata veast';

  @override
  String get feedbackTypeBugHint => 'Miski ei tööta';

  @override
  String get feedbackTypeSuggestion => 'Ettepanek';

  @override
  String get feedbackTypeSuggestionHint => 'Idee rakenduse parandamiseks';

  @override
  String get feedbackTypeTranslation => 'Tõlkeprobleem';

  @override
  String get feedbackTypeTranslationHint => 'Vale või kohmakas tõlge';

  @override
  String get feedbackTypeFeature => 'Funktsiooni soovitus';

  @override
  String get feedbackTypeFeatureHint => 'Funktsioon, mida sooviksite näha';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muud tüüpi tagasiside';

  @override
  String get feedbackHint => 'Kirjeldage oma tagasisidet üksikasjalikult...';

  @override
  String get feedbackSend => 'Saada tagasiside';

  @override
  String get feedbackSending => 'Saatmine...';

  @override
  String get feedbackThankYou => 'Täname!';

  @override
  String get feedbackThankYouMessage =>
      'Teie tagasiside on kätte saadud ja aitab meil Lista Plus kõigi jaoks paremaks muuta.';

  @override
  String get feedbackBack => 'Tagasi';

  @override
  String feedbackError(String error) {
    return 'Viga saatmisel: $error';
  }

  @override
  String get feedbackRetry => 'Proovi uuesti';

  @override
  String get feedbackSettingsTitle => 'Saada tagasiside';

  @override
  String get feedbackSettingsSubtitle =>
      'Teatage vigadest, soovitage parendusi või parandage tõlkeid';

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
  String get openMenu => 'Ava menüü';

  @override
  String get viewRecipe => 'Vaata retsepti';

  @override
  String get recipeCreated => 'Retsept loodud!';

  @override
  String get editRecipe => 'Muuda';

  @override
  String get deleteRecipe => 'Kustuta';

  @override
  String get deleteRecipeConfirm => 'Kustutada see retsept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Kas olete kindel, et soovite kustutada retsepti \"$recipeName\"? Seda toimingut ei saa tühistada.';
  }

  @override
  String get ingredients => 'Koostisosad';

  @override
  String get instructions => 'Juhised';

  @override
  String get prepTime => 'Ettevalmistusaeg';

  @override
  String get recipeSaved => 'Retsept salvestatud!';

  @override
  String get noRecipesSaved => 'Salvestatud retsepte pole';

  @override
  String get noRecipesSavedHint =>
      'Loo oma esimene kohandatud retsept, puudutades allolevat nuppu.';

  @override
  String get myRecipes => 'Minu retseptid';

  @override
  String get newRecipe => 'Uus retsept';

  @override
  String get loadingRecipes => 'Retseptide laadimine...';

  @override
  String get errorLoadingRecipes => 'Viga retseptide laadimisel';

  @override
  String get addIngredient => 'Lisa koostisosa';

  @override
  String get saveRecipe => 'Salvesta';

  @override
  String get recipeName => 'Retsepti nimi';

  @override
  String get shortDescription => 'Lühikirjeldus';

  @override
  String get prepTimeMinutes => 'Ettevalmistusaeg (minutites)';

  @override
  String get instructionsHint => 'Kirjuta üks samm reale...';

  @override
  String get addPhoto => 'Lisa foto';

  @override
  String get imageUrlPlaceholder => 'Või kleebi pildi URL';

  @override
  String get tags => 'Sildid';

  @override
  String get recipeTags => 'Retsepti sildid';

  @override
  String get suggestedTags => 'Soovitatud';

  @override
  String get searchRecipes => 'Otsi retsepte...';

  @override
  String get filterByTag => 'Filtreeri sildi järgi';

  @override
  String get allTags => 'Kõik';

  @override
  String get recipeDeleted => 'Retsept kustutatud';

  @override
  String get saveChanges => 'Salvesta muudatused';

  @override
  String get editRecipeTitle => 'Muuda retsepti';

  @override
  String get newRecipeTitle => 'Uus retsept';

  @override
  String get requiredField => 'Kohustuslik';

  @override
  String get chooseImageSource => 'Vali pildi allikas';

  @override
  String get gallery => 'Galerii';

  @override
  String get enterUrl => 'Sisesta URL';

  @override
  String get recipeImage => 'Retsepti pilt';

  @override
  String get removeImage => 'Eemalda pilt';

  @override
  String get mealPlannerTitle => 'Toidukorra planeerija';

  @override
  String get mealPlannerViewMonthly => 'Kuunäade';

  @override
  String get mealPlannerViewWeekly => 'Nädalanäade';

  @override
  String get mealPlannerNoMeals => 'Toidukordi pole planeeritud';

  @override
  String get mealPlannerNoMealsHint => 'Toidukorra lisamiseks puuduta päeva';

  @override
  String get mealPlannerLoading => 'Toidukava laadimine...';

  @override
  String get mealPlannerError => 'Viga toidukava laadimisel';

  @override
  String get mealPlannerAddMeal => 'Lisa toidukord';

  @override
  String get mealPlannerEditMeal => 'Muuda toidukorda';

  @override
  String get mealPlannerDeleteMeal => 'Eemalda toidukord';

  @override
  String get mealPlannerMealDeleted => 'Toidukord eemaldatud';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portsjonit',
      one: '$count portsjon',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portsjonid';

  @override
  String get mealPlannerNoteLabel => 'Märkus (valikuline)';

  @override
  String get mealPlannerSelectRecipe => 'Vali retsept';

  @override
  String get mealPlannerSearchRecipes => 'Otsi retsepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Retsepte ei leitud';

  @override
  String get mealPlannerNoRecipesHint =>
      'Loo esmalt retseptid vahekaardil Retseptid';

  @override
  String get mealPlannerSave => 'Lisa kavasse';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total toidukorda planeeritud';
  }

  @override
  String get mealPlannerGenerateList => 'Loo ostunimekiri';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Kas lisada kaikki selle nädala toidukordade koostisosad ostunimekirja?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count koostisosa lisatud nimekirja!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Koostisosi pole lisada. Planeeri esmalt mõned toidukorrad retseptidega.';

  @override
  String get mealPlannerGenerateListNoList => 'Loo esmalt ostunimekiri.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Hommikusöök';

  @override
  String get mealPlannerMealTypeLunch => 'Lõunasöök';

  @override
  String get mealPlannerMealTypeDinner => 'Õhtusöök';

  @override
  String get mealPlannerMealTypeSnack => 'Oode';

  @override
  String get mealPlannerDateLabel => 'Kuupäev';

  @override
  String get mealPlannerWeekEmpty => 'Selleks nädalaks pole midagi planeeritud';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toidukordade planeerimiseks puuduta suvalist päeva!';

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
