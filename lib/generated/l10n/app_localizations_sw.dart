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
  String get navChat => 'Soga';

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
  String get profile => 'Wasifu';

  @override
  String get exitShoppingMode => 'Ondoka kwenye Hali ya Ununuzi';

  @override
  String get exit => 'Utgång';

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
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Weka msimbo pau katikati';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'Mafanikio Yangu';

  @override
  String get itemsPurchased => 'Bidhaa Zilizonunuliwa';

  @override
  String get totalSavings => 'Jumla ya Akiba';

  @override
  String get currentStreak => 'Mfululizo wa Sasa';

  @override
  String streakDays(int count) {
    return 'Siku $days';
  }

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

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
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

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
    return '$remaining Vitendo vya AI vimesalia mwezi huu - pata toleo jipya la bila kikomo';
  }

  @override
  String get aiUsageExhausted =>
      'Kikomo cha AI cha kila mwezi kimefikiwa. Pata toleo jipya la Pro kwa ukomo →';

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
  String get onboardingMaybeLater => 'Labda baadaye';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hujambo $name, panga ununuzi wako kwa njia ifaayo.';
  }

  @override
  String get onboardingSlide1Title => 'Orodha za Ununuzi Mahiri';

  @override
  String get onboardingSlide1Body =>
      'Unda na ushiriki orodha mara moja. Kipi huongeza bidhaa kiotomatiki kulingana na mazoea yako.';

  @override
  String get onboardingSlide2Title => 'Kutana na Kipi';

  @override
  String get onboardingSlide2Body =>
      'Uliza chochote - tengeneza orodha, pata mapishi, fuatilia pantry yako, panga wiki yako.';

  @override
  String get onboardingSlide3Title => 'Pantry & Mlo wa Kupanga';

  @override
  String get onboardingSlide3Body =>
      'Fuatilia ulichonacho, panga chakula, na utengeneze orodha za ununuzi kiotomatiki.';

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
  String get paywallTrialTitle => 'Jaribu bila malipo!';

  @override
  String get paywallTrialSubtitle => 'Ghairi wakati wowote. Hakuna malipo leo.';

  @override
  String get paywallTrialCta => 'Anza Jaribio Bila Malipo';

  @override
  String get recipeAddToList => 'Ongeza kwenye orodha ya ununuzi';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected =>
      'Hakuna orodha iliyochaguliwa. Fungua orodha kwanza.';

  @override
  String get paywallFeaturesTitle => 'Kila kitu unachohitaji:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI hupanga orodha yako kiotomatiki';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Unda orodha nyingi kadri unavyohitaji';

  @override
  String get paywallFeatureDescSharing => 'Nunua pamoja kwa wakati halisi';

  @override
  String get paywallFeatureDescPantry => 'Fuatilia ulicho nacho nyumbani';

  @override
  String get paywallFeatureDescBudget => 'Kaa kwenye bajeti kila mwezi';

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
    return 'Siku $days za kwanza BILA MALIPO';
  }

  @override
  String get paywallSecuredByStore =>
      'Imelindwa na Google Play · Ghairi wakati wowote';

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
      one: 'other $deficit kinahitaji kununuliwa',
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
  String shareReferralText(String url) {
    return 'Ninatumia KipiList kupanga ununuzi wangu! Pakua kupitia kiungo changu na sote tupate siku 7 za Premium bila malipo: $url';
  }

  @override
  String get shareReferralSubject => 'Pata siku 7 za KipiList Premium!';

  @override
  String get gestureHint =>
      'Shikilia ili kuchagua • Telezesha kidole ili kuondoa';

  @override
  String get catalogTitle => 'Katalogi';

  @override
  String get catalogMyFrequents => 'Mara kwa Mara Yangu';

  @override
  String get catalogSearchGlobal => 'Tafuta bidhaa yoyote...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Tafuta katika $category...';
  }

  @override
  String get catalogSortPopular => 'Maarufu zaidi';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Raia';

  @override
  String get catalogRareSection => 'chini ya kawaida katika nchi yako';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ongeza $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Bidhaa haijapatikana, andika jina';

  @override
  String get catalogBrowse => 'Vinjari Katalogi';

  @override
  String get offlineBanner => 'Hauko mtandaoni';

  @override
  String get consentTitle => 'Faragha na Uchanganuzi';

  @override
  String get consentBody =>
      'KipiList hutumia Takwimu za Firebase ili kuboresha matumizi yako. Data yako inachakatwa kulingana na Sera yetu ya Faragha.';

  @override
  String get consentAccept => 'Kubali';

  @override
  String get consentDecline => 'Hapana, asante';

  @override
  String get mealPlannerPantryAllAvailable => 'Viungo vyote vinapatikana';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 haipo';
  }

  @override
  String get expirationDate => 'Tarehe ya kumalizika muda wake';

  @override
  String get notInformed => 'Haijawekwa';

  @override
  String get skip => 'Ruka';

  @override
  String get onboardingAiTitle => 'Sogoa na Kipi';

  @override
  String get onboardingAiGreeting =>
      'Habari! Mimi ni Kipi, msaidizi wako wa ununuzi wa kibinafsi! 🛒';

  @override
  String get onboardingAiAskName => 'Jina lako ni nani?';

  @override
  String get onboardingAiNameHint => 'Andika jina lako...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Nimefurahi kukutana nawe, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Ni chakula gani unachopenda zaidi?';

  @override
  String get onboardingAiFoodHint => 'k.m. Pizza, Sushi ...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Chaguo kubwa! Hivi ndivyo ningeongeza kwenye orodha yako:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Je, hii inaonekana nzuri? Jaribu kuandika kitu kingine!';

  @override
  String get onboardingAiReady =>
      'Kubwa! Uko tayari kuanza. Hebu tufungue akaunti yako!';

  @override
  String get onboardingAiContinue => 'Endelea →';

  @override
  String get connectionError => 'Hitilafu ya Muunganisho';

  @override
  String connectionErrorDesc(String error) {
    return 'Haikuweza kuunganisha kwenye seva. Angalia mtandao wako.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Hitilafu katika kupakia orodha';

  @override
  String get noListsFound => 'Hakuna orodha zilizopatikana';

  @override
  String get backToToday => 'Rudi hadi leo';

  @override
  String get quickSuggestions => 'Mapendekezo ya haraka';

  @override
  String get aiEnergyLow => 'Nishati ya AI ya chini';

  @override
  String get aiUnlockUnlimited => 'Fungua AI isiyo na kikomo';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 leo';
  }

  @override
  String get aiSubscribeUnlimited => 'Jiandikishe kwa AI isiyo na kikomo';

  @override
  String get unlockWithAd => 'Fungua ukitumia Tangazo';

  @override
  String get conversationHistoryTitle => 'Historia ya mazungumzo';

  @override
  String get noConversationsFound => 'Hakuna mazungumzo yaliyopatikana';

  @override
  String get errorLoadingHistory => 'Hitilafu katika kupakia historia';

  @override
  String get deleteConversationTitle => 'Ungependa kufuta Mazungumzo?';

  @override
  String get deleteConversationConfirm => 'Kitendo hiki hakiwezi kutenduliwa.';

  @override
  String get deleteConversation => 'Futa';

  @override
  String get subscription => 'Usajili';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Fungua orodha zisizo na kikomo, AI na zaidi';

  @override
  String get loadingSubscription => 'Inapakia usajili...';

  @override
  String get errorLoadingSubscription => 'Hitilafu katika kupakia usajili';

  @override
  String get profileSection => 'Wasifu';

  @override
  String get myProfile => 'Wasifu Wangu';

  @override
  String get profileSubtitle => 'Mapendeleo ya kibinafsi kwa msaidizi wa AI';

  @override
  String get customizeAiAssistant => 'Customize AI msaidizi';

  @override
  String get assistantHistory => 'Historia ya Mratibu';

  @override
  String get assistantHistorySubtitle => 'Tazama historia ya mazungumzo yako';

  @override
  String get manageCategories => 'Dhibiti Kategoria';

  @override
  String get manageCategoriesSubtitle => 'Dhibiti kategoria za vipengee';

  @override
  String get customizeAssistant => 'Geuza kukufaa';

  @override
  String get assistantName => 'Jina la Mratibu';

  @override
  String get chooseIcon => 'Chagua ikoni';

  @override
  String get profileSaved => 'Wasifu umehifadhiwa!';

  @override
  String get errorSavingProfile => 'Hitilafu katika kuhifadhi: null';

  @override
  String get userProfile => 'Wasifu wa Mtumiaji';

  @override
  String get profileDescription =>
      'Tuambie mapendeleo yako ya kibinafsi ili msaidizi wa AI aweze kupendekeza bidhaa na mapishi yaliyobinafsishwa.';

  @override
  String get preferredMarket => 'Soko Linalopendekezwa';

  @override
  String get preferredMarketHint => 'K.m.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Vizuizi vya Chakula';

  @override
  String get dietaryRestrictionsHint =>
      'K.m.: mboga mboga, mboga mboga, bila gluteni';

  @override
  String get marketsToAvoid => 'Masoko ya Kuepuka';

  @override
  String get marketsToAvoidHint => 'K.m.: Market Y, Market Z';

  @override
  String get observations => 'Vidokezo';

  @override
  String get observationsHint => 'Mapendeleo mengine kwa msaidizi';

  @override
  String get saveProfile => 'Hifadhi Wasifu';

  @override
  String get everythingReady => 'Kila kitu tayari!';

  @override
  String get youCompletedList => 'Umekamilisha orodha!';

  @override
  String get selectCheaperAlternative =>
      'Chagua bidhaa mbadala ya bei nafuu ili kuongeza gharama.';

  @override
  String get suggestedItems => 'Vipengee vilivyopendekezwa';

  @override
  String get swapped => 'Imebadilishwa';

  @override
  String get swap => 'Badili';

  @override
  String get chooseThemeColor => 'Chagua Rangi ya Mandhari';

  @override
  String get manageCategoriesTitle => 'Dhibiti Kategoria';

  @override
  String get categoryLimitReached =>
      'Kikomo cha kategoria 10 kwenye toleo la bure. Pata toleo jipya la Pro!';

  @override
  String get deleteCategoryTitle => 'Futa Kategoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Vipengee katika kategoria \"$category\" vitahamishwa hadi \"Vingine\".\nUngependa kuendelea?';
  }

  @override
  String get deleteCategory => 'Futa';

  @override
  String get newCategoryDialog => 'Kategoria mpya';

  @override
  String get editCategoryDialog => 'Badilisha kategoria';

  @override
  String get categoryName => 'Jina la kategoria';

  @override
  String get categoryNameHint => 'K.m.: Nyama';

  @override
  String get categoryColorLabel => 'Rangi';

  @override
  String get categoryIconLabel => 'Aikoni';

  @override
  String itemAddedSnack(String name) {
    return '$name imeongezwa';
  }

  @override
  String get kipiQuickBarHint => 'Unahitaji kununua nini?';

  @override
  String replaceItem(String item) {
    return 'Badilisha $item';
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
  String get onboardingHookHeadline => 'Usiwahi kusahau bidhaa ya mboga tena';

  @override
  String get onboardingGoalSaveMoney => 'Okoa pesa';

  @override
  String get onboardingGoalNeverForget => 'Kamwe usisahau vitu';

  @override
  String get onboardingGoalFaster => 'Nunua haraka';

  @override
  String get onboardingGoalFamily => 'Panga ununuzi wa familia';

  @override
  String get onboardingGoalRecipes => 'Gundua mapishi';

  @override
  String get onboardingGoalPantry => 'Kufuatilia pantry';

  @override
  String get onboardingCommitmentsTitle => 'Ni nini muhimu kwako?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Chagua malengo yako ili kubinafsisha KipiList';

  @override
  String get onboardingCommitmentsCta => 'Twende!';

  @override
  String get onboardingPersonalizationNameLabel => 'Jina lako';

  @override
  String get onboardingPersonalizationNameHint => 'Ingiza jina lako';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Unanunua nini?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Unamnunulia nani?';

  @override
  String get onboardingCategoryGrocery => 'Vyakula';

  @override
  String get onboardingCategoryPharmacy => 'Apoteket';

  @override
  String get onboardingCategoryRecipes => 'Mapishi';

  @override
  String get onboardingCategoryHome => 'Nyumbani';

  @override
  String get onboardingCategoryPet => 'Pet';

  @override
  String get onboardingGroupSolo => 'Mimi tu';

  @override
  String get onboardingGroupCouple => 'Wanandoa';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Inatayarisha matumizi yako...';

  @override
  String get onboardingLoadingStep1 => 'Inachanganua mapendeleo yako...';

  @override
  String get onboardingLoadingStep2 => 'Inasanidi msaidizi wa AI...';

  @override
  String get onboardingLoadingStep3 => 'Karibu tayari...';

  @override
  String get onboardingLoadingStat1Label => 'Vipengee vilivyoorodheshwa';

  @override
  String get onboardingLoadingStat2Label => 'Watumiaji walisaidia';

  @override
  String get onboardingLoadingStat3Label => 'Dakika zimehifadhiwa';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, hifadhi kila safari!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, usisahau kamwe kipengee!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, nunua baada ya nusu ya muda!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, panga ununuzi wa familia!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, gundua mapishi mapya!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, fuatilia pantry yako kikamilifu!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Okoa kila safari!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Kamwe usisahau kitu!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Nunua nusu ya wakati!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Panga ununuzi wa familia!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Gundua mapishi mapya!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Fuatilia pantry yako kikamilifu!';

  @override
  String paywallPricePerDay(String price) {
    return '$price pekee kwa siku - chini ya kahawa';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Ruka kwa sasa';

  @override
  String get paywallTestimonial =>
      'AI hupanga ununuzi wangu kwa sekunde. Ninaokoa dakika 20 kwa safari.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Ghairi wakati wowote · Hakuna malipo hadi muda wa kujaribu kuisha';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Habari $name! $category unahitaji nini?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '$category unahitaji nini?';
  }

  @override
  String get onboardingAiDemoYes => 'Ndiyo!';

  @override
  String get onboardingAiDemoReaction => 'Nzuri!';

  @override
  String get onboardingAiDemoChange => 'Badilisha kipengee';

  @override
  String get onboardingAiDemoOffer => 'Jaribu kuandika kitu kingine!';

  @override
  String get onboardingAiDemoContinue => 'Endelea';

  @override
  String get onboardingAiDemoSlideHeadline => 'Your shopping list, now with AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'See how Kipi builds your full list in seconds';

  @override
  String get onboardingAiDemoSlideCta => 'I want this! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'I\'m hosting a barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Ready! Here\'s everything you need:';

  @override
  String get onboardingAiDemoSlideDone => 'Complete list in seconds ✨';

  @override
  String get onboardingPainTitle => 'What frustrates you most?';

  @override
  String get onboardingPainSubtitle => 'Be honest — we\'ll fix each one';

  @override
  String get onboardingPainCta => 'Yes, fix this for me →';

  @override
  String get onboardingPainForget => 'I forget items at the store';

  @override
  String get onboardingPainFamily => 'My family never sees the list';

  @override
  String get onboardingPainOverspend => 'I always go over budget';

  @override
  String get onboardingPainRepeat => 'One trip is never enough';
}
