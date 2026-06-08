// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Iepirkumu saraksts';

  @override
  String get lists => 'Saraksti';

  @override
  String get pantry => 'Pieliekamais';

  @override
  String get navChat => 'Tērzēšana';

  @override
  String get navRecipes => 'Receptes';

  @override
  String get navLists => 'Saraksti';

  @override
  String get navMealPlanner => 'Izvēlne';

  @override
  String get cancel => 'Atcelt';

  @override
  String get save => 'Saglabāt';

  @override
  String get create => 'Izveidot';

  @override
  String get add => 'Pievienot';

  @override
  String get remove => 'Noņemt';

  @override
  String get delete => 'Dzēst';

  @override
  String get edit => 'Rediģēt';

  @override
  String get copy => 'Kopēt';

  @override
  String get next => 'Tālāk';

  @override
  String get retry => 'Mēģināt vēlreiz';

  @override
  String get regenerate => 'Atjaunot';

  @override
  String get copiedToClipboard => 'Nokopēts starpliktuvē';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get close => 'Aizvērt';

  @override
  String get import => 'Importēt';

  @override
  String get rename => 'Pārsaukt';

  @override
  String get upgrade => 'Jaunināt';

  @override
  String get clear => 'Notīrīt';

  @override
  String error(String message) {
    return 'Kļūda: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Kļūda: $message';
  }

  @override
  String get purchaseError => 'Kļūda, apstrādājot pirkumu. Mēģiniet vēlreiz.';

  @override
  String get restoreError => 'Kļūda, atjaunojot pirkumus. Mēģiniet vēlreiz.';

  @override
  String get loading => 'Ielādē...';

  @override
  String get fieldRequired => 'Obligāts lauks';

  @override
  String get addedFeedback => 'Pievienots!';

  @override
  String get profile => 'Profils';

  @override
  String get exitShoppingMode => 'Izejiet no iepirkšanās režīma';

  @override
  String get exit => 'Iziet';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izvēlēti $count vienumi',
      one: 'Izvēlēts $count vienums',
      zero: 'Izvēlēti 0 vienumi',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Aptuveni';

  @override
  String get alreadyPurchased => 'Jau iegādāts';

  @override
  String get clearList => 'Notīrīt sarakstu';

  @override
  String get clearPurchased => 'Notīrīt iegādāto';

  @override
  String get share => 'Dalīties';

  @override
  String get shareViaCode => 'Dalīties ar kodu';

  @override
  String get importViaCode => 'Importēt ar kodu';

  @override
  String get listAssistant => 'Saraksta palīgs';

  @override
  String get globalAssistant => 'Globālais palīgs';

  @override
  String get becomePremium => 'Kļūt par Premium';

  @override
  String get manageSubscription => 'Pārvaldīt abonementu';

  @override
  String get completePurchase => 'Pabeigt pirkumu';

  @override
  String get confirmClearList => 'Noņemt visus vienumus?';

  @override
  String get shareListTitle => 'Dalīties ar sarakstu';

  @override
  String get shareThisCode => 'Dalieties ar šo kodu:';

  @override
  String get validForLimitedTime => 'Derīgs ierobežotu laiku';

  @override
  String get importListTitle => 'Importēt sarakstu';

  @override
  String get enterCodeHint => 'Ievadiet kodu';

  @override
  String get confirmArchiveTitle => 'Pabeigt pirkumu';

  @override
  String get confirmArchiveContent => 'Pabeigt šo pirkumu un arhivēt sarakstu?';

  @override
  String get complete => 'Pabeigt';

  @override
  String get listArchived => 'Saraksts veiksmīgi arhivēts!';

  @override
  String listAdded(String listName) {
    return '$listName pievienots!';
  }

  @override
  String get buy => 'Pirkt';

  @override
  String get unmark => 'Noņemt atzīmi';

  @override
  String confirmDeleteItems(int count) {
    return 'Noņemt $count vienumu(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Apstiprināt';

  @override
  String confirmContent(int count) {
    return 'Noņemt $count vienumu(s)?';
  }

  @override
  String get archiveList => 'Arhivēt sarakstu';

  @override
  String get pantryAppBar => 'Pieliekamais';

  @override
  String get generateShoppingList => 'Ģenerēt iepirkumu sarakstu';

  @override
  String get pantryEmpty => 'Tukšs pieliekamais';

  @override
  String get pantryEmptySubtitle =>
      'Pievienojiet produktus, kurus vēlaties turēt mājās';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vienums(-i) jāiegādājas';
  }

  @override
  String get noItemsToBuy => 'Nav jāiegādājas neviens vienums';

  @override
  String get newPantryList => 'Pieliekamā iepirkums';

  @override
  String get newListTitle => 'Jauns iepirkumu saraksts';

  @override
  String itemsWillBeAdded(int count) {
    return 'Tiks pievienots $count vienums(-i)';
  }

  @override
  String get listNameLabel => 'Saraksta nosaukums';

  @override
  String listCreated(String name, int count) {
    return 'Saraksts \"$name\" izveidots ar $count vienumiem';
  }

  @override
  String get noTracking => 'Bez izsekošanas';

  @override
  String get markAsPurchased => 'Atzīmēt kā iegādātu';

  @override
  String editPantryItem(String name) {
    return 'Rediģēt $name';
  }

  @override
  String get idealQuantity => 'Ideālais daudzums';

  @override
  String get currentQuantity => 'Pašreizējais daudzums';

  @override
  String get consumed => 'Patērēts';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name papildināts līdz $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Noņemt \"$name\" no pieliekamā?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediģēt $name';
  }

  @override
  String get settingsAppBar => 'Iestatījumi';

  @override
  String get language => 'Valoda';

  @override
  String get languagePortuguese => 'portugāļu (Brazīlija)';

  @override
  String get languageEnglish => 'angļu valoda';

  @override
  String get languageSystem => 'Sistēmas noklusējums';

  @override
  String get chooseLanguage => 'Izvēlēties valodu';

  @override
  String get searchLanguage => 'Meklēt valodu...';

  @override
  String get currency => 'Valūta';

  @override
  String get chooseCurrency => 'Atlasiet Valūta';

  @override
  String get searchCurrency => 'Meklēt valūtu...';

  @override
  String get appearance => 'Izskats';

  @override
  String get light => 'Gaišs';

  @override
  String get system => 'Sistēma';

  @override
  String get dark => 'Tumšs';

  @override
  String get themeColor => 'Tēmas krāsa';

  @override
  String get dynamicColors => 'Dinamiskās krāsas';

  @override
  String get dynamicColorsSubtitle =>
      'Izmantot krāsas, pamatojoties uz tapetēm';

  @override
  String get dynamicColorsEnabledWarning =>
      'Atspējojiet dinamiskās krāsas, lai motīva krāsa stātos spēkā';

  @override
  String get finance => 'Finanses';

  @override
  String get monthlyBudgetNav => 'Mēneša budžets';

  @override
  String get budgetSubtitle => 'Sekojiet līdzi saviem ikmēneša izdevumiem';

  @override
  String get data => 'Dati';

  @override
  String get backupNav => 'Rezerves kopija';

  @override
  String get backupSubtitle => 'Eksportējiet vai importējiet savus datus';

  @override
  String get about => 'Par';

  @override
  String get version => 'Versija';

  @override
  String get privacy => 'Privātums';

  @override
  String get termsOfUse => 'Lietošanas noteikumi';

  @override
  String get backupTitle => 'Rezerves kopija';

  @override
  String get backupPremiumDescription =>
      'Rezerves kopēšana un eksportēšana ir premium funkcija';

  @override
  String get exportData => 'Eksportēt datus';

  @override
  String get exportDataSubtitle => 'Saglabāt visus sarakstus kā JSON';

  @override
  String get importData => 'Importēt datus';

  @override
  String get importDataSubtitle => 'Atjaunot sarakstus no JSON';

  @override
  String get importJsonTitle => 'Importēt JSON';

  @override
  String get importJsonHint => 'Ielīmējiet rezerves JSON šeit...';

  @override
  String get backupExported => 'Rezerves kopija eksportēta!';

  @override
  String get budgetAppBar => 'Mēneša budžets';

  @override
  String get budgetPremiumLocked => 'Globālais mēneša budžets ir premium';

  @override
  String get budgetUpgradePrompt => 'Jauniniet, lai atbloķētu';

  @override
  String get noBudgetDefined => 'Nav iestatīts budžets';

  @override
  String totalEstimated(String amount) {
    return 'Aptuvenā kopsumma: $amount';
  }

  @override
  String get setBudgetButton => 'Iestatīt budžetu';

  @override
  String get budgetLists => 'Saraksti';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Mēneša budžets';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterPending => 'Gaida';

  @override
  String get filterPurchased => 'Iegādāts';

  @override
  String get sortName => 'Nosaukums';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datums';

  @override
  String get sortManual => 'Manuāli';

  @override
  String get addItem => 'Pievienot vienumu';

  @override
  String get itemName => 'Vienuma nosaukums';

  @override
  String get quantityShort => 'Daudz.';

  @override
  String get unit => 'Vienība';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Aptuvenā cena';

  @override
  String get addItemPrice => 'Aptuvenā cena';

  @override
  String get editItem => 'Rediģēt vienumu';

  @override
  String get quantityFull => 'Daudzums';

  @override
  String get editItemPrice => 'Aptuvenā cena';

  @override
  String get addToPantry => 'Pievienot pieliekamajam';

  @override
  String addToPantryPrompt(String name) {
    return 'Pievienot \"$name\" jūsu pieliekamajam?';
  }

  @override
  String get yes => 'Jā';

  @override
  String get productName => 'Produkta nosaukums';

  @override
  String get idealQty => 'Ideālais daudz.';

  @override
  String get currentQty => 'Pašreizējais daudz.';

  @override
  String get trackStock => 'Sekot krājumam';

  @override
  String get trackStockActive => 'Parādās iepirkumu ieteikumos';

  @override
  String get trackStockInactive => 'Neģenerē iepirkumu ieteikumus';

  @override
  String get createListDialog => 'Izveidot sarakstu';

  @override
  String get renameListDialog => 'Pārsaukt sarakstu';

  @override
  String get listHistory => 'Sarakstu vēsture';

  @override
  String get myLists => 'Mani saraksti';

  @override
  String get viewActive => 'Skatīt aktīvos';

  @override
  String get viewHistory => 'Skatīt vēsturi';

  @override
  String get noArchivedLists => 'Nav arhivētu sarakstu';

  @override
  String get noActiveLists => 'Nav aktīvu sarakstu';

  @override
  String completedOn(String date) {
    return 'Pabeigts $date';
  }

  @override
  String get sharedLabel => 'Kopīgots';

  @override
  String get restore => 'Atjaunot';

  @override
  String get removeSharedTooltip => 'Noņemt';

  @override
  String get deleteListTitle => 'Dzēst sarakstu';

  @override
  String deleteListContent(String name) {
    return 'Vai tiešām vēlaties dzēst \"$name\"? Visi vienumi tiks noņemti.';
  }

  @override
  String get removeSharedListTitle => 'Noņemt kopīgoto sarakstu';

  @override
  String removeSharedListContent(String name) {
    return 'Noņemt \"$name\" no jūsu sarakstiem? Oriģinālais saraksts netiks ietekmēts.';
  }

  @override
  String get createNewList => 'Izveidot jaunu sarakstu';

  @override
  String get aiAssistant => 'AI palīgs';

  @override
  String get aiAssistantDescription =>
      'Saņemiet gudrus ieteikumus, receptes un personalizētus padomus ar mūsu AI palīgu.';

  @override
  String get generalAssistant => 'Vispārējais palīgs';

  @override
  String get newChat => 'Jauna tērzēšana';

  @override
  String get noHistory => 'Nav tērzēšanas vēstures';

  @override
  String get deleteSession => 'Dzēst tērzēšanu';

  @override
  String get deleteSessionConfirm =>
      'Vai tiešām vēlaties dzēst šo tērzēšanu? Ziņojumi tiks neatgriezeniski zaudēti.';

  @override
  String get clearHistory => 'Notīrīt vēsturi';

  @override
  String get clearHistoryConfirm => 'Notīrīt visus ziņojumus šajā sesijā?';

  @override
  String get chatHint => 'Ierakstiet savu ziņojumu...';

  @override
  String get chatHintBlocked => 'Atbloķējiet AI, lai tērzētu';

  @override
  String chatError(String error) {
    return 'Kļūda, ielādējot tērzēšanu: $error';
  }

  @override
  String get listHelp => 'Kā es varu palīdzēt ar jūsu sarakstu?';

  @override
  String get generalHelp => 'Kā es varu palīdzēt ar jūsu iepirkšanos šodien?';

  @override
  String get chatSubtitle =>
      'Jautājiet par vienumu ieteikumiem, receptēm vai taupīšanas padomiem.';

  @override
  String get aiError =>
      'Atvainojiet, radās kļūda, apstrādājot jūsu pieprasījumu. Pārbaudiet savienojumu vai mēģiniet vēlreiz vēlāk.';

  @override
  String get aiLimitAlmostReached => 'Gandrīz beigušies AI ziņojumi';

  @override
  String get unlockAi => 'Atbloķējiet neierobežotu AI';

  @override
  String get aiTeaserFallback =>
      'Abonējiet Premium, lai atvērtu pilnu atbildi un saņemtu neierobežotus AI padomus par iepirkšanos...';

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
  String get loginPrompt => 'Pierakstieties, lai atbloķētu\npremium funkcijas';

  @override
  String get signInGoogle => 'Pierakstīties ar Google';

  @override
  String get signInApple => 'Pierakstīties ar Apple';

  @override
  String get continueAsGuest => 'Turpināt kā viesis';

  @override
  String get onboardingWelcomeTitle => 'Laipni lūdzam KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Gudrākais veids, kā organizēt iepirkšanos un ietaupīt naudu.';

  @override
  String get onboardingSetupTitle => 'Personalizējiet savu pieredzi';

  @override
  String get onboardingSetupDesc =>
      'Izvēlieties, kā vēlaties, lai KipiList izskatītos un darbotos jūsu labā.';

  @override
  String get onboardingLoginTitle => 'Saglabājiet visu mākonī';

  @override
  String get onboardingLoginDesc =>
      'Jūsu dati tiek sinhronizēti visās jūsu ierīcēs';

  @override
  String get onboardingShareTitle => 'Dalieties ar tiem, kas jums patīk';

  @override
  String get onboardingShareDesc =>
      'Sinhronizējiet sarakstus ar ģimeni un draugiem reāllaikā';

  @override
  String get onboardingPremiumTitle => 'Atbloķējiet visas funkcijas';

  @override
  String get onboardingPremiumSubtitle =>
      'Iegūstiet maksimālu labumu no saviem iepirkumu sarakstiem';

  @override
  String get onboardingAnnualBadge => 'Labākā vērtība';

  @override
  String get onboardingMonthlyLabel => 'Ikmēneša';

  @override
  String get onboardingAnnualLabel => 'Gada';

  @override
  String get onboardingViewAllPlans => 'Skatīt visus plānus';

  @override
  String get onboardingSubscribeCta => 'Abonēt';

  @override
  String get onboardingCancelAnytime => 'Atcelt jebkurā laikā. Bez apņemšanās.';

  @override
  String get onboardingContinueAsGuest => 'Turpināt kā viesis';

  @override
  String get onboardingRestore => 'Atjaunot';

  @override
  String get onboardingRestoreDesc =>
      'Vai jums jau ir abonements? Pieskarieties šeit, lai to atjaunotu.';

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
  String get onboardingExit => 'Iziet';

  @override
  String get onboardingPersonalizationTitle => 'Iepazīsimies';

  @override
  String get onboardingPersonalizationDesc =>
      'Mēs to izmantosim, lai personalizētu jūsu ieteikumus un padarītu iepirkšanos gudrāku.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Kāds ir tavs mīļākais ēdiens?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'piem. Pica, Suši, Lazanja...';

  @override
  String get onboardingPersonalizationCta => 'Turpināt';

  @override
  String get onboardingPersonalizationSkip => 'Pagaidām izlaist';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Pastāstiet mums savu iecienītāko ēdienu, lai turpinātu';

  @override
  String get settingsDefaultScreen => 'Noklusējuma sākuma ekrāns';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Izvēlieties starp iepirkumu sarakstu vai AI tērzēšanu';

  @override
  String get settingsScreenList => 'Iepirkumu saraksts';

  @override
  String get settingsScreenChat => 'AI tērzēšana';

  @override
  String loginError(String error) {
    return 'Pierakstīšanās kļūda: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Ielādējot piedāvājumus, radās kļūda. Mēģiniet vēlreiz.';

  @override
  String get paywallPurchaseError =>
      'Nevarēja pabeigt pirkumu. Mēģiniet vēlreiz.';

  @override
  String get paywallRestoreError =>
      'Nav atrasts neviens aktīvs abonements, ko atjaunot.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIENAS BEZMAKSAS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count BEZMAKSAS NEDĒĻAS',
      one: '$count BEZMAKSAS NEDĒĻA',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MĒNEŠI BEZMAKSAS',
      one: '$count MONTH BEZMAKSAS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Izmēģiniet KipiList Pro bez maksas 7 dienas';

  @override
  String get paywallTrialSubtitle => 'Atcelt jebkurā laikā. Šodien bez maksas.';

  @override
  String get paywallTrialCta => 'Sāciet bezmaksas izmēģinājuma versiju';

  @override
  String get recipeAddToList => 'Pievienot iepirkumu sarakstam';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count sastāvdaļas pievienotas $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Viss, kas jums nepieciešams:';

  @override
  String get paywallFeatureUnlimitedLists => 'Neierobežoti saraksti';

  @override
  String get paywallFeatureSmartAI => 'Gudrais AI';

  @override
  String get paywallFeatureExpenseControl => 'Izdevumu kontrole';

  @override
  String get paywallFeatureSharing => 'Kopīgošana';

  @override
  String get paywallBeforeAfterTitle => 'AI pirms un pēc:';

  @override
  String get paywallLabelCommon => 'Bieži';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rīsi';

  @override
  String get paywallBeforeItem2 => 'ziepes';

  @override
  String get paywallBeforeItem3 => 'gaļu';

  @override
  String get paywallBeforeItem4 => 'maize';

  @override
  String get paywallAfterItem1 => 'Graudi';

  @override
  String get paywallAfterItem2 => 'Tīrīšana';

  @override
  String get paywallAfterItem3 => 'Gaļa';

  @override
  String get paywallAfterItem4 => 'Maiznīca';

  @override
  String get paywallTestimonialsTitle => 'Ko saka mūsu lietotāji:';

  @override
  String get paywallTestimonial1Name => 'Anna S.';

  @override
  String get paywallTestimonial1Text =>
      'AI sakārto manu iepirkšanos dažu sekunžu laikā. Ietaupu 20 min uz vienu tirgus braucienu.';

  @override
  String get paywallTestimonial2Name => 'Čārlzs M.';

  @override
  String get paywallTestimonial2Text =>
      'Es nekad vairs neaizmirsu nevienu saraksta vienumu. AI tērzēšana ir sensacionāla!';

  @override
  String get paywallSocialProof => 'To izmanto +2400 ģimenes';

  @override
  String get paywallCtaUnlock => 'Atbloķējiet PRO';

  @override
  String get paywallBestValue => 'LABĀKĀ VĒRTĪBA';

  @override
  String get paywallMostPopular => 'POPULĀRĀKAIS';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Drošs maksājums';

  @override
  String get paywallSelectPlan => 'Izvēlieties savu plānu:';

  @override
  String paywallSavePercent(Object percent) {
    return 'IETAUPĪT $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Tikai $price mēnesī';
  }

  @override
  String get paywallPackageAnnual => 'Gada plāns';

  @override
  String get paywallPackageMonthly => 'Mēneša plāns';

  @override
  String get paywallPackageLifetime => 'Piekļuve mūža garumā';

  @override
  String get paywallCancelAnytime => 'Atcelt jebkurā laikā. Bez apņemšanās.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Privātuma politika';

  @override
  String get paywallTerms => 'Lietošanas noteikumi';

  @override
  String get paywallRestore => 'Atjaunot';

  @override
  String get paywallHeroHeadline => 'Kipi AI vienmēr ir jūsu pusē';

  @override
  String get paywallHeroSubtitle =>
      'Pievienojiet vienumus, kārtojiet sarakstus un ietaupiet laiku, izmantojot AI savā kabatā';

  @override
  String get paywallBenefit1Desc =>
      'Pievieno, kārto un iesaka vienumus visu diennakti';

  @override
  String get paywallBenefit2Desc => 'Nav 3 sarakstu ierobežojuma';

  @override
  String get paywallBenefit3Desc => 'Izdevumu uzskaite un ģimenes saraksti';

  @override
  String get paywallPackageMonthlyDesc => 'Pilnīga elastība';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Sāciet bez maksas — $days dienas';
  }

  @override
  String get premiumUpgrade => 'Jauniniet, lai atbloķētu';

  @override
  String get itemRemoved => 'Vienums noņemts';

  @override
  String get undo => 'Atsaukt';

  @override
  String get emptyListTitle => 'Jūsu saraksts ir tukšs';

  @override
  String get emptyListSubtitle => 'Pievienojiet vienumus, lai sāktu';

  @override
  String get noListFoundTitle => 'Nav atrasts neviens saraksts';

  @override
  String get noListFoundSubtitle =>
      'Izveidojiet savu pirmo sarakstu, lai sāktu';

  @override
  String get createFirstList => 'Izveidot pirmo sarakstu';

  @override
  String get listBudgetTitle => 'Saraksta budžets';

  @override
  String get budgetAmountLabel => 'Budžeta summa';

  @override
  String get removeBudget => 'Noņemt';

  @override
  String get prefUnlimitedLists => 'Neierobežoti saraksti';

  @override
  String get prefSharing => 'Kopīgot sarakstus';

  @override
  String get prefFullHistory => 'Pilna vēsture';

  @override
  String get prefExportData => 'Eksportēt datus';

  @override
  String get prefCustomThemes => 'Pielāgotas tēmas';

  @override
  String get prefMonthlyBudget => 'Globālais mēneša budžets';

  @override
  String get prefAIAssistant => 'Personīgais AI palīgs';

  @override
  String get prefUnlimitedPantry => 'Neierobežots pieliekamais';

  @override
  String get prefInteractiveArtifacts => 'Interaktīvi AI artefakti';

  @override
  String get themeGreen => 'Zaļš';

  @override
  String get themeBlue => 'Zils';

  @override
  String get themePurple => 'Violets';

  @override
  String get themeRed => 'Sarkans';

  @override
  String get themeOrange => 'Oranžs';

  @override
  String get themePink => 'Rozā';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Dzintars';

  @override
  String get themeTeal => 'Tirkīzzils';

  @override
  String get themeBrown => 'Brūns';

  @override
  String get catFruits => 'Augļi';

  @override
  String get catCleaning => 'Tīrīšana';

  @override
  String get catBeverages => 'Dzērieni';

  @override
  String get catBakery => 'Maiznīca';

  @override
  String get catOthers => 'Citi';

  @override
  String get unitPack => 'iepakojums';

  @override
  String get shareSubject => 'Iepirkumu saraksts';

  @override
  String get monthlyBudgetTitle => 'Mēneša budžets';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Dzēst sarakstu';

  @override
  String get pantryItemRemoved => 'Vienums noņemts';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit vienumi jāiegādājas',
      one: '$deficit vienums jāiegādājas',
      zero: '0 vienumi jāiegādājas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Groza kopsumma';

  @override
  String get restockLabel => 'Papildināt';

  @override
  String get advancedFeatures => 'Papildu funkcijas';

  @override
  String get selectAll => 'Izvēlēties visu';

  @override
  String get deselectAll => 'Noņemt izvēli';

  @override
  String get monthlyBudgetAppBar => 'Mēneša budžets';

  @override
  String get budgetEditTitle => 'Mēneša budžets';

  @override
  String get budgetDashboardTitle => 'Panelis';

  @override
  String get selectListForDashboard =>
      'Izvēlieties sarakstu, lai skatītu paneli.';

  @override
  String get spendingAnalysis => 'Izdevumu analīze';

  @override
  String get noItemsToAnalyze => 'Sarakstā nav vienumu, ko analizēt.';

  @override
  String get markItemsToSeeAnalysis =>
      'Atzīmējiet vienumus kā iegādātus, lai redzētu analīzi.';

  @override
  String get totalSpending => 'Kopējie izdevumi';

  @override
  String get spendingByCategory => 'Izdevumi pēc kategorijas';

  @override
  String get achievements => 'Sasniegumi';

  @override
  String get exportPdfExcel => 'Eksportēt PDF/Excel';

  @override
  String get exportPdf => 'Eksportēt kā PDF';

  @override
  String get exportExcel => 'Eksportēt kā Excel';

  @override
  String get organizingAi => 'ORGANIZĒ AR AI...';

  @override
  String get yesLabel => 'Jā';

  @override
  String get noLabel => 'Nē';

  @override
  String get shareListText => 'Mans iepirkumu saraksts';

  @override
  String get emptyListAddItems =>
      'Jūsu saraksts ir tukšs! Vispirms pievienojiet vienumus. ℹ️';

  @override
  String get listOrganizedMagic => 'Saraksts maģiski sakārtots kategorijās! ✨';

  @override
  String get shoppingMode => 'Iepirkšanās režīms';

  @override
  String get smartOrganization => 'Viedā organizācija';

  @override
  String get savings => 'Ietaupījums';

  @override
  String get shoppingModeHeader => 'IEPIRKŠANĀS REŽĪMS';

  @override
  String get shareAsText => 'Sūtīt vienumus kā formatētu tekstu';

  @override
  String get shareRealtime => 'Reāllaika sinhronizācija ar citiem';

  @override
  String get quickRecipe => 'Ātrā recepte';

  @override
  String get quickRecipePrompt =>
      'Iesakiet receptes ar maniem saraksta vienumiem.';

  @override
  String get economyTips => 'Taupīšanas padomi';

  @override
  String get economyTipsPrompt => 'Kā es varu ietaupīt naudu šim pirkumam?';

  @override
  String get organizeAisles => 'Sakārtot pa ejām';

  @override
  String get organizeAislesPrompt => 'Sakārtot pa tirgus ejām.';

  @override
  String get recipeSuggestion => 'Receptes ieteikums';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Atlikuši $remaining kredīti';
  }

  @override
  String get addAllToList => 'Pievienot visu sarakstam';

  @override
  String get organizeByAisles => 'Sakārtot pa ejām';

  @override
  String get voiceTranscriptionTooltip => 'Balss ievade (Bezmaksas)';

  @override
  String get aiVoiceCommandTooltip => 'AI balss komanda (Premium)';

  @override
  String get voiceCommandTitle => 'AI balss komanda';

  @override
  String get voiceCommandContent =>
      'Runājiet dabiski, lai pārvaldītu savu sarakstu!\n\nPiemēri:\n• \'Pievienot maizi, sieru un šķiņķi\'\n• \'Noņemt veļas mazgāšanas līdzekli\'\n• \'Mainīt tēmu uz zilu\'\n\nŠī ir KipiList Premium ekskluzīva funkcija.';

  @override
  String get voiceCommandPlanBtn => 'Skatīt plānus';

  @override
  String get itemsAddedSuccess => 'Vienumi veiksmīgi pievienoti sarakstam!';

  @override
  String get viewList => 'Skatīt sarakstu';

  @override
  String get feedbackTitle => 'Nosūtīt atsauksmi';

  @override
  String get feedbackPrompt => 'Ar ko vēlaties dalīties?';

  @override
  String get feedbackTypeBug => 'Ziņot par kļūdu';

  @override
  String get feedbackTypeBugHint => 'Kaut kas nedarbojas';

  @override
  String get feedbackTypeSuggestion => 'Ieteikums';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja, kā uzlabot lietotni';

  @override
  String get feedbackTypeTranslation => 'Tulkojuma problēma';

  @override
  String get feedbackTypeTranslationHint => 'Nepareizs vai neveikls tulkojums';

  @override
  String get feedbackTypeFeature => 'Funkcijas pieprasījums';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, kuru vēlaties redzēt';

  @override
  String get feedbackTypeOther => 'Cits';

  @override
  String get feedbackTypeOtherHint => 'Cits atsauksmes veids';

  @override
  String get feedbackHint => 'Aprakstiet savu atsauksmi detalizēti...';

  @override
  String get feedbackSend => 'Nosūtīt atsauksmi';

  @override
  String get feedbackSending => 'Sūta...';

  @override
  String get feedbackThankYou => 'Paldies!';

  @override
  String get feedbackThankYouMessage =>
      'Jūsu atsauksme ir saņemta un palīdz mums uzlabot KipiList visiem.';

  @override
  String get feedbackBack => 'Atpakaļ';

  @override
  String feedbackError(String error) {
    return 'Sūtīšanas kļūda: $error';
  }

  @override
  String get feedbackRetry => 'Mēģināt vēlreiz';

  @override
  String get feedbackSettingsTitle => 'Nosūtīt atsauksmi';

  @override
  String get feedbackSettingsSubtitle =>
      'Ziņot par kļūdām, ieteikt uzlabojumus vai labot tulkojumus';

  @override
  String get aiEnergy => 'AI enerģija';

  @override
  String get searchInConversation => 'Meklēt sarunā...';

  @override
  String get noMessagesFound => 'Nav atrasts neviens ziņojums';

  @override
  String get suggestedQuestions => 'Ieteiktie jautājumi:';

  @override
  String get shoppingAssistant => 'Iepirkšanās palīgs';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased no $total iegādāts';
  }

  @override
  String get estimatedCost => 'Aptuvenais';

  @override
  String get viewItems => 'Skatīt vienumus';

  @override
  String get noItemsInList => 'Sarakstā nav neviena vienuma';

  @override
  String get longHistoryWarning =>
      'Ilga vēsture: palīgs koncentrējas uz jaunākajiem ziņojumiem, lai nodrošinātu labāku veiktspēju.';

  @override
  String get listening => 'Klausos...';

  @override
  String get addDirectToList => 'Pievienojiet tieši sarakstam';

  @override
  String get unlockFullResponse => 'Atbloķējiet pilnu atbildi';

  @override
  String get switchList => 'Pārslēgt sarakstu';

  @override
  String get marketMode => 'Tirgus režīms';

  @override
  String get backToChat => 'Atpakaļ uz tērzēšanu';

  @override
  String get finishShopping => 'Pabeigt iepirkšanos';

  @override
  String get welcomeAiAssistant => 'Laipni lūdzam AI palīgā';

  @override
  String get createListToStartAi =>
      'Izveidojiet iepirkumu sarakstu, lai sāktu lietot viedo tērzēšanu.';

  @override
  String get howCanIHelp => 'Kā es varu palīdzēt?';

  @override
  String get chatSubtitleShort =>
      'Jautājiet par cenām, receptēm, organizāciju...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total iegādāts';
  }

  @override
  String get quickReplies => 'Ātrās atbildes:';

  @override
  String get voiceProFeature =>
      'Papildu balss komandas ir Pro. Notiek pamata diktēšanas iespējošana...';

  @override
  String get viewPro => 'Skatīt Pro';

  @override
  String get errorLoadingChat => 'Ak! Ielādējot tērzēšanu, radās kļūda.';

  @override
  String get errorLoadingChatSubtitle =>
      'Pārbaudiet savienojumu vai vēlāk mēģiniet vēlreiz.';

  @override
  String get errorOscillation =>
      'Tas var notikt tīkla svārstību vai īslaicīgas nepieejamības dēļ. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get activeListening => 'Aktīvā klausīšanās';

  @override
  String get whatToDoWithItem => 'Ko jūs vēlētos darīt ar šo vienumu?';

  @override
  String get viewDetails => 'Skatīt detaļas';

  @override
  String get openMenu => 'Atvērt izvēlni';

  @override
  String get viewRecipe => 'Skatīt recepti';

  @override
  String get recipeCreated => 'Recepte izveidota!';

  @override
  String get editRecipe => 'Rediģēt';

  @override
  String get deleteRecipe => 'Dzēst';

  @override
  String get deleteRecipeConfirm => 'Dzēst šo recepti?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Vai tiešām vēlaties dzēst \"$recipeName\"? Šo darbību nevar atsaukt.';
  }

  @override
  String get ingredients => 'Sastāvdaļas';

  @override
  String get instructions => 'Norādījumi';

  @override
  String get prepTime => 'Gatavošanas laiks';

  @override
  String get recipeSaved => 'Recepte saglabāta!';

  @override
  String get noRecipesSaved => 'Nav saglabātu recepšu';

  @override
  String get noRecipesSavedHint =>
      'Izveidojiet savu pirmo pielāgoto recepti, pieskaroties zemāk esošajai pogai.';

  @override
  String get myRecipes => 'Manas receptes';

  @override
  String get newRecipe => 'Jauna recepte';

  @override
  String get loadingRecipes => 'Ielādē jūsu receptes...';

  @override
  String get errorLoadingRecipes => 'Kļūda, ielādējot receptes';

  @override
  String get addIngredient => 'Pievienot sastāvdaļu';

  @override
  String get saveRecipe => 'Saglabāt';

  @override
  String get recipeName => 'Receptes nosaukums';

  @override
  String get shortDescription => 'Īss apraksts';

  @override
  String get prepTimeMinutes => 'Gatavošanas laiks (minūtes)';

  @override
  String get instructionsHint => 'Ierakstiet vienu soli rindā...';

  @override
  String get addPhoto => 'Pievienot fotoattēlu';

  @override
  String get imageUrlPlaceholder => 'Vai ielīmēt attēla URL';

  @override
  String get tags => 'Birkas';

  @override
  String get recipeTags => 'Receptes birkas';

  @override
  String get suggestedTags => 'Ieteiktie';

  @override
  String get searchRecipes => 'Meklēt receptes...';

  @override
  String get filterByTag => 'Filtrēt pēc birkas';

  @override
  String get allTags => 'Visas';

  @override
  String get recipeDeleted => 'Recepte dzēsta';

  @override
  String get saveChanges => 'Saglabāt izmaiņas';

  @override
  String get editRecipeTitle => 'Rediģēt recepti';

  @override
  String get newRecipeTitle => 'Jauna recepte';

  @override
  String get requiredField => 'Obligāts';

  @override
  String get chooseImageSource => 'Izvēlēties attēla avotu';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Ievadīt URL';

  @override
  String get recipeImage => 'Receptes attēls';

  @override
  String get removeImage => 'Noņemt attēlu';

  @override
  String get mealPlannerTitle => 'Maltīšu plānotājs';

  @override
  String get mealPlannerViewMonthly => 'Mēneša skats';

  @override
  String get mealPlannerViewWeekly => 'Nedēļas skats';

  @override
  String get mealPlannerNoMeals => 'Nav plānotu maltīšu';

  @override
  String get mealPlannerNoMealsHint =>
      'Pieskarieties dienai, lai pievienotu maltīti';

  @override
  String get mealPlannerLoading => 'Ielādē maltīšu plānu...';

  @override
  String get mealPlannerError => 'Kļūda, ielādējot maltīšu plānu';

  @override
  String get mealPlannerAddMeal => 'Pievienot maltīti';

  @override
  String get mealPlannerEditMeal => 'Rediģēt maltīti';

  @override
  String get mealPlannerDeleteMeal => 'Noņemt maltīti';

  @override
  String get mealPlannerMealDeleted => 'Maltīte noņemta';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcijas',
      one: '$count porcija',
      zero: '$count porcijas',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcijas';

  @override
  String get mealPlannerNoteLabel => 'Piezīme (pēc izvēles)';

  @override
  String get mealPlannerSelectRecipe => 'Izvēlieties recepti';

  @override
  String get mealPlannerSearchRecipes => 'Meklēt receptes...';

  @override
  String get mealPlannerNoRecipesFound => 'Receptes nav atrastas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Vispirms izveidojiet receptes cilnē Receptes';

  @override
  String get mealPlannerSave => 'Pievienot plānam';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Saplanotas $count no $total maltītēm';
  }

  @override
  String get mealPlannerGenerateList => 'Ģenerēt iepirkumu sarakstu';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Pievienot visas sastāvdaļas no plānotajām šīs nedēļas maltītēm iepirkumu sarakstam?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count sastāvdaļa(-as) pievienota jūsu sarakstam!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nav sastāvdaļu, ko pievienot. Vispirms plānojiet maltītes ar receptēm.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Vispirms izveidojiet iepirkumu sarakstu.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Brokastis';

  @override
  String get mealPlannerMealTypeLunch => 'Pusdienas';

  @override
  String get mealPlannerMealTypeDinner => 'Vakariņas';

  @override
  String get mealPlannerMealTypeSnack => 'Uzkodas';

  @override
  String get mealPlannerDateLabel => 'Datums';

  @override
  String get mealPlannerWeekEmpty => 'Šai nedēļai nekas nav plānots';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Pieskarieties jebkurai dienai, lai sāktu plānot maltītes!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Uzaicināt uz sarakstu';

  @override
  String get shareApp => 'Kopīgojiet lietotni';

  @override
  String get shareAppDescription => 'Uzaiciniet draugus izmantot KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Iepirkšanās organizēšanai izmantoju KipiList! Lejupielādējiet, izmantojot manu saiti, un mēs abi saņemsim 7 dienas Premium bez maksas: $url';
  }

  @override
  String get shareReferralSubject => 'Saņemiet KipiList Premium 7 dienas!';

  @override
  String get gestureHint => 'Turiet, lai atlasītu • Velciet, lai noņemtu';

  @override
  String get catalogTitle => 'Katalogs';

  @override
  String get catalogMyFrequents => 'Mani Frekvences';

  @override
  String get catalogSearchGlobal => 'Meklēt jebkuru produktu...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Meklēt $category...';
  }

  @override
  String get catalogSortPopular => 'Populārākais';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionāļi';

  @override
  String get catalogRareSection => 'retāk jūsu valstī';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Pievienot $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produkts nav atrasts, ierakstiet nosaukumu';

  @override
  String get catalogBrowse => 'Pārlūkot katalogu';

  @override
  String get offlineBanner => 'Jūs esat bezsaistē';

  @override
  String get consentTitle => 'Privātums un analīze';

  @override
  String get consentBody =>
      'KipiList izmanto Firebase Analytics, lai uzlabotu jūsu pieredzi. Jūsu dati tiek apstrādāti saskaņā ar mūsu Privātuma politiku.';

  @override
  String get consentAccept => 'Pieņemt';

  @override
  String get consentDecline => 'Nē, paldies';

  @override
  String get mealPlannerPantryAllAvailable => 'Noliktavā';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trūkst preces',
      one: '$count trūkst vienuma',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Derīguma termiņš';

  @override
  String get notInformed => 'Nav informēts';

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
  String get manageCategoriesTitle => 'Pārvaldīt kategorijas';

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
  String get backToToday => 'Atpakaļ uz šodienu';

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
