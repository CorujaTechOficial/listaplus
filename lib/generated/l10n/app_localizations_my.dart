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
  String get next => 'နောက်တစ်ခု';

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
  String get languagePortuguese => 'ပေါ်တူဂီ (ဘရာဇီး)';

  @override
  String get languageEnglish => 'အင်္ဂလိပ်စာ';

  @override
  String get languageSystem => 'စနစ်မူလ';

  @override
  String get chooseLanguage => 'ဘာသာစကားရွေးချယ်ပါ';

  @override
  String get searchLanguage => 'ဘာသာစကားရှာဖွေရန်...';

  @override
  String get currency => 'ငွေကြေး';

  @override
  String get chooseCurrency => 'ငွေကြေးကို ရွေးပါ။';

  @override
  String get searchCurrency => 'ငွေကြေးရှာဖွေပါ...';

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
  String get dynamicColorsEnabledWarning =>
      'အပြင်အဆင်အရောင်အကျိုးသက်ရောက်စေရန် ရွေ့လျားရောင်များပိတ်ပါ။';

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
  String get newChat => 'Chat အသစ်';

  @override
  String get noHistory => 'ချတ်မှတ်တမ်းမရှိပါ။';

  @override
  String get deleteSession => 'Chat ကိုဖျက်ပါ။';

  @override
  String get deleteSessionConfirm =>
      'ဤချတ်ကို ဖျက်လိုသည်မှာ သေချာပါသလား။ မက်ဆေ့ချ်များ အပြီးအပိုင် ဆုံးရှုံးသွားပါမည်။';

  @override
  String get clearHistory => 'မှတ်တမ်းရှင်းလင်း';

  @override
  String get clearHistoryConfirm =>
      'ဤအစီအစဉ်အတွင်းမက်ဆေ့ခ်ျအားလုံးကိုရှင်းလင်းမည်?';

  @override
  String get chatHint => 'သင့်မက်ဆေ့ခ်ျကိုရိုက်ပါ...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Premium အင်္ဂါရပ်များကို\nဖွင့်ရန်အကောင့်ဝင်ပါ';

  @override
  String get signInGoogle => 'Google ဖြင့်အကောင့်ဝင်';

  @override
  String get signInApple => 'Apple ဖြင့်အကောင့်ဝင်';

  @override
  String get continueAsGuest => 'ဧည့်သည်အဖြစ်ဆက်လက်';

  @override
  String get onboardingWelcomeTitle => 'KipiList မှလှိုက်လှဲစွာကြိုဆိုပါသည်။';

  @override
  String get onboardingWelcomeDesc =>
      'သင်၏စျေးဝယ်ခြင်းကိုစီစဉ်ရန်နှင့်ငွေချွေတာရန်အကောင်းဆုံးနည်းလမ်း။';

  @override
  String get onboardingSetupTitle => 'သင့်အတွေ့အကြုံကို စိတ်ကြိုက်ပြင်ဆင်ပါ။';

  @override
  String get onboardingSetupDesc =>
      'KipiList သည် သင့်အတွက် အသွင်အပြင်နှင့် လုပ်ဆောင်လိုသည့်ပုံစံကို ရွေးချယ်ပါ။';

  @override
  String get onboardingLoginTitle => 'အရာအားလုံးကို cloud တွင်သိမ်းဆည်းပါ။';

  @override
  String get onboardingLoginDesc =>
      'သင့်ဒေတာကို သင့်စက်ပစ္စည်းအားလုံးတွင် စင့်ခ်လုပ်ထားသည်။';

  @override
  String get onboardingShareTitle => 'သင်ချစ်ရတဲ့သူတွေနဲ့ မျှဝေပါ။';

  @override
  String get onboardingShareDesc =>
      'စာရင်းများကို မိသားစု၊ သူငယ်ချင်းများနှင့် အချိန်နှင့်တပြေးညီ စင့်ခ်လုပ်ပါ။';

  @override
  String get onboardingPremiumTitle => 'အင်္ဂါရပ်အားလုံးကို လော့ခ်ဖွင့်ပါ။';

  @override
  String get onboardingPremiumSubtitle =>
      'သင့်စျေးဝယ်စာရင်းများမှ အများဆုံးရယူပါ။';

  @override
  String get onboardingAnnualBadge => 'အကောင်းဆုံးတန်ဖိုး';

  @override
  String get onboardingMonthlyLabel => 'လစဉ်';

  @override
  String get onboardingAnnualLabel => 'နှစ်စဉ်';

  @override
  String get onboardingViewAllPlans => 'အစီအစဉ်အားလုံးကို ကြည့်ရှုပါ။';

  @override
  String get onboardingSubscribeCta => 'စာရင်းသွင်းပါ။';

  @override
  String get onboardingCancelAnytime => 'အချိန်မရွေး ပယ်ဖျက်ပါ။ ကတိကဝတ်မရှိ။';

  @override
  String get onboardingContinueAsGuest => 'ဧည့်သည်အဖြစ် ဆက်သွားပါ။';

  @override
  String get onboardingRestore => 'ပြန်ယူပါ။';

  @override
  String get onboardingRestoreDesc =>
      'စာရင်းသွင်းထားပြီးပြီလား။ ပြန်လည်ရယူရန် ဤနေရာကို တို့ပါ။';

  @override
  String get onboardingExit => 'ထွက်ပေါက်';

  @override
  String get onboardingPersonalizationTitle => 'မင်းကိုသိရအောင်';

  @override
  String get onboardingPersonalizationDesc =>
      'သင့်အကြံပြုချက်များကို စိတ်ကြိုက်ပြင်ဆင်ပြီး စျေးဝယ်ခြင်းကို ပိုမိုစမတ်ကျစေရန် ၎င်းကို ကျွန်ုပ်တို့အသုံးပြုပါမည်။';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'မင်းအကြိုက်ဆုံးအစားအစာကဘာလဲ။';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ဥပမာ ပီဇာ၊ ဆူရှီ၊ လာဆာဂနာ...';

  @override
  String get onboardingPersonalizationCta => 'ဆက်ရန်';

  @override
  String get onboardingPersonalizationSkip => 'လောလောဆယ် ကျော်သွားပါ။';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ဆက်လုပ်ရန် သင်အကြိုက်ဆုံးအစားအစာကို ပြောပြပါ။';

  @override
  String get settingsDefaultScreen => 'မူရင်း ပင်မ မျက်နှာပြင်';

  @override
  String get settingsDefaultScreenSubtitle =>
      'စျေးဝယ်စာရင်း သို့မဟုတ် AI ချတ်ကြားကို ရွေးပါ။';

  @override
  String get settingsScreenList => 'စျေးဝယ်စာရင်း';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'အကောင့်ဝင်ရာတွင်အမှား: $error';
  }

  @override
  String get paywallTitle => 'KipiList ပရီမီယံ';

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
      'သင့်စာရင်းကိုစီမံရန်သဘာဝကျကျစကားပြောပါ!\n\nဥပမာများ:\n• \'မုန့်၊ ဒိန်ခဲနှင့်ဝက်ပေါင်ခြောက်ထည့်\'\n• \'အဝတ်လျှော်ဆပ်ပြာဖယ်ရှား\'\n• \'အပြင်အဆင်ကိုအပြာသို့ပြောင်း\'\n\n၎င်းသည် KipiList Premium ၏သီးသန့်အင်္ဂါရပ်ဖြစ်သည်။';

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
      'သင့်တုံ့ပြန်ချက်ကိုလက်ခံရရှိပြီး KipiList ကိုလူတိုင်းအတွက်တိုးတက်စေရန်ကူညီပေးပါသည်။';

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
  String get aiEnergy => 'AI စွမ်းအင်';

  @override
  String get searchInConversation => 'စကားဝိုင်းတွင် ရှာဖွေပါ...';

  @override
  String get noMessagesFound => 'စာများမတွေ့ပါ။';

  @override
  String get suggestedQuestions => 'အကြံပြုထားသောမေးခွန်းများ-';

  @override
  String get shoppingAssistant => 'စျေးဝယ်လက်ထောက်';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'ဝယ်ယူထားသော $total ၏ $purchased';
  }

  @override
  String get estimatedCost => 'ခန့်မှန်း';

  @override
  String get viewItems => 'ပစ္စည်းများကိုကြည့်ရှုပါ။';

  @override
  String get noItemsInList => 'စာရင်းထဲတွင် မည်သည့်အရာမှ မရှိပါ။';

  @override
  String get longHistoryWarning =>
      'ရှည်လျားသောသမိုင်း- လက်ထောက်သည် ပိုမိုကောင်းမွန်သောစွမ်းဆောင်ရည်အတွက် နောက်ဆုံးပေါ်မက်ဆေ့ဂျ်များကို အာရုံစိုက်သည်။';

  @override
  String get listening => 'နားထောင်နေသည်...';

  @override
  String get addDirectToList => 'စာရင်းထဲသို့ တိုက်ရိုက်ထည့်ပါ။';

  @override
  String get unlockFullResponse => 'တုံ့ပြန်မှုအပြည့်အဝကိုသော့ဖွင့်ပါ။';

  @override
  String get switchList => 'စာရင်းပြောင်းပါ။';

  @override
  String get marketMode => 'စျေးကွက်မုဒ်';

  @override
  String get backToChat => 'Chat သို့ ပြန်သွားရန်';

  @override
  String get finishShopping => 'စျေးဝယ်ပြီးအောင်';

  @override
  String get welcomeAiAssistant => 'AI Assistant မှကြိုဆိုပါသည်။';

  @override
  String get createListToStartAi =>
      'စမတ်ချတ်ကို စတင်အသုံးပြုရန် စျေးဝယ်စာရင်းတစ်ခု ဖန်တီးပါ။';

  @override
  String get howCanIHelp => 'ငါဘယ်လိုကူညီနိုင်မလဲ။';

  @override
  String get chatSubtitleShort =>
      'စျေးနှုန်း၊ ဟင်းချက်နည်းများ၊ အဖွဲ့အစည်းအကြောင်းမေးပါ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ဝယ်ယူခဲ့သည်။';
  }

  @override
  String get quickReplies => 'အမြန်ပြန်ကြားချက်များ-';

  @override
  String get voiceProFeature =>
      'အဆင့်မြင့် အသံအမိန့်ပေးမှုများသည် Pro ဖြစ်သည်။ အခြေခံသတ်ပုံဖွင့်ခြင်း...';

  @override
  String get viewPro => 'Pro ကိုကြည့်ပါ။';

  @override
  String get errorLoadingChat =>
      'သည်းခံပါ ချတ်ကိုဖွင့်ရာတွင် တစ်စုံတစ်ခု မှားယွင်းသွားပါသည်။';

  @override
  String get errorLoadingChatSubtitle =>
      'သင့်ချိတ်ဆက်မှုကို စစ်ဆေးပါ သို့မဟုတ် နောက်မှ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get errorOscillation =>
      'ကွန်ရက် တုန်ခါမှုများ သို့မဟုတ် ယာယီ မရရှိနိုင်ခြင်းကြောင့် ဖြစ်နိုင်ပါသည်။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'ဤအရာနှင့် သင်ဘာလုပ်လိုသနည်း။';

  @override
  String get viewDetails => 'အသေးစိတ်ကို ကြည့်ပါ။';

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
  String get inviteToList => 'စာရင်းပေးဖို့ ဖိတ်ခေါ်ပါတယ်။';

  @override
  String get shareApp => 'အက်ပ်ကို မျှဝေပါ။';

  @override
  String get shareAppDescription =>
      'KipiList အသုံးပြုရန် သူငယ်ချင်းများကို ဖိတ်ကြားပါ။';

  @override
  String shareReferralText(Object url) {
    return 'ကျွန်ုပ်၏စျေးဝယ်ခြင်းကိုစီစဉ်ရန် KipiList ကိုအသုံးပြုနေပါသည်။ ကျွန်ုပ်၏လင့်ခ်မှတစ်ဆင့် ဒေါင်းလုဒ်လုပ်ခြင်းဖြင့် ကျွန်ုပ်တို့နှစ်ဦးစလုံးသည် ပရီမီယံ 7 ရက်အခမဲ့ရရှိသည်- $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium ကို 7 ရက် ရယူလိုက်ပါ။';
}
