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
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get paywallCtaTrial => 'Start My Free Trial';

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
  String shareReferralText(Object url) {
    return 'මම මගේ සාප්පු සවාරි සංවිධානය කිරීමට KipiList භාවිතා කරමි! මගේ සබැඳිය හරහා බාගන්න, අපි දෙදෙනාටම දින 7ක වාරික නොමිලේ: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium දින 7ක් ලබා ගන්න!';
}
