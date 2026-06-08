// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
  String get onboardingRestore => 'Restore Purchases';

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
    return 'Login error: $error';
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
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

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
  String get paywallHeroHeadline => 'Kipi without limits';

  @override
  String get paywallHeroSubtitle =>
      'Unlimited AI, full planning and family lists — all in one app';

  @override
  String get paywallBenefit1Desc =>
      'No action limits. Kipi always available to act.';

  @override
  String get paywallBenefit2Desc => 'Shared lists with the people you love';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
  }

  @override
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in Australia (`en_AU`).
class AppLocalizationsEnAu extends AppLocalizationsEn {
  AppLocalizationsEnAu() : super('en_AU');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in Canada (`en_CA`).
class AppLocalizationsEnCa extends AppLocalizationsEn {
  AppLocalizationsEnCa() : super('en_CA');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in India (`en_IN`).
class AppLocalizationsEnIn extends AppLocalizationsEn {
  AppLocalizationsEnIn() : super('en_IN');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in Singapore (`en_SG`).
class AppLocalizationsEnSg extends AppLocalizationsEn {
  AppLocalizationsEnSg() : super('en_SG');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Select language';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

  @override
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}

/// The translations for English, as used in South Africa (`en_ZA`).
class AppLocalizationsEnZa extends AppLocalizationsEn {
  AppLocalizationsEnZa() : super('en_ZA');

  @override
  String get appTitle => 'Shopping List';

  @override
  String get lists => 'Lists';

  @override
  String get pantry => 'Pantry';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get navLists => 'Lists';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get copy => 'Copy';

  @override
  String get next => 'Next';

  @override
  String get retry => 'Retry';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Rename';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Clear';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error processing purchase. Try again.';

  @override
  String get restoreError => 'Error restoring purchases. Try again.';

  @override
  String get loading => 'Loading...';

  @override
  String get fieldRequired => 'Required field';

  @override
  String get addedFeedback => 'Added!';

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
      other: '$count selected',
      one: '$count selected',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimated';

  @override
  String get alreadyPurchased => 'Already purchased';

  @override
  String get clearList => 'Clear list';

  @override
  String get clearPurchased => 'Clear purchased';

  @override
  String get share => 'Share';

  @override
  String get shareViaCode => 'Share via code';

  @override
  String get importViaCode => 'Import via code';

  @override
  String get listAssistant => 'List assistant';

  @override
  String get globalAssistant => 'Global assistant';

  @override
  String get becomePremium => 'Become Premium';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get completePurchase => 'Complete purchase';

  @override
  String get confirmClearList => 'Remove all items?';

  @override
  String get shareListTitle => 'Share List';

  @override
  String get shareThisCode => 'Share this code:';

  @override
  String get validForLimitedTime => 'Valid for limited time';

  @override
  String get importListTitle => 'Import List';

  @override
  String get enterCodeHint => 'Enter the code';

  @override
  String get confirmArchiveTitle => 'Complete Purchase';

  @override
  String get confirmArchiveContent =>
      'Complete this purchase and archive the list?';

  @override
  String get complete => 'Complete';

  @override
  String get listArchived => 'List archived successfully!';

  @override
  String listAdded(String listName) {
    return '$listName added!';
  }

  @override
  String get buy => 'Buy';

  @override
  String get unmark => 'Unmark';

  @override
  String confirmDeleteItems(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirm';

  @override
  String confirmContent(int count) {
    return 'Remove $count item(s)?';
  }

  @override
  String get archiveList => 'Archive list';

  @override
  String get pantryAppBar => 'Pantry';

  @override
  String get generateShoppingList => 'Generate shopping list';

  @override
  String get pantryEmpty => 'Empty pantry';

  @override
  String get pantryEmptySubtitle => 'Add products you want to keep at home';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) need to be bought';
  }

  @override
  String get noItemsToBuy => 'No items need to be bought';

  @override
  String get newPantryList => 'Pantry Shopping';

  @override
  String get newListTitle => 'New Shopping List';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) will be added';
  }

  @override
  String get listNameLabel => 'List name';

  @override
  String listCreated(String name, int count) {
    return 'List \"$name\" created with $count items';
  }

  @override
  String get noTracking => 'No tracking';

  @override
  String get markAsPurchased => 'Mark as purchased';

  @override
  String editPantryItem(String name) {
    return 'Edit $name';
  }

  @override
  String get idealQuantity => 'Ideal quantity';

  @override
  String get currentQuantity => 'Current quantity';

  @override
  String get consumed => 'Consumed';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name restocked to $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remove \"$name\" from pantry?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edit $name';
  }

  @override
  String get settingsAppBar => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'System default';

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
  String get appearance => 'Appearance';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dark';

  @override
  String get themeColor => 'Theme color';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Monthly budget';

  @override
  String get budgetSubtitle => 'Track your monthly spending';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Export or import your data';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup and export is a premium feature';

  @override
  String get exportData => 'Export data';

  @override
  String get exportDataSubtitle => 'Save all lists as JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Restore lists from a JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Paste the backup JSON here...';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String get budgetAppBar => 'Monthly Budget';

  @override
  String get budgetPremiumLocked => 'Global monthly budget is premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade to unlock';

  @override
  String get noBudgetDefined => 'No budget set';

  @override
  String totalEstimated(String amount) {
    return 'Total estimated: $amount';
  }

  @override
  String get setBudgetButton => 'Set budget';

  @override
  String get budgetLists => 'Lists';

  @override
  String get budgetValueLabel => 'Amount';

  @override
  String get setBudgetTitle => 'Monthly Budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterPending => 'Pending';

  @override
  String get filterPurchased => 'Purchased';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Category';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Add Item';

  @override
  String get itemName => 'Item name';

  @override
  String get quantityShort => 'Qty';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Category';

  @override
  String get estimatedPrice => 'Estimated price';

  @override
  String get addItemPrice => 'Estimated price';

  @override
  String get editItem => 'Edit Item';

  @override
  String get quantityFull => 'Quantity';

  @override
  String get editItemPrice => 'Estimated price';

  @override
  String get addToPantry => 'Add to Pantry';

  @override
  String addToPantryPrompt(String name) {
    return 'Add \"$name\" to your Pantry?';
  }

  @override
  String get yes => 'Yes';

  @override
  String get productName => 'Product name';

  @override
  String get idealQty => 'Ideal qty';

  @override
  String get currentQty => 'Current qty';

  @override
  String get trackStock => 'Track stock';

  @override
  String get trackStockActive => 'Appears in shopping suggestions';

  @override
  String get trackStockInactive => 'Does not generate shopping suggestion';

  @override
  String get createListDialog => 'Create List';

  @override
  String get renameListDialog => 'Rename List';

  @override
  String get listHistory => 'List History';

  @override
  String get myLists => 'My Lists';

  @override
  String get viewActive => 'View Active';

  @override
  String get viewHistory => 'View History';

  @override
  String get noArchivedLists => 'No archived lists';

  @override
  String get noActiveLists => 'No active lists';

  @override
  String completedOn(String date) {
    return 'Completed on $date';
  }

  @override
  String get sharedLabel => 'Shared';

  @override
  String get restore => 'Restore';

  @override
  String get removeSharedTooltip => 'Remove';

  @override
  String get deleteListTitle => 'Delete list';

  @override
  String deleteListContent(String name) {
    return 'Are you sure you want to delete \"$name\"? All items will be removed.';
  }

  @override
  String get removeSharedListTitle => 'Remove shared list';

  @override
  String removeSharedListContent(String name) {
    return 'Remove \"$name\" from your lists? The original list will not be affected.';
  }

  @override
  String get createNewList => 'Create new list';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Get smart suggestions, recipes and personalized tips with our AI assistant.';

  @override
  String get generalAssistant => 'General Assistant';

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
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm => 'Clear all messages in this session?';

  @override
  String get chatHint => 'Type your message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Error loading chat: $error';
  }

  @override
  String get listHelp => 'How can I help with your list?';

  @override
  String get generalHelp => 'How can I help with your shopping today?';

  @override
  String get chatSubtitle =>
      'Ask for item suggestions, recipes or saving tips.';

  @override
  String get aiError =>
      'Sorry, an error occurred processing your request. Check your connection or try again later.';

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
  String get loginPrompt => 'Log in to unlock\npremium features';

  @override
  String get signInGoogle => 'Sign in with Google';

  @override
  String get signInApple => 'Sign in with Apple';

  @override
  String get continueAsGuest => 'Continue as guest';

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
    return 'Login error: $error';
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
  String get premiumUpgrade => 'Upgrade to unlock';

  @override
  String get itemRemoved => 'Item removed';

  @override
  String get undo => 'Undo';

  @override
  String get emptyListTitle => 'Your list is empty';

  @override
  String get emptyListSubtitle => 'Add items to get started';

  @override
  String get noListFoundTitle => 'No lists found';

  @override
  String get noListFoundSubtitle => 'Create your first list to get started';

  @override
  String get createFirstList => 'Create First List';

  @override
  String get listBudgetTitle => 'List Budget';

  @override
  String get budgetAmountLabel => 'Budget amount';

  @override
  String get removeBudget => 'Remove';

  @override
  String get prefUnlimitedLists => 'Unlimited lists';

  @override
  String get prefSharing => 'Share lists';

  @override
  String get prefFullHistory => 'Full history';

  @override
  String get prefExportData => 'Export data';

  @override
  String get prefCustomThemes => 'Custom themes';

  @override
  String get prefMonthlyBudget => 'Global monthly budget';

  @override
  String get prefAIAssistant => 'Personal AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Unlimited pantry';

  @override
  String get prefInteractiveArtifacts => 'Interactive AI Artifacts';

  @override
  String get themeGreen => 'Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeRed => 'Red';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Pink';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Brown';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Cleaning';

  @override
  String get catBeverages => 'Beverages';

  @override
  String get catBakery => 'Bakery';

  @override
  String get catOthers => 'Others';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Shopping List';

  @override
  String get monthlyBudgetTitle => 'Monthly Budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Delete list';

  @override
  String get pantryItemRemoved => 'Item removed';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items need to be bought',
      one: '$deficit item needs to be bought',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Cart total';

  @override
  String get restockLabel => 'Restock';

  @override
  String get advancedFeatures => 'Advanced features';

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get monthlyBudgetAppBar => 'Monthly Budget';

  @override
  String get budgetEditTitle => 'Monthly Budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Select a list to view the dashboard.';

  @override
  String get spendingAnalysis => 'Spending Analysis';

  @override
  String get noItemsToAnalyze => 'No items in the list to analyze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Mark items as purchased to see the analysis.';

  @override
  String get totalSpending => 'Total Spent';

  @override
  String get spendingByCategory => 'Spending by Category';

  @override
  String get achievements => 'Achievements';

  @override
  String get exportPdfExcel => 'Export PDF/Excel';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportExcel => 'Export as Excel';

  @override
  String get organizingAi => 'ORGANIZING WITH AI...';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'My Shopping List';

  @override
  String get emptyListAddItems => 'Your list is empty! Add items first. ℹ️';

  @override
  String get listOrganizedMagic => 'List magically organized by categories! ✨';

  @override
  String get shoppingMode => 'Shopping Mode';

  @override
  String get smartOrganization => 'Smart Organization';

  @override
  String get savings => 'Savings';

  @override
  String get shoppingModeHeader => 'SHOPPING MODE';

  @override
  String get shareAsText => 'Send items as formatted text';

  @override
  String get shareRealtime => 'Real-time sync with other people';

  @override
  String get quickRecipe => 'Quick recipe';

  @override
  String get quickRecipePrompt => 'Suggest recipes with items from my list.';

  @override
  String get economyTips => 'Economy tips';

  @override
  String get economyTipsPrompt => 'How can I save money on this purchase?';

  @override
  String get organizeAisles => 'Organize by aisles';

  @override
  String get organizeAislesPrompt => 'Organize by market aisles.';

  @override
  String get recipeSuggestion => 'Recipe suggestion';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits remaining';
  }

  @override
  String get addAllToList => 'Add all to list';

  @override
  String get organizeByAisles => 'Organize by aisles';

  @override
  String get voiceTranscriptionTooltip => 'Voice typing (Free)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'View Plans';

  @override
  String get itemsAddedSuccess => 'Items successfully added to list!';

  @override
  String get viewList => 'View list';

  @override
  String get feedbackTitle => 'Send Feedback';

  @override
  String get feedbackPrompt => 'What would you like to share?';

  @override
  String get feedbackTypeBug => 'Report Bug';

  @override
  String get feedbackTypeBugHint => 'Something is not working';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idea to improve the app';

  @override
  String get feedbackTypeTranslation => 'Translation Issue';

  @override
  String get feedbackTypeTranslationHint => 'Incorrect or awkward translation';

  @override
  String get feedbackTypeFeature => 'Feature Request';

  @override
  String get feedbackTypeFeatureHint => 'Feature you would like to see';

  @override
  String get feedbackTypeOther => 'Other';

  @override
  String get feedbackTypeOtherHint => 'Other type of feedback';

  @override
  String get feedbackHint => 'Describe your feedback in detail...';

  @override
  String get feedbackSend => 'Send Feedback';

  @override
  String get feedbackSending => 'Sending...';

  @override
  String get feedbackThankYou => 'Thank You!';

  @override
  String get feedbackThankYouMessage =>
      'Your feedback has been received and helps us improve KipiList for everyone.';

  @override
  String get feedbackBack => 'Back';

  @override
  String feedbackError(String error) {
    return 'Error sending: $error';
  }

  @override
  String get feedbackRetry => 'Try again';

  @override
  String get feedbackSettingsTitle => 'Send Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Report bugs, suggest improvements, or fix translations';

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
  String shareReferralText(Object url) {
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
}
