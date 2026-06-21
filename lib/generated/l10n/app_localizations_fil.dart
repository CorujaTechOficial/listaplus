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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Mga recipe';

  @override
  String get navLists => 'Mga Listahan';

  @override
  String get navMealPlanner => 'Menu';

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
  String get help => 'Tulong';

  @override
  String get helpListTitle => 'Gamit ang iyong listahan';

  @override
  String get helpListAddItems =>
      'Magdagdag ng mga item gamit ang + button sa ibaba, o gamitin ang paghahanap upang mag-browse ng mga produkto';

  @override
  String get helpListAi =>
      'Hilingin sa AI assistant na gumawa, ayusin, o kumpletuhin ang iyong listahan — i-tap lang ang sparkle icon';

  @override
  String get helpListShoppingMode =>
      'Itinatago ng Shopping mode ang mga biniling item para makapag-focus ka sa kung ano ang natitira';

  @override
  String get helpListOrganize =>
      'I-drag ang mga item upang muling ayusin, mag-swipe upang markahan bilang binili, o gumamit ng mga filter at pag-uuri';

  @override
  String get helpListShare =>
      'Ibahagi ang iyong listahan sa pamilya o i-export bilang PDF, Excel, o plain text';

  @override
  String get import => 'I-import';

  @override
  String get rename => 'Palitan ng pangalan';

  @override
  String get upgrade => 'Mag-upgrade';

  @override
  String get clear => 'Linisin';

  @override
  String get clearPurchasedTitle => 'I-clear ang mga biniling item';

  @override
  String get clearPurchasedConfirmMessage =>
      'Alisin ang lahat ng biniling item sa listahang ito? Hindi na ito maa-undo.';

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
  String get errorCreateList =>
      'Hindi makagawa ng listahan. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get errorShareCode =>
      'Error sa pagbuo ng share code. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get errorQuickAdd =>
      'Hindi maidagdag ang item. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get errorLoadList =>
      'Hindi ma-load ang iyong mga listahan. Mangyaring lumikha ng bagong listahan upang makapagsimula.';

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
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Lumabas sa Shopping Mode';

  @override
  String get exit => 'Lumabas';

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
  String pantryDeficitCount(int count, String unit) {
    return 'Nawawala ang $count$unit';
  }

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
  String get scanProductTitle => 'I-scan ang Produkto';

  @override
  String get positionBarcodeCenter => 'Ilagay ang barcode sa gitna';

  @override
  String get product => 'produkto';

  @override
  String get settingsAppBar => 'Mga Setting';

  @override
  String get preferencesSection => 'Mga Kagustuhan';

  @override
  String get aiSection => 'AI Assistant';

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
  String get themeMode => 'Mode ng tema';

  @override
  String get chooseThemeMode => 'Piliin ang mode ng tema';

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
  String get myAchievements => 'Aking Mga Nagawa';

  @override
  String get itemsPurchased => 'Mga bagay na binili';

  @override
  String get totalSavings => 'Kabuuang Savings';

  @override
  String get currentStreak => 'Kasalukuyang Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw',
      one: '$count araw',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Mga Naka-unlock na Badge';

  @override
  String get badgeBeginner => 'Baguhan';

  @override
  String get badgeOrganized => 'Organisado';

  @override
  String get badgeSavingMaster => 'Nagliligtas Master';

  @override
  String get badgeSuperPlanner => 'Super Planner';

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
  String get budgetGoalInvalidAmount =>
      'Maglagay ng value na mas malaki sa zero';

  @override
  String get budgetPartialEstimateHint =>
      '~ Kasama ang mga bahagyang pagtatantya sa pagpepresyo';

  @override
  String get budgetGoalSaved => 'Na-save ang layunin sa badyet';

  @override
  String get budgetGoalRemoved => 'Inalis ang layunin sa badyet';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased ng $total item';
  }

  @override
  String progressBudget(String amount) {
    return 'Badyet: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Kabuuan: $amount';
  }

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
  String get keepAdding => 'Patuloy na magdagdag';

  @override
  String get keepAddingSubtitle =>
      'Panatilihing bukas ang sheet para magdagdag ng maraming item';

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
  String get newChatConfirmTitle => 'Bagong usapan';

  @override
  String get newChatConfirmMessage =>
      'Magsimula ng bagong pag-uusap? Mawawala ang iyong kasalukuyang pag-uusap.';

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
  String get chatHintBlocked => 'I-unlock ang AI para makipag-chat';

  @override
  String get chatEmptySubtitle =>
      'Humingi ng mga mungkahi sa item, mga recipe o mga tip sa pag-save upang makapagsimula.';

  @override
  String get chatEmptyTitle => 'Walang laman ang iyong chat';

  @override
  String chatError(String error) {
    return 'Error sa pag-load ng chat: $error';
  }

  @override
  String get goodResponse => 'Magandang tugon';

  @override
  String get badResponse => 'Masamang tugon';

  @override
  String get scrollToBottom => 'Mag-scroll pababa';

  @override
  String get somethingWentWrong => 'Nagkaproblema';

  @override
  String get editMessage => 'I-edit ang mensahe';

  @override
  String get searchConversations => 'Maghanap ng mga pag-uusap';

  @override
  String get dateGroupToday => 'Ngayong araw';

  @override
  String get dateGroupYesterday => 'Kahapon';

  @override
  String get dateGroupPrevious7Days => 'Nakaraang 7 araw';

  @override
  String get dateGroupOlder => 'Mas matanda';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Isara';

  @override
  String get scanBarcodeTitle => 'I-scan ang Barcode';

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
  String get aiLimitAlmostReached => 'Halos wala na sa mga mensahe ng AI';

  @override
  String get unlockAi => 'I-unlock ang walang limitasyong AI';

  @override
  String get aiTeaserFallback =>
      'Mag-subscribe sa Premium upang i-unlock ang buong tugon at makakuha ng walang limitasyong mga tip sa AI para sa iyong pamimili...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade para sa unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Naabot na ang buwanang limitasyon ng AI. Mag-upgrade sa Pro para sa walang limitasyong →';

  @override
  String get undo => 'I-undo';

  @override
  String get newChatStarted => 'Nagsimula ang bagong chat';

  @override
  String get quickAddToList => 'Idagdag sa listahan';

  @override
  String get aiCapabilitiesTitle => 'Ano ang magagawa ko?';

  @override
  String get aiCapabilitiesLists => 'Mga Listahan ng Pamimili';

  @override
  String get aiCapabilitiesBudget => 'Badyet at Presyo';

  @override
  String get aiCapabilitiesRecipes => 'Mga Recipe at Menu';

  @override
  String get aiCapabilitiesOrganize => 'Organisasyon';

  @override
  String get marketModeDescription =>
      'Lagyan ng check ang mga item habang namimili ka';

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
  String get onboardingMaybeLater => 'Baka mamaya';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Uy $name, ayusin ang iyong pamimili sa tamang paraan.';
  }

  @override
  String get onboardingSlide1Title => 'Mga Smart Shopping List';

  @override
  String get onboardingSlide1Body =>
      'Lumikha at magbahagi ng mga listahan kaagad. Ang Kipi ay awtomatikong nagdaragdag ng mga item batay sa iyong mga gawi.';

  @override
  String get onboardingSlide2Title => 'Kilalanin si Kipi';

  @override
  String get onboardingSlide2Body =>
      'Magtanong ng kahit ano — gumawa ng mga listahan, maghanap ng mga recipe, subaybayan ang iyong pantry, planuhin ang iyong linggo.';

  @override
  String get onboardingSlide3Title => 'Pantry at Pagpaplano ng Pagkain';

  @override
  String get onboardingSlide3Body =>
      'Subaybayan kung ano ang mayroon ka, magplano ng mga pagkain, at awtomatikong bumuo ng mga listahan ng pamimili.';

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
  String get paywallLoadingError =>
      'Error sa paglo-load ng mga alok. Subukan muli.';

  @override
  String get paywallPurchaseError =>
      'Hindi makumpleto ang pagbili. Subukan muli.';

  @override
  String get paywallRestoreError =>
      'Walang nakitang aktibong subscription para i-restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ARAW NA LIBRE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count LIBRENG LINGGO',
      one: '$count LIBRENG LINGGO',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count BUWAN LIBRE',
      one: '$count BUWAN LIBRE',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Subukan ang KipiList Pro nang libre sa loob ng 7 araw';

  @override
  String get paywallTrialSubtitle =>
      'Kanselahin anumang oras. Walang bayad ngayong araw.';

  @override
  String get paywallTrialCta => 'Simulan ang Libreng Pagsubok';

  @override
  String get recipeAddToList => 'Idagdag sa listahan ng pamimili';

  @override
  String get recipeAddError =>
      'Hindi maidagdag sa iyong listahan. Pakisubukang muli.';

  @override
  String get recipeTapToCheck =>
      'Mag-tap ng isang sangkap upang suriin ito habang nagluluto ka';

  @override
  String get recipeIngredientInPantry => 'Sa pantry';

  @override
  String get recipeIngredientLowPantry => 'Mababa sa pantry';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count na sangkap ang idinagdag sa $listName';
  }

  @override
  String get noListSelected =>
      'Walang napiling listahan. Magbukas muna ng listahan.';

  @override
  String get paywallFeaturesTitle => 'Lahat ng kailangan mo:';

  @override
  String get paywallFeatureDescAssistant =>
      'Awtomatikong inaayos ng AI ang iyong listahan';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Gumawa ng maraming listahan hangga\'t kailangan mo';

  @override
  String get paywallFeatureDescSharing => 'Mamili nang magkasama sa real time';

  @override
  String get paywallFeatureDescPantry =>
      'Subaybayan kung ano ang mayroon ka sa bahay';

  @override
  String get paywallFeatureDescBudget => 'Manatili sa badyet bawat buwan';

  @override
  String get paywallFeatureUnlimitedLists => 'Walang limitasyong mga Listahan';

  @override
  String get paywallFeatureSmartAI => 'Matalinong AI';

  @override
  String get paywallFeatureExpenseControl => 'Kontrol sa Gastos';

  @override
  String get paywallFeatureSharing => 'Pagbabahaginan';

  @override
  String get paywallBeforeAfterTitle => 'AI Bago at Pagkatapos:';

  @override
  String get paywallLabelCommon => 'Karaniwan';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'kanin';

  @override
  String get paywallBeforeItem2 => 'sabon';

  @override
  String get paywallBeforeItem3 => 'karne';

  @override
  String get paywallBeforeItem4 => 'tinapay';

  @override
  String get paywallAfterItem1 => 'Mga butil';

  @override
  String get paywallAfterItem2 => 'Paglilinis';

  @override
  String get paywallAfterItem3 => 'Mga karne';

  @override
  String get paywallAfterItem4 => 'Panaderya';

  @override
  String get paywallTestimonialsTitle =>
      'Ano ang sinasabi ng aming mga gumagamit:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'Inaayos ng AI ang aking pamimili sa ilang segundo. Nagtitipid ako ng 20 min kada mamalengke.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Hindi ko na nakalimutan muli ang isang item sa listahan. Ang AI chat ay kahindik-hindik!';

  @override
  String get paywallSocialProof => '+2,400 pamilya ang gumagamit nito';

  @override
  String get paywallCtaUnlock => 'I-unlock ang PRO';

  @override
  String get paywallBestValue => 'PINAKAMAHALAGA';

  @override
  String get paywallMostPopular => 'PINAKA SIKAT';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Secure na pagbabayad';

  @override
  String get paywallSelectPlan => 'Piliin ang iyong plano:';

  @override
  String paywallSavePercent(int percent) {
    return 'MAGTIPID $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
    return '$price/buwan lang';
  }

  @override
  String get paywallPackageAnnual => 'Taunang Plano';

  @override
  String get paywallPackageMonthly => 'Buwanang Plano';

  @override
  String get paywallPackageLifetime => 'Panghabambuhay na Access';

  @override
  String get paywallCancelAnytime =>
      'Kanselahin anumang oras. Walang commitment.';

  @override
  String paywallTrialInCard(int days) {
    return 'Unang $days araw na LIBRE';
  }

  @override
  String get paywallSecuredByStore =>
      'Na-secure ng Google Play · Kanselahin anumang oras';

  @override
  String get paywallPolicy => 'Patakaran sa Privacy';

  @override
  String get paywallTerms => 'Mga Tuntunin sa Paggamit';

  @override
  String get paywallRestore => 'Ibalik';

  @override
  String get paywallTimelineToday => 'Ngayong araw';

  @override
  String get paywallTimelineTodayDesc => 'I-unlock kaagad ang buong access';

  @override
  String paywallTimelineDay(int day) {
    return 'Araw $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Pinapaalalahanan ka namin bago matapos ang pagsubok';

  @override
  String get paywallTimelineChargeDesc =>
      'Magsisimula ang iyong subscription — kanselahin anumang oras';

  @override
  String get paywallHeroFeatureTitle => 'AI Shopping Assistant';

  @override
  String get paywallHeroFeatureDesc =>
      'Magsalita o mag-paste ng isang buong listahan — pinag-uuri-uriin, ikinategorya, at bina-budget ng AI sa loob ng ilang segundo';

  @override
  String get paywallBasedOnAnswers => 'Personalized mula sa iyong mga sagot';

  @override
  String get paywallHeroHeadline => 'Kipi AI laging nasa tabi mo';

  @override
  String get paywallHeroSubtitle =>
      'Magdagdag ng mga item, ayusin ang mga listahan at makatipid ng oras gamit ang AI sa iyong bulsa';

  @override
  String get paywallBenefit1Desc =>
      'Nagdaragdag, nag-aayos at nagmumungkahi ng mga item 24/7';

  @override
  String get paywallBenefit2Desc => 'Walang 3-listang limitasyon';

  @override
  String get paywallBenefit3Desc =>
      'Pagsubaybay sa gastos at mga listahan ng pamilya';

  @override
  String get paywallPackageMonthlyDesc => 'Buong kakayahang umangkop';

  @override
  String get paywallWelcomeOfferBadge => '🎁 Maligayang pagdating alok';

  @override
  String get paywallFreeTier => 'Libre: 3 listahan';

  @override
  String get paywallProTier => 'Pro: Walang limitasyon';

  @override
  String get firstItemAddedSnackbar =>
      'Idinagdag ang unang item! Magandang simula 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Magsimula nang libre — $days araw';
  }

  @override
  String get premiumUpgrade => 'Mag-upgrade para ma-unlock';

  @override
  String get itemRemoved => 'Naalis ang item';

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
  String get pantryItemAdded => 'Idinagdag ang item';

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
  String get recipeYieldServings => 'Magbigay ng mga servings';

  @override
  String get recipeManualTotalCost => 'Manu-manong kabuuang gastos';

  @override
  String get recipeManualTotalCostHint =>
      'Iwanang walang laman upang matantya mula sa mga presyo ng sangkap.';

  @override
  String get recipeEstimatedTotalCost => 'Tinatayang kabuuang gastos';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / paghahatid';
  }

  @override
  String recipeServesCount(int count) {
    return 'Nagsisilbi sa $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Bahagyang pagtatantya batay sa mga sangkap na may presyo.';

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
  String get mealPlannerEstimatePartial =>
      'Tantyahin batay sa mga recipe na may bahagyang data ng presyo.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Buwan: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Linggo: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Ngayon: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Alisin ang layunin';

  @override
  String get mealPlannerBudgetGoalNav => 'Badyet ng tagaplano ng pagkain';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Buwanang layunin sa paggastos para sa pagpaplano ng pagkain';

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
  String shareReferralText(String url) {
    return 'Gumagamit ako ng KipiList para ayusin ang aking pamimili! I-download sa pamamagitan ng aking link at pareho tayong makakakuha ng 7 araw ng Premium na libre: $url';
  }

  @override
  String get shareReferralSubject => 'Makakuha ng 7 araw ng KipiList Premium!';

  @override
  String get gestureHint => 'I-hold para piliin ang • Mag-swipe para alisin';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'Aking Mga Madalas';

  @override
  String get catalogSearchGlobal => 'Maghanap ng anumang produkto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Maghanap sa $category...';
  }

  @override
  String get catalogSortPopular => 'Pinakasikat';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'mga nasyonal';

  @override
  String get catalogRareSection => 'hindi gaanong karaniwan sa iyong bansa';

  @override
  String get catalogRareBadge => 'Bihira';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Magdagdag ng $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Hindi nakita ang produkto, i-type ang pangalan';

  @override
  String get catalogBrowse => 'Mag-browse ng Catalog';

  @override
  String get catalogCategories => 'Mga kategorya';

  @override
  String get offlineBanner => 'Offline ka';

  @override
  String get consentTitle => 'Privacy at Analytics';

  @override
  String get consentBody =>
      'Gumagamit ang KipiList ng Firebase Analytics para pahusayin ang iyong karanasan. Pinoproseso ang iyong data ayon sa aming Patakaran sa Privacy.';

  @override
  String get consentAccept => 'Tanggapin';

  @override
  String get consentDecline => 'Hindi, salamat';

  @override
  String get mealPlannerPantryAllAvailable => 'Sa stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nawawalang item',
      one: '$count nawawalang item',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'Pamahalaan ang mga uri ng pagkain';

  @override
  String get mealPlannerAddType => 'Magdagdag ng uri ng pagkain';

  @override
  String get mealPlannerEditType => 'I-edit ang uri ng pagkain';

  @override
  String get mealPlannerTypeName => 'Pangalan';

  @override
  String get mealPlannerTypeColor => 'Kulay';

  @override
  String get mealPlannerTypeIcon => 'Icon';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Sigurado ka bang gusto mong tanggalin ang uri ng pagkain na ito? Ang mga nakaplanong pagkain na may ganitong uri ay mananatili.';

  @override
  String get mealPlannerTypeNameEmpty =>
      'Hindi maaaring walang laman ang pangalan';

  @override
  String get mealPlannerTypeDeleteError =>
      'Hindi matanggal ang ganitong uri ng pagkain.';

  @override
  String get mealPlannerCustomTypeLabel => 'Pasadyang uri';

  @override
  String get mealPlannerDefaultTypeLabel => 'Default na uri';

  @override
  String get mealPlannerDuplicate => 'Duplicate na pagkain';

  @override
  String get mealPlannerSelectDestinationDay => 'I-duplicate sa...';

  @override
  String get mealPlannerCurrentDayLabel => 'Kasalukuyang araw';

  @override
  String get mealPlannerDuplicateSuccess =>
      'Matagumpay na nadoble ang pagkain!';

  @override
  String get expirationDate => 'Petsa ng pag-expire';

  @override
  String get notInformed => 'Hindi alam';

  @override
  String get skip => 'Laktawan';

  @override
  String get onboardingSkip => 'Laktawan sa ngayon';

  @override
  String get onboardingAiTitle => 'Makipag-chat kay Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! Ako si Kipi, ang iyong personal na shopping assistant! 🛒';

  @override
  String get onboardingAiAskName => 'ano pangalan mo';

  @override
  String get onboardingAiNameHint => 'I-type ang iyong pangalan...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Ikinagagalak kitang makilala, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Ano ang paborito mong pagkain?';

  @override
  String get onboardingAiFoodHint => 'hal. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Mahusay na pagpipilian! Narito ang idaragdag ko sa iyong listahan:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Mukhang maganda ba ito? Subukang mag-type ng iba pa!';

  @override
  String get onboardingAiReady =>
      'Mahusay! Handa ka nang magsimula. I-set up natin ang iyong account!';

  @override
  String get onboardingAiContinue => 'Magpatuloy →';

  @override
  String get connectionError => 'Error sa koneksyon';

  @override
  String connectionErrorDesc(String error) {
    return 'Error: $error';
  }

  @override
  String get errorLoadingLists => 'Error sa paglo-load ng mga listahan';

  @override
  String get errorLoadingItems => 'Error sa paglo-load ng mga item';

  @override
  String get noListsFound => 'Walang nakitang listahan';

  @override
  String get backToToday => 'Bumalik sa ngayon';

  @override
  String get quickSuggestions => 'Mabilis na mga mungkahi';

  @override
  String get aiEnergyLow => 'Mababang enerhiya ng AI';

  @override
  String get aiUnlockUnlimited => 'I-unlock ang walang limitasyong AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 ngayon';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Mag-subscribe para sa walang limitasyong AI';

  @override
  String get unlockWithAd => 'I-unlock gamit ang ad';

  @override
  String get conversationHistoryTitle => 'Kasaysayan ng pag-uusap';

  @override
  String get noConversationsFound => 'Walang nakitang pag-uusap';

  @override
  String get errorLoadingHistory => 'Error sa paglo-load ng history';

  @override
  String get deleteConversationTitle => 'Tanggalin ang pag-uusap';

  @override
  String get deleteConversationConfirm =>
      'Ang pagkilos na ito ay hindi maaaring i-undo.';

  @override
  String get deleteConversation => 'Tanggalin';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'Aktibo ang KipiList Pro';

  @override
  String get unlockPremiumTitle => 'I-unlock ang Premium';

  @override
  String get loadingSubscription => 'Nilo-load ang subscription...';

  @override
  String get errorLoadingSubscription => 'Error sa paglo-load ng subscription';

  @override
  String get profileSection => 'Profile';

  @override
  String get myProfile => 'Aking profile';

  @override
  String get profileSubtitle => 'Ang iyong impormasyon sa profile';

  @override
  String get customizeAiAssistant => 'I-customize ang AI assistant';

  @override
  String get assistantHistory => 'Kasaysayan ng assistant';

  @override
  String get assistantHistorySubtitle =>
      'Tingnan ang iyong kasaysayan ng pag-uusap';

  @override
  String get manageCategories => 'Pamahalaan ang mga kategorya';

  @override
  String get manageCategoriesSubtitle =>
      'Magdagdag, mag-edit o mag-alis ng mga kategorya';

  @override
  String get customizeAssistant => 'I-customize';

  @override
  String get assistantName => 'Pangalan ng Assistant';

  @override
  String get chooseIcon => 'Pumili ng icon';

  @override
  String get profileSaved => 'Na-save ang profile';

  @override
  String get errorSavingProfile => 'Error sa pag-save ng profile';

  @override
  String get userProfile => 'Profile ng gumagamit';

  @override
  String get profileDescription => 'Paglalarawan ng profile';

  @override
  String get preferredMarket => 'Ginustong merkado';

  @override
  String get preferredMarketHint => 'Saan ka kadalasang namimili?';

  @override
  String get dietaryRestrictions => 'Mga paghihigpit sa pagkain';

  @override
  String get dietaryRestrictionsHint => 'Anumang mga paghihigpit sa pagkain?';

  @override
  String get marketsToAvoid => 'Mga pamilihan na dapat iwasan';

  @override
  String get marketsToAvoidHint =>
      'Mga palengke na mas gusto mong hindi mamili';

  @override
  String get observations => 'Mga obserbasyon';

  @override
  String get observationsHint => 'Anumang karagdagang mga tala?';

  @override
  String get saveProfile => 'I-save ang profile';

  @override
  String get everythingReady => 'Handa na ang lahat!';

  @override
  String get youCompletedList => 'Nakumpleto mo ang listahan!';

  @override
  String get selectCheaperAlternative => 'Pumili ng mas murang alternatibo';

  @override
  String get suggestedItems => 'Mga iminungkahing item';

  @override
  String get swapped => 'Pinagpalit';

  @override
  String get swap => 'Magpalit';

  @override
  String get chooseThemeColor => 'Pumili ng kulay ng tema';

  @override
  String get manageCategoriesTitle => 'Pamahalaan ang Mga Kategorya';

  @override
  String get categoryLimitReached => 'Naabot na ang limitasyon ng kategorya';

  @override
  String get deleteCategoryTitle => 'Tanggalin ang kategorya';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Ang mga item sa \"$category\" ay ililipat sa \"Iba pa\".\nMagpatuloy?';
  }

  @override
  String get deleteCategory => 'Tanggalin';

  @override
  String get newCategoryDialog => 'Bagong kategorya';

  @override
  String get editCategoryDialog => 'I-edit ang kategorya';

  @override
  String get categoryName => 'Pangalan ng kategorya';

  @override
  String get categoryNameHint => 'Ipasok ang pangalan ng kategorya';

  @override
  String get categoryColorLabel => 'Kulay';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name idinagdag';
  }

  @override
  String get kipiQuickBarHint => 'Ano ang kailangan mong bilhin?';

  @override
  String replaceItem(String item) {
    return 'Palitan ang $item';
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
      'Huwag kailanman kalimutan muli ang isang grocery item';

  @override
  String get onboardingGoalSaveMoney => 'Magtipid ng pera';

  @override
  String get onboardingGoalNeverForget => 'Huwag kalimutan ang mga item';

  @override
  String get onboardingGoalFaster => 'Mamili nang mas mabilis';

  @override
  String get onboardingGoalFamily => 'Ayusin ang pamimili ng pamilya';

  @override
  String get onboardingGoalRecipes => 'Tumuklas ng mga recipe';

  @override
  String get onboardingGoalPantry => 'Subaybayan ang pantry';

  @override
  String get onboardingCommitmentsTitle => 'Ano ang mahalaga sa iyo?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Piliin ang iyong mga layunin upang i-personalize ang KipiList';

  @override
  String get onboardingCommitmentsCta => 'Tara na!';

  @override
  String get onboardingPersonalizationNameLabel => 'pangalan mo';

  @override
  String get onboardingPersonalizationNameHint => 'Ilagay ang iyong pangalan';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Ano ang binibili mo?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Kanino ka namimili?';

  @override
  String get onboardingCategoryGrocery => 'Mga groceries';

  @override
  String get onboardingCategoryPharmacy => 'Botika';

  @override
  String get onboardingCategoryRecipes => 'Mga recipe';

  @override
  String get onboardingCategoryHome => 'Bahay';

  @override
  String get onboardingCategoryPet => 'Alagang hayop';

  @override
  String get onboardingGroupSolo => 'Ako lang';

  @override
  String get onboardingGroupCouple => 'Mag-asawa';

  @override
  String get onboardingGroupFamily => 'Pamilya';

  @override
  String get onboardingLoadingTitle => 'Inihahanda ang iyong karanasan...';

  @override
  String get onboardingLoadingStep1 => 'Sinusuri ang iyong mga kagustuhan...';

  @override
  String get onboardingLoadingStep2 => 'Pagse-set up ng AI assistant...';

  @override
  String get onboardingLoadingStep3 => 'Halos handa na...';

  @override
  String get onboardingLoadingStat1Label => 'Naka-catalog ang mga item';

  @override
  String get onboardingLoadingStat2Label => 'Nakatulong ang mga user';

  @override
  String get onboardingLoadingStat3Label => 'Nai-save ang mga minuto';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, makatipid sa bawat biyahe!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, huwag kalimutan ang isang item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, mamili sa kalahating oras!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ayusin ang pamimili ng pamilya!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, tumuklas ng mga bagong recipe!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, subaybayan ang iyong pantry nang perpekto!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Makatipid sa bawat biyahe!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Huwag kalimutan ang isang item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Mamili sa kalahating oras!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Ayusin ang pamimili ng pamilya!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Tumuklas ng mga bagong recipe!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Subaybayan ang iyong pantry nang perpekto!';

  @override
  String paywallPricePerDay(String price) {
    return 'Tanging $price/araw — mas mababa sa isang kape';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Laktawan sa ngayon';

  @override
  String get paywallTestimonial =>
      'Inaayos ng AI ang aking pamimili sa ilang segundo. Nagtitipid ako ng 20 min bawat biyahe.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Kanselahin anumang oras · Walang bayad hanggang sa matapos ang iyong pagsubok';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hoy $name! Anong $category ang kailangan mo?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Anong $category ang kailangan mo?';
  }

  @override
  String get onboardingAiDemoYes => 'Oo!';

  @override
  String get onboardingAiDemoReaction => 'Ang ganda!';

  @override
  String get onboardingAiDemoChange => 'Baguhin ang item';

  @override
  String get onboardingAiDemoOffer => 'Subukang mag-type ng iba pa!';

  @override
  String get onboardingAiDemoContinue => 'Magpatuloy';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Ang iyong listahan ng pamimili, ngayon ay may AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Tingnan kung paano binubuo ng Kipi ang iyong buong listahan sa loob ng ilang segundo';

  @override
  String get onboardingAiDemoSlideCta => 'Gusto ko ito! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Nagho-host ako ng barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'handa na! Narito ang lahat ng kailangan mo:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Kumpletuhin ang listahan sa ilang segundo ✨';

  @override
  String get onboardingPainTitle => 'Ano ang pinaka nakakadismaya sa iyo?';

  @override
  String get onboardingPainSubtitle =>
      'Maging tapat — aayusin natin ang bawat isa';

  @override
  String get onboardingPainCta => 'Oo, ayusin mo ito para sa akin →';

  @override
  String get onboardingPainForget => 'Nakalimutan ko ang mga gamit sa tindahan';

  @override
  String get onboardingPainFamily =>
      'Hindi nakikita ng pamilya ko ang listahan';

  @override
  String get onboardingPainOverspend => 'Lagi akong lumalampas sa budget';

  @override
  String get onboardingPainRepeat =>
      'Ang isang paglalakbay ay hindi kailanman sapat';

  @override
  String get aiWelcomeContent =>
      'Hello! 👋 Ako si **Kipi**, ang iyong personal shopping at recipe assistant!\n\nNandito ako para tulungan ka:\n🛒 **Awtomatikong ayusin** ang iyong pamimili ayon sa mga kategorya\n💰 **Subaybayan** ang iyong badyet at bigyan ka ng mga tip sa pagtitipid\n🍲 **Magmungkahi** ng mga masasarap na recipe na mayroon ka na\n\nPaano kita matutulungan ngayon? Maaari kang magsimula sa pamamagitan ng paggawa ng iyong unang listahan!';

  @override
  String get aiWelcomeSuggestCreateList => 'Lumikha ng aking unang listahan';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, tulungan mo akong gumawa ng aking unang shopping list';

  @override
  String get aiWelcomeSuggestSave => 'Paano makatipid?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, paano mo ako matutulungang makatipid sa mga pamilihan?';

  @override
  String get suggestionMilk => 'Gatas';

  @override
  String get suggestionBread => 'Tinapay';

  @override
  String get suggestionEggs => 'Mga itlog';

  @override
  String get suggestionCoffee => 'kape';

  @override
  String get suggestionRice => 'kanin';

  @override
  String get suggestionFruits => 'Mga prutas';

  @override
  String get recipeIngredientSingular => '1 sangkap';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count sangkap';
  }

  @override
  String get pantryAvailabilityAll => 'All set na!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount sa pantry';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Hakbang $current ng $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Sabihin sa amin kung ano ang iyong pinaplano. Binuo ni Kipi ang listahan.';

  @override
  String get onboardingDemoSubtitle =>
      'Kumuha ng mga organisadong item sa ilang segundo.';

  @override
  String get onboardingPersonalizationEffect =>
      'Nakakatulong ito sa Kipi na magmungkahi ng higit pang nauugnay na mga item at dami.';

  @override
  String get onboardingPersonalizeWithName =>
      'Isapersonal gamit ang aking pangalan';

  @override
  String get onboardingCreateFirstList => 'Lumikha ng aking unang listahan';

  @override
  String get onboardingPromptWeekly =>
      'Planuhin ang aking lingguhang pangangailangan';

  @override
  String get onboardingPromptEvent => 'May inihahanda akong espesyal';

  @override
  String get onboardingPromptEssentials =>
      'Imungkahi ang mga mahahalaga para sa akin';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Bigas|🫘 Beans|🥛 Gatas|🥚 Itlog|🍞 Tinapay|🍎 Prutas';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Malagkit na benda|🌡️ Thermometer|🧴 Antiseptic|😷 Mga mask sa mukha|🧼 Hand sanitizer';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Mga kamatis|🧅 Sibuyas|🧄 Bawang|🥚 Itlog|🧀 Keso|🌿 Mga sariwang damo';

  @override
  String get onboardingFallbackHome =>
      '🧻 Paper towel|🧽 Sponge|🧴 Detergent|🗑️ Trash bag|🧹 Panlinis na tela';

  @override
  String get onboardingFallbackPet =>
      '🥣 Pagkain ng alagang hayop|🦴 Treat|🧼 Pet shampoo|🧸 Laruan|🧻 Mga basurang bag';

  @override
  String get onboardingListSaveFailed =>
      'Inihanda ko ang mga item, ngunit hindi ko mai-save ang listahan. Subukang muli upang panatilihin ito sa app.';

  @override
  String onboardingListCreated(int count) {
    return 'Handa na ang iyong listahan: $count item na nakaayos para sa iyo.';
  }

  @override
  String get onboardingContinueToOffer => 'Magpatuloy';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Handa na ang iyong unang listahan · $count item';
  }

  @override
  String get paywallContinueFree => 'Magpatuloy sa libreng bersyon';

  @override
  String get paywallPurchasePending =>
      'Ang iyong pagbabayad ay nakabinbin ang pag-apruba. Awtomatikong ilalabas ang access pagkatapos ng kumpirmasyon.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Ngayon: walang bayad. Pagkatapos ay $price/taon pagkatapos ng $days araw. Kanselahin anumang oras.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Ngayon: walang bayad. Pagkatapos ay $price/buwan pagkatapos ng $days araw. Kanselahin anumang oras.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/taon. Kanselahin anumang oras.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/buwan. Kanselahin anumang oras.';
  }

  @override
  String get obHookTitle => 'Dito nagsisimula ang mas matalinong pamimili';

  @override
  String get obHookSubtitle =>
      'Mga listahang pinapagana ng AI na nakakatipid sa iyo ng oras at pera, bawat biyahe.';

  @override
  String get obHookSocial =>
      'Pinagkakatiwalaan ng libu-libong mamimili sa buong mundo';

  @override
  String get obHookCta => 'Magsimula';

  @override
  String get obQuizHouseholdTitle => 'Kanino ka namimili?';

  @override
  String get obQuizHouseholdSolo => 'Ako lang';

  @override
  String get obQuizHouseholdCouple => 'Ako at ang aking partner';

  @override
  String get obQuizHouseholdFamilySmall => 'Pamilya ng 3–4';

  @override
  String get obQuizHouseholdFamilyLarge => 'Pamilya ng 5+';

  @override
  String get obQuizFrequencyTitle =>
      'Gaano ka kadalas namimili ng mga pamilihan?';

  @override
  String get obQuizFrequencyDaily => 'Halos araw-araw';

  @override
  String get obQuizFrequencyWeekly => 'Minsan sa isang linggo';

  @override
  String get obQuizFrequencyBiweekly => 'Bawat dalawang linggo';

  @override
  String get obQuizFrequencyMonthly => 'Malaking buwanang paghakot';

  @override
  String get obQuizPainTitle =>
      'Ano ang pinakanakakadismaya sa iyo tungkol sa pamimili?';

  @override
  String get obQuizPainForget => 'Lagi kong nakakalimutan ang mga item';

  @override
  String get obQuizPainOverspend => 'Gumastos ako ng higit sa pinlano';

  @override
  String get obQuizPainWaste => 'Nauubos ang pagkain sa bahay';

  @override
  String get obQuizPainTime => 'Ito ay tumatagal ng masyadong maraming oras';

  @override
  String get obQuizSavingsTitle => 'Magkano ang gusto mong i-save buwan-buwan?';

  @override
  String get obQuizSavingsSmall => 'Kaunti — bawat bit ay mahalaga';

  @override
  String get obQuizSavingsMedium => 'Around 10% ng grocery bill ko';

  @override
  String get obQuizSavingsLarge => 'Hangga\'t maaari';

  @override
  String get obQuizMethodTitle =>
      'Paano ka gumagawa ng mga listahan ng pamimili ngayon?';

  @override
  String get obQuizMethodPaper => 'Panulat at papel';

  @override
  String get obQuizMethodNotes => 'Notes app';

  @override
  String get obQuizMethodMemory => 'Iniingatan ko ito sa aking ulo';

  @override
  String get obQuizMethodNone => 'Hindi ako gumagawa ng mga listahan';

  @override
  String get obSocialTitle => 'Ikaw ay nasa mabuting kumpanya';

  @override
  String get obSocialSubtitle =>
      'Ang mga mamimiling tulad mo ay nagtitipid na sa KipiList';

  @override
  String get obSocialQuote1 =>
      'Wala na akong nakakalimutan. Binubuo ng AI ang aking listahan sa ilang segundo.';

  @override
  String get obSocialQuote2 =>
      'Kapansin-pansing pinutol namin ang aming grocery bill sa unang buwan.';

  @override
  String get obSocialQuote3 =>
      'Ang pagbabahagi ng listahan sa aking kasosyo ay natapos ang aming kaguluhan sa pamimili.';

  @override
  String get obLoadingTitle => 'Bumuo ng iyong personalized na plano...';

  @override
  String get obLoadingStepProfile => 'Pagsasaayos para sa iyong sambahayan';

  @override
  String get obLoadingStepHabits => 'Pag-tune sa iyong shopping routine';

  @override
  String get obLoadingStepSavings =>
      'Pag-optimize ng iyong diskarte sa pagtitipid';

  @override
  String get obLoadingStepLists =>
      'Inihahanda ang iyong mga matalinong listahan';

  @override
  String get obRevealTitle => 'Handa na ang iyong plano!';

  @override
  String get obRevealSubtitle =>
      'Narito kung paano gagana ang KipiList para sa iyo';

  @override
  String get obRevealSavingsCaption => 'Mga inaasahang matitipid sa KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Buwan $n';
  }

  @override
  String get obRevealFeatureAi =>
      'Binubuo at inaayos ng AI ang iyong mga listahan';

  @override
  String get obRevealFeatureBudget =>
      'Sinusubaybayan ang paggastos laban sa iyong layunin';

  @override
  String get obRevealFeaturePantry =>
      'Pinutol ng pantry tracking ang basura ng pagkain';

  @override
  String get obRevealFeatureShare =>
      'Real-time na pagbabahagi sa iyong sambahayan';

  @override
  String get obPaywallTitle => 'I-unlock ang iyong plano';

  @override
  String get obPaywallRetry => 'Subukan muli';

  @override
  String get obLoginTitle => 'I-save ang iyong plano';

  @override
  String get obLoginSubtitle =>
      'Mag-sign in para mag-sync ang iyong mga listahan sa mga device';

  @override
  String get obLoginGoogle => 'Magpatuloy sa Google';

  @override
  String get obLoginApple => 'Magpatuloy sa Apple';

  @override
  String get obLoginSkip => 'Hindi ngayon';

  @override
  String get obLoginError =>
      'Nabigo ang pag-sign in. Subukang muli o laktawan sa ngayon.';

  @override
  String get searchMessages => 'Maghanap ng mga mensahe...';

  @override
  String get deletedList => 'Tinanggal na listahan';

  @override
  String get openConversation => 'Buksan ang pag-uusap';

  @override
  String get userRole => 'Ikaw';

  @override
  String get assistantRole => 'Katulong';

  @override
  String get agentActionsRunning => 'Nagpapatakbo ng mga aksyon...';

  @override
  String get agentActionsFailed => 'Nabigong magpatakbo ng mga pagkilos';

  @override
  String get agentActionsPremium =>
      'Ang mga aksyon ay nangangailangan ng Premium';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'I-undo ang mga pagbabago';

  @override
  String premiumStepDescription(String description) {
    return '$description (Premium)';
  }

  @override
  String get itemAddedToList => 'Idinagdag ang item sa listahan.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Nakaraang estado: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Mag-subscribe sa Premium para i-unlock ang mga awtomatikong pagkilos.';

  @override
  String get viewPlans => 'Tingnan ang mga plano';

  @override
  String get artifactSynced => 'Naka-sync';

  @override
  String get artifactBudgetLabel => 'Badyet:';

  @override
  String get totalEstimatedLabel => 'Tinatayang kabuuan';

  @override
  String get quickActionPantry => 'Tingnan ang pantry';

  @override
  String get quickActionAi => 'Makipag-chat kay Kipi';

  @override
  String aiApiError(int statusCode) {
    return 'Nagbalik ng error ang serbisyo ng AI ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'Masyadong matagal ang kahilingan. Pakisubukang muli.';

  @override
  String get aiConnectionError =>
      'Hindi makakonekta sa serbisyo ng AI. Suriin ang iyong koneksyon.';

  @override
  String get aiEmptyResponseError =>
      'Ang serbisyo ng AI ay nagbalik ng walang laman na tugon.';

  @override
  String get aiInvalidResponseError =>
      'Ang serbisyo ng AI ay nagbalik ng isang di-wastong tugon.';

  @override
  String get categoryFruits => 'Mga prutas';

  @override
  String get categoryCleaning => 'Paglilinis';

  @override
  String get categoryBeverages => 'Mga inumin';

  @override
  String get categoryBakery => 'Panaderya';

  @override
  String get categoryMeat => 'karne';

  @override
  String get categoryDairy => 'Pagawaan ng gatas';

  @override
  String get categoryVegetables => 'Mga gulay';

  @override
  String get categoryGrains => 'Mga butil at cereal';

  @override
  String get categoryHygiene => 'Personal na pangangalaga';

  @override
  String get categoryFrozen => 'Mga frozen na pagkain';

  @override
  String get categoryCanned => 'Mga de-latang paninda';

  @override
  String get categorySeasonings => 'Mga pampalasa';

  @override
  String get categorySweets => 'Mga matamis at panghimagas';

  @override
  String get categoryAlcohol => 'Mga inuming may alkohol';

  @override
  String get categoryFish => 'Isda';

  @override
  String get categoryColdCuts => 'Malamig na hiwa';

  @override
  String get categoryUtilities => 'Mga gamit sa bahay';

  @override
  String get categoryPet => 'Mga gamit ng alagang hayop';

  @override
  String get categoryBaby => 'Baby';

  @override
  String get categoryOthers => 'Iba pa';

  @override
  String chatEmptyGreeting(String name) {
    return 'Kumusta $name, ako si Kipi 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Hi, ako si Kipi 👋';

  @override
  String get chatEmptyPitch =>
      'Gumagawa ako ng mga listahan, nagmumungkahi ng mga recipe, at naghahanap kung saan mag-iipon. Saan tayo magsisimula?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Magplano ng barbecue';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, nagho-host ako ng barbecue — tulungan mo akong bumuo ng listahan ng pamimili';

  @override
  String get aiRateLimitError =>
      'Masyadong maraming mensahe sa maikling panahon. Maghintay ng ilang segundo at subukang muli.';

  @override
  String get chatHistoryErrorTitle => 'Hindi ma-load ang pag-uusap na ito';

  @override
  String get chatHistoryErrorBody =>
      'May nangyaring mali sa aming pagtatapos. I-tap ang muling subukan upang subukang muli.';

  @override
  String get chatHistoryOfflineTitle => 'Offline ka';

  @override
  String get chatHistoryOfflineBody =>
      'Suriin ang iyong koneksyon sa internet at subukang muli.';

  @override
  String get aiGeneratingResponse => 'Bumubuo ng tugon...';

  @override
  String get errorUnexpected =>
      'May nangyaring hindi inaasahan. Pakisubukang muli.';

  @override
  String get aiAssistantTooltip => 'Buksan ang AI assistant';

  @override
  String get searchItems => 'Maghanap ng mga item';

  @override
  String get onboardingHookContinue => 'Magsimula';

  @override
  String get onboardingHookItem1 => 'Inihaw na manok';

  @override
  String get onboardingHookItem2 => 'Mozzarella cheese';

  @override
  String get onboardingHookItem3 => 'Mga kamatis na cherry';

  @override
  String get checkItemTooltip => 'Suriin ang item';
}
