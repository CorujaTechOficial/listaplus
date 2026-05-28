// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'စျေးဝယ်စာရင်း';

  @override
  String get lists => 'စာရင်းများ';

  @override
  String get pantry => 'စားသိုက်ခန်း';

  @override
  String get cancel => 'ပယ်ဖျက်';

  @override
  String get save => 'သိမ်းဆည်း';

  @override
  String get create => 'ဖန်တီး';

  @override
  String get add => 'ထည့်';

  @override
  String get remove => 'ဖယ်ရှား';

  @override
  String get delete => 'ဖျက်ပစ်';

  @override
  String get edit => 'တည်းဖြတ်';

  @override
  String get copy => 'မိတ္တူကူး';

  @override
  String get retry => 'ထပ်ကြိုးစား';

  @override
  String get regenerate => 'ပြန်ထုတ်';

  @override
  String get copiedToClipboard => 'ကလစ်ဘုတ်သို့ ကူးယူပြီး';

  @override
  String get confirm => 'အတည်ပြု';

  @override
  String get close => 'ပိတ်';

  @override
  String get import => 'တင်သွင်း';

  @override
  String get rename => 'အမည်ပြောင်း';

  @override
  String get upgrade => 'အဆင့်မြှင့်';

  @override
  String get clear => 'ရှင်းလင်း';

  @override
  String error(String message) {
    return 'အမှား: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'အမှား: $message';
  }

  @override
  String get purchaseError =>
      'ဝယ်ယူမှုကို လုပ်ဆောင်ရာတွင် အမှားရှိနေသည်။ ထပ်ကြိုးစားပါ။';

  @override
  String get restoreError =>
      'ဝယ်ယူမှုများကို ပြန်လည်ရယူရာတွင် အမှားရှိနေသည်။ ထပ်ကြိုးစားပါ။';

  @override
  String get loading => 'ဖွင့်နေသည်...';

  @override
  String get fieldRequired => 'လိုအပ်သော အကွက်';

  @override
  String get addedFeedback => 'ထည့်ပြီးပြီ!';

  @override
  String selectedItems(int count) {
    return '$count ခု ရွေးချယ်ထား';
  }

  @override
  String get estimated => 'ခန့်မှန်း';

  @override
  String get alreadyPurchased => 'ဝယ်ပြီးသား';

  @override
  String get clearList => 'စာရင်းရှင်းလင်း';

  @override
  String get clearPurchased => 'ဝယ်ပြီးများရှင်းလင်း';

  @override
  String get share => 'မျှဝေ';

  @override
  String get shareViaCode => 'ကုဒ်ဖြင့်မျှဝေ';

  @override
  String get importViaCode => 'ကုဒ်ဖြင့်တင်သွင်း';

  @override
  String get listAssistant => 'စာရင်းအကူ';

  @override
  String get globalAssistant => 'ကမ္ဘာလုံးဆိုင်ရာအကူ';

  @override
  String get becomePremium => 'Premium ဖြစ်ပါ';

  @override
  String get manageSubscription => 'စာရင်းသွင်းမှုကိုစီမံ';

  @override
  String get completePurchase => 'ဝယ်ယူမှုအပြီးသတ်';

  @override
  String get confirmClearList => 'ပစ္စည်းအားလုံးကိုဖယ်ရှားမည်?';

  @override
  String get shareListTitle => 'စာရင်းကိုမျှဝေပါ';

  @override
  String get shareThisCode => 'ဤကုဒ်ကိုမျှဝေပါ:';

  @override
  String get validForLimitedTime => 'အချိန်ကန့်သတ်ထားသည်';

  @override
  String get importListTitle => 'စာရင်းတင်သွင်းပါ';

  @override
  String get enterCodeHint => 'ကုဒ်ကိုထည့်ပါ';

  @override
  String get confirmArchiveTitle => 'ဝယ်ယူမှုအပြီးသတ်';

  @override
  String get confirmArchiveContent =>
      'ဤဝယ်ယူမှုကိုအပြီးသတ်ပြီးစာရင်းကိုသိမ်းမည်?';

  @override
  String get complete => 'အပြီးသတ်';

  @override
  String get listArchived => 'စာရင်းကိုအောင်မြင်စွာသိမ်းပြီးပြီ!';

  @override
  String listAdded(String listName) {
    return '$listName ထည့်ပြီးပြီ!';
  }

  @override
  String get buy => 'ဝယ်';

  @override
  String get unmark => 'အမှတ်ဖြုတ်';

  @override
  String confirmDeleteItems(int count) {
    return '$count ခုကိုဖယ်ရှားမည်?';
  }

  @override
  String get confirmDeleteTitle => 'အတည်ပြု';

  @override
  String confirmContent(int count) {
    return '$count ခုကိုဖယ်ရှားမည်?';
  }

  @override
  String get archiveList => 'စာရင်းသိမ်းဆည်း';

  @override
  String get pantryAppBar => 'စားသိုက်ခန်း';

  @override
  String get generateShoppingList => 'စျေးဝယ်စာရင်းထုတ်';

  @override
  String get pantryEmpty => 'စားသိုက်ခန်းဗလာ';

  @override
  String get pantryEmptySubtitle => 'အိမ်မှာထားချင်တဲ့ပစ္စည်းတွေထည့်ပါ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ခုဝယ်ရန်လိုအပ်သည်';
  }

  @override
  String get noItemsToBuy => 'ဝယ်ရန်မလိုအပ်သောပစ္စည်းမရှိပါ';

  @override
  String get newPantryList => 'စားသိုက်ခန်းစျေးဝယ်';

  @override
  String get newListTitle => 'စျေးဝယ်စာရင်းအသစ်';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ခုထည့်သွင်းမည်';
  }

  @override
  String get listNameLabel => 'စာရင်းအမည်';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" စာရင်းကို $count ခုဖြင့်ဖန်တီးပြီးပြီ';
  }

  @override
  String get noTracking => 'ခြေရာခံမထားပါ';

  @override
  String get markAsPurchased => 'ဝယ်ပြီးအဖြစ်မှတ်';

  @override
  String editPantryItem(String name) {
    return '$name ကိုတည်းဖြတ်';
  }

  @override
  String get idealQuantity => 'စံပြပမာဏ';

  @override
  String get currentQuantity => 'လက်ရှိပမာဏ';

  @override
  String get consumed => 'စားသုံးပြီး';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ကို $quantity $unit သို့ပြန်ဖြည့်ပြီး';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" ကိုစားသိုက်ခန်းမှဖယ်ရှားမည်?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name ကိုတည်းဖြတ်';
  }

  @override
  String get settingsAppBar => 'ဆက်တင်များ';

  @override
  String get language => 'ဘာသာစကား';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'စနစ်မူလ';

  @override
  String get chooseLanguage => 'ဘာသာစကားရွေးချယ်ပါ';

  @override
  String get searchLanguage => 'ဘာသာစကားရှာဖွေရန်...';

  @override
  String get appearance => 'အသွင်အပြင်';

  @override
  String get light => 'အလင်း';

  @override
  String get system => 'စနစ်';

  @override
  String get dark => 'အမှောင်';

  @override
  String get themeColor => 'အပြင်အဆင်အရောင်';

  @override
  String get dynamicColors => 'Dynamic အရောင်များ';

  @override
  String get dynamicColorsSubtitle =>
      'သင်၏ wallpaper ပေါ်မူတည်၍ အရောင်များကို အသုံးပြုပါ';

  @override
  String get finance => 'ဘဏ္ဍာရေး';

  @override
  String get monthlyBudgetNav => 'လစဉ်ဘတ်ဂျက်';

  @override
  String get budgetSubtitle => 'သင့်လစဉ်အသုံးစရိတ်ကိုခြေရာခံပါ';

  @override
  String get data => 'ဒေတာ';

  @override
  String get backupNav => 'အရန်သိမ်း';

  @override
  String get backupSubtitle => 'သင့်ဒေတာကိုတင်ပို့သို့မဟုတ်တင်သွင်းပါ';

  @override
  String get about => 'အကြောင်း';

  @override
  String get version => 'ဗားရှင်း';

  @override
  String get privacy => 'ကိုယ်ရေးလုံခြုံမှု';

  @override
  String get termsOfUse => 'အသုံးပြုခြင်းဆိုင်ရာသတ်မှတ်ချက်များ';

  @override
  String get backupTitle => 'အရန်သိမ်း';

  @override
  String get backupPremiumDescription =>
      'အရန်သိမ်းခြင်းနှင့်တင်ပို့ခြင်းသည် Premium အင်္ဂါရပ်ဖြစ်သည်';

  @override
  String get exportData => 'ဒေတာတင်ပို့';

  @override
  String get exportDataSubtitle => 'စာရင်းအားလုံးကို JSON အဖြစ်သိမ်းဆည်း';

  @override
  String get importData => 'ဒေတာတင်သွင်း';

  @override
  String get importDataSubtitle => 'JSON မှစာရင်းများကိုပြန်လည်ရယူ';

  @override
  String get importJsonTitle => 'JSON တင်သွင်း';

  @override
  String get importJsonHint => 'ဤနေရာတွင်အရန်သိမ်း JSON ကိုကူးထည့်ပါ...';

  @override
  String get backupExported => 'အရန်သိမ်းမှုတင်ပို့ပြီးပြီ!';

  @override
  String get budgetAppBar => 'လစဉ်ဘတ်ဂျက်';

  @override
  String get budgetPremiumLocked =>
      'ကမ္ဘာလုံးဆိုင်ရာလစဉ်ဘတ်ဂျက်သည် Premium ဖြစ်သည်';

  @override
  String get budgetUpgradePrompt => 'ဖွင့်ရန်အဆင့်မြှင့်ပါ';

  @override
  String get noBudgetDefined => 'ဘတ်ဂျက်သတ်မှတ်မထားပါ';

  @override
  String totalEstimated(String amount) {
    return 'စုစုပေါင်းခန့်မှန်း: $amount';
  }

  @override
  String get setBudgetButton => 'ဘတ်ဂျက်သတ်မှတ်';

  @override
  String get budgetLists => 'စာရင်းများ';

  @override
  String get budgetValueLabel => 'ပမာဏ';

  @override
  String get setBudgetTitle => 'လစဉ်ဘတ်ဂျက်';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'အားလုံး';

  @override
  String get filterPending => 'ဆိုင်းငံ့';

  @override
  String get filterPurchased => 'ဝယ်ပြီး';

  @override
  String get sortName => 'အမည်';

  @override
  String get sortCategory => 'အမျိုးအစား';

  @override
  String get sortDate => 'ရက်စွဲ';

  @override
  String get sortManual => 'ကိုယ်တိုင်';

  @override
  String get addItem => 'ပစ္စည်းထည့်';

  @override
  String get itemName => 'ပစ္စည်းအမည်';

  @override
  String get quantityShort => 'ပမာဏ';

  @override
  String get unit => 'ယူနစ်';

  @override
  String get category => 'အမျိုးအစား';

  @override
  String get estimatedPrice => 'ခန့်မှန်းစျေးနှုန်း';

  @override
  String get addItemPrice => 'ခန့်မှန်းစျေးနှုန်း';

  @override
  String get editItem => 'ပစ္စည်းတည်းဖြတ်';

  @override
  String get quantityFull => 'ပမာဏ';

  @override
  String get editItemPrice => 'ခန့်မှန်းစျေးနှုန်း';

  @override
  String get addToPantry => 'စားသိုက်ခန်းသို့ထည့်';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ကိုသင့်စားသိုက်ခန်းသို့ထည့်မည်?';
  }

  @override
  String get yes => 'ဟုတ်';

  @override
  String get productName => 'ကုန်ပစ္စည်းအမည်';

  @override
  String get idealQty => 'စံပြပမာဏ';

  @override
  String get currentQty => 'လက်ရှိပမာဏ';

  @override
  String get trackStock => 'စတော့ခြေရာခံ';

  @override
  String get trackStockActive => 'စျေးဝယ်အကြံပြုချက်များတွင်ပေါ်လာမည်';

  @override
  String get trackStockInactive => 'စျေးဝယ်အကြံပြုချက်မထုတ်ပါ';

  @override
  String get createListDialog => 'စာရင်းဖန်တီး';

  @override
  String get renameListDialog => 'စာရင်းအမည်ပြောင်း';

  @override
  String get listHistory => 'စာရင်းမှတ်တမ်း';

  @override
  String get myLists => 'ကျွန်ုပ်၏စာရင်းများ';

  @override
  String get viewActive => 'လှုပ်ရှားနေသောစာရင်းများကြည့်';

  @override
  String get viewHistory => 'မှတ်တမ်းကြည့်';

  @override
  String get noArchivedLists => 'သိမ်းထားသောစာရင်းမရှိပါ';

  @override
  String get noActiveLists => 'လှုပ်ရှားနေသောစာရင်းမရှိပါ';

  @override
  String completedOn(String date) {
    return '$date တွင်အပြီးသတ်ခဲ့သည်';
  }

  @override
  String get sharedLabel => 'မျှဝေထား';

  @override
  String get restore => 'ပြန်လည်ရယူ';

  @override
  String get removeSharedTooltip => 'ဖယ်ရှား';

  @override
  String get deleteListTitle => 'စာရင်းဖျက်';

  @override
  String deleteListContent(String name) {
    return '\"$name\" ကိုဖျက်ရန်သေချာပါသလား။ ပစ္စည်းအားလုံးဖယ်ရှားခံရမည်။';
  }

  @override
  String get removeSharedListTitle => 'မျှဝေထားသောစာရင်းဖယ်ရှား';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" ကိုသင့်စာရင်းများမှဖယ်ရှားမည်? မူရင်းစာရင်းကိုမထိခိုက်ပါ။';
  }

  @override
  String get createNewList => 'စာရင်းအသစ်ဖန်တီး';

  @override
  String get aiAssistant => 'AI အကူ';

  @override
  String get aiAssistantDescription =>
      'ကျွန်ုပ်တို့၏ AI အကူဖြင့်အသိဉာဏ်ရှိသောအကြံပြုချက်များ၊ ချက်ပြုတ်နည်းများနှင့်ကိုယ်ပိုင်အကြံပေးချက်များရယူပါ။';

  @override
  String get generalAssistant => 'အထွေထွေအကူ';

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
  String get clearHistory => 'မှတ်တမ်းရှင်းလင်း';

  @override
  String get clearHistoryConfirm =>
      'ဤအစီအစဉ်အတွင်းမက်ဆေ့ခ်ျအားလုံးကိုရှင်းလင်းမည်?';

  @override
  String get chatHint => 'သင့်မက်ဆေ့ခ်ျကိုရိုက်ပါ...';

  @override
  String chatError(String error) {
    return 'ချတ်ဖွင့်ရာတွင်အမှား: $error';
  }

  @override
  String get listHelp => 'သင့်စာရင်းအတွက်ဘယ်လိုကူညီပေးရမလဲ?';

  @override
  String get generalHelp => 'ယနေ့သင့်စျေးဝယ်အတွက်ဘယ်လိုကူညီပေးရမလဲ?';

  @override
  String get chatSubtitle =>
      'ပစ္စည်းအကြံပြုချက်များ၊ ချက်ပြုတ်နည်းများသို့မဟုတ်ချွေတာရေးအကြံပေးချက်များတောင်းပါ။';

  @override
  String get aiError =>
      'ဝမ်းနည်းပါတယ်၊ သင့်တောင်းဆိုချက်ကိုလုပ်ဆောင်ရာတွင်အမှားဖြစ်သွားသည်။ သင့်ချိတ်ဆက်မှုကိုစစ်ဆေးပါသို့မဟုတ်နောက်မှထပ်ကြိုးစားပါ။';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium အင်္ဂါရပ်များကို\nဖွင့်ရန်အကောင့်ဝင်ပါ';

  @override
  String get signInGoogle => 'Google ဖြင့်အကောင့်ဝင်';

  @override
  String get signInApple => 'Apple ဖြင့်အကောင့်ဝင်';

  @override
  String get continueAsGuest => 'ဧည့်သည်အဖြစ်ဆက်လက်';

  @override
  String loginError(String error) {
    return 'အကောင့်ဝင်ရာတွင်အမှား: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'ဖွင့်ရန်အဆင့်မြှင့်ပါ';

  @override
  String get itemRemoved => 'ပစ္စည်းဖယ်ရှားပြီး';

  @override
  String get undo => 'ပြန်ဖျက်';

  @override
  String get emptyListTitle => 'သင့်စာရင်းဗလာဖြစ်နေသည်';

  @override
  String get emptyListSubtitle => 'စတင်ရန်ပစ္စည်းများထည့်ပါ';

  @override
  String get noListFoundTitle => 'စာရင်းမတွေ့ပါ';

  @override
  String get noListFoundSubtitle => 'စတင်ရန်သင့်ပထမဆုံးစာရင်းကိုဖန်တီးပါ';

  @override
  String get createFirstList => 'ပထမဆုံးစာရင်းဖန်တီး';

  @override
  String get listBudgetTitle => 'စာရင်းဘတ်ဂျက်';

  @override
  String get budgetAmountLabel => 'ဘတ်ဂျက်ပမာဏ';

  @override
  String get removeBudget => 'ဖယ်ရှား';

  @override
  String get prefUnlimitedLists => 'အကန့်အသတ်မဲ့စာရင်းများ';

  @override
  String get prefSharing => 'စာရင်းများမျှဝေပါ';

  @override
  String get prefFullHistory => 'မှတ်တမ်းအပြည့်အစုံ';

  @override
  String get prefExportData => 'ဒေတာတင်ပို့';

  @override
  String get prefCustomThemes => 'စိတ်ကြိုက်အပြင်အဆင်များ';

  @override
  String get prefMonthlyBudget => 'ကမ္ဘာလုံးဆိုင်ရာလစဉ်ဘတ်ဂျက်';

  @override
  String get prefAIAssistant => 'ကိုယ်ပိုင် AI အကူ';

  @override
  String get prefUnlimitedPantry => 'အကန့်အသတ်မဲ့စားသိုက်ခန်း';

  @override
  String get prefInteractiveArtifacts => 'အပြန်အလှန်တုံ့ပြန် AI Artifacts';

  @override
  String get themeGreen => 'အစိမ်း';

  @override
  String get themeBlue => 'အပြာ';

  @override
  String get themePurple => 'ခရမ်း';

  @override
  String get themeRed => 'အနီ';

  @override
  String get themeOrange => 'လိမ္မော်';

  @override
  String get themePink => 'ပန်းရောင်';

  @override
  String get themeIndigo => 'မဲနယ်';

  @override
  String get themeAmber => 'ပယင်း';

  @override
  String get themeTeal => 'ဘဲဥဖြူ';

  @override
  String get themeBrown => 'ညို';

  @override
  String get catFruits => 'သစ်သီးများ';

  @override
  String get catCleaning => 'သန့်ရှင်းရေး';

  @override
  String get catBeverages => 'အဖျော်ယမကာများ';

  @override
  String get catBakery => 'မုန့်ဖုတ်';

  @override
  String get catOthers => 'အခြား';

  @override
  String get unitPack => 'ထုပ်';

  @override
  String get shareSubject => 'စျေးဝယ်စာရင်း';

  @override
  String get monthlyBudgetTitle => 'လစဉ်ဘတ်ဂျက်';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'စာရင်းဖျက်';

  @override
  String get pantryItemRemoved => 'ပစ္စည်းဖယ်ရှားပြီး';

  @override
  String deficitItems(int deficit) {
    return '$deficit ခုဝယ်ရန်လိုအပ်သည်';
  }

  @override
  String get cartTotal => 'တောင်းစုစုပေါင်း';

  @override
  String get restockLabel => 'ပြန်ဖြည့်';

  @override
  String get advancedFeatures => 'အဆင့်မြင့်အင်္ဂါရပ်များ';

  @override
  String get selectAll => 'အားလုံးရွေး';

  @override
  String get deselectAll => 'အားလုံးမရွေး';

  @override
  String get monthlyBudgetAppBar => 'လစဉ်ဘတ်ဂျက်';

  @override
  String get budgetEditTitle => 'လစဉ်ဘတ်ဂျက်';

  @override
  String get budgetDashboardTitle => 'ဒက်ရှ်ဘုတ်';

  @override
  String get selectListForDashboard => 'ဒက်ရှ်ဘုတ်ကြည့်ရန်စာရင်းတစ်ခုရွေးပါ။';

  @override
  String get spendingAnalysis => 'အသုံးစရိတ်ခွဲခြမ်းစိတ်ဖြာ';

  @override
  String get noItemsToAnalyze => 'ခွဲခြမ်းစိတ်ဖြာရန်စာရင်းတွင်ပစ္စည်းမရှိပါ။';

  @override
  String get markItemsToSeeAnalysis =>
      'ခွဲခြမ်းစိတ်ဖြာမှုကြည့်ရန်ပစ္စည်းများကိုဝယ်ပြီးအဖြစ်မှတ်ပါ။';

  @override
  String get totalSpending => 'စုစုပေါင်းအသုံးစရိတ်';

  @override
  String get spendingByCategory => 'အမျိုးအစားအလိုက်အသုံးစရိတ်';

  @override
  String get achievements => 'အောင်မြင်မှုများ';

  @override
  String get exportPdfExcel => 'PDF/Excel တင်ပို့';

  @override
  String get exportPdf => 'PDF အဖြစ်တင်ပို့';

  @override
  String get exportExcel => 'Excel အဖြစ်တင်ပို့';

  @override
  String get organizingAi => 'AI ဖြင့်စုစည်းနေသည်...';

  @override
  String get yesLabel => 'ဟုတ်';

  @override
  String get noLabel => 'မဟုတ်';

  @override
  String get shareListText => 'ကျွန်ုပ်၏စျေးဝယ်စာရင်း';

  @override
  String get emptyListAddItems =>
      'သင့်စာရင်းဗလာဖြစ်နေသည်! ပစ္စည်းများအရင်ထည့်ပါ။ ℹ️';

  @override
  String get listOrganizedMagic =>
      'စာရင်းကိုအမျိုးအစားများဖြင့်မှော်ဆန်စွာစုစည်းပြီးပြီ! ✨';

  @override
  String get shoppingMode => 'စျေးဝယ်မုဒ်';

  @override
  String get smartOrganization => 'စမတ်ကျသောစုစည်းမှု';

  @override
  String get savings => 'ချွေတာမှုများ';

  @override
  String get shoppingModeHeader => 'စျေးဝယ်မုဒ်';

  @override
  String get shareAsText => 'ပစ္စည်းများကိုဖော်မတ်ပါသောစာသားအဖြစ်ပို့';

  @override
  String get shareRealtime => 'အခြားသူများနှင့်အချိန်နှင့်တပြေးညီထပ်တူပြု';

  @override
  String get quickRecipe => 'အမြန်ချက်ပြုတ်နည်း';

  @override
  String get quickRecipePrompt =>
      'ကျွန်ုပ်စာရင်းပါပစ္စည်းများဖြင့်ချက်ပြုတ်နည်းများအကြံပြုပါ။';

  @override
  String get economyTips => 'ချွေတာရေးအကြံပေးချက်များ';

  @override
  String get economyTipsPrompt => 'ဤဝယ်ယူမှုတွင်ငွေဘယ်လိုချွေတာနိုင်မလဲ?';

  @override
  String get organizeAisles => 'စင်များအလိုက်စုစည်း';

  @override
  String get organizeAislesPrompt => 'စျေးဆိုင်စင်များအလိုက်စုစည်းပါ။';

  @override
  String get recipeSuggestion => 'ချက်ပြုတ်နည်းအကြံပြုချက်';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ခရက်ဒစ်ကျန်ပါသည်';
  }

  @override
  String get addAllToList => 'အားလုံးကိုစာရင်းထဲထည့်';

  @override
  String get organizeByAisles => 'စင်များအလိုက်စုစည်း';

  @override
  String get voiceTranscriptionTooltip => 'အသံရိုက်ခြင်း (အခမဲ့)';

  @override
  String get aiVoiceCommandTooltip => 'AI အသံအမိန့် (Premium)';

  @override
  String get voiceCommandTitle => 'AI အသံအမိန့်';

  @override
  String get voiceCommandContent =>
      'သင့်စာရင်းကိုစီမံရန်သဘာဝကျကျစကားပြောပါ!\n\nဥပမာများ:\n• \'မုန့်၊ ဒိန်ခဲနှင့်ဝက်ပေါင်ခြောက်ထည့်\'\n• \'အဝတ်လျှော်ဆပ်ပြာဖယ်ရှား\'\n• \'အပြင်အဆင်ကိုအပြာသို့ပြောင်း\'\n\n၎င်းသည် Lista Plus Premium ၏သီးသန့်အင်္ဂါရပ်ဖြစ်သည်။';

  @override
  String get voiceCommandPlanBtn => 'အစီအစဉ်များကြည့်';

  @override
  String get itemsAddedSuccess =>
      'ပစ္စည်းများကိုစာရင်းထဲအောင်မြင်စွာထည့်ပြီးပြီ!';

  @override
  String get viewList => 'စာရင်းကြည့်';

  @override
  String get feedbackTitle => 'တုံ့ပြန်ချက်ပေးပို့ပါ';

  @override
  String get feedbackPrompt => 'ဘာမျှဝေချင်ပါသလဲ?';

  @override
  String get feedbackTypeBug => 'ချွတ်ယွင်းချက်တင်ပြရန်';

  @override
  String get feedbackTypeBugHint => 'တစ်ခုခုအလုပ်မလုပ်ပါ';

  @override
  String get feedbackTypeSuggestion => 'အကြံပြုချက်';

  @override
  String get feedbackTypeSuggestionHint => 'အက်ပ်ကိုတိုးတက်စေရန်စိတ်ကူး';

  @override
  String get feedbackTypeTranslation => 'ဘာသာပြန်ခြင်းပြဿနာ';

  @override
  String get feedbackTypeTranslationHint =>
      'မမှန်ကန်သော သို့မဟုတ် မကြည်မလင်သောဘာသာပြန်';

  @override
  String get feedbackTypeFeature => 'အင်္ဂါရပ်တောင်းဆိုချက်';

  @override
  String get feedbackTypeFeatureHint => 'သင်မြင်လိုသောအင်္ဂါရပ်';

  @override
  String get feedbackTypeOther => 'အခြား';

  @override
  String get feedbackTypeOtherHint => 'အခြားတုံ့ပြန်ချက်အမျိုးအစား';

  @override
  String get feedbackHint => 'သင့်တုံ့ပြန်ချက်ကိုအသေးစိတ်ဖော်ပြပါ...';

  @override
  String get feedbackSend => 'တုံ့ပြန်ချက်ပေးပို့ပါ';

  @override
  String get feedbackSending => 'ပေးပို့နေသည်...';

  @override
  String get feedbackThankYou => 'ကျေးဇူးတင်ပါသည်!';

  @override
  String get feedbackThankYouMessage =>
      'သင့်တုံ့ပြန်ချက်ကိုလက်ခံရရှိပြီး Lista Plus ကိုလူတိုင်းအတွက်တိုးတက်စေရန်ကူညီပေးပါသည်။';

  @override
  String get feedbackBack => 'နောက်သို့';

  @override
  String feedbackError(String error) {
    return 'ပေးပို့ရာတွင်အမှား: $error';
  }

  @override
  String get feedbackRetry => 'ထပ်ကြိုးစား';

  @override
  String get feedbackSettingsTitle => 'တုံ့ပြန်ချက်ပေးပို့ပါ';

  @override
  String get feedbackSettingsSubtitle =>
      'ချွတ်ယွင်းချက်များတင်ပြရန်၊ တိုးတက်စေရန်အကြံပြုရန် သို့မဟုတ် ဘာသာပြန်ချက်များပြင်ဆင်ရန်';

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
  String get openMenu => 'မီနူးဖွင့်ရန်';

  @override
  String get viewRecipe => 'ဟင်းချက်နည်းကြည့်ရှုရန်';

  @override
  String get recipeCreated => 'ဟင်းချက်နည်း ဖန်တီးပြီးပါပြီ!';

  @override
  String get editRecipe => 'ပြင်ဆင်ရန်';

  @override
  String get deleteRecipe => 'ဖျက်ရန်';

  @override
  String get deleteRecipeConfirm => 'ဤဟင်းချက်နည်းကို ဖျက်မလား?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ကို ဖျက်ရန် သေချာပါသလား? ဤလုပ်ဆောင်ချက်ကို ပြန်ပြင်၍မရပါ။';
  }

  @override
  String get ingredients => 'ပါဝင်ပစ္စည်းများ';

  @override
  String get instructions => 'ညွှန်ကြားချက်များ';

  @override
  String get prepTime => 'ပြင်ဆင်ချိန်';

  @override
  String get recipeSaved => 'ဟင်းချက်နည်း သိမ်းဆည်းပြီးပါပြီ!';

  @override
  String get noRecipesSaved => 'သိမ်းဆည်းထားသော ဟင်းချက်နည်းမရှိပါ';

  @override
  String get noRecipesSavedHint =>
      'အောက်ပါခလုတ်ကို နှိပ်ပြီး သင်၏ ပထမဆုံး ကိုယ်ပိုင်ဟင်းချက်နည်းကို ဖန်တီးပါ။';

  @override
  String get myRecipes => 'ကျွန်ုပ်၏ ဟင်းချက်နည်းများ';

  @override
  String get newRecipe => 'ဟင်းချက်နည်းအသစ်';

  @override
  String get loadingRecipes => 'ဟင်းချက်နည်းများ ပြသနေသည်...';

  @override
  String get errorLoadingRecipes => 'ဟင်းချက်နည်းများ ပြသရာတွင် အမှားရှိနေသည်';

  @override
  String get addIngredient => 'ပါဝင်ပစ္စည်းထည့်ရန်';

  @override
  String get saveRecipe => 'သိမ်းဆည်းရန်';

  @override
  String get recipeName => 'ဟင်းချက်နည်းအမည်';

  @override
  String get shortDescription => 'အကျဉ်းချုပ် ဖော်ပြချက်';

  @override
  String get prepTimeMinutes => 'ပြင်ဆင်ချိန် (မိနစ်)';

  @override
  String get instructionsHint => 'တစ်ကြောင်းလျှင် အဆင့်တစ်ခုစီ ရိုက်ထည့်ပါ...';

  @override
  String get addPhoto => 'ဓာတ်ပုံထည့်ရန်';

  @override
  String get imageUrlPlaceholder => 'သို့မဟုတ် ပုံ URL ကို ကူးထည့်ပါ';

  @override
  String get tags => 'Tag များ';

  @override
  String get recipeTags => 'ဟင်းချက်နည်း Tag များ';

  @override
  String get suggestedTags => 'အကြံပြုချက်များ';

  @override
  String get searchRecipes => 'ဟင်းချက်နည်းများ ရှာဖွေရန်...';

  @override
  String get filterByTag => 'Tag ဖြင့် စစ်ထုတ်ရန်';

  @override
  String get allTags => 'အားလုံး';

  @override
  String get recipeDeleted => 'ဟင်းချက်နည်း ဖျက်ပြီးပါပြီ';

  @override
  String get saveChanges => 'ပြောင်းလဲမှုများကို သိမ်းဆည်းရန်';

  @override
  String get editRecipeTitle => 'ဟင်းချက်နည်းပြင်ဆင်ရန်';

  @override
  String get newRecipeTitle => 'ဟင်းချက်နည်းအသစ်';

  @override
  String get requiredField => 'လိုအပ်သည်';

  @override
  String get chooseImageSource => 'ဓာတ်ပုံအရင်းအမြစ်ရွေးချယ်ပါ';

  @override
  String get gallery => 'ပြခန်း';

  @override
  String get enterUrl => 'URL ထည့်ပါ';

  @override
  String get recipeImage => 'ဟင်းချက်နည်းပုံ';

  @override
  String get removeImage => 'ပုံဖယ်ရှားရန်';

  @override
  String get mealPlannerTitle => 'အစားအစာအစီအစဉ်';

  @override
  String get mealPlannerViewMonthly => 'လစဉ်ကြည့်ရှုမှု';

  @override
  String get mealPlannerViewWeekly => 'အပတ်စဉ်ကြည့်ရှုမှု';

  @override
  String get mealPlannerNoMeals => 'စီစဉ်ထားသော အစားအစာမရှိပါ';

  @override
  String get mealPlannerNoMealsHint => 'အစားအစာထည့်ရန် ရက်စွဲတစ်ခုကို နှိပ်ပါ';

  @override
  String get mealPlannerLoading => 'အစားအစာအစီအစဉ် ပြသနေသည်...';

  @override
  String get mealPlannerError => 'အစားအစာအစီအစဉ် ပြသရာတွင် အမှားရှိနေသည်';

  @override
  String get mealPlannerAddMeal => 'အစားအစာထည့်ရန်';

  @override
  String get mealPlannerEditMeal => 'အစားအစာပြင်ဆင်ရန်';

  @override
  String get mealPlannerDeleteMeal => 'အစားအစာဖယ်ရှားရန်';

  @override
  String get mealPlannerMealDeleted => 'အစားအစာကို ဖယ်ရှားပြီးပါပြီ';

  @override
  String mealPlannerServings(int count) {
    return '$count ယောက်စာ';
  }

  @override
  String get mealPlannerServingsLabel => 'လူဦးရေ';

  @override
  String get mealPlannerNoteLabel => 'မှတ်စု (ရွေးချယ်နိုင်သည်)';

  @override
  String get mealPlannerSelectRecipe => 'ဟင်းချက်နည်းတစ်ခု ရွေးချယ်ပါ';

  @override
  String get mealPlannerSearchRecipes => 'ဟင်းချက်နည်းများ ရှာဖွေရန်...';

  @override
  String get mealPlannerNoRecipesFound => 'ဟင်းချက်နည်း မတွေ့ပါ';

  @override
  String get mealPlannerNoRecipesHint =>
      'အရင်ဆုံး Recipes tab တွင် ဟင်းချက်နည်းများ ဖန်တီးပါ';

  @override
  String get mealPlannerSave => 'အစီအစဉ်သို့ ထည့်ရန်';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'အစားအစာ $total ခုတွင် $count ခု စီစဉ်ပြီး';
  }

  @override
  String get mealPlannerGenerateList => 'ဈေးဝယ်စာရင်းထုတ်ရန်';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ယခုတစ်ပတ်အတွက် စီစဉ်ထားသော အစားအစာများမှ ပါဝင်ပစ္စည်းများအားလုံးကို သင်၏ဈေးဝယ်စာရင်းသို့ ထည့်မလား?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'သင်၏စာရင်းထဲသို့ ပါဝင်ပစ္စည်း $count ခု ထည့်ပြီးပါပြီ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ထည့်ရန် ပါဝင်ပစ္စည်းမရှိပါ။ အရင်ဆုံး ဟင်းချက်နည်းများဖြင့် အစားအစာများကို စီစဉ်ပါ။';

  @override
  String get mealPlannerGenerateListNoList =>
      'အရင်ဆုံး ဈေးဝယ်စာရင်းတစ်ခု ဖန်တီးပါ။';

  @override
  String get mealPlannerMealTypeBreakfast => 'မနက်စာ';

  @override
  String get mealPlannerMealTypeLunch => 'နေ့လယ်စာ';

  @override
  String get mealPlannerMealTypeDinner => 'ညစာ';

  @override
  String get mealPlannerMealTypeSnack => 'သရေစာ';

  @override
  String get mealPlannerDateLabel => 'ရက်စွဲ';

  @override
  String get mealPlannerWeekEmpty => 'ယခုတစ်ပတ်အတွက် စီစဉ်ထားသည်များ မရှိပါ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'အစားအစာများ စတင်စီစဉ်ရန် မည်သည့်ရက်ကိုမဆို နှိပ်ပါ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes မိနစ်';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';
}
