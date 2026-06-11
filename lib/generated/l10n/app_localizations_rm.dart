// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romansh (`rm`).
class AppLocalizationsRm extends AppLocalizations {
  AppLocalizationsRm([String locale = 'rm']) : super(locale);

  @override
  String get appTitle => 'Lista da cumpras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Meniu';

  @override
  String get cancel => 'Interrumper';

  @override
  String get save => 'Memorar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Agiuntar';

  @override
  String get remove => 'Allontanar';

  @override
  String get delete => 'Stizzar';

  @override
  String get edit => 'Modifitgar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Empruvar puspè';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copià en la clipboard';

  @override
  String get confirm => 'Confermar';

  @override
  String get close => 'Serrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renumnar';

  @override
  String get upgrade => 'Actualisar';

  @override
  String get clear => 'Sgiar';

  @override
  String error(String message) {
    return 'Errur: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errur: $message';
  }

  @override
  String get purchaseError =>
      'Errur durant il processament da la cumprà. Empruvà anc ina giada.';

  @override
  String get restoreError =>
      'Errur restituind las cumpras. Empruvà anc ina giada.';

  @override
  String get loading => 'Chargiar...';

  @override
  String get fieldRequired => 'Champ obligatoric';

  @override
  String get addedFeedback => 'Agiuntà!';

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
      other: '$count selecziunads',
      one: '$count selecziunà',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Stimà';

  @override
  String get alreadyPurchased => 'Già cumprà';

  @override
  String get clearList => 'Sgiar la lista';

  @override
  String get clearPurchased => 'Sgiar cumprà';

  @override
  String get share => 'Cundivider';

  @override
  String get shareViaCode => 'Cundivider cun in codesch';

  @override
  String get importViaCode => 'Importar cun in codesch';

  @override
  String get listAssistant => 'Assistant per la lista';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Daventar Premium';

  @override
  String get manageSubscription => 'Administrar l\'abilitaziun';

  @override
  String get completePurchase => 'Complettar la cumprà';

  @override
  String get confirmClearList => 'Allontanar tut ils objects?';

  @override
  String get shareListTitle => 'Cundivider la lista';

  @override
  String get shareThisCode => 'Cundivider quest codesch:';

  @override
  String get validForLimitedTime => 'Valid per in temp limità';

  @override
  String get importListTitle => 'Importar la lista';

  @override
  String get enterCodeHint => 'Endatar il codesch';

  @override
  String get confirmArchiveTitle => 'Complettar la cumprà';

  @override
  String get confirmArchiveContent =>
      'Complettar questa cumprà ed archivar la lista?';

  @override
  String get complete => 'Complettar';

  @override
  String get listArchived => 'La lista è vegnida archivada cun success!';

  @override
  String listAdded(String listName) {
    return '$listName agiuntà!';
  }

  @override
  String get buy => 'Cumprar';

  @override
  String get unmark => 'De-marcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Allontanar $count object(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confermar';

  @override
  String confirmContent(int count) {
    return 'Allontanar $count object(s)?';
  }

  @override
  String get archiveList => 'Archivar la lista';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Generar la lista da cumpras';

  @override
  String get pantryEmpty => 'Dispensa vita';

  @override
  String get pantryEmptySubtitle =>
      'Agiuntar products che Vus volais tegnair a chasa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit object(s) ston vegnir cumprà';
  }

  @override
  String get noItemsToBuy => 'Nagins objects ston vegnir cumprà';

  @override
  String get newPantryList => 'Cumprar da la dispensa';

  @override
  String get newListTitle => 'Nova lista da cumpras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count object(s) vegnan agiuntads';
  }

  @override
  String get listNameLabel => 'Num da la lista';

  @override
  String listCreated(String name, int count) {
    return 'La lista \"$name\" è vegnida creada cun $count objects';
  }

  @override
  String get noTracking => 'Nagina monitoraziun';

  @override
  String get markAsPurchased => 'Marcar sco cumprà';

  @override
  String editPantryItem(String name) {
    return 'Modifitgar $name';
  }

  @override
  String get idealQuantity => 'Quantitad ideal';

  @override
  String get currentQuantity => 'Quantitad actuala';

  @override
  String get consumed => 'Consumà';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restockà a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Allontanar \"$name\" da la dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifitgar $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'Configuraziuns';

  @override
  String get language => 'Lingua';

  @override
  String get languagePortuguese => 'Portugais (Brasil)';

  @override
  String get languageEnglish => 'Englais';

  @override
  String get languageSystem => 'Predefiniziun dal sistem';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

  @override
  String get appearance => 'Aspetg';

  @override
  String get light => 'Clèr';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Stgir';

  @override
  String get themeColor => 'Culur dal tema';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Budget mensil';

  @override
  String get budgetSubtitle => 'Moniturschar Vossas expensas mensilas';

  @override
  String get data => 'Datas';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar u importar Vossas datas';

  @override
  String get about => 'Davart';

  @override
  String get version => 'Versiun';

  @override
  String get privacy => 'Privatesa';

  @override
  String get termsOfUse => 'Cundiziuns d\'utilisaziun';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(int count) {
    return '$days days';
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
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup ed export è ina funcziun Premium';

  @override
  String get exportData => 'Exportar datas';

  @override
  String get exportDataSubtitle => 'Memorar tut las listas sco JSON';

  @override
  String get importData => 'Importar datas';

  @override
  String get importDataSubtitle => 'Restituir listas d\'in JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Tippar il JSON da backup qua...';

  @override
  String get backupExported => 'Backup exportà!';

  @override
  String get budgetAppBar => 'Budget mensil';

  @override
  String get budgetPremiumLocked => 'Il budget mensil global è Premium';

  @override
  String get budgetUpgradePrompt => 'Actualisar per debloccar';

  @override
  String get noBudgetDefined => 'Nagins budget fixà';

  @override
  String totalEstimated(String amount) {
    return 'Total stimà: $amount';
  }

  @override
  String get setBudgetButton => 'Fixar il budget';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Import';

  @override
  String get setBudgetTitle => 'Budget mensil';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tut';

  @override
  String get filterPending => 'Spetga';

  @override
  String get filterPurchased => 'Cumprà';

  @override
  String get sortName => 'Num';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

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
  String get addItem => 'Agiuntar object';

  @override
  String get itemName => 'Num da l\'object';

  @override
  String get quantityShort => 'Qta';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Pretsch stimà';

  @override
  String get addItemPrice => 'Pretsch stimà';

  @override
  String get editItem => 'Modifitgar object';

  @override
  String get quantityFull => 'Quantitad';

  @override
  String get editItemPrice => 'Pretsch stimà';

  @override
  String get addToPantry => 'Agiuntar a la dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Agiuntar \"$name\" a Vossa dispensa?';
  }

  @override
  String get yes => 'Gea';

  @override
  String get productName => 'Num dal product';

  @override
  String get idealQty => 'Quantitad ideal';

  @override
  String get currentQty => 'Quantitad actuala';

  @override
  String get trackStock => 'Moniturschar il stock';

  @override
  String get trackStockActive => 'Apparescha en suggeriuns da cumpras';

  @override
  String get trackStockInactive => 'Na genera nagina suggestiun da cumpras';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renumnar la lista';

  @override
  String get listHistory => 'Istorgia da las listas';

  @override
  String get myLists => 'Mi listas';

  @override
  String get viewActive => 'Mussar activ';

  @override
  String get viewHistory => 'Mussar istorgia';

  @override
  String get noArchivedLists => 'Naginas listas archivadas';

  @override
  String get noActiveLists => 'Naginas listas activas';

  @override
  String completedOn(String date) {
    return 'Complettà ils $date';
  }

  @override
  String get sharedLabel => 'Cundivis';

  @override
  String get restore => 'Restituir';

  @override
  String get removeSharedTooltip => 'Allontanar';

  @override
  String get deleteListTitle => 'Stizzar la lista';

  @override
  String deleteListContent(String name) {
    return 'Es Vus segirs che Vus vulais stizzar \"$name\"? Tut ils objects vegnan allontanads.';
  }

  @override
  String get removeSharedListTitle => 'Allontanar la lista cundivisa';

  @override
  String removeSharedListContent(String name) {
    return 'Allontanar \"$name\" da Vossas listas? La lista originala na vegn betg affectada.';
  }

  @override
  String get createNewList => 'Crear ina nova lista';

  @override
  String get aiAssistant => 'Assistant AI';

  @override
  String get aiAssistantDescription =>
      'Survegnir suggeriuns intelligentas, recipes e cussegls persunalisads cun nos assistant AI.';

  @override
  String get generalAssistant => 'Assistant general';

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
  String get clearHistory => 'Sgiar l\'istorgia';

  @override
  String get clearHistoryConfirm => 'Sgiar tut ils messadis en questa sesiun?';

  @override
  String get chatHint => 'Tippar Voss messadi...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Errur chargiand il chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'Co poss jau gidar cun Vossa lista?';

  @override
  String get generalHelp => 'Co poss jau gidar cun Vossas cumpras oz?';

  @override
  String get chatSubtitle =>
      'Dumandar per suggeriuns d\'objects, recipes u cussegls da spargn.';

  @override
  String get aiError =>
      'Perstgisai, in errur è capità processond Vossa dumonda. Controllai Vossa connexiun u empruvai pli tard.';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

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
  String get loginPrompt => 'Annunzia per debloccar\nfuncziuns Premium';

  @override
  String get signInGoogle => 'Annunzia cun Google';

  @override
  String get signInApple => 'Annunzia cun Apple';

  @override
  String get continueAsGuest => 'Cuntinuar sco convidà';

  @override
  String get onboardingWelcomeTitle => 'Welcome to KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'The smartest way to organize your shopping and save money.';

  @override
  String get onboardingSetupTitle => 'Personalize your experience';

  @override
  String get onboardingSetupDesc =>
      'Choose how you want KipiList to look and work for you.';

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
  String get onboardingRestoreDesc =>
      'Already have a subscription? Tap here to restore it.';

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
  String get onboardingExit => 'Exit';

  @override
  String get onboardingPersonalizationTitle => 'Let\'s get to know you';

  @override
  String get onboardingPersonalizationDesc =>
      'We\'ll use this to personalize your suggestions and make shopping smarter.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'What\'s your favorite food?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'e.g. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Continue';

  @override
  String get onboardingPersonalizationSkip => 'Skip for now';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Tell us your favorite food to continue';

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
    return 'Errur da l\'annunzia: $error';
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
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organizes your list automatically';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Create as many lists as you need';

  @override
  String get paywallFeatureDescSharing => 'Shop together in real time';

  @override
  String get paywallFeatureDescPantry => 'Track what you have at home';

  @override
  String get paywallFeatureDescBudget => 'Stay on budget every month';

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
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallProLabel => 'PRO';

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
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String get premiumUpgrade => 'Actualisar per debloccar';

  @override
  String get itemRemoved => 'Object allontanà';

  @override
  String get undo => 'Revocar';

  @override
  String get emptyListTitle => 'Vossa lista è vita';

  @override
  String get emptyListSubtitle => 'Agiuntar objects per cumenzar';

  @override
  String get noListFoundTitle => 'Naginas listas chattadas';

  @override
  String get noListFoundSubtitle => 'Crear Vossa emprima lista per cumenzar';

  @override
  String get createFirstList => 'Crear l\'emprima lista';

  @override
  String get listBudgetTitle => 'Budget da la lista';

  @override
  String get budgetAmountLabel => 'Import dal budget';

  @override
  String get removeBudget => 'Allontanar';

  @override
  String get prefUnlimitedLists => 'Listas illimità';

  @override
  String get prefSharing => 'Cundivider listas';

  @override
  String get prefFullHistory => 'Istorgia cumpletta';

  @override
  String get prefExportData => 'Exportar datas';

  @override
  String get prefCustomThemes => 'Temas persunalisads';

  @override
  String get prefMonthlyBudget => 'Budget mensil global';

  @override
  String get prefAIAssistant => 'Assistant AI persunalisà';

  @override
  String get prefUnlimitedPantry => 'Dispensa illimitada';

  @override
  String get prefInteractiveArtifacts => 'Artifacts AI interactivs';

  @override
  String get themeGreen => 'Verd';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Cotschen';

  @override
  String get themeOrange => 'Oransch';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Blau-verd';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Fractas';

  @override
  String get catCleaning => 'Netegia';

  @override
  String get catBeverages => 'Bervandas';

  @override
  String get catBakery => 'Pastizaria';

  @override
  String get catOthers => 'Auters';

  @override
  String get unitPack => 'pachet';

  @override
  String get shareSubject => 'Lista da cumpras';

  @override
  String get monthlyBudgetTitle => 'Budget mensil';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Stizzar la lista';

  @override
  String get pantryItemRemoved => 'Object allontanà';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit objects ston vegnir cumprà',
      one: '$deficit object sto vegnir cumprà',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total dal chassis';

  @override
  String get restockLabel => 'Restockar';

  @override
  String get advancedFeatures => 'Funcziuns avanzadas';

  @override
  String get selectAll => 'Tut selegier';

  @override
  String get deselectAll => 'Tut desselegier';

  @override
  String get monthlyBudgetAppBar => 'Budget mensil';

  @override
  String get budgetEditTitle => 'Budget mensil';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Selegi ina lista per mussar il dashboard.';

  @override
  String get spendingAnalysis => 'Analisa da las expensas';

  @override
  String get noItemsToAnalyze => 'Nagins objects en la lista per analisar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marcar objects sco cumprà per ver l\'analisa.';

  @override
  String get totalSpending => 'Total spender';

  @override
  String get spendingByCategory => 'Expensas per categoria';

  @override
  String get achievements => 'Reussitas';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar sco PDF';

  @override
  String get exportExcel => 'Exportar sco Excel';

  @override
  String get organizingAi => 'ORGANISAR CUN AI...';

  @override
  String get yesLabel => 'Gea';

  @override
  String get noLabel => 'Na';

  @override
  String get shareListText => 'Ma lista da cumpras';

  @override
  String get emptyListAddItems =>
      'Vossa lista è vita! Agiuntar objects l\'emprim.';

  @override
  String get listOrganizedMagic =>
      'La lista è vegnida organisada magicamain per categorias!';

  @override
  String get shoppingMode => 'Modus da cumpras';

  @override
  String get smartOrganization => 'Organisaziun intelligenta';

  @override
  String get savings => 'Spargns';

  @override
  String get shoppingModeHeader => 'MODUS DA CUMPRAS';

  @override
  String get shareAsText => 'Trametter objects sco text formatà';

  @override
  String get shareRealtime => 'Sincronisaziun en temp real cun autras persunas';

  @override
  String get quickRecipe => 'Recipe spert';

  @override
  String get quickRecipePrompt => 'Suggerir recipes cun objects da ma lista.';

  @override
  String get economyTips => 'Cussegls da spargn';

  @override
  String get economyTipsPrompt =>
      'Co poss jau spargnà daners sin questa cumprà?';

  @override
  String get organizeAisles => 'Organisar per curridors';

  @override
  String get organizeAislesPrompt => 'Organisar per curridors dal martgà.';

  @override
  String get recipeSuggestion => 'Suggestiun da recipe';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits restants';
  }

  @override
  String get addAllToList => 'Tut agiuntar a la lista';

  @override
  String get organizeByAisles => 'Organisar per curridors';

  @override
  String get voiceTranscriptionTooltip => 'Scriver cun la vusch (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Cumond vocal AI (Premium)';

  @override
  String get voiceCommandTitle => 'Cumond vocal AI';

  @override
  String get voiceCommandContent =>
      'Discurri natiralmain per administrar Vossa lista!\n\nExempels:\n• \'Agiuntar paun, chaschiel e charmella\'\n• \'Allontanar detergent\'\n• \'Midar il tema en blau\'\n\nQuai è ina funcziun exclusiva da KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Mussar plans';

  @override
  String get itemsAddedSuccess => 'Objects agiuntads cun success a la lista!';

  @override
  String get viewList => 'Mussar la lista';

  @override
  String get feedbackTitle => 'Trametter feedback';

  @override
  String get feedbackPrompt => 'Tge vuls ti cundivider?';

  @override
  String get feedbackTypeBug => 'Annunziar in error';

  @override
  String get feedbackTypeBugHint => 'Inzatge n\'è betg funcziunant';

  @override
  String get feedbackTypeSuggestion => 'Suggestiun';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per meglierar l\'app';

  @override
  String get feedbackTypeTranslation => 'Problem da translaziun';

  @override
  String get feedbackTypeTranslationHint =>
      'Translaziun nuncorrecta u maladretga';

  @override
  String get feedbackTypeFeature => 'Dumonda da funcziun';

  @override
  String get feedbackTypeFeatureHint => 'Funcziun che ti vuls veser';

  @override
  String get feedbackTypeOther => 'Auter';

  @override
  String get feedbackTypeOtherHint => 'Auter tip da feedback';

  @override
  String get feedbackHint => 'Descriver tes feedback detagliadamain...';

  @override
  String get feedbackSend => 'Trametter feedback';

  @override
  String get feedbackSending => 'Tramettend...';

  @override
  String get feedbackThankYou => 'Grazia fitg!';

  @override
  String get feedbackThankYouMessage =>
      'Tia feedback è vegnida retschavida e gida a meglierar KipiList per tuts.';

  @override
  String get feedbackBack => 'Enavos';

  @override
  String feedbackError(String error) {
    return 'Errur tramettend: $error';
  }

  @override
  String get feedbackRetry => 'Empruvar puspè';

  @override
  String get feedbackSettingsTitle => 'Trametter feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Annunziar errors, suggerir meglieraziuns u curregir translaziuns';

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
  String get shareAppDescription => 'Invite friends to use KipiList';

  @override
  String shareReferralText(String url) {
    return 'I\'m using KipiList to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of KipiList Premium!';

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
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(String error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

  @override
  String get backToToday => 'Back to today';

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get aiEnergyLow => 'Low AI energy';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 today';
  }

  @override
  String get aiSubscribeUnlimited => 'Subscribe for unlimited AI';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get conversationHistoryTitle => 'Conversation history';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

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
  String get customizeAiAssistant => 'Customize AI assistant';

  @override
  String get assistantHistory => 'Assistant history';

  @override
  String get assistantHistorySubtitle => 'View your conversation history';

  @override
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get customizeAssistant => 'Customize';

  @override
  String get assistantName => 'Assistant name';

  @override
  String get chooseIcon => 'Choose icon';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String get errorSavingProfile => 'Error saving: null';

  @override
  String get userProfile => 'User Profile';

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
  String get saveProfile => 'Save Profile';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed the list!';

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get suggestedItems => 'Suggested items';

  @override
  String get swapped => 'Swapped';

  @override
  String get swap => 'Swap';

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get manageCategoriesTitle => 'Manage Categories';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get newCategoryDialog => 'New category';

  @override
  String get editCategoryDialog => 'Edit category';

  @override
  String get categoryName => 'Category name';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get categoryColorLabel => 'Color';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String get kipiQuickBarHint => 'What do you need to buy?';

  @override
  String replaceItem(String item) {
    return 'Replace $item';
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
  String get onboardingHookHeadline => 'Never forget a grocery item again';

  @override
  String get onboardingGoalSaveMoney => 'Save money';

  @override
  String get onboardingGoalNeverForget => 'Never forget items';

  @override
  String get onboardingGoalFaster => 'Shop faster';

  @override
  String get onboardingGoalFamily => 'Organize family shopping';

  @override
  String get onboardingGoalRecipes => 'Discover recipes';

  @override
  String get onboardingGoalPantry => 'Track pantry';

  @override
  String get onboardingCommitmentsTitle => 'What matters to you?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Pick your goals to personalize KipiList';

  @override
  String get onboardingCommitmentsCta => 'Let\'s go!';

  @override
  String get onboardingPersonalizationNameLabel => 'Your name';

  @override
  String get onboardingPersonalizationNameHint => 'Enter your name';

  @override
  String get onboardingPersonalizationCategoryTitle => 'What do you shop for?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Who do you shop for?';

  @override
  String get onboardingCategoryGrocery => 'Groceries';

  @override
  String get onboardingCategoryPharmacy => 'Pharmacy';

  @override
  String get onboardingCategoryRecipes => 'Recipes';

  @override
  String get onboardingCategoryHome => 'Home';

  @override
  String get onboardingCategoryPet => 'Pet';

  @override
  String get onboardingGroupSolo => 'Just me';

  @override
  String get onboardingGroupCouple => 'Couple';

  @override
  String get onboardingGroupFamily => 'Family';

  @override
  String get onboardingLoadingTitle => 'Preparing your experience...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up AI assistant...';

  @override
  String get onboardingLoadingStep3 => 'Almost ready...';

  @override
  String get onboardingLoadingStat1Label => 'Items cataloged';

  @override
  String get onboardingLoadingStat2Label => 'Users helped';

  @override
  String get onboardingLoadingStat3Label => 'Minutes saved';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, save on every trip!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, never forget an item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, shop in half the time!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organize family shopping!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, discover new recipes!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, track your pantry perfectly!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Save on every trip!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Never forget an item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Shop in half the time!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organize family shopping!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Discover new recipes!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Track your pantry perfectly!';

  @override
  String paywallPricePerDay(String price) {
    return 'Only $price/day — less than a coffee';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Skip for now';

  @override
  String get paywallTestimonial =>
      'AI organizes my shopping in seconds. I save 20 min per trip.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancel anytime · No charge until your trial ends';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hey $name! What $category do you need?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'What $category do you need?';
  }

  @override
  String get onboardingAiDemoYes => 'Yes!';

  @override
  String get onboardingAiDemoReaction => 'Nice!';

  @override
  String get onboardingAiDemoChange => 'Change item';

  @override
  String get onboardingAiDemoOffer => 'Try typing something else!';

  @override
  String get onboardingAiDemoContinue => 'Continue';

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
