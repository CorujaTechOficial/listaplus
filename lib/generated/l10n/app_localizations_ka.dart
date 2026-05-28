// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'სავაჭრო სია';

  @override
  String get lists => 'სიები';

  @override
  String get pantry => 'საკუჭნაო';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get save => 'შენახვა';

  @override
  String get create => 'შექმნა';

  @override
  String get add => 'დამატება';

  @override
  String get remove => 'წაშლა';

  @override
  String get delete => 'წაშლა';

  @override
  String get edit => 'რედაქტირება';

  @override
  String get copy => 'კოპირება';

  @override
  String get retry => 'ხელახლა ცდა';

  @override
  String get regenerate => 'ხელახლა გენერაცია';

  @override
  String get copiedToClipboard => 'კოპირებულია ბუფერში';

  @override
  String get confirm => 'დადასტურება';

  @override
  String get close => 'დახურვა';

  @override
  String get import => 'იმპორტი';

  @override
  String get rename => 'სახელის შეცვლა';

  @override
  String get upgrade => 'განახლება';

  @override
  String get clear => 'გასუფთავება';

  @override
  String error(String message) {
    return 'შეცდომა: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'შეცდომა: $message';
  }

  @override
  String get purchaseError =>
      'შეცდომა შესყიდვის დამუშავებისას. სცადეთ ხელახლა.';

  @override
  String get restoreError => 'შეცდომა შესყიდვების აღდგენისას. სცადეთ ხელახლა.';

  @override
  String get loading => 'იტვირთება...';

  @override
  String get fieldRequired => 'აუცილებელი ველი';

  @override
  String get addedFeedback => 'დამატებულია!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'არჩეულია $count',
      one: 'არჩეულია $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'სავარაუდო';

  @override
  String get alreadyPurchased => 'უკვე ნაყიდი';

  @override
  String get clearList => 'სიის გასუფთავება';

  @override
  String get clearPurchased => 'ნაყიდის გასუფთავება';

  @override
  String get share => 'გაზიარება';

  @override
  String get shareViaCode => 'კოდით გაზიარება';

  @override
  String get importViaCode => 'კოდით იმპორტი';

  @override
  String get listAssistant => 'სიის ასისტენტი';

  @override
  String get globalAssistant => 'გლობალური ასისტენტი';

  @override
  String get becomePremium => 'გახდი Premium';

  @override
  String get manageSubscription => 'გამოწერის მართვა';

  @override
  String get completePurchase => 'შესყიდვის დასრულება';

  @override
  String get confirmClearList => 'ყველა ელემენტის წაშლა?';

  @override
  String get shareListTitle => 'სიის გაზიარება';

  @override
  String get shareThisCode => 'გააზიარეთ ეს კოდი:';

  @override
  String get validForLimitedTime => 'მოქმედებს შეზღუდული დროით';

  @override
  String get importListTitle => 'სიის იმპორტი';

  @override
  String get enterCodeHint => 'შეიყვანეთ კოდი';

  @override
  String get confirmArchiveTitle => 'შესყიდვის დასრულება';

  @override
  String get confirmArchiveContent =>
      'დავასრულოთ ეს შესყიდვა და დავარქივოთ სია?';

  @override
  String get complete => 'დასრულება';

  @override
  String get listArchived => 'სია წარმატებით დაარქივდა!';

  @override
  String listAdded(String listName) {
    return '$listName დამატებულია!';
  }

  @override
  String get buy => 'ყიდვა';

  @override
  String get unmark => 'მონიშვნის მოხსნა';

  @override
  String confirmDeleteItems(int count) {
    return 'წავშალოთ $count ელემენტი?';
  }

  @override
  String get confirmDeleteTitle => 'დადასტურება';

  @override
  String confirmContent(int count) {
    return 'წავშალოთ $count ელემენტი?';
  }

  @override
  String get archiveList => 'სიის დაარქივება';

  @override
  String get pantryAppBar => 'საკუჭნაო';

  @override
  String get generateShoppingList => 'სავაჭრო სიის გენერირება';

  @override
  String get pantryEmpty => 'ცარიელი საკუჭნაო';

  @override
  String get pantryEmptySubtitle =>
      'დაამატეთ პროდუქტები, რომელთა შენახვაც გსურთ სახლში';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ელემენტის ყიდვაა საჭირო';
  }

  @override
  String get noItemsToBuy => 'ყიდვის საჭირო ელემენტები არ არის';

  @override
  String get newPantryList => 'საკუჭნაოს შესყიდვა';

  @override
  String get newListTitle => 'ახალი სავაჭრო სია';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ელემენტი დაემატება';
  }

  @override
  String get listNameLabel => 'სიის სახელი';

  @override
  String listCreated(String name, int count) {
    return 'სია \"$name\" შეიქმნა $count ელემენტით';
  }

  @override
  String get noTracking => 'თვალყურის მიდევნების გარეშე';

  @override
  String get markAsPurchased => 'მონიშვნა როგორც ნაყიდი';

  @override
  String editPantryItem(String name) {
    return '$name-ის რედაქტირება';
  }

  @override
  String get idealQuantity => 'იდეალური რაოდენობა';

  @override
  String get currentQuantity => 'მიმდინარე რაოდენობა';

  @override
  String get consumed => 'მოხმარებული';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name შეივსო $quantity $unit-მდე';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'წავშალოთ \"$name\" საკუჭნაოდან?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name-ის რედაქტირება';
  }

  @override
  String get settingsAppBar => 'პარამეტრები';

  @override
  String get language => 'ენა';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'სისტემის ნაგულისხმევი';

  @override
  String get chooseLanguage => 'ენის არჩევა';

  @override
  String get searchLanguage => 'ენის ძებნა...';

  @override
  String get appearance => 'გარეგნობა';

  @override
  String get light => 'ღია';

  @override
  String get system => 'სისტემა';

  @override
  String get dark => 'მუქი';

  @override
  String get themeColor => 'თემის ფერი';

  @override
  String get dynamicColors => 'დინამიური ფერები';

  @override
  String get dynamicColorsSubtitle => 'გამოიყენეთ ფერები თქვენი ფონის მიხედვით';

  @override
  String get finance => 'ფინანსები';

  @override
  String get monthlyBudgetNav => 'თვიური ბიუჯეტი';

  @override
  String get budgetSubtitle => 'აკონტროლეთ თქვენი თვიური ხარჯები';

  @override
  String get data => 'მონაცემები';

  @override
  String get backupNav => 'სარეზერვო';

  @override
  String get backupSubtitle => 'ექსპორტი ან იმპორტი თქვენი მონაცემების';

  @override
  String get about => 'შესახებ';

  @override
  String get version => 'ვერსია';

  @override
  String get privacy => 'კონფიდენციალურობა';

  @override
  String get termsOfUse => 'მოხმარების პირობები';

  @override
  String get backupTitle => 'სარეზერვო ასლი';

  @override
  String get backupPremiumDescription =>
      'სარეზერვო ასლი და ექსპორტი პრემიუმ ფუნქციაა';

  @override
  String get exportData => 'მონაცემების ექსპორტი';

  @override
  String get exportDataSubtitle => 'ყველა სიის შენახვა JSON ფორმატში';

  @override
  String get importData => 'მონაცემების იმპორტი';

  @override
  String get importDataSubtitle => 'სიების აღდგენა JSON-დან';

  @override
  String get importJsonTitle => 'JSON-ის იმპორტი';

  @override
  String get importJsonHint => 'ჩასვით სარეზერვო JSON აქ...';

  @override
  String get backupExported => 'სარეზერვო ასლი ექსპორტირებულია!';

  @override
  String get budgetAppBar => 'თვიური ბიუჯეტი';

  @override
  String get budgetPremiumLocked => 'გლობალური თვიური ბიუჯეტი პრემიუმია';

  @override
  String get budgetUpgradePrompt => 'განაახლეთ განსაბლოკად';

  @override
  String get noBudgetDefined => 'ბიუჯეტი არ არის დაყენებული';

  @override
  String totalEstimated(String amount) {
    return 'სავარაუდო ჯამი: $amount';
  }

  @override
  String get setBudgetButton => 'ბიუჯეტის დაყენება';

  @override
  String get budgetLists => 'სიები';

  @override
  String get budgetValueLabel => 'თანხა';

  @override
  String get setBudgetTitle => 'თვიური ბიუჯეტი';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ყველა';

  @override
  String get filterPending => 'მოლოდინში';

  @override
  String get filterPurchased => 'ნაყიდი';

  @override
  String get sortName => 'სახელი';

  @override
  String get sortCategory => 'კატეგორია';

  @override
  String get sortDate => 'თარიღი';

  @override
  String get sortManual => 'ხელით';

  @override
  String get addItem => 'ელემენტის დამატება';

  @override
  String get itemName => 'ელემენტის სახელი';

  @override
  String get quantityShort => 'რაოდ';

  @override
  String get unit => 'ერთეული';

  @override
  String get category => 'კატეგორია';

  @override
  String get estimatedPrice => 'სავარაუდო ფასი';

  @override
  String get addItemPrice => 'სავარაუდო ფასი';

  @override
  String get editItem => 'ელემენტის რედაქტირება';

  @override
  String get quantityFull => 'რაოდენობა';

  @override
  String get editItemPrice => 'სავარაუდო ფასი';

  @override
  String get addToPantry => 'საკუჭნაოში დამატება';

  @override
  String addToPantryPrompt(String name) {
    return 'დავამატოთ \"$name\" თქვენს საკუჭნაოში?';
  }

  @override
  String get yes => 'კი';

  @override
  String get productName => 'პროდუქტის სახელი';

  @override
  String get idealQty => 'იდეალური რაოდ';

  @override
  String get currentQty => 'მიმდინარე რაოდ';

  @override
  String get trackStock => 'მარაგის თვალყური';

  @override
  String get trackStockActive => 'ჩნდება სავაჭრო შემოთავაზებებში';

  @override
  String get trackStockInactive => 'არ ქმნის სავაჭრო შემოთავაზებას';

  @override
  String get createListDialog => 'სიის შექმნა';

  @override
  String get renameListDialog => 'სიის სახელის შეცვლა';

  @override
  String get listHistory => 'სიების ისტორია';

  @override
  String get myLists => 'ჩემი სიები';

  @override
  String get viewActive => 'აქტიურების ნახვა';

  @override
  String get viewHistory => 'ისტორიის ნახვა';

  @override
  String get noArchivedLists => 'დაარქივებული სიები არ არის';

  @override
  String get noActiveLists => 'აქტიური სიები არ არის';

  @override
  String completedOn(String date) {
    return 'დასრულდა $date';
  }

  @override
  String get sharedLabel => 'გაზიარებული';

  @override
  String get restore => 'აღდგენა';

  @override
  String get removeSharedTooltip => 'წაშლა';

  @override
  String get deleteListTitle => 'სიის წაშლა';

  @override
  String deleteListContent(String name) {
    return 'დარწმუნებული ხართ, რომ გსურთ \"$name\" წაშლა? ყველა ელემენტი წაიშლება.';
  }

  @override
  String get removeSharedListTitle => 'გაზიარებული სიის წაშლა';

  @override
  String removeSharedListContent(String name) {
    return 'წავშალოთ \"$name\" თქვენი სიებიდან? ორიგინალი სია არ შეიცვლება.';
  }

  @override
  String get createNewList => 'ახალი სიის შექმნა';

  @override
  String get aiAssistant => 'AI ასისტენტი';

  @override
  String get aiAssistantDescription =>
      'მიიღეთ ჭკვიანური წინადადებები, რეცეპტები და პერსონალური რჩევები ჩვენი AI ასისტენტის საშუალებით.';

  @override
  String get generalAssistant => 'ზოგადი ასისტენტი';

  @override
  String get clearHistory => 'ისტორიის გასუფთავება';

  @override
  String get clearHistoryConfirm => 'ყველა მესიჯის გასუფთავება ამ სესიაში?';

  @override
  String get chatHint => 'ჩაწერეთ თქვენი მესიჯი...';

  @override
  String chatError(String error) {
    return 'შეცდომა ჩატის ჩატვირთვისას: $error';
  }

  @override
  String get listHelp => 'როგორ დაგეხმაროთ თქვენი სიით?';

  @override
  String get generalHelp => 'როგორ დაგეხმაროთ თქვენი შესყიდვით დღეს?';

  @override
  String get chatSubtitle =>
      'ითხოვეთ რჩევები ნივთებზე, რეცეპტებზე ან დაზოგვის ხერხებზე.';

  @override
  String get aiError =>
      'ბოდიში, მოხდა შეცდომა თქვენი მოთხოვნის დამუშავებისას. შეამოწმეთ კავშირი ან სცადეთ მოგვიანებით.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'შედით სისტემაში\nპრემიუმ ფუნქციების განსაბლოკად';

  @override
  String get signInGoogle => 'Google-ით შესვლა';

  @override
  String get signInApple => 'Apple-ით შესვლა';

  @override
  String get continueAsGuest => 'სტუმრად გაგრძელება';

  @override
  String loginError(String error) {
    return 'შესვლის შეცდომა: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'განაახლეთ განსაბლოკად';

  @override
  String get itemRemoved => 'ელემენტი წაიშალა';

  @override
  String get undo => 'უკან დაბრუნება';

  @override
  String get emptyListTitle => 'თქვენი სია ცარიელია';

  @override
  String get emptyListSubtitle => 'დაამატეთ ელემენტები დასაწყებად';

  @override
  String get noListFoundTitle => 'სიები არ მოიძებნა';

  @override
  String get noListFoundSubtitle => 'შექმენით თქვენი პირველი სია დასაწყებად';

  @override
  String get createFirstList => 'პირველი სიის შექმნა';

  @override
  String get listBudgetTitle => 'სიის ბიუჯეტი';

  @override
  String get budgetAmountLabel => 'ბიუჯეტის თანხა';

  @override
  String get removeBudget => 'წაშლა';

  @override
  String get prefUnlimitedLists => 'შეუზღუდავი სიები';

  @override
  String get prefSharing => 'სიების გაზიარება';

  @override
  String get prefFullHistory => 'სრული ისტორია';

  @override
  String get prefExportData => 'მონაცემების ექსპორტი';

  @override
  String get prefCustomThemes => 'მორგებული თემები';

  @override
  String get prefMonthlyBudget => 'გლობალური თვიური ბიუჯეტი';

  @override
  String get prefAIAssistant => 'პერსონალური AI ასისტენტი';

  @override
  String get prefUnlimitedPantry => 'შეუზღუდავი საკუჭნაო';

  @override
  String get prefInteractiveArtifacts => 'ინტერაქტიული AI არტეფაქტები';

  @override
  String get themeGreen => 'მწვანე';

  @override
  String get themeBlue => 'ლურჯი';

  @override
  String get themePurple => 'იისფერი';

  @override
  String get themeRed => 'წითელი';

  @override
  String get themeOrange => 'ნარინჯისფერი';

  @override
  String get themePink => 'ვარდისფერი';

  @override
  String get themeIndigo => 'ინდიგო';

  @override
  String get themeAmber => 'ქარვისფერი';

  @override
  String get themeTeal => 'ზღვის მწვანე';

  @override
  String get themeBrown => 'ყავისფერი';

  @override
  String get catFruits => 'ხილი';

  @override
  String get catCleaning => 'დასუფთავება';

  @override
  String get catBeverages => 'სასმელები';

  @override
  String get catBakery => 'საცხობი';

  @override
  String get catOthers => 'სხვა';

  @override
  String get unitPack => 'შეკვრა';

  @override
  String get shareSubject => 'სავაჭრო სია';

  @override
  String get monthlyBudgetTitle => 'თვიური ბიუჯეტი';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'სიის წაშლა';

  @override
  String get pantryItemRemoved => 'ელემენტი წაიშალა';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ელემენტის ყიდვაა საჭირო',
      one: '$deficit ელემენტის ყიდვაა საჭირო',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'კალათის ჯამი';

  @override
  String get restockLabel => 'შევსება';

  @override
  String get advancedFeatures => 'მოწინავე ფუნქციები';

  @override
  String get selectAll => 'ყველას მონიშვნა';

  @override
  String get deselectAll => 'ყველას მოხსნა';

  @override
  String get monthlyBudgetAppBar => 'თვიური ბიუჯეტი';

  @override
  String get budgetEditTitle => 'თვიური ბიუჯეტი';

  @override
  String get budgetDashboardTitle => 'დაფა';

  @override
  String get selectListForDashboard => 'აირჩიეთ სია დაფის სანახავად.';

  @override
  String get spendingAnalysis => 'ხარჯების ანალიზი';

  @override
  String get noItemsToAnalyze => 'სიაში გასაანალიზებელი ელემენტები არ არის.';

  @override
  String get markItemsToSeeAnalysis =>
      'მონიშნეთ ელემენტები ნაყიდად ანალიზის სანახავად.';

  @override
  String get totalSpending => 'მთლიანი ხარჯი';

  @override
  String get spendingByCategory => 'ხარჯები კატეგორიის მიხედვით';

  @override
  String get achievements => 'მიღწევები';

  @override
  String get exportPdfExcel => 'PDF/Excel ექსპორტი';

  @override
  String get exportPdf => 'PDF-ად ექსპორტი';

  @override
  String get exportExcel => 'Excel-ად ექსპორტი';

  @override
  String get organizingAi => 'ორგანიზება AI-თ...';

  @override
  String get yesLabel => 'კი';

  @override
  String get noLabel => 'არა';

  @override
  String get shareListText => 'ჩემი სავაჭრო სია';

  @override
  String get emptyListAddItems =>
      'თქვენი სია ცარიელია! ჯერ დაამატეთ ელემენტები. ℹ️';

  @override
  String get listOrganizedMagic =>
      'სია ჯადოსნურად დალაგდა კატეგორიების მიხედვით! ✨';

  @override
  String get shoppingMode => 'სავაჭრო რეჟიმი';

  @override
  String get smartOrganization => 'ჭკვიანი ორგანიზაცია';

  @override
  String get savings => 'დაზოგვა';

  @override
  String get shoppingModeHeader => 'სავაჭრო რეჟიმი';

  @override
  String get shareAsText => 'ელემენტების გაგზავნა ფორმატირებული ტექსტის სახით';

  @override
  String get shareRealtime => 'რეალურ დროში სინქრონიზაცია სხვა ადამიანებთან';

  @override
  String get quickRecipe => 'სწრაფი რეცეპტი';

  @override
  String get quickRecipePrompt =>
      'შემომთავაზეთ რეცეპტები ჩემი სიის ელემენტებით.';

  @override
  String get economyTips => 'ეკონომიის რჩევები';

  @override
  String get economyTipsPrompt => 'როგორ დავზოგო ფული ამ შესყიდვაზე?';

  @override
  String get organizeAisles => 'დალაგება თაროების მიხედვით';

  @override
  String get organizeAislesPrompt => 'დაალაგეთ მაღაზიის თაროების მიხედვით.';

  @override
  String get recipeSuggestion => 'რეცეპტის შემოთავაზება';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'დარჩენილია $remaining კრედიტი';
  }

  @override
  String get addAllToList => 'ყველას დამატება სიაში';

  @override
  String get organizeByAisles => 'დალაგება თაროების მიხედვით';

  @override
  String get voiceTranscriptionTooltip => 'ხმით აკრეფა (უფასო)';

  @override
  String get aiVoiceCommandTooltip => 'AI ხმოვანი ბრძანება (Premium)';

  @override
  String get voiceCommandTitle => 'AI ხმოვანი ბრძანება';

  @override
  String get voiceCommandContent =>
      'ილაპარაკეთ ბუნებრივად თქვენი სიის სამართავად!\n\nმაგალითები:\n• \'დაამატე პური, ყველი და ლორი\'\n• \'წაშალე სამრეცხაო სარეცხი\'\n• \'შეცვალე თემა ლურჯზე\'\n\nეს არის Lista Plus Premium-ის ექსკლუზიური ფუნქცია.';

  @override
  String get voiceCommandPlanBtn => 'გეგმების ნახვა';

  @override
  String get itemsAddedSuccess => 'ელემენტები წარმატებით დაემატა სიაში!';

  @override
  String get viewList => 'სიის ნახვა';

  @override
  String get feedbackTitle => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackPrompt => 'რისი გაზიარება გსურთ?';

  @override
  String get feedbackTypeBug => 'ხარვეზის რეპორტი';

  @override
  String get feedbackTypeBugHint => 'რაღაც არ მუშაობს';

  @override
  String get feedbackTypeSuggestion => 'შემოთავაზება';

  @override
  String get feedbackTypeSuggestionHint => 'იდეა აპის გასაუმჯობესებლად';

  @override
  String get feedbackTypeTranslation => 'თარგმანის პრობლემა';

  @override
  String get feedbackTypeTranslationHint => 'არასწორი ან უხერხული თარგმანი';

  @override
  String get feedbackTypeFeature => 'ფუნქციის მოთხოვნა';

  @override
  String get feedbackTypeFeatureHint => 'ფუნქცია, რომლის ნახვაც გსურთ';

  @override
  String get feedbackTypeOther => 'სხვა';

  @override
  String get feedbackTypeOtherHint => 'სხვა ტიპის გამოხმაურება';

  @override
  String get feedbackHint => 'დეტალურად აღწერეთ თქვენი გამოხმაურება...';

  @override
  String get feedbackSend => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackSending => 'იგზავნება...';

  @override
  String get feedbackThankYou => 'გმადლობთ!';

  @override
  String get feedbackThankYouMessage =>
      'თქვენი გამოხმაურება მიღებულია და გვეხმარება Lista Plus-ის გაუმჯობესებაში ყველასთვის.';

  @override
  String get feedbackBack => 'უკან';

  @override
  String feedbackError(String error) {
    return 'გაგზავნის შეცდომა: $error';
  }

  @override
  String get feedbackRetry => 'ხელახლა ცდა';

  @override
  String get feedbackSettingsTitle => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackSettingsSubtitle =>
      'შეატყობინეთ ხარვეზებს, შემოგვთავაზეთ გაუმჯობესებები ან შეასწორეთ თარგმანები';

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
  String get openMenu => 'მენიუს გახსნა';

  @override
  String get viewRecipe => 'რეცეპტის ნახვა';

  @override
  String get recipeCreated => 'რეცეპტი შეიქმნა!';

  @override
  String get editRecipe => 'რედაქტირება';

  @override
  String get deleteRecipe => 'წაშლა';

  @override
  String get deleteRecipeConfirm => 'გსურთ რეცეპტის წაშლა?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'დარწმუნებული ხართ, რომ გსურთ „$recipeName“-ის წაშლა? ეს მოქმედება შეუქცევადია.';
  }

  @override
  String get ingredients => 'ინგრედიენტები';

  @override
  String get instructions => 'ინსტრუქციები';

  @override
  String get prepTime => 'მომზადების დრო';

  @override
  String get recipeSaved => 'რეცეპტი შენახულია!';

  @override
  String get noRecipesSaved => 'რეცეპტები არ არის შენახული';

  @override
  String get noRecipesSavedHint =>
      'შექმენით თქვენი პირველი პერსონალური რეცეპტი ქვემოთ მოცემულ ღილაკზე დაჭერით.';

  @override
  String get myRecipes => 'ჩემი რეცეპტები';

  @override
  String get newRecipe => 'ახალი რეცეპტი';

  @override
  String get loadingRecipes => 'თქვენი რეცეპტების ჩატვირთვა...';

  @override
  String get errorLoadingRecipes => 'რეცეპტების ჩატვირთვის შეცდომა';

  @override
  String get addIngredient => 'ინგრედიენტის დამატება';

  @override
  String get saveRecipe => 'შენახვა';

  @override
  String get recipeName => 'რეცეპტის სახელი';

  @override
  String get shortDescription => 'მოკლე აღწერა';

  @override
  String get prepTimeMinutes => 'მომზადების დრო (წუთებში)';

  @override
  String get instructionsHint => 'შეიყვანეთ თითო ნაბიჯი თითო ხაზზე...';

  @override
  String get addPhoto => 'ფოტოს დამატება';

  @override
  String get imageUrlPlaceholder => 'ან ჩასვით სურათის URL';

  @override
  String get tags => 'ტეგები';

  @override
  String get recipeTags => 'რეცეპტის ტეგები';

  @override
  String get suggestedTags => 'შემოთავაზებული';

  @override
  String get searchRecipes => 'რეცეპტების ძიება...';

  @override
  String get filterByTag => 'ფილტრაცია ტეგით';

  @override
  String get allTags => 'ყველა';

  @override
  String get recipeDeleted => 'რეცეპტი წაიშალა';

  @override
  String get saveChanges => 'ცვლილებების შენახვა';

  @override
  String get editRecipeTitle => 'რეცეპტის რედაქტირება';

  @override
  String get newRecipeTitle => 'ახალი რეცეპტი';

  @override
  String get requiredField => 'სავალდებულოა';

  @override
  String get chooseImageSource => 'სურათის წყაროს არჩევა';

  @override
  String get gallery => 'გალერეა';

  @override
  String get enterUrl => 'შეიყვანეთ URL';

  @override
  String get recipeImage => 'რეცეპტის სურათი';

  @override
  String get removeImage => 'სურათის წაშლა';

  @override
  String get mealPlannerTitle => 'კვების დაგეგმვა';

  @override
  String get mealPlannerViewMonthly => 'ყოველთვიური ხედი';

  @override
  String get mealPlannerViewWeekly => 'ყოველკვირეული ხედი';

  @override
  String get mealPlannerNoMeals => 'კერძები არ არის დაგეგმილი';

  @override
  String get mealPlannerNoMealsHint => 'დააჭირეთ დღეს კერძის დასამატებლად';

  @override
  String get mealPlannerLoading => 'კვების გეგმის ჩატვირთვა...';

  @override
  String get mealPlannerError => 'კვების გეგმის ჩატვირთვის შეცდომა';

  @override
  String get mealPlannerAddMeal => 'კერძის დამატება';

  @override
  String get mealPlannerEditMeal => 'კერძის რედაქტირება';

  @override
  String get mealPlannerDeleteMeal => 'კერძის ამოშლა';

  @override
  String get mealPlannerMealDeleted => 'კერძი ამოშლილია';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ულუფა',
      one: '$count ულუფა',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ულუფები';

  @override
  String get mealPlannerNoteLabel => 'შენიშვნა (სურვილისამებრ)';

  @override
  String get mealPlannerSelectRecipe => 'აირჩიეთ რეცეპტი';

  @override
  String get mealPlannerSearchRecipes => 'რეცეპტების ძიება...';

  @override
  String get mealPlannerNoRecipesFound => 'რეცეპტები ვერ მოიძებნა';

  @override
  String get mealPlannerNoRecipesHint =>
      'ჯერ შექმენით რეცეპტები „რეცეპტების“ ჩანართში';

  @override
  String get mealPlannerSave => 'გეგმაში დამატება';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'დაგეგმილია $total-დან $count კერძი';
  }

  @override
  String get mealPlannerGenerateList => 'საყიდლების სიის გენერირება';

  @override
  String get mealPlannerGenerateListConfirm =>
      'დაემატოს ამ კვირის დაგეგმილი კერძების ყველა ინგრედიენტი საყიდლების სიაში?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ინგრედიენტი დაემატა თქვენს სიას!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'დასამატებელი ინგრედიენტები არ არის. ჯერ დაგეგმეთ კერძები რეცეპტებით.';

  @override
  String get mealPlannerGenerateListNoList => 'ჯერ შექმენით საყიდლების სია.';

  @override
  String get mealPlannerMealTypeBreakfast => 'საუზმე';

  @override
  String get mealPlannerMealTypeLunch => 'სადილი';

  @override
  String get mealPlannerMealTypeDinner => 'ვახშამი';

  @override
  String get mealPlannerMealTypeSnack => 'წახემსება';

  @override
  String get mealPlannerDateLabel => 'თარიღი';

  @override
  String get mealPlannerWeekEmpty => 'ამ კვირისთვის არაფერია დაგეგმილი';

  @override
  String get mealPlannerWeekEmptyHint =>
      'დააჭირეთ ნებისმიერ დღეს კვების დაგეგმვის დასაწყებად!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes წთ';
  }
}

/// The translations for Georgian, as used in Georgia (`ka_GE`).
class AppLocalizationsKaGe extends AppLocalizationsKa {
  AppLocalizationsKaGe() : super('ka_GE');

  @override
  String get appTitle => 'სავაჭრო სია';

  @override
  String get lists => 'სიები';

  @override
  String get pantry => 'საკუჭნაო';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get save => 'შენახვა';

  @override
  String get create => 'შექმნა';

  @override
  String get add => 'დამატება';

  @override
  String get remove => 'წაშლა';

  @override
  String get delete => 'წაშლა';

  @override
  String get edit => 'რედაქტირება';

  @override
  String get copy => 'კოპირება';

  @override
  String get retry => 'ხელახლა ცდა';

  @override
  String get regenerate => 'ხელახლა გენერაცია';

  @override
  String get copiedToClipboard => 'კოპირებულია ბუფერში';

  @override
  String get confirm => 'დადასტურება';

  @override
  String get close => 'დახურვა';

  @override
  String get import => 'იმპორტი';

  @override
  String get rename => 'სახელის გადარქმევა';

  @override
  String get upgrade => 'განახლება';

  @override
  String get clear => 'გასუფთავება';

  @override
  String error(String message) {
    return 'შეცდომა: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'შეცდომა: $message';
  }

  @override
  String get purchaseError => 'შეცდომა შეძენის დამუშავებისას. სცადეთ თავიდან.';

  @override
  String get restoreError => 'შეცდომა შეძენების აღდგენისას. სცადეთ თავიდან.';

  @override
  String get loading => 'იტვირთება...';

  @override
  String get fieldRequired => 'აუცილებელი ველი';

  @override
  String get addedFeedback => 'დამატებულია!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'არჩეულია $count',
      one: 'არჩეულია $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'სავარაუდო';

  @override
  String get alreadyPurchased => 'უკვე ნაყიდია';

  @override
  String get clearList => 'სიის გასუფთავება';

  @override
  String get clearPurchased => 'ნაყიდის გასუფთავება';

  @override
  String get share => 'გაზიარება';

  @override
  String get shareViaCode => 'კოდით გაზიარება';

  @override
  String get importViaCode => 'კოდით იმპორტი';

  @override
  String get listAssistant => 'სიის ასისტენტი';

  @override
  String get globalAssistant => 'გლობალური ასისტენტი';

  @override
  String get becomePremium => 'გახდი Premium';

  @override
  String get manageSubscription => 'გამოწერის მართვა';

  @override
  String get completePurchase => 'შეძენის დასრულება';

  @override
  String get confirmClearList => 'ყველა ნივთის წაშლა?';

  @override
  String get shareListTitle => 'სიის გაზიარება';

  @override
  String get shareThisCode => 'გააზიარეთ ეს კოდი:';

  @override
  String get validForLimitedTime => 'მოქმედებს შეზღუდული დროით';

  @override
  String get importListTitle => 'სიის იმპორტი';

  @override
  String get enterCodeHint => 'შეიყვანეთ კოდი';

  @override
  String get confirmArchiveTitle => 'შეძენის დასრულება';

  @override
  String get confirmArchiveContent => 'დავასრულოთ ეს შეძენა და დავარქივოთ სია?';

  @override
  String get complete => 'დასრულება';

  @override
  String get listArchived => 'სია წარმატებით დაარქივდა!';

  @override
  String listAdded(String listName) {
    return '$listName დაემატა!';
  }

  @override
  String get buy => 'ყიდვა';

  @override
  String get unmark => 'მონიშვნის მოხსნა';

  @override
  String confirmDeleteItems(int count) {
    return 'წავშალოთ $count ნივთ(ი)?';
  }

  @override
  String get confirmDeleteTitle => 'დადასტურება';

  @override
  String confirmContent(int count) {
    return 'წავშალოთ $count ნივთ(ი)?';
  }

  @override
  String get archiveList => 'სიის დაარქივება';

  @override
  String get pantryAppBar => 'საკუჭნაო';

  @override
  String get generateShoppingList => 'სავაჭრო სიის გენერაცია';

  @override
  String get pantryEmpty => 'ცარიელი საკუჭნაო';

  @override
  String get pantryEmptySubtitle =>
      'დაამატეთ პროდუქტები, რომელთა შენახვაც გსურთ სახლში';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ნივთ(ის) ყიდვაა საჭირო';
  }

  @override
  String get noItemsToBuy => 'ყიდვისთვის საჭირო ნივთები არ არის';

  @override
  String get newPantryList => 'საკუჭნაოს შეძენა';

  @override
  String get newListTitle => 'ახალი სავაჭრო სია';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ნივთ(ი) დაემატება';
  }

  @override
  String get listNameLabel => 'სიის სახელი';

  @override
  String listCreated(String name, int count) {
    return 'სია \"$name\" შეიქმნა $count ნივთით';
  }

  @override
  String get noTracking => 'თვალყურის გარეშე';

  @override
  String get markAsPurchased => 'მონიშვნა როგორც ნაყიდი';

  @override
  String editPantryItem(String name) {
    return '$name-ის რედაქტირება';
  }

  @override
  String get idealQuantity => 'იდეალური რაოდენობა';

  @override
  String get currentQuantity => 'მიმდინარე რაოდენობა';

  @override
  String get consumed => 'მოხმარებული';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name შეივსო $quantity $unit-მდე';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'წავშალოთ \"$name\" საკუჭნაოდან?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name-ის რედაქტირება';
  }

  @override
  String get settingsAppBar => 'პარამეტრები';

  @override
  String get language => 'ენა';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'სისტემის ნაგულისხმევი';

  @override
  String get chooseLanguage => 'ენის არჩევა';

  @override
  String get searchLanguage => 'ენის ძებნა...';

  @override
  String get appearance => 'გარეგნობა';

  @override
  String get light => 'ღია';

  @override
  String get system => 'სისტემა';

  @override
  String get dark => 'მუქი';

  @override
  String get themeColor => 'თემის ფერი';

  @override
  String get dynamicColors => 'დინამიური ფერები';

  @override
  String get dynamicColorsSubtitle => 'გამოიყენეთ ფერები თქვენი ფონის მიხედვით';

  @override
  String get finance => 'ფინანსები';

  @override
  String get monthlyBudgetNav => 'თვიური ბიუჯეტი';

  @override
  String get budgetSubtitle => 'თვალყური ადევნეთ თქვენს თვიურ ხარჯებს';

  @override
  String get data => 'მონაცემები';

  @override
  String get backupNav => 'სარეზერვო';

  @override
  String get backupSubtitle => 'ექსპორტი ან იმპორტი თქვენი მონაცემების';

  @override
  String get about => 'შესახებ';

  @override
  String get version => 'ვერსია';

  @override
  String get privacy => 'კონფიდენციალურობა';

  @override
  String get termsOfUse => 'გამოყენების პირობები';

  @override
  String get backupTitle => 'სარეზერვო ასლი';

  @override
  String get backupPremiumDescription =>
      'სარეზერვო ასლი და ექსპორტი პრემიუმ ფუნქციაა';

  @override
  String get exportData => 'მონაცემების ექსპორტი';

  @override
  String get exportDataSubtitle => 'ყველა სიის JSON-ად შენახვა';

  @override
  String get importData => 'მონაცემების იმპორტი';

  @override
  String get importDataSubtitle => 'სიების აღდგენა JSON-დან';

  @override
  String get importJsonTitle => 'JSON-ის იმპორტი';

  @override
  String get importJsonHint => 'ჩასვით სარეზერვო JSON აქ...';

  @override
  String get backupExported => 'სარეზერვო ასლი ექსპორტირებულია!';

  @override
  String get budgetAppBar => 'თვიური ბიუჯეტი';

  @override
  String get budgetPremiumLocked => 'გლობალური თვიური ბიუჯეტი პრემიუმია';

  @override
  String get budgetUpgradePrompt => 'განაახლეთ განბლოკვისთვის';

  @override
  String get noBudgetDefined => 'ბიუჯეტი არ არის დაყენებული';

  @override
  String totalEstimated(String amount) {
    return 'სავარაუდო სულ: $amount';
  }

  @override
  String get setBudgetButton => 'ბიუჯეტის დაყენება';

  @override
  String get budgetLists => 'სიები';

  @override
  String get budgetValueLabel => 'თანხა';

  @override
  String get setBudgetTitle => 'თვიური ბიუჯეტი';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ყველა';

  @override
  String get filterPending => 'მოლოდინში';

  @override
  String get filterPurchased => 'ნაყიდი';

  @override
  String get sortName => 'სახელი';

  @override
  String get sortCategory => 'კატეგორია';

  @override
  String get sortDate => 'თარიღი';

  @override
  String get sortManual => 'ხელით';

  @override
  String get addItem => 'ნივთის დამატება';

  @override
  String get itemName => 'ნივთის სახელი';

  @override
  String get quantityShort => 'რაოდ';

  @override
  String get unit => 'ერთეული';

  @override
  String get category => 'კატეგორია';

  @override
  String get estimatedPrice => 'სავარაუდო ფასი';

  @override
  String get addItemPrice => 'სავარაუდო ფასი';

  @override
  String get editItem => 'ნივთის რედაქტირება';

  @override
  String get quantityFull => 'რაოდენობა';

  @override
  String get editItemPrice => 'სავარაუდო ფასი';

  @override
  String get addToPantry => 'საკუჭნაოში დამატება';

  @override
  String addToPantryPrompt(String name) {
    return 'დავამატოთ \"$name\" თქვენს საკუჭნაოში?';
  }

  @override
  String get yes => 'დიახ';

  @override
  String get productName => 'პროდუქტის სახელი';

  @override
  String get idealQty => 'იდეალური რაოდ';

  @override
  String get currentQty => 'მიმდინარე რაოდ';

  @override
  String get trackStock => 'მარაგის თვალყური';

  @override
  String get trackStockActive => 'ჩნდება შეძენის წინადადებებში';

  @override
  String get trackStockInactive => 'არ ქმნის შეძენის წინადადებას';

  @override
  String get createListDialog => 'სიის შექმნა';

  @override
  String get renameListDialog => 'სიის სახელის გადარქმევა';

  @override
  String get listHistory => 'სიის ისტორია';

  @override
  String get myLists => 'ჩემი სიები';

  @override
  String get viewActive => 'აქტიურების ნახვა';

  @override
  String get viewHistory => 'ისტორიის ნახვა';

  @override
  String get noArchivedLists => 'დაარქივებული სიები არ არის';

  @override
  String get noActiveLists => 'აქტიური სიები არ არის';

  @override
  String completedOn(String date) {
    return 'დასრულდა $date-ში';
  }

  @override
  String get sharedLabel => 'გაზიარებული';

  @override
  String get restore => 'აღდგენა';

  @override
  String get removeSharedTooltip => 'წაშლა';

  @override
  String get deleteListTitle => 'სიის წაშლა';

  @override
  String deleteListContent(String name) {
    return 'დარწმუნებული ხართ, რომ გსურთ \"$name\"-ის წაშლა? ყველა ნივთი წაიშლება.';
  }

  @override
  String get removeSharedListTitle => 'გაზიარებული სიის წაშლა';

  @override
  String removeSharedListContent(String name) {
    return 'წავშალოთ \"$name\" თქვენი სიებიდან? ორიგინალი სია არ შეიცვლება.';
  }

  @override
  String get createNewList => 'ახალი სიის შექმნა';

  @override
  String get aiAssistant => 'AI ასისტენტი';

  @override
  String get aiAssistantDescription =>
      'მიიღეთ ჭკვიანი წინადადებები, რეცეპტები და პერსონალიზებული რჩევები ჩვენი AI ასისტენტით.';

  @override
  String get generalAssistant => 'ზოგადი ასისტენტი';

  @override
  String get clearHistory => 'ისტორიის გასუფთავება';

  @override
  String get clearHistoryConfirm => 'წავშალოთ ყველა შეტყობინება ამ სესიაში?';

  @override
  String get chatHint => 'აკრიფეთ თქვენი შეტყობინება...';

  @override
  String chatError(String error) {
    return 'შეცდომა ჩატის ჩატვირთვისას: $error';
  }

  @override
  String get listHelp => 'როგორ დაგეხმაროთ თქვენი სიით?';

  @override
  String get generalHelp => 'როგორ დაგეხმაროთ დღეს თქვენი შეძენებისას?';

  @override
  String get chatSubtitle =>
      'მოითხოვეთ ნივთების წინადადებები, რეცეპტები ან დაზოგვის რჩევები.';

  @override
  String get aiError =>
      'უკაცრავად, მოხდა შეცდომა თქვენი მოთხოვნის დამუშავებისას. შეამოწმეთ კავშირი ან სცადეთ თავიდან მოგვიანებით.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'შედით სისტემაში პრემიუმ ფუნქციების განსაბლოკად';

  @override
  String get signInGoogle => 'Google-ით შესვლა';

  @override
  String get signInApple => 'Apple-ით შესვლა';

  @override
  String get continueAsGuest => 'სტუმრად გაგრძელება';

  @override
  String loginError(String error) {
    return 'შესვლის შეცდომა: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'განაახლეთ განბლოკვისთვის';

  @override
  String get itemRemoved => 'ნივთი წაიშალა';

  @override
  String get undo => 'დაბრუნება';

  @override
  String get emptyListTitle => 'თქვენი სია ცარიელია';

  @override
  String get emptyListSubtitle => 'დაამატეთ ნივთები დასაწყებად';

  @override
  String get noListFoundTitle => 'სიები ვერ მოიძებნა';

  @override
  String get noListFoundSubtitle => 'შექმენით თქვენი პირველი სია დასაწყებად';

  @override
  String get createFirstList => 'პირველი სიის შექმნა';

  @override
  String get listBudgetTitle => 'სიის ბიუჯეტი';

  @override
  String get budgetAmountLabel => 'ბიუჯეტის თანხა';

  @override
  String get removeBudget => 'წაშლა';

  @override
  String get prefUnlimitedLists => 'შეუზღუდავი სიები';

  @override
  String get prefSharing => 'სიების გაზიარება';

  @override
  String get prefFullHistory => 'სრული ისტორია';

  @override
  String get prefExportData => 'მონაცემების ექსპორტი';

  @override
  String get prefCustomThemes => 'მორგებული თემები';

  @override
  String get prefMonthlyBudget => 'გლობალური თვიური ბიუჯეტი';

  @override
  String get prefAIAssistant => 'პერსონალური AI ასისტენტი';

  @override
  String get prefUnlimitedPantry => 'შეუზღუდავი საკუჭნაო';

  @override
  String get prefInteractiveArtifacts => 'ინტერაქტიული AI არტეფაქტები';

  @override
  String get themeGreen => 'მწვანე';

  @override
  String get themeBlue => 'ლურჯი';

  @override
  String get themePurple => 'იისფერი';

  @override
  String get themeRed => 'წითელი';

  @override
  String get themeOrange => 'ნარინჯისფერი';

  @override
  String get themePink => 'ვარდისფერი';

  @override
  String get themeIndigo => 'ინდიგო';

  @override
  String get themeAmber => 'ქარვისფერი';

  @override
  String get themeTeal => 'ზღვისფერი';

  @override
  String get themeBrown => 'ყავისფერი';

  @override
  String get catFruits => 'ხილი';

  @override
  String get catCleaning => 'დასუფთავება';

  @override
  String get catBeverages => 'სასმელები';

  @override
  String get catBakery => 'საცხობი';

  @override
  String get catOthers => 'სხვა';

  @override
  String get unitPack => 'შეფუთვა';

  @override
  String get shareSubject => 'სავაჭრო სია';

  @override
  String get monthlyBudgetTitle => 'თვიური ბიუჯეტი';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'სიის წაშლა';

  @override
  String get pantryItemRemoved => 'ნივთი წაიშალა';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ნივთის ყიდვაა საჭირო',
      one: '$deficit ნივთის ყიდვაა საჭირო',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'კალათის ჯამი';

  @override
  String get restockLabel => 'შევსება';

  @override
  String get advancedFeatures => 'მოწინავე ფუნქციები';

  @override
  String get selectAll => 'ყველას მონიშვნა';

  @override
  String get deselectAll => 'ყველას მოხსნა';

  @override
  String get monthlyBudgetAppBar => 'თვიური ბიუჯეტი';

  @override
  String get budgetEditTitle => 'თვიური ბიუჯეტი';

  @override
  String get budgetDashboardTitle => 'დაფა';

  @override
  String get selectListForDashboard => 'აირჩიეთ სია დაფის სანახავად.';

  @override
  String get spendingAnalysis => 'ხარჯების ანალიზი';

  @override
  String get noItemsToAnalyze => 'სიაში გასაანალიზებელი ნივთები არ არის.';

  @override
  String get markItemsToSeeAnalysis =>
      'მონიშნეთ ნივთები როგორც ნაყიდი ანალიზის სანახავად.';

  @override
  String get totalSpending => 'მთლიანი ხარჯი';

  @override
  String get spendingByCategory => 'ხარჯი კატეგორიების მიხედვით';

  @override
  String get achievements => 'მიღწევები';

  @override
  String get exportPdfExcel => 'PDF/Excel ექსპორტი';

  @override
  String get exportPdf => 'PDF-ად ექსპორტი';

  @override
  String get exportExcel => 'Excel-ად ექსპორტი';

  @override
  String get organizingAi => 'ორგანიზება AI-თი...';

  @override
  String get yesLabel => 'დიახ';

  @override
  String get noLabel => 'არა';

  @override
  String get shareListText => 'ჩემი სავაჭრო სია';

  @override
  String get emptyListAddItems =>
      'თქვენი სია ცარიელია! ჯერ დაამატეთ ნივთები. ℹ️';

  @override
  String get listOrganizedMagic =>
      'სია ჯადოსნურად დალაგდა კატეგორიების მიხედვით! ✨';

  @override
  String get shoppingMode => 'შეძენის რეჟიმი';

  @override
  String get smartOrganization => 'ჭკვიანი ორგანიზება';

  @override
  String get savings => 'დაზოგვა';

  @override
  String get shoppingModeHeader => 'შეძენის რეჟიმი';

  @override
  String get shareAsText => 'ნივთების გაგზავნა ფორმატირებული ტექსტით';

  @override
  String get shareRealtime => 'რეალურ დროში სინქრონიზაცია სხვა ადამიანებთან';

  @override
  String get quickRecipe => 'სწრაფი რეცეპტი';

  @override
  String get quickRecipePrompt => 'შემოგვთავაზეთ რეცეპტები ჩემი სიის ნივთებით.';

  @override
  String get economyTips => 'დაზოგვის რჩევები';

  @override
  String get economyTipsPrompt => 'როგორ დავზოგო ფული ამ შეძენაზე?';

  @override
  String get organizeAisles => 'დალაგება დერეფნების მიხედვით';

  @override
  String get organizeAislesPrompt =>
      'დაალაგეთ სუპერმარკეტის დერეფნების მიხედვით.';

  @override
  String get recipeSuggestion => 'რეცეპტის წინადადება';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'დარჩენილია $remaining კრედიტი';
  }

  @override
  String get addAllToList => 'ყველას დამატება სიაში';

  @override
  String get organizeByAisles => 'დალაგება დერეფნების მიხედვით';

  @override
  String get voiceTranscriptionTooltip => 'ხმით აკრეფა (უფასო)';

  @override
  String get aiVoiceCommandTooltip => 'AI ხმოვანი ბრძანება (პრემიუმ)';

  @override
  String get voiceCommandTitle => 'AI ხმოვანი ბრძანება';

  @override
  String get voiceCommandContent =>
      'ილაპარაკეთ ბუნებრივად თქვენი სიის სამართავად!\n\nმაგალითები:\n• \'დაამატე პური, ყველი და ლორი\'\n• \'წაშალე სარეცხი ფხვნილი\'\n• \'შეცვალე თემა ლურჯზე\'\n\nეს არის Lista Plus Premium-ის ექსკლუზიური ფუნქცია.';

  @override
  String get voiceCommandPlanBtn => 'გეგმების ნახვა';

  @override
  String get itemsAddedSuccess => 'ნივთები წარმატებით დაემატა სიაში!';

  @override
  String get viewList => 'სიის ნახვა';

  @override
  String get feedbackTitle => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackPrompt => 'რისი გაზიარება გსურთ?';

  @override
  String get feedbackTypeBug => 'ხარვეზის რეპორტი';

  @override
  String get feedbackTypeBugHint => 'რაღაც არ მუშაობს';

  @override
  String get feedbackTypeSuggestion => 'შემოთავაზება';

  @override
  String get feedbackTypeSuggestionHint => 'იდეა აპის გასაუმჯობესებლად';

  @override
  String get feedbackTypeTranslation => 'თარგმანის პრობლემა';

  @override
  String get feedbackTypeTranslationHint => 'არასწორი ან უხერხული თარგმანი';

  @override
  String get feedbackTypeFeature => 'ფუნქციის მოთხოვნა';

  @override
  String get feedbackTypeFeatureHint => 'ფუნქცია, რომლის ნახვაც გსურთ';

  @override
  String get feedbackTypeOther => 'სხვა';

  @override
  String get feedbackTypeOtherHint => 'სხვა ტიპის გამოხმაურება';

  @override
  String get feedbackHint => 'დეტალურად აღწერეთ თქვენი გამოხმაურება...';

  @override
  String get feedbackSend => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackSending => 'იგზავნება...';

  @override
  String get feedbackThankYou => 'გმადლობთ!';

  @override
  String get feedbackThankYouMessage =>
      'თქვენი გამოხმაურება მიღებულია და გვეხმარება Lista Plus-ის გაუმჯობესებაში ყველასთვის.';

  @override
  String get feedbackBack => 'უკან';

  @override
  String feedbackError(String error) {
    return 'გაგზავნის შეცდომა: $error';
  }

  @override
  String get feedbackRetry => 'ხელახლა ცდა';

  @override
  String get feedbackSettingsTitle => 'გამოხმაურების გაგზავნა';

  @override
  String get feedbackSettingsSubtitle =>
      'შეატყობინეთ ხარვეზებს, შემოგვთავაზეთ გაუმჯობესებები ან შეასწორეთ თარგმანები';

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
  String get openMenu => 'მენიუს გახსნა';

  @override
  String get viewRecipe => 'რეცეპტის ნახვა';

  @override
  String get recipeCreated => 'რეცეპტი შეიქმნა!';

  @override
  String get editRecipe => 'რედაქტირება';

  @override
  String get deleteRecipe => 'წაშლა';

  @override
  String get deleteRecipeConfirm => 'გსურთ რეცეპტის წაშლა?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'დარწმუნებული ხართ, რომ გსურთ „$recipeName“-ის წაშლა? ეს მოქმედება შეუქცევადია.';
  }

  @override
  String get ingredients => 'ინგრედიენტები';

  @override
  String get instructions => 'ინსტრუქციები';

  @override
  String get prepTime => 'მომზადების დრო';

  @override
  String get recipeSaved => 'რეცეპტი შენახულია!';

  @override
  String get noRecipesSaved => 'რეცეპტები არ არის შენახული';

  @override
  String get noRecipesSavedHint =>
      'შექმენით თქვენი პირველი პერსონალური რეცეპტი ქვემოთ მოცემულ ღილაკზე დაჭერით.';

  @override
  String get myRecipes => 'ჩემი რეცეპტები';

  @override
  String get newRecipe => 'ახალი რეცეპტი';

  @override
  String get loadingRecipes => 'თქვენი რეცეპტების ჩატვირთვა...';

  @override
  String get errorLoadingRecipes => 'რეცეპტების ჩატვირთვის შეცდომა';

  @override
  String get addIngredient => 'ინგრედიენტის დამატება';

  @override
  String get saveRecipe => 'შენახვა';

  @override
  String get recipeName => 'რეცეპტის სახელი';

  @override
  String get shortDescription => 'მოკლე აღწერა';

  @override
  String get prepTimeMinutes => 'მომზადების დრო (წუთებში)';

  @override
  String get instructionsHint => 'შეიყვანეთ თითო ნაბიჯი თითო ხაზზე...';

  @override
  String get addPhoto => 'ფოტოს დამატება';

  @override
  String get imageUrlPlaceholder => 'ან ჩასვით სურათის URL';

  @override
  String get tags => 'ტეგები';

  @override
  String get recipeTags => 'რეცეპტის ტეგები';

  @override
  String get suggestedTags => 'შემოთავაზებული';

  @override
  String get searchRecipes => 'რეცეპტების ძიება...';

  @override
  String get filterByTag => 'ფილტრაცია ტეგით';

  @override
  String get allTags => 'ყველა';

  @override
  String get recipeDeleted => 'რეცეპტი წაიშალა';

  @override
  String get saveChanges => 'ცვლილებების შენახვა';

  @override
  String get editRecipeTitle => 'რეცეპტის რედაქტირება';

  @override
  String get newRecipeTitle => 'ახალი რეცეპტი';

  @override
  String get requiredField => 'სავალდებულოა';

  @override
  String get chooseImageSource => 'სურათის წყაროს არჩევა';

  @override
  String get gallery => 'გალერეა';

  @override
  String get enterUrl => 'შეიყვანეთ URL';

  @override
  String get recipeImage => 'რეცეპტის სურათი';

  @override
  String get removeImage => 'სურათის წაშლა';

  @override
  String get mealPlannerTitle => 'კვების დაგეგმვა';

  @override
  String get mealPlannerViewMonthly => 'ყოველთვიური ხედი';

  @override
  String get mealPlannerViewWeekly => 'ყოველკვირეული ხედი';

  @override
  String get mealPlannerNoMeals => 'კერძები არ არის დაგეგმილი';

  @override
  String get mealPlannerNoMealsHint => 'დააჭირეთ დღეს კერძის დასამატებლად';

  @override
  String get mealPlannerLoading => 'კვების გეგმის ჩატვირთვა...';

  @override
  String get mealPlannerError => 'კვების გეგმის ჩატვირთვის შეცდომა';

  @override
  String get mealPlannerAddMeal => 'კერძის დამატება';

  @override
  String get mealPlannerEditMeal => 'კერძის რედაქტირება';

  @override
  String get mealPlannerDeleteMeal => 'კერძის ამოშლა';

  @override
  String get mealPlannerMealDeleted => 'კერძი ამოშლილია';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ულუფა',
      one: '$count ულუფა',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ულუფები';

  @override
  String get mealPlannerNoteLabel => 'შენიშვნა (სურვილისამებრ)';

  @override
  String get mealPlannerSelectRecipe => 'აირჩიეთ რეცეპტი';

  @override
  String get mealPlannerSearchRecipes => 'რეცეპტების ძიება...';

  @override
  String get mealPlannerNoRecipesFound => 'რეცეპტები ვერ მოიძებნა';

  @override
  String get mealPlannerNoRecipesHint =>
      'ჯერ შექმენით რეცეპტები „რეცეპტების“ ჩანართში';

  @override
  String get mealPlannerSave => 'გეგმაში დამატება';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'დაგეგმილია $total-დან $count კერძი';
  }

  @override
  String get mealPlannerGenerateList => 'საყიდლების სიის გენერირება';

  @override
  String get mealPlannerGenerateListConfirm =>
      'დაემატოს ამ კვირის დაგეგმილი კერძების ყველა ინგრედიენტი საყიდლების სიაში?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ინგრედიენტი დაემატა თქვენს სიას!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'დასამატებელი ინგრედიენტები არ არის. ჯერ დაგეგმეთ კერძები რეცეპტებით.';

  @override
  String get mealPlannerGenerateListNoList => 'ჯერ შექმენით საყიდლების სია.';

  @override
  String get mealPlannerMealTypeBreakfast => 'საუზმე';

  @override
  String get mealPlannerMealTypeLunch => 'სადილი';

  @override
  String get mealPlannerMealTypeDinner => 'ვახშამი';

  @override
  String get mealPlannerMealTypeSnack => 'წახემსება';

  @override
  String get mealPlannerDateLabel => 'თარიღი';

  @override
  String get mealPlannerWeekEmpty => 'ამ კვირისთვის არაფერია დაგეგმილი';

  @override
  String get mealPlannerWeekEmptyHint =>
      'დააჭირეთ ნებისმიერ დღეს კვების დაგეგმვის დასაწყებად!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes წთ';
  }
}
