// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'শপিং লিস্ট';

  @override
  String get lists => 'তালিকা';

  @override
  String get pantry => 'প্যান্ট্রি';

  @override
  String get cancel => 'বাতিল';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get create => 'তৈরি করুন';

  @override
  String get add => 'যোগ করুন';

  @override
  String get remove => 'অপসারণ';

  @override
  String get delete => 'মুছুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get copy => 'কপি';

  @override
  String get retry => 'পুনরায় চেষ্টা';

  @override
  String get regenerate => 'পুনরায় তৈরি';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get close => 'বন্ধ';

  @override
  String get import => 'ইম্পোর্ট';

  @override
  String get rename => 'পুনঃনামকরণ';

  @override
  String get upgrade => 'আপগ্রেড';

  @override
  String get clear => 'পরিষ্কার';

  @override
  String error(String message) {
    return 'ত্রুটি: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ত্রুটি: $message';
  }

  @override
  String get purchaseError => 'ক্রয় প্রক্রিয়াকরণে ত্রুটি। আবার চেষ্টা করুন।';

  @override
  String get restoreError => 'ক্রয় পুনরুদ্ধারে ত্রুটি। আবার চেষ্টা করুন।';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get fieldRequired => 'প্রয়োজনীয় ক্ষেত্র';

  @override
  String get addedFeedback => 'যোগ করা হয়েছে!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি নির্বাচিত',
      one: '$countটি নির্বাচিত',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'আনুমানিক';

  @override
  String get alreadyPurchased => 'ইতিমধ্যে কেনা';

  @override
  String get clearList => 'তালিকা পরিষ্কার';

  @override
  String get clearPurchased => 'কেনা জিনিস পরিষ্কার';

  @override
  String get share => 'শেয়ার';

  @override
  String get shareViaCode => 'কোডের মাধ্যমে শেয়ার';

  @override
  String get importViaCode => 'কোডের মাধ্যমে ইম্পোর্ট';

  @override
  String get listAssistant => 'তালিকা সহায়ক';

  @override
  String get globalAssistant => 'সার্বিক সহায়ক';

  @override
  String get becomePremium => 'প্রিমিয়াম হোন';

  @override
  String get manageSubscription => 'সাবস্ক্রিপশন পরিচালনা';

  @override
  String get completePurchase => 'ক্রয় সম্পন্ন করুন';

  @override
  String get confirmClearList => 'সব আইটেম সরিয়ে ফেলবেন?';

  @override
  String get shareListTitle => 'তালিকা শেয়ার';

  @override
  String get shareThisCode => 'এই কোড শেয়ার করুন:';

  @override
  String get validForLimitedTime => 'সীমিত সময়ের জন্য বৈধ';

  @override
  String get importListTitle => 'তালিকা ইম্পোর্ট';

  @override
  String get enterCodeHint => 'কোড লিখুন';

  @override
  String get confirmArchiveTitle => 'ক্রয় সম্পন্ন করুন';

  @override
  String get confirmArchiveContent =>
      'এই ক্রয় সম্পন্ন করে তালিকা আর্কাইভ করবেন?';

  @override
  String get complete => 'সম্পন্ন';

  @override
  String get listArchived => 'তালিকা সফলভাবে আর্কাইভ করা হয়েছে!';

  @override
  String listAdded(String listName) {
    return '$listName যোগ করা হয়েছে!';
  }

  @override
  String get buy => 'কিনুন';

  @override
  String get unmark => 'চিহ্নমুক্ত';

  @override
  String confirmDeleteItems(int count) {
    return '$countটি আইটেম সরিয়ে ফেলবেন?';
  }

  @override
  String get confirmDeleteTitle => 'নিশ্চিত করুন';

  @override
  String confirmContent(int count) {
    return '$countটি আইটেম সরিয়ে ফেলবেন?';
  }

  @override
  String get archiveList => 'তালিকা আর্কাইভ';

  @override
  String get pantryAppBar => 'প্যান্ট্রি';

  @override
  String get generateShoppingList => 'শপিং লিস্ট তৈরি';

  @override
  String get pantryEmpty => 'প্যান্ট্রি খালি';

  @override
  String get pantryEmptySubtitle => 'বাড়িতে রাখতে চান এমন পণ্য যোগ করুন';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficitটি আইটেম কিনতে হবে';
  }

  @override
  String get noItemsToBuy => 'কেনার প্রয়োজনীয় কোনো আইটেম নেই';

  @override
  String get newPantryList => 'প্যান্ট্রি শপিং';

  @override
  String get newListTitle => 'নতুন শপিং লিস্ট';

  @override
  String itemsWillBeAdded(int count) {
    return '$countটি আইটেম যোগ করা হবে';
  }

  @override
  String get listNameLabel => 'তালিকার নাম';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" তালিকা $countটি আইটেম দিয়ে তৈরি হয়েছে';
  }

  @override
  String get noTracking => 'ট্র্যাকিং নেই';

  @override
  String get markAsPurchased => 'কেনা হিসেবে চিহ্নিত';

  @override
  String editPantryItem(String name) {
    return '$name সম্পাদনা';
  }

  @override
  String get idealQuantity => 'আদর্শ পরিমাণ';

  @override
  String get currentQuantity => 'বর্তমান পরিমাণ';

  @override
  String get consumed => 'ব্যবহৃত';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name পুনরায় মজুত করা হয়েছে $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'প্যান্ট্রি থেকে \"$name\" সরিয়ে ফেলবেন?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name সম্পাদনা';
  }

  @override
  String get settingsAppBar => 'সেটিংস';

  @override
  String get language => 'ভাষা';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'সিস্টেম ডিফল্ট';

  @override
  String get chooseLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get searchLanguage => 'ভাষা খুঁজুন...';

  @override
  String get appearance => 'চেহারা';

  @override
  String get light => 'হালকা';

  @override
  String get system => 'সিস্টেম';

  @override
  String get dark => 'গাঢ়';

  @override
  String get themeColor => 'থিম রং';

  @override
  String get dynamicColors => 'ডায়নামিক রঙ';

  @override
  String get dynamicColorsSubtitle =>
      'আপনার ওয়ালপেপারের ওপর ভিত্তি করে রঙ ব্যবহার করুন';

  @override
  String get finance => 'অর্থ';

  @override
  String get monthlyBudgetNav => 'মাসিক বাজেট';

  @override
  String get budgetSubtitle => 'আপনার মাসিক খরচ ট্র্যাক করুন';

  @override
  String get data => 'ডেটা';

  @override
  String get backupNav => 'ব্যাকআপ';

  @override
  String get backupSubtitle => 'আপনার ডেটা এক্সপোর্ট বা ইম্পোর্ট করুন';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get version => 'সংস্করণ';

  @override
  String get privacy => 'গোপনীয়তা';

  @override
  String get termsOfUse => 'ব্যবহারের শর্তাবলী';

  @override
  String get backupTitle => 'ব্যাকআপ';

  @override
  String get backupPremiumDescription =>
      'ব্যাকআপ এবং এক্সপোর্ট একটি প্রিমিয়াম বৈশিষ্ট্য';

  @override
  String get exportData => 'ডেটা এক্সপোর্ট';

  @override
  String get exportDataSubtitle => 'সব তালিকা JSON হিসেবে সংরক্ষণ';

  @override
  String get importData => 'ডেটা ইম্পোর্ট';

  @override
  String get importDataSubtitle => 'JSON থেকে তালিকা পুনরুদ্ধার';

  @override
  String get importJsonTitle => 'JSON ইম্পোর্ট';

  @override
  String get importJsonHint => 'এখানে ব্যাকআপ JSON পেস্ট করুন...';

  @override
  String get backupExported => 'ব্যাকআপ এক্সপোর্ট করা হয়েছে!';

  @override
  String get budgetAppBar => 'মাসিক বাজেট';

  @override
  String get budgetPremiumLocked => 'বৈশ্বিক মাসিক বাজেট প্রিমিয়াম';

  @override
  String get budgetUpgradePrompt => 'আনলক করতে আপগ্রেড';

  @override
  String get noBudgetDefined => 'কোনো বাজেট সেট নেই';

  @override
  String totalEstimated(String amount) {
    return 'মোট আনুমানিক: $amount';
  }

  @override
  String get setBudgetButton => 'বাজেট সেট করুন';

  @override
  String get budgetLists => 'তালিকা';

  @override
  String get budgetValueLabel => 'পরিমাণ';

  @override
  String get setBudgetTitle => 'মাসিক বাজেট';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'সব';

  @override
  String get filterPending => 'মুলতুবি';

  @override
  String get filterPurchased => 'কেনা';

  @override
  String get sortName => 'নাম';

  @override
  String get sortCategory => 'বিভাগ';

  @override
  String get sortDate => 'তারিখ';

  @override
  String get sortManual => 'ম্যানুয়াল';

  @override
  String get addItem => 'আইটেম যোগ করুন';

  @override
  String get itemName => 'আইটেমের নাম';

  @override
  String get quantityShort => 'পরিমাণ';

  @override
  String get unit => 'একক';

  @override
  String get category => 'বিভাগ';

  @override
  String get estimatedPrice => 'আনুমানিক মূল্য';

  @override
  String get addItemPrice => 'আনুমানিক মূল্য';

  @override
  String get editItem => 'আইটেম সম্পাদনা';

  @override
  String get quantityFull => 'পরিমাণ';

  @override
  String get editItemPrice => 'আনুমানিক মূল্য';

  @override
  String get addToPantry => 'প্যান্ট্রিতে যোগ করুন';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" আপনার প্যান্ট্রিতে যোগ করবেন?';
  }

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get productName => 'পণ্যের নাম';

  @override
  String get idealQty => 'আদর্শ পরিমাণ';

  @override
  String get currentQty => 'বর্তমান পরিমাণ';

  @override
  String get trackStock => 'স্টক ট্র্যাক';

  @override
  String get trackStockActive => 'শপিং Suggestions এ দেখা যায়';

  @override
  String get trackStockInactive => 'শপিং suggestion তৈরি করে না';

  @override
  String get createListDialog => 'তালিকা তৈরি';

  @override
  String get renameListDialog => 'তালিকা পুনঃনামকরণ';

  @override
  String get listHistory => 'তালিকার ইতিহাস';

  @override
  String get myLists => 'আমার তালিকা';

  @override
  String get viewActive => 'সক্রিয় দেখুন';

  @override
  String get viewHistory => 'ইতিহাস দেখুন';

  @override
  String get noArchivedLists => 'কোনো আর্কাইভ করা তালিকা নেই';

  @override
  String get noActiveLists => 'কোনো সক্রিয় তালিকা নেই';

  @override
  String completedOn(String date) {
    return '$date এ সম্পন্ন';
  }

  @override
  String get sharedLabel => 'শেয়ার করা';

  @override
  String get restore => 'পুনরুদ্ধার';

  @override
  String get removeSharedTooltip => 'অপসারণ';

  @override
  String get deleteListTitle => 'তালিকা মুছুন';

  @override
  String deleteListContent(String name) {
    return 'আপনি কি \"$name\" মুছতে চান? সব আইটেম সরানো হবে।';
  }

  @override
  String get removeSharedListTitle => 'শেয়ার করা তালিকা সরান';

  @override
  String removeSharedListContent(String name) {
    return 'আপনার তালিকা থেকে \"$name\" সরিয়ে ফেলবেন? মূল তালিকা অপরিবর্তিত থাকবে।';
  }

  @override
  String get createNewList => 'নতুন তালিকা তৈরি';

  @override
  String get aiAssistant => 'AI সহায়ক';

  @override
  String get aiAssistantDescription =>
      'আমাদের AI সহায়কের মাধ্যমে বুদ্ধিদীপ্ত পরামর্শ, রেসিপি এবং ব্যক্তিগত টিপস পান।';

  @override
  String get generalAssistant => 'সাধারণ সহায়ক';

  @override
  String get clearHistory => 'ইতিহাস পরিষ্কার';

  @override
  String get clearHistoryConfirm => 'এই সেশনের সব বার্তা মুছে ফেলবেন?';

  @override
  String get chatHint => 'আপনার বার্তা টাইপ করুন...';

  @override
  String chatError(String error) {
    return 'চ্যাট লোড করতে ত্রুটি: $error';
  }

  @override
  String get listHelp => 'আমি আপনার তালিকায় কিভাবে সাহায্য করতে পারি?';

  @override
  String get generalHelp => 'আজকে আপনার কেনাকাটায় কিভাবে সাহায্য করতে পারি?';

  @override
  String get chatSubtitle => 'আইটেম সুপারিশ, রেসিপি বা সাশ্রয়ের টিপস চান।';

  @override
  String get aiError =>
      'দুঃখিত, আপনার অনুরোধ প্রক্রিয়াকরণে ত্রুটি হয়েছে। আপনার সংযোগ পরীক্ষা করুন বা পরে আবার চেষ্টা করুন।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'প্রিমিয়াম বৈশিষ্ট্য\nআনলক করতে লগইন করুন';

  @override
  String get signInGoogle => 'Google দিয়ে সাইন ইন';

  @override
  String get signInApple => 'Apple দিয়ে সাইন ইন';

  @override
  String get continueAsGuest => 'অতিথি হিসেবে চালিয়ে যান';

  @override
  String loginError(String error) {
    return 'লগইন ত্রুটি: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus প্রিমিয়াম';

  @override
  String get premiumUpgrade => 'আনলক করতে আপগ্রেড';

  @override
  String get itemRemoved => 'আইটেম সরানো হয়েছে';

  @override
  String get undo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get emptyListTitle => 'আপনার তালিকা খালি';

  @override
  String get emptyListSubtitle => 'শুরু করতে আইটেম যোগ করুন';

  @override
  String get noListFoundTitle => 'কোনো তালিকা পাওয়া যায়নি';

  @override
  String get noListFoundSubtitle => 'শুরু করতে আপনার প্রথম তালিকা তৈরি করুন';

  @override
  String get createFirstList => 'প্রথম তালিকা তৈরি';

  @override
  String get listBudgetTitle => 'তালিকার বাজেট';

  @override
  String get budgetAmountLabel => 'বাজেটের পরিমাণ';

  @override
  String get removeBudget => 'অপসারণ';

  @override
  String get prefUnlimitedLists => 'সীমাহীন তালিকা';

  @override
  String get prefSharing => 'তালিকা শেয়ার';

  @override
  String get prefFullHistory => 'সম্পূর্ণ ইতিহাস';

  @override
  String get prefExportData => 'ডেটা এক্সপোর্ট';

  @override
  String get prefCustomThemes => 'কাস্টম থিম';

  @override
  String get prefMonthlyBudget => 'বৈশ্বিক মাসিক বাজেট';

  @override
  String get prefAIAssistant => 'ব্যক্তিগত AI সহায়ক';

  @override
  String get prefUnlimitedPantry => 'সীমাহীন প্যান্ট্রি';

  @override
  String get prefInteractiveArtifacts => 'ইন্টারেক্টিভ AI আর্টিফ্যাক্ট';

  @override
  String get themeGreen => 'সবুজ';

  @override
  String get themeBlue => 'নীল';

  @override
  String get themePurple => 'বেগুনি';

  @override
  String get themeRed => 'লাল';

  @override
  String get themeOrange => 'কমলা';

  @override
  String get themePink => 'গোলাপী';

  @override
  String get themeIndigo => 'নীলচে';

  @override
  String get themeAmber => 'পীত';

  @override
  String get themeTeal => 'টিল';

  @override
  String get themeBrown => 'বাদামী';

  @override
  String get catFruits => 'ফল';

  @override
  String get catCleaning => 'পরিষ্কার';

  @override
  String get catBeverages => 'পানীয়';

  @override
  String get catBakery => 'বেকারি';

  @override
  String get catOthers => 'অন্যান্য';

  @override
  String get unitPack => 'প্যাক';

  @override
  String get shareSubject => 'শপিং লিস্ট';

  @override
  String get monthlyBudgetTitle => 'মাসিক বাজেট';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'তালিকা মুছুন';

  @override
  String get pantryItemRemoved => 'আইটেম সরানো হয়েছে';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficitটি আইটেম কিনতে হবে',
      one: '$deficitটি আইটেম কিনতে হবে',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'কার্ট মোট';

  @override
  String get restockLabel => 'পুনরায় মজুত';

  @override
  String get advancedFeatures => 'উন্নত বৈশিষ্ট্য';

  @override
  String get selectAll => 'সব নির্বাচন';

  @override
  String get deselectAll => 'সব নির্বাচনমুক্ত';

  @override
  String get monthlyBudgetAppBar => 'মাসিক বাজেট';

  @override
  String get budgetEditTitle => 'মাসিক বাজেট';

  @override
  String get budgetDashboardTitle => 'ড্যাশবোর্ড';

  @override
  String get selectListForDashboard =>
      'ড্যাশবোর্ড দেখতে একটি তালিকা নির্বাচন করুন।';

  @override
  String get spendingAnalysis => 'খরচ বিশ্লেষণ';

  @override
  String get noItemsToAnalyze => 'বিশ্লেষণের জন্য তালিকায় কোনো আইটেম নেই।';

  @override
  String get markItemsToSeeAnalysis =>
      'বিশ্লেষণ দেখতে আইটেমগুলো কেনা হিসেবে চিহ্নিত করুন।';

  @override
  String get totalSpending => 'মোট খরচ';

  @override
  String get spendingByCategory => 'বিভাগ অনুযায়ী খরচ';

  @override
  String get achievements => 'অর্জন';

  @override
  String get exportPdfExcel => 'PDF/Excel এক্সপোর্ট';

  @override
  String get exportPdf => 'PDF হিসেবে এক্সপোর্ট';

  @override
  String get exportExcel => 'Excel হিসেবে এক্সপোর্ট';

  @override
  String get organizingAi => 'AI দিয়ে সংগঠিত হচ্ছে...';

  @override
  String get yesLabel => 'হ্যাঁ';

  @override
  String get noLabel => 'না';

  @override
  String get shareListText => 'আমার শপিং লিস্ট';

  @override
  String get emptyListAddItems =>
      'আপনার তালিকা খালি! প্রথমে আইটেম যোগ করুন। ℹ️';

  @override
  String get listOrganizedMagic => 'তালিকা যাদুর মতো বিভাগ অনুযায়ী সংগঠিত! ✨';

  @override
  String get shoppingMode => 'শপিং মোড';

  @override
  String get smartOrganization => 'স্মার্ট সংগঠন';

  @override
  String get savings => 'সঞ্চয়';

  @override
  String get shoppingModeHeader => 'শপিং মোড';

  @override
  String get shareAsText => 'ফরম্যাটেড টেক্সট হিসেবে আইটেম পাঠান';

  @override
  String get shareRealtime => 'অন্যদের সাথে রিয়েল-টাইম সিঙ্ক';

  @override
  String get quickRecipe => 'দ্রুত রেসিপি';

  @override
  String get quickRecipePrompt => 'আমার তালিকার আইটেম দিয়ে রেসিপি সুপারিশ।';

  @override
  String get economyTips => 'সাশ্রয়ের টিপস';

  @override
  String get economyTipsPrompt => 'এই কেনাকাটায় কিভাবে টাকা বাঁচাতে পারি?';

  @override
  String get organizeAisles => 'আইল অনুযায়ী সংগঠিত';

  @override
  String get organizeAislesPrompt => 'বাজারের আইল অনুযায়ী সংগঠিত।';

  @override
  String get recipeSuggestion => 'রেসিপি সুপারিশ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ক্রেডিট বাকি';
  }

  @override
  String get addAllToList => 'সব তালিকায় যোগ';

  @override
  String get organizeByAisles => 'আইল অনুযায়ী সংগঠিত';

  @override
  String get voiceTranscriptionTooltip => 'ভয়েস টাইপিং (ফ্রি)';

  @override
  String get aiVoiceCommandTooltip => 'AI ভয়েস কমান্ড (প্রিমিয়াম)';

  @override
  String get voiceCommandTitle => 'AI ভয়েস কমান্ড';

  @override
  String get voiceCommandContent =>
      'আপনার তালিকা পরিচালনা করতে স্বাভাবিকভাবে কথা বলুন!\n\nউদাহরণ:\n• \'রুটি, পনির এবং হ্যাম যোগ করুন\'\n• \'লন্ড্রি ডিটারজেন্ট সরান\'\n• \'থিম নীলে পরিবর্তন করুন\'\n\nএটি Lista Plus Premium-এর একচেটিয়া বৈশিষ্ট্য।';

  @override
  String get voiceCommandPlanBtn => 'প্ল্যান দেখুন';

  @override
  String get itemsAddedSuccess => 'আইটেম সফলভাবে তালিকায় যোগ হয়েছে!';

  @override
  String get viewList => 'তালিকা দেখুন';

  @override
  String get feedbackTitle => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackPrompt => 'আপনি কী শেয়ার করতে চান?';

  @override
  String get feedbackTypeBug => 'বাগ রিপোর্ট';

  @override
  String get feedbackTypeBugHint => 'কিছু কাজ করছে না';

  @override
  String get feedbackTypeSuggestion => 'পরামর্শ';

  @override
  String get feedbackTypeSuggestionHint => 'অ্যাপ উন্নত করার ধারণা';

  @override
  String get feedbackTypeTranslation => 'অনুবাদ সমস্যা';

  @override
  String get feedbackTypeTranslationHint => 'ভুল বা অস্বাভাবিক অনুবাদ';

  @override
  String get feedbackTypeFeature => 'ফিচার অনুরোধ';

  @override
  String get feedbackTypeFeatureHint => 'আপনি যে ফিচার দেখতে চান';

  @override
  String get feedbackTypeOther => 'অন্যান্য';

  @override
  String get feedbackTypeOtherHint => 'অন্যান্য ধরনের প্রতিক্রিয়া';

  @override
  String get feedbackHint => 'বিস্তারিত আপনার প্রতিক্রিয়া বর্ণনা করুন...';

  @override
  String get feedbackSend => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackSending => 'পাঠানো হচ্ছে...';

  @override
  String get feedbackThankYou => 'ধন্যবাদ!';

  @override
  String get feedbackThankYouMessage =>
      'আপনার প্রতিক্রিয়া গৃহীত হয়েছে এবং এটি আমাদের সবার জন্য Lista Plus উন্নত করতে সাহায্য করে।';

  @override
  String get feedbackBack => 'পিছনে';

  @override
  String feedbackError(String error) {
    return 'পাঠাতে ত্রুটি: $error';
  }

  @override
  String get feedbackRetry => 'আবার চেষ্টা করুন';

  @override
  String get feedbackSettingsTitle => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackSettingsSubtitle =>
      'বাগ রিপোর্ট করুন, উন্নতির পরামর্শ দিন বা অনুবাদ ঠিক করুন';

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
  String get openMenu => 'মেনু খুলুন';

  @override
  String get viewRecipe => 'রেসিপি দেখুন';

  @override
  String get recipeCreated => 'রেসিপি তৈরি হয়েছে!';

  @override
  String get editRecipe => 'সম্পাদনা';

  @override
  String get deleteRecipe => 'মুছুন';

  @override
  String get deleteRecipeConfirm => 'এই রেসিপিটি মুছবেন?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'আপনি কি নিশ্চিত যে আপনি \"$recipeName\" মুছতে চান? এই কাজটি আর ফিরে পাওয়া যাবে না।';
  }

  @override
  String get ingredients => 'উপাদানসমূহ';

  @override
  String get instructions => 'নির্দেশাবলী';

  @override
  String get prepTime => 'প্রস্তুতির সময়';

  @override
  String get recipeSaved => 'রেসিপি সংরক্ষিত হয়েছে!';

  @override
  String get noRecipesSaved => 'কোনো রেসিপি সংরক্ষিত নেই';

  @override
  String get noRecipesSavedHint =>
      'নিচের বোতামটি ট্যাপ করে আপনার প্রথম কাস্টম রেসিপি তৈরি করুন।';

  @override
  String get myRecipes => 'আমার রেসিপি';

  @override
  String get newRecipe => 'নতুন রেসিপি';

  @override
  String get loadingRecipes => 'আপনার রেসিপি লোড হচ্ছে...';

  @override
  String get errorLoadingRecipes => 'রেসিপি লোড করতে ত্রুটি';

  @override
  String get addIngredient => 'উপাদান যোগ করুন';

  @override
  String get saveRecipe => 'সংরক্ষণ করুন';

  @override
  String get recipeName => 'রেসিপির নাম';

  @override
  String get shortDescription => 'সংক্ষিপ্ত বর্ণনা';

  @override
  String get prepTimeMinutes => 'প্রস্তুতির সময় (মিনিট)';

  @override
  String get instructionsHint => 'প্রতি লাইনে একটি করে ধাপ লিখুন...';

  @override
  String get addPhoto => 'ফটো যোগ করুন';

  @override
  String get imageUrlPlaceholder => 'অথবা ছবির URL পেস্ট করুন';

  @override
  String get tags => 'ট্যাগ';

  @override
  String get recipeTags => 'রেসিপি ট্যাগ';

  @override
  String get suggestedTags => 'প্রস্তাবিত';

  @override
  String get searchRecipes => 'রেসিপি খুঁজুন...';

  @override
  String get filterByTag => 'ট্যাগ অনুযায়ী ফিল্টার করুন';

  @override
  String get allTags => 'সব';

  @override
  String get recipeDeleted => 'রেসিপি মোছা হয়েছে';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get editRecipeTitle => 'রেসিপি সম্পাদনা করুন';

  @override
  String get newRecipeTitle => 'নতুন রেসিপি';

  @override
  String get requiredField => 'প্রয়োজনীয়';

  @override
  String get chooseImageSource => 'ছবির উৎস নির্বাচন করুন';

  @override
  String get gallery => 'গ্যালারি';

  @override
  String get enterUrl => 'URL লিখুন';

  @override
  String get recipeImage => 'রেসিপির ছবি';

  @override
  String get removeImage => 'ছবি সরান';

  @override
  String get mealPlannerTitle => 'মিল প্ল্যানার';

  @override
  String get mealPlannerViewMonthly => 'মাসিক ভিউ';

  @override
  String get mealPlannerViewWeekly => 'সাপ্তাহিক ভিউ';

  @override
  String get mealPlannerNoMeals => 'কোনো খাবারের পরিকল্পনা নেই';

  @override
  String get mealPlannerNoMealsHint =>
      'খাবার যোগ করতে কোনো দিনের ওপর ট্যাপ করুন';

  @override
  String get mealPlannerLoading => 'খাবারের পরিকল্পনা লোড হচ্ছে...';

  @override
  String get mealPlannerError => 'খাবারের পরিকল্পনা লোড করতে ত্রুটি';

  @override
  String get mealPlannerAddMeal => 'খাবার যোগ করুন';

  @override
  String get mealPlannerEditMeal => 'খাবার সম্পাদনা করুন';

  @override
  String get mealPlannerDeleteMeal => 'খাবার সরান';

  @override
  String get mealPlannerMealDeleted => 'খাবার সরানো হয়েছে';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন',
      one: '$count জন',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'পরিবেশন সংখ্যা';

  @override
  String get mealPlannerNoteLabel => 'নোট (ঐচ্ছিক)';

  @override
  String get mealPlannerSelectRecipe => 'একটি রেসিপি নির্বাচন করুন';

  @override
  String get mealPlannerSearchRecipes => 'রেসিপি খুঁজুন...';

  @override
  String get mealPlannerNoRecipesFound => 'কোনো রেসিপি পাওয়া যায়নি';

  @override
  String get mealPlannerNoRecipesHint =>
      'প্রথমে রেসিপি ট্যাবে রেসিপি তৈরি করুন';

  @override
  String get mealPlannerSave => 'পরিকল্পনায় যোগ করুন';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$totalটির মধ্যে $countটি খাবার পরিকল্পিত';
  }

  @override
  String get mealPlannerGenerateList => 'শপিং লিস্ট তৈরি করুন';

  @override
  String get mealPlannerGenerateListConfirm =>
      'এই সপ্তাহের পরিকল্পিত খাবারের সব উপাদান আপনার শপিং লিস্টে যোগ করবেন?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$countটি উপাদান আপনার তালিকায় যোগ করা হয়েছে!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'যোগ করার মতো কোনো উপাদান নেই। প্রথমে রেসিপি সহ কিছু খাবারের পরিকল্পনা করুন।';

  @override
  String get mealPlannerGenerateListNoList =>
      'প্রথমে একটি শপিং লিস্ট তৈরি করুন।';

  @override
  String get mealPlannerMealTypeBreakfast => 'সকালের নাস্তা';

  @override
  String get mealPlannerMealTypeLunch => 'দুপুরের খাবার';

  @override
  String get mealPlannerMealTypeDinner => 'রাতের খাবার';

  @override
  String get mealPlannerMealTypeSnack => 'বিকেলের নাস্তা';

  @override
  String get mealPlannerDateLabel => 'তারিখ';

  @override
  String get mealPlannerWeekEmpty => 'এই সপ্তাহের জন্য কিছু পরিকল্পিত নেই';

  @override
  String get mealPlannerWeekEmptyHint =>
      'আপনার খাবারের পরিকল্পনা শুরু করতে যেকোনো দিনের ওপর ট্যাপ করুন!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes মিনিট';
  }
}

/// The translations for Bengali Bangla, as used in Bangladesh (`bn_BD`).
class AppLocalizationsBnBd extends AppLocalizationsBn {
  AppLocalizationsBnBd() : super('bn_BD');

  @override
  String get appTitle => 'শপিং লিস্ট';

  @override
  String get lists => 'তালিকা';

  @override
  String get pantry => 'প্যান্ট্রি';

  @override
  String get cancel => 'বাতিল';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get create => 'তৈরি করুন';

  @override
  String get add => 'যোগ করুন';

  @override
  String get remove => 'অপসারণ';

  @override
  String get delete => 'মুছুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get copy => 'কপি';

  @override
  String get retry => 'পুনরায় চেষ্টা';

  @override
  String get regenerate => 'পুনরায় তৈরি';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get close => 'বন্ধ';

  @override
  String get import => 'ইম্পোর্ট';

  @override
  String get rename => 'পুনঃনামকরণ';

  @override
  String get upgrade => 'আপগ্রেড';

  @override
  String get clear => 'পরিষ্কার';

  @override
  String error(String message) {
    return 'ত্রুটি: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ত্রুটি: $message';
  }

  @override
  String get purchaseError => 'ক্রয় প্রক্রিয়াকরণে ত্রুটি। আবার চেষ্টা করুন।';

  @override
  String get restoreError => 'ক্রয় পুনরুদ্ধারে ত্রুটি। আবার চেষ্টা করুন।';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get fieldRequired => 'প্রয়োজনীয় ক্ষেত্র';

  @override
  String get addedFeedback => 'যোগ করা হয়েছে!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি নির্বাচিত',
      one: '$countটি নির্বাচিত',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'আনুমানিক';

  @override
  String get alreadyPurchased => 'ইতিমধ্যে কেনা';

  @override
  String get clearList => 'তালিকা পরিষ্কার';

  @override
  String get clearPurchased => 'কেনা জিনিস পরিষ্কার';

  @override
  String get share => 'শেয়ার';

  @override
  String get shareViaCode => 'কোডের মাধ্যমে শেয়ার';

  @override
  String get importViaCode => 'কোডের মাধ্যমে ইম্পোর্ট';

  @override
  String get listAssistant => 'তালিকা সহায়ক';

  @override
  String get globalAssistant => 'সার্বিক সহায়ক';

  @override
  String get becomePremium => 'প্রিমিয়াম হোন';

  @override
  String get manageSubscription => 'সাবস্ক্রিপশন পরিচালনা';

  @override
  String get completePurchase => 'ক্রয় সম্পন্ন করুন';

  @override
  String get confirmClearList => 'সব আইটেম সরিয়ে ফেলবেন?';

  @override
  String get shareListTitle => 'তালিকা শেয়ার';

  @override
  String get shareThisCode => 'এই কোড শেয়ার করুন:';

  @override
  String get validForLimitedTime => 'সীমিত সময়ের জন্য বৈধ';

  @override
  String get importListTitle => 'তালিকা ইম্পোর্ট';

  @override
  String get enterCodeHint => 'কোড লিখুন';

  @override
  String get confirmArchiveTitle => 'ক্রয় সম্পন্ন করুন';

  @override
  String get confirmArchiveContent =>
      'এই ক্রয় সম্পন্ন করে তালিকা আর্কাইভ করবেন?';

  @override
  String get complete => 'সম্পন্ন';

  @override
  String get listArchived => 'তালিকা সফলভাবে আর্কাইভ করা হয়েছে!';

  @override
  String listAdded(String listName) {
    return '$listName যোগ করা হয়েছে!';
  }

  @override
  String get buy => 'কিনুন';

  @override
  String get unmark => 'চিহ্নমুক্ত';

  @override
  String confirmDeleteItems(int count) {
    return '$countটি আইটেম সরিয়ে ফেলবেন?';
  }

  @override
  String get confirmDeleteTitle => 'নিশ্চিত করুন';

  @override
  String confirmContent(int count) {
    return '$countটি আইটেম সরিয়ে ফেলবেন?';
  }

  @override
  String get archiveList => 'তালিকা আর্কাইভ';

  @override
  String get pantryAppBar => 'প্যান্ট্রি';

  @override
  String get generateShoppingList => 'শপিং লিস্ট তৈরি';

  @override
  String get pantryEmpty => 'প্যান্ট্রি খালি';

  @override
  String get pantryEmptySubtitle => 'বাড়িতে রাখতে চান এমন পণ্য যোগ করুন';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficitটি আইটেম কিনতে হবে';
  }

  @override
  String get noItemsToBuy => 'কেনার প্রয়োজনীয় কোনো আইটেম নেই';

  @override
  String get newPantryList => 'প্যান্ট্রি শপিং';

  @override
  String get newListTitle => 'নতুন শপিং লিস্ট';

  @override
  String itemsWillBeAdded(int count) {
    return '$countটি আইটেম যোগ করা হবে';
  }

  @override
  String get listNameLabel => 'তালিকার নাম';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" তালিকা $countটি আইটেম দিয়ে তৈরি হয়েছে';
  }

  @override
  String get noTracking => 'ট্র্যাকিং নেই';

  @override
  String get markAsPurchased => 'কেনা হিসেবে চিহ্নিত';

  @override
  String editPantryItem(String name) {
    return '$name সম্পাদনা';
  }

  @override
  String get idealQuantity => 'আদর্শ পরিমাণ';

  @override
  String get currentQuantity => 'বর্তমান পরিমাণ';

  @override
  String get consumed => 'ব্যবহৃত';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name পুনরায় মজুত করা হয়েছে $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'প্যান্ট্রি থেকে \"$name\" সরিয়ে ফেলবেন?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name সম্পাদনা';
  }

  @override
  String get settingsAppBar => 'সেটিংস';

  @override
  String get language => 'ভাষা';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'সিস্টেম ডিফল্ট';

  @override
  String get chooseLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get searchLanguage => 'ভাষা খুঁজুন...';

  @override
  String get appearance => 'চেহারা';

  @override
  String get light => 'হালকা';

  @override
  String get system => 'সিস্টেম';

  @override
  String get dark => 'গাঢ়';

  @override
  String get themeColor => 'থিম রং';

  @override
  String get dynamicColors => 'ডায়নামিক রঙ';

  @override
  String get dynamicColorsSubtitle =>
      'আপনার ওয়ালপেপারের ওপর ভিত্তি করে রঙ ব্যবহার করুন';

  @override
  String get finance => 'অর্থ';

  @override
  String get monthlyBudgetNav => 'মাসিক বাজেট';

  @override
  String get budgetSubtitle => 'আপনার মাসিক খরচ ট্র্যাক করুন';

  @override
  String get data => 'ডেটা';

  @override
  String get backupNav => 'ব্যাকআপ';

  @override
  String get backupSubtitle => 'আপনার ডেটা এক্সপোর্ট বা ইম্পোর্ট করুন';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get version => 'সংস্করণ';

  @override
  String get privacy => 'গোপনীয়তা';

  @override
  String get termsOfUse => 'ব্যবহারের শর্তাবলী';

  @override
  String get backupTitle => 'ব্যাকআপ';

  @override
  String get backupPremiumDescription =>
      'ব্যাকআপ এবং এক্সপোর্ট একটি প্রিমিয়াম বৈশিষ্ট্য';

  @override
  String get exportData => 'ডেটা এক্সপোর্ট';

  @override
  String get exportDataSubtitle => 'সব তালিকা JSON হিসেবে সংরক্ষণ';

  @override
  String get importData => 'ডেটা ইম্পোর্ট';

  @override
  String get importDataSubtitle => 'JSON থেকে তালিকা পুনরুদ্ধার';

  @override
  String get importJsonTitle => 'JSON ইম্পোর্ট';

  @override
  String get importJsonHint => 'এখানে ব্যাকআপ JSON পেস্ট করুন...';

  @override
  String get backupExported => 'ব্যাকআপ এক্সপোর্ট করা হয়েছে!';

  @override
  String get budgetAppBar => 'মাসিক বাজেট';

  @override
  String get budgetPremiumLocked => 'বৈশ্বিক মাসিক বাজেট প্রিমিয়াম';

  @override
  String get budgetUpgradePrompt => 'আনলক করতে আপগ্রেড';

  @override
  String get noBudgetDefined => 'কোনো বাজেট সেট নেই';

  @override
  String totalEstimated(String amount) {
    return 'মোট আনুমানিক: $amount';
  }

  @override
  String get setBudgetButton => 'বাজেট সেট করুন';

  @override
  String get budgetLists => 'তালিকা';

  @override
  String get budgetValueLabel => 'পরিমাণ';

  @override
  String get setBudgetTitle => 'মাসিক বাজেট';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'সব';

  @override
  String get filterPending => 'মুলতুবি';

  @override
  String get filterPurchased => 'কেনা';

  @override
  String get sortName => 'নাম';

  @override
  String get sortCategory => 'বিভাগ';

  @override
  String get sortDate => 'তারিখ';

  @override
  String get sortManual => 'ম্যানুয়াল';

  @override
  String get addItem => 'আইটেম যোগ করুন';

  @override
  String get itemName => 'আইটেমের নাম';

  @override
  String get quantityShort => 'পরিমাণ';

  @override
  String get unit => 'একক';

  @override
  String get category => 'বিভাগ';

  @override
  String get estimatedPrice => 'আনুমানিক মূল্য';

  @override
  String get addItemPrice => 'আনুমানিক মূল্য';

  @override
  String get editItem => 'আইটেম সম্পাদনা';

  @override
  String get quantityFull => 'পরিমাণ';

  @override
  String get editItemPrice => 'আনুমানিক মূল্য';

  @override
  String get addToPantry => 'প্যান্ট্রিতে যোগ করুন';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" আপনার প্যান্ট্রিতে যোগ করবেন?';
  }

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get productName => 'পণ্যের নাম';

  @override
  String get idealQty => 'আদর্শ পরিমাণ';

  @override
  String get currentQty => 'বর্তমান পরিমাণ';

  @override
  String get trackStock => 'স্টক ট্র্যাক';

  @override
  String get trackStockActive => 'শপিং Suggestions এ দেখা যায়';

  @override
  String get trackStockInactive => 'শপিং suggestion তৈরি করে না';

  @override
  String get createListDialog => 'তালিকা তৈরি';

  @override
  String get renameListDialog => 'তালিকা পুনঃনামকরণ';

  @override
  String get listHistory => 'তালিকার ইতিহাস';

  @override
  String get myLists => 'আমার তালিকা';

  @override
  String get viewActive => 'সক্রিয় দেখুন';

  @override
  String get viewHistory => 'ইতিহাস দেখুন';

  @override
  String get noArchivedLists => 'কোনো আর্কাইভ করা তালিকা নেই';

  @override
  String get noActiveLists => 'কোনো সক্রিয় তালিকা নেই';

  @override
  String completedOn(String date) {
    return '$date এ সম্পন্ন';
  }

  @override
  String get sharedLabel => 'শেয়ার করা';

  @override
  String get restore => 'পুনরুদ্ধার';

  @override
  String get removeSharedTooltip => 'অপসারণ';

  @override
  String get deleteListTitle => 'তালিকা মুছুন';

  @override
  String deleteListContent(String name) {
    return 'আপনি কি \"$name\" মুছতে চান? সব আইটেম সরানো হবে।';
  }

  @override
  String get removeSharedListTitle => 'শেয়ার করা তালিকা সরান';

  @override
  String removeSharedListContent(String name) {
    return 'আপনার তালিকা থেকে \"$name\" সরিয়ে ফেলবেন? মূল তালিকা অপরিবর্তিত থাকবে।';
  }

  @override
  String get createNewList => 'নতুন তালিকা তৈরি';

  @override
  String get aiAssistant => 'AI সহায়ক';

  @override
  String get aiAssistantDescription =>
      'আমাদের AI সহায়কের মাধ্যমে বুদ্ধিদীপ্ত পরামর্শ, রেসিপি এবং ব্যক্তিগত টিপস পান।';

  @override
  String get generalAssistant => 'সাধারণ সহায়ক';

  @override
  String get clearHistory => 'ইতিহাস পরিষ্কার';

  @override
  String get clearHistoryConfirm => 'এই সেশনের সব বার্তা মুছে ফেলবেন?';

  @override
  String get chatHint => 'আপনার বার্তা টাইপ করুন...';

  @override
  String chatError(String error) {
    return 'চ্যাট লোড করতে ত্রুটি: $error';
  }

  @override
  String get listHelp => 'আমি আপনার তালিকায় কিভাবে সাহায্য করতে পারি?';

  @override
  String get generalHelp => 'আজকে আপনার কেনাকাটায় কিভাবে সাহায্য করতে পারি?';

  @override
  String get chatSubtitle => 'আইটেম সুপারিশ, রেসিপি বা সাশ্রয়ের টিপস চান।';

  @override
  String get aiError =>
      'দুঃখিত, আপনার অনুরোধ প্রক্রিয়াকরণে ত্রুটি হয়েছে। আপনার সংযোগ পরীক্ষা করুন বা পরে আবার চেষ্টা করুন।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'প্রিমিয়াম বৈশিষ্ট্য\nআনলক করতে লগইন করুন';

  @override
  String get signInGoogle => 'Google দিয়ে সাইন ইন';

  @override
  String get signInApple => 'Apple দিয়ে সাইন ইন';

  @override
  String get continueAsGuest => 'অতিথি হিসেবে চালিয়ে যান';

  @override
  String loginError(String error) {
    return 'লগইন ত্রুটি: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus প্রিমিয়াম';

  @override
  String get premiumUpgrade => 'আনলক করতে আপগ্রেড';

  @override
  String get itemRemoved => 'আইটেম সরানো হয়েছে';

  @override
  String get undo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get emptyListTitle => 'আপনার তালিকা খালি';

  @override
  String get emptyListSubtitle => 'শুরু করতে আইটেম যোগ করুন';

  @override
  String get noListFoundTitle => 'কোনো তালিকা পাওয়া যায়নি';

  @override
  String get noListFoundSubtitle => 'শুরু করতে আপনার প্রথম তালিকা তৈরি করুন';

  @override
  String get createFirstList => 'প্রথম তালিকা তৈরি';

  @override
  String get listBudgetTitle => 'তালিকার বাজেট';

  @override
  String get budgetAmountLabel => 'বাজেটের পরিমাণ';

  @override
  String get removeBudget => 'অপসারণ';

  @override
  String get prefUnlimitedLists => 'সীমাহীন তালিকা';

  @override
  String get prefSharing => 'তালিকা শেয়ার';

  @override
  String get prefFullHistory => 'সম্পূর্ণ ইতিহাস';

  @override
  String get prefExportData => 'ডেটা এক্সপোর্ট';

  @override
  String get prefCustomThemes => 'কাস্টম থিম';

  @override
  String get prefMonthlyBudget => 'বৈশ্বিক মাসিক বাজেট';

  @override
  String get prefAIAssistant => 'ব্যক্তিগত AI সহায়ক';

  @override
  String get prefUnlimitedPantry => 'সীমাহীন প্যান্ট্রি';

  @override
  String get prefInteractiveArtifacts => 'ইন্টারেক্টিভ AI আর্টিফ্যাক্ট';

  @override
  String get themeGreen => 'সবুজ';

  @override
  String get themeBlue => 'নীল';

  @override
  String get themePurple => 'বেগুনি';

  @override
  String get themeRed => 'লাল';

  @override
  String get themeOrange => 'কমলা';

  @override
  String get themePink => 'গোলাপী';

  @override
  String get themeIndigo => 'নীলচে';

  @override
  String get themeAmber => 'পীত';

  @override
  String get themeTeal => 'টিল';

  @override
  String get themeBrown => 'বাদামী';

  @override
  String get catFruits => 'ফল';

  @override
  String get catCleaning => 'পরিষ্কার';

  @override
  String get catBeverages => 'পানীয়';

  @override
  String get catBakery => 'বেকারি';

  @override
  String get catOthers => 'অন্যান্য';

  @override
  String get unitPack => 'প্যাক';

  @override
  String get shareSubject => 'শপিং লিস্ট';

  @override
  String get monthlyBudgetTitle => 'মাসিক বাজেট';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'তালিকা মুছুন';

  @override
  String get pantryItemRemoved => 'আইটেম সরানো হয়েছে';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficitটি আইটেম কিনতে হবে',
      one: '$deficitটি আইটেম কিনতে হবে',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'কার্ট মোট';

  @override
  String get restockLabel => 'পুনরায় মজুত';

  @override
  String get advancedFeatures => 'উন্নত বৈশিষ্ট্য';

  @override
  String get selectAll => 'সব নির্বাচন';

  @override
  String get deselectAll => 'সব নির্বাচনমুক্ত';

  @override
  String get monthlyBudgetAppBar => 'মাসিক বাজেট';

  @override
  String get budgetEditTitle => 'মাসিক বাজেট';

  @override
  String get budgetDashboardTitle => 'ড্যাশবোর্ড';

  @override
  String get selectListForDashboard =>
      'ড্যাশবোর্ড দেখতে একটি তালিকা নির্বাচন করুন।';

  @override
  String get spendingAnalysis => 'খরচ বিশ্লেষণ';

  @override
  String get noItemsToAnalyze => 'বিশ্লেষণের জন্য তালিকায় কোনো আইটেম নেই।';

  @override
  String get markItemsToSeeAnalysis =>
      'বিশ্লেষণ দেখতে আইটেমগুলো কেনা হিসেবে চিহ্নিত করুন।';

  @override
  String get totalSpending => 'মোট খরচ';

  @override
  String get spendingByCategory => 'বিভাগ অনুযায়ী খরচ';

  @override
  String get achievements => 'অর্জন';

  @override
  String get exportPdfExcel => 'PDF/Excel এক্সপোর্ট';

  @override
  String get exportPdf => 'PDF হিসেবে এক্সপোর্ট';

  @override
  String get exportExcel => 'Excel হিসেবে এক্সপোর্ট';

  @override
  String get organizingAi => 'AI দিয়ে সংগঠিত হচ্ছে...';

  @override
  String get yesLabel => 'হ্যাঁ';

  @override
  String get noLabel => 'না';

  @override
  String get shareListText => 'আমার শপিং লিস্ট';

  @override
  String get emptyListAddItems =>
      'আপনার তালিকা খালি! প্রথমে আইটেম যোগ করুন। ℹ️';

  @override
  String get listOrganizedMagic => 'তালিকা যাদুর মতো বিভাগ অনুযায়ী সংগঠিত! ✨';

  @override
  String get shoppingMode => 'শপিং মোড';

  @override
  String get smartOrganization => 'স্মার্ট সংগঠন';

  @override
  String get savings => 'সঞ্চয়';

  @override
  String get shoppingModeHeader => 'শপিং মোড';

  @override
  String get shareAsText => 'ফরম্যাটেড টেক্সট হিসেবে আইটেম পাঠান';

  @override
  String get shareRealtime => 'অন্যদের সাথে রিয়েল-টাইম সিঙ্ক';

  @override
  String get quickRecipe => 'দ্রুত রেসিপি';

  @override
  String get quickRecipePrompt => 'আমার তালিকার আইটেম দিয়ে রেসিপি সুপারিশ।';

  @override
  String get economyTips => 'সাশ্রয়ের টিপস';

  @override
  String get economyTipsPrompt => 'এই কেনাকাটায় কিভাবে টাকা বাঁচাতে পারি?';

  @override
  String get organizeAisles => 'আইল অনুযায়ী সংগঠিত';

  @override
  String get organizeAislesPrompt => 'বাজারের আইল অনুযায়ী সংগঠিত।';

  @override
  String get recipeSuggestion => 'রেসিপি সুপারিশ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ক্রেডিট বাকি';
  }

  @override
  String get addAllToList => 'সব তালিকায় যোগ';

  @override
  String get organizeByAisles => 'আইল অনুযায়ী সংগঠিত';

  @override
  String get voiceTranscriptionTooltip => 'ভয়েস টাইপিং (ফ্রি)';

  @override
  String get aiVoiceCommandTooltip => 'AI ভয়েস কমান্ড (প্রিমিয়াম)';

  @override
  String get voiceCommandTitle => 'AI ভয়েস কমান্ড';

  @override
  String get voiceCommandContent =>
      'আপনার তালিকা পরিচালনা করতে স্বাভাবিকভাবে কথা বলুন!\n\nউদাহরণ:\n• \'রুটি, পনির এবং হ্যাম যোগ করুন\'\n• \'লন্ড্রি ডিটারজেন্ট সরান\'\n• \'থিম নীলে পরিবর্তন করুন\'\n\nএটি Lista Plus Premium-এর একচেটিয়া বৈশিষ্ট্য।';

  @override
  String get voiceCommandPlanBtn => 'প্ল্যান দেখুন';

  @override
  String get itemsAddedSuccess => 'আইটেম সফলভাবে তালিকায় যোগ হয়েছে!';

  @override
  String get viewList => 'তালিকা দেখুন';

  @override
  String get feedbackTitle => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackPrompt => 'আপনি কী শেয়ার করতে চান?';

  @override
  String get feedbackTypeBug => 'বাগ রিপোর্ট করুন';

  @override
  String get feedbackTypeBugHint => 'কিছু কাজ করছে না';

  @override
  String get feedbackTypeSuggestion => 'পরামর্শ';

  @override
  String get feedbackTypeSuggestionHint => 'অ্যাপ উন্নত করার ধারণা';

  @override
  String get feedbackTypeTranslation => 'অনুবাদ সমস্যা';

  @override
  String get feedbackTypeTranslationHint => 'ভুল বা অস্বাভাবিক অনুবাদ';

  @override
  String get feedbackTypeFeature => 'ফিচার অনুরোধ';

  @override
  String get feedbackTypeFeatureHint => 'আপনি যে ফিচার দেখতে চান';

  @override
  String get feedbackTypeOther => 'অন্যান্য';

  @override
  String get feedbackTypeOtherHint => 'অন্যান্য ধরনের প্রতিক্রিয়া';

  @override
  String get feedbackHint => 'আপনার প্রতিক্রিয়া বিস্তারিত বর্ণনা করুন...';

  @override
  String get feedbackSend => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackSending => 'পাঠানো হচ্ছে...';

  @override
  String get feedbackThankYou => 'ধন্যবাদ!';

  @override
  String get feedbackThankYouMessage =>
      'আপনার প্রতিক্রিয়া গৃহীত হয়েছে এবং এটি Lista Plus-কে সবার জন্য উন্নত করতে সহায়তা করে।';

  @override
  String get feedbackBack => 'পিছনে';

  @override
  String feedbackError(String error) {
    return 'পাঠাতে ত্রুটি: $error';
  }

  @override
  String get feedbackRetry => 'আবার চেষ্টা করুন';

  @override
  String get feedbackSettingsTitle => 'প্রতিক্রিয়া পাঠান';

  @override
  String get feedbackSettingsSubtitle =>
      'বাগ রিপোর্ট করুন, উন্নতির পরামর্শ দিন বা অনুবাদ ঠিক করুন';

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
  String get openMenu => 'মেনু খুলুন';

  @override
  String get viewRecipe => 'রেসিপি দেখুন';

  @override
  String get recipeCreated => 'রেসিপি তৈরি হয়েছে!';

  @override
  String get editRecipe => 'সম্পাদনা';

  @override
  String get deleteRecipe => 'মুছুন';

  @override
  String get deleteRecipeConfirm => 'এই রেসিপিটি মুছবেন?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'আপনি কি নিশ্চিত যে আপনি \"$recipeName\" মুছতে চান? এই কাজটি আর ফিরে পাওয়া যাবে না।';
  }

  @override
  String get ingredients => 'উপাদানসমূহ';

  @override
  String get instructions => 'নির্দেশাবলী';

  @override
  String get prepTime => 'প্রস্তুতির সময়';

  @override
  String get recipeSaved => 'রেসিপি সংরক্ষিত হয়েছে!';

  @override
  String get noRecipesSaved => 'কোনো রেসিপি সংরক্ষিত নেই';

  @override
  String get noRecipesSavedHint =>
      'নিচের বোতামটি ট্যাপ করে আপনার প্রথম কাস্টম রেসিপি তৈরি করুন।';

  @override
  String get myRecipes => 'আমার রেসিপি';

  @override
  String get newRecipe => 'নতুন রেসিপি';

  @override
  String get loadingRecipes => 'আপনার রেসিপি লোড হচ্ছে...';

  @override
  String get errorLoadingRecipes => 'রেসিপি লোড করতে ত্রুটি';

  @override
  String get addIngredient => 'উপাদান যোগ করুন';

  @override
  String get saveRecipe => 'সংরক্ষণ করুন';

  @override
  String get recipeName => 'রেসিপির নাম';

  @override
  String get shortDescription => 'সংক্ষিপ্ত বর্ণনা';

  @override
  String get prepTimeMinutes => 'প্রস্তুতির সময় (মিনিট)';

  @override
  String get instructionsHint => 'প্রতি লাইনে একটি করে ধাপ লিখুন...';

  @override
  String get addPhoto => 'ফটো যোগ করুন';

  @override
  String get imageUrlPlaceholder => 'অথবা ছবির URL পেস্ট করুন';

  @override
  String get tags => 'ট্যাগ';

  @override
  String get recipeTags => 'রেসিপি ট্যাগ';

  @override
  String get suggestedTags => 'প্রস্তাবিত';

  @override
  String get searchRecipes => 'রেসিপি খুঁজুন...';

  @override
  String get filterByTag => 'ট্যাগ অনুযায়ী ফিল্টার করুন';

  @override
  String get allTags => 'সব';

  @override
  String get recipeDeleted => 'রেসিপি মোছা হয়েছে';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get editRecipeTitle => 'রেসিপি সম্পাদনা করুন';

  @override
  String get newRecipeTitle => 'নতুন রেসিপি';

  @override
  String get requiredField => 'প্রয়োজনীয়';

  @override
  String get chooseImageSource => 'ছবির উৎস নির্বাচন করুন';

  @override
  String get gallery => 'গ্যালারি';

  @override
  String get enterUrl => 'URL লিখুন';

  @override
  String get recipeImage => 'রেসিপির ছবি';

  @override
  String get removeImage => 'ছবি সরান';

  @override
  String get mealPlannerTitle => 'মিল প্ল্যানার';

  @override
  String get mealPlannerViewMonthly => 'মাসিক ভিউ';

  @override
  String get mealPlannerViewWeekly => 'সাপ্তাহিক ভিউ';

  @override
  String get mealPlannerNoMeals => 'কোনো খাবারের পরিকল্পনা নেই';

  @override
  String get mealPlannerNoMealsHint =>
      'খাবার যোগ করতে কোনো দিনের ওপর ট্যাপ করুন';

  @override
  String get mealPlannerLoading => 'খাবারের পরিকল্পনা লোড হচ্ছে...';

  @override
  String get mealPlannerError => 'খাবারের পরিকল্পনা লোড করতে ত্রুটি';

  @override
  String get mealPlannerAddMeal => 'খাবার যোগ করুন';

  @override
  String get mealPlannerEditMeal => 'খাবার সম্পাদনা করুন';

  @override
  String get mealPlannerDeleteMeal => 'খাবার সরান';

  @override
  String get mealPlannerMealDeleted => 'খাবার সরানো হয়েছে';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন',
      one: '$count জন',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'পরিবেশন সংখ্যা';

  @override
  String get mealPlannerNoteLabel => 'নোট (ঐচ্ছিক)';

  @override
  String get mealPlannerSelectRecipe => 'একটি রেসিপি নির্বাচন করুন';

  @override
  String get mealPlannerSearchRecipes => 'রেসিপি খুঁজুন...';

  @override
  String get mealPlannerNoRecipesFound => 'কোনো রেসিপি পাওয়া যায়নি';

  @override
  String get mealPlannerNoRecipesHint =>
      'প্রথমে রেসিপি ট্যাবে রেসিপি তৈরি করুন';

  @override
  String get mealPlannerSave => 'পরিকল্পনায় যোগ করুন';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$totalটির মধ্যে $countটি খাবার পরিকল্পিত';
  }

  @override
  String get mealPlannerGenerateList => 'শপিং লিস্ট তৈরি করুন';

  @override
  String get mealPlannerGenerateListConfirm =>
      'এই সপ্তাহের পরিকল্পিত খাবারের সব উপাদান আপনার শপিং লিস্টে যোগ করবেন?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$countটি উপাদান আপনার তালিকায় যোগ করা হয়েছে!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'যোগ করার মতো কোনো উপাদান নেই। প্রথমে রেসিপি সহ কিছু খাবারের পরিকল্পনা করুন।';

  @override
  String get mealPlannerGenerateListNoList =>
      'প্রথমে একটি শপিং লিস্ট তৈরি করুন।';

  @override
  String get mealPlannerMealTypeBreakfast => 'সকালের নাস্তা';

  @override
  String get mealPlannerMealTypeLunch => 'দুপুরের খাবার';

  @override
  String get mealPlannerMealTypeDinner => 'রাতের খাবার';

  @override
  String get mealPlannerMealTypeSnack => 'বিকেলের নাস্তা';

  @override
  String get mealPlannerDateLabel => 'তারিখ';

  @override
  String get mealPlannerWeekEmpty => 'এই সপ্তাহের জন্য কিছু পরিকল্পিত নেই';

  @override
  String get mealPlannerWeekEmptyHint =>
      'আপনার খাবারের পরিকল্পনা শুরু করতে যেকোনো দিনের ওপর ট্যাপ করুন!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes মিনিট';
  }
}
