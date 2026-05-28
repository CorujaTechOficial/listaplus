// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'Uhlu Lwezinto Okumele Uzithenge';

  @override
  String get lists => 'Izinhlu';

  @override
  String get pantry => 'Iphanta';

  @override
  String get cancel => 'Khansela';

  @override
  String get save => 'Londoloza';

  @override
  String get create => 'Dala';

  @override
  String get add => 'Engeza';

  @override
  String get remove => 'Susa';

  @override
  String get delete => 'Susa';

  @override
  String get edit => 'Hlela';

  @override
  String get copy => 'Kopisha';

  @override
  String get retry => 'Zama futhi';

  @override
  String get regenerate => 'Khiqa kabusha';

  @override
  String get copiedToClipboard => 'Kukopishelwe kubuntu';

  @override
  String get confirm => 'Qinisekisa';

  @override
  String get close => 'Vala';

  @override
  String get import => 'Ngenisa';

  @override
  String get rename => 'Qamba kabusha';

  @override
  String get upgrade => 'Thuthukisa';

  @override
  String get clear => 'Sula';

  @override
  String error(String message) {
    return 'Iphutha: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Iphutha: $message';
  }

  @override
  String get purchaseError => 'Iphutha ekucubungulweni kokuthenga. Zama futhi.';

  @override
  String get restoreError =>
      'Iphutha ekubuyiseleni izinto ezithengiwe. Zama futhi.';

  @override
  String get loading => 'Iyalayisha...';

  @override
  String get fieldRequired => 'Inkambu edingekayo';

  @override
  String get addedFeedback => 'Yengeziwe!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zikhethiwe',
      one: '$count ikhethiwe',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Okulinganiselwe';

  @override
  String get alreadyPurchased => 'Sesithengiwe';

  @override
  String get clearList => 'Sula uhlu';

  @override
  String get clearPurchased => 'Sula okuthengiwe';

  @override
  String get share => 'Yabelana';

  @override
  String get shareViaCode => 'Yabelana ngekhodi';

  @override
  String get importViaCode => 'Ngenisa ngekhodi';

  @override
  String get listAssistant => 'Umsizi wohlu';

  @override
  String get globalAssistant => 'Umsizi jikelele';

  @override
  String get becomePremium => 'Yiba yi-Premium';

  @override
  String get manageSubscription => 'Phatha ubulungu';

  @override
  String get completePurchase => 'Qedela ukuthenga';

  @override
  String get confirmClearList => 'Susa zonke izinto?';

  @override
  String get shareListTitle => 'Yabelana ngohlu';

  @override
  String get shareThisCode => 'Yabelana ngaleli khodi:';

  @override
  String get validForLimitedTime => 'Isebenza isikhathi esilinganiselwe';

  @override
  String get importListTitle => 'Ngenisa uhlu';

  @override
  String get enterCodeHint => 'Faka ikhodi';

  @override
  String get confirmArchiveTitle => 'Qedela Ukuthenga';

  @override
  String get confirmArchiveContent => 'Qedela lokhu kuthenga bese ugcina uhlu?';

  @override
  String get complete => 'Qedela';

  @override
  String get listArchived => 'Uhlu lugcinwe ngempumelelo!';

  @override
  String listAdded(String listName) {
    return '$listName ingeziwe!';
  }

  @override
  String get buy => 'Thenga';

  @override
  String get unmark => 'Susa uphawu';

  @override
  String confirmDeleteItems(int count) {
    return 'Susa izinto ezi-$count?';
  }

  @override
  String get confirmDeleteTitle => 'Qinisekisa';

  @override
  String confirmContent(int count) {
    return 'Susa izinto ezi-$count?';
  }

  @override
  String get archiveList => 'Gcina uhlu';

  @override
  String get pantryAppBar => 'Iphanta';

  @override
  String get generateShoppingList => 'Dala uhlu lokuthenga';

  @override
  String get pantryEmpty => 'Iphanta engenalutho';

  @override
  String get pantryEmptySubtitle => 'Engeza imikhiqizo ofuna ukuba nayo ekhaya';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'Izinto ezi-$deficit zidinga ukuthengwa';
  }

  @override
  String get noItemsToBuy => 'Azikho izinto ezidinga ukuthengwa';

  @override
  String get newPantryList => 'Ukuthenga kwephanta';

  @override
  String get newListTitle => 'Uhlu olusha lokuthenga';

  @override
  String itemsWillBeAdded(int count) {
    return 'Izinto ezi-$count zizongezwa';
  }

  @override
  String get listNameLabel => 'Igama lohlu';

  @override
  String listCreated(String name, int count) {
    return 'Uhlu \"$name\" ludalwe ngezinto ezi-$count';
  }

  @override
  String get noTracking => 'Akukho ukulandelela';

  @override
  String get markAsPurchased => 'Maka njengokuthengiwe';

  @override
  String editPantryItem(String name) {
    return 'Hlela $name';
  }

  @override
  String get idealQuantity => 'Inani elifanele';

  @override
  String get currentQuantity => 'Inani lamanje';

  @override
  String get consumed => 'Kusetshenzisiwe';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name igcwalise kabusha yaba ngu-$quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Susa \"$name\" ephanta?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Hlela $name';
  }

  @override
  String get settingsAppBar => 'Izilungiselelo';

  @override
  String get language => 'Ulimi';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Okujwayelekile kwesistimu';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Ukubukeka';

  @override
  String get light => 'Ukukhanya';

  @override
  String get system => 'Isistimu';

  @override
  String get dark => 'Ubumnyama';

  @override
  String get themeColor => 'Umbala wetimu';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Izezimali';

  @override
  String get monthlyBudgetNav => 'Isabelomali senyanga';

  @override
  String get budgetSubtitle =>
      'Landelela ukusetshenziswa kwakho kwemali kwanyanga zonke';

  @override
  String get data => 'Idatha';

  @override
  String get backupNav => 'Isipele';

  @override
  String get backupSubtitle => 'Khipha noma ngenisa idatha yakho';

  @override
  String get about => 'Mayelana';

  @override
  String get version => 'Inguqulo';

  @override
  String get privacy => 'Ubumfihlo';

  @override
  String get termsOfUse => 'Imigomo yokusebenzisa';

  @override
  String get backupTitle => 'Isipele';

  @override
  String get backupPremiumDescription =>
      'Isipele nokukhipha idatha kuyisici se-premium';

  @override
  String get exportData => 'Khipha idatha';

  @override
  String get exportDataSubtitle => 'Londoloza zonke izinhlu njenge-JSON';

  @override
  String get importData => 'Ngenisa idatha';

  @override
  String get importDataSubtitle => 'Buyisela izinhlu ezivela ku-JSON';

  @override
  String get importJsonTitle => 'Ngenisa i-JSON';

  @override
  String get importJsonHint => 'Namathisela i-JSON yesipele lapha...';

  @override
  String get backupExported => 'Isipele sikhiphiwe!';

  @override
  String get budgetAppBar => 'Isabelomali Senyanga';

  @override
  String get budgetPremiumLocked => 'Isabelomali sonyaka sonke siyi-premium';

  @override
  String get budgetUpgradePrompt => 'Thuthukisa ukuze uvule';

  @override
  String get noBudgetDefined => 'Asikho isabelomali esimisiwe';

  @override
  String totalEstimated(String amount) {
    return 'Isamba esilinganiselwe: $amount';
  }

  @override
  String get setBudgetButton => 'Setha isabelomali';

  @override
  String get budgetLists => 'Izinhlu';

  @override
  String get budgetValueLabel => 'Inani';

  @override
  String get setBudgetTitle => 'Isabelomali Senyanga';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Zonke';

  @override
  String get filterPending => 'Okusalile';

  @override
  String get filterPurchased => 'Okuthengiwe';

  @override
  String get sortName => 'Igama';

  @override
  String get sortCategory => 'Isigaba';

  @override
  String get sortDate => 'Usuku';

  @override
  String get sortManual => 'Okwenziwa ngesandla';

  @override
  String get addItem => 'Engeza Into';

  @override
  String get itemName => 'Igama lento';

  @override
  String get quantityShort => 'Inani';

  @override
  String get unit => 'Iyunithi';

  @override
  String get category => 'Isigaba';

  @override
  String get estimatedPrice => 'Intengo elinganiselwe';

  @override
  String get addItemPrice => 'Intengo elinganiselwe';

  @override
  String get editItem => 'Hlela Into';

  @override
  String get quantityFull => 'Ubuningi';

  @override
  String get editItemPrice => 'Intengo elinganiselwe';

  @override
  String get addToPantry => 'Engeza ePhanta';

  @override
  String addToPantryPrompt(String name) {
    return 'Engeza \"$name\" ePhanta lakho?';
  }

  @override
  String get yes => 'Yebo';

  @override
  String get productName => 'Igama lomkhiqizo';

  @override
  String get idealQty => 'Ubuningi obufanele';

  @override
  String get currentQty => 'Ubuningi bamanje';

  @override
  String get trackStock => 'Landelela isitoko';

  @override
  String get trackStockActive => 'Ivela eziphakamisweni zokuthenga';

  @override
  String get trackStockInactive => 'Ayikhiqizi isiphakamiso sokuthenga';

  @override
  String get createListDialog => 'Dala Uhlu';

  @override
  String get renameListDialog => 'Qamba Kabusha Uhlu';

  @override
  String get listHistory => 'Umlando Wohlu';

  @override
  String get myLists => 'Izinhlu Zami';

  @override
  String get viewActive => 'Buka Okusebenzayo';

  @override
  String get viewHistory => 'Buka Umlando';

  @override
  String get noArchivedLists => 'Azikho izinhlu ezigciniwe';

  @override
  String get noActiveLists => 'Azikho izinhlu ezisebenzayo';

  @override
  String completedOn(String date) {
    return 'Kuqedelwe $date';
  }

  @override
  String get sharedLabel => 'Kwabelwana ngaso';

  @override
  String get restore => 'Buyisela';

  @override
  String get removeSharedTooltip => 'Susa';

  @override
  String get deleteListTitle => 'Susa uhlu';

  @override
  String deleteListContent(String name) {
    return 'Uqinisekile ukuthi ufuna ukususa \"$name\"? Zonke izinto zizosuswa.';
  }

  @override
  String get removeSharedListTitle => 'Susa uhlu okwabelwana ngalo';

  @override
  String removeSharedListContent(String name) {
    return 'Susa \"$name\" ezinhlelweni zakho? Uhlu lwangempela ngeke luthintwe.';
  }

  @override
  String get createNewList => 'Dala uhlu olusha';

  @override
  String get aiAssistant => 'Umsizi we-AI';

  @override
  String get aiAssistantDescription =>
      'Thola iziphakamiso ezihlakaniphile, izindlela zokupheka namathiphu enzelwe wena ngomsizi wethu we-AI.';

  @override
  String get generalAssistant => 'Umsizi Ojwayelekile';

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
  String get clearHistory => 'Sula Umlando';

  @override
  String get clearHistoryConfirm => 'Sula yonke imiyalezo kulesi seshini?';

  @override
  String get chatHint => 'Bhala umyalezo wakho...';

  @override
  String chatError(String error) {
    return 'Iphutha ekulayisheni ingxoxo: $error';
  }

  @override
  String get listHelp => 'Ngingakusiza kanjani ngohlu lwakho?';

  @override
  String get generalHelp => 'Ngingakusiza kanjani ngokuthenga kwakho namuhla?';

  @override
  String get chatSubtitle =>
      'Cela iziphakamiso zezinto, izindlela zokupheka noma amathiphu okonga.';

  @override
  String get aiError =>
      'Uxolo, kube nephutha ekucubunguleni isicelo sakho. Bheka ukuxhumana kwakho noma uzame futhi kamuva.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Ngena ukuze uvule\nizici ze-premium';

  @override
  String get signInGoogle => 'Ngena nge-Google';

  @override
  String get signInApple => 'Ngena nge-Apple';

  @override
  String get continueAsGuest => 'Qhubeka njengesivakashi';

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
    return 'Iphutha lokungena: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Thuthukisa ukuze uvule';

  @override
  String get itemRemoved => 'Into isusiwe';

  @override
  String get undo => 'Hlehlisa';

  @override
  String get emptyListTitle => 'Uhlu lwakho alunalutho';

  @override
  String get emptyListSubtitle => 'Engeza izinto ukuze uqale';

  @override
  String get noListFoundTitle => 'Azikho izinhlu ezitholakele';

  @override
  String get noListFoundSubtitle => 'Dala uhlu lwakho lokuqala ukuze uqale';

  @override
  String get createFirstList => 'Dala Uhlu Lokuqala';

  @override
  String get listBudgetTitle => 'Isabelomali sohlu';

  @override
  String get budgetAmountLabel => 'Inani lesabelomali';

  @override
  String get removeBudget => 'Susa';

  @override
  String get prefUnlimitedLists => 'Izinhlu ezingenamkhawulo';

  @override
  String get prefSharing => 'Yabelana ngezinhlu';

  @override
  String get prefFullHistory => 'Umlando ogcwele';

  @override
  String get prefExportData => 'Khipha idatha';

  @override
  String get prefCustomThemes => 'Izitimu ezenziwe ngokwezifiso';

  @override
  String get prefMonthlyBudget => 'Isabelomali sonyaka sonke';

  @override
  String get prefAIAssistant => 'Umsizi we-AI wakho siqu';

  @override
  String get prefUnlimitedPantry => 'Iphanta engenamkhawulo';

  @override
  String get prefInteractiveArtifacts => 'Ama-AI Artifact asebenzisanayo';

  @override
  String get themeGreen => 'Okuluhlaza';

  @override
  String get themeBlue => 'Okuluhlaza okwesibhakabhaka';

  @override
  String get themePurple => 'Okunsomi';

  @override
  String get themeRed => 'Okubomvu';

  @override
  String get themeOrange => 'Okusawolintshi';

  @override
  String get themePink => 'Okumpompo';

  @override
  String get themeIndigo => 'I-indigo';

  @override
  String get themeAmber => 'I-amber';

  @override
  String get themeTeal => 'I-teal';

  @override
  String get themeBrown => 'Okunsundu';

  @override
  String get catFruits => 'Izithelo';

  @override
  String get catCleaning => 'Ukuhlanza';

  @override
  String get catBeverages => 'Iziphuzo';

  @override
  String get catBakery => 'Ibhikawozi';

  @override
  String get catOthers => 'Okunye';

  @override
  String get unitPack => 'iphakethe';

  @override
  String get shareSubject => 'Uhlu Lokuthenga';

  @override
  String get monthlyBudgetTitle => 'Isabelomali Senyanga';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Susa uhlu';

  @override
  String get pantryItemRemoved => 'Into isusiwe';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'Izinto ezi-$deficit zidinga ukuthengwa',
      one: 'Into eyi-$deficit idinga ukuthengwa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Isamba senkalishi';

  @override
  String get restockLabel => 'Gcwalisa kabusha';

  @override
  String get advancedFeatures => 'Izici ezithuthukile';

  @override
  String get selectAll => 'Khetha konke';

  @override
  String get deselectAll => 'Susa ukukhetha konke';

  @override
  String get monthlyBudgetAppBar => 'Isabelomali Senyanga';

  @override
  String get budgetEditTitle => 'Isabelomali Senyanga';

  @override
  String get budgetDashboardTitle => 'Ideshibhodi';

  @override
  String get selectListForDashboard => 'Khetha uhlu ukuze ubuke ideshibhodi.';

  @override
  String get spendingAnalysis => 'Ukuhlaziywa Kwemali Esetshenzisiwe';

  @override
  String get noItemsToAnalyze => 'Azikho izinto ohlwini okumele zihlaziywe.';

  @override
  String get markItemsToSeeAnalysis =>
      'Maka izinto njengezithengiwe ukuze ubone ukuhlaziywa.';

  @override
  String get totalSpending => 'Imali Esetshenzisiwe Isiyonke';

  @override
  String get spendingByCategory => 'Imali Esetshenzisiwe Ngesigaba';

  @override
  String get achievements => 'Impumelelo';

  @override
  String get exportPdfExcel => 'Khipha i-PDF/Excel';

  @override
  String get exportPdf => 'Khipha njenge-PDF';

  @override
  String get exportExcel => 'Khipha njenge-Excel';

  @override
  String get organizingAi => 'UKUHLELA NGE-AI...';

  @override
  String get yesLabel => 'Yebo';

  @override
  String get noLabel => 'Cha';

  @override
  String get shareListText => 'Uhlu Lwami Lokuthenga';

  @override
  String get emptyListAddItems =>
      'Uhlu lwakho alunalutho! Engeza izinto kuqala. ℹ️';

  @override
  String get listOrganizedMagic => 'Uhlu luhlelwe ngokuyisimanga ngezigaba! ✨';

  @override
  String get shoppingMode => 'Imodi Yokuthenga';

  @override
  String get smartOrganization => 'Ukuhlela Okuhlakaniphile';

  @override
  String get savings => 'Ukonga';

  @override
  String get shoppingModeHeader => 'IMODI YOKUTHENGA';

  @override
  String get shareAsText => 'Thumela izinto njengombhalo ohleliwe';

  @override
  String get shareRealtime =>
      'Ukuvumelanisa ngesikhathi sangempela nabanye abantu';

  @override
  String get quickRecipe => 'Iresiphi esheshayo';

  @override
  String get quickRecipePrompt =>
      'Phakamisa izindlela zokupheka ngezinto ezisohlwini lwami.';

  @override
  String get economyTips => 'Amathiphu okonga';

  @override
  String get economyTipsPrompt => 'Ngingayonga kanjani imali kulokhu kuthenga?';

  @override
  String get organizeAisles => 'Hlela ngemihlandela';

  @override
  String get organizeAislesPrompt => 'Hlela ngemihlandela yemakethe.';

  @override
  String get recipeSuggestion => 'Isiphakamiso seresiphi';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Kusele amakhredithi angu-$remaining';
  }

  @override
  String get addAllToList => 'Engeza konke ohlwini';

  @override
  String get organizeByAisles => 'Hlela ngemihlandela';

  @override
  String get voiceTranscriptionTooltip => 'Ukuthayipha ngezwi (Mahhala)';

  @override
  String get aiVoiceCommandTooltip => 'Umyalo Wezwi we-AI (Premium)';

  @override
  String get voiceCommandTitle => 'Umyalo Wezwi we-AI';

  @override
  String get voiceCommandContent =>
      'Khuluma ngokwemvelo ukuze uphethe uhlu lwakho!\n\nIzibonelo:\n• \'Engeza isinkwa, ushizi, ne-ham\'\n• \'Susa i-laundry detergent\'\n• \'Shintsha itimu ibe luhlaza okwesibhakabhaka\'\n\nLesi yisici esikhethekile se-Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Buka Amapulani';

  @override
  String get itemsAddedSuccess => 'Izinto zingeziwe ohlwini ngempumelelo!';

  @override
  String get viewList => 'Buka uhlu';

  @override
  String get feedbackTitle => 'Thumela Impendulo';

  @override
  String get feedbackPrompt => 'Yini ongathanda ukuyabelana ngayo?';

  @override
  String get feedbackTypeBug => 'Bika Isiphazamisi';

  @override
  String get feedbackTypeBugHint => 'Okuthile akusebenzi';

  @override
  String get feedbackTypeSuggestion => 'Isiphakamiso';

  @override
  String get feedbackTypeSuggestionHint => 'Umqondo wokuthuthukisa uhlelo';

  @override
  String get feedbackTypeTranslation => 'Inkinga Yokuhumusha';

  @override
  String get feedbackTypeTranslationHint =>
      'Ukuhumusha okungalungile noma okungazwakali';

  @override
  String get feedbackTypeFeature => 'Isicelo Sesici';

  @override
  String get feedbackTypeFeatureHint => 'Isici ongathanda ukusibona';

  @override
  String get feedbackTypeOther => 'Okunye';

  @override
  String get feedbackTypeOtherHint => 'Olunye uhlobo lwempendulo';

  @override
  String get feedbackHint => 'Chaza impendulo yakho ngemininingwane...';

  @override
  String get feedbackSend => 'Thumela Impendulo';

  @override
  String get feedbackSending => 'Iyathumela...';

  @override
  String get feedbackThankYou => 'Ngiyabonga!';

  @override
  String get feedbackThankYouMessage =>
      'Impendulo yakho isitholakele futhi isisiza ukuthuthukisa i-Lista Plus yawo wonke umuntu.';

  @override
  String get feedbackBack => 'Emuva';

  @override
  String feedbackError(String error) {
    return 'Iphutha lokuthumela: $error';
  }

  @override
  String get feedbackRetry => 'Zama futhi';

  @override
  String get feedbackSettingsTitle => 'Thumela Impendulo';

  @override
  String get feedbackSettingsSubtitle =>
      'Bika iziphazamisi, phakamisa izinto zokwenza ngcono, noma ulungise ukuhumusha';

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

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

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
