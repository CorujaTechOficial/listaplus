// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Pirkinių sąrašas';

  @override
  String get lists => 'Sąrašai';

  @override
  String get pantry => 'Sandėliukas';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get save => 'Išsaugoti';

  @override
  String get create => 'Sukurti';

  @override
  String get add => 'Pridėti';

  @override
  String get remove => 'Pašalinti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get edit => 'Redaguoti';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get regenerate => 'Atkurti';

  @override
  String get copiedToClipboard => 'Nukopijuota į iškarpinę';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get close => 'Uždaryti';

  @override
  String get import => 'Importuoti';

  @override
  String get rename => 'Pervadinti';

  @override
  String get upgrade => 'Atnaujinti';

  @override
  String get clear => 'Išvalyti';

  @override
  String error(String message) {
    return 'Klaida: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Klaida: $message';
  }

  @override
  String get purchaseError => 'Klaida apdorojant pirkimą. Bandykite dar kartą.';

  @override
  String get restoreError => 'Klaida atkuriant pirkimus. Bandykite dar kartą.';

  @override
  String get loading => 'Įkeliama...';

  @override
  String get fieldRequired => 'Privalomas laukas';

  @override
  String get addedFeedback => 'Pridėta!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pasirinkta',
      few: '$count pasirinkti',
      one: '$count pasirinktas',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Numatoma';

  @override
  String get alreadyPurchased => 'Jau nupirkta';

  @override
  String get clearList => 'Išvalyti sąrašą';

  @override
  String get clearPurchased => 'Išvalyti nupirktus';

  @override
  String get share => 'Dalintis';

  @override
  String get shareViaCode => 'Dalintis per kodą';

  @override
  String get importViaCode => 'Importuoti per kodą';

  @override
  String get listAssistant => 'Sąrašo asistentas';

  @override
  String get globalAssistant => 'Globalus asistentas';

  @override
  String get becomePremium => 'Tapkite Premium';

  @override
  String get manageSubscription => 'Valdyti prenumeratą';

  @override
  String get completePurchase => 'Užbaigti pirkimą';

  @override
  String get confirmClearList => 'Pašalinti visas prekes?';

  @override
  String get shareListTitle => 'Dalintis sąrašu';

  @override
  String get shareThisCode => 'Pasidalinkite šiuo kodu:';

  @override
  String get validForLimitedTime => 'Galioja ribotą laiką';

  @override
  String get importListTitle => 'Importuoti sąrašą';

  @override
  String get enterCodeHint => 'Įveskite kodą';

  @override
  String get confirmArchiveTitle => 'Užbaigti pirkimą';

  @override
  String get confirmArchiveContent =>
      'Užbaigti šį pirkimą ir archyvuoti sąrašą?';

  @override
  String get complete => 'Užbaigti';

  @override
  String get listArchived => 'Sąrašas sėkmingai archyvuotas!';

  @override
  String listAdded(String listName) {
    return '$listName pridėta!';
  }

  @override
  String get buy => 'Pirkti';

  @override
  String get unmark => 'Panaikinti žymėjimą';

  @override
  String confirmDeleteItems(int count) {
    return 'Pašalinti $count prekę(-es)?';
  }

  @override
  String get confirmDeleteTitle => 'Patvirtinti';

  @override
  String confirmContent(int count) {
    return 'Pašalinti $count prekę(-es)?';
  }

  @override
  String get archiveList => 'Archyvuoti sąrašą';

  @override
  String get pantryAppBar => 'Sandėliukas';

  @override
  String get generateShoppingList => 'Sukurti pirkinių sąrašą';

  @override
  String get pantryEmpty => 'Tuščias sandėliukas';

  @override
  String get pantryEmptySubtitle =>
      'Pridėkite produktų, kuriuos norite laikyti namuose';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit prekę(-es) reikia nusipirkti';
  }

  @override
  String get noItemsToBuy => 'Nereikia nieko pirkti';

  @override
  String get newPantryList => 'Sandėliuko pirkiniai';

  @override
  String get newListTitle => 'Naujas pirkinių sąrašas';

  @override
  String itemsWillBeAdded(int count) {
    return '$count prekė(-ės) bus pridėta';
  }

  @override
  String get listNameLabel => 'Sąrašo pavadinimas';

  @override
  String listCreated(String name, int count) {
    return 'Sąrašas \"$name\" sukurtas su $count prekėmis';
  }

  @override
  String get noTracking => 'Be sekimo';

  @override
  String get markAsPurchased => 'Pažymėti kaip nupirkta';

  @override
  String editPantryItem(String name) {
    return 'Redaguoti $name';
  }

  @override
  String get idealQuantity => 'Idealus kiekis';

  @override
  String get currentQuantity => 'Dabartinis kiekis';

  @override
  String get consumed => 'Suvartota';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name papildytas iki $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Pašalinti \"$name\" iš sandėliuko?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redaguoti $name';
  }

  @override
  String get settingsAppBar => 'Nustatymai';

  @override
  String get language => 'Kalba';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistemos numatytoji';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get light => 'Šviesi';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Tamsi';

  @override
  String get themeColor => 'Temos spalva';

  @override
  String get finance => 'Finansai';

  @override
  String get monthlyBudgetNav => 'Mėnesio biudžetas';

  @override
  String get budgetSubtitle => 'Stebėkite savo mėnesio išlaidas';

  @override
  String get data => 'Duomenys';

  @override
  String get backupNav => 'Atsarginė kopija';

  @override
  String get backupSubtitle => 'Eksportuokite arba importuokite savo duomenis';

  @override
  String get about => 'Apie';

  @override
  String get version => 'Versija';

  @override
  String get privacy => 'Privatumas';

  @override
  String get termsOfUse => 'Naudojimo sąlygos';

  @override
  String get backupTitle => 'Atsarginė kopija';

  @override
  String get backupPremiumDescription =>
      'Atsarginė kopija ir eksportavimas yra premium funkcija';

  @override
  String get exportData => 'Eksportuoti duomenis';

  @override
  String get exportDataSubtitle => 'Išsaugoti visus sąrašus kaip JSON';

  @override
  String get importData => 'Importuoti duomenis';

  @override
  String get importDataSubtitle => 'Atkurti sąrašus iš JSON';

  @override
  String get importJsonTitle => 'Importuoti JSON';

  @override
  String get importJsonHint => 'Įklijuokite atsarginę JSON kopiją čia...';

  @override
  String get backupExported => 'Atsarginė kopija eksportuota!';

  @override
  String get budgetAppBar => 'Mėnesio biudžetas';

  @override
  String get budgetPremiumLocked => 'Globalus mėnesio biudžetas yra premium';

  @override
  String get budgetUpgradePrompt => 'Atnaujinkite, kad atrakintumėte';

  @override
  String get noBudgetDefined => 'Nenustatytas biudžetas';

  @override
  String totalEstimated(String amount) {
    return 'Numatoma suma: $amount';
  }

  @override
  String get setBudgetButton => 'Nustatyti biudžetą';

  @override
  String get budgetLists => 'Sąrašai';

  @override
  String get budgetValueLabel => 'Suma';

  @override
  String get setBudgetTitle => 'Mėnesio biudžetas';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterPending => 'Laukiantys';

  @override
  String get filterPurchased => 'Nupirkta';

  @override
  String get sortName => 'Pavadinimas';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Rankinis';

  @override
  String get addItem => 'Pridėti prekę';

  @override
  String get itemName => 'Prekės pavadinimas';

  @override
  String get quantityShort => 'Kiekis';

  @override
  String get unit => 'Vienetas';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Numatoma kaina';

  @override
  String get addItemPrice => 'Numatoma kaina';

  @override
  String get editItem => 'Redaguoti prekę';

  @override
  String get quantityFull => 'Kiekis';

  @override
  String get editItemPrice => 'Numatoma kaina';

  @override
  String get addToPantry => 'Pridėti į sandėliuką';

  @override
  String addToPantryPrompt(String name) {
    return 'Pridėti \"$name\" į jūsų sandėliuką?';
  }

  @override
  String get yes => 'Taip';

  @override
  String get productName => 'Produkto pavadinimas';

  @override
  String get idealQty => 'Idealus kiekis';

  @override
  String get currentQty => 'Dabartinis kiekis';

  @override
  String get trackStock => 'Sekti atsargas';

  @override
  String get trackStockActive => 'Rodoma pirkimo pasiūlymuose';

  @override
  String get trackStockInactive => 'Negeneruoja pirkimo pasiūlymų';

  @override
  String get createListDialog => 'Sukurti sąrašą';

  @override
  String get renameListDialog => 'Pervadinti sąrašą';

  @override
  String get listHistory => 'Sąrašų istorija';

  @override
  String get myLists => 'Mano sąrašai';

  @override
  String get viewActive => 'Žiūrėti aktyvius';

  @override
  String get viewHistory => 'Žiūrėti istoriją';

  @override
  String get noArchivedLists => 'Nėra archyvuotų sąrašų';

  @override
  String get noActiveLists => 'Nėra aktyvių sąrašų';

  @override
  String completedOn(String date) {
    return 'Užbaigta $date';
  }

  @override
  String get sharedLabel => 'Bendrinamas';

  @override
  String get restore => 'Atkurti';

  @override
  String get removeSharedTooltip => 'Pašalinti';

  @override
  String get deleteListTitle => 'Ištrinti sąrašą';

  @override
  String deleteListContent(String name) {
    return 'Ar tikrai norite ištrinti \"$name\"? Visos prekės bus pašalintos.';
  }

  @override
  String get removeSharedListTitle => 'Pašalinti bendrinamą sąrašą';

  @override
  String removeSharedListContent(String name) {
    return 'Pašalinti \"$name\" iš jūsų sąrašų? Originalus sąrašas nebus paveiktas.';
  }

  @override
  String get createNewList => 'Sukurti naują sąrašą';

  @override
  String get aiAssistant => 'AI asistentas';

  @override
  String get aiAssistantDescription =>
      'Gaukite protingų pasiūlymų, receptų ir asmeninių patarimų iš mūsų AI asistento.';

  @override
  String get generalAssistant => 'Bendrasis asistentas';

  @override
  String get clearHistory => 'Išvalyti istoriją';

  @override
  String get clearHistoryConfirm => 'Išvalyti visus šios sesijos pranešimus?';

  @override
  String get chatHint => 'Įrašykite savo žinutę...';

  @override
  String chatError(String error) {
    return 'Klaida įkeliant pokalbį: $error';
  }

  @override
  String get listHelp => 'Kaip galiu padėti su jūsų sąrašu?';

  @override
  String get generalHelp => 'Kaip galiu padėti jums apsipirkti šiandien?';

  @override
  String get chatSubtitle =>
      'Klauskite prekių pasiūlymų, receptų ar taupymo patarimų.';

  @override
  String get aiError =>
      'Atsiprašome, įvyko klaida apdorojant jūsų užklausą. Patikrinkite ryšį arba bandykite dar kartą vėliau.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Prisijunkite, kad atrakintumėte\npremium funkcijas';

  @override
  String get signInGoogle => 'Prisijungti su Google';

  @override
  String get signInApple => 'Prisijungti su Apple';

  @override
  String get continueAsGuest => 'Tęsti kaip svečias';

  @override
  String loginError(String error) {
    return 'Prisijungimo klaida: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Atnaujinkite, kad atrakintumėte';

  @override
  String get itemRemoved => 'Prekė pašalinta';

  @override
  String get undo => 'Atšaukti';

  @override
  String get emptyListTitle => 'Jūsų sąrašas tuščias';

  @override
  String get emptyListSubtitle => 'Pridėkite prekių, kad pradėtumėte';

  @override
  String get noListFoundTitle => 'Nerasta jokių sąrašų';

  @override
  String get noListFoundSubtitle =>
      'Sukurkite savo pirmąjį sąrašą, kad pradėtumėte';

  @override
  String get createFirstList => 'Sukurti pirmąjį sąrašą';

  @override
  String get listBudgetTitle => 'Sąrašo biudžetas';

  @override
  String get budgetAmountLabel => 'Biudžeto suma';

  @override
  String get removeBudget => 'Pašalinti';

  @override
  String get prefUnlimitedLists => 'Neriboti sąrašai';

  @override
  String get prefSharing => 'Dalintis sąrašais';

  @override
  String get prefFullHistory => 'Pilna istorija';

  @override
  String get prefExportData => 'Eksportuoti duomenis';

  @override
  String get prefCustomThemes => 'Individualios temos';

  @override
  String get prefMonthlyBudget => 'Globalus mėnesio biudžetas';

  @override
  String get prefAIAssistant => 'Asmeninis AI asistentas';

  @override
  String get prefUnlimitedPantry => 'Neribotas sandėliukas';

  @override
  String get prefInteractiveArtifacts => 'Interaktyvūs AI artefaktai';

  @override
  String get themeGreen => 'Žalia';

  @override
  String get themeBlue => 'Mėlyna';

  @override
  String get themePurple => 'Violetinė';

  @override
  String get themeRed => 'Raudona';

  @override
  String get themeOrange => 'Oranžinė';

  @override
  String get themePink => 'Rožinė';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Gintarinė';

  @override
  String get themeTeal => 'Žalsvai mėlyna';

  @override
  String get themeBrown => 'Ruda';

  @override
  String get catFruits => 'Vaisiai';

  @override
  String get catCleaning => 'Valymas';

  @override
  String get catBeverages => 'Gėrimai';

  @override
  String get catBakery => 'Kepiniai';

  @override
  String get catOthers => 'Kita';

  @override
  String get unitPack => 'pakuotė';

  @override
  String get shareSubject => 'Pirkinių sąrašas';

  @override
  String get monthlyBudgetTitle => 'Mėnesio biudžetas';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Ištrinti sąrašą';

  @override
  String get pantryItemRemoved => 'Prekė pašalinta';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'reikia nusipirkti $deficit prekių',
      few: 'reikia nusipirkti $deficit prekes',
      one: 'reikia nusipirkti $deficit prekę',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Krepšelio suma';

  @override
  String get restockLabel => 'Papildyti';

  @override
  String get advancedFeatures => 'Išplėstinės funkcijos';

  @override
  String get selectAll => 'Pasirinkti viską';

  @override
  String get deselectAll => 'Panaikinti visus pasirinkimus';

  @override
  String get monthlyBudgetAppBar => 'Mėnesio biudžetas';

  @override
  String get budgetEditTitle => 'Mėnesio biudžetas';

  @override
  String get budgetDashboardTitle => 'Prietaisų skydelis';

  @override
  String get selectListForDashboard =>
      'Pasirinkite sąrašą, kad peržiūrėtumėte skydelį.';

  @override
  String get spendingAnalysis => 'Išlaidų analizė';

  @override
  String get noItemsToAnalyze =>
      'Sąraše nėra prekių, kurias būtų galima analizuoti.';

  @override
  String get markItemsToSeeAnalysis =>
      'Pažymėkite prekes kaip nupirktas, kad pamatytumėte analizę.';

  @override
  String get totalSpending => 'Visos išlaidos';

  @override
  String get spendingByCategory => 'Išlaidos pagal kategoriją';

  @override
  String get achievements => 'Pasiekimai';

  @override
  String get exportPdfExcel => 'Eksportuoti PDF/Excel';

  @override
  String get exportPdf => 'Eksportuoti kaip PDF';

  @override
  String get exportExcel => 'Eksportuoti kaip Excel';

  @override
  String get organizingAi => 'ORGANIZUOJAMA SU AI...';

  @override
  String get yesLabel => 'Taip';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Mano pirkinių sąrašas';

  @override
  String get emptyListAddItems =>
      'Jūsų sąrašas tuščias! Pirmiausia pridėkite prekių. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Sąrašas stebuklingai suskirstytas į kategorijas! ✨';

  @override
  String get shoppingMode => 'Pirkimo režimas';

  @override
  String get smartOrganization => 'Protingas organizavimas';

  @override
  String get savings => 'Sutaupymas';

  @override
  String get shoppingModeHeader => 'PIRKIMO REŽIMAS';

  @override
  String get shareAsText => 'Siųsti prekes kaip suformatuotą tekstą';

  @override
  String get shareRealtime => 'Realaus laiko sinchronizavimas su kitais';

  @override
  String get quickRecipe => 'Greitas receptas';

  @override
  String get quickRecipePrompt =>
      'Pasiūlykite receptų su mano sąrašo prekėmis.';

  @override
  String get economyTips => 'Taupymo patarimai';

  @override
  String get economyTipsPrompt => 'Kaip galiu sutaupyti pinigų šiam pirkiniui?';

  @override
  String get organizeAisles => 'Rūšiuoti pagal skyrius';

  @override
  String get organizeAislesPrompt => 'Rūšiuoti pagal prekybos centro skyrius.';

  @override
  String get recipeSuggestion => 'Recepto pasiūlymas';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Liko $remaining kreditų';
  }

  @override
  String get addAllToList => 'Pridėti viską į sąrašą';

  @override
  String get organizeByAisles => 'Rūšiuoti pagal skyrius';

  @override
  String get voiceTranscriptionTooltip => 'Balso įvedimas (Nemokamai)';

  @override
  String get aiVoiceCommandTooltip => 'AI balso komanda (Premium)';

  @override
  String get voiceCommandTitle => 'AI balso komanda';

  @override
  String get voiceCommandContent =>
      'Kalbėkite natūraliai, kad valdytumėte savo sąrašą!\n\nPavyzdžiai:\n• \'Pridėti duonos, sūrio ir kumpio\'\n• \'Pašalinti skalbiklio\'\n• \'Pakeisti temą į mėlyną\'\n\nTai yra išskirtinė Lista Plus Premium funkcija.';

  @override
  String get voiceCommandPlanBtn => 'Peržiūrėti planus';

  @override
  String get itemsAddedSuccess => 'Prekės sėkmingai pridėtos į sąrašą!';

  @override
  String get viewList => 'Peržiūrėti sąrašą';

  @override
  String get feedbackTitle => 'Siųsti atsiliepimą';

  @override
  String get feedbackPrompt => 'Kuo norėtumėte pasidalinti?';

  @override
  String get feedbackTypeBug => 'Pranešti apie klaidą';

  @override
  String get feedbackTypeBugHint => 'Kažkas neveikia';

  @override
  String get feedbackTypeSuggestion => 'Pasiūlymas';

  @override
  String get feedbackTypeSuggestionHint => 'Idėja, kaip pagerinti programėlę';

  @override
  String get feedbackTypeTranslation => 'Vertimo problema';

  @override
  String get feedbackTypeTranslationHint => 'Netikslus ar nepatogus vertimas';

  @override
  String get feedbackTypeFeature => 'Funkcijos prašymas';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, kurią norėtumėte matyti';

  @override
  String get feedbackTypeOther => 'Kita';

  @override
  String get feedbackTypeOtherHint => 'Kitas atsiliepimo tipas';

  @override
  String get feedbackHint => 'Išsamiai aprašykite savo atsiliepimą...';

  @override
  String get feedbackSend => 'Siųsti atsiliepimą';

  @override
  String get feedbackSending => 'Siunčiama...';

  @override
  String get feedbackThankYou => 'Ačiū!';

  @override
  String get feedbackThankYouMessage =>
      'Jūsų atsiliepimas gautas ir padeda mums tobulinti Lista Plus visiems.';

  @override
  String get feedbackBack => 'Atgal';

  @override
  String feedbackError(String error) {
    return 'Siuntimo klaida: $error';
  }

  @override
  String get feedbackRetry => 'Bandyti dar kartą';

  @override
  String get feedbackSettingsTitle => 'Siųsti atsiliepimą';

  @override
  String get feedbackSettingsSubtitle =>
      'Pranešti apie klaidas, siūlyti patobulinimus ar taisyti vertimus';

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
