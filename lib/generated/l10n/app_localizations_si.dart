// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'සාප්පු ලැයිස්තුව';

  @override
  String get lists => 'ලැයිස්තු';

  @override
  String get pantry => 'පැන්ට්‍රිය';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get save => 'සුරකින්න';

  @override
  String get create => 'සාදන්න';

  @override
  String get add => 'එකතු කරන්න';

  @override
  String get remove => 'ඉවත් කරන්න';

  @override
  String get delete => 'මකන්න';

  @override
  String get edit => 'සංස්කරණය කරන්න';

  @override
  String get copy => 'පිටපත් කරන්න';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get regenerate => 'නැවත උත්පාදනය කරන්න';

  @override
  String get copiedToClipboard => 'ක්ලිප්බෝඩ් එකට පිටපත් කරන ලදී';

  @override
  String get confirm => 'තහවුරු කරන්න';

  @override
  String get close => 'වසන්න';

  @override
  String get import => 'ආයාත කරන්න';

  @override
  String get rename => 'නම වෙනස් කරන්න';

  @override
  String get upgrade => 'උත්ශ්‍රේණි කරන්න';

  @override
  String get clear => 'හිස් කරන්න';

  @override
  String error(String message) {
    return 'දෝෂය: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'දෝෂය: $message';
  }

  @override
  String get purchaseError => 'ගෙවීම සැකසීමේ දෝෂයකි. නැවත උත්සාහ කරන්න.';

  @override
  String get restoreError =>
      'ගෙවීම් ප්‍රතිෂ්ඨාපනය කිරීමේ දෝෂයකි. නැවත උත්සාහ කරන්න.';

  @override
  String get loading => 'පූරණය වෙමින්...';

  @override
  String get fieldRequired => 'අවශ්‍ය ක්ෂේත්‍රය';

  @override
  String get addedFeedback => 'එකතු කරන ලදී!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count තෝරා ඇත',
      one: '$count තෝරා ඇත',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ඇස්තමේන්තුගත';

  @override
  String get alreadyPurchased => 'දැනටමත් මිලදී ගෙන ඇත';

  @override
  String get clearList => 'ලැයිස්තුව හිස් කරන්න';

  @override
  String get clearPurchased => 'මිලදී ගත් දේ හිස් කරන්න';

  @override
  String get share => 'බෙදා ගන්න';

  @override
  String get shareViaCode => 'කේතයක් මගින් බෙදා ගන්න';

  @override
  String get importViaCode => 'කේතයක් මගින් ආයාත කරන්න';

  @override
  String get listAssistant => 'ලැයිස්තු සහායක';

  @override
  String get globalAssistant => 'ගෝලීය සහායක';

  @override
  String get becomePremium => 'Premium වන්න';

  @override
  String get manageSubscription => 'දායකත්වය කළමනාකරණය කරන්න';

  @override
  String get completePurchase => 'ගෙවීම සම්පූර්ණ කරන්න';

  @override
  String get confirmClearList => 'සියලුම අයිතම ඉවත් කරන්න?';

  @override
  String get shareListTitle => 'ලැයිස්තුව බෙදා ගන්න';

  @override
  String get shareThisCode => 'මෙම කේතය බෙදා ගන්න:';

  @override
  String get validForLimitedTime => 'සීමිත කාලයක් සඳහා වලංගු වේ';

  @override
  String get importListTitle => 'ලැයිස්තුව ආයාත කරන්න';

  @override
  String get enterCodeHint => 'කේතය ඇතුළත් කරන්න';

  @override
  String get confirmArchiveTitle => 'ගෙවීම සම්පූර්ණ කරන්න';

  @override
  String get confirmArchiveContent =>
      'මෙම ගෙවීම සම්පූර්ණ කර ලැයිස්තුව සංරක්ෂණය කරන්න?';

  @override
  String get complete => 'සම්පූර්ණ කරන්න';

  @override
  String get listArchived => 'ලැයිස්තුව සාර්ථකව සංරක්ෂණය කරන ලදී!';

  @override
  String listAdded(String listName) {
    return '$listName එකතු කරන ලදී!';
  }

  @override
  String get buy => 'මිලදී ගන්න';

  @override
  String get unmark => 'සලකුණු ඉවත් කරන්න';

  @override
  String confirmDeleteItems(int count) {
    return '$count අයිතම(ය) ඉවත් කරන්න?';
  }

  @override
  String get confirmDeleteTitle => 'තහවුරු කරන්න';

  @override
  String confirmContent(int count) {
    return '$count අයිතම(ය) ඉවත් කරන්න?';
  }

  @override
  String get archiveList => 'ලැයිස්තුව සංරක්ෂණය කරන්න';

  @override
  String get pantryAppBar => 'පැන්ට්‍රිය';

  @override
  String get generateShoppingList => 'සාප්පු ලැයිස්තුවක් සාදන්න';

  @override
  String get pantryEmpty => 'හිස් පැන්ට්‍රිය';

  @override
  String get pantryEmptySubtitle =>
      'ගෙදර තබා ගැනීමට අවශ්‍ය නිෂ්පාදන එකතු කරන්න';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit අයිතම(ය) මිලදී ගැනීමට අවශ්‍යයි';
  }

  @override
  String get noItemsToBuy => 'මිලදී ගැනීමට අවශ්‍ය අයිතම නැත';

  @override
  String get newPantryList => 'පැන්ට්‍රි සාප්පු';

  @override
  String get newListTitle => 'නව සාප්පු ලැයිස්තුව';

  @override
  String itemsWillBeAdded(int count) {
    return '$count අයිතම(ය) එකතු කරනු ඇත';
  }

  @override
  String get listNameLabel => 'ලැයිස්තු නම';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" ලැයිස්තුව අයිතම $count ක් සමඟ සාදන ලදී';
  }

  @override
  String get noTracking => 'ලුහුබැඳීමක් නැත';

  @override
  String get markAsPurchased => 'මිලදී ගත් ලෙස සලකුණු කරන්න';

  @override
  String editPantryItem(String name) {
    return '$name සංස්කරණය කරන්න';
  }

  @override
  String get idealQuantity => 'සුදුසු ප්‍රමාණය';

  @override
  String get currentQuantity => 'වත්මන් ප්‍රමාණය';

  @override
  String get consumed => 'පරිභෝජනය කරන ලදී';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit දක්වා නැවත ගබඩා කරන ලදී';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" පැන්ට්‍රියෙන් ඉවත් කරන්න?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name සංස්කරණය කරන්න';
  }

  @override
  String get settingsAppBar => 'සැකසුම්';

  @override
  String get language => 'භාෂාව';

  @override
  String get languagePortuguese => 'පෘතුගීසි (බ්‍රසීලය)';

  @override
  String get languageEnglish => 'ඉංග්‍රීසි';

  @override
  String get languageSystem => 'පද්ධති පෙරනිමිය';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'පෙනුම';

  @override
  String get light => 'ආලෝකය';

  @override
  String get system => 'පද්ධතිය';

  @override
  String get dark => 'අඳුරු';

  @override
  String get themeColor => 'තේමා වර්ණය';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'මුදල්';

  @override
  String get monthlyBudgetNav => 'මාසික අයවැය';

  @override
  String get budgetSubtitle => 'ඔබේ මාසික වියදම් නිරීක්ෂණය කරන්න';

  @override
  String get data => 'දත්ත';

  @override
  String get backupNav => 'උපස්ථය';

  @override
  String get backupSubtitle => 'ඔබේ දත්ත අපනයනය හෝ ආයාත කරන්න';

  @override
  String get about => 'පිළිබඳව';

  @override
  String get version => 'අනුවාදය';

  @override
  String get privacy => 'රහස්‍යතාව';

  @override
  String get termsOfUse => 'භාවිත කොන්දේසි';

  @override
  String get backupTitle => 'උපස්ථය';

  @override
  String get backupPremiumDescription => 'උපස්ථය සහ අපනයනය Premium විශේෂාංගයකි';

  @override
  String get exportData => 'දත්ත අපනයනය කරන්න';

  @override
  String get exportDataSubtitle => 'සියලුම ලැයිස්තු JSON ලෙස සුරකින්න';

  @override
  String get importData => 'දත්ත ආයාත කරන්න';

  @override
  String get importDataSubtitle => 'JSON වෙතින් ලැයිස්තු ප්‍රතිෂ්ඨාපනය කරන්න';

  @override
  String get importJsonTitle => 'JSON ආයාත කරන්න';

  @override
  String get importJsonHint => 'උපස්ථ JSON මෙහි අලවන්න...';

  @override
  String get backupExported => 'උපස්ථය අපනයනය කරන ලදී!';

  @override
  String get budgetAppBar => 'මාසික අයවැය';

  @override
  String get budgetPremiumLocked => 'ගෝලීය මාසික අයවැය Premium වේ';

  @override
  String get budgetUpgradePrompt => 'අගුළු ඇරීමට උත්ශ්‍රේණි කරන්න';

  @override
  String get noBudgetDefined => 'අයවැයක් සකසා නැත';

  @override
  String totalEstimated(String amount) {
    return 'ඇස්තමේන්තුගත එකතුව: $amount';
  }

  @override
  String get setBudgetButton => 'අයවැය සකසන්න';

  @override
  String get budgetLists => 'ලැයිස්තු';

  @override
  String get budgetValueLabel => 'මුදල';

  @override
  String get setBudgetTitle => 'මාසික අයවැය';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'සියල්ල';

  @override
  String get filterPending => 'විසඳීමට ඇති';

  @override
  String get filterPurchased => 'මිලදී ගත්';

  @override
  String get sortName => 'නම';

  @override
  String get sortCategory => 'ප්‍රවර්ගය';

  @override
  String get sortDate => 'දිනය';

  @override
  String get sortManual => 'අතින්';

  @override
  String get addItem => 'අයිතමය එකතු කරන්න';

  @override
  String get itemName => 'අයිතමයේ නම';

  @override
  String get quantityShort => 'ප්‍රමාණය';

  @override
  String get unit => 'ඒකකය';

  @override
  String get category => 'ප්‍රවර්ගය';

  @override
  String get estimatedPrice => 'ඇස්තමේන්තුගත මිල';

  @override
  String get addItemPrice => 'ඇස්තමේන්තුගත මිල';

  @override
  String get editItem => 'අයිතමය සංස්කරණය කරන්න';

  @override
  String get quantityFull => 'ප්‍රමාණය';

  @override
  String get editItemPrice => 'ඇස්තමේන්තුගත මිල';

  @override
  String get addToPantry => 'පැන්ට්‍රියට එකතු කරන්න';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ඔබේ පැන්ට්‍රියට එකතු කරන්න?';
  }

  @override
  String get yes => 'ඔව්';

  @override
  String get productName => 'නිෂ්පාදන නම';

  @override
  String get idealQty => 'සුදුසු ප්‍රමාණය';

  @override
  String get currentQty => 'වත්මන් ප්‍රමාණය';

  @override
  String get trackStock => 'තොග නිරීක්ෂණය කරන්න';

  @override
  String get trackStockActive => 'සාප්පු යෝජනා වල දිස් වේ';

  @override
  String get trackStockInactive => 'සාප්පු යෝජනා උත්පාදනය නොකරයි';

  @override
  String get createListDialog => 'ලැයිස්තුව සාදන්න';

  @override
  String get renameListDialog => 'ලැයිස්තුව නම් වෙනස් කරන්න';

  @override
  String get listHistory => 'ලැයිස්තු ඉතිහාසය';

  @override
  String get myLists => 'මගේ ලැයිස්තු';

  @override
  String get viewActive => 'සක්‍රීය බලන්න';

  @override
  String get viewHistory => 'ඉතිහාසය බලන්න';

  @override
  String get noArchivedLists => 'සංරක්ෂිත ලැයිස්තු නැත';

  @override
  String get noActiveLists => 'සක්‍රීය ලැයිස්තු නැත';

  @override
  String completedOn(String date) {
    return '$date දින සම්පූර්ණ කරන ලදී';
  }

  @override
  String get sharedLabel => 'බෙදාගත්';

  @override
  String get restore => 'ප්‍රතිෂ්ඨාපනය කරන්න';

  @override
  String get removeSharedTooltip => 'ඉවත් කරන්න';

  @override
  String get deleteListTitle => 'ලැයිස්තුව මකන්න';

  @override
  String deleteListContent(String name) {
    return 'ඔබට \"$name\" මැකීමට විශ්වාසද? සියලුම අයිතම ඉවත් කරනු ඇත.';
  }

  @override
  String get removeSharedListTitle => 'බෙදාගත් ලැයිස්තුව ඉවත් කරන්න';

  @override
  String removeSharedListContent(String name) {
    return 'ඔබේ ලැයිස්තු වලින් \"$name\" ඉවත් කරන්න? මුල් ලැයිස්තුවට බලපෑමක් නැත.';
  }

  @override
  String get createNewList => 'නව ලැයිස්තුවක් සාදන්න';

  @override
  String get aiAssistant => 'AI සහායක';

  @override
  String get aiAssistantDescription =>
      'අපගේ AI සහායක සමඟ බුද්ධිමත් යෝජනා, වට්ටෝරු සහ පුද්ගලානුකූල ඉඟි ලබා ගන්න.';

  @override
  String get generalAssistant => 'සාමාන්‍ය සහායක';

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
  String get clearHistory => 'ඉතිහාසය හිස් කරන්න';

  @override
  String get clearHistoryConfirm => 'මෙම සැසියේ සියලුම පණිවිඩ හිස් කරන්න?';

  @override
  String get chatHint => 'ඔබේ පණිවිඩය ටයිප් කරන්න...';

  @override
  String chatError(String error) {
    return 'කතාබහ පූරණය කිරීමේ දෝෂය: $error';
  }

  @override
  String get listHelp => 'මට ඔබේ ලැයිස්තුවට උදව් කළ හැක්කේ කෙසේද?';

  @override
  String get generalHelp => 'අද ඔබේ සාප්පුවට මට උදව් කළ හැක්කේ කෙසේද?';

  @override
  String get chatSubtitle =>
      'අයිතම යෝජනා, වට්ටෝරු හෝ ඉතිරි කිරීමේ ඉඟි සඳහා විමසන්න.';

  @override
  String get aiError =>
      'කණගාටුයි, ඔබේ ඉල්ලීම සැකසීමේදී දෝෂයක් ඇති විය. ඔබේ සම්බන්ධතාවය පරීක්ෂා කරන්න හෝ පසුව නැවත උත්සාහ කරන්න.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium විශේෂාංග\nඅගුළු ඇරීමට පුරනය වන්න';

  @override
  String get signInGoogle => 'Google සමඟ පුරනය වන්න';

  @override
  String get signInApple => 'Apple සමඟ පුරනය වන්න';

  @override
  String get continueAsGuest => 'ආගන්තුකයෙකු ලෙස ඉදිරියට යන්න';

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
    return 'පුරනය වීමේ දෝෂය: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'අගුළු ඇරීමට උත්ශ්‍රේණි කරන්න';

  @override
  String get itemRemoved => 'අයිතමය ඉවත් කරන ලදී';

  @override
  String get undo => 'අහෝසි කරන්න';

  @override
  String get emptyListTitle => 'ඔබේ ලැයිස්තුව හිස්ය';

  @override
  String get emptyListSubtitle => 'ආරම්භ කිරීමට අයිතම එකතු කරන්න';

  @override
  String get noListFoundTitle => 'ලැයිස්තු හමු නොවීය';

  @override
  String get noListFoundSubtitle => 'ආරම්භ කිරීමට ඔබේ පළමු ලැයිස්තුව සාදන්න';

  @override
  String get createFirstList => 'පළමු ලැයිස්තුව සාදන්න';

  @override
  String get listBudgetTitle => 'ලැයිස්තු අයවැය';

  @override
  String get budgetAmountLabel => 'අයවැය මුදල';

  @override
  String get removeBudget => 'ඉවත් කරන්න';

  @override
  String get prefUnlimitedLists => 'අසීමිත ලැයිස්තු';

  @override
  String get prefSharing => 'ලැයිස්තු බෙදා ගන්න';

  @override
  String get prefFullHistory => 'සම්පූර්ණ ඉතිහාසය';

  @override
  String get prefExportData => 'දත්ත අපනයනය කරන්න';

  @override
  String get prefCustomThemes => 'අභිරුචි තේමා';

  @override
  String get prefMonthlyBudget => 'ගෝලීය මාසික අයවැය';

  @override
  String get prefAIAssistant => 'පුද්ගලික AI සහායක';

  @override
  String get prefUnlimitedPantry => 'අසීමිත පැන්ට්‍රිය';

  @override
  String get prefInteractiveArtifacts => 'අන්තර්ක්‍රියාකාරී AI කෘති';

  @override
  String get themeGreen => 'කොළ';

  @override
  String get themeBlue => 'නිල්';

  @override
  String get themePurple => 'දම්';

  @override
  String get themeRed => 'රතු';

  @override
  String get themeOrange => 'තැඹිලි';

  @override
  String get themePink => 'රෝස';

  @override
  String get themeIndigo => 'ඉන්ඩිගෝ';

  @override
  String get themeAmber => 'ඇම්බර්';

  @override
  String get themeTeal => 'ටීල්';

  @override
  String get themeBrown => 'දුඹුරු';

  @override
  String get catFruits => 'පලතුරු';

  @override
  String get catCleaning => 'පිරිසිදු කිරීම';

  @override
  String get catBeverages => 'බීම වර්ග';

  @override
  String get catBakery => 'බේකරි';

  @override
  String get catOthers => 'වෙනත්';

  @override
  String get unitPack => 'පැක්';

  @override
  String get shareSubject => 'සාප්පු ලැයිස්තුව';

  @override
  String get monthlyBudgetTitle => 'මාසික අයවැය';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ලැයිස්තුව මකන්න';

  @override
  String get pantryItemRemoved => 'අයිතමය ඉවත් කරන ලදී';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit අයිතම මිලදී ගැනීමට අවශ්‍යයි',
      one: '$deficit අයිතමය මිලදී ගැනීමට අවශ්‍යයි',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'කරත්ත එකතුව';

  @override
  String get restockLabel => 'නැවත ගබඩා කරන්න';

  @override
  String get advancedFeatures => 'උසස් විශේෂාංග';

  @override
  String get selectAll => 'සියල්ල තෝරන්න';

  @override
  String get deselectAll => 'සියල්ල තේරීම් ඉවත් කරන්න';

  @override
  String get monthlyBudgetAppBar => 'මාසික අයවැය';

  @override
  String get budgetEditTitle => 'මාසික අයවැය';

  @override
  String get budgetDashboardTitle => 'උපකරණ පුවරුව';

  @override
  String get selectListForDashboard =>
      'උපකරණ පුවරුව බැලීමට ලැයිස්තුවක් තෝරන්න.';

  @override
  String get spendingAnalysis => 'වියදම් විශ්ලේෂණය';

  @override
  String get noItemsToAnalyze => 'විශ්ලේෂණය කිරීමට ලැයිස්තුවේ අයිතම නැත.';

  @override
  String get markItemsToSeeAnalysis =>
      'විශ්ලේෂණය බැලීමට අයිතම මිලදී ගත් ලෙස සලකුණු කරන්න.';

  @override
  String get totalSpending => 'මුළු වියදම';

  @override
  String get spendingByCategory => 'ප්‍රවර්ගය අනුව වියදම්';

  @override
  String get achievements => 'ජයග්‍රහණ';

  @override
  String get exportPdfExcel => 'PDF/Excel අපනයනය කරන්න';

  @override
  String get exportPdf => 'PDF ලෙස අපනයනය කරන්න';

  @override
  String get exportExcel => 'Excel ලෙස අපනයනය කරන්න';

  @override
  String get organizingAi => 'AI සමඟ සංවිධානය කරමින්...';

  @override
  String get yesLabel => 'ඔව්';

  @override
  String get noLabel => 'නැත';

  @override
  String get shareListText => 'මගේ සාප්පු ලැයිස්තුව';

  @override
  String get emptyListAddItems =>
      'ඔබේ ලැයිස්තුව හිස්ය! පළමුව අයිතම එකතු කරන්න.';

  @override
  String get listOrganizedMagic =>
      'ලැයිස්තුව ප්‍රවර්ග අනුව මායාකාරීව සංවිධානය කරන ලදී!';

  @override
  String get shoppingMode => 'සාප්පු ප්‍රකාරය';

  @override
  String get smartOrganization => 'බුද්ධිමත් සංවිධානය';

  @override
  String get savings => 'ඉතුරුම්';

  @override
  String get shoppingModeHeader => 'සාප්පු ප්‍රකාරය';

  @override
  String get shareAsText => 'අයිතම ආකෘතිගත පෙළ ලෙස යවන්න';

  @override
  String get shareRealtime => 'වෙනත් පුද්ගලයින් සමඟ තාත්වික කාල සමමුහුර්තකරණය';

  @override
  String get quickRecipe => 'ඉක්මන් වට්ටෝරුව';

  @override
  String get quickRecipePrompt =>
      'මගේ ලැයිස්තුවේ ඇති අයිතම සමඟ වට්ටෝරු යෝජනා කරන්න.';

  @override
  String get economyTips => 'ඉතිරි කිරීමේ ඉඟි';

  @override
  String get economyTipsPrompt =>
      'මෙම මිලදී ගැනීමේදී මම මුදල් ඉතිරි කරන්නේ කෙසේද?';

  @override
  String get organizeAisles => 'කොරිඩෝ අනුව සංවිධානය කරන්න';

  @override
  String get organizeAislesPrompt => 'වෙළඳපල කොරිඩෝ අනුව සංවිධානය කරන්න.';

  @override
  String get recipeSuggestion => 'වට්ටෝරු යෝජනාව';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ණය ඉතිරිව ඇත';
  }

  @override
  String get addAllToList => 'සියල්ල ලැයිස්තුවට එකතු කරන්න';

  @override
  String get organizeByAisles => 'කොරිඩෝ අනුව සංවිධානය කරන්න';

  @override
  String get voiceTranscriptionTooltip => 'හඬ ටයිප් කිරීම (නොමිලේ)';

  @override
  String get aiVoiceCommandTooltip => 'AI හඬ විධානය (Premium)';

  @override
  String get voiceCommandTitle => 'AI හඬ විධානය';

  @override
  String get voiceCommandContent =>
      'ඔබේ ලැයිස්තුව කළමනාකරණය කිරීමට ස්වභාවිකව කතා කරන්න!\n\nඋදාහරණ:\n• \'පාන්, චීස් සහ හැම් එකතු කරන්න\'\n• \'රෙදි සෝදන ඩිටර්ජන්ට් ඉවත් කරන්න\'\n• \'තේමාව නිල් පැහැයට වෙනස් කරන්න\'\n\nමෙය Lista Plus Premium හි සුවිශේෂී විශේෂාංගයකි.';

  @override
  String get voiceCommandPlanBtn => 'සැලසුම් බලන්න';

  @override
  String get itemsAddedSuccess => 'අයිතම සාර්ථකව ලැයිස්තුවට එකතු කරන ලදී!';

  @override
  String get viewList => 'ලැයිස්තුව බලන්න';

  @override
  String get feedbackTitle => 'ප්‍රතිපෝෂණය යවන්න';

  @override
  String get feedbackPrompt => 'ඔබ බෙදා ගැනීමට කැමති කුමක්ද?';

  @override
  String get feedbackTypeBug => 'දෝෂය වාර්තා කරන්න';

  @override
  String get feedbackTypeBugHint => 'යමක් නිවැරදිව ක්‍රියා නොකරයි';

  @override
  String get feedbackTypeSuggestion => 'යෝජනාව';

  @override
  String get feedbackTypeSuggestionHint => 'යෙදුම වැඩිදියුණු කිරීමට අදහස';

  @override
  String get feedbackTypeTranslation => 'පරිවර්තන ගැටලුව';

  @override
  String get feedbackTypeTranslationHint => 'වැරදි හෝ අපහසු පරිවර්තනයක්';

  @override
  String get feedbackTypeFeature => 'විශේෂාංග ඉල්ලීම';

  @override
  String get feedbackTypeFeatureHint => 'ඔබට දැකීමට අවශ්‍ය විශේෂාංගය';

  @override
  String get feedbackTypeOther => 'වෙනත්';

  @override
  String get feedbackTypeOtherHint => 'වෙනත් ආකාරයේ ප්‍රතිපෝෂණය';

  @override
  String get feedbackHint => 'ඔබේ ප්‍රතිපෝෂණය විස්තරාත්මකව විස්තර කරන්න...';

  @override
  String get feedbackSend => 'ප්‍රතිපෝෂණය යවන්න';

  @override
  String get feedbackSending => 'යවමින්...';

  @override
  String get feedbackThankYou => 'ඔබට ස්තුතියි!';

  @override
  String get feedbackThankYouMessage =>
      'ඔබේ ප්‍රතිපෝෂණය ලැබී ඇති අතර එය සැමට Lista Plus වැඩිදියුණු කිරීමට උපකාරී වේ.';

  @override
  String get feedbackBack => 'ආපසු';

  @override
  String feedbackError(String error) {
    return 'යැවීමේ දෝෂය: $error';
  }

  @override
  String get feedbackRetry => 'නැවත උත්සාහ කරන්න';

  @override
  String get feedbackSettingsTitle => 'ප්‍රතිපෝෂණය යවන්න';

  @override
  String get feedbackSettingsSubtitle =>
      'දෝෂ වාර්තා කරන්න, වැඩිදියුණු කිරීම් යෝජනා කරන්න, හෝ පරිවර්තන නිවැරදි කරන්න';

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
