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
  String get navChat => 'Զրուցարան';

  @override
  String get navRecipes => 'Բաղադրատոմսեր';

  @override
  String get navLists => 'Ցուցակներ';

  @override
  String get navMealPlanner => 'Մենյու';

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
  String get next => 'Հաջորդը';

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
  String get profile => 'Անձնագիր';

  @override
  String get exitShoppingMode => 'Դուրս գալ գնումների ռեժիմից';

  @override
  String get exit => 'Ելք';

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
  String get languagePortuguese => 'Պորտուգալիա (Բրազիլիա)';

  @override
  String get languageEnglish => 'Անգլերեն';

  @override
  String get languageSystem => 'Համակարգի լռելյայն';

  @override
  String get chooseLanguage => 'Ընտրել լեզուն';

  @override
  String get searchLanguage => 'Փնտրել լեզուն...';

  @override
  String get currency => 'Արժույթ';

  @override
  String get chooseCurrency => 'Ընտրեք արժույթ';

  @override
  String get searchCurrency => 'Որոնել արժույթը...';

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
      'Անջատեք դինամիկ գույները, որպեսզի թեմայի գույնն ուժի մեջ մտնի';

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
  String get newChat => 'Նոր Զրուցարան';

  @override
  String get noHistory => 'Զրույցի պատմություն չկա';

  @override
  String get deleteSession => 'Ջնջել Chat-ը';

  @override
  String get deleteSessionConfirm =>
      'Իսկապե՞ս ուզում եք ջնջել այս զրույցը: Հաղորդագրությունները ընդմիշտ կկորչեն:';

  @override
  String get clearHistory => 'Մաքրել Պատմությունը';

  @override
  String get clearHistoryConfirm =>
      'Մաքրել բոլոր հաղորդագրություններն այս նիստում:';

  @override
  String get chatHint => 'Գրեք ձեր հաղորդագրությունը...';

  @override
  String get chatHintBlocked => 'Բացեք AI-ն զրուցելու համար';

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
  String get aiLimitAlmostReached => 'AI հաղորդագրությունները գրեթե սպառվել են';

  @override
  String get unlockAi => 'Բացեք անսահմանափակ AI';

  @override
  String get aiTeaserFallback =>
      'Բաժանորդագրվեք Պրեմիումին՝ ամբողջական պատասխանը բացելու և անսահմանափակ AI-ի խորհուրդներ ստանալու համար ձեր գնումների համար...';

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
  String get loginPrompt =>
      'Մուտք գործեք՝\nպրեմիում հնարավորությունները բացելու համար';

  @override
  String get signInGoogle => 'Մուտք Google-ով';

  @override
  String get signInApple => 'Մուտք Apple-ով';

  @override
  String get continueAsGuest => 'Շարունակել որպես հյուր';

  @override
  String get onboardingWelcomeTitle => 'Բարի գալուստ KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Ձեր գնումները կազմակերպելու և գումար խնայելու ամենախելացի միջոցը:';

  @override
  String get onboardingSetupTitle => 'Անհատականացրեք ձեր փորձը';

  @override
  String get onboardingSetupDesc =>
      'Ընտրեք, թե ինչպես եք ցանկանում, որ KipiList-ը նայվի և աշխատի ձեզ համար:';

  @override
  String get onboardingLoginTitle => 'Պահպանեք ամեն ինչ ամպի մեջ';

  @override
  String get onboardingLoginDesc =>
      'Ձեր տվյալները համաժամացվել են ձեր բոլոր սարքերում';

  @override
  String get onboardingShareTitle => 'Կիսվեք նրանց հետ, ում սիրում եք';

  @override
  String get onboardingShareDesc =>
      'Համաժամեցրեք ցուցակները ընտանիքի և ընկերների հետ իրական ժամանակում';

  @override
  String get onboardingPremiumTitle => 'Բացեք բոլոր հնարավորությունները';

  @override
  String get onboardingPremiumSubtitle =>
      'Ստացեք առավելագույնը ձեր գնումների ցուցակներից';

  @override
  String get onboardingAnnualBadge => 'Լավագույն արժեքը';

  @override
  String get onboardingMonthlyLabel => 'Ամսական';

  @override
  String get onboardingAnnualLabel => 'Տարեկան';

  @override
  String get onboardingViewAllPlans => 'Դիտեք բոլոր պլանները';

  @override
  String get onboardingSubscribeCta => 'Բաժանորդագրվել';

  @override
  String get onboardingCancelAnytime =>
      'Չեղարկել ցանկացած ժամանակ: Ոչ մի պարտավորություն:';

  @override
  String get onboardingContinueAsGuest => 'Շարունակեք որպես հյուր';

  @override
  String get onboardingRestore => 'Վերականգնել';

  @override
  String get onboardingRestoreDesc =>
      'Արդեն ունե՞ք բաժանորդագրություն: Հպեք այստեղ՝ այն վերականգնելու համար:';

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
  String get onboardingExit => 'Ելք';

  @override
  String get onboardingPersonalizationTitle => 'Եկեք ծանոթանանք ձեզ հետ';

  @override
  String get onboardingPersonalizationDesc =>
      'Մենք դա կօգտագործենք ձեր առաջարկներն անհատականացնելու և գնումներն ավելի խելացի դարձնելու համար:';

  @override
  String get onboardingPersonalizationFoodLabel => 'Ո՞րն է քո սիրելի ուտելիքը:';

  @override
  String get onboardingPersonalizationFoodHint =>
      'օր. Պիցցա, սուշի, լազանյա...';

  @override
  String get onboardingPersonalizationCta => 'Շարունակեք';

  @override
  String get onboardingPersonalizationSkip => 'Առայժմ բաց թողեք';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Շարունակելու համար ասեք մեզ ձեր սիրելի ուտելիքը';

  @override
  String get settingsDefaultScreen => 'Կանխադրված հիմնական էկրան';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Ընտրեք գնումների ցուցակի կամ AI զրույցի միջև';

  @override
  String get settingsScreenList => 'Գնումների ցուցակ';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Մուտքի սխալ՝ $error';
  }

  @override
  String get paywallTitle => 'KipiList Պրեմիում';

  @override
  String get paywallLoadingError =>
      'Առաջարկները բեռնելիս սխալ առաջացավ: Նորից փորձեք:';

  @override
  String get paywallPurchaseError => 'Չհաջողվեց ավարտել գնումը: Նորից փորձեք:';

  @override
  String get paywallRestoreError =>
      'Ակտիվ բաժանորդագրություն չի գտնվել վերականգնելու համար:';

  @override
  String paywallTrialDays(Object days) {
    return '$days ՕՐ ԱՆՎՃԱՐ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ՇԱԲԱԹ ԱՆՎՃԱՐ',
      one: '$count ՇԱԲԱԹ ԱՆՎՃԱՐ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH ԱՆՎՃԱՐ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Փորձեք KipiList Pro-ն անվճար 7 օր';

  @override
  String get paywallTrialSubtitle =>
      'Չեղարկել ցանկացած ժամանակ: Այսօր ոչ մի գանձում:';

  @override
  String get paywallTrialCta => 'Սկսեք անվճար փորձաշրջան';

  @override
  String get recipeAddToList => 'Ավելացնել գնումների ցուցակին';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count բաղադրիչ ավելացվել է $listName-ին';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Ձեզ անհրաժեշտ ամեն ինչ.';

  @override
  String get paywallFeatureUnlimitedLists => 'Անսահմանափակ ցուցակներ';

  @override
  String get paywallFeatureSmartAI => 'Խելացի AI';

  @override
  String get paywallFeatureExpenseControl => 'Ծախսերի վերահսկում';

  @override
  String get paywallFeatureSharing => 'Համօգտագործում';

  @override
  String get paywallBeforeAfterTitle => 'AI առաջ և հետո.';

  @override
  String get paywallLabelCommon => 'Ընդհանուր';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'բրինձ';

  @override
  String get paywallBeforeItem2 => 'օճառ';

  @override
  String get paywallBeforeItem3 => 'միս';

  @override
  String get paywallBeforeItem4 => 'հաց';

  @override
  String get paywallAfterItem1 => 'Հացահատիկներ';

  @override
  String get paywallAfterItem2 => 'Մաքրում';

  @override
  String get paywallAfterItem3 => 'Միս';

  @override
  String get paywallAfterItem4 => 'Հացաբուլկեղեն';

  @override
  String get paywallTestimonialsTitle => 'Ինչ են ասում մեր օգտատերերը.';

  @override
  String get paywallTestimonial1Name => 'Անն Ս.';

  @override
  String get paywallTestimonial1Text =>
      'AI-ն վայրկյանների ընթացքում կազմակերպում է իմ գնումները։ Ես խնայում եմ 20 րոպե շուկայական ուղևորության համար:';

  @override
  String get paywallTestimonial2Name => 'Չարլզ Մ.';

  @override
  String get paywallTestimonial2Text =>
      'Ես այլևս երբեք չեմ մոռացել ցուցակի որևէ կետ: AI զրույցը սենսացիոն է:';

  @override
  String get paywallSocialProof => 'Դրանից օգտվում է +2400 ընտանիք';

  @override
  String get paywallCtaUnlock => 'Բացել PRO';

  @override
  String get paywallBestValue => 'ԼԱՎԱԳՈՒՅՆ ԱՐԺԵՔ';

  @override
  String get paywallMostPopular => 'ԱՄԵՆԱՍԻՐՎԱԾԸ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Ապահով վճարում';

  @override
  String get paywallSelectPlan => 'Ընտրեք ձեր պլանը.';

  @override
  String paywallSavePercent(Object percent) {
    return 'ՊԱՀՊԱՆԵԼ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Միայն $price/ամսական';
  }

  @override
  String get paywallPackageAnnual => 'Տարեկան պլան';

  @override
  String get paywallPackageMonthly => 'Ամսական պլան';

  @override
  String get paywallPackageLifetime => 'Կյանքի ընթացքում հասանելիություն';

  @override
  String get paywallCancelAnytime =>
      'Չեղարկել ցանկացած ժամանակ: Ոչ մի պարտավորություն:';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Գաղտնիության քաղաքականություն';

  @override
  String get paywallTerms => 'Օգտագործման պայմաններ';

  @override
  String get paywallRestore => 'Վերականգնել';

  @override
  String get paywallHeroHeadline => 'Kipi AI-ն միշտ ձեր կողքին է';

  @override
  String get paywallHeroSubtitle =>
      'Ավելացրեք իրեր, կազմակերպեք ցուցակները և խնայեք ժամանակը ձեր գրպանում AI-ի միջոցով';

  @override
  String get paywallBenefit1Desc =>
      'Ավելացնում է, կազմակերպում և առաջարկում իրեր 24/7';

  @override
  String get paywallBenefit2Desc => '3 ցուցակի սահմանափակում չկա';

  @override
  String get paywallBenefit3Desc => 'Ծախսերի հետևում և ընտանեկան ցուցակներ';

  @override
  String get paywallPackageMonthlyDesc => 'Ամբողջական ճկունություն';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Սկսեք անվճար — $days օր';
  }

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
      'Խոսեք բնականաբար ձեր ցուցակը կառավարելու համար!\n\nՕրինակներ՝\n• \'Ավելացնել հաց, պանիր և խոզապուխտ\'\n• \'Հեռացնել լվացքի փոշին\'\n• \'Փոխել թեման կապույտ\'\n\nՍա KipiList Premium-ի բացառիկ հնարավորություն է:';

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
      'Ձեր հետադարձ կապը ստացվել է և օգնում է մեզ բարելավել KipiList-ը բոլորի համար:';

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
  String get aiEnergy => 'AI էներգիա';

  @override
  String get searchInConversation => 'Որոնել խոսակցության մեջ...';

  @override
  String get noMessagesFound => 'Հաղորդագրություններ չեն գտնվել';

  @override
  String get suggestedQuestions => 'Առաջարկվող հարցեր.';

  @override
  String get shoppingAssistant => 'Գնումների օգնական';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'գնված $purchased$total-ից';
  }

  @override
  String get estimatedCost => 'գնահատված';

  @override
  String get viewItems => 'Դիտել իրերը';

  @override
  String get noItemsInList => 'Ցուցակում ապրանքներ չկան';

  @override
  String get longHistoryWarning =>
      'Երկար պատմություն. օգնականը կենտրոնանում է վերջին հաղորդագրությունների վրա՝ ավելի լավ կատարման համար:';

  @override
  String get listening => 'Լսելով...';

  @override
  String get addDirectToList => 'Ավելացրեք անմիջապես ցուցակին';

  @override
  String get unlockFullResponse => 'Բացել ամբողջական պատասխանը';

  @override
  String get switchList => 'Փոխարկել ցուցակը';

  @override
  String get marketMode => 'Շուկայական ռեժիմ';

  @override
  String get backToChat => 'Վերադարձ դեպի Զրուցարան';

  @override
  String get finishShopping => 'Ավարտեք գնումները';

  @override
  String get welcomeAiAssistant => 'Բարի գալուստ AI օգնական';

  @override
  String get createListToStartAi =>
      'Ստեղծեք գնումների ցուցակ՝ խելացի զրույցից օգտվելու համար:';

  @override
  String get howCanIHelp => 'Ինչպե՞ս կարող եմ օգնել:';

  @override
  String get chatSubtitleShort =>
      'Հարցրեք գների, բաղադրատոմսերի, կազմակերպման մասին...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total գնված է';
  }

  @override
  String get quickReplies => 'Արագ պատասխաններ.';

  @override
  String get voiceProFeature =>
      'Ընդլայնված ձայնային հրամանները Pro են: Հիմնական թելադրանքի ակտիվացում...';

  @override
  String get viewPro => 'Դիտել Pro';

  @override
  String get errorLoadingChat => 'Վա՜յ Զրույցը բեռնելիս սխալ առաջացավ:';

  @override
  String get errorLoadingChatSubtitle =>
      'Ստուգեք ձեր կապը կամ փորձեք ավելի ուշ:';

  @override
  String get errorOscillation =>
      'Դա կարող է առաջանալ ցանցի տատանումների կամ ժամանակավոր անհասանելիության պատճառով: Խնդրում ենք կրկին փորձել:';

  @override
  String get activeListening => 'Ակտիվ լսում';

  @override
  String get whatToDoWithItem => 'Ի՞նչ կցանկանայիք անել այս իրի հետ:';

  @override
  String get viewDetails => 'Դիտել Մանրամասները';

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
  String get inviteToList => 'Հրավիրեք ցուցակին';

  @override
  String get shareApp => 'Կիսվեք հավելվածով';

  @override
  String get shareAppDescription => 'Հրավիրեք ընկերներին օգտվել KipiList-ից';

  @override
  String shareReferralText(Object url) {
    return 'Ես օգտագործում եմ KipiList-ը իմ գնումները կազմակերպելու համար: Ներբեռնեք իմ հղումով, և մենք երկուսս էլ կստանանք 7 օր անվճար Premium՝ $url';
  }

  @override
  String get shareReferralSubject => 'Ստացեք KipiList Պրեմիում 7 օր:';

  @override
  String get gestureHint =>
      'Պահեք՝ ընտրելու համար • Սահեցրեք՝ հեռացնելու համար';

  @override
  String get catalogTitle => 'Կատալոգ';

  @override
  String get catalogMyFrequents => 'Իմ հաճախականությունները';

  @override
  String get catalogSearchGlobal => 'Որոնել ցանկացած ապրանք...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Որոնել $category-ում...';
  }

  @override
  String get catalogSortPopular => 'Ամենատարածված';

  @override
  String get catalogSortAZ => 'Ա–Զ';

  @override
  String get catalogFilterNational => 'Ազգայինները';

  @override
  String get catalogRareSection => 'ավելի քիչ տարածված ձեր երկրում';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ավելացնել $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Ապրանքը չի գտնվել, մուտքագրեք անունը';

  @override
  String get catalogBrowse => 'Թերթիր կատալոգը';

  @override
  String get offlineBanner => 'Դուք անցանց եք';

  @override
  String get consentTitle => 'Գաղտնիություն և վերլուծություն';

  @override
  String get consentBody =>
      'KipiList-ը օգտագործում է Firebase Analytics՝ ձեր փորձը բարելավելու համար: Ձեր տվյալները մշակվում են մեր Գաղտնիության քաղաքականության համաձայն:';

  @override
  String get consentAccept => 'Ընդունել';

  @override
  String get consentDecline => 'Ոչ, շնորհակալություն';

  @override
  String get mealPlannerPantryAllAvailable => 'Պահեստում';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count բացակայող տարրեր',
      one: '$count բացակայող տարր',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Ժամկետի ժամկետը';

  @override
  String get notInformed => 'Տեղեկացված չէ';

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
  String get manageCategoriesTitle => 'Կառավարեք կատեգորիաները';

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
  String get sortAZ => 'Ա–Զ';

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
  String get backToToday => 'Վերադարձ դեպի այսօր';

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
