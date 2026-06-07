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
  String get navChat => 'Chat';

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
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
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
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';
}
