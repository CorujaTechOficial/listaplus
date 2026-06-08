// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Orodha ya Ununuzi';

  @override
  String get lists => 'Orodha';

  @override
  String get pantry => 'Pantri';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Mapishi';

  @override
  String get navLists => 'Orodha';

  @override
  String get navMealPlanner => 'Menyu';

  @override
  String get cancel => 'Ghairi';

  @override
  String get save => 'Hifadhi';

  @override
  String get create => 'Unda';

  @override
  String get add => 'Ongeza';

  @override
  String get remove => 'Ondoa';

  @override
  String get delete => 'Futa';

  @override
  String get edit => 'Hariri';

  @override
  String get copy => 'Nakili';

  @override
  String get next => 'Inayofuata';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get regenerate => 'Tengeneza upya';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakilia';

  @override
  String get confirm => 'Thibitisha';

  @override
  String get close => 'Funga';

  @override
  String get import => 'Ingiza';

  @override
  String get rename => 'Badilisha jina';

  @override
  String get upgrade => 'Boresha';

  @override
  String get clear => 'Futa';

  @override
  String error(String message) {
    return 'Hitilafu: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hitilafu: $message';
  }

  @override
  String get purchaseError => 'Hitilafu katika kuchakata ununuzi. Jaribu tena.';

  @override
  String get restoreError => 'Hitilafu katika kurejesha ununuzi. Jaribu tena.';

  @override
  String get loading => 'Inapakia...';

  @override
  String get fieldRequired => 'Sehemu inayohitajika';

  @override
  String get addedFeedback => 'Imeongezwa!';

  @override
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Exit Shopping Mode';

  @override
  String get exit => 'Exit';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zimechaguliwa',
      one: '$count imechaguliwa',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Inakadiriwa';

  @override
  String get alreadyPurchased => 'Tayari imenunuliwa';

  @override
  String get clearList => 'Futa orodha';

  @override
  String get clearPurchased => 'Futa zilizonunuliwa';

  @override
  String get share => 'Shiriki';

  @override
  String get shareViaCode => 'Shiriki kwa msimbo';

  @override
  String get importViaCode => 'Ingiza kwa msimbo';

  @override
  String get listAssistant => 'Msaidizi wa orodha';

  @override
  String get globalAssistant => 'Msaidizi wa jumla';

  @override
  String get becomePremium => 'Kuwa Premium';

  @override
  String get manageSubscription => 'Dhibiti usajili';

  @override
  String get completePurchase => 'Kamilisha ununuzi';

  @override
  String get confirmClearList => 'Ondoa vitu vyote?';

  @override
  String get shareListTitle => 'Shiriki Orodha';

  @override
  String get shareThisCode => 'Shiriki msimbo huu:';

  @override
  String get validForLimitedTime => 'Inatumika kwa muda mfupi';

  @override
  String get importListTitle => 'Ingiza Orodha';

  @override
  String get enterCodeHint => 'Weka msimbo';

  @override
  String get confirmArchiveTitle => 'Kamilisha Ununuzi';

  @override
  String get confirmArchiveContent =>
      'Kamilisha ununuzi huu na uweke kumbukumbu?';

  @override
  String get complete => 'Kamilisha';

  @override
  String get listArchived => 'Orodha imehifadhiwa kwa mafanikio!';

  @override
  String listAdded(String listName) {
    return '$listName imeongezwa!';
  }

  @override
  String get buy => 'Nunua';

  @override
  String get unmark => 'Ondoa alama';

  @override
  String confirmDeleteItems(int count) {
    return 'Ondoa vitu $count?';
  }

  @override
  String get confirmDeleteTitle => 'Thibitisha';

  @override
  String confirmContent(int count) {
    return 'Ondoa vitu $count?';
  }

  @override
  String get archiveList => 'Weka kumbukumbu';

  @override
  String get pantryAppBar => 'Pantri';

  @override
  String get generateShoppingList => 'Tengeneza orodha ya ununuzi';

  @override
  String get pantryEmpty => 'Pantri tupu';

  @override
  String get pantryEmptySubtitle =>
      'Ongeza bidhaa unazotaka kuwa nazo nyumbani';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'Vitu $deficit vinahitaji kununuliwa';
  }

  @override
  String get noItemsToBuy => 'Hakuna vitu vinavyohitaji kununuliwa';

  @override
  String get newPantryList => 'Ununuzi wa Pantri';

  @override
  String get newListTitle => 'Orodha Mpya ya Ununuzi';

  @override
  String itemsWillBeAdded(int count) {
    return 'Vitu $count vitaongezwa';
  }

  @override
  String get listNameLabel => 'Jina la orodha';

  @override
  String listCreated(String name, int count) {
    return 'Orodha \"$name\" imeundwa na vitu $count';
  }

  @override
  String get noTracking => 'Hakuna ufuatiliaji';

  @override
  String get markAsPurchased => 'Weka kama imenunuliwa';

  @override
  String editPantryItem(String name) {
    return 'Hariri $name';
  }

  @override
  String get idealQuantity => 'Kiasi bora';

  @override
  String get currentQuantity => 'Kiasi cha sasa';

  @override
  String get consumed => 'Imetumika';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name imejazwa tena hadi $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ondoa \"$name\" kutoka pantri?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Hariri $name';
  }

  @override
  String get settingsAppBar => 'Mipangilio';

  @override
  String get language => 'Lugha';

  @override
  String get languagePortuguese => 'Kireno (Brasil)';

  @override
  String get languageEnglish => 'Kiingereza';

  @override
  String get languageSystem => 'Chaguo-msingi la mfumo';

  @override
  String get chooseLanguage => 'Chagua Lugha';

  @override
  String get searchLanguage => 'Tafuta lugha...';

  @override
  String get currency => 'Sarafu';

  @override
  String get chooseCurrency => 'Chagua Sarafu';

  @override
  String get searchCurrency => 'Tafuta sarafu...';

  @override
  String get appearance => 'Mwonekano';

  @override
  String get light => 'Mwanga';

  @override
  String get system => 'Mfumo';

  @override
  String get dark => 'Giza';

  @override
  String get themeColor => 'Rangi ya mandhari';

  @override
  String get dynamicColors => 'Rangi zenye nguvu';

  @override
  String get dynamicColorsSubtitle => 'Tumia rangi kulingana na mandhari yako';

  @override
  String get dynamicColorsEnabledWarning =>
      'Zima rangi zinazobadilika ili rangi ya mandhari ianze kutumika';

  @override
  String get finance => 'Fedha';

  @override
  String get monthlyBudgetNav => 'Bajeti ya kila mwezi';

  @override
  String get budgetSubtitle => 'Fuatilia matumizi yako ya kila mwezi';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Hifadhi rudufu';

  @override
  String get backupSubtitle => 'Hamisha au ingiza data yako';

  @override
  String get about => 'Kuhusu';

  @override
  String get version => 'Toleo';

  @override
  String get privacy => 'Faragha';

  @override
  String get termsOfUse => 'Masharti ya matumizi';

  @override
  String get backupTitle => 'Hifadhi rudufu';

  @override
  String get backupPremiumDescription =>
      'Kuhifadhi rudufu na kusafirisha ni kipengele cha premium';

  @override
  String get exportData => 'Hamisha data';

  @override
  String get exportDataSubtitle => 'Hifadhi orodha zote kama JSON';

  @override
  String get importData => 'Ingiza data';

  @override
  String get importDataSubtitle => 'Rejesha orodha kutoka kwa JSON';

  @override
  String get importJsonTitle => 'Ingiza JSON';

  @override
  String get importJsonHint => 'Bandika JSON ya hifadhi rudufu hapa...';

  @override
  String get backupExported => 'Hifadhi rudufu imesafirishwa!';

  @override
  String get budgetAppBar => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetPremiumLocked => 'Bajeti ya jumla ya kila mwezi ni premium';

  @override
  String get budgetUpgradePrompt => 'Boresha ili kufungua';

  @override
  String get noBudgetDefined => 'Hakuna bajeti iliyowekwa';

  @override
  String totalEstimated(String amount) {
    return 'Jumla inakadiriwa: $amount';
  }

  @override
  String get setBudgetButton => 'Weka bajeti';

  @override
  String get budgetLists => 'Orodha';

  @override
  String get budgetValueLabel => 'Kiasi';

  @override
  String get setBudgetTitle => 'Bajeti ya Kila Mwezi';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Zote';

  @override
  String get filterPending => 'Zinazosubiri';

  @override
  String get filterPurchased => 'Zilizonunuliwa';

  @override
  String get sortName => 'Jina';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Tarehe';

  @override
  String get sortManual => 'Mwenyewe';

  @override
  String get addItem => 'Ongeza Kitu';

  @override
  String get itemName => 'Jina la kitu';

  @override
  String get quantityShort => 'Idadi';

  @override
  String get unit => 'Kipimo';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Bei inakadiriwa';

  @override
  String get addItemPrice => 'Bei inakadiriwa';

  @override
  String get editItem => 'Hariri Kitu';

  @override
  String get quantityFull => 'Kiasi';

  @override
  String get editItemPrice => 'Bei inakadiriwa';

  @override
  String get addToPantry => 'Ongeza kwenye Pantri';

  @override
  String addToPantryPrompt(String name) {
    return 'Ongeza \"$name\" kwenye Pantri yako?';
  }

  @override
  String get yes => 'Ndiyo';

  @override
  String get productName => 'Jina la bidhaa';

  @override
  String get idealQty => 'Kiasi bora';

  @override
  String get currentQty => 'Kiasi cha sasa';

  @override
  String get trackStock => 'Fuatilia hisa';

  @override
  String get trackStockActive => 'Inaonekana katika mapendekezo ya ununuzi';

  @override
  String get trackStockInactive => 'Haizalishi mapendekezo ya ununuzi';

  @override
  String get createListDialog => 'Unda Orodha';

  @override
  String get renameListDialog => 'Badilisha Jina la Orodha';

  @override
  String get listHistory => 'Historia ya Orodha';

  @override
  String get myLists => 'Orodha Zangu';

  @override
  String get viewActive => 'Tazama Zinazotumika';

  @override
  String get viewHistory => 'Tazama Historia';

  @override
  String get noArchivedLists => 'Hakuna orodha za kumbukumbu';

  @override
  String get noActiveLists => 'Hakuna orodha zinazotumika';

  @override
  String completedOn(String date) {
    return 'Ilikamilishwa tarehe $date';
  }

  @override
  String get sharedLabel => 'Imeshirikiwa';

  @override
  String get restore => 'Rejesha';

  @override
  String get removeSharedTooltip => 'Ondoa';

  @override
  String get deleteListTitle => 'Futa orodha';

  @override
  String deleteListContent(String name) {
    return 'Una uhakika unataka kufuta \"$name\"? Vitu vyote vitaondolewa.';
  }

  @override
  String get removeSharedListTitle => 'Ondoa orodha iliyoshirikiwa';

  @override
  String removeSharedListContent(String name) {
    return 'Ondoa \"$name\" kutoka kwenye orodha zako? Orodha asili haitaathiriwa.';
  }

  @override
  String get createNewList => 'Unda orodha mpya';

  @override
  String get aiAssistant => 'Msaidizi wa AI';

  @override
  String get aiAssistantDescription =>
      'Pata mapendekezo mahiri, mapishi na vidokezo vya kibinafsi kwa msaidizi wetu wa AI.';

  @override
  String get generalAssistant => 'Msaidizi Mkuu';

  @override
  String get newChat => 'Gumzo Mpya';

  @override
  String get noHistory => 'Hakuna historia ya gumzo';

  @override
  String get deleteSession => 'Futa Gumzo';

  @override
  String get deleteSessionConfirm =>
      'Je, una uhakika unataka kufuta gumzo hili? Ujumbe utapotea kabisa.';

  @override
  String get clearHistory => 'Futa Historia';

  @override
  String get clearHistoryConfirm => 'Futa ujumbe wote katika kikao hiki?';

  @override
  String get chatHint => 'Andika ujumbe wako...';

  @override
  String get chatHintBlocked => 'Fungua AI ili kuzungumza';

  @override
  String chatError(String error) {
    return 'Hitilafu katika kupakia gumzo: $error';
  }

  @override
  String get listHelp => 'Naweza kusaidiaje na orodha yako?';

  @override
  String get generalHelp => 'Naweza kusaidiaje na ununuzi wako leo?';

  @override
  String get chatSubtitle =>
      'Uliza mapendekezo ya vitu, mapishi au vidokezo vya kuokoa.';

  @override
  String get aiError =>
      'Samahani, hitilafu ilitokea wakati wa kuchakata ombi lako. Angalia muunganisho wako au jaribu tena baadaye.';

  @override
  String get aiLimitAlmostReached => 'Karibu ujumbe wa AI';

  @override
  String get unlockAi => 'Fungua AI isiyo na kikomo';

  @override
  String get aiTeaserFallback =>
      'Jisajili kwenye Premium ili upate jibu kamili na upate vidokezo vya AI bila kikomo kwa ununuzi wako...';

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
  String get loginPrompt => 'Ingia ili kufungua\nvipengele vya premium';

  @override
  String get signInGoogle => 'Ingia kwa Google';

  @override
  String get signInApple => 'Ingia kwa Apple';

  @override
  String get continueAsGuest => 'Endelea kama mgeni';

  @override
  String get onboardingWelcomeTitle => 'Karibu kwenye KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Njia bora zaidi ya kupanga ununuzi wako na kuokoa pesa.';

  @override
  String get onboardingSetupTitle => 'Binafsisha matumizi yako';

  @override
  String get onboardingSetupDesc =>
      'Chagua jinsi unavyotaka KipiList ionekane na ikufanyie kazi.';

  @override
  String get onboardingLoginTitle => 'Hifadhi kila kitu kwenye wingu';

  @override
  String get onboardingLoginDesc =>
      'Data yako ilisawazishwa kwenye vifaa vyako vyote';

  @override
  String get onboardingShareTitle => 'Shiriki na wale unaowapenda';

  @override
  String get onboardingShareDesc =>
      'Sawazisha orodha na familia na marafiki kwa wakati halisi';

  @override
  String get onboardingPremiumTitle => 'Fungua vipengele vyote';

  @override
  String get onboardingPremiumSubtitle =>
      'Pata manufaa zaidi kutoka kwa orodha zako za ununuzi';

  @override
  String get onboardingAnnualBadge => 'Thamani Bora';

  @override
  String get onboardingMonthlyLabel => 'Kila mwezi';

  @override
  String get onboardingAnnualLabel => 'Mwaka';

  @override
  String get onboardingViewAllPlans => 'Tazama mipango yote';

  @override
  String get onboardingSubscribeCta => 'Jisajili';

  @override
  String get onboardingCancelAnytime =>
      'Ghairi wakati wowote. Hakuna kujitolea.';

  @override
  String get onboardingContinueAsGuest => 'Endelea kama mgeni';

  @override
  String get onboardingRestore => 'Rejesha Ununuzi';

  @override
  String get onboardingRestoreDesc =>
      'Je, tayari una usajili? Gusa hapa ili kuirejesha.';

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
  String get onboardingExit => 'Utgång';

  @override
  String get onboardingPersonalizationTitle => 'Hebu tujue wewe';

  @override
  String get onboardingPersonalizationDesc =>
      'Tutatumia hii kubinafsisha mapendekezo yako na kufanya ununuzi kuwa bora zaidi.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Ni chakula gani unachopenda zaidi?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'k.m. Pizza, Sushi, Lasagna ...';

  @override
  String get onboardingPersonalizationCta => 'Endelea';

  @override
  String get onboardingPersonalizationSkip => 'Ruka kwa sasa';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Tuambie chakula unachopenda ili kuendelea';

  @override
  String get settingsDefaultScreen => 'Skrini chaguomsingi ya nyumbani';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Chagua kati ya orodha ya ununuzi au gumzo la AI';

  @override
  String get settingsScreenList => 'Orodha ya Ununuzi';

  @override
  String get settingsScreenChat => 'Gumzo la AI';

  @override
  String loginError(String error) {
    return 'Hitilafu ya kuingia: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Hitilafu katika kupakia matoleo. Jaribu tena.';

  @override
  String get paywallPurchaseError =>
      'Haikuweza kukamilisha ununuzi. Jaribu tena.';

  @override
  String get paywallRestoreError =>
      'Hakuna usajili unaoendelea uliopatikana wa kurejesha.';

  @override
  String paywallTrialDays(Object days) {
    return 'SIKU $days BILA MALIPO';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WIKI BURE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS BURE',
      one: '$count MONTH FREE',
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
  String get paywallFeaturesTitle => 'Kila kitu unachohitaji:';

  @override
  String get paywallFeatureUnlimitedLists => 'Orodha zisizo na kikomo';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Udhibiti wa Gharama';

  @override
  String get paywallFeatureSharing => 'Kushiriki';

  @override
  String get paywallBeforeAfterTitle => 'AI Kabla na Baada:';

  @override
  String get paywallLabelCommon => 'Kawaida';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'mchele';

  @override
  String get paywallBeforeItem2 => 'sabuni';

  @override
  String get paywallBeforeItem3 => 'nyama';

  @override
  String get paywallBeforeItem4 => 'mkate';

  @override
  String get paywallAfterItem1 => 'Nafaka';

  @override
  String get paywallAfterItem2 => 'Kusafisha';

  @override
  String get paywallAfterItem3 => 'Nyama';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'Watumiaji wetu wanasema nini:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI hupanga ununuzi wangu kwa sekunde. Ninaokoa dakika 20 kwa kila safari ya soko.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Sijawahi kusahau orodha tena. Gumzo la AI ni la kusisimua!';

  @override
  String get paywallSocialProof => '+ Familia 2,400 zinaitumia';

  @override
  String get paywallCtaUnlock => 'Fungua PRO';

  @override
  String get paywallBestValue => 'THAMANI BORA';

  @override
  String get paywallMostPopular => 'MAARUFU SANA';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Malipo salama';

  @override
  String get paywallSelectPlan => 'Chagua mpango wako:';

  @override
  String paywallSavePercent(Object percent) {
    return 'OKOA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price pekee kwa mwezi';
  }

  @override
  String get paywallPackageAnnual => 'Mpango wa Mwaka';

  @override
  String get paywallPackageMonthly => 'Mpango wa Mwezi';

  @override
  String get paywallPackageLifetime => 'Ufikiaji wa Maisha';

  @override
  String get paywallCancelAnytime => 'Ghairi wakati wowote. Hakuna kujitolea.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Sera ya Faragha';

  @override
  String get paywallTerms => 'Masharti ya Matumizi';

  @override
  String get paywallRestore => 'Rejesha';

  @override
  String get paywallHeroHeadline => 'Kipi AI daima kando yako';

  @override
  String get paywallHeroSubtitle =>
      'Ongeza vitu, panga orodha na uokoe wakati na AI mfukoni mwako';

  @override
  String get paywallBenefit1Desc =>
      'Huongeza, kupanga na kupendekeza vipengee 24/7';

  @override
  String get paywallBenefit2Desc => 'Hakuna kikomo cha orodha 3';

  @override
  String get paywallBenefit3Desc =>
      'Ufuatiliaji wa gharama na orodha za familia';

  @override
  String get paywallPackageMonthlyDesc => 'Kubadilika kamili';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Anza bila malipo — siku $days';
  }

  @override
  String get premiumUpgrade => 'Boresha ili kufungua';

  @override
  String get itemRemoved => 'Kitu kimeondolewa';

  @override
  String get undo => 'Tengua';

  @override
  String get emptyListTitle => 'Orodha yako haina kitu';

  @override
  String get emptyListSubtitle => 'Ongeza vitu ili kuanza';

  @override
  String get noListFoundTitle => 'Hakuna orodha zilizopatikana';

  @override
  String get noListFoundSubtitle => 'Unda orodha yako ya kwanza ili kuanza';

  @override
  String get createFirstList => 'Unda Orodha ya Kwanza';

  @override
  String get listBudgetTitle => 'Bajeti ya Orodha';

  @override
  String get budgetAmountLabel => 'Kiasi cha bajeti';

  @override
  String get removeBudget => 'Ondoa';

  @override
  String get prefUnlimitedLists => 'Orodha zisizo na kikomo';

  @override
  String get prefSharing => 'Shiriki orodha';

  @override
  String get prefFullHistory => 'Historia kamili';

  @override
  String get prefExportData => 'Hamisha data';

  @override
  String get prefCustomThemes => 'Mandhari maalum';

  @override
  String get prefMonthlyBudget => 'Bajeti ya jumla ya kila mwezi';

  @override
  String get prefAIAssistant => 'Msaidizi wa Kibinafsi wa AI';

  @override
  String get prefUnlimitedPantry => 'Pantri isiyo na kikomo';

  @override
  String get prefInteractiveArtifacts => 'Vipengee shirikishi vya AI';

  @override
  String get themeGreen => 'Kijani';

  @override
  String get themeBlue => 'Bluu';

  @override
  String get themePurple => 'Zambarau';

  @override
  String get themeRed => 'Nyekundu';

  @override
  String get themeOrange => 'Chungwa';

  @override
  String get themePink => 'Waridi';

  @override
  String get themeIndigo => 'Buluu';

  @override
  String get themeAmber => 'Kaharabu';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kahawia';

  @override
  String get catFruits => 'Matunda';

  @override
  String get catCleaning => 'Usafishaji';

  @override
  String get catBeverages => 'Vinywaji';

  @override
  String get catBakery => 'Mkate';

  @override
  String get catOthers => 'Vingine';

  @override
  String get unitPack => 'pakiti';

  @override
  String get shareSubject => 'Orodha ya Ununuzi';

  @override
  String get monthlyBudgetTitle => 'Bajeti ya Kila Mwezi';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Futa orodha';

  @override
  String get pantryItemRemoved => 'Kitu kimeondolewa';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'Vipengee $deficit vinahitaji kununuliwa',
      one: 'Kipengee $deficit kinahitaji kununuliwa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Jumla ya gari';

  @override
  String get restockLabel => 'Jaza tena';

  @override
  String get advancedFeatures => 'Vipengele vya hali ya juu';

  @override
  String get selectAll => 'Chagua zote';

  @override
  String get deselectAll => 'Achagua zote';

  @override
  String get monthlyBudgetAppBar => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetEditTitle => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetDashboardTitle => 'Dashibodi';

  @override
  String get selectListForDashboard => 'Chagua orodha ili kutazama dashibodi.';

  @override
  String get spendingAnalysis => 'Uchambuzi wa Matumizi';

  @override
  String get noItemsToAnalyze => 'Hakuna vitu kwenye orodha vya kuchambua.';

  @override
  String get markItemsToSeeAnalysis =>
      'Weka alama ya vitu kama vilivyonunuliwa ili kuona uchambuzi.';

  @override
  String get totalSpending => 'Jumla ya Matumizi';

  @override
  String get spendingByCategory => 'Matumizi kwa Kategoria';

  @override
  String get achievements => 'Mafanikio';

  @override
  String get exportPdfExcel => 'Hamisha PDF/Excel';

  @override
  String get exportPdf => 'Hamisha kama PDF';

  @override
  String get exportExcel => 'Hamisha kama Excel';

  @override
  String get organizingAi => 'INAPANGUA KWA AI...';

  @override
  String get yesLabel => 'Ndiyo';

  @override
  String get noLabel => 'Hapana';

  @override
  String get shareListText => 'Orodha Yangu ya Ununuzi';

  @override
  String get emptyListAddItems =>
      'Orodha yako haina kitu! Ongeza vitu kwanza. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Orodha imepanguliwa kichawi kwa kategoria! ✨';

  @override
  String get shoppingMode => 'Hali ya Ununuzi';

  @override
  String get smartOrganization => 'Upangaji Mahiri';

  @override
  String get savings => 'Akiba';

  @override
  String get shoppingModeHeader => 'HALI YA UNUNUZI';

  @override
  String get shareAsText => 'Tuma vitu kama maandishi yaliyopangwa';

  @override
  String get shareRealtime => 'Usawazishaji wa wakati halisi na watu wengine';

  @override
  String get quickRecipe => 'Mapishi ya haraka';

  @override
  String get quickRecipePrompt =>
      'Pendekeza mapishi na vitu kutoka kwenye orodha yangu.';

  @override
  String get economyTips => 'Vidokezo vya uchumi';

  @override
  String get economyTipsPrompt => 'Nawezaje kuokoa pesa kwenye ununuzi huu?';

  @override
  String get organizeAisles => 'Panga kwa safu';

  @override
  String get organizeAislesPrompt => 'Panga kwa safu za duka.';

  @override
  String get recipeSuggestion => 'Mapendekezo ya mapishi';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Salio la mikopo $remaining';
  }

  @override
  String get addAllToList => 'Ongeza yote kwenye orodha';

  @override
  String get organizeByAisles => 'Panga kwa safu';

  @override
  String get voiceTranscriptionTooltip => 'Kuandika kwa sauti (Bure)';

  @override
  String get aiVoiceCommandTooltip => 'Amri ya Sauti ya AI (Premium)';

  @override
  String get voiceCommandTitle => 'Amri ya Sauti ya AI';

  @override
  String get voiceCommandContent =>
      'Zungumza kwa asili ili kudhibiti orodha yako!\n\nMifano:\n• \'Ongeza mkate, jibini, na ham\'\n• \'Ondoa sabuni ya kufulia\'\n• \'Badilisha mandhari kuwa bluu\'\n\nHiki ni kipengele cha kipekee cha KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Tazama Pland';

  @override
  String get itemsAddedSuccess =>
      'Vitu vimeongezwa kwenye orodha kwa mafanikio!';

  @override
  String get viewList => 'Tazama orodha';

  @override
  String get feedbackTitle => 'Tuma Maoni';

  @override
  String get feedbackPrompt => 'Ungependa kushiriki nini?';

  @override
  String get feedbackTypeBug => 'Ripoti Hitilafu';

  @override
  String get feedbackTypeBugHint => 'Kitu hakifanyi kazi';

  @override
  String get feedbackTypeSuggestion => 'Pendekezo';

  @override
  String get feedbackTypeSuggestionHint => 'Wazo la kuboresha programu';

  @override
  String get feedbackTypeTranslation => 'Suala la Tafsiri';

  @override
  String get feedbackTypeTranslationHint =>
      'Tafsiri isiyo sahihi au isiyo nzuri';

  @override
  String get feedbackTypeFeature => 'Ombi la Kipengele';

  @override
  String get feedbackTypeFeatureHint => 'Kipengele ungependa kuona';

  @override
  String get feedbackTypeOther => 'Nyingine';

  @override
  String get feedbackTypeOtherHint => 'Aina nyingine ya maoni';

  @override
  String get feedbackHint => 'Eleza maoni yako kwa undani...';

  @override
  String get feedbackSend => 'Tuma Maoni';

  @override
  String get feedbackSending => 'Inatuma...';

  @override
  String get feedbackThankYou => 'Asante!';

  @override
  String get feedbackThankYouMessage =>
      'Maoni yako yamepokelewa na yanatusaidia kuboresha KipiList kwa kila mtu.';

  @override
  String get feedbackBack => 'Nyuma';

  @override
  String feedbackError(String error) {
    return 'Hitilafu ya kutuma: $error';
  }

  @override
  String get feedbackRetry => 'Jaribu tena';

  @override
  String get feedbackSettingsTitle => 'Tuma Maoni';

  @override
  String get feedbackSettingsSubtitle =>
      'Ripoti hitilafu, pendekeza maboresho, au rekebisha tafsiri';

  @override
  String get aiEnergy => 'Nishati ya AI';

  @override
  String get searchInConversation => 'Tafuta kwenye mazungumzo...';

  @override
  String get noMessagesFound => 'Hakuna ujumbe uliopatikana';

  @override
  String get suggestedQuestions => 'Maswali yaliyopendekezwa:';

  @override
  String get shoppingAssistant => 'Msaidizi wa ununuzi';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased kati ya $total imenunuliwa';
  }

  @override
  String get estimatedCost => 'Inakadiriwa';

  @override
  String get viewItems => 'Tazama vitu';

  @override
  String get noItemsInList => 'Hakuna vipengee kwenye orodha';

  @override
  String get longHistoryWarning =>
      'Historia ndefu: Mratibu huangazia ujumbe wa hivi punde kwa utendakazi bora.';

  @override
  String get listening => 'Inasikiliza...';

  @override
  String get addDirectToList => 'Ongeza moja kwa moja kwenye orodha';

  @override
  String get unlockFullResponse => 'Fungua Majibu Kamili';

  @override
  String get switchList => 'Badilisha orodha';

  @override
  String get marketMode => 'Hali ya Soko';

  @override
  String get backToChat => 'Rudi kwa Gumzo';

  @override
  String get finishShopping => 'Maliza Ununuzi';

  @override
  String get welcomeAiAssistant => 'Karibu kwenye Msaidizi wa AI';

  @override
  String get createListToStartAi =>
      'Unda orodha ya ununuzi ili kuanza kutumia gumzo mahiri.';

  @override
  String get howCanIHelp => 'Ninawezaje kusaidia?';

  @override
  String get chatSubtitleShort => 'Uliza kuhusu bei, mapishi, shirika...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total imenunuliwa';
  }

  @override
  String get quickReplies => 'Majibu ya haraka:';

  @override
  String get voiceProFeature =>
      'Amri za sauti za hali ya juu ni Pro. Inawasha imla msingi...';

  @override
  String get viewPro => 'Tazama Pro';

  @override
  String get errorLoadingChat =>
      'Lo! Hitilafu fulani imetokea wakati wa kupakia gumzo.';

  @override
  String get errorLoadingChatSubtitle =>
      'Angalia muunganisho wako au ujaribu tena baadaye.';

  @override
  String get errorOscillation =>
      'Hii inaweza kutokea kwa sababu ya kuzunguka kwa mtandao au kutopatikana kwa muda. Tafadhali jaribu tena.';

  @override
  String get activeListening => 'Usikivu wa Kikamilifu';

  @override
  String get whatToDoWithItem => 'Je, ungependa kufanya nini na kipengee hiki?';

  @override
  String get viewDetails => 'Tazama Maelezo';

  @override
  String get openMenu => 'Fungua menyu';

  @override
  String get viewRecipe => 'Tazama Kichocheo';

  @override
  String get recipeCreated => 'Kichocheo kimeundwa!';

  @override
  String get editRecipe => 'Hariri';

  @override
  String get deleteRecipe => 'Futa';

  @override
  String get deleteRecipeConfirm => 'Ungependa kufuta kichocheo hiki?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Je, una uhakika unataka kufuta \"$recipeName\"? Kitendo hiki hakiwezi kutenduliwa.';
  }

  @override
  String get ingredients => 'Viungo';

  @override
  String get instructions => 'Maagizo';

  @override
  String get prepTime => 'Muda wa maandalizi';

  @override
  String get recipeSaved => 'Kichocheo kimehifadhiwa!';

  @override
  String get noRecipesSaved => 'Hakuna mapishi yaliyohifadhiwa';

  @override
  String get noRecipesSavedHint =>
      'Unda kichocheo chako cha kwanza maalum kwa kugonga kitufe kilicho hapa chini.';

  @override
  String get myRecipes => 'Mapishi Yangu';

  @override
  String get newRecipe => 'Kichocheo Kipya';

  @override
  String get loadingRecipes => 'Inapakia mapishi yako...';

  @override
  String get errorLoadingRecipes => 'Hitilafu katika kupakia mapishi';

  @override
  String get addIngredient => 'Ongeza kiungo';

  @override
  String get saveRecipe => 'Hifadhi';

  @override
  String get recipeName => 'Jina la mapishi';

  @override
  String get shortDescription => 'Maelezo mafupi';

  @override
  String get prepTimeMinutes => 'Muda wa maandalizi (dakika)';

  @override
  String get instructionsHint => 'Andika hatua moja kwa kila mstari...';

  @override
  String get addPhoto => 'Ongeza picha';

  @override
  String get imageUrlPlaceholder => 'Au bandika URL ya picha';

  @override
  String get tags => 'Lebo';

  @override
  String get recipeTags => 'Vitambulisho vya mapishi';

  @override
  String get suggestedTags => 'Imependekezwa';

  @override
  String get searchRecipes => 'Tafuta mapishi...';

  @override
  String get filterByTag => 'Chuja kwa lebo';

  @override
  String get allTags => 'Wote';

  @override
  String get recipeDeleted => 'Kichocheo kimefutwa';

  @override
  String get saveChanges => 'Hifadhi mabadiliko';

  @override
  String get editRecipeTitle => 'Badilisha Kichocheo';

  @override
  String get newRecipeTitle => 'Kichocheo Kipya';

  @override
  String get requiredField => 'Inahitajika';

  @override
  String get chooseImageSource => 'Chagua chanzo cha picha';

  @override
  String get gallery => 'Matunzio';

  @override
  String get enterUrl => 'Weka URL';

  @override
  String get recipeImage => 'Picha ya mapishi';

  @override
  String get removeImage => 'Ondoa picha';

  @override
  String get mealPlannerTitle => 'Mpangaji wa Chakula';

  @override
  String get mealPlannerViewMonthly => 'Mtazamo wa kila mwezi';

  @override
  String get mealPlannerViewWeekly => 'Mtazamo wa kila wiki';

  @override
  String get mealPlannerNoMeals => 'Hakuna milo iliyopangwa';

  @override
  String get mealPlannerNoMealsHint => 'Gusa siku ili kuongeza chakula';

  @override
  String get mealPlannerLoading => 'Inapakia mpango wa chakula...';

  @override
  String get mealPlannerError => 'Hitilafu katika kupakia mpango wa chakula';

  @override
  String get mealPlannerAddMeal => 'Ongeza Mlo';

  @override
  String get mealPlannerEditMeal => 'Hariri Mlo';

  @override
  String get mealPlannerDeleteMeal => 'Ondoa chakula';

  @override
  String get mealPlannerMealDeleted => 'Mlo umeondolewa';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count huduma zingine',
      one: '$count inahudumia',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Huduma';

  @override
  String get mealPlannerNoteLabel => 'Kumbuka (si lazima)';

  @override
  String get mealPlannerSelectRecipe => 'Chagua kichocheo';

  @override
  String get mealPlannerSearchRecipes => 'Tafuta mapishi...';

  @override
  String get mealPlannerNoRecipesFound => 'Hakuna mapishi yaliyopatikana';

  @override
  String get mealPlannerNoRecipesHint =>
      'Unda mapishi kwenye kichupo cha Mapishi kwanza';

  @override
  String get mealPlannerSave => 'Ongeza kwenye mpango';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count kati ya milo $total imepangwa';
  }

  @override
  String get mealPlannerGenerateList => 'Tengeneza orodha ya ununuzi';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Je, ungependa kuongeza viungo vyote kutoka kwenye milo iliyopangwa wiki hii kwenye orodha yako ya ununuzi?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count kiungo/viungo vimeongezwa kwenye orodha yako!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Hakuna viungo vya kuongeza. Panga milo kadhaa ukitumia mapishi kwanza.';

  @override
  String get mealPlannerGenerateListNoList => 'Unda orodha ya ununuzi kwanza.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Kifungua kinywa';

  @override
  String get mealPlannerMealTypeLunch => 'Chakula cha mchana';

  @override
  String get mealPlannerMealTypeDinner => 'Chakula cha jioni';

  @override
  String get mealPlannerMealTypeSnack => 'Vitafunio';

  @override
  String get mealPlannerDateLabel => 'Tarehe';

  @override
  String get mealPlannerWeekEmpty => 'Hakuna kilichopangwa kwa wiki hii';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Gusa siku yoyote ili uanze kupanga milo yako!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return 'Dakika $minutes';
  }

  @override
  String get inviteToList => 'Alika kwenye orodha';

  @override
  String get shareApp => 'Shiriki programu';

  @override
  String get shareAppDescription => 'Alika marafiki kutumia KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Ninatumia KipiList kupanga ununuzi wangu! Pakua kupitia kiungo changu na sote tupate siku 7 za Premium bila malipo: $url';
  }

  @override
  String get shareReferralSubject => 'Pata siku 7 za KipiList Premium!';

  @override
  String get gestureHint => 'Hold to select • Swipe to remove';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'My Frequents';

  @override
  String get catalogSearchGlobal => 'Search any product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Search in $category...';
  }

  @override
  String get catalogSortPopular => 'Most popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'less common in your country';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Add $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Product not found, type the name';

  @override
  String get catalogBrowse => 'Browse Catalog';

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
  String get manageCategoriesTitle => 'Manage Categories';

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
  String get sortAZ => 'A-Z';

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
  String get backToToday => 'Back to today';

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
