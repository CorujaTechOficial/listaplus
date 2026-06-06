// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Listahan ng Pamimili';

  @override
  String get lists => 'Mga Listahan';

  @override
  String get pantry => 'Dispatch';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get save => 'I-save';

  @override
  String get create => 'Gumawa';

  @override
  String get add => 'Idagdag';

  @override
  String get remove => 'Alisin';

  @override
  String get delete => 'Burahin';

  @override
  String get edit => 'I-edit';

  @override
  String get copy => 'Kopyahin';

  @override
  String get next => 'Susunod';

  @override
  String get retry => 'Subukan muli';

  @override
  String get regenerate => 'Muling buuin';

  @override
  String get copiedToClipboard => 'Nakopya sa clipboard';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get close => 'Isara';

  @override
  String get import => 'I-import';

  @override
  String get rename => 'Palitan ng pangalan';

  @override
  String get upgrade => 'Mag-upgrade';

  @override
  String get clear => 'Linisin';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error sa pagproseso ng pagbili. Subukan muli.';

  @override
  String get restoreError =>
      'Error sa pag-restore ng mga pagbili. Subukan muli.';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get fieldRequired => 'Kinakailangang field';

  @override
  String get addedFeedback => 'Naidagdag!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ang napili',
      one: '$count ang napili',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Tantiya';

  @override
  String get alreadyPurchased => 'Nabili na';

  @override
  String get clearList => 'Linisin ang listahan';

  @override
  String get clearPurchased => 'Linisin ang mga nabili';

  @override
  String get share => 'Ibahagi';

  @override
  String get shareViaCode => 'Ibahagi sa pamamagitan ng code';

  @override
  String get importViaCode => 'I-import sa pamamagitan ng code';

  @override
  String get listAssistant => 'Katulong ng listahan';

  @override
  String get globalAssistant => 'Pangkalahatang katulong';

  @override
  String get becomePremium => 'Maging Premium';

  @override
  String get manageSubscription => 'Pamahalaan ang subscription';

  @override
  String get completePurchase => 'Kumpletuhin ang pagbili';

  @override
  String get confirmClearList => 'Alisin lahat ng item?';

  @override
  String get shareListTitle => 'Ibahagi ang Listahan';

  @override
  String get shareThisCode => 'Ibahagi ang code na ito:';

  @override
  String get validForLimitedTime => 'May bisa sa limitadong panahon';

  @override
  String get importListTitle => 'I-import ang Listahan';

  @override
  String get enterCodeHint => 'Ilagay ang code';

  @override
  String get confirmArchiveTitle => 'Kumpletuhin ang Pagbili';

  @override
  String get confirmArchiveContent =>
      'Kumpletuhin ang pagbiling ito at i-archive ang listahan?';

  @override
  String get complete => 'Kumpletuhin';

  @override
  String get listArchived => 'Matagumpay na na-archive ang listahan!';

  @override
  String listAdded(String listName) {
    return 'Naidagdag ang $listName!';
  }

  @override
  String get buy => 'Bumili';

  @override
  String get unmark => 'Alisin ang marka';

  @override
  String confirmDeleteItems(int count) {
    return 'Alisin ang $count item?';
  }

  @override
  String get confirmDeleteTitle => 'Kumpirmahin';

  @override
  String confirmContent(int count) {
    return 'Alisin ang $count item?';
  }

  @override
  String get archiveList => 'I-archive ang listahan';

  @override
  String get pantryAppBar => 'Dispatch';

  @override
  String get generateShoppingList => 'Gumawa ng listahan ng pamimili';

  @override
  String get pantryEmpty => 'Walang laman ang dispatch';

  @override
  String get pantryEmptySubtitle =>
      'Idagdag ang mga produktong gusto mong itabi sa bahay';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item ang kailangang bilhin';
  }

  @override
  String get noItemsToBuy => 'Walang item na kailangang bilhin';

  @override
  String get newPantryList => 'Pamili mula sa Dispatch';

  @override
  String get newListTitle => 'Bagong Listahan ng Pamimili';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item ang idadagdag';
  }

  @override
  String get listNameLabel => 'Pangalan ng listahan';

  @override
  String listCreated(String name, int count) {
    return 'Ang listahang \"$name\" ay ginawa na may $count item';
  }

  @override
  String get noTracking => 'Walang pagsubaybay';

  @override
  String get markAsPurchased => 'Markahan bilang nabili';

  @override
  String editPantryItem(String name) {
    return 'I-edit ang $name';
  }

  @override
  String get idealQuantity => 'Tamang dami';

  @override
  String get currentQuantity => 'Kasalukuyang dami';

  @override
  String get consumed => 'Nagamit na';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Ang $name ay ni-restock sa $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Alisin ang \"$name\" sa dispatch?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'I-edit ang $name';
  }

  @override
  String get settingsAppBar => 'Mga Setting';

  @override
  String get language => 'Wika';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Ingles';

  @override
  String get languageSystem => 'Default ng system';

  @override
  String get chooseLanguage => 'Pumili ng Wika';

  @override
  String get searchLanguage => 'Maghanap ng wika...';

  @override
  String get currency => 'Pera';

  @override
  String get chooseCurrency => 'Piliin ang Pera';

  @override
  String get searchCurrency => 'Maghanap ng pera...';

  @override
  String get appearance => 'Itsura';

  @override
  String get light => 'Maliwanag';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Madilim';

  @override
  String get themeColor => 'Kulay ng tema';

  @override
  String get dynamicColors => 'Dynamic na mga kulay';

  @override
  String get dynamicColorsSubtitle =>
      'Gumamit ng mga kulay base sa iyong wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'I-disable ang mga dynamic na kulay para magkabisa ang kulay ng tema';

  @override
  String get finance => 'Pananalapi';

  @override
  String get monthlyBudgetNav => 'Buwanang badyet';

  @override
  String get budgetSubtitle => 'Subaybayan ang iyong buwanang paggastos';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'I-export o i-import ang iyong data';

  @override
  String get about => 'Tungkol';

  @override
  String get version => 'Bersyon';

  @override
  String get privacy => 'Pagkapribado';

  @override
  String get termsOfUse => 'Mga tuntunin ng paggamit';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Ang backup at pag-export ay isang premium na feature';

  @override
  String get exportData => 'I-export ang data';

  @override
  String get exportDataSubtitle => 'I-save ang lahat ng listahan bilang JSON';

  @override
  String get importData => 'I-import ang data';

  @override
  String get importDataSubtitle => 'I-restore ang mga listahan mula sa JSON';

  @override
  String get importJsonTitle => 'I-import ang JSON';

  @override
  String get importJsonHint => 'I-paste ang backup na JSON dito...';

  @override
  String get backupExported => 'Na-export ang backup!';

  @override
  String get budgetAppBar => 'Buwanang Badyet';

  @override
  String get budgetPremiumLocked =>
      'Ang pandaigdigang buwanang badyet ay premium';

  @override
  String get budgetUpgradePrompt => 'Mag-upgrade para ma-unlock';

  @override
  String get noBudgetDefined => 'Walang nakatakdang badyet';

  @override
  String totalEstimated(String amount) {
    return 'Kabuuang tantiya: $amount';
  }

  @override
  String get setBudgetButton => 'Itakda ang badyet';

  @override
  String get budgetLists => 'Mga Listahan';

  @override
  String get budgetValueLabel => 'Halaga';

  @override
  String get setBudgetTitle => 'Buwanang Badyet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Lahat';

  @override
  String get filterPending => 'Nakabinbin';

  @override
  String get filterPurchased => 'Nabili na';

  @override
  String get sortName => 'Pangalan';

  @override
  String get sortCategory => 'Kategorya';

  @override
  String get sortDate => 'Petsa';

  @override
  String get sortManual => 'Manwal';

  @override
  String get addItem => 'Magdagdag ng Item';

  @override
  String get itemName => 'Pangalan ng item';

  @override
  String get quantityShort => 'Dami';

  @override
  String get unit => 'Yunit';

  @override
  String get category => 'Kategorya';

  @override
  String get estimatedPrice => 'Tantiya sa presyo';

  @override
  String get addItemPrice => 'Tantiya sa presyo';

  @override
  String get editItem => 'I-edit ang Item';

  @override
  String get quantityFull => 'Dami';

  @override
  String get editItemPrice => 'Tantiya sa presyo';

  @override
  String get addToPantry => 'Idagdag sa Dispatch';

  @override
  String addToPantryPrompt(String name) {
    return 'Idagdag ang \"$name\" sa iyong Dispatch?';
  }

  @override
  String get yes => 'Oo';

  @override
  String get productName => 'Pangalan ng produkto';

  @override
  String get idealQty => 'Tamang dami';

  @override
  String get currentQty => 'Kasalukuyang dami';

  @override
  String get trackStock => 'Subaybayan ang stock';

  @override
  String get trackStockActive => 'Lumalabas sa mga mungkahi sa pamimili';

  @override
  String get trackStockInactive => 'Hindi lumilikha ng mungkahi sa pamimili';

  @override
  String get createListDialog => 'Gumawa ng Listahan';

  @override
  String get renameListDialog => 'Palitan ang Pangalan ng Listahan';

  @override
  String get listHistory => 'Kasaysayan ng Listahan';

  @override
  String get myLists => 'Aking mga Listahan';

  @override
  String get viewActive => 'Tingnan ang Aktibo';

  @override
  String get viewHistory => 'Tingnan ang Kasaysayan';

  @override
  String get noArchivedLists => 'Walang naka-archive na listahan';

  @override
  String get noActiveLists => 'Walang aktibong listahan';

  @override
  String completedOn(String date) {
    return 'Natapos noong $date';
  }

  @override
  String get sharedLabel => 'Ibinahagi';

  @override
  String get restore => 'I-restore';

  @override
  String get removeSharedTooltip => 'Alisin';

  @override
  String get deleteListTitle => 'Burahin ang listahan';

  @override
  String deleteListContent(String name) {
    return 'Sigurado ka bang gusto mong burahin ang \"$name\"? Ang lahat ng item ay aalisin.';
  }

  @override
  String get removeSharedListTitle => 'Alisin ang ibinahaging listahan';

  @override
  String removeSharedListContent(String name) {
    return 'Alisin ang \"$name\" sa iyong mga listahan? Ang orihinal na listahan ay hindi maaapektuhan.';
  }

  @override
  String get createNewList => 'Gumawa ng bagong listahan';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Kumuha ng matatalinong mungkahi, recipe at personal na tip gamit ang aming AI assistant.';

  @override
  String get generalAssistant => 'Pangkalahatang Assistant';

  @override
  String get newChat => 'Bagong Chat';

  @override
  String get noHistory => 'Walang history ng chat';

  @override
  String get deleteSession => 'Tanggalin ang Chat';

  @override
  String get deleteSessionConfirm =>
      'Sigurado ka bang gusto mong tanggalin ang chat na ito? Ang mga mensahe ay permanenteng mawawala.';

  @override
  String get clearHistory => 'Linisin ang Kasaysayan';

  @override
  String get clearHistoryConfirm =>
      'Linisin lahat ng mensahe sa session na ito?';

  @override
  String get chatHint => 'I-type ang iyong mensahe...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error sa pag-load ng chat: $error';
  }

  @override
  String get listHelp => 'Paano ako makakatulong sa iyong listahan?';

  @override
  String get generalHelp => 'Paano ako makakatulong sa iyong pamimili ngayon?';

  @override
  String get chatSubtitle =>
      'Humiling ng mga mungkahi sa item, recipe o tip sa pagtitipid.';

  @override
  String get aiError =>
      'Paumanhin, may error sa pagproseso ng iyong kahilingan. Suriin ang iyong koneksyon o subukan muli mamaya.';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Mag-log in upang i-unlock\nang mga premium na feature';

  @override
  String get signInGoogle => 'Mag-sign in gamit ang Google';

  @override
  String get signInApple => 'Mag-sign in gamit ang Apple';

  @override
  String get continueAsGuest => 'Magpatuloy bilang bisita';

  @override
  String get onboardingWelcomeTitle => 'Maligayang pagdating sa KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Ang pinakamatalinong paraan upang ayusin ang iyong pamimili at makatipid ng pera.';

  @override
  String get onboardingSetupTitle => 'I-personalize ang iyong karanasan';

  @override
  String get onboardingSetupDesc =>
      'Piliin kung paano mo gustong tingnan at gumana ang KipiList para sa iyo.';

  @override
  String get onboardingLoginTitle => 'I-save ang lahat sa cloud';

  @override
  String get onboardingLoginDesc =>
      'Naka-sync ang iyong data sa lahat ng iyong device';

  @override
  String get onboardingShareTitle => 'Ibahagi sa mga mahal mo';

  @override
  String get onboardingShareDesc =>
      'I-sync ang mga listahan sa pamilya at mga kaibigan sa real time';

  @override
  String get onboardingPremiumTitle => 'I-unlock ang lahat ng mga tampok';

  @override
  String get onboardingPremiumSubtitle =>
      'Sulitin ang iyong mga listahan ng pamimili';

  @override
  String get onboardingAnnualBadge => 'Pinakamahusay na Halaga';

  @override
  String get onboardingMonthlyLabel => 'Buwan-buwan';

  @override
  String get onboardingAnnualLabel => 'Taunang';

  @override
  String get onboardingViewAllPlans => 'Tingnan ang lahat ng mga plano';

  @override
  String get onboardingSubscribeCta => 'Mag-subscribe';

  @override
  String get onboardingCancelAnytime =>
      'Kanselahin anumang oras. Walang commitment.';

  @override
  String get onboardingContinueAsGuest => 'Magpatuloy bilang panauhin';

  @override
  String get onboardingRestore => 'Ibalik';

  @override
  String get onboardingRestoreDesc =>
      'Mayroon ka nang subscription? Mag-tap dito para i-restore ito.';

  @override
  String get onboardingExit => 'Lumabas';

  @override
  String get onboardingPersonalizationTitle => 'Kilalanin kita';

  @override
  String get onboardingPersonalizationDesc =>
      'Gagamitin namin ito para i-personalize ang iyong mga mungkahi at gawing mas matalino ang pamimili.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Ano ang paborito mong pagkain?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'hal. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Magpatuloy';

  @override
  String get onboardingPersonalizationSkip => 'Laktawan sa ngayon';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Sabihin sa amin ang iyong paboritong pagkain upang magpatuloy';

  @override
  String get settingsDefaultScreen => 'Default na home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Pumili sa pagitan ng listahan ng pamimili o AI chat';

  @override
  String get settingsScreenList => 'Listahan ng Pamimili';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Error sa pag-login: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallCtaTrial => 'Start My Free Trial';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
  }

  @override
  String get premiumUpgrade => 'Mag-upgrade para ma-unlock';

  @override
  String get itemRemoved => 'Naalis ang item';

  @override
  String get undo => 'I-undo';

  @override
  String get emptyListTitle => 'Walang laman ang iyong listahan';

  @override
  String get emptyListSubtitle => 'Magdagdag ng mga item para makapagsimula';

  @override
  String get noListFoundTitle => 'Walang nakitang listahan';

  @override
  String get noListFoundSubtitle =>
      'Gawin ang iyong unang listahan para makapagsimula';

  @override
  String get createFirstList => 'Gumawa ng Unang Listahan';

  @override
  String get listBudgetTitle => 'Badyet ng Listahan';

  @override
  String get budgetAmountLabel => 'Halaga ng badyet';

  @override
  String get removeBudget => 'Alisin';

  @override
  String get prefUnlimitedLists => 'Walang limitasyong listahan';

  @override
  String get prefSharing => 'Ibahagi ang mga listahan';

  @override
  String get prefFullHistory => 'Buong kasaysayan';

  @override
  String get prefExportData => 'I-export ang data';

  @override
  String get prefCustomThemes => 'Mga custom na tema';

  @override
  String get prefMonthlyBudget => 'Pandaigdigang buwanang badyet';

  @override
  String get prefAIAssistant => 'Personal na AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Walang limitasyong dispatch';

  @override
  String get prefInteractiveArtifacts => 'Interactive na AI Artifacts';

  @override
  String get themeGreen => 'Berde';

  @override
  String get themeBlue => 'Asul';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Pula';

  @override
  String get themeOrange => 'Kahel';

  @override
  String get themePink => 'Rosas';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kayumanggi';

  @override
  String get catFruits => 'Mga Prutas';

  @override
  String get catCleaning => 'Paglilinis';

  @override
  String get catBeverages => 'Mga Inumin';

  @override
  String get catBakery => 'Panaderya';

  @override
  String get catOthers => 'Iba pa';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Listahan ng Pamimili';

  @override
  String get monthlyBudgetTitle => 'Buwanang Badyet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Burahin ang listahan';

  @override
  String get pantryItemRemoved => 'Naalis ang item';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit item ang kailangang bilhin',
      one: '$deficit item ang kailangang bilhin',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kabuuan ng cart';

  @override
  String get restockLabel => 'Mag-restock';

  @override
  String get advancedFeatures => 'Mga advanced na feature';

  @override
  String get selectAll => 'Piliin lahat';

  @override
  String get deselectAll => 'Alisin lahat ng pagpili';

  @override
  String get monthlyBudgetAppBar => 'Buwanang Badyet';

  @override
  String get budgetEditTitle => 'Buwanang Badyet';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Pumili ng listahan para tingnan ang dashboard.';

  @override
  String get spendingAnalysis => 'Pagsusuri ng Paggastos';

  @override
  String get noItemsToAnalyze => 'Walang item sa listahan para suriin.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markahan ang mga item bilang nabili para makita ang pagsusuri.';

  @override
  String get totalSpending => 'Kabuuang Nagastos';

  @override
  String get spendingByCategory => 'Paggastos ayon sa Kategorya';

  @override
  String get achievements => 'Mga Nakamit';

  @override
  String get exportPdfExcel => 'I-export ang PDF/Excel';

  @override
  String get exportPdf => 'I-export bilang PDF';

  @override
  String get exportExcel => 'I-export bilang Excel';

  @override
  String get organizingAi => 'NAGSASA-AYOS GAMIT ANG AI...';

  @override
  String get yesLabel => 'Oo';

  @override
  String get noLabel => 'Hindi';

  @override
  String get shareListText => 'Aking Listahan ng Pamimili';

  @override
  String get emptyListAddItems =>
      'Walang laman ang iyong listahan! Magdagdag muna ng mga item. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Mahiwagang naayos ang listahan ayon sa mga kategorya! ✨';

  @override
  String get shoppingMode => 'Mode ng Pamimili';

  @override
  String get smartOrganization => 'Matalinong Organisasyon';

  @override
  String get savings => 'Mga Natipid';

  @override
  String get shoppingModeHeader => 'MODE NG PAMIMILI';

  @override
  String get shareAsText => 'Ipadala ang mga item bilang naka-format na teksto';

  @override
  String get shareRealtime => 'Real-time na sync sa ibang tao';

  @override
  String get quickRecipe => 'Mabilis na recipe';

  @override
  String get quickRecipePrompt =>
      'Magmungkahi ng mga recipe gamit ang mga item mula sa aking listahan.';

  @override
  String get economyTips => 'Mga tip sa pagtitipid';

  @override
  String get economyTipsPrompt => 'Paano ako makakatipid sa pagbilhing ito?';

  @override
  String get organizeAisles => 'Ayusin ayon sa mga aisle';

  @override
  String get organizeAislesPrompt => 'Ayusin ayon sa mga aisle ng palengke.';

  @override
  String get recipeSuggestion => 'Mungkahing recipe';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining natitirang credits';
  }

  @override
  String get addAllToList => 'Idagdag lahat sa listahan';

  @override
  String get organizeByAisles => 'Ayusin ayon sa mga aisle';

  @override
  String get voiceTranscriptionTooltip => 'Pag-type gamit ang boses (Libre)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Magsalita nang natural para pamahalaan ang iyong listahan!\n\nMga Halimbawa:\n• \'Magdagdag ng tinapay, keso, at hamon\'\n• \'Alisin ang detergent\'\n• \'Palitan ang tema sa asul\'\n\nIto ay isang eksklusibong feature ng KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Tingnan ang mga Plano';

  @override
  String get itemsAddedSuccess =>
      'Matagumpay na naidagdag ang mga item sa listahan!';

  @override
  String get viewList => 'Tingnan ang listahan';

  @override
  String get feedbackTitle => 'Magpadala ng Feedback';

  @override
  String get feedbackPrompt => 'Ano ang nais mong ibahagi?';

  @override
  String get feedbackTypeBug => 'Mag-ulat ng Bug';

  @override
  String get feedbackTypeBugHint => 'May hindi gumagana';

  @override
  String get feedbackTypeSuggestion => 'Mungkahi';

  @override
  String get feedbackTypeSuggestionHint => 'Ideya para mapabuti ang app';

  @override
  String get feedbackTypeTranslation => 'Isyu sa Pagsasalin';

  @override
  String get feedbackTypeTranslationHint => 'Mali o awkward na pagsasalin';

  @override
  String get feedbackTypeFeature => 'Kahilingan ng Feature';

  @override
  String get feedbackTypeFeatureHint => 'Feature na gusto mong makita';

  @override
  String get feedbackTypeOther => 'Iba pa';

  @override
  String get feedbackTypeOtherHint => 'Iba pang uri ng feedback';

  @override
  String get feedbackHint => 'Ilarawan ang iyong feedback nang detalyado...';

  @override
  String get feedbackSend => 'Ipadala ang Feedback';

  @override
  String get feedbackSending => 'Ipinapadala...';

  @override
  String get feedbackThankYou => 'Salamat!';

  @override
  String get feedbackThankYouMessage =>
      'Natanggap ang iyong feedback at tinutulungan kaming pagbutihin ang KipiList para sa lahat.';

  @override
  String get feedbackBack => 'Bumalik';

  @override
  String feedbackError(String error) {
    return 'Error sa pagpapadala: $error';
  }

  @override
  String get feedbackRetry => 'Subukan muli';

  @override
  String get feedbackSettingsTitle => 'Magpadala ng Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Mag-ulat ng bug, magmungkahi ng pagpapabuti, o ayusin ang mga pagsasalin';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Maghanap sa pag-uusap...';

  @override
  String get noMessagesFound => 'Walang nakitang mga mensahe';

  @override
  String get suggestedQuestions => 'Mga iminungkahing tanong:';

  @override
  String get shoppingAssistant => 'Katulong sa pamimili';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased ng $total ang binili';
  }

  @override
  String get estimatedCost => 'Tinatantya';

  @override
  String get viewItems => 'Tingnan ang mga item';

  @override
  String get noItemsInList => 'Walang mga item sa listahan';

  @override
  String get longHistoryWarning =>
      'Mahabang kasaysayan: nakatuon ang assistant sa mga pinakabagong mensahe para sa mas mahusay na pagganap.';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get addDirectToList => 'Direktang magdagdag sa listahan';

  @override
  String get unlockFullResponse => 'I-unlock ang Buong Tugon';

  @override
  String get switchList => 'Lumipat ng listahan';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Bumalik sa Chat';

  @override
  String get finishShopping => 'Tapusin ang Shopping';

  @override
  String get welcomeAiAssistant => 'Maligayang pagdating sa AI Assistant';

  @override
  String get createListToStartAi =>
      'Gumawa ng listahan ng pamimili para simulang gamitin ang smart chat.';

  @override
  String get howCanIHelp => 'Paano ako makakatulong?';

  @override
  String get chatSubtitleShort =>
      'Magtanong tungkol sa mga presyo, recipe, organisasyon...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ang binili';
  }

  @override
  String get quickReplies => 'Mabilis na tugon:';

  @override
  String get voiceProFeature =>
      'Ang mga advanced na voice command ay Pro. Pinapagana ang pangunahing pagdidikta...';

  @override
  String get viewPro => 'Tingnan ang Pro';

  @override
  String get errorLoadingChat => 'Oops! Nagkaproblema sa paglo-load ng chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Suriin ang iyong koneksyon o subukang muli sa ibang pagkakataon.';

  @override
  String get errorOscillation =>
      'Maaaring mangyari ito dahil sa mga oscillation ng network o pansamantalang hindi available. Pakisubukang muli.';

  @override
  String get activeListening => 'Aktibong Pakikinig';

  @override
  String get whatToDoWithItem => 'Ano ang gusto mong gawin sa item na ito?';

  @override
  String get viewDetails => 'Tingnan ang mga Detalye';

  @override
  String get openMenu => 'Buksan ang menu';

  @override
  String get viewRecipe => 'Tingnan ang Recipe';

  @override
  String get recipeCreated => 'Recipe na gawa na!';

  @override
  String get editRecipe => 'I-edit';

  @override
  String get deleteRecipe => 'Burahin';

  @override
  String get deleteRecipeConfirm => 'Burahin ang recipe na ito?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sigurado ka bang gusto mong burahin ang \"$recipeName\"? Ang aksyong ito ay hindi na maaaring bawiin.';
  }

  @override
  String get ingredients => 'Mga Sahog';

  @override
  String get instructions => 'Mga Instruksyon';

  @override
  String get prepTime => 'Oras ng paghahanda';

  @override
  String get recipeSaved => 'Recipe na-save na!';

  @override
  String get noRecipesSaved => 'Walang naka-save na mga recipe';

  @override
  String get noRecipesSavedHint =>
      'Gumawa ng iyong unang custom na recipe sa pamamagitan ng pag-tap sa button sa ibaba.';

  @override
  String get myRecipes => 'Aking mga Recipe';

  @override
  String get newRecipe => 'Bagong Recipe';

  @override
  String get loadingRecipes => 'Naglo-load ng iyong mga recipe...';

  @override
  String get errorLoadingRecipes => 'Error sa paglo-load ng mga recipe';

  @override
  String get addIngredient => 'Magdagdag ng sahog';

  @override
  String get saveRecipe => 'I-save';

  @override
  String get recipeName => 'Pangalan ng recipe';

  @override
  String get shortDescription => 'Maikling deskripsyon';

  @override
  String get prepTimeMinutes => 'Oras ng paghahanda (minuto)';

  @override
  String get instructionsHint => 'Mag-type ng isang hakbang bawat linya...';

  @override
  String get addPhoto => 'Magdagdag ng larawan';

  @override
  String get imageUrlPlaceholder => 'O i-paste ang URL ng larawan';

  @override
  String get tags => 'Mga Tag';

  @override
  String get recipeTags => 'Mga tag ng recipe';

  @override
  String get suggestedTags => 'Iminumungkahi';

  @override
  String get searchRecipes => 'Maghanap ng mga recipe...';

  @override
  String get filterByTag => 'I-filter ayon sa tag';

  @override
  String get allTags => 'Lahat';

  @override
  String get recipeDeleted => 'Recipe na burado na';

  @override
  String get saveChanges => 'I-save ang mga pagbabago';

  @override
  String get editRecipeTitle => 'I-edit ang Recipe';

  @override
  String get newRecipeTitle => 'Bagong Recipe';

  @override
  String get requiredField => 'Kinakailangan';

  @override
  String get chooseImageSource => 'Pumili ng pagkukunan ng larawan';

  @override
  String get gallery => 'Galerya';

  @override
  String get enterUrl => 'Ilagay ang URL';

  @override
  String get recipeImage => 'Larawan ng recipe';

  @override
  String get removeImage => 'Alisin ang larawan';

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Buwanang view';

  @override
  String get mealPlannerViewWeekly => 'Lingguhang view';

  @override
  String get mealPlannerNoMeals => 'Walang nakaplanong pagkain';

  @override
  String get mealPlannerNoMealsHint =>
      'I-tap ang isang araw para magdagdag ng pagkain';

  @override
  String get mealPlannerLoading => 'Naglo-load ng meal plan...';

  @override
  String get mealPlannerError => 'Error sa paglo-load ng meal plan';

  @override
  String get mealPlannerAddMeal => 'Magdagdag ng Pagkain';

  @override
  String get mealPlannerEditMeal => 'I-edit ang Pagkain';

  @override
  String get mealPlannerDeleteMeal => 'Alisin ang pagkain';

  @override
  String get mealPlannerMealDeleted => 'Naalis na ang pagkain';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count serving',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Mga Serving';

  @override
  String get mealPlannerNoteLabel => 'Nota (opsyonal)';

  @override
  String get mealPlannerSelectRecipe => 'Pumili ng recipe';

  @override
  String get mealPlannerSearchRecipes => 'Maghanap ng mga recipe...';

  @override
  String get mealPlannerNoRecipesFound => 'Walang nahanap na mga recipe';

  @override
  String get mealPlannerNoRecipesHint =>
      'Gumawa muna ng mga recipe sa tab na Mga Recipe';

  @override
  String get mealPlannerSave => 'Idagdag sa plano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sa $total (na) pagkain ang nakaplano';
  }

  @override
  String get mealPlannerGenerateList => 'Gumawa ng listahan ng pamimili';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Idagdag ang lahat ng mga sahog mula sa mga nakaplanong pagkain sa linggong ito sa iyong listahan ng pamimili?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count (na) sahog ang naidagdag sa iyong listahan!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Walang mga sahog na idadagdag. Magplano muna ng ilang pagkain na may mga recipe.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Gumawa muna ng listahan ng pamimili.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Almusal';

  @override
  String get mealPlannerMealTypeLunch => 'Tanghalian';

  @override
  String get mealPlannerMealTypeDinner => 'Hapunan';

  @override
  String get mealPlannerMealTypeSnack => 'Meryenda';

  @override
  String get mealPlannerDateLabel => 'Petsa';

  @override
  String get mealPlannerWeekEmpty => 'Walang nakaplano para sa linggong ito';

  @override
  String get mealPlannerWeekEmptyHint =>
      'I-tap ang anumang araw para magsimulang magplano ng iyong mga pagkain!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Mag-imbita sa listahan';

  @override
  String get shareApp => 'Ibahagi ang app';

  @override
  String get shareAppDescription =>
      'Anyayahan ang mga kaibigan na gumamit ng KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Gumagamit ako ng KipiList para ayusin ang aking pamimili! I-download sa pamamagitan ng aking link at pareho tayong makakakuha ng 7 araw ng Premium na libre: $url';
  }

  @override
  String get shareReferralSubject => 'Makakuha ng 7 araw ng KipiList Premium!';
}
