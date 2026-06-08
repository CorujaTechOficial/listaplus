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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get onboardingMaybeLater => 'Maybe later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organize your shopping the right way.';
  }

  @override
  String get onboardingSlide1Title => 'Smart Shopping Lists';

  @override
  String get onboardingSlide1Body =>
      'Create and share lists instantly. Kipi adds items automatically based on your habits.';

  @override
  String get onboardingSlide2Title => 'Meet Kipi';

  @override
  String get onboardingSlide2Body =>
      'Ask anything — create lists, find recipes, track your pantry, plan your week.';

  @override
  String get onboardingSlide3Title => 'Pantry & Meal Planning';

  @override
  String get onboardingSlide3Body =>
      'Track what you have, plan meals, and generate shopping lists automatically.';

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
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Behar duzun guztia:';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
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
  String get skip => 'Skip';

  @override
  String get onboardingAiTitle => 'Chat with Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m Kipi, your personal shopping assistant! 🛒';

  @override
  String get onboardingAiAskName => 'What\'s your name?';

  @override
  String get onboardingAiNameHint => 'Type your name...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Nice to meet you, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'What\'s your favorite food?';

  @override
  String get onboardingAiFoodHint => 'e.g. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Great choices! Here\'s what I\'d add to your list:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Does this look good? Try typing something else!';

  @override
  String get onboardingAiReady =>
      'Great! You\'re ready to start. Let\'s set up your account!';

  @override
  String get onboardingAiContinue => 'Continue →';

  @override
  String get errorRenderScreen =>
      'Oops! Something went wrong rendering this screen.';

  @override
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(Object error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

  @override
  String get unlockPremiumTitle => 'Unlock unlimited lists, AI and more';

  @override
  String get loadingSubscription => 'Loading subscription...';

  @override
  String get errorLoadingSubscription => 'Error loading subscription';

  @override
  String get profileSection => 'Profile';

  @override
  String get myProfile => 'My Profile';

  @override
  String get profileSubtitle => 'Personal preferences for the AI assistant';

  @override
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get userProfile => 'User Profile';

  @override
  String get saveProfile => 'Save Profile';

  @override
  String get profileDescription =>
      'Tell us your personal preferences so the AI assistant can suggest personalized items and recipes.';

  @override
  String get preferredMarket => 'Preferred Market';

  @override
  String get preferredMarketHint => 'E.g.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietary Restrictions';

  @override
  String get dietaryRestrictionsHint => 'E.g.: vegan, vegetarian, gluten-free';

  @override
  String get marketsToAvoid => 'Markets to Avoid';

  @override
  String get marketsToAvoidHint => 'E.g.: Market Y, Market Z';

  @override
  String get observations => 'Notes';

  @override
  String get observationsHint => 'Other preferences for the assistant';

  @override
  String get manageCategoriesTitle => 'Kudeatu Kategoriak';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get noCategories => 'No categories.';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(Object days) {
    return '$days days';
  }

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get aiPremiumDescription =>
      'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icon:';

  @override
  String get scanBarcode => 'Scan Barcode';

  @override
  String get scanProduct => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String replaceItem(Object name) {
    return 'Replace $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get swap => 'Swap';

  @override
  String itemAdded(Object name) {
    return '$name added';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error loading products: $error';
  }

  @override
  String get mealType => 'Meal type';

  @override
  String get requestTimeout => 'Sorry, the request timed out.';

  @override
  String get connectionError2 => 'Sorry, a connection error occurred.';

  @override
  String get addingItems => 'Adding items to list...';

  @override
  String get removingItems => 'Removing items...';

  @override
  String get updatingItem => 'Updating item...';

  @override
  String get checkingItem => 'Checking item...';

  @override
  String get uncheckingItem => 'Unchecking item...';

  @override
  String get clearingCheckedItems => 'Clearing checked items...';

  @override
  String get reorganizingList => 'Reorganizing list...';

  @override
  String get creatingNewList => 'Creating new list...';

  @override
  String get removingList => 'Removing list...';

  @override
  String get renamingList => 'Renaming list...';

  @override
  String get queryingYourLists => 'Querying your lists...';

  @override
  String get settingBudget => 'Setting budget...';

  @override
  String get checkingPantry => 'Checking your pantry...';

  @override
  String get addingToPantry => 'Adding to pantry...';

  @override
  String get removingFromPantry => 'Removing from pantry...';

  @override
  String get updatingPantry => 'Updating pantry...';

  @override
  String get savingRecipe => 'Saving recipe...';

  @override
  String get searchingRecipes => 'Searching recipes...';

  @override
  String get removingRecipe => 'Removing recipe...';

  @override
  String get addingIngredientsToList => 'Adding ingredients to list...';

  @override
  String get organizingMenu => 'Organizing your menu...';

  @override
  String get loadingMenu => 'Loading your menu...';

  @override
  String get updatingMenu => 'Updating menu...';

  @override
  String get searchingCategories => 'Searching categories...';

  @override
  String get categorizingItems => 'Categorizing items...';

  @override
  String get generatingShareLink => 'Generating share link...';

  @override
  String get searchingSharedList => 'Searching shared list...';

  @override
  String get loadingProfile => 'Loading your profile...';

  @override
  String get savingPreferences => 'Saving your preferences...';

  @override
  String get checkingSettings => 'Checking your settings...';

  @override
  String get generatingContent => 'Generating personalized content...';

  @override
  String get searchingProducts => 'Searching products...';

  @override
  String get estimatingPrices => 'Estimating prices...';

  @override
  String get processing => 'Processing...';

  @override
  String get shoppingList => 'Shopping List';

  @override
  String get purchasedSuffix => ' [Purchased]';

  @override
  String get listUnarchived => 'List unarchived successfully.';

  @override
  String get toolDeleteList => 'Delete list';

  @override
  String get toolAddItems => 'Add items';

  @override
  String get toolRemoveItems => 'Remove items';

  @override
  String get toolAddToPantry => 'Add to pantry';

  @override
  String get toolRemoveFromPantry => 'Remove from pantry';

  @override
  String get toolShareList => 'Share list';

  @override
  String get toolSaveRecipe => 'Save recipe';

  @override
  String get toolDeleteRecipe => 'Delete recipe';

  @override
  String get toolRemoveMeal => 'Remove meal';

  @override
  String get toolSavePreference => 'Save preference';

  @override
  String get toolRemovePreference => 'Remove preference';

  @override
  String currentTheme(Object mode) {
    return 'Current theme: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Theme changed to $mode.';
  }

  @override
  String get addToList => 'Add to List';

  @override
  String errorAddingItem(Object error) {
    return 'Error adding item: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error adding items in batch: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error toggling item status: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Error removing item: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error updating item: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error updating items: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Error restoring item: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error increasing quantity: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error decreasing quantity: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error clearing list: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Error clearing purchased items: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Error removing items: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Error toggling items: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Error reordering item: $error';
  }

  @override
  String get errorCreatingList => 'Error creating list';

  @override
  String errorServerConnection(Object error) {
    return 'Error connecting to server: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error updating list: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error deleting list: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Error removing shared list: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error setting current list: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error archiving list: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error unarchiving list: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'User not authenticated.';

  @override
  String get errorGeneratingCode => 'Error generating unique code. Try again.';

  @override
  String pantryLimitReached(Object count) {
    return 'Limit of $count items in pantry on the free plan. Upgrade to add more.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error importing list \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error executing $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorry, an error occurred while processing your request. Check your connection or try again later.';

  @override
  String get couldNotProcess => 'Could not process after multiple attempts.';

  @override
  String get errorResumingProcessing => 'Error resuming processing.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error resuming loop';

  @override
  String get othersCategory => 'Others';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro active';

  @override
  String get customizeAiAssistant => 'Customize AI Assistant';

  @override
  String get assistantHistory => 'Assistant History';

  @override
  String get assistantHistorySubtitle => 'View and search past conversations';

  @override
  String get customizeAssistant => 'Customize Assistant';

  @override
  String get assistantName => 'Assistant Name';

  @override
  String get chooseIcon => 'Choose an Icon:';

  @override
  String get backToToday => 'Itzuli gaurkora';

  @override
  String get conversationHistoryTitle => 'Conversation History';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get newConversationDefaultTitle => 'New Conversation';

  @override
  String get unlockedBadges => 'Unlocked Badges';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Organized';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Super Planner';

  @override
  String get aiEnergyLow => 'You\'re almost out of energy!';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    return 'Only $remaining free messages left today. Subscribe to Premium and stop worrying about limits.';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Subscribe to Premium and use the AI chat as much as you want. No counting, no limits.';

  @override
  String get suggestedItems => 'Suggested Items';

  @override
  String get swapped => 'Swapped';

  @override
  String get newCategoryDialog => 'New Category';

  @override
  String get editCategoryDialog => 'Edit Category';

  @override
  String get categoryName => 'Name';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get categoryColorLabel => 'Color:';

  @override
  String get categoryIconLabel => 'Icon:';

  @override
  String get product => 'Product';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed your list.';

  @override
  String get allSet => 'All set!';

  @override
  String itemsCount(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String budgetLabel(String amount) {
    return 'Budget: $amount';
  }

  @override
  String totalLabel(String amount) {
    return 'Total: $amount';
  }

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get saved => 'Saved';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get editAssistantName => 'Edit Assistant Name';

  @override
  String get selectAssistantIcon => 'Select Assistant Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String quantityWithUnit(String quantity, String unit) {
    return '$quantity $unit';
  }

  @override
  String quantityUnitWithPrice(String quantity, String unit, String price) {
    return '$quantity $unit • $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Your shopping list with artificial intelligence';

  @override
  String get onboardingLoginHeadline => 'Sign in in 1 second';

  @override
  String get onboardingLoginSubtitle =>
      'Your lists are saved and synced automatically';

  @override
  String get onboardingPersonalizationNameLabel => 'What can I call you?';

  @override
  String get onboardingPersonalizationNameHint => 'Your name (optional)';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'What do you organize most often?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Do you shop alone or with others?';

  @override
  String get onboardingCategoryGrocery => '🛒 Grocery';

  @override
  String get onboardingCategoryPharmacy => '💊 Pharmacy';

  @override
  String get onboardingCategoryRecipes => '🍽️ Recipes';

  @override
  String get onboardingCategoryHome => '🏠 Home';

  @override
  String get onboardingCategoryPet => '🐾 Pet';

  @override
  String get onboardingGroupSolo => '👤 Just me';

  @override
  String get onboardingGroupCouple => '👥 With someone';

  @override
  String get onboardingGroupFamily => '👨‍👩‍👧 Family';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hi $name! I see you organize $category 😊';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hi! I see you organize $category 😊';
  }

  @override
  String get onboardingAiDemoOffer => 'Want me to build a list right now?';

  @override
  String get onboardingAiDemoYes => '✅ Yes, build it for me!';

  @override
  String get onboardingAiDemoChange => '🔄 Different category';

  @override
  String onboardingAiDemoReaction(int count) {
    return 'Done! I created $count items for you 🎉';
  }

  @override
  String get onboardingAiDemoContinue => 'Amazing! I want more →';

  @override
  String get onboardingCommitmentsTitle => 'What do you want to achieve?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choose everything that applies to you';

  @override
  String get onboardingGoalSaveMoney => '💰 Spend less at the store';

  @override
  String get onboardingGoalNeverForget => '✅ Never forget an item';

  @override
  String get onboardingGoalFaster => '⚡ Shop faster';

  @override
  String get onboardingGoalFamily => '👨‍👩‍👧 Organize with family';

  @override
  String get onboardingGoalRecipes => '🍽️ Plan weekly recipes';

  @override
  String get onboardingGoalPantry => '📦 Track pantry stock';

  @override
  String get onboardingLoadingTitle => 'Building your plan...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up your personalized list...';

  @override
  String get onboardingLoadingStep3 => 'Your plan is ready! 🎉';

  @override
  String get onboardingLoadingStat1Label => 'Average rating';

  @override
  String get onboardingLoadingStat2Label => 'Lists created this week';

  @override
  String get onboardingLoadingStat3Label => 'Recommend the app';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, you\'re 7 days away from spending less on shopping';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, you\'re 7 days away from never forgetting an item again';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, you\'re 7 days away from shopping in half the time';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, you\'re 7 days away from organizing the whole family\'s shopping';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, you\'re 7 days away from planning your recipes automatically';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, you\'re 7 days away from full control of your pantry';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'You\'re 7 days away from spending less on shopping';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'You\'re 7 days away from never forgetting an item again';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'You\'re 7 days away from shopping in half the time';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'You\'re 7 days away from organizing the whole family\'s shopping';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'You\'re 7 days away from planning your recipes automatically';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'You\'re 7 days away from full control of your pantry';

  @override
  String get paywallTestimonial =>
      '\"I saved R\$180 in the first month by better organizing my shopping\"';

  @override
  String get paywallTestimonialAuthor => 'Ana R., São Paulo';

  @override
  String paywallTrialDisclaimer(int days) {
    return 'Cancel anytime · Charged after $days days';
  }

  @override
  String get paywallSkipNow => 'Not now';
}
