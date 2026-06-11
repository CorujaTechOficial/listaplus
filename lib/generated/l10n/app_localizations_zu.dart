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
  String get navChat => 'Xoxa';

  @override
  String get navRecipes => 'Izindlela zokupheka';

  @override
  String get navLists => 'Izinhlu';

  @override
  String get navMealPlanner => 'Imenyu';

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
  String get next => 'Olandelayo';

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
  String get profile => 'Iphrofayela';

  @override
  String get exitShoppingMode => 'Phuma kumodi yokuthenga';

  @override
  String get exit => 'Phuma';

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
  String get scanProductTitle => 'Skena Umkhiqizo';

  @override
  String get positionBarcodeCenter => 'Misa ibhakhodi phakathi nendawo';

  @override
  String get product => 'Umkhiqizo';

  @override
  String get settingsAppBar => 'Izilungiselelo';

  @override
  String get language => 'Ulimi';

  @override
  String get languagePortuguese => 'Isi-Portuguese (Brasil)';

  @override
  String get languageEnglish => 'IsiNgisi';

  @override
  String get languageSystem => 'Okujwayelekile kwesistimu';

  @override
  String get chooseLanguage => 'Khetha Ulimi';

  @override
  String get searchLanguage => 'Sesha ulimi...';

  @override
  String get currency => 'Imali';

  @override
  String get chooseCurrency => 'Khetha Imali';

  @override
  String get searchCurrency => 'Sesha uhlobo lwemali...';

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
  String get dynamicColors => 'Imibala enamandla';

  @override
  String get dynamicColorsSubtitle =>
      'Sebenzisa imibala esuselwe kusithombe sangemuva sakho';

  @override
  String get dynamicColorsEnabledWarning =>
      'Khubaza imibala eguqukayo ukuze umbala wetimu usebenze';

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
  String get myAchievements => 'Izimpumelelo Zami';

  @override
  String get itemsPurchased => 'Izinto Ezithengiwe';

  @override
  String get totalSavings => 'Isamba Savings';

  @override
  String get currentStreak => 'Ukulandelana kwamanje';

  @override
  String streakDays(int count) {
    return '$days izinsuku';
  }

  @override
  String get unlockedBadges => 'Amabheji Avuliwe';

  @override
  String get badgeBeginner => 'Osaqalayo';

  @override
  String get badgeOrganized => 'Kuhleliwe';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'I-Super Planner';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased kwezingu-$total izinto';
  }

  @override
  String progressBudget(String amount) {
    return 'Isabelomali: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Inani: $amount';
  }

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
  String get newChat => 'Ingxoxo Entsha';

  @override
  String get noHistory => 'Awukho umlando wengxoxo';

  @override
  String get deleteSession => 'Susa Ingxoxo';

  @override
  String get deleteSessionConfirm =>
      'Uqinisekile ukuthi ufuna ukususa le ngxoxo? Imilayezo izolahleka unomphela.';

  @override
  String get clearHistory => 'Sula Umlando';

  @override
  String get clearHistoryConfirm => 'Sula yonke imiyalezo kulesi seshini?';

  @override
  String get chatHint => 'Bhala umyalezo wakho...';

  @override
  String get chatHintBlocked => 'Vula i-AI ukuze uxoxe';

  @override
  String chatError(String error) {
    return 'Iphutha ekulayisheni ingxoxo: $error';
  }

  @override
  String get aiAssistantTitle => 'Umsizi we-AI';

  @override
  String get closeSheet => 'Vala';

  @override
  String get scanBarcodeTitle => 'Skena ibhakhodi';

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
  String get aiLimitAlmostReached => 'Icishe iphele emilayezweni ye-AI';

  @override
  String get unlockAi => 'Vula i-AI engenamkhawulo';

  @override
  String get aiTeaserFallback =>
      'Bhalisela i-Premium ukuze uvule impendulo egcwele futhi uthole amathiphu e-AI angenamkhawulo okuthenga kwakho...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Izenzo ze-AI ezisele kule nyanga — thuthukisa ngokungenamkhawulo';
  }

  @override
  String get aiUsageExhausted =>
      'Umkhawulo wanyanga zonke we-AI ufinyelelwe. Thuthukela ku-Pro ngokungenamkhawulo →';

  @override
  String get kipiListTitle => 'I-KipiList';

  @override
  String get loginPrompt => 'Ngena ukuze uvule\nizici ze-premium';

  @override
  String get signInGoogle => 'Ngena nge-Google';

  @override
  String get signInApple => 'Ngena nge-Apple';

  @override
  String get continueAsGuest => 'Qhubeka njengesivakashi';

  @override
  String get onboardingWelcomeTitle => 'Siyakwamukela ku-KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Indlela ehlakaniphe kakhulu yokuhlela ukuthenga kwakho futhi wonge imali.';

  @override
  String get onboardingSetupTitle => 'Yenza kube ngokwakho umuzwa wakho';

  @override
  String get onboardingSetupDesc =>
      'Khetha ukuthi ufuna i-KipiList ikubukeke kanjani futhi ikusebenzele.';

  @override
  String get onboardingLoginTitle => 'Londoloza yonke into emafini';

  @override
  String get onboardingLoginDesc =>
      'Idatha yakho ivunyelaniswe kuwo wonke amadivayisi akho';

  @override
  String get onboardingShareTitle => 'Yabelana nalabo obathandayo';

  @override
  String get onboardingShareDesc =>
      'Vumelanisa uhlu nomndeni nabangane ngesikhathi sangempela';

  @override
  String get onboardingPremiumTitle => 'Vula zonke izici';

  @override
  String get onboardingPremiumSubtitle =>
      'Thola okuningi ohlwini lwakho lokuthenga';

  @override
  String get onboardingAnnualBadge => 'Inani Elihle Kakhulu';

  @override
  String get onboardingMonthlyLabel => 'Nyanga zonke';

  @override
  String get onboardingAnnualLabel => 'Ngonyaka';

  @override
  String get onboardingViewAllPlans => 'Buka zonke izinhlelo';

  @override
  String get onboardingSubscribeCta => 'Bhalisa';

  @override
  String get onboardingCancelAnytime =>
      'Khansela noma nini. Akukho ukuzibophezela.';

  @override
  String get onboardingContinueAsGuest => 'Qhubeka njengesivakashi';

  @override
  String get onboardingRestore => 'Buyisela Okuthengiwe';

  @override
  String get onboardingRestoreDesc =>
      'Usuvele unokubhalisile? Thepha lapha ukuze uyibuyisele.';

  @override
  String get onboardingMaybeLater => 'Mhlawumbe ngukuhamba kwesikhathi';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Sawubona $name, hlela ukuthenga kwakho ngendlela efanele.';
  }

  @override
  String get onboardingSlide1Title => 'Uhlu Lokuthenga Okuhlakaniphile';

  @override
  String get onboardingSlide1Body =>
      'Dala futhi wabelane ngohlu ngokushesha. I-Kipi yengeza izinto ngokuzenzakalelayo ngokusekelwe emikhubeni yakho.';

  @override
  String get onboardingSlide2Title => 'Ahlangane noKipi';

  @override
  String get onboardingSlide2Body =>
      'Buza noma yini — dala uhlu, thola izindlela zokupheka, landelela ukudla kwakho, hlela isonto lakho.';

  @override
  String get onboardingSlide3Title => 'I-Pantry & Meal Planning';

  @override
  String get onboardingSlide3Body =>
      'Landelela lokho onakho, hlela ukudla, futhi ukhiqize uhlu lokuthenga ngokuzenzakalelayo.';

  @override
  String get onboardingExit => 'Phuma';

  @override
  String get onboardingPersonalizationTitle => 'Asikwazi';

  @override
  String get onboardingPersonalizationDesc =>
      'Sizosebenzisa lokhu ukuze senze iziphakamiso zakho zibe ngokwakho futhi senze ukuthenga kuhlakaniphe.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Yikuphi ukudla okuthandayo?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'isib. I-pizza, i-sushi, i-lasagna ...';

  @override
  String get onboardingPersonalizationCta => 'Qhubeka';

  @override
  String get onboardingPersonalizationSkip => 'Yeqa okwamanje';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Sitshele ukudla okuthandayo ukuze uqhubeke';

  @override
  String get settingsDefaultScreen => 'Isikrini sasekhaya esizenzakalelayo';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Khetha phakathi kohlu lokuthenga noma ingxoxo ye-AI';

  @override
  String get settingsScreenList => 'Uhlu Lokuthenga';

  @override
  String get settingsScreenChat => 'Ingxoxo ye-AI';

  @override
  String loginError(String error) {
    return 'Iphutha lokungena: $error';
  }

  @override
  String get paywallTitle => 'I-KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Iphutha ekulayisheni okunikezwayo. Zama futhi.';

  @override
  String get paywallPurchaseError =>
      'Ayikwazanga ukuqedela ukuthenga. Zama futhi.';

  @override
  String get paywallRestoreError =>
      'Akukho ukubhalisa okusebenzayo okutholiwe ukuze kubuyiselwe.';

  @override
  String paywallTrialDays(Object days) {
    return '$days IZINSUKU MAHHALA';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS MAHHALA',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS MAHHALA',
      one: '$count MONTH MAHHALA',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Zama mahhala!';

  @override
  String get paywallTrialSubtitle =>
      'Khansela noma nini. Akukhokhiswa namuhla.';

  @override
  String get paywallTrialCta => 'Qala Isivivinyo Samahhala';

  @override
  String get recipeAddToList => 'Engeza ohlwini lokuthenga';

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
  String get noListSelected => 'Alukho uhlu olukhethiwe. Vula uhlu kuqala.';

  @override
  String get paywallFeaturesTitle => 'Konke okudingayo:';

  @override
  String get paywallFeatureDescAssistant =>
      'I-AI ihlela uhlu lwakho ngokuzenzakalelayo';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Dala izinhlu eziningi ozidingayo';

  @override
  String get paywallFeatureDescSharing =>
      'Thenga ndawonye ngesikhathi sangempela';

  @override
  String get paywallFeatureDescPantry => 'Landelela lokho onakho ekhaya';

  @override
  String get paywallFeatureDescBudget => 'Hlala kubhajethi nyanga zonke';

  @override
  String get paywallFeatureUnlimitedLists => 'Uhlu Olungenamkhawulo';

  @override
  String get paywallFeatureSmartAI => 'I-Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Ukulawula Izindleko';

  @override
  String get paywallFeatureSharing => 'Ukwabelana';

  @override
  String get paywallBeforeAfterTitle => 'I-AI Ngaphambi Nangemuva:';

  @override
  String get paywallLabelCommon => 'Okuvamile';

  @override
  String get paywallLabelPro => 'I-KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'irayisi';

  @override
  String get paywallBeforeItem2 => 'insipho';

  @override
  String get paywallBeforeItem3 => 'inyama';

  @override
  String get paywallBeforeItem4 => 'isinkwa';

  @override
  String get paywallAfterItem1 => 'Okusanhlamvu';

  @override
  String get paywallAfterItem2 => 'Ukuhlanza';

  @override
  String get paywallAfterItem3 => 'Inyama';

  @override
  String get paywallAfterItem4 => 'Indawo yokubhaka';

  @override
  String get paywallTestimonialsTitle => 'Okushiwo abasebenzisi bethu:';

  @override
  String get paywallTestimonial1Name => 'U-Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'I-AI ihlela ukuthenga kwami ​​ngemizuzwana. Ngonga amaminithi angu-20 ngohambo lwemakethe ngalunye.';

  @override
  String get paywallTestimonial2Name => 'UCharles M.';

  @override
  String get paywallTestimonial2Text =>
      'Angiphindanga ngakhohlwa into yohlu. Ingxoxo ye-AI iyamangalisa!';

  @override
  String get paywallSocialProof => '+2,400 imindeni eyisebenzisayo';

  @override
  String get paywallCtaUnlock => 'Vula i-PRO';

  @override
  String get paywallBestValue => 'INANI ELIHLE KAHLE';

  @override
  String get paywallMostPopular => 'OKUDUMILE KAKHULU';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Inkokhelo evikelekile';

  @override
  String get paywallSelectPlan => 'Khetha uhlelo lwakho:';

  @override
  String paywallSavePercent(Object percent) {
    return 'LONDOLOZA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Kuphela $price/ngenyanga';
  }

  @override
  String get paywallPackageAnnual => 'Uhlelo Lonyaka';

  @override
  String get paywallPackageMonthly => 'Uhlelo Lwenyanga';

  @override
  String get paywallPackageLifetime => 'Ukufinyelela Kwaso sonke isikhathi';

  @override
  String get paywallCancelAnytime =>
      'Khansela noma nini. Akukho ukuzibophezela.';

  @override
  String paywallTrialInCard(int days) {
    return 'Izinsuku zokuqala ezingu-$days MAHHALA';
  }

  @override
  String get paywallSecuredByStore =>
      'Ivikelwe i-Google Play · Khansela noma nini';

  @override
  String get paywallPolicy => 'Inqubomgomo yobumfihlo';

  @override
  String get paywallTerms => 'Imigomo Yokusebenzisa';

  @override
  String get paywallRestore => 'Buyisela';

  @override
  String get paywallHeroHeadline => 'I-Kipi AI njalo eceleni kwakho';

  @override
  String get paywallHeroSubtitle =>
      'Engeza izinto, hlela uhlu futhi wonge isikhathi nge-AI ephaketheni lakho';

  @override
  String get paywallBenefit1Desc =>
      'Ingeza, ihlele futhi iphakamise izinto 24/7';

  @override
  String get paywallBenefit2Desc => 'Awukho umkhawulo wohlu olu-3';

  @override
  String get paywallBenefit3Desc =>
      'Ukulandelela izindleko kanye nezinhlu zemindeni';

  @override
  String get paywallPackageMonthlyDesc => 'Ukuvumelana nezimo okugcwele';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Qala mahhala — $days izinsuku';
  }

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
      'Khuluma ngokwemvelo ukuze uphethe uhlu lwakho!\n\nIzibonelo:\n• \'Engeza isinkwa, ushizi, ne-ham\'\n• \'Susa i-laundry detergent\'\n• \'Shintsha itimu ibe luhlaza okwesibhakabhaka\'\n\nLesi yisici esikhethekile se-KipiList Premium.';

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
      'Impendulo yakho isitholakele futhi isisiza ukuthuthukisa i-KipiList yawo wonke umuntu.';

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
  String get aiEnergy => 'I-AI Amandla';

  @override
  String get searchInConversation => 'Sesha engxoxweni...';

  @override
  String get noMessagesFound => 'Ayikho imilayezo etholiwe';

  @override
  String get suggestedQuestions => 'Imibuzo ephakanyisiwe:';

  @override
  String get shoppingAssistant => 'Umsizi wokuthenga';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased kokungu-$total okuthengiwe';
  }

  @override
  String get estimatedCost => 'Kulinganiselwe';

  @override
  String get viewItems => 'Buka izinto';

  @override
  String get noItemsInList => 'Azikho izinto ohlwini';

  @override
  String get longHistoryWarning =>
      'Umlando omude: umsizi ugxile emilayezweni yakamuva ngokusebenza okungcono.';

  @override
  String get listening => 'Ilalele...';

  @override
  String get addDirectToList => 'Engeza ngokuqondile ohlwini';

  @override
  String get unlockFullResponse => 'Vula Ukusabela Okugcwele';

  @override
  String get switchList => 'Shintsha uhlu';

  @override
  String get marketMode => 'Imodi yeMakethe';

  @override
  String get backToChat => 'Buyela ku-Chat';

  @override
  String get finishShopping => 'Qeda Ukuthenga';

  @override
  String get welcomeAiAssistant => 'Siyakwamukela kumsizi we-AI';

  @override
  String get createListToStartAi =>
      'Dala uhlu lokuthenga ukuze uqale ukusebenzisa ingxoxo ehlakaniphile.';

  @override
  String get howCanIHelp => 'Ngingasiza kanjani?';

  @override
  String get chatSubtitleShort => 'Buza ngezintengo, zokupheka, inhlangano...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total okuthengiwe';
  }

  @override
  String get quickReplies => 'Izimpendulo ezisheshayo:';

  @override
  String get voiceProFeature =>
      'Imiyalo yezwi ethuthukisiwe iPro. Inika amandla ukubizela okuyisisekelo...';

  @override
  String get viewPro => 'Buka i-Pro';

  @override
  String get errorLoadingChat =>
      'Eshu! Kukhona okungahambanga kahle ekulayisheni ingxoxo.';

  @override
  String get errorLoadingChatSubtitle =>
      'Hlola ukuxhumeka kwakho noma uzame futhi emuva kwesikhathi.';

  @override
  String get errorOscillation =>
      'Lokhu kungenzeka ngenxa yokuzulazula kwenethiwekhi noma ukungatholakali kwesikhashana. Sicela uzame futhi.';

  @override
  String get activeListening => 'Ukulalela Okukhuthele';

  @override
  String get whatToDoWithItem => 'Ungathanda ukwenzani ngale nto?';

  @override
  String get viewDetails => 'Buka Imininingwane';

  @override
  String get openMenu => 'Vula imenyu';

  @override
  String get viewRecipe => 'Buka Iresiphi';

  @override
  String get recipeCreated => 'Iresiphi idaliwe!';

  @override
  String get editRecipe => 'Hlela';

  @override
  String get deleteRecipe => 'Susa';

  @override
  String get deleteRecipeConfirm => 'Susa le recipe?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Uqinisekile ukuthi ufuna ukususa okuthi \"$recipeName\"? Lesi senzo asikwazi ukuhlehliswa.';
  }

  @override
  String get ingredients => 'Izithako';

  @override
  String get instructions => 'Iziyalezo';

  @override
  String get prepTime => 'Isikhathi sokulungiselela';

  @override
  String get recipeSaved => 'Iresiphi ilondoloziwe!';

  @override
  String get noRecipesSaved => 'Awekho amaresiphi alondoloziwe';

  @override
  String get noRecipesSavedHint =>
      'Dala iresiphi yakho yokuqala yangokwezifiso ngokuthepha inkinobho engezansi.';

  @override
  String get myRecipes => 'Amaresiphi Ami';

  @override
  String get newRecipe => 'Iresiphi entsha';

  @override
  String get loadingRecipes => 'Ilayisha zokupheka zakho...';

  @override
  String get errorLoadingRecipes => 'Iphutha ekulayisheni amarisiphu';

  @override
  String get addIngredient => 'Engeza isithako';

  @override
  String get saveRecipe => 'Londoloza';

  @override
  String get recipeName => 'Igama leresiphi';

  @override
  String get shortDescription => 'Incazelo emfushane';

  @override
  String get prepTimeMinutes => 'Isikhathi sokulungiselela (amaminithi)';

  @override
  String get instructionsHint =>
      'Thayipha isinyathelo esisodwa ngomugqa ngamunye...';

  @override
  String get addPhoto => 'Engeza isithombe';

  @override
  String get imageUrlPlaceholder => 'Noma namathisela i-URL yesithombe';

  @override
  String get tags => 'Omaka';

  @override
  String get recipeTags => 'Amathegi eresiphi';

  @override
  String get suggestedTags => 'Kuphakanyisiwe';

  @override
  String get searchRecipes => 'Sesha amaresiphi...';

  @override
  String get filterByTag => 'Hlunga ngomaki';

  @override
  String get allTags => 'Konke';

  @override
  String get recipeDeleted => 'Iresiphi isusiwe';

  @override
  String get saveChanges => 'Londoloza izinguquko';

  @override
  String get editRecipeTitle => 'Hlela Iresiphi';

  @override
  String get newRecipeTitle => 'Iresiphi entsha';

  @override
  String get requiredField => 'Kudingeka';

  @override
  String get chooseImageSource => 'Khetha umthombo wesithombe';

  @override
  String get gallery => 'Igalari';

  @override
  String get enterUrl => 'Faka i-URL';

  @override
  String get recipeImage => 'Isithombe seresiphi';

  @override
  String get removeImage => 'Susa isithombe';

  @override
  String get mealPlannerTitle => 'Umhleli Wesidlo';

  @override
  String get mealPlannerViewMonthly => 'Ukubuka kwanyanga zonke';

  @override
  String get mealPlannerViewWeekly => 'Ukubuka kwamasonto onke';

  @override
  String get mealPlannerNoMeals => 'Akukho ukudla okuhleliwe';

  @override
  String get mealPlannerNoMealsHint => 'Thepha usuku ukuze wengeze ukudla';

  @override
  String get mealPlannerLoading => 'Ilayisha uhlelo lokudla...';

  @override
  String get mealPlannerError => 'Iphutha ekulayisheni uhlelo lokudla';

  @override
  String get mealPlannerAddMeal => 'Engeza Ukudla';

  @override
  String get mealPlannerEditMeal => 'Hlela Ukudla';

  @override
  String get mealPlannerDeleteMeal => 'Susa ukudla';

  @override
  String get mealPlannerMealDeleted => 'Ukudla kususiwe';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ukuphakelwa',
      one: '$count ukunikeza',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Izinkonzo';

  @override
  String get mealPlannerNoteLabel => 'Inothi (uyazikhethela)';

  @override
  String get mealPlannerSelectRecipe => 'Khetha iresiphi';

  @override
  String get mealPlannerSearchRecipes => 'Sesha amaresiphi...';

  @override
  String get mealPlannerNoRecipesFound => 'Awekho amaresiphi atholiwe';

  @override
  String get mealPlannerNoRecipesHint =>
      'Dala izindlela zokupheka kuthebhu yamaresiphi kuqala';

  @override
  String get mealPlannerSave => 'Engeza ohlelweni';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count kokungu-$total kokudla okuhleliwe';
  }

  @override
  String get mealPlannerGenerateList => 'Khiqiza uhlu lokuthenga';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Engeza zonke izithako zokudla okuhleliwe kuleli sonto ohlwini lwakho lokuthenga?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count izithako zengezwe ohlwini lwakho!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Azikho izithako ezizongezwa. Hlela ukudla okuthile ngezindlela zokupheka kuqala.';

  @override
  String get mealPlannerGenerateListNoList => 'Dala uhlu lokuthenga kuqala.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Ukudla kwasekuseni';

  @override
  String get mealPlannerMealTypeLunch => 'Isidlo sasemini';

  @override
  String get mealPlannerMealTypeDinner => 'Isidlo sakusihlwa';

  @override
  String get mealPlannerMealTypeSnack => 'Ukudla okulula';

  @override
  String get mealPlannerDateLabel => 'Usuku';

  @override
  String get mealPlannerWeekEmpty => 'Akukho okuhlelelwe kuleli sonto';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Thepha noma yiluphi usuku ukuze uqale ukuhlela ukudla kwakho!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes iminithi';
  }

  @override
  String get inviteToList => 'Mema ohlwini';

  @override
  String get shareApp => 'Yabelana ngohlelo lokusebenza';

  @override
  String get shareAppDescription =>
      'Mema abangani ukuthi basebenzise i-KipiList';

  @override
  String shareReferralText(String url) {
    return 'Ngisebenzisa i-KipiList ukuhlela ukuthenga kwami! Landa ngesixhumanisi sami futhi sobabili sithole izinsuku ezingu-7 ze-Premium mahhala: $url';
  }

  @override
  String get shareReferralSubject =>
      'Thola izinsuku ezingu-7 ze-KipiList Premium!';

  @override
  String get gestureHint => 'Bamba ukuze ukhethe • Swayipha ukuze ususe';

  @override
  String get catalogTitle => 'Ikhathalogi';

  @override
  String get catalogMyFrequents => 'Izikhathi Zami';

  @override
  String get catalogSearchGlobal => 'Sesha noma yimuphi umkhiqizo...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Sesha kokuthi $category...';
  }

  @override
  String get catalogSortPopular => 'Okudume kakhulu';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Abesizwe';

  @override
  String get catalogRareSection => 'okungajwayelekile ezweni lakini';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Engeza $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Umkhiqizo awutholakali, thayipha igama';

  @override
  String get catalogBrowse => 'Phequlula Ikhathalogi';

  @override
  String get offlineBanner => 'Awuxhunyiwe ku-inthanethi';

  @override
  String get consentTitle => 'Ubumfihlo Nezibalo';

  @override
  String get consentBody =>
      'I-KipiList isebenzisa i-Firebase Analytics ukuze ithuthukise ulwazi lwakho. Idatha yakho icutshungulwa ngokuya ngeNqubomgomo yethu Yobumfihlo.';

  @override
  String get consentAccept => 'Yamukela';

  @override
  String get consentDecline => 'Cha ngiyabonga';

  @override
  String get mealPlannerPantryAllAvailable => 'Zonke izithako ezitholakalayo';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 ayikho';
  }

  @override
  String get expirationDate => 'Usuku lokuphelelwa isikhathi';

  @override
  String get notInformed => 'Akusethiwe';

  @override
  String get skip => 'Yeqa';

  @override
  String get onboardingAiTitle => 'Xoxa noKipi';

  @override
  String get onboardingAiGreeting =>
      'Sawubona! NginguKipi, umsizi wakho womuntu siqu wokuthenga! 🛒';

  @override
  String get onboardingAiAskName => 'Ubani igama lakho?';

  @override
  String get onboardingAiNameHint => 'Thayipha igama lakho...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Ngiyajabula ukukwazi, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Yikuphi ukudla okuthandayo?';

  @override
  String get onboardingAiFoodHint => 'isib. I-pizza, i-sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Izinqumo ezinhle! Nakhu engingakwengeza ohlwini lwakho:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ingabe lokhu kubukeka kukuhle? Zama ukuthayipha enye into!';

  @override
  String get onboardingAiReady =>
      'Kuhle! Usukulungele ukuqala. Masimise i-akhawunti yakho!';

  @override
  String get onboardingAiContinue => 'Qhubeka →';

  @override
  String get connectionError => 'Iphutha Lokuxhuma';

  @override
  String connectionErrorDesc(String error) {
    return 'Ayikwazanga ukuxhuma kuseva. Hlola i-inthanethi yakho.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Iphutha ekulayisheni uhlu';

  @override
  String get noListsFound => 'Alukho uhlu olutholiwe';

  @override
  String get backToToday => 'Emuva namuhla';

  @override
  String get quickSuggestions => 'Iziphakamiso ezisheshayo';

  @override
  String get aiEnergyLow => 'Amandla e-AI aphansi';

  @override
  String get aiUnlockUnlimited => 'Vula i-AI engenamkhawulo';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 namuhla';
  }

  @override
  String get aiSubscribeUnlimited => 'Bhalisela i-AI engenamkhawulo';

  @override
  String get unlockWithAd => 'Vula ngesikhangiso';

  @override
  String get conversationHistoryTitle => 'Umlando wengxoxo';

  @override
  String get noConversationsFound => 'Azikho izingxoxo ezitholiwe';

  @override
  String get errorLoadingHistory => 'Iphutha ekulayisheni umlando';

  @override
  String get deleteConversationTitle => 'Susa Ingxoxo?';

  @override
  String get deleteConversationConfirm => 'Lesi senzo asikwazi ukuhlehliswa.';

  @override
  String get deleteConversation => 'Susa';

  @override
  String get subscription => 'Ukubhalisa';

  @override
  String get kipiListProActive => 'I-KipiList Pro Iyasebenza';

  @override
  String get unlockPremiumTitle => 'Vula uhlu olungenamkhawulo, i-AI nokuningi';

  @override
  String get loadingSubscription => 'Ilayisha ukubhalisa...';

  @override
  String get errorLoadingSubscription => 'Iphutha ekulayisheni ukubhalisa';

  @override
  String get profileSection => 'Iphrofayela';

  @override
  String get myProfile => 'Iphrofayela Yami';

  @override
  String get profileSubtitle => 'Izinketho zomuntu siqu zomsizi we-AI';

  @override
  String get customizeAiAssistant => 'Enza ngendlela oyifisayo umsizi we-AI';

  @override
  String get assistantHistory => 'Umlando womsizi';

  @override
  String get assistantHistorySubtitle => 'Buka umlando wakho wengxoxo';

  @override
  String get manageCategories => 'Phatha Izigaba';

  @override
  String get manageCategoriesSubtitle => 'Phatha izigaba zezinto';

  @override
  String get customizeAssistant => 'Enza ngendlela oyifisayo';

  @override
  String get assistantName => 'Igama lomsizi';

  @override
  String get chooseIcon => 'Khetha isithonjana';

  @override
  String get profileSaved => 'Iphrofayela ilondolozwe ngempumelelo!';

  @override
  String get errorSavingProfile => 'Iphutha ekulondolozeni: null';

  @override
  String get userProfile => 'Iphrofayela yomsebenzisi';

  @override
  String get profileDescription =>
      'Sitshele okuncamelayo komuntu siqu ukuze umsizi we-AI akwazi ukuphakamisa izinto eziqondene nawe nezindlela zokupheka.';

  @override
  String get preferredMarket => 'Imakethe Ethandwayo';

  @override
  String get preferredMarketHint => 'Isb.: Isuphamakethe X';

  @override
  String get dietaryRestrictions => 'Imikhawulo yokudla';

  @override
  String get dietaryRestrictionsHint =>
      'Isib.: i-vegan, imifino, i-gluten-free';

  @override
  String get marketsToAvoid => 'Izimakethe Okufanele Uzigweme';

  @override
  String get marketsToAvoidHint => 'Isb.: Imakethe Y, Imakethe Z';

  @override
  String get observations => 'Amanothi';

  @override
  String get observationsHint => 'Okunye okuncanyelwayo komsizi';

  @override
  String get saveProfile => 'Londoloza Iphrofayela';

  @override
  String get everythingReady => 'Konke sekumi ngomumo!';

  @override
  String get youCompletedList => 'Uqedele uhlu!';

  @override
  String get selectCheaperAlternative =>
      'Khetha omunye umkhiqizo oshibhile ukuze ukwandise izindleko.';

  @override
  String get suggestedItems => 'Izinto eziphakanyisiwe';

  @override
  String get swapped => 'Kushintshiwe';

  @override
  String get swap => 'Shintsha';

  @override
  String get chooseThemeColor => 'Khetha Umbala Wetimu';

  @override
  String get manageCategoriesTitle => 'Phatha Izigaba';

  @override
  String get categoryLimitReached =>
      'Umkhawulo wezigaba eziyi-10 kunguqulo yamahhala. Thuthukela ku-Pro!';

  @override
  String get deleteCategoryTitle => 'Susa Isigaba';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Izinto ezisesigabeni \"$category\" zizothuthelwa kokuthi \"Ezinye\".\nQhubeka?';
  }

  @override
  String get deleteCategory => 'Susa';

  @override
  String get newCategoryDialog => 'Isigaba esisha';

  @override
  String get editCategoryDialog => 'Hlela isigaba';

  @override
  String get categoryName => 'Igama lesigaba';

  @override
  String get categoryNameHint => 'Isib.: Inyama';

  @override
  String get categoryColorLabel => 'Umbala';

  @override
  String get categoryIconLabel => 'Isithonjana';

  @override
  String itemAddedSnack(String name) {
    return '$name yengeziwe';
  }

  @override
  String get kipiQuickBarHint => 'Yini okudingeka uyithenge?';

  @override
  String replaceItem(String item) {
    return 'Faka esikhundleni $item';
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
      'Ungalokothi ukhohlwe into yegrosa futhi';

  @override
  String get onboardingGoalSaveMoney => 'Eqela ngaphezulu';

  @override
  String get onboardingGoalNeverForget => 'Ungalokothi ukhohlwe izinto';

  @override
  String get onboardingGoalFaster => 'Thenga ngokushesha';

  @override
  String get onboardingGoalFamily => 'Hlela ukuthenga komndeni';

  @override
  String get onboardingGoalRecipes => 'Zitholele izindlela zokupheka';

  @override
  String get onboardingGoalPantry => 'Landelela i-pantry';

  @override
  String get onboardingCommitmentsTitle => 'Yini ebalulekile kuwe?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Khetha izinhloso zakho ukuze wenze i-KipiList ibe ngeyakho';

  @override
  String get onboardingCommitmentsCta => 'Asambe!';

  @override
  String get onboardingPersonalizationNameLabel => 'Igama lakho';

  @override
  String get onboardingPersonalizationNameHint => 'Faka igama lakho';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Uthengelani?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Uthengela bani?';

  @override
  String get onboardingCategoryGrocery => 'Igrosa';

  @override
  String get onboardingCategoryPharmacy => 'Ikhemisi';

  @override
  String get onboardingCategoryRecipes => 'Amaresiphi';

  @override
  String get onboardingCategoryHome => 'Ikhaya';

  @override
  String get onboardingCategoryPet => 'Isilwane esifuywayo';

  @override
  String get onboardingGroupSolo => 'Mina nje';

  @override
  String get onboardingGroupCouple => 'Umbhangqwana';

  @override
  String get onboardingGroupFamily => 'Umndeni';

  @override
  String get onboardingLoadingTitle => 'Ilungiselela okwenzayo...';

  @override
  String get onboardingLoadingStep1 => 'Ihlaziya okuncamelayo...';

  @override
  String get onboardingLoadingStep2 => 'Isetha umsizi we-AI...';

  @override
  String get onboardingLoadingStep3 => 'Cishe usulungile...';

  @override
  String get onboardingLoadingStat1Label => 'Izinto ezifakwe kukhathalogi';

  @override
  String get onboardingLoadingStat2Label => 'Abasebenzisi basizile';

  @override
  String get onboardingLoadingStat3Label => 'Amaminithi alondoloziwe';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, yonga kulo lonke uhambo!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ungalokothi ukhohlwe into!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, thenga phakathi nesikhathi!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, hlela ukuthenga komndeni!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, thola izindlela zokupheka ezintsha!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, landelela kahle i-pantry yakho!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Yonga kulo lonke uhambo!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Ungalokothi ukhohlwe into!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Thenga phakathi nesikhathi!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Hlela ukuthenga komndeni!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Zitholele izindlela ezintsha zokupheka!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Landelela i-pantry yakho kahle!';

  @override
  String paywallPricePerDay(String price) {
    return 'Kuphela $price/ngosuku — ngaphansi kwekhofi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Yeqa okwamanje';

  @override
  String get paywallTestimonial =>
      'I-AI ihlela ukuthenga kwami ​​ngemizuzwana. Ngilondoloza amaminithi angu-20 ngohambo ngalunye.';

  @override
  String get paywallTestimonialAuthor => 'U-Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Khansela noma nini · Akukhokhiswa kuze kuphele isivivinyo sakho';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Sawubona $name! Yini i-$category oyidingayo?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Yini $category oyidingayo?';
  }

  @override
  String get onboardingAiDemoYes => 'Yebo!';

  @override
  String get onboardingAiDemoReaction => 'Kuhle!';

  @override
  String get onboardingAiDemoChange => 'Shintsha into';

  @override
  String get onboardingAiDemoOffer => 'Zama ukuthayipha enye into!';

  @override
  String get onboardingAiDemoContinue => 'Qhubeka';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Uhlu lwakho lokuthenga, manje nge-AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Bona ukuthi i-Kipi ilwakha kanjani uhlu lwakho olugcwele ngemizuzwana';

  @override
  String get onboardingAiDemoSlideCta => 'Ngiyayifuna lento! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Ngiphathe izoso 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Ilungile! Nakhu konke okudingayo:';

  @override
  String get onboardingAiDemoSlideDone => 'Qedela uhlu ngemizuzwana ✨';

  @override
  String get onboardingPainTitle => 'Yini ekucasula kakhulu?';

  @override
  String get onboardingPainSubtitle => 'Thembeka — sizolungisa ngayinye';

  @override
  String get onboardingPainCta => 'Yebo, ngilungisele lokhu →';

  @override
  String get onboardingPainForget => 'Ngikhohlwa izinto zasesitolo';

  @override
  String get onboardingPainFamily => 'Umndeni wami awukaze ulubone uhlu';

  @override
  String get onboardingPainOverspend => 'Ngihlala ngibheka isabelomali';

  @override
  String get onboardingPainRepeat => 'Uhambo olulodwa alwanele';

  @override
  String get aiWelcomeContent =>
      'Sawubona! 👋 Ngingu-**Kipi**, umsizi wakho wokuthenga kanye neresiphi!\n\nNgilapha ukuze ngikusize:\n🛒 **Hlela ** ukuthenga kwakho ngezigaba ngokuzenzakalelayo\n💰 **Landela** ibhajethi yakho futhi ukunikeze amathiphu okonga imali\n🍲 **Phakamisa** izindlela zokupheka ezimnandi ngalokho osuvele unakho\n\nNgingakusiza ngani namuhla? Ungaqala ngokudala uhlu lwakho lokuqala!';

  @override
  String get aiWelcomeSuggestCreateList => 'Dala uhlu lwami lokuqala';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ngisize ngidale uhlu lwami lokuqala lokuthenga';

  @override
  String get aiWelcomeSuggestSave => 'Indlela yokulondoloza imali?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, ungangisiza kanjani ukuthi ngilondoloze imali ngokuthenga?';

  @override
  String get suggestionMilk => 'Ubisi';

  @override
  String get suggestionBread => 'Isinkwa';

  @override
  String get suggestionEggs => 'Amaqanda';

  @override
  String get suggestionCoffee => 'Ikhofi';

  @override
  String get suggestionRice => 'Ilayisi';

  @override
  String get suggestionFruits => 'Izithelo';
}
