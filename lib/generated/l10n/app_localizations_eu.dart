// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Erosketa Zerrenda';

  @override
  String get lists => 'Zerrendak';

  @override
  String get pantry => 'Jakitegia';

  @override
  String get navChat => 'Txateatu';

  @override
  String get navRecipes => 'Errezetak';

  @override
  String get navLists => 'Zerrendak';

  @override
  String get navMealPlanner => 'Menua';

  @override
  String get cancel => 'Utzi';

  @override
  String get save => 'Gorde';

  @override
  String get create => 'Sortu';

  @override
  String get add => 'Gehitu';

  @override
  String get remove => 'Kendu';

  @override
  String get delete => 'Ezabatu';

  @override
  String get edit => 'Editatu';

  @override
  String get copy => 'Kopiatu';

  @override
  String get next => 'Hurrengoa';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get regenerate => 'Birgeneratu';

  @override
  String get copiedToClipboard => 'Arbelera kopiatuta';

  @override
  String get confirm => 'Baieztatu';

  @override
  String get close => 'Itxi';

  @override
  String get import => 'Inportatu';

  @override
  String get rename => 'Berrizendatu';

  @override
  String get upgrade => 'Hobetu';

  @override
  String get clear => 'Garbitu';

  @override
  String error(String message) {
    return 'Errorea: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errorea: $message';
  }

  @override
  String get purchaseError => 'Errorea erosketa prozesatzean. Saiatu berriro.';

  @override
  String get restoreError =>
      'Errorea erosketak berreskuratzean. Saiatu berriro.';

  @override
  String get loading => 'Kargatzen...';

  @override
  String get fieldRequired => 'Eremu beharrezkoa';

  @override
  String get addedFeedback => 'Gehituta!';

  @override
  String get profile => 'Profila';

  @override
  String get exitShoppingMode => 'Irten Erosketa modutik';

  @override
  String get exit => 'Irten';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hautatuta',
      one: '$count hautatuta',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimatuta';

  @override
  String get alreadyPurchased => 'Dagoeneko erosita';

  @override
  String get clearList => 'Garbitu zerrenda';

  @override
  String get clearPurchased => 'Garbitu erositakoak';

  @override
  String get share => 'Partekatu';

  @override
  String get shareViaCode => 'Partekatu kode bidez';

  @override
  String get importViaCode => 'Inportatu kode bidez';

  @override
  String get listAssistant => 'Zerrenda laguntzailea';

  @override
  String get globalAssistant => 'Laguntzaile orokorra';

  @override
  String get becomePremium => 'Premium bihurtu';

  @override
  String get manageSubscription => 'Kudeatu harpidetza';

  @override
  String get completePurchase => 'Osatu erosketa';

  @override
  String get confirmClearList => 'Kendu elementu guztiak?';

  @override
  String get shareListTitle => 'Partekatu Zerrenda';

  @override
  String get shareThisCode => 'Partekatu kode hau:';

  @override
  String get validForLimitedTime => 'Denbora mugaturako baliozkoa';

  @override
  String get importListTitle => 'Inportatu Zerrenda';

  @override
  String get enterCodeHint => 'Sartu kodea';

  @override
  String get confirmArchiveTitle => 'Osatu Erosketa';

  @override
  String get confirmArchiveContent =>
      'Erosketa hau osatu eta zerrenda artxibatu?';

  @override
  String get complete => 'Osatu';

  @override
  String get listArchived => 'Zerrenda behar bezala artxibatu da!';

  @override
  String listAdded(String listName) {
    return '$listName gehituta!';
  }

  @override
  String get buy => 'Erosi';

  @override
  String get unmark => 'Desmarkatu';

  @override
  String confirmDeleteItems(int count) {
    return '$count elementu(k) kendu?';
  }

  @override
  String get confirmDeleteTitle => 'Baieztatu';

  @override
  String confirmContent(int count) {
    return '$count elementu(k) kendu?';
  }

  @override
  String get archiveList => 'Artxibatu zerrenda';

  @override
  String get pantryAppBar => 'Jakitegia';

  @override
  String get generateShoppingList => 'Sortu erosketa zerrenda';

  @override
  String get pantryEmpty => 'Jakitegia hutsik';

  @override
  String get pantryEmptySubtitle =>
      'Gehitu etxean eduki nahi dituzun produktuak';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit elementu(k) erosi behar dira';
  }

  @override
  String get noItemsToBuy => 'Ez dago erosi beharreko elementurik';

  @override
  String get newPantryList => 'Jakitegiko Erosketa';

  @override
  String get newListTitle => 'Erosketa Zerrenda Berria';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elementu(k) gehituko dira';
  }

  @override
  String get listNameLabel => 'Zerrendaren izena';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" zerrenda $count elementurekin sortu da';
  }

  @override
  String get noTracking => 'Seguimendurik gabe';

  @override
  String get markAsPurchased => 'Markatu erosita bezala';

  @override
  String editPantryItem(String name) {
    return 'Editatu $name';
  }

  @override
  String get idealQuantity => 'Kantitate ideala';

  @override
  String get currentQuantity => 'Uneko kantitatea';

  @override
  String get consumed => 'Kontsumitua';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity ${unit}ra berriz bete da';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Kendu \"$name\" jakitegitik?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editatu $name';
  }

  @override
  String get scanProductTitle => 'Eskaneatu produktua';

  @override
  String get positionBarcodeCenter => 'Jarri barra-kodea erdian';

  @override
  String get product => 'Produktua';

  @override
  String get settingsAppBar => 'Ezarpenak';

  @override
  String get language => 'Hizkuntza';

  @override
  String get languagePortuguese => 'portugesa (Brasil)';

  @override
  String get languageEnglish => 'ingelesa';

  @override
  String get languageSystem => 'Sistemaren lehenetsia';

  @override
  String get chooseLanguage => 'Hautatu hizkuntza';

  @override
  String get searchLanguage => 'Bilatu hizkuntza...';

  @override
  String get currency => 'Moneta';

  @override
  String get chooseCurrency => 'Hautatu Moneta';

  @override
  String get searchCurrency => 'Bilatu moneta...';

  @override
  String get appearance => 'Itxura';

  @override
  String get light => 'Argia';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Iluna';

  @override
  String get themeColor => 'Gaiaren kolorea';

  @override
  String get dynamicColors => 'Kolore dinamikoak';

  @override
  String get dynamicColorsSubtitle =>
      'Erabili zure hondo-irudian oinarritutako koloreak';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desgaitu kolore dinamikoak gaiaren koloreak eragina izan dezan';

  @override
  String get finance => 'Finantzak';

  @override
  String get monthlyBudgetNav => 'Hileko aurrekontua';

  @override
  String get budgetSubtitle => 'Jarraitu zure hileko gastuak';

  @override
  String get data => 'Datuak';

  @override
  String get backupNav => 'Segurtasun kopia';

  @override
  String get backupSubtitle => 'Esportatu edo inportatu zure datuak';

  @override
  String get about => 'Honi buruz';

  @override
  String get version => 'Bertsioa';

  @override
  String get privacy => 'Pribatutasuna';

  @override
  String get termsOfUse => 'Erabilera baldintzak';

  @override
  String get myAchievements => 'Nire Lorpenak';

  @override
  String get itemsPurchased => 'Erositako elementuak';

  @override
  String get totalSavings => 'Guztizko aurrezkia';

  @override
  String get currentStreak => 'Egungo sorta';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count egun',
      one: '$count egun',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Desblokeatutako txapak';

  @override
  String get badgeBeginner => 'Hasiberria';

  @override
  String get badgeOrganized => 'Antolatua';

  @override
  String get badgeSavingMaster => 'Maisua salbatzen';

  @override
  String get badgeSuperPlanner => 'Super Planner';

  @override
  String get backupTitle => 'Segurtasun kopia';

  @override
  String get backupPremiumDescription =>
      'Segurtasun kopia eta esportazioa premium ezaugarria da';

  @override
  String get exportData => 'Esportatu datuak';

  @override
  String get exportDataSubtitle => 'Gorde zerrenda guztiak JSON gisa';

  @override
  String get importData => 'Inportatu datuak';

  @override
  String get importDataSubtitle => 'Berreskuratu zerrendak JSON batetik';

  @override
  String get importJsonTitle => 'Inportatu JSON';

  @override
  String get importJsonHint => 'Itsatsi segurtasun kopiako JSON-a hemen...';

  @override
  String get backupExported => 'Segurtasun kopia esportatuta!';

  @override
  String get budgetAppBar => 'Hileko Aurrekontua';

  @override
  String get budgetPremiumLocked => 'Hileko aurrekontu orokorra premium da';

  @override
  String get budgetUpgradePrompt => 'Hobetu desblokeatzeko';

  @override
  String get noBudgetDefined => 'Aurrekonturik ezarri gabe';

  @override
  String totalEstimated(String amount) {
    return 'Guztira estimatua: $amount';
  }

  @override
  String get setBudgetButton => 'Ezarri aurrekontua';

  @override
  String get budgetLists => 'Zerrendak';

  @override
  String get budgetValueLabel => 'Kopurua';

  @override
  String get setBudgetTitle => 'Hileko Aurrekontua';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Denak';

  @override
  String get filterPending => 'Zain';

  @override
  String get filterPurchased => 'Erosita';

  @override
  String get sortName => 'Izena';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Eskuz';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased $total elementu';
  }

  @override
  String progressBudget(String amount) {
    return 'Aurrekontua: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Guztira: $amount';
  }

  @override
  String get addItem => 'Gehitu Elementua';

  @override
  String get itemName => 'Elementuaren izena';

  @override
  String get quantityShort => 'Kop';

  @override
  String get unit => 'Unitatea';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Estimatutako prezioa';

  @override
  String get addItemPrice => 'Estimatutako prezioa';

  @override
  String get editItem => 'Editatu Elementua';

  @override
  String get quantityFull => 'Kantitatea';

  @override
  String get editItemPrice => 'Estimatutako prezioa';

  @override
  String get addToPantry => 'Gehitu Jakitegian';

  @override
  String addToPantryPrompt(String name) {
    return 'Gehitu \"$name\" zure Jakitegian?';
  }

  @override
  String get yes => 'Bai';

  @override
  String get productName => 'Produktuaren izena';

  @override
  String get idealQty => 'Kopuru ideala';

  @override
  String get currentQty => 'Uneko kopurua';

  @override
  String get trackStock => 'Jarraitu stocka';

  @override
  String get trackStockActive => 'Erosketa iradokizunetan agertzen da';

  @override
  String get trackStockInactive => 'Ez du erosketa iradokizunik sortzen';

  @override
  String get createListDialog => 'Sortu Zerrenda';

  @override
  String get renameListDialog => 'Berrizendatu Zerrenda';

  @override
  String get listHistory => 'Zerrendaren Historia';

  @override
  String get myLists => 'Nire Zerrendak';

  @override
  String get viewActive => 'Ikusi Aktiboak';

  @override
  String get viewHistory => 'Ikusi Historia';

  @override
  String get noArchivedLists => 'Ez dago artxibatutako zerrendarik';

  @override
  String get noActiveLists => 'Ez dago zerrenda aktiborik';

  @override
  String completedOn(String date) {
    return '$date(e)an osatua';
  }

  @override
  String get sharedLabel => 'Partekatua';

  @override
  String get restore => 'Berreskuratu';

  @override
  String get removeSharedTooltip => 'Kendu';

  @override
  String get deleteListTitle => 'Ezabatu zerrenda';

  @override
  String deleteListContent(String name) {
    return 'Ziur zaude \"$name\" ezabatu nahi duzula? Elementu guztiak kenduko dira.';
  }

  @override
  String get removeSharedListTitle => 'Kendu partekatutako zerrenda';

  @override
  String removeSharedListContent(String name) {
    return 'Kendu \"$name\" zure zerrendetatik? Jatorrizko zerrendak ez du kalterik izango.';
  }

  @override
  String get createNewList => 'Sortu zerrenda berria';

  @override
  String get aiAssistant => 'AI Laguntzailea';

  @override
  String get aiAssistantDescription =>
      'Eskuratu iradokizun adimentsuak, errezetak eta aholku pertsonalizatuak gure AI laguntzailearekin.';

  @override
  String get generalAssistant => 'Laguntzaile Orokorra';

  @override
  String get newChat => 'Txat berria';

  @override
  String get noHistory => 'Ez dago txat-historiarik';

  @override
  String get deleteSession => 'Ezabatu txata';

  @override
  String get deleteSessionConfirm =>
      'Ziur txat hau ezabatu nahi duzula? Mezuak betiko galduko dira.';

  @override
  String get clearHistory => 'Garbitu Historia';

  @override
  String get clearHistoryConfirm => 'Saio honetako mezu guztiak garbitu?';

  @override
  String get chatHint => 'Idatzi zure mezua...';

  @override
  String get chatHintBlocked => 'Desblokeatu AI txateatzeko';

  @override
  String chatError(String error) {
    return 'Errorea txata kargatzean: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Laguntzailea';

  @override
  String get closeSheet => 'Itxi';

  @override
  String get scanBarcodeTitle => 'Eskaneatu barra-kodea';

  @override
  String get listHelp => 'Nola lagundu dezaket zure zerrendarekin?';

  @override
  String get generalHelp => 'Nola lagundu dezaket zure erosketetan gaur?';

  @override
  String get chatSubtitle =>
      'Eskatu elementu iradokizunak, errezetak edo aurrezteko aholkuak.';

  @override
  String get aiError =>
      'Barkatu, errorea gertatu da zure eskaera prozesatzean. Egiaztatu konexioa edo saiatu berriro geroago.';

  @override
  String get aiLimitAlmostReached => 'Ia AI mezurik gabe';

  @override
  String get unlockAi => 'Desblokeatu AI mugagabea';

  @override
  String get aiTeaserFallback =>
      'Harpidetu Premium-era erantzun osoa desblokeatzeko eta erosketetarako AI aholku mugagabeak jasotzeko...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ekintzak geratzen dira hilabete honetan: berritu mugarik gabe';
  }

  @override
  String get aiUsageExhausted =>
      'Hileko AI mugara iritsi da. Berritu Pro-ra mugarik gabe →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Saioa hasi premium\nezaugarriak desblokeatzeko';

  @override
  String get signInGoogle => 'Saioa hasi Google-rekin';

  @override
  String get signInApple => 'Saioa hasi Apple-rekin';

  @override
  String get continueAsGuest => 'Jarraitu gonbidatu gisa';

  @override
  String get onboardingWelcomeTitle => 'Ongi etorri KipiList-era';

  @override
  String get onboardingWelcomeDesc =>
      'Erosketak antolatzeko eta dirua aurrezteko modurik adimentsuena.';

  @override
  String get onboardingSetupTitle => 'Pertsonalizatu zure esperientzia';

  @override
  String get onboardingSetupDesc =>
      'Aukeratu nola nahi duzun KipiList zuretzako itxura eta funtziona dezan.';

  @override
  String get onboardingLoginTitle => 'Gorde dena hodeian';

  @override
  String get onboardingLoginDesc =>
      'Zure datuak zure gailu guztietan sinkronizatuta';

  @override
  String get onboardingShareTitle => 'Partekatu maite dituzunekin';

  @override
  String get onboardingShareDesc =>
      'Sinkronizatu zerrendak familiarekin eta lagunekin denbora errealean';

  @override
  String get onboardingPremiumTitle => 'Desblokeatu eginbide guztiak';

  @override
  String get onboardingPremiumSubtitle =>
      'Atera etekinik handiena zure erosketa zerrendei';

  @override
  String get onboardingAnnualBadge => 'Balio onena';

  @override
  String get onboardingMonthlyLabel => 'Hilerokoa';

  @override
  String get onboardingAnnualLabel => 'Urtekoa';

  @override
  String get onboardingViewAllPlans => 'Ikusi plan guztiak';

  @override
  String get onboardingSubscribeCta => 'Harpidetu';

  @override
  String get onboardingCancelAnytime => 'Utzi edonoiz. Konpromisorik ez.';

  @override
  String get onboardingContinueAsGuest => 'Jarraitu gonbidatu gisa';

  @override
  String get onboardingRestore => 'Berreskuratu';

  @override
  String get onboardingRestoreDesc =>
      'Dagoeneko harpidetza duzu? Sakatu hemen leheneratzeko.';

  @override
  String get onboardingMaybeLater => 'Agian geroago';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Kaixo $name, antolatu zure erosketak modu egokian.';
  }

  @override
  String get onboardingSlide1Title => 'Erosketa Zerrenda adimendunak';

  @override
  String get onboardingSlide1Body =>
      'Sortu eta partekatu zerrendak berehala. Kipi-k automatikoki gehitzen ditu zure ohituretan oinarritutako elementuak.';

  @override
  String get onboardingSlide2Title => 'Ezagutu Kipi';

  @override
  String get onboardingSlide2Body =>
      'Galdetu edozer gauza: sortu zerrendak, bilatu errezetak, jarraitu zure jakitegia, antolatu zure astea.';

  @override
  String get onboardingSlide3Title => 'Despentsa eta otorduen plangintza';

  @override
  String get onboardingSlide3Body =>
      'Jarrai ezazu duzuna, planifikatu otorduak eta sortu erosketa zerrendak automatikoki.';

  @override
  String get onboardingExit => 'Irten';

  @override
  String get onboardingPersonalizationTitle => 'Ezagutu gaitezen';

  @override
  String get onboardingPersonalizationDesc =>
      'Hau erabiliko dugu zure iradokizunak pertsonalizatzeko eta erosketak adimentsuagoak egiteko.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Zein da zure janaririk gogokoena?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'adib. Pizza, sushi, lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Jarraitu';

  @override
  String get onboardingPersonalizationSkip => 'Saltatu oraingoz';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Esaiguzu zure janaririk gogokoena jarraitzeko';

  @override
  String get settingsDefaultScreen => 'Hasierako pantaila lehenetsia';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Aukeratu erosketa-zerrenda edo AI txataren artean';

  @override
  String get settingsScreenList => 'Erosketa Zerrenda';

  @override
  String get settingsScreenChat => 'AI Txata';

  @override
  String loginError(String error) {
    return 'Saio-hasierako errorea: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Errore bat gertatu da eskaintzak kargatzean. Saiatu berriro.';

  @override
  String get paywallPurchaseError =>
      'Ezin izan da erosketa osatu. Saiatu berriro.';

  @override
  String get paywallRestoreError =>
      'Ez da aurkitu harpidetza aktiborik leheneratzeko.';

  @override
  String paywallTrialDays(Object days) {
    return '$days EGUN DOAN';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ASTE DOAN',
      one: '$count ASTE DOAN',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTH DOAN',
      one: '$count MONTH DOAN',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Probatu KipiList Pro doan 7 egunez';

  @override
  String get paywallTrialSubtitle => 'Utzi edonoiz. Gaur ez dago kargurik.';

  @override
  String get paywallTrialCta => 'Hasi Doako Proba';

  @override
  String get recipeAddToList => 'Gehitu erosketa zerrendara';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count osagaiak gehitu dira $listName';
  }

  @override
  String get noListSelected =>
      'Ez da zerrendarik hautatu. Ireki zerrenda bat lehenik.';

  @override
  String get paywallFeaturesTitle => 'Behar duzun guztia:';

  @override
  String get paywallFeatureDescAssistant =>
      'AIk automatikoki antolatzen du zure zerrenda';

  @override
  String get paywallFeatureDescUnlimitedLists => 'Sortu behar adina zerrenda';

  @override
  String get paywallFeatureDescSharing => 'Erosi elkarrekin denbora errealean';

  @override
  String get paywallFeatureDescPantry => 'Jarrai ezazu etxean duzuna';

  @override
  String get paywallFeatureDescBudget => 'Egon aurrekontua hilero';

  @override
  String get paywallFeatureUnlimitedLists => 'Zerrenda mugagabeak';

  @override
  String get paywallFeatureSmartAI => 'AI adimenduna';

  @override
  String get paywallFeatureExpenseControl => 'Gastuen Kontrola';

  @override
  String get paywallFeatureSharing => 'Partekatzea';

  @override
  String get paywallBeforeAfterTitle => 'AI aurretik eta ondoren:';

  @override
  String get paywallLabelCommon => 'Ohikoa';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroza';

  @override
  String get paywallBeforeItem2 => 'xaboia';

  @override
  String get paywallBeforeItem3 => 'haragia';

  @override
  String get paywallBeforeItem4 => 'ogia';

  @override
  String get paywallAfterItem1 => 'Aleak';

  @override
  String get paywallAfterItem2 => 'Garbiketa';

  @override
  String get paywallAfterItem3 => 'Haragiak';

  @override
  String get paywallAfterItem4 => 'Okindegia';

  @override
  String get paywallTestimonialsTitle => 'Gure erabiltzaileek diotena:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AIk segundotan antolatzen ditu nire erosketak. Merkaturako bidaia bakoitzeko 20 minutu aurrezten ditut.';

  @override
  String get paywallTestimonial2Name => 'Karlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Ez dut inoiz ahaztu zerrendako elementu bat berriro. AI txata sekulakoa da!';

  @override
  String get paywallSocialProof => '+2.400 familiak erabiltzen dute';

  @override
  String get paywallCtaUnlock => 'Desblokeatu PRO';

  @override
  String get paywallBestValue => 'BALIO ONENA';

  @override
  String get paywallMostPopular => 'HERRIENA';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Ordainketa segurua';

  @override
  String get paywallSelectPlan => 'Aukeratu zure plana:';

  @override
  String paywallSavePercent(Object percent) {
    return 'GORDE % $percent';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/hilabete baino ez';
  }

  @override
  String get paywallPackageAnnual => 'Urteko Plana';

  @override
  String get paywallPackageMonthly => 'Hileko Plana';

  @override
  String get paywallPackageLifetime => 'Bizitza osorako sarbidea';

  @override
  String get paywallCancelAnytime => 'Utzi edonoiz. Konpromisorik ez.';

  @override
  String paywallTrialInCard(int days) {
    return 'Lehenengo $days egun DOAN';
  }

  @override
  String get paywallSecuredByStore => 'Google Play-k babestua · Utzi edonoiz';

  @override
  String get paywallPolicy => 'Pribatutasun-politika';

  @override
  String get paywallTerms => 'Erabilera-baldintzak';

  @override
  String get paywallRestore => 'Berreskuratu';

  @override
  String get paywallHeroHeadline => 'Kipi AI beti zure ondoan';

  @override
  String get paywallHeroSubtitle =>
      'Gehitu elementuak, antolatu zerrendak eta aurreztu denbora zure poltsikoan AI-arekin';

  @override
  String get paywallBenefit1Desc =>
      'Elementuak gehitzen, antolatu eta iradokitzen ditu 24/7';

  @override
  String get paywallBenefit2Desc => 'Ez dago 3 zerrendako mugarik';

  @override
  String get paywallBenefit3Desc => 'Gastuen jarraipena eta familia-zerrendak';

  @override
  String get paywallPackageMonthlyDesc => 'Malgutasun osoa';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Hasi doan — $days egun';
  }

  @override
  String get premiumUpgrade => 'Hobetu desblokeatzeko';

  @override
  String get itemRemoved => 'Elementua kenduta';

  @override
  String get undo => 'Desegin';

  @override
  String get emptyListTitle => 'Zure zerrenda hutsik dago';

  @override
  String get emptyListSubtitle => 'Gehitu elementuak hasteko';

  @override
  String get noListFoundTitle => 'Ez da zerrendarik aurkitu';

  @override
  String get noListFoundSubtitle => 'Sortu zure lehen zerrenda hasteko';

  @override
  String get createFirstList => 'Sortu Lehen Zerrenda';

  @override
  String get listBudgetTitle => 'Zerrendaren Aurrekontua';

  @override
  String get budgetAmountLabel => 'Aurrekontuaren kopurua';

  @override
  String get removeBudget => 'Kendu';

  @override
  String get prefUnlimitedLists => 'Zerrenda mugagabeak';

  @override
  String get prefSharing => 'Partekatu zerrendak';

  @override
  String get prefFullHistory => 'Historia osoa';

  @override
  String get prefExportData => 'Esportatu datuak';

  @override
  String get prefCustomThemes => 'Gai pertsonalizatuak';

  @override
  String get prefMonthlyBudget => 'Hileko aurrekontu orokorra';

  @override
  String get prefAIAssistant => 'AI Laguntzaile Pertsonala';

  @override
  String get prefUnlimitedPantry => 'Jakitegi mugagabea';

  @override
  String get prefInteractiveArtifacts => 'AI Artifizio Interaktiboak';

  @override
  String get themeGreen => 'Berdea';

  @override
  String get themeBlue => 'Urdina';

  @override
  String get themePurple => 'Morea';

  @override
  String get themeRed => 'Gorria';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Arrosa';

  @override
  String get themeIndigo => 'Indigoa';

  @override
  String get themeAmber => 'Anbarra';

  @override
  String get themeTeal => 'Teala';

  @override
  String get themeBrown => 'Marroia';

  @override
  String get catFruits => 'Frutak';

  @override
  String get catCleaning => 'Garbiketa';

  @override
  String get catBeverages => 'Edariak';

  @override
  String get catBakery => 'Okindegia';

  @override
  String get catOthers => 'Besteak';

  @override
  String get unitPack => 'pakete';

  @override
  String get shareSubject => 'Erosketa Zerrenda';

  @override
  String get monthlyBudgetTitle => 'Hileko Aurrekontua';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Ezabatu zerrenda';

  @override
  String get pantryItemRemoved => 'Elementua kenduta';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit elementu erosi behar dira',
      one: '$deficit elementu erosi behar da',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Saskiaren guztira';

  @override
  String get restockLabel => 'Berriz bete';

  @override
  String get advancedFeatures => 'Ezaugarri aurreratuak';

  @override
  String get selectAll => 'Hautatu guztiak';

  @override
  String get deselectAll => 'Deshautatu guztiak';

  @override
  String get monthlyBudgetAppBar => 'Hileko Aurrekontua';

  @override
  String get budgetEditTitle => 'Hileko Aurrekontua';

  @override
  String get budgetDashboardTitle => 'Panela';

  @override
  String get selectListForDashboard => 'Hautatu zerrenda bat panela ikusteko.';

  @override
  String get spendingAnalysis => 'Gastuen Analisia';

  @override
  String get noItemsToAnalyze => 'Ez dago elementurik zerrendan analizatzeko.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markatu elementuak erosita gisa analisia ikusteko.';

  @override
  String get totalSpending => 'Gastatutako Guztira';

  @override
  String get spendingByCategory => 'Gastuak Kategoriaren arabera';

  @override
  String get achievements => 'Edukiak';

  @override
  String get exportPdfExcel => 'Esportatu PDF/Excel';

  @override
  String get exportPdf => 'Esportatu PDF gisa';

  @override
  String get exportExcel => 'Esportatu Excel gisa';

  @override
  String get organizingAi => 'AI-REKIN ANTOLATZEN...';

  @override
  String get yesLabel => 'Bai';

  @override
  String get noLabel => 'Ez';

  @override
  String get shareListText => 'Nire Erosketa Zerrenda';

  @override
  String get emptyListAddItems =>
      'Zure zerrenda hutsik dago! Gehitu elementuak lehenik. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Zerrenda modu magikoan antolatuta kategorien arabera! ✨';

  @override
  String get shoppingMode => 'Erosketa Modua';

  @override
  String get smartOrganization => 'Antolaketa Adimentsua';

  @override
  String get savings => 'Aurrezkiak';

  @override
  String get shoppingModeHeader => 'EROSKETA MODUA';

  @override
  String get shareAsText => 'Bidali elementuak testu formatudun gisa';

  @override
  String get shareRealtime =>
      'Denbora errealeko sinkronizazioa beste pertsonekin';

  @override
  String get quickRecipe => 'Errezeta azkarra';

  @override
  String get quickRecipePrompt =>
      'Iradoki errezetak nire zerrendako elementuekin.';

  @override
  String get economyTips => 'Aurrezteko aholkuak';

  @override
  String get economyTipsPrompt =>
      'Nola aurreztu dezaket dirua erosketa honetan?';

  @override
  String get organizeAisles => 'Antolatu pasilloka';

  @override
  String get organizeAislesPrompt => 'Antolatu merkatuaren pasilloen arabera.';

  @override
  String get recipeSuggestion => 'Errezeta iradokizuna';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditu geratzen dira';
  }

  @override
  String get addAllToList => 'Gehitu denak zerrendara';

  @override
  String get organizeByAisles => 'Antolatu pasilloka';

  @override
  String get voiceTranscriptionTooltip => 'Ahots bidezko idazketa (Doan)';

  @override
  String get aiVoiceCommandTooltip => 'AI Ahots Komandoa (Premium)';

  @override
  String get voiceCommandTitle => 'AI Ahots Komandoa';

  @override
  String get voiceCommandContent =>
      'Hitzez naturalki zure zerrenda kudeatzeko!\n\nAdibideak:\n• \'Gehitu ogia, gazta eta urdaiazpikoa\'\n• \'Kendu detergentea\'\n• \'Aldatu gaia urdinera\'\n\nHau KipiList Premium-en ezaugarri esklusiboa da.';

  @override
  String get voiceCommandPlanBtn => 'Ikusi Planak';

  @override
  String get itemsAddedSuccess =>
      'Elementuak behar bezala gehitu dira zerrendara!';

  @override
  String get viewList => 'Ikusi zerrenda';

  @override
  String get feedbackTitle => 'Bidali Iritzia';

  @override
  String get feedbackPrompt => 'Zer partekatu nahi zenuke?';

  @override
  String get feedbackTypeBug => 'Akatsa Salatu';

  @override
  String get feedbackTypeBugHint => 'Zerbait ez dabil';

  @override
  String get feedbackTypeSuggestion => 'Iradokizuna';

  @override
  String get feedbackTypeSuggestionHint => 'Aplikazioa hobetzeko ideia';

  @override
  String get feedbackTypeTranslation => 'Itzulpen Arazoa';

  @override
  String get feedbackTypeTranslationHint => 'Itzulpen okerra edo baldarka';

  @override
  String get feedbackTypeFeature => 'Ezaugarri Eskaera';

  @override
  String get feedbackTypeFeatureHint => 'Ikusi nahi duzun ezaugarria';

  @override
  String get feedbackTypeOther => 'Besteak';

  @override
  String get feedbackTypeOtherHint => 'Beste iritzi mota bat';

  @override
  String get feedbackHint => 'Deskribatu zure iritzia xehetasunez...';

  @override
  String get feedbackSend => 'Bidali Iritzia';

  @override
  String get feedbackSending => 'Bidaltzen...';

  @override
  String get feedbackThankYou => 'Eskerrik asko!';

  @override
  String get feedbackThankYouMessage =>
      'Zure iritzia jaso dugu eta KipiList denontzat hobetzen laguntzen digu.';

  @override
  String get feedbackBack => 'Atzera';

  @override
  String feedbackError(String error) {
    return 'Bidaltze-errorea: $error';
  }

  @override
  String get feedbackRetry => 'Saiatu berriro';

  @override
  String get feedbackSettingsTitle => 'Bidali Iritzia';

  @override
  String get feedbackSettingsSubtitle =>
      'Salatu akatsak, iradoki hobekuntzak edo konpondu itzulpenak';

  @override
  String get aiEnergy => 'AI Energia';

  @override
  String get searchInConversation => 'Bilatu elkarrizketan...';

  @override
  String get noMessagesFound => 'Ez da mezurik aurkitu';

  @override
  String get suggestedQuestions => 'Iradokitako galderak:';

  @override
  String get shoppingAssistant => 'Erosketa laguntzailea';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased/$total erosi dira';
  }

  @override
  String get estimatedCost => 'Estimatua';

  @override
  String get viewItems => 'Ikusi elementuak';

  @override
  String get noItemsInList => 'Ez dago zerrendako elementurik';

  @override
  String get longHistoryWarning =>
      'Historia luzea: laguntzaileak azken mezuetan oinarritzen da errendimendu hobea lortzeko.';

  @override
  String get listening => 'Entzuten...';

  @override
  String get addDirectToList => 'Gehitu zuzenean zerrendara';

  @override
  String get unlockFullResponse => 'Desblokeatu Erantzun osoa';

  @override
  String get switchList => 'Aldatu zerrenda';

  @override
  String get marketMode => 'Merkatu modua';

  @override
  String get backToChat => 'Itzuli txateara';

  @override
  String get finishShopping => 'Amaitu Erosketak';

  @override
  String get welcomeAiAssistant => 'Ongi etorri AI Assistant-era';

  @override
  String get createListToStartAi =>
      'Sortu erosketa zerrenda bat txat adimenduna erabiltzen hasteko.';

  @override
  String get howCanIHelp => 'Nola lagundu dezaket?';

  @override
  String get chatSubtitleShort => 'Galdetu prezioak, errezetak, antolaketa...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total erosi du';
  }

  @override
  String get quickReplies => 'Erantzun azkarrak:';

  @override
  String get voiceProFeature =>
      'Ahots-komando aurreratuak Pro dira. Oinarrizko diktaketa gaitzen...';

  @override
  String get viewPro => 'Ikusi Pro';

  @override
  String get errorLoadingChat => 'Aupa! Arazoren bat izan da txata kargatzean.';

  @override
  String get errorLoadingChatSubtitle =>
      'Egiaztatu konexioa edo saiatu berriro geroago.';

  @override
  String get errorOscillation =>
      'Sareko oszilazioengatik edo aldi baterako erabilgarritasunik ezagatik gerta daiteke. Mesedez, saiatu berriro.';

  @override
  String get activeListening => 'Entzute Aktiboa';

  @override
  String get whatToDoWithItem => 'Zer egin nahiko zenuke elementu honekin?';

  @override
  String get viewDetails => 'Ikusi xehetasunak';

  @override
  String get openMenu => 'Ireki menua';

  @override
  String get viewRecipe => 'Ikusi errezeta';

  @override
  String get recipeCreated => 'Errezeta sortuta!';

  @override
  String get editRecipe => 'Editatu';

  @override
  String get deleteRecipe => 'Ezabatu';

  @override
  String get deleteRecipeConfirm => 'Errezeta hau ezabatu?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ziur zaude \"$recipeName\" ezabatu nahi duzula? Ekintza hau ezin da desegin.';
  }

  @override
  String get ingredients => 'Osagaiak';

  @override
  String get instructions => 'Argibideak';

  @override
  String get prepTime => 'Prestatze denbora';

  @override
  String get recipeSaved => 'Errezeta gordeta!';

  @override
  String get noRecipesSaved => 'Ez dago errezetarik gordeta';

  @override
  String get noRecipesSavedHint =>
      'Sortu zure lehen errezeta pertsonalizatua beheko botoia sakatuz.';

  @override
  String get myRecipes => 'Nire errezetak';

  @override
  String get newRecipe => 'Errezeta berria';

  @override
  String get loadingRecipes => 'Zure errezetak kargatzen...';

  @override
  String get errorLoadingRecipes => 'Errorea errezetak kargatzean';

  @override
  String get addIngredient => 'Gehitu osagaia';

  @override
  String get saveRecipe => 'Gorde';

  @override
  String get recipeName => 'Errezetaren izena';

  @override
  String get shortDescription => 'Deskribapen laburra';

  @override
  String get prepTimeMinutes => 'Prestatze denbora (minutuak)';

  @override
  String get instructionsHint => 'Idatzi urrats bat lerroko...';

  @override
  String get addPhoto => 'Gehitu argazkia';

  @override
  String get imageUrlPlaceholder => 'Edo itsatsi irudi baten URLa';

  @override
  String get tags => 'Etiketak';

  @override
  String get recipeTags => 'Errezetaren etiketak';

  @override
  String get suggestedTags => 'Iradokitakoak';

  @override
  String get searchRecipes => 'Bilatu errezetak...';

  @override
  String get filterByTag => 'Filtratu etiketaren arabera';

  @override
  String get allTags => 'Denak';

  @override
  String get recipeDeleted => 'Errezeta ezabatuta';

  @override
  String get saveChanges => 'Gorde aldaketak';

  @override
  String get editRecipeTitle => 'Editatu errezeta';

  @override
  String get newRecipeTitle => 'Errezeta berria';

  @override
  String get requiredField => 'Beharrezkoa';

  @override
  String get chooseImageSource => 'Hautatu irudiaren jatorria';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Sartu URLa';

  @override
  String get recipeImage => 'Errezetaren irudia';

  @override
  String get removeImage => 'Kendu irudia';

  @override
  String get mealPlannerTitle => 'Otorduen planifikatzailea';

  @override
  String get mealPlannerViewMonthly => 'Hileko ikuspegia';

  @override
  String get mealPlannerViewWeekly => 'Asteko ikuspegia';

  @override
  String get mealPlannerNoMeals => 'Ez dago otordurik planifikatuta';

  @override
  String get mealPlannerNoMealsHint => 'Sakatu egun bat otordu bat gehitzeko';

  @override
  String get mealPlannerLoading => 'Otorduen plana kargatzen...';

  @override
  String get mealPlannerError => 'Errorea otorduen plana kargatzean';

  @override
  String get mealPlannerAddMeal => 'Gehitu otordua';

  @override
  String get mealPlannerEditMeal => 'Editatu otordua';

  @override
  String get mealPlannerDeleteMeal => 'Kendu otordua';

  @override
  String get mealPlannerMealDeleted => 'Otordua kenduta';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ano',
      one: '$count ano',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Anoak';

  @override
  String get mealPlannerNoteLabel => 'Oharra (aukerakoa)';

  @override
  String get mealPlannerSelectRecipe => 'Hautatu errezeta bat';

  @override
  String get mealPlannerSearchRecipes => 'Bilatu errezetak...';

  @override
  String get mealPlannerNoRecipesFound => 'Ez da errezetarik aurkitu';

  @override
  String get mealPlannerNoRecipesHint =>
      'Sortu errezetak Errezetak fitxan lehenik';

  @override
  String get mealPlannerSave => 'Gehitu planera';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total otordu planifikatuta';
  }

  @override
  String get mealPlannerGenerateList => 'Sortu erosketa zerrenda';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Gehitu aste honetako otorduetako osagai guztiak erosketa zerrendara?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count osagai gehitu dira zerrendara!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ez dago osagairik gehitzeko. Planifikatu otorduak errezetekin lehenik.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Sortu erosketa zerrenda bat lehenik.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Gosaria';

  @override
  String get mealPlannerMealTypeLunch => 'Bazkaria';

  @override
  String get mealPlannerMealTypeDinner => 'Afaria';

  @override
  String get mealPlannerMealTypeSnack => 'Askaria';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'Ez dago ezer planifikatuta aste honetarako';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Sakatu edozein egun otorduak planifikatzen hasteko!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Gonbidatu zerrendara';

  @override
  String get shareApp => 'Partekatu aplikazioa';

  @override
  String get shareAppDescription => 'Gonbidatu lagunak KipiList erabiltzera';

  @override
  String shareReferralText(String url) {
    return 'KipiList erabiltzen ari naiz nire erosketak antolatzeko! Deskargatu nire esteka bidez eta biok 7 egun Premium doakoak izango ditugu: $url';
  }

  @override
  String get shareReferralSubject => 'Lortu 7 egun KipiList Premium!';

  @override
  String get gestureHint => 'Eduki sakatuta hautatzeko • Irristatu kentzeko';

  @override
  String get catalogTitle => 'Katalogoa';

  @override
  String get catalogMyFrequents => 'Nire Maizak';

  @override
  String get catalogSearchGlobal => 'Bilatu edozein produktu...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Bilatu $category-n...';
  }

  @override
  String get catalogSortPopular => 'Ezagunenak';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nazionalak';

  @override
  String get catalogRareSection => 'ez da hain ohikoa zure herrialdean';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Gehitu $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produktua ez da aurkitu, idatzi izena';

  @override
  String get catalogBrowse => 'Arakatu Katalogoa';

  @override
  String get offlineBanner => 'Lineaz kanpo zaude';

  @override
  String get consentTitle => 'Pribatutasuna eta Analytics';

  @override
  String get consentBody =>
      'KipiList-ek Firebase Analytics erabiltzen du zure esperientzia hobetzeko. Zure datuak gure Pribatutasun Politikaren arabera prozesatzen dira.';

  @override
  String get consentAccept => 'Onartu';

  @override
  String get consentDecline => 'Ez, eskerrik asko';

  @override
  String get mealPlannerPantryAllAvailable => 'Stockan';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementu falta da',
      one: '$count elementu falta da',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Iraungitze data';

  @override
  String get notInformed => 'Ez informatuta';

  @override
  String get skip => 'Saltatu';

  @override
  String get onboardingAiTitle => 'Txateatu Kipi-rekin';

  @override
  String get onboardingAiGreeting =>
      'Kaixo! Kipi naiz, zure erosketa laguntzaile pertsonala! 🛒';

  @override
  String get onboardingAiAskName => 'Zein da zure izena?';

  @override
  String get onboardingAiNameHint => 'Idatzi zure izena...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Pozten naiz zu ezagutzea, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Zein da zure janaririk gogokoena?';

  @override
  String get onboardingAiFoodHint => 'adib. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Aukera bikainak! Hona hemen zure zerrendan gehituko nukeena:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Itxura ona al du honek? Saiatu beste zerbait idazten!';

  @override
  String get onboardingAiReady =>
      'Bikaina! Prest zaude hasteko. Konfigura dezagun zure kontua!';

  @override
  String get onboardingAiContinue => 'Jarraitu →';

  @override
  String get connectionError => 'Konexio-errorea';

  @override
  String connectionErrorDesc(String error) {
    return 'Errorea: $error';
  }

  @override
  String get errorLoadingLists => 'Errore bat gertatu da zerrendak kargatzean';

  @override
  String get noListsFound => 'Ez da zerrendarik aurkitu';

  @override
  String get backToToday => 'Itzuli gaurkora';

  @override
  String get quickSuggestions => 'Iradokizun azkarrak';

  @override
  String get aiEnergyLow => 'AI energia baxua';

  @override
  String get aiUnlockUnlimited => 'Desblokeatu AI mugagabea';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 gaur';
  }

  @override
  String get aiSubscribeUnlimited => 'Harpidetu AI mugagabea lortzeko';

  @override
  String get unlockWithAd => 'Desblokeatu iragarkiarekin';

  @override
  String get conversationHistoryTitle => 'Elkarrizketen historia';

  @override
  String get noConversationsFound => 'Ez da elkarrizketarik aurkitu';

  @override
  String get errorLoadingHistory => 'Errore bat gertatu da historia kargatzean';

  @override
  String get deleteConversationTitle => 'Ezabatu elkarrizketa';

  @override
  String get deleteConversationConfirm => 'Ekintza hau ezin da desegin.';

  @override
  String get deleteConversation => 'Ezabatu';

  @override
  String get subscription => 'Harpidetza';

  @override
  String get kipiListProActive => 'KipiList Pro Aktiboa';

  @override
  String get unlockPremiumTitle => 'Desblokeatu Premium';

  @override
  String get loadingSubscription => 'Harpidetza kargatzen...';

  @override
  String get errorLoadingSubscription =>
      'Errore bat gertatu da harpidetza kargatzean';

  @override
  String get profileSection => 'Profila';

  @override
  String get myProfile => 'Nire profila';

  @override
  String get profileSubtitle => 'Zure profileko informazioa';

  @override
  String get customizeAiAssistant => 'Pertsonalizatu AI laguntzailea';

  @override
  String get assistantHistory => 'Laguntzailea historia';

  @override
  String get assistantHistorySubtitle => 'Ikusi zure elkarrizketen historia';

  @override
  String get manageCategories => 'Kategoriak kudeatu';

  @override
  String get manageCategoriesSubtitle => 'Gehitu, editatu edo kendu kategoriak';

  @override
  String get customizeAssistant => 'Pertsonalizatu';

  @override
  String get assistantName => 'Laguntzailearen izena';

  @override
  String get chooseIcon => 'Aukeratu ikonoa';

  @override
  String get profileSaved => 'Profila gorde da';

  @override
  String get errorSavingProfile => 'Errore bat gertatu da profila gordetzean';

  @override
  String get userProfile => 'Erabiltzailearen profila';

  @override
  String get profileDescription => 'Profilaren deskribapena';

  @override
  String get preferredMarket => 'Lehenetsitako merkatua';

  @override
  String get preferredMarketHint => 'Non egiten dituzu erosketak normalean?';

  @override
  String get dietaryRestrictions => 'Dietaren murrizketak';

  @override
  String get dietaryRestrictionsHint => 'Dieta-murrizketarik?';

  @override
  String get marketsToAvoid => 'Saihesteko merkatuak';

  @override
  String get marketsToAvoidHint => 'Erosketak egin nahi ez dituzun merkatuetan';

  @override
  String get observations => 'Behaketak';

  @override
  String get observationsHint => 'Ohar gehigarririk?';

  @override
  String get saveProfile => 'Gorde profila';

  @override
  String get everythingReady => 'Dena prest!';

  @override
  String get youCompletedList => 'Zerrenda osatu duzu!';

  @override
  String get selectCheaperAlternative => 'Aukeratu alternatiba merkeagoa';

  @override
  String get suggestedItems => 'Iradokitako elementuak';

  @override
  String get swapped => 'Trukatu';

  @override
  String get swap => 'Trukatu';

  @override
  String get chooseThemeColor => 'Aukeratu gaiaren kolorea';

  @override
  String get manageCategoriesTitle => 'Kudeatu Kategoriak';

  @override
  String get categoryLimitReached => 'Kategoriaren mugara iritsi da';

  @override
  String get deleteCategoryTitle => 'Ezabatu kategoria';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" ataleko elementuak \"Beste batzuk\"ra eramango dira.\nJarraitu nahi duzu?';
  }

  @override
  String get deleteCategory => 'Ezabatu';

  @override
  String get newCategoryDialog => 'Kategoria berria';

  @override
  String get editCategoryDialog => 'Editatu kategoria';

  @override
  String get categoryName => 'Kategoriaren izena';

  @override
  String get categoryNameHint => 'Sartu kategoriaren izena';

  @override
  String get categoryColorLabel => 'Kolorea';

  @override
  String get categoryIconLabel => 'Ikonoa';

  @override
  String itemAddedSnack(String name) {
    return '$name gehitu da';
  }

  @override
  String get kipiQuickBarHint => 'Zer erosi behar duzu?';

  @override
  String replaceItem(String item) {
    return 'Ordeztu $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Inoiz ez ahaztu janari produktu bat berriro';

  @override
  String get onboardingGoalSaveMoney => 'Aurreztu dirua';

  @override
  String get onboardingGoalNeverForget => 'Ez ahaztu inoiz elementuak';

  @override
  String get onboardingGoalFaster => 'Erosi azkarrago';

  @override
  String get onboardingGoalFamily => 'Familia erosketak antolatu';

  @override
  String get onboardingGoalRecipes => 'Ezagutu errezetak';

  @override
  String get onboardingGoalPantry => 'Pista despentsa';

  @override
  String get onboardingCommitmentsTitle => 'Zer axola zaizu?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Aukeratu zure helburuak KipiList pertsonalizatzeko';

  @override
  String get onboardingCommitmentsCta => 'Goazen!';

  @override
  String get onboardingPersonalizationNameLabel => 'Zure izena';

  @override
  String get onboardingPersonalizationNameHint => 'Sartu zure izena';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Zertarako erosketak egiten dituzu?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Norentzat egiten duzu erosketak?';

  @override
  String get onboardingCategoryGrocery => 'Janariak';

  @override
  String get onboardingCategoryPharmacy => 'Farmazia';

  @override
  String get onboardingCategoryRecipes => 'Errezetak';

  @override
  String get onboardingCategoryHome => 'Hasiera';

  @override
  String get onboardingCategoryPet => 'Maskota';

  @override
  String get onboardingGroupSolo => 'Ni bakarrik';

  @override
  String get onboardingGroupCouple => 'Bikote';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Zure esperientzia prestatzen...';

  @override
  String get onboardingLoadingStep1 => 'Zure lehentasunak aztertzen...';

  @override
  String get onboardingLoadingStep2 => 'AI laguntzailea konfiguratzen...';

  @override
  String get onboardingLoadingStep3 => 'Ia prest...';

  @override
  String get onboardingLoadingStat1Label => 'Katalogatutako elementuak';

  @override
  String get onboardingLoadingStat2Label => 'Erabiltzaileek lagundu zuten';

  @override
  String get onboardingLoadingStat3Label => 'Minutuak gordeta';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, aurreztu bidaia guztietan!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, inoiz ez ahaztu elementurik!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, erosketak denbora erdian!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, antolatu familiako erosketak!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ezagutu errezeta berriak!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, jarraitu zure despentsa ezin hobeto!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Aurreztu bidaia guztietan!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Inoiz ez ahaztu elementu bat!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Erosi denbora erdian!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Antolatu familiako erosketak!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Ezagutu errezeta berriak!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Jarraitu zure jakitegia primeran!';

  @override
  String paywallPricePerDay(String price) {
    return '$price/eguneko bakarrik — kafe bat baino gutxiago';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Saltatu oraingoz';

  @override
  String get paywallTestimonial =>
      'AIk segundotan antolatzen ditu nire erosketak. Bidaia bakoitzeko 20 minutu aurrezten ditut.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Utzi edonoiz · Ez dago kobratuko proba amaitu arte';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Kaixo $name! Zer $category behar duzu?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Zer $category behar duzu?';
  }

  @override
  String get onboardingAiDemoYes => 'Bai!';

  @override
  String get onboardingAiDemoReaction => 'Polita!';

  @override
  String get onboardingAiDemoChange => 'Aldatu elementua';

  @override
  String get onboardingAiDemoOffer => 'Saiatu beste zerbait idazten!';

  @override
  String get onboardingAiDemoContinue => 'Jarraitu';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Zure erosketa zerrenda, orain AI-rekin';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Ikusi Kipi-k zure zerrenda osoa segundotan nola eraikitzen duen';

  @override
  String get onboardingAiDemoSlideCta => 'Hau nahi dut! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Barbakoa antolatzen ari naiz 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Prest! Hona hemen behar duzun guztia:';

  @override
  String get onboardingAiDemoSlideDone => 'Zerrenda osoa segundotan ✨';

  @override
  String get onboardingPainTitle => 'Zerk zapuzten zaitu gehien?';

  @override
  String get onboardingPainSubtitle => 'Izan zintzoa: bakoitza konponduko dugu';

  @override
  String get onboardingPainCta => 'Bai, konpondu niretzat →';

  @override
  String get onboardingPainForget => 'Dendan gauzak ahazten ditut';

  @override
  String get onboardingPainFamily =>
      'Nire familiak ez du inoiz zerrenda ikusten';

  @override
  String get onboardingPainOverspend => 'Aurrekontua gainditzen dut beti';

  @override
  String get onboardingPainRepeat => 'Bidaia bat ez da inoiz nahikoa';

  @override
  String get aiWelcomeContent =>
      'Kaixo! 👋 **Kipi** naiz, zure erosketa eta errezeten laguntzaile pertsonala!\n\nHemen nago zuri laguntzeko:\n🛒 **Antola ezazu** zure erosketak kategorien arabera automatikoki\n💰 ** Jarraitu ** zure aurrekontua eta eman dirua aurrezteko aholkuak\n🍲 **Iradoki** errezeta goxoak dagoeneko duzunarekin\n\nNola lagundu dezaket gaur? Zure lehen zerrenda sortzen has zaitezke!';

  @override
  String get aiWelcomeSuggestCreateList => 'Sortu nire lehen zerrenda';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, lagundu nire lehen erosketa zerrenda sortzen';

  @override
  String get aiWelcomeSuggestSave => 'Nola aurreztu dirua?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, nola lagunduko didazu janarietan dirua aurrezten?';

  @override
  String get suggestionMilk => 'Esnea';

  @override
  String get suggestionBread => 'Ogia';

  @override
  String get suggestionEggs => 'Arrautzak';

  @override
  String get suggestionCoffee => 'Kafea';

  @override
  String get suggestionRice => 'Arroza';

  @override
  String get suggestionFruits => 'Frutak';
}
