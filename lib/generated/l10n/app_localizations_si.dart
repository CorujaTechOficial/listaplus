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
  String get navChat => 'කතාබස් කරන්න';

  @override
  String get navRecipes => 'වට්ටෝරු';

  @override
  String get navLists => 'ලැයිස්තු';

  @override
  String get navMealPlanner => 'මෙනු';

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
  String get next => 'ඊළඟ';

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
  String get profile => 'පැතිකඩ';

  @override
  String get exitShoppingMode => 'සාප්පු සවාරි මාදිලියෙන් පිටවන්න';

  @override
  String get exit => 'පිටවීම';

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
  String get scanProductTitle => 'නිෂ්පාදනය ස්කෑන් කරන්න';

  @override
  String get positionBarcodeCenter => 'තීරු කේතය මධ්යයේ ස්ථානගත කරන්න';

  @override
  String get product => 'නිෂ්පාදනය';

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
  String get chooseLanguage => 'භාෂාව තෝරන්න';

  @override
  String get searchLanguage => 'භාෂාව සොයන්න...';

  @override
  String get currency => 'මුදල්';

  @override
  String get chooseCurrency => 'මුදල් තෝරන්න';

  @override
  String get searchCurrency => 'මුදල් සොයන්න...';

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
  String get dynamicColors => 'ගතික වර්ණ';

  @override
  String get dynamicColorsSubtitle => 'ඔබේ බිතුපත මත පදනම්ව වර්ණ භාවිතා කරන්න';

  @override
  String get dynamicColorsEnabledWarning =>
      'තේමා වර්ණය ක්‍රියාත්මක වීමට ගතික වර්ණ අක්‍රීය කරන්න';

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
  String get myAchievements => 'මගේ ජයග්රහණ';

  @override
  String get itemsPurchased => 'මිලදී ගත් භාණ්ඩ';

  @override
  String get totalSavings => 'මුළු ඉතුරුම්';

  @override
  String get currentStreak => 'වත්මන් ස්ට්රීක්';

  @override
  String streakDays(int count) {
    return '$days දින';
  }

  @override
  String get unlockedBadges => 'අගුළු හරින ලද ලාංඡන';

  @override
  String get badgeBeginner => 'ආරම්භකයා';

  @override
  String get badgeOrganized => 'සංවිධානය කර ඇත';

  @override
  String get badgeSavingMaster => 'සුරැකීමේ මාස්ටර්';

  @override
  String get badgeSuperPlanner => 'සුපිරි සැලසුම්කරු';

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
  String progressItemsOf(int purchased, int total) {
    return 'අයිතම $total න් $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'අයවැය: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'එකතුව: $amount';
  }

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
  String get newChat => 'නව කතාබස්';

  @override
  String get noHistory => 'කතාබස් ඉතිහාසයක් නැත';

  @override
  String get deleteSession => 'කතාබස් මකන්න';

  @override
  String get deleteSessionConfirm =>
      'ඔබට මෙම කතාබහ මැකීමට අවශ්‍ය බව විශ්වාසද? පණිවිඩ ස්ථිරවම නැති වී යයි.';

  @override
  String get clearHistory => 'ඉතිහාසය හිස් කරන්න';

  @override
  String get clearHistoryConfirm => 'මෙම සැසියේ සියලුම පණිවිඩ හිස් කරන්න?';

  @override
  String get chatHint => 'ඔබේ පණිවිඩය ටයිප් කරන්න...';

  @override
  String get chatHintBlocked => 'කතාබස් කිරීමට AI අගුළු හරින්න';

  @override
  String chatError(String error) {
    return 'කතාබහ පූරණය කිරීමේ දෝෂය: $error';
  }

  @override
  String get aiAssistantTitle => 'AI සහකාර';

  @override
  String get closeSheet => 'වසන්න';

  @override
  String get scanBarcodeTitle => 'තීරු කේතය පරිලෝකනය කරන්න';

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
  String get aiLimitAlmostReached => 'AI පණිවිඩ වලින් පාහේ';

  @override
  String get unlockAi => 'අසීමිත AI අගුළු හරින්න';

  @override
  String get aiTeaserFallback =>
      'සම්පූර්ණ ප්‍රතිචාරය අගුළු ඇරීමට සහ ඔබේ සාප්පු සවාරි සඳහා අසීමිත AI ඉඟි ලබා ගැනීමට Premium වෙත දායක වන්න...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ක්‍රියා මේ මාසයේ ඉතිරිව ඇත — අසීමිත සඳහා උත්ශ්‍රේණි කිරීම';
  }

  @override
  String get aiUsageExhausted =>
      'මාසික AI සීමාව ළඟා විය. අසීමිත → සඳහා Pro වෙත උත්ශ්‍රේණි කරන්න';

  @override
  String get kipiListTitle => 'කිපිලිස්ට්';

  @override
  String get loginPrompt => 'Premium විශේෂාංග\nඅගුළු ඇරීමට පුරනය වන්න';

  @override
  String get signInGoogle => 'Google සමඟ පුරනය වන්න';

  @override
  String get signInApple => 'Apple සමඟ පුරනය වන්න';

  @override
  String get continueAsGuest => 'ආගන්තුකයෙකු ලෙස ඉදිරියට යන්න';

  @override
  String get onboardingWelcomeTitle => 'KipiList වෙත සාදරයෙන් පිළිගනිමු';

  @override
  String get onboardingWelcomeDesc =>
      'ඔබේ සාප්පු සවාරි සංවිධානය කිරීමට සහ මුදල් ඉතිරි කිරීමට හොඳම ක්‍රමය.';

  @override
  String get onboardingSetupTitle => 'ඔබේ අත්දැකීම පුද්ගලීකරණය කරන්න';

  @override
  String get onboardingSetupDesc =>
      'ඔබට KipiList පෙනුම සහ ඔබ වෙනුවෙන් වැඩ කිරීමට අවශ්‍ය ආකාරය තෝරන්න.';

  @override
  String get onboardingLoginTitle => 'වලාකුළට සියල්ල සුරකින්න';

  @override
  String get onboardingLoginDesc =>
      'ඔබගේ සියලු උපාංග හරහා ඔබගේ දත්ත සමමුහුර්ත කර ඇත';

  @override
  String get onboardingShareTitle => 'ඔබ ආදරය කරන අය සමඟ බෙදා ගන්න';

  @override
  String get onboardingShareDesc =>
      'තථ්‍ය කාලය තුළ පවුලේ අය සහ මිතුරන් සමඟ ලැයිස්තු සමමුහුර්ත කරන්න';

  @override
  String get onboardingPremiumTitle => 'සියලුම විශේෂාංග අගුළු හරින්න';

  @override
  String get onboardingPremiumSubtitle =>
      'ඔබේ සාප්පු ලැයිස්තුවෙන් උපරිම ප්‍රයෝජන ලබා ගන්න';

  @override
  String get onboardingAnnualBadge => 'හොඳම වටිනාකම';

  @override
  String get onboardingMonthlyLabel => 'මාසිකව';

  @override
  String get onboardingAnnualLabel => 'වාර්ෂික';

  @override
  String get onboardingViewAllPlans => 'සියලුම සැලසුම් බලන්න';

  @override
  String get onboardingSubscribeCta => 'දායක වන්න';

  @override
  String get onboardingCancelAnytime =>
      'ඕනෑම වේලාවක අවලංගු කරන්න. කැපවීමක් නැහැ.';

  @override
  String get onboardingContinueAsGuest => 'ආගන්තුකයෙකු ලෙස ඉදිරියට යන්න';

  @override
  String get onboardingRestore => 'ප්‍රතිෂ්ඨාපනය කරන්න';

  @override
  String get onboardingRestoreDesc =>
      'දැනටමත් දායකත්වයක් තිබේද? එය ප්‍රතිසාධනය කිරීමට මෙහි තට්ටු කරන්න.';

  @override
  String get onboardingMaybeLater => 'සමහර විට පසුව';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'හේයි $name, ඔබේ සාප්පු සවාරි නිවැරදි ආකාරයෙන් සංවිධානය කරන්න.';
  }

  @override
  String get onboardingSlide1Title => 'ස්මාර්ට් සාප්පු සවාරි ලැයිස්තු';

  @override
  String get onboardingSlide1Body =>
      'ක්ෂණිකව ලැයිස්තු සාදන්න සහ බෙදා ගන්න. Kipi ඔබගේ පුරුදු මත පදනම්ව අයිතම ස්වයංක්‍රීයව එකතු කරයි.';

  @override
  String get onboardingSlide2Title => 'කිපි හමුවන්න';

  @override
  String get onboardingSlide2Body =>
      'ඕනෑම දෙයක් අසන්න - ලැයිස්තු සාදන්න, වට්ටෝරු සොයන්න, ඔබේ පැන්ට්රිය නිරීක්ෂණය කරන්න, ඔබේ සතිය සැලසුම් කරන්න.';

  @override
  String get onboardingSlide3Title => 'පැන්ට්රි සහ ආහාර සැලසුම් කිරීම';

  @override
  String get onboardingSlide3Body =>
      'ඔබ සතුව ඇති දේ නිරීක්ෂණය කරන්න, ආහාර සැලසුම් කරන්න, සහ ස්වයංක්‍රීයව සාප්පු ලැයිස්තු ජනනය කරන්න.';

  @override
  String get onboardingExit => 'පිටවෙන්න';

  @override
  String get onboardingPersonalizationTitle => 'අපි ඔබව දැන හඳුනා ගනිමු';

  @override
  String get onboardingPersonalizationDesc =>
      'අපි මෙය ඔබේ යෝජනා පෞද්ගලීකරණය කිරීමට සහ සාප්පු සවාරි වඩාත් දක්ෂ කිරීමට භාවිත කරන්නෙමු.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ඔබේ ප්රියතම කෑම කුමක්ද?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'උදා. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'දිගටම කරගෙන යන්න';

  @override
  String get onboardingPersonalizationSkip => 'දැනට මග හරින්න';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'දිගටම කරගෙන යාමට ඔබේ ප්‍රියතම ආහාරය අපට කියන්න';

  @override
  String get settingsDefaultScreen => 'පෙරනිමි මුල් තිරය';

  @override
  String get settingsDefaultScreenSubtitle =>
      'සාප්පු ලැයිස්තුව හෝ AI කතාබස් අතර තෝරන්න';

  @override
  String get settingsScreenList => 'සාප්පු ලැයිස්තුව';

  @override
  String get settingsScreenChat => 'AI කතාබස්';

  @override
  String loginError(String error) {
    return 'පුරනය වීමේ දෝෂය: $error';
  }

  @override
  String get paywallTitle => 'KipiList වාරිකය';

  @override
  String get paywallLoadingError =>
      'පිරිනැමීම් පූරණය කිරීමේ දෝෂයකි. නැවත උත්සාහ කරන්න.';

  @override
  String get paywallPurchaseError =>
      'මිලදී ගැනීම සම්පූර්ණ කිරීමට නොහැකි විය. නැවත උත්සාහ කරන්න.';

  @override
  String get paywallRestoreError =>
      'ප්‍රතිසාධනය කිරීමට සක්‍රිය දායකත්වයක් හමු නොවීය.';

  @override
  String paywallTrialDays(Object days) {
    return '$days දින නොමිලේ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count සති නොමිලේ',
      one: '$count සති නොමිලේ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count මාස නොමිලේ',
      one: '$count මාස නොමිලේ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'නොමිලේ උත්සාහ කරන්න!';

  @override
  String get paywallTrialSubtitle =>
      'ඕනෑම වේලාවක අවලංගු කරන්න. අද ගාස්තුවක් නැත.';

  @override
  String get paywallTrialCta => 'නොමිලේ අත්හදා බැලීම ආරම්භ කරන්න';

  @override
  String get recipeAddToList => 'සාප්පු ලැයිස්තුවට එක් කරන්න';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 $listName වෙත එක් කරන ලදී';
  }

  @override
  String get noListSelected =>
      'ලැයිස්තුවක් තෝරා නැත. මුලින්ම ලැයිස්තුවක් විවෘත කරන්න.';

  @override
  String get paywallFeaturesTitle => 'ඔබට අවශ්ය සියල්ල:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI ඔබගේ ලැයිස්තුව ස්වයංක්‍රීයව සංවිධානය කරයි';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'ඔබට අවශ්‍ය තරම් ලැයිස්තු සාදන්න';

  @override
  String get paywallFeatureDescSharing => 'තථ්‍ය කාලය තුළ එකට සාප්පු යන්න';

  @override
  String get paywallFeatureDescPantry => 'ඔබ නිවසේ ඇති දේ නිරීක්ෂණය කරන්න';

  @override
  String get paywallFeatureDescBudget => 'සෑම මසකම අයවැය මත රැඳී සිටින්න';

  @override
  String get paywallFeatureUnlimitedLists => 'අසීමිත ලැයිස්තු';

  @override
  String get paywallFeatureSmartAI => 'ස්මාර්ට් AI';

  @override
  String get paywallFeatureExpenseControl => 'වියදම් පාලනය';

  @override
  String get paywallFeatureSharing => 'බෙදාගැනීම';

  @override
  String get paywallBeforeAfterTitle => 'AI පෙර සහ පසු:';

  @override
  String get paywallLabelCommon => 'පොදු';

  @override
  String get paywallLabelPro => 'කිපිලිස්ට් PRO';

  @override
  String get paywallBeforeItem1 => 'සහල්';

  @override
  String get paywallBeforeItem2 => 'සබන්';

  @override
  String get paywallBeforeItem3 => 'මස්';

  @override
  String get paywallBeforeItem4 => 'පාන්';

  @override
  String get paywallAfterItem1 => 'ධාන්ය වර්ග';

  @override
  String get paywallAfterItem2 => 'පිරිසිදු කිරීම';

  @override
  String get paywallAfterItem3 => 'මස් වර්ග';

  @override
  String get paywallAfterItem4 => 'බේකරිය';

  @override
  String get paywallTestimonialsTitle => 'අපගේ පරිශීලකයින් පවසන දේ:';

  @override
  String get paywallTestimonial1Name => 'ඈන් එස්.';

  @override
  String get paywallTestimonial1Text =>
      'AI මගේ සාප්පු සවාරි තත්පර කිහිපයකින් සංවිධානය කරයි. මම වෙළඳපල සංචාරයකට මිනිත්තු 20ක් ඉතිරි කරමි.';

  @override
  String get paywallTestimonial2Name => 'චාල්ස් එම්.';

  @override
  String get paywallTestimonial2Text =>
      'මම නැවත කිසි දිනක ලැයිස්තු අයිතමයක් අමතක නොකළෙමි. AI කතාබස් සංවේදීයි!';

  @override
  String get paywallSocialProof => '+ පවුල් 2,400ක් එය භාවිතා කරයි';

  @override
  String get paywallCtaUnlock => 'PRO අගුළු හරින්න';

  @override
  String get paywallBestValue => 'හොඳම අගය';

  @override
  String get paywallMostPopular => 'වඩාත්ම ජනප්රිය';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'ආරක්ෂිත ගෙවීම';

  @override
  String get paywallSelectPlan => 'ඔබේ සැලැස්ම තෝරන්න:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% සුරකින්න';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/මාසයක් පමණි';
  }

  @override
  String get paywallPackageAnnual => 'වාර්ෂික සැලැස්ම';

  @override
  String get paywallPackageMonthly => 'මාසික සැලැස්ම';

  @override
  String get paywallPackageLifetime => 'ජීවිත කාලය ප්රවේශය';

  @override
  String get paywallCancelAnytime => 'ඕනෑම වේලාවක අවලංගු කරන්න. කැපවීමක් නැහැ.';

  @override
  String paywallTrialInCard(int days) {
    return 'පළමු $days දින නොමිලේ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play මගින් සුරක්ෂිත කර ඇත · ඕනෑම වේලාවක අවලංගු කරන්න';

  @override
  String get paywallPolicy => 'රහස්යතා ප්රතිපත්තිය';

  @override
  String get paywallTerms => 'භාවිත නියම';

  @override
  String get paywallRestore => 'ප්‍රතිෂ්ඨාපනය කරන්න';

  @override
  String get paywallHeroHeadline => 'Kipi AI සැමවිටම ඔබේ පැත්තේ';

  @override
  String get paywallHeroSubtitle =>
      'අයිතම එකතු කරන්න, ලැයිස්තු සංවිධානය කරන්න සහ ඔබේ සාක්කුවේ AI සමඟ කාලය ඉතිරි කරන්න';

  @override
  String get paywallBenefit1Desc =>
      'අයිතම 24/7 එකතු කිරීම, සංවිධානය කිරීම සහ යෝජනා කිරීම';

  @override
  String get paywallBenefit2Desc => '3-ලැයිස්තු සීමාවක් නැත';

  @override
  String get paywallBenefit3Desc => 'වියදම් ලුහුබැඳීම සහ පවුල් ලැයිස්තු';

  @override
  String get paywallPackageMonthlyDesc => 'සම්පූර්ණ නම්යශීලීභාවය';

  @override
  String paywallCtaTrialDays(int days) {
    return 'නොමිලේ ආරම්භ කරන්න — $days දින';
  }

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
      'ඔබේ ලැයිස්තුව කළමනාකරණය කිරීමට ස්වභාවිකව කතා කරන්න!\n\nඋදාහරණ:\n• \'පාන්, චීස් සහ හැම් එකතු කරන්න\'\n• \'රෙදි සෝදන ඩිටර්ජන්ට් ඉවත් කරන්න\'\n• \'තේමාව නිල් පැහැයට වෙනස් කරන්න\'\n\nමෙය KipiList Premium හි සුවිශේෂී විශේෂාංගයකි.';

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
      'ඔබේ ප්‍රතිපෝෂණය ලැබී ඇති අතර එය සැමට KipiList වැඩිදියුණු කිරීමට උපකාරී වේ.';

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
  String get aiEnergy => 'AI බලශක්ති';

  @override
  String get searchInConversation => 'සංවාදයේ සොයන්න...';

  @override
  String get noMessagesFound => 'පණිවිඩ කිසිවක් හමු නොවීය';

  @override
  String get suggestedQuestions => 'යෝජිත ප්‍රශ්න:';

  @override
  String get shoppingAssistant => 'සාප්පු සහායක';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total න් $purchased මිලදී ගන්නා ලදී';
  }

  @override
  String get estimatedCost => 'ඇස්තමේන්තු කර ඇත';

  @override
  String get viewItems => 'අයිතම බලන්න';

  @override
  String get noItemsInList => 'ලැයිස්තුවේ අයිතම නැත';

  @override
  String get longHistoryWarning =>
      'දිගු ඉතිහාසය: සහකරු වඩා හොඳ කාර්ය සාධනයක් සඳහා නවතම පණිවිඩ වෙත අවධානය යොමු කරයි.';

  @override
  String get listening => 'සවන් දෙනවා...';

  @override
  String get addDirectToList => 'ලැයිස්තුවට කෙලින්ම එකතු කරන්න';

  @override
  String get unlockFullResponse => 'සම්පූර්ණ ප්‍රතිචාරය අගුළු හරින්න';

  @override
  String get switchList => 'ලැයිස්තුව මාරු කරන්න';

  @override
  String get marketMode => 'වෙළඳපල මාදිලිය';

  @override
  String get backToChat => 'නැවත කතාබස් වෙත';

  @override
  String get finishShopping => 'සාප්පු සවාරි අවසන් කරන්න';

  @override
  String get welcomeAiAssistant => 'AI සහායක වෙත සාදරයෙන් පිළිගනිමු';

  @override
  String get createListToStartAi =>
      'ස්මාර්ට් කතාබස් භාවිතා කිරීම ආරම්භ කිරීමට සාප්පු ලැයිස්තුවක් සාදන්න.';

  @override
  String get howCanIHelp => 'මට උදව් කළ හැක්කේ කෙසේද?';

  @override
  String get chatSubtitleShort => 'මිල ගණන්, වට්ටෝරු, සංවිධානය ගැන විමසන්න...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total මිලදී ගන්නා ලදී';
  }

  @override
  String get quickReplies => 'ඉක්මන් පිළිතුරු:';

  @override
  String get voiceProFeature => 'උසස් හඬ විධාන Pro. මූලික නියෝග සබල කරමින්...';

  @override
  String get viewPro => 'Pro බලන්න';

  @override
  String get errorLoadingChat =>
      'අපොයි! කතාබහ පූරණය කිරීමේදී යම් දෝෂයක් සිදු විය.';

  @override
  String get errorLoadingChatSubtitle =>
      'ඔබගේ සම්බන්ධතාවය පරීක්ෂා කරන්න හෝ පසුව නැවත උත්සාහ කරන්න.';

  @override
  String get errorOscillation =>
      'ජාල දෝලනය හෝ තාවකාලික නොමැති වීම නිසා මෙය සිදු විය හැක. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get activeListening => 'ක්රියාකාරී සවන්දීම';

  @override
  String get whatToDoWithItem => 'ඔබ මෙම අයිතමය සමඟ කුමක් කිරීමට කැමතිද?';

  @override
  String get viewDetails => 'විස්තර බලන්න';

  @override
  String get openMenu => 'මෙනුව විවෘත කරන්න';

  @override
  String get viewRecipe => 'වට්ටෝරුව බලන්න';

  @override
  String get recipeCreated => 'වට්ටෝරුව සාදන ලදී!';

  @override
  String get editRecipe => 'සංස්කරණය කරන්න';

  @override
  String get deleteRecipe => 'මකන්න';

  @override
  String get deleteRecipeConfirm => 'මෙම වට්ටෝරුව මකන්නද?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'ඔබට \"$recipeName\" මැකීමට අවශ්‍ය බව විශ්වාසද? මෙම ක්‍රියාව පසුගමනය කළ නොහැක.';
  }

  @override
  String get ingredients => 'අමුද්රව්ය';

  @override
  String get instructions => 'උපදෙස්';

  @override
  String get prepTime => 'සූදානම් වීමේ කාලය';

  @override
  String get recipeSaved => 'වට්ටෝරුව සුරකින ලදි!';

  @override
  String get noRecipesSaved => 'වට්ටෝරු කිසිවක් සුරකින ලදී';

  @override
  String get noRecipesSavedHint =>
      'පහත බොත්තම තට්ටු කිරීමෙන් ඔබේ පළමු අභිරුචි වට්ටෝරුව සාදන්න.';

  @override
  String get myRecipes => 'මගේ වට්ටෝරු';

  @override
  String get newRecipe => 'නව වට්ටෝරුව';

  @override
  String get loadingRecipes => 'ඔබේ වට්ටෝරු පූරණය කරමින්...';

  @override
  String get errorLoadingRecipes => 'වට්ටෝරු පූරණය කිරීමේ දෝෂයකි';

  @override
  String get addIngredient => 'අමුද්රව්ය එකතු කරන්න';

  @override
  String get saveRecipe => 'සුරකින්න';

  @override
  String get recipeName => 'වට්ටෝරුව නම';

  @override
  String get shortDescription => 'කෙටි විස්තරය';

  @override
  String get prepTimeMinutes => 'සූදානම් වීමේ කාලය (විනාඩි)';

  @override
  String get instructionsHint => 'පේළියකට එක් පියවරක් ටයිප් කරන්න...';

  @override
  String get addPhoto => 'ඡායාරූපය එක් කරන්න';

  @override
  String get imageUrlPlaceholder => 'නැතහොත් පින්තුර URL එකක් අලවන්න';

  @override
  String get tags => 'ටැග්';

  @override
  String get recipeTags => 'වට්ටෝරු ටැග්';

  @override
  String get suggestedTags => 'යෝජනා කර ඇත';

  @override
  String get searchRecipes => 'වට්ටෝරු සොයන්න...';

  @override
  String get filterByTag => 'ටැගය අනුව පෙරන්න';

  @override
  String get allTags => 'සියල්ල';

  @override
  String get recipeDeleted => 'වට්ටෝරුව මකා ඇත';

  @override
  String get saveChanges => 'වෙනස්කම් සුරකින්න';

  @override
  String get editRecipeTitle => 'වට්ටෝරුව සංස්කරණය කරන්න';

  @override
  String get newRecipeTitle => 'නව වට්ටෝරුව';

  @override
  String get requiredField => 'අවශ්යයි';

  @override
  String get chooseImageSource => 'රූප මූලාශ්‍රය තෝරන්න';

  @override
  String get gallery => 'ගැලරිය';

  @override
  String get enterUrl => 'URL ඇතුලත් කරන්න';

  @override
  String get recipeImage => 'වට්ටෝරු රූපය';

  @override
  String get removeImage => 'රූපය ඉවත් කරන්න';

  @override
  String get mealPlannerTitle => 'ආහාර සැලසුම්කරු';

  @override
  String get mealPlannerViewMonthly => 'මාසික දසුන';

  @override
  String get mealPlannerViewWeekly => 'සතිපතා දසුන';

  @override
  String get mealPlannerNoMeals => 'ආහාර වේලක් සැලසුම් කර නැත';

  @override
  String get mealPlannerNoMealsHint =>
      'ආහාර වේලක් එක් කිරීමට දිනකට තට්ටු කරන්න';

  @override
  String get mealPlannerLoading => 'ආහාර සැලැස්ම පූරණය කරමින්...';

  @override
  String get mealPlannerError => 'ආහාර සැලැස්ම පූරණය කිරීමේ දෝෂයකි';

  @override
  String get mealPlannerAddMeal => 'කෑම එකතු කරන්න';

  @override
  String get mealPlannerEditMeal => 'ආහාර සංස්කරණය කරන්න';

  @override
  String get mealPlannerDeleteMeal => 'ආහාර ඉවත් කරන්න';

  @override
  String get mealPlannerMealDeleted => 'ආහාර ඉවත් කර ඇත';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count සේවා',
      one: '$count සේවය',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'සේවා';

  @override
  String get mealPlannerNoteLabel => 'සටහන (විකල්ප)';

  @override
  String get mealPlannerSelectRecipe => 'වට්ටෝරුවක් තෝරන්න';

  @override
  String get mealPlannerSearchRecipes => 'වට්ටෝරු සොයන්න...';

  @override
  String get mealPlannerNoRecipesFound => 'වට්ටෝරු හමු නොවීය';

  @override
  String get mealPlannerNoRecipesHint =>
      'මුලින්ම වට්ටෝරු පටිත්තෙහි වට්ටෝරු සාදන්න';

  @override
  String get mealPlannerSave => 'සැලැස්මට එකතු කරන්න';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total ආහාර වේල් වලින් $count සැලසුම් කර ඇත';
  }

  @override
  String get mealPlannerGenerateList => 'සාප්පු සවාරි ලැයිස්තුවක් සාදන්න';

  @override
  String get mealPlannerGenerateListConfirm =>
      'මේ සතියේ සැලසුම් කළ ආහාරවලින් සියලුම අමුද්‍රව්‍ය ඔබේ සාප්පු ලැයිස්තුවට එක් කරන්නද?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count අමුද්‍රව්‍ය(ය) ඔබගේ ලැයිස්තුවට එක් කර ඇත!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'එකතු කිරීමට අමුද්‍රව්‍ය නැත. මුලින්ම වට්ටෝරු සමඟ සමහර ආහාර සැලසුම් කරන්න.';

  @override
  String get mealPlannerGenerateListNoList =>
      'මුලින්ම සාප්පු ලැයිස්තුවක් සාදන්න.';

  @override
  String get mealPlannerMealTypeBreakfast => 'උදෑසන ආහාරය';

  @override
  String get mealPlannerMealTypeLunch => 'දිවා ආහාරය';

  @override
  String get mealPlannerMealTypeDinner => 'රාත්රී ආහාරය';

  @override
  String get mealPlannerMealTypeSnack => 'ස්නැක්';

  @override
  String get mealPlannerDateLabel => 'දිනය';

  @override
  String get mealPlannerWeekEmpty => 'මෙම සතිය සඳහා කිසිවක් සැලසුම් කර නැත';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ඔබේ ආහාර වේල සැලසුම් කිරීම ආරම්භ කිරීමට ඕනෑම දිනක තට්ටු කරන්න!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes මිනි';
  }

  @override
  String get inviteToList => 'ලැයිස්තුවට ආරාධනා කරන්න';

  @override
  String get shareApp => 'යෙදුම බෙදාගන්න';

  @override
  String get shareAppDescription =>
      'KipiList භාවිතා කිරීමට මිතුරන්ට ආරාධනා කරන්න';

  @override
  String shareReferralText(String url) {
    return 'මම මගේ සාප්පු සවාරි සංවිධානය කිරීමට KipiList භාවිතා කරමි! මගේ සබැඳිය හරහා බාගන්න, අපි දෙදෙනාටම දින 7ක වාරික නොමිලේ: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium දින 7ක් ලබා ගන්න!';

  @override
  String get gestureHint =>
      'තේරීමට අල්ලාගෙන සිටින්න • ඉවත් කිරීමට ස්වයිප් කරන්න';

  @override
  String get catalogTitle => 'නාමාවලිය';

  @override
  String get catalogMyFrequents => 'මගේ නිතර නිතර';

  @override
  String get catalogSearchGlobal => 'ඕනෑම නිෂ්පාදනයක් සොයන්න...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category හි සොයන්න...';
  }

  @override
  String get catalogSortPopular => 'වඩාත්ම ජනප්රියයි';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'ජාතිකයන්';

  @override
  String get catalogRareSection => 'ඔබේ රටේ අඩු පොදු';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → එක් කරන්න';
  }

  @override
  String get catalogProductNotFound => 'නිෂ්පාදනය හමු නොවීය, නම ටයිප් කරන්න';

  @override
  String get catalogBrowse => 'නාමාවලිය පිරික්සන්න';

  @override
  String get offlineBanner => 'ඔබ නොබැඳිය';

  @override
  String get consentTitle => 'පෞද්ගලිකත්වය සහ විශ්ලේෂණ';

  @override
  String get consentBody =>
      'KipiList ඔබේ අත්දැකීම වැඩිදියුණු කිරීමට Firebase Analytics භාවිත කරයි. ඔබගේ දත්ත අපගේ රහස්‍යතා ප්‍රතිපත්තියට අනුව සකසනු ලැබේ.';

  @override
  String get consentAccept => 'පිළිගන්න';

  @override
  String get consentDecline => 'නැ ස්තුතියි';

  @override
  String get mealPlannerPantryAllAvailable => 'සියලුම අමුද්රව්ය ලබා ගත හැකිය';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 අතුරුදහන්';
  }

  @override
  String get expirationDate => 'කල්පිරෙන දිනය';

  @override
  String get notInformed => 'සකසා නැත';

  @override
  String get skip => 'මඟ හරින්න';

  @override
  String get onboardingAiTitle => 'කිපි සමඟ කතාබස් කරන්න';

  @override
  String get onboardingAiGreeting =>
      'ආයුබෝවන්! මම කිපි, ඔබේ පුද්ගලික සාප්පු සහායකයා! 🛒';

  @override
  String get onboardingAiAskName => 'ඔයාගේ නම කුමක් ද?';

  @override
  String get onboardingAiNameHint => 'ඔබේ නම ටයිප් කරන්න...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'ඔබව හමුවීම සතුටක්, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'ඔබේ ප්රියතම කෑම කුමක්ද?';

  @override
  String get onboardingAiFoodHint => 'උදා. පීසා, සුෂි...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'විශිෂ්ට තේරීම්! මෙන්න මම ඔබේ ලැයිස්තුවට එකතු කරන දේ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'මේක හොඳට පේනවද? වෙනත් දෙයක් ටයිප් කිරීමට උත්සාහ කරන්න!';

  @override
  String get onboardingAiReady =>
      'නියමයි! ඔබ ආරම්භ කිරීමට සූදානම්. අපි ඔබගේ ගිණුම සකසමු!';

  @override
  String get onboardingAiContinue => 'දිගටම →';

  @override
  String get connectionError => 'සම්බන්ධතා දෝෂය';

  @override
  String connectionErrorDesc(String error) {
    return 'සේවාදායකයට සම්බන්ධ වීමට නොහැකි විය. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'ලැයිස්තු පූරණය කිරීමේ දෝෂයකි';

  @override
  String get noListsFound => 'ලැයිස්තු හමු නොවීය';

  @override
  String get backToToday => 'අදට ආපසු';

  @override
  String get quickSuggestions => 'ඉක්මන් යෝජනා';

  @override
  String get aiEnergyLow => 'අඩු AI ශක්තිය';

  @override
  String get aiUnlockUnlimited => 'අසීමිත AI අගුළු හරින්න';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return 'අද $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => 'අසීමිත AI සඳහා දායක වන්න';

  @override
  String get unlockWithAd => 'දැන්වීම සමඟ අගුළු ඇරීම';

  @override
  String get conversationHistoryTitle => 'සංවාද ඉතිහාසය';

  @override
  String get noConversationsFound => 'සංවාද හමු නොවිණි';

  @override
  String get errorLoadingHistory => 'ඉතිහාසය පූරණය කිරීමේ දෝෂයකි';

  @override
  String get deleteConversationTitle => 'සංවාදය මකන්නද?';

  @override
  String get deleteConversationConfirm => 'මෙම ක්‍රියාව පසුගමනය කළ නොහැක.';

  @override
  String get deleteConversation => 'මකන්න';

  @override
  String get subscription => 'දායකත්වය';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'අසීමිත ලැයිස්තු, AI සහ තවත් දේ අගුළු හරින්න';

  @override
  String get loadingSubscription => 'දායකත්වය පූරණය කරමින්...';

  @override
  String get errorLoadingSubscription => 'දායකත්වය පූරණය කිරීමේ දෝෂයකි';

  @override
  String get profileSection => 'පැතිකඩ';

  @override
  String get myProfile => 'මගේ පැතිකඩ';

  @override
  String get profileSubtitle => 'AI සහායක සඳහා පුද්ගලික මනාප';

  @override
  String get customizeAiAssistant => 'AI සහායක අභිරුචිකරණය කරන්න';

  @override
  String get assistantHistory => 'සහකාර ඉතිහාසය';

  @override
  String get assistantHistorySubtitle => 'ඔබගේ සංවාද ඉතිහාසය බලන්න';

  @override
  String get manageCategories => 'කාණ්ඩ කළමනාකරණය කරන්න';

  @override
  String get manageCategoriesSubtitle => 'අයිතම කාණ්ඩ කළමනාකරණය කරන්න';

  @override
  String get customizeAssistant => 'අභිරුචිකරණය කරන්න';

  @override
  String get assistantName => 'සහකාර නම';

  @override
  String get chooseIcon => 'නිරූපකය තෝරන්න';

  @override
  String get profileSaved => 'පැතිකඩ සාර්ථකව සුරකින ලදී!';

  @override
  String get errorSavingProfile => 'සුරැකීමේ දෝෂයකි: null';

  @override
  String get userProfile => 'පරිශීලක පැතිකඩ';

  @override
  String get profileDescription =>
      'AI සහායකයාට පෞද්ගලීකරණය කළ අයිතම සහ වට්ටෝරු යෝජනා කළ හැකි පරිදි ඔබේ පුද්ගලික මනාපයන් අපට කියන්න.';

  @override
  String get preferredMarket => 'කැමති වෙළෙඳපොළ';

  @override
  String get preferredMarketHint => 'උදා: Supermarket X';

  @override
  String get dietaryRestrictions => 'ආහාර සීමා කිරීම්';

  @override
  String get dietaryRestrictionsHint => 'උදා: වීගන්, නිර්මාංශ, ග්ලූටන් රහිත';

  @override
  String get marketsToAvoid => 'වළක්වා ගත යුතු වෙළඳපල';

  @override
  String get marketsToAvoidHint => 'උදා: Market Y, Market Z';

  @override
  String get observations => 'සටහන්';

  @override
  String get observationsHint => 'සහායක සඳහා වෙනත් මනාප';

  @override
  String get saveProfile => 'පැතිකඩ සුරකින්න';

  @override
  String get everythingReady => 'සියල්ල සූදානම්!';

  @override
  String get youCompletedList => 'ඔබ ලැයිස්තුව සම්පූර්ණ කළා!';

  @override
  String get selectCheaperAlternative =>
      'පිරිවැය ප්‍රශස්ත කිරීම සඳහා ලාභදායී නිෂ්පාදන විකල්පයක් තෝරන්න.';

  @override
  String get suggestedItems => 'යෝජිත අයිතම';

  @override
  String get swapped => 'මාරු කළා';

  @override
  String get swap => 'හුවමාරු කරන්න';

  @override
  String get chooseThemeColor => 'තේමා වර්ණය තෝරන්න';

  @override
  String get manageCategoriesTitle => 'කාණ්ඩ කළමනාකරණය කරන්න';

  @override
  String get categoryLimitReached =>
      'නිදහස් අනුවාදය මත වර්ග 10 සීමාව. Pro වෙත උත්ශ්‍රේණි කරන්න!';

  @override
  String get deleteCategoryTitle => 'ප්‍රවර්ගය මකන්න';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" කාණ්ඩයේ අයිතම \"අනෙකුත්\" වෙත ගෙන යනු ඇත.\nදිගටම කරගෙන යන්නද?';
  }

  @override
  String get deleteCategory => 'මකන්න';

  @override
  String get newCategoryDialog => 'නව කාණ්ඩය';

  @override
  String get editCategoryDialog => 'ප්‍රවර්ගය සංස්කරණය කරන්න';

  @override
  String get categoryName => 'කාණ්ඩයේ නම';

  @override
  String get categoryNameHint => 'උදා: මස් වර්ග';

  @override
  String get categoryColorLabel => 'වර්ණය';

  @override
  String get categoryIconLabel => 'නිරූපකය';

  @override
  String itemAddedSnack(String name) {
    return '$name එකතු කරන ලදී';
  }

  @override
  String get kipiQuickBarHint => 'ඔබ මිලදී ගැනීමට අවශ්ය කුමක්ද?';

  @override
  String replaceItem(String item) {
    return '$item ප්‍රතිස්ථාපනය කරන්න';
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
      'සිල්ලර බඩුවක් ආයේ කවදාවත් අමතක කරන්න එපා';

  @override
  String get onboardingGoalSaveMoney => 'මුදල් ඉතිරි කරන්න';

  @override
  String get onboardingGoalNeverForget => 'අයිතම කිසි විටෙකත් අමතක නොකරන්න';

  @override
  String get onboardingGoalFaster => 'ඉක්මනින් සාප්පු යන්න';

  @override
  String get onboardingGoalFamily => 'පවුලේ සාප්පු සවාරි සංවිධානය කරන්න';

  @override
  String get onboardingGoalRecipes => 'වට්ටෝරු සොයා ගන්න';

  @override
  String get onboardingGoalPantry => 'ට්‍රැක් පැන්ට්‍රිය';

  @override
  String get onboardingCommitmentsTitle => 'ඔබට වැදගත් වන්නේ කුමක්ද?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList පෞද්ගලීකරණය කිරීමට ඔබේ ඉලක්ක තෝරන්න';

  @override
  String get onboardingCommitmentsCta => 'අපි යමු!';

  @override
  String get onboardingPersonalizationNameLabel => 'ඔයාගේ නම';

  @override
  String get onboardingPersonalizationNameHint => 'ඔබගේ නම ඇතුලත් කරන්න';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'ඔබ සාප්පු යන්නේ කුමක් සඳහාද?';

  @override
  String get onboardingPersonalizationGroupTitle => 'ඔබ සාප්පු යන්නේ කාටද?';

  @override
  String get onboardingCategoryGrocery => 'සිල්ලර බඩු';

  @override
  String get onboardingCategoryPharmacy => 'ෆාමසිය';

  @override
  String get onboardingCategoryRecipes => 'වට්ටෝරු';

  @override
  String get onboardingCategoryHome => 'නිවස';

  @override
  String get onboardingCategoryPet => 'සුරතල්';

  @override
  String get onboardingGroupSolo => 'මා පමණයි';

  @override
  String get onboardingGroupCouple => 'යුවලක්';

  @override
  String get onboardingGroupFamily => 'පවුල';

  @override
  String get onboardingLoadingTitle => 'ඔබේ අත්දැකීම සූදානම් කරමින්...';

  @override
  String get onboardingLoadingStep1 => 'ඔබේ මනාප විශ්ලේෂණය කරමින්...';

  @override
  String get onboardingLoadingStep2 => 'AI සහායක පිහිටුවීම...';

  @override
  String get onboardingLoadingStep3 => 'බොහෝ දුරට සූදානම් ...';

  @override
  String get onboardingLoadingStat1Label => 'අයිතම ලැයිස්තුගත කර ඇත';

  @override
  String get onboardingLoadingStat2Label => 'පරිශීලකයන් උදව් කළා';

  @override
  String get onboardingLoadingStat3Label => 'මිනිත්තු ඉතිරි කර ඇත';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, සෑම සංචාරයකදීම ඉතිරි කරන්න!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, අයිතමයක් අමතක නොකරන්න!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, අඩකින් සාප්පු යන්න!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, පවුලේ සාප්පු සවාරි සංවිධානය කරන්න!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, නව වට්ටෝරු සොයා ගන්න!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ඔබේ පැන්ට්රිය හොඳින් නිරීක්ෂණය කරන්න!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'සෑම සංචාරයකදීම ඉතිරි කරන්න!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'අයිතමයක් කිසිදා අමතක නොකරන්න!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'කාලයෙන් අඩකින් සාප්පු යන්න!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'පවුලේ සාප්පු සවාරි සංවිධානය කරන්න!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'නව වට්ටෝරු සොයා ගන්න!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'ඔබේ පැන්ට්රිය හොඳින් නිරීක්ෂණය කරන්න!';

  @override
  String paywallPricePerDay(String price) {
    return 'දිනකට $price පමණි - කෝපි එකකට වඩා අඩුය';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'දැනට මග හරින්න';

  @override
  String get paywallTestimonial =>
      'AI මගේ සාප්පු සවාරි තත්පර කිහිපයකින් සංවිධානය කරයි. මම එක් ගමනකට මිනිත්තු 20ක් ඉතිරි කරමි.';

  @override
  String get paywallTestimonialAuthor => 'ඈන් එස්.';

  @override
  String get paywallTrialDisclaimer =>
      'ඕනෑම වේලාවක අවලංගු කරන්න · ඔබේ අත්හදා බැලීම අවසන් වන තුරු ගාස්තුවක් අය නොකෙරේ';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'හේ $name! ඔබට අවශ්‍ය $category මොනවාද?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'ඔබට අවශ්‍ය $category මොනවාද?';
  }

  @override
  String get onboardingAiDemoYes => 'ඔව්!';

  @override
  String get onboardingAiDemoReaction => 'නියමයි!';

  @override
  String get onboardingAiDemoChange => 'අයිතමය වෙනස් කරන්න';

  @override
  String get onboardingAiDemoOffer => 'වෙනත් දෙයක් ටයිප් කිරීමට උත්සාහ කරන්න!';

  @override
  String get onboardingAiDemoContinue => 'දිගටම කරගෙන යන්න';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'ඔබගේ සාප්පු ලැයිස්තුව, දැන් AI සමඟින්';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi තත්පර කිහිපයකින් ඔබේ සම්පූර්ණ ලැයිස්තුව ගොඩනඟන ආකාරය බලන්න';

  @override
  String get onboardingAiDemoSlideCta => 'මට මේක ඕන! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'මම බාබකියු එකක් හොස්ට් කරනවා 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'සූදානම්! ඔබට අවශ්‍ය සියල්ල මෙන්න:';

  @override
  String get onboardingAiDemoSlideDone =>
      'තත්පර කිහිපයකින් ලැයිස්තුව සම්පූර්ණ කරන්න ✨';

  @override
  String get onboardingPainTitle => 'ඔබව වඩාත්ම කලකිරීමට පත් කරන්නේ කුමක්ද?';

  @override
  String get onboardingPainSubtitle => 'අවංක වන්න - අපි එක එක නිවැරදි කරන්නෙමු';

  @override
  String get onboardingPainCta => 'ඔව්, මට මේක හදන්න →';

  @override
  String get onboardingPainForget => 'මට කඩේ තියෙන දේවල් අමතකයි';

  @override
  String get onboardingPainFamily =>
      'මගේ පවුලේ අය කවදාවත් ලැයිස්තුව බලන්නේ නැහැ';

  @override
  String get onboardingPainOverspend => 'මම හැම විටම අයවැය ඉක්මවා යනවා';

  @override
  String get onboardingPainRepeat => 'එක් සංචාරයක් කිසිසේත් ප්රමාණවත් නොවේ';

  @override
  String get aiWelcomeContent =>
      'ආයුබෝවන්! 👋 මම **කිපි**, ඔබේ පුද්ගලික සාප්පු සවාරි සහ වට්ටෝරු සහායකයා!\n\nමම ඔබට උදව් කිරීමට මෙහි සිටිමි:\n🛒 **ඔබගේ සාප්පු සවාරි ස්වයංක්‍රීයව කාණ්ඩ අනුව සංවිධානය කරන්න\n💰 **ඔබේ අයවැය ලුහුබැඳ ගොස් ඔබට මුදල් ඉතුරුම් ඉඟි ලබා දෙන්න\n🍲 **යෝජනා කරන්න** ඔබට දැනටමත් ඇති දේ සමඟ රසවත් වට්ටෝරු\n\nඅද මම ඔබට උදව් කරන්නේ කෙසේද? ඔබේ පළමු ලැයිස්තුව නිර්මාණය කිරීමෙන් ඔබට ආරම්භ කළ හැක!';

  @override
  String get aiWelcomeSuggestCreateList => 'මගේ පළමු ලැයිස්තුව සාදන්න';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'කිපි, මගේ පළමු සාප්පු ලැයිස්තුව සෑදීමට මට උදව් කරන්න';

  @override
  String get aiWelcomeSuggestSave => 'මුදල් ඉතිරි කරන්නේ කෙසේද?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'කිපි, සිල්ලර බඩු සඳහා මුදල් ඉතිරි කිරීමට ඔබ මට උදව් කරන්නේ කෙසේද?';

  @override
  String get suggestionMilk => 'කිරි';

  @override
  String get suggestionBread => 'පාන්';

  @override
  String get suggestionEggs => 'බිත්තර';

  @override
  String get suggestionCoffee => 'කෝපි';

  @override
  String get suggestionRice => 'සහල්';

  @override
  String get suggestionFruits => 'පළතුරු';
}
