// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'Գնումների ցուցակ';

  @override
  String get lists => 'Ցուցակներ';

  @override
  String get pantry => 'Մառան';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get save => 'Պահպանել';

  @override
  String get create => 'Ստեղծել';

  @override
  String get add => 'Ավելացնել';

  @override
  String get remove => 'Հեռացնել';

  @override
  String get delete => 'Ջնջել';

  @override
  String get edit => 'Խմբագրել';

  @override
  String get copy => 'Պատճենել';

  @override
  String get retry => 'Կրկին փորձել';

  @override
  String get regenerate => 'Վերականգնել';

  @override
  String get copiedToClipboard => 'Պատճենվել է սեղմատախտակին';

  @override
  String get confirm => 'Հաստատել';

  @override
  String get close => 'Փակել';

  @override
  String get import => 'Ներմուծել';

  @override
  String get rename => 'Վերանվանել';

  @override
  String get upgrade => 'Թարմացնել';

  @override
  String get clear => 'Մաքրել';

  @override
  String error(String message) {
    return 'Սխալ՝ $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Սխալ՝ $message';
  }

  @override
  String get purchaseError => 'Գնման մշակման սխալ։ Կրկին փորձեք։';

  @override
  String get restoreError => 'Գնումների վերականգնման սխալ։ Կրկին փորձեք։';

  @override
  String get loading => 'Բեռնվում է...';

  @override
  String get fieldRequired => 'Պարտադիր դաշտ';

  @override
  String get addedFeedback => 'Ավելացված է!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ընտրված',
      one: '$count ընտրված',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Մոտավոր';

  @override
  String get alreadyPurchased => 'Արդեն գնված';

  @override
  String get clearList => 'Մաքրել ցուցակը';

  @override
  String get clearPurchased => 'Մաքրել գնվածները';

  @override
  String get share => 'Կիսվել';

  @override
  String get shareViaCode => 'Կիսվել կոդով';

  @override
  String get importViaCode => 'Ներմուծել կոդով';

  @override
  String get listAssistant => 'Ցուցակի օգնական';

  @override
  String get globalAssistant => 'Ընդհանուր օգնական';

  @override
  String get becomePremium => 'Դարձեք Premium';

  @override
  String get manageSubscription => 'Կառավարել բաժանորդագրությունը';

  @override
  String get completePurchase => 'Ավարտել գնումը';

  @override
  String get confirmClearList => 'Հեռացնել բոլոր կետերը?';

  @override
  String get shareListTitle => 'Կիսվել ցուցակով';

  @override
  String get shareThisCode => 'Կիսվել այս կոդով՝';

  @override
  String get validForLimitedTime => 'Վավեր է սահմանափակ ժամանակով';

  @override
  String get importListTitle => 'Ներմուծել ցուցակ';

  @override
  String get enterCodeHint => 'Մուտքագրեք կոդը';

  @override
  String get confirmArchiveTitle => 'Ավարտել Գնումը';

  @override
  String get confirmArchiveContent =>
      'Ավարտել այս գնումը և արխիվացնել ցուցակը?';

  @override
  String get complete => 'Ավարտել';

  @override
  String get listArchived => 'Ցուցակը հաջողությամբ արխիվացվեց!';

  @override
  String listAdded(String listName) {
    return '$listName ավելացված է!';
  }

  @override
  String get buy => 'Գնել';

  @override
  String get unmark => 'Հանել նշումը';

  @override
  String confirmDeleteItems(int count) {
    return 'Հեռացնել $count կետ(եր)?';
  }

  @override
  String get confirmDeleteTitle => 'Հաստատել';

  @override
  String confirmContent(int count) {
    return 'Հեռացնել $count կետ(եր)?';
  }

  @override
  String get archiveList => 'Արխիվացնել ցուցակը';

  @override
  String get pantryAppBar => 'Մառան';

  @override
  String get generateShoppingList => 'Ստեղծել գնումների ցուցակ';

  @override
  String get pantryEmpty => 'Դատարկ մառան';

  @override
  String get pantryEmptySubtitle =>
      'Ավելացրեք այն ապրանքները, որոնք ցանկանում եք պահել տանը';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit կետ(եր) պետք է գնվեն';
  }

  @override
  String get noItemsToBuy => 'Գնման կարիք չունեցող կետեր չկան';

  @override
  String get newPantryList => 'Մառանից գնումներ';

  @override
  String get newListTitle => 'Նոր Գնումների Ցուցակ';

  @override
  String itemsWillBeAdded(int count) {
    return '$count կետ(եր) կավելացվեն';
  }

  @override
  String get listNameLabel => 'Ցուցակի անուն';

  @override
  String listCreated(String name, int count) {
    return '«$name» ցուցակը ստեղծվել է $count կետով';
  }

  @override
  String get noTracking => 'Առանց հետևելու';

  @override
  String get markAsPurchased => 'Նշել որպես գնված';

  @override
  String editPantryItem(String name) {
    return 'Խմբագրել $name';
  }

  @override
  String get idealQuantity => 'Իդեալական քանակ';

  @override
  String get currentQuantity => 'Ընթացիկ քանակ';

  @override
  String get consumed => 'Սպառված';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name-ը համալրվել է $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Հեռացնել «$name»-ը մառանից?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Խմբագրել $name';
  }

  @override
  String get settingsAppBar => 'Կարգավորումներ';

  @override
  String get language => 'Լեզու';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Համակարգի լռելյայն';

  @override
  String get chooseLanguage => 'Ընտրել լեզուն';

  @override
  String get searchLanguage => 'Փնտրել լեզուն...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

  @override
  String get appearance => 'Արտաքին տեսք';

  @override
  String get light => 'Բաց';

  @override
  String get system => 'Համակարգ';

  @override
  String get dark => 'Մուգ';

  @override
  String get themeColor => 'Թեմայի գույն';

  @override
  String get dynamicColors => 'Դինամիկ գույներ';

  @override
  String get dynamicColorsSubtitle => 'Օգտագործել գույներ՝ հիմնված պաստառի վրա';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Ֆինանսներ';

  @override
  String get monthlyBudgetNav => 'Ամսական բյուջե';

  @override
  String get budgetSubtitle => 'Հետևեք ձեր ամսական ծախսերին';

  @override
  String get data => 'Տվյալներ';

  @override
  String get backupNav => 'Պահուստավորում';

  @override
  String get backupSubtitle => 'Արտահանել կամ ներմուծել ձեր տվյալները';

  @override
  String get about => 'Մեր մասին';

  @override
  String get version => 'Տարբերակ';

  @override
  String get privacy => 'Գաղտնիություն';

  @override
  String get termsOfUse => 'Օգտագործման պայմաններ';

  @override
  String get backupTitle => 'Պահուստավորում';

  @override
  String get backupPremiumDescription =>
      'Պահուստավորումը և արտահանումը պրեմիում հնարավորություն է';

  @override
  String get exportData => 'Արտահանել տվյալները';

  @override
  String get exportDataSubtitle => 'Պահպանել բոլոր ցուցակները որպես JSON';

  @override
  String get importData => 'Ներմուծել տվյալները';

  @override
  String get importDataSubtitle => 'Վերականգնել ցուցակները JSON-ից';

  @override
  String get importJsonTitle => 'Ներմուծել JSON';

  @override
  String get importJsonHint => 'Տեղադրեք պահուստային JSON-ն այստեղ...';

  @override
  String get backupExported => 'Պահուստավորումն արտահանված է!';

  @override
  String get budgetAppBar => 'Ամսական Բյուջե';

  @override
  String get budgetPremiumLocked => 'Համընդհանուր ամսական բյուջեն պրեմիում է';

  @override
  String get budgetUpgradePrompt => 'Թարմացրեք բացելու համար';

  @override
  String get noBudgetDefined => 'Բյուջե սահմանված չէ';

  @override
  String totalEstimated(String amount) {
    return 'Ընդհանուր մոտավոր՝ $amount';
  }

  @override
  String get setBudgetButton => 'Սահմանել բյուջե';

  @override
  String get budgetLists => 'Ցուցակներ';

  @override
  String get budgetValueLabel => 'Գումար';

  @override
  String get setBudgetTitle => 'Ամսական Բյուջե';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Բոլորը';

  @override
  String get filterPending => 'Սպասող';

  @override
  String get filterPurchased => 'Գնված';

  @override
  String get sortName => 'Անուն';

  @override
  String get sortCategory => 'Կատեգորիա';

  @override
  String get sortDate => 'Ամսաթիվ';

  @override
  String get sortManual => 'Ձեռքով';

  @override
  String get addItem => 'Ավելացնել Կետ';

  @override
  String get itemName => 'Կետի անուն';

  @override
  String get quantityShort => 'Քանակ';

  @override
  String get unit => 'Միավոր';

  @override
  String get category => 'Կատեգորիա';

  @override
  String get estimatedPrice => 'Մոտավոր գին';

  @override
  String get addItemPrice => 'Մոտավոր գին';

  @override
  String get editItem => 'Խմբագրել Կետը';

  @override
  String get quantityFull => 'Քանակ';

  @override
  String get editItemPrice => 'Մոտավոր գին';

  @override
  String get addToPantry => 'Ավելացնել Մառանում';

  @override
  String addToPantryPrompt(String name) {
    return 'Ավելացնել «$name»-ը Ձեր մառանում?';
  }

  @override
  String get yes => 'Այո';

  @override
  String get productName => 'Ապրանքի անուն';

  @override
  String get idealQty => 'Իդեալական քանակ';

  @override
  String get currentQty => 'Ընթացիկ քանակ';

  @override
  String get trackStock => 'Հետևել պաշարին';

  @override
  String get trackStockActive => 'Հայտնվում է գնման առաջարկներում';

  @override
  String get trackStockInactive => 'Գնման առաջարկ չի ստեղծում';

  @override
  String get createListDialog => 'Ստեղծել Ցուցակ';

  @override
  String get renameListDialog => 'Վերանվանել Ցուցակը';

  @override
  String get listHistory => 'Ցուցակի Պատմություն';

  @override
  String get myLists => 'Իմ Ցուցակները';

  @override
  String get viewActive => 'Դիտել Ակտիվները';

  @override
  String get viewHistory => 'Դիտել Պատմությունը';

  @override
  String get noArchivedLists => 'Արխիվացված ցուցակներ չկան';

  @override
  String get noActiveLists => 'Ակտիվ ցուցակներ չկան';

  @override
  String completedOn(String date) {
    return 'Ավարտված է $date';
  }

  @override
  String get sharedLabel => 'Համօգտագործված';

  @override
  String get restore => 'Վերականգնել';

  @override
  String get removeSharedTooltip => 'Հեռացնել';

  @override
  String get deleteListTitle => 'Ջնջել ցուցակը';

  @override
  String deleteListContent(String name) {
    return 'Համոզված եք, որ ցանկանում եք ջնջել «$name»-ը: Բոլոր կետերը կհեռացվեն:';
  }

  @override
  String get removeSharedListTitle => 'Հեռացնել համօգտագործված ցուցակը';

  @override
  String removeSharedListContent(String name) {
    return 'Հեռացնել «$name»-ը ձեր ցուցակներից: Բնօրինակ ցուցակը չի տուժի:';
  }

  @override
  String get createNewList => 'Ստեղծել նոր ցուցակ';

  @override
  String get aiAssistant => 'AI Օգնական';

  @override
  String get aiAssistantDescription =>
      'Ստացեք խելացի առաջարկներ, բաղադրատոմսեր և անհատական խորհուրդներ մեր AI օգնականի միջոցով:';

  @override
  String get generalAssistant => 'Ընդհանուր Օգնական';

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
  String get clearHistory => 'Մաքրել Պատմությունը';

  @override
  String get clearHistoryConfirm =>
      'Մաքրել բոլոր հաղորդագրություններն այս նիստում:';

  @override
  String get chatHint => 'Գրեք ձեր հաղորդագրությունը...';

  @override
  String chatError(String error) {
    return 'Զրույցի բեռնման սխալ՝ $error';
  }

  @override
  String get listHelp => 'Ինչպե՞ս կարող եմ օգնել ձեր ցուցակին:';

  @override
  String get generalHelp => 'Ինչպե՞ս կարող եմ օգնել ձեր գնումներին այսօր:';

  @override
  String get chatSubtitle =>
      'Հարցրեք կետերի առաջարկներ, բաղադրատոմսեր կամ խնայողության խորհուրդներ:';

  @override
  String get aiError =>
      'Ներեցեք, ձեր հարցումը մշակելիս սխալ է տեղի ունեցել: Ստուգեք ձեր կապը կամ փորձեք ավելի ուշ:';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Մուտք գործեք՝\nպրեմիում հնարավորությունները բացելու համար';

  @override
  String get signInGoogle => 'Մուտք Google-ով';

  @override
  String get signInApple => 'Մուտք Apple-ով';

  @override
  String get continueAsGuest => 'Շարունակել որպես հյուր';

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
    return 'Մուտքի սխալ՝ $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Թարմացրեք բացելու համար';

  @override
  String get itemRemoved => 'Կետը հեռացված է';

  @override
  String get undo => 'Հետարկել';

  @override
  String get emptyListTitle => 'Ձեր ցուցակը դատարկ է';

  @override
  String get emptyListSubtitle => 'Ավելացրեք կետեր սկսելու համար';

  @override
  String get noListFoundTitle => 'Ցուցակներ չեն գտնվել';

  @override
  String get noListFoundSubtitle => 'Ստեղծեք ձեր առաջին ցուցակը սկսելու համար';

  @override
  String get createFirstList => 'Ստեղծել Առաջին Ցուցակը';

  @override
  String get listBudgetTitle => 'Ցուցակի Բյուջե';

  @override
  String get budgetAmountLabel => 'Բյուջեի գումար';

  @override
  String get removeBudget => 'Հեռացնել';

  @override
  String get prefUnlimitedLists => 'Անսահմանափակ ցուցակներ';

  @override
  String get prefSharing => 'Կիսվել ցուցակներով';

  @override
  String get prefFullHistory => 'Ամբողջական պատմություն';

  @override
  String get prefExportData => 'Արտահանել տվյալները';

  @override
  String get prefCustomThemes => 'Անհատական թեմաներ';

  @override
  String get prefMonthlyBudget => 'Համընդհանուր ամսական բյուջե';

  @override
  String get prefAIAssistant => 'Անհատական AI Օգնական';

  @override
  String get prefUnlimitedPantry => 'Անսահմանափակ մառան';

  @override
  String get prefInteractiveArtifacts => 'Ինտերակտիվ AI Արտեֆակտներ';

  @override
  String get themeGreen => 'Կանաչ';

  @override
  String get themeBlue => 'Կապույտ';

  @override
  String get themePurple => 'Մանուշակագույն';

  @override
  String get themeRed => 'Կարմիր';

  @override
  String get themeOrange => 'Նարնջագույն';

  @override
  String get themePink => 'Վարդագույն';

  @override
  String get themeIndigo => 'Ինդիգո';

  @override
  String get themeAmber => 'Սաթ';

  @override
  String get themeTeal => 'Ծովակնագույն';

  @override
  String get themeBrown => 'Շագանակագույն';

  @override
  String get catFruits => 'Մրգեր';

  @override
  String get catCleaning => 'Մաքրում';

  @override
  String get catBeverages => 'Ըմպելիքներ';

  @override
  String get catBakery => 'Հացաբուլկեղեն';

  @override
  String get catOthers => 'Այլ';

  @override
  String get unitPack => 'տուփ';

  @override
  String get shareSubject => 'Գնումների Ցուցակ';

  @override
  String get monthlyBudgetTitle => 'Ամսական Բյուջե';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Ջնջել ցուցակը';

  @override
  String get pantryItemRemoved => 'Կետը հեռացված է';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit կետ պետք է գնվեն',
      one: '$deficit կետ պետք է գնվի',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Զամբյուղի ընդհանուր';

  @override
  String get restockLabel => 'Համալրել';

  @override
  String get advancedFeatures => 'Ընդլայնված հնարավորություններ';

  @override
  String get selectAll => 'Ընտրել բոլորը';

  @override
  String get deselectAll => 'Ապաընտրել բոլորը';

  @override
  String get monthlyBudgetAppBar => 'Ամսական Բյուջե';

  @override
  String get budgetEditTitle => 'Ամսական Բյուջե';

  @override
  String get budgetDashboardTitle => 'Վահանակ';

  @override
  String get selectListForDashboard => 'Ընտրեք ցուցակ՝ վահանակը դիտելու համար:';

  @override
  String get spendingAnalysis => 'Ծախսերի Վերլուծություն';

  @override
  String get noItemsToAnalyze => 'Վերլուծելու կետեր չկան ցուցակում:';

  @override
  String get markItemsToSeeAnalysis =>
      'Նշեք կետերը որպես գնված՝ վերլուծությունը տեսնելու համար:';

  @override
  String get totalSpending => 'Ընդհանուր Ծախս';

  @override
  String get spendingByCategory => 'Ծախսեր ըստ Կատեգորիայի';

  @override
  String get achievements => 'Ձեռքբերումներ';

  @override
  String get exportPdfExcel => 'Արտահանել PDF/Excel';

  @override
  String get exportPdf => 'Արտահանել որպես PDF';

  @override
  String get exportExcel => 'Արտահանել որպես Excel';

  @override
  String get organizingAi => 'ԿԱԶՄԱԿԵՐՊՎՈՒՄ Է AI-ՈՎ...';

  @override
  String get yesLabel => 'Այո';

  @override
  String get noLabel => 'Ոչ';

  @override
  String get shareListText => 'Իմ Գնումների Ցուցակը';

  @override
  String get emptyListAddItems =>
      'Ձեր ցուցակը դատարկ է! Նախ ավելացրեք կետեր: ℹ️';

  @override
  String get listOrganizedMagic =>
      'Ցուցակը կախարդականորեն կազմակերպված է ըստ կատեգորիաների! ✨';

  @override
  String get shoppingMode => 'Գնումների Ռեժիմ';

  @override
  String get smartOrganization => 'Խելացի Կազմակերպում';

  @override
  String get savings => 'Խնայողություններ';

  @override
  String get shoppingModeHeader => 'ԳՆՈՒՄՆԵՐԻ ՌԵԺԻՄ';

  @override
  String get shareAsText => 'Ուղարկել կետերը որպես ֆորմատավորված տեքստ';

  @override
  String get shareRealtime =>
      'Իրական ժամանակում սինխրոնիզացիա այլ մարդկանց հետ';

  @override
  String get quickRecipe => 'Արագ բաղադրատոմս';

  @override
  String get quickRecipePrompt => 'Առաջարկել բաղադրատոմսեր իմ ցուցակի կետերով:';

  @override
  String get economyTips => 'Խնայողության խորհուրդներ';

  @override
  String get economyTipsPrompt =>
      'Ինչպե՞ս կարող եմ գումար խնայել այս գնման վրա:';

  @override
  String get organizeAisles => 'Կազմակերպել ըստ միջանցքների';

  @override
  String get organizeAislesPrompt => 'Կազմակերպել ըստ խանութի միջանցքների:';

  @override
  String get recipeSuggestion => 'Բաղադրատոմսի առաջարկ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining մնացած կրեդիտ';
  }

  @override
  String get addAllToList => 'Ավելացնել բոլորը ցուցակում';

  @override
  String get organizeByAisles => 'Կազմակերպել ըստ միջանցքների';

  @override
  String get voiceTranscriptionTooltip => 'Ձայնային մուտքագրում (Անվճար)';

  @override
  String get aiVoiceCommandTooltip => 'AI Ձայնային Հրաման (Premium)';

  @override
  String get voiceCommandTitle => 'AI Ձայնային Հրաման';

  @override
  String get voiceCommandContent =>
      'Խոսեք բնականաբար ձեր ցուցակը կառավարելու համար!\n\nՕրինակներ՝\n• \'Ավելացնել հաց, պանիր և խոզապուխտ\'\n• \'Հեռացնել լվացքի փոշին\'\n• \'Փոխել թեման կապույտ\'\n\nՍա Lista Plus Premium-ի բացառիկ հնարավորություն է:';

  @override
  String get voiceCommandPlanBtn => 'Դիտել Պլանները';

  @override
  String get itemsAddedSuccess => 'Կետերը հաջողությամբ ավելացվել են ցուցակում!';

  @override
  String get viewList => 'Դիտել ցուցակը';

  @override
  String get feedbackTitle => 'Ուղարկել Հետադարձ Կապ';

  @override
  String get feedbackPrompt => 'Ի՞նչ կցանկանայիք կիսվել:';

  @override
  String get feedbackTypeBug => 'Հաղորդել Սխալի Մասին';

  @override
  String get feedbackTypeBugHint => 'Ինչ-որ բան չի աշխատում';

  @override
  String get feedbackTypeSuggestion => 'Առաջարկ';

  @override
  String get feedbackTypeSuggestionHint =>
      'Գաղափար՝ հավելվածը բարելավելու համար';

  @override
  String get feedbackTypeTranslation => 'Թարգմանության Խնդիր';

  @override
  String get feedbackTypeTranslationHint => 'Սխալ կամ անհարթ թարգմանություն';

  @override
  String get feedbackTypeFeature => 'Ֆունկցիոնալության Հայց';

  @override
  String get feedbackTypeFeatureHint => 'Ֆունկցիա, որը կցանկանայիք տեսնել';

  @override
  String get feedbackTypeOther => 'Այլ';

  @override
  String get feedbackTypeOtherHint => 'Հետադարձ կապի այլ տեսակ';

  @override
  String get feedbackHint => 'Նկարագրեք ձեր հետադարձ կապը մանրամասն...';

  @override
  String get feedbackSend => 'Ուղարկել Հետադարձ Կապ';

  @override
  String get feedbackSending => 'Ուղարկվում է...';

  @override
  String get feedbackThankYou => 'Շնորհակալություն!';

  @override
  String get feedbackThankYouMessage =>
      'Ձեր հետադարձ կապը ստացվել է և օգնում է մեզ բարելավել Lista Plus-ը բոլորի համար:';

  @override
  String get feedbackBack => 'Հետ';

  @override
  String feedbackError(String error) {
    return 'Ուղարկելիս սխալ՝ $error';
  }

  @override
  String get feedbackRetry => 'Կրկին փորձել';

  @override
  String get feedbackSettingsTitle => 'Ուղարկել Հետադարձ Կապ';

  @override
  String get feedbackSettingsSubtitle =>
      'Հաղորդել սխալների մասին, առաջարկել բարելավումներ կամ ուղղել թարգմանությունները';

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
  String get openMenu => 'Բացել մենյուն';

  @override
  String get viewRecipe => 'Դիտել բաղադրատոմսը';

  @override
  String get recipeCreated => 'Բաղադրատոմսը ստեղծված է';

  @override
  String get editRecipe => 'Խմբագրել';

  @override
  String get deleteRecipe => 'Ջնջել';

  @override
  String get deleteRecipeConfirm => 'Ջնջե՞լ այս բաղադրատոմսը';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Համոզվա՞ծ եք, որ ցանկանում եք ջնջել «$recipeName»-ը: Այս գործողությունը անդառնալի է:';
  }

  @override
  String get ingredients => 'Բաղադրիչներ';

  @override
  String get instructions => 'Հրահանգներ';

  @override
  String get prepTime => 'Պատրաստման ժամանակը';

  @override
  String get recipeSaved => 'Բաղադրատոմսը պահպանված է';

  @override
  String get noRecipesSaved => 'Պահպանված բաղադրատոմսեր չկան';

  @override
  String get noRecipesSavedHint =>
      'Ստեղծեք ձեր առաջին բաղադրատոմսը՝ սեղմելով ներքևի կոճակը:';

  @override
  String get myRecipes => 'Իմ բաղադրատոմսերը';

  @override
  String get newRecipe => 'Նոր բաղադրատոմս';

  @override
  String get loadingRecipes => 'Բեռնվում են ձեր բաղադրատոմսերը...';

  @override
  String get errorLoadingRecipes => 'Սխալ՝ բաղադրատոմսերը բեռնելիս';

  @override
  String get addIngredient => 'Ավելացնել բաղադրիչ';

  @override
  String get saveRecipe => 'Պահպանել';

  @override
  String get recipeName => 'Բաղադրատոմսի անվանում';

  @override
  String get shortDescription => 'Կարճ նկարագրություն';

  @override
  String get prepTimeMinutes => 'Պատրաստման ժամանակը (րոպե)';

  @override
  String get instructionsHint => 'Մուտքագրեք մեկ քայլ յուրաքանչյուր տողում...';

  @override
  String get addPhoto => 'Ավելացնել լուսանկար';

  @override
  String get imageUrlPlaceholder => 'Կամ տեղադրեք պատկերի URL-ը';

  @override
  String get tags => 'Պիտակներ';

  @override
  String get recipeTags => 'Բաղադրատոմսի պիտակներ';

  @override
  String get suggestedTags => 'Առաջարկվող';

  @override
  String get searchRecipes => 'Փնտրել բաղադրատոմսեր...';

  @override
  String get filterByTag => 'Ֆիլտրել ըստ պիտակի';

  @override
  String get allTags => 'Բոլորը';

  @override
  String get recipeDeleted => 'Բաղադրատոմսը ջնջված է';

  @override
  String get saveChanges => 'Պահպանել փոփոխությունները';

  @override
  String get editRecipeTitle => 'Խմբագրել բաղադրատոմսը';

  @override
  String get newRecipeTitle => 'Նոր բաղադրատոմս';

  @override
  String get requiredField => 'Պարտադիր';

  @override
  String get chooseImageSource => 'Ընտրել պատկերի աղբյուրը';

  @override
  String get gallery => 'Պատկերասրահ';

  @override
  String get enterUrl => 'Մուտքագրել URL';

  @override
  String get recipeImage => 'Բաղադրատոմսի պատկեր';

  @override
  String get removeImage => 'Հեռացնել պատկերը';

  @override
  String get mealPlannerTitle => 'Սննդի պլանավորում';

  @override
  String get mealPlannerViewMonthly => 'Ամսական տեսք';

  @override
  String get mealPlannerViewWeekly => 'Շաբաթական տեսք';

  @override
  String get mealPlannerNoMeals => 'Պլանավորված սնունդ չկա';

  @override
  String get mealPlannerNoMealsHint => 'Հպեք օրվան՝ սնունդ ավելացնելու համար';

  @override
  String get mealPlannerLoading => 'Սննդի պլանի բեռնում...';

  @override
  String get mealPlannerError => 'Սխալ՝ սննդի պլանը բեռնելիս';

  @override
  String get mealPlannerAddMeal => 'Ավելացնել սնունդ';

  @override
  String get mealPlannerEditMeal => 'Խմբագրել սնունդը';

  @override
  String get mealPlannerDeleteMeal => 'Հեռացնել սնունդը';

  @override
  String get mealPlannerMealDeleted => 'Սնունդը հեռացված է';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count բաժին',
      one: '$count բաժին',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Բաժիններ';

  @override
  String get mealPlannerNoteLabel => 'Նշում (կամավոր)';

  @override
  String get mealPlannerSelectRecipe => 'Ընտրել բաղադրատոմս';

  @override
  String get mealPlannerSearchRecipes => 'Փնտրել բաղադրատոմսեր...';

  @override
  String get mealPlannerNoRecipesFound => 'Բաղադրատոմսեր չեն գտնվել';

  @override
  String get mealPlannerNoRecipesHint =>
      'Նախ ստեղծեք բաղադրատոմսեր «Բաղադրատոմսեր» բաժնում';

  @override
  String get mealPlannerSave => 'Ավելացնել պլանին';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Պլանավորված է $total-ից $count սնունդ';
  }

  @override
  String get mealPlannerGenerateList => 'Ստեղծել գնումների ցուցակ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ավելացնե՞լ այս շաբաթվա պլանավորված սննդի բոլոր բաղադրիչները ձեր գնումների ցուցակում:';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count բաղադրիչ ավելացվեց ձեր ցուցակում!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ավելացնելու բաղադրիչներ չկան: Նախ պլանավորեք սնունդ բաղադրատոմսերով:';

  @override
  String get mealPlannerGenerateListNoList => 'Նախ ստեղծեք գնումների ցուցակ:';

  @override
  String get mealPlannerMealTypeBreakfast => 'Նախաճաշ';

  @override
  String get mealPlannerMealTypeLunch => 'Ճաշ';

  @override
  String get mealPlannerMealTypeDinner => 'Ընթրիք';

  @override
  String get mealPlannerMealTypeSnack => 'Թեթև ուտեստ';

  @override
  String get mealPlannerDateLabel => 'Ամսաթիվ';

  @override
  String get mealPlannerWeekEmpty => 'Այս շաբաթվա համար ոչինչ պլանավորված չէ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Հպեք ցանկացած օրվա՝ ձեր սնունդը պլանավորելու համար:';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes րոպե';
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
