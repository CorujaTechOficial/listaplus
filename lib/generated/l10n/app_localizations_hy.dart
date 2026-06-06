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
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

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
  String get paywallSocialProof =>
      'Join thousands of smart shoppers saving time and money';

  @override
  String get paywallCtaUnlock => 'Unlock KipiList PRO';

  @override
  String get paywallCtaTrial => 'Start My Free Trial';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment via App Store/Play Store';

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
}
