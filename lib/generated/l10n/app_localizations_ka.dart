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
  String get navChat => 'ჩატი';

  @override
  String get navRecipes => 'რეცეპტები';

  @override
  String get navLists => 'სიები';

  @override
  String get navMealPlanner => 'მენიუ';

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
  String get next => 'შემდეგი';

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
  String get profile => 'პროფილი';

  @override
  String get exitShoppingMode => 'გადით შოპინგის რეჟიმიდან';

  @override
  String get exit => 'გასვლა';

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
  String get languagePortuguese => 'პორტუგალიური (ბრაზილია)';

  @override
  String get languageEnglish => 'ინგლისური';

  @override
  String get languageSystem => 'სისტემის ნაგულისხმევი';

  @override
  String get chooseLanguage => 'ენის არჩევა';

  @override
  String get searchLanguage => 'ენის ძებნა...';

  @override
  String get currency => 'ვალუტა';

  @override
  String get chooseCurrency => 'აირჩიეთ ვალუტა';

  @override
  String get searchCurrency => 'მოძებნეთ ვალუტა...';

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
  String get dynamicColorsEnabledWarning =>
      'გამორთეთ დინამიური ფერები თემის ფერის მოქმედებისთვის';

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
  String get newChat => 'ახალი ჩატი';

  @override
  String get noHistory => 'არ არის ჩატის ისტორია';

  @override
  String get deleteSession => 'ჩატის წაშლა';

  @override
  String get deleteSessionConfirm =>
      'დარწმუნებული ხართ, რომ გსურთ ამ ჩატის წაშლა? შეტყობინებები სამუდამოდ დაიკარგება.';

  @override
  String get clearHistory => 'ისტორიის გასუფთავება';

  @override
  String get clearHistoryConfirm => 'ყველა მესიჯის გასუფთავება ამ სესიაში?';

  @override
  String get chatHint => 'ჩაწერეთ თქვენი მესიჯი...';

  @override
  String get chatHintBlocked => 'განბლოკეთ AI ჩატში';

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
  String get aiLimitAlmostReached => 'AI შეტყობინებები თითქმის ამოიწურა';

  @override
  String get unlockAi => 'განბლოკეთ შეუზღუდავი AI';

  @override
  String get aiTeaserFallback =>
      'გამოიწერეთ Premium, რათა განბლოკოთ სრული პასუხი და მიიღოთ შეუზღუდავი AI რჩევები თქვენი შოპინგისთვის...';

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
  String get loginPrompt => 'შედით სისტემაში\nპრემიუმ ფუნქციების განსაბლოკად';

  @override
  String get signInGoogle => 'Google-ით შესვლა';

  @override
  String get signInApple => 'Apple-ით შესვლა';

  @override
  String get continueAsGuest => 'სტუმრად გაგრძელება';

  @override
  String get onboardingWelcomeTitle =>
      'კეთილი იყოს თქვენი მობრძანება KipiList-ში';

  @override
  String get onboardingWelcomeDesc =>
      'თქვენი შოპინგის ორგანიზებისა და ფულის დაზოგვის ყველაზე ჭკვიანი გზა.';

  @override
  String get onboardingSetupTitle => 'თქვენი გამოცდილების პერსონალიზაცია';

  @override
  String get onboardingSetupDesc =>
      'აირჩიეთ, როგორ გსურთ KipiList-მა გამოიყურებოდეს და იმუშაოს თქვენთვის.';

  @override
  String get onboardingLoginTitle => 'შეინახეთ ყველაფერი ღრუბელში';

  @override
  String get onboardingLoginDesc =>
      'თქვენი მონაცემები სინქრონიზებულია ყველა თქვენს მოწყობილობაზე';

  @override
  String get onboardingShareTitle => 'გაუზიარე მათ, ვინც გიყვარს';

  @override
  String get onboardingShareDesc =>
      'სიების სინქრონიზაცია ოჯახთან და მეგობრებთან რეალურ დროში';

  @override
  String get onboardingPremiumTitle => 'განბლოკეთ ყველა ფუნქცია';

  @override
  String get onboardingPremiumSubtitle =>
      'მიიღეთ მაქსიმუმი თქვენი სავაჭრო სიებიდან';

  @override
  String get onboardingAnnualBadge => 'საუკეთესო ღირებულება';

  @override
  String get onboardingMonthlyLabel => 'ყოველთვიური';

  @override
  String get onboardingAnnualLabel => 'წლიური';

  @override
  String get onboardingViewAllPlans => 'იხილეთ ყველა გეგმა';

  @override
  String get onboardingSubscribeCta => 'გამოწერა';

  @override
  String get onboardingCancelAnytime =>
      'გააუქმეთ ნებისმიერ დროს. არანაირი ვალდებულება.';

  @override
  String get onboardingContinueAsGuest => 'განაგრძეთ სტუმრად';

  @override
  String get onboardingRestore => 'აღდგენა';

  @override
  String get onboardingRestoreDesc =>
      'უკვე გაქვთ გამოწერა? შეეხეთ აქ მის აღსადგენად.';

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
  String get onboardingExit => 'გასვლა';

  @override
  String get onboardingPersonalizationTitle => 'მოდით გაგიცნოთ';

  @override
  String get onboardingPersonalizationDesc =>
      'ჩვენ ამას გამოვიყენებთ თქვენი წინადადებების პერსონალიზებისთვის და შოპინგი უფრო გონივრული რომ გავხადოთ.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'რომელია თქვენი საყვარელი საჭმელი?';

  @override
  String get onboardingPersonalizationFoodHint => 'მაგ. პიცა, სუში, ლაზანია...';

  @override
  String get onboardingPersonalizationCta => 'განაგრძეთ';

  @override
  String get onboardingPersonalizationSkip => 'ახლა გამოტოვეთ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'გვითხარით თქვენი საყვარელი საკვები გასაგრძელებლად';

  @override
  String get settingsDefaultScreen => 'ნაგულისხმევი საწყისი ეკრანი';

  @override
  String get settingsDefaultScreenSubtitle =>
      'აირჩიეთ საყიდლების სიას ან AI ჩატს შორის';

  @override
  String get settingsScreenList => 'სავაჭრო სია';

  @override
  String get settingsScreenChat => 'AI ჩატი';

  @override
  String loginError(String error) {
    return 'შესვლის შეცდომა: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'შეთავაზებების ჩატვირთვის შეცდომა. სცადეთ ხელახლა.';

  @override
  String get paywallPurchaseError =>
      'შესყიდვის დასრულება ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get paywallRestoreError => 'აღსადგენად აქტიური გამოწერა ვერ მოიძებნა.';

  @override
  String paywallTrialDays(Object days) {
    return '$days დღე უფასო';
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
  String get paywallTrialTitle =>
      'სცადეთ KipiList Pro უფასოდ 7 დღის განმავლობაში';

  @override
  String get paywallTrialSubtitle =>
      'გააუქმეთ ნებისმიერ დროს. დღეს გადასახადი არ არის.';

  @override
  String get paywallTrialCta => 'დაიწყეთ უფასო საცდელი ვერსია';

  @override
  String get recipeAddToList => 'საყიდლების სიაში დამატება';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ინგრედიენტი დაემატა $listName-ს';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'ყველაფერი რაც თქვენ გჭირდებათ:';

  @override
  String get paywallFeatureUnlimitedLists => 'შეუზღუდავი სიები';

  @override
  String get paywallFeatureSmartAI => 'ჭკვიანი AI';

  @override
  String get paywallFeatureExpenseControl => 'ხარჯების კონტროლი';

  @override
  String get paywallFeatureSharing => 'გაზიარება';

  @override
  String get paywallBeforeAfterTitle => 'AI ადრე და შემდეგ:';

  @override
  String get paywallLabelCommon => 'საერთო';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ბრინჯი';

  @override
  String get paywallBeforeItem2 => 'საპონი';

  @override
  String get paywallBeforeItem3 => 'ხორცი';

  @override
  String get paywallBeforeItem4 => 'პური';

  @override
  String get paywallAfterItem1 => 'მარცვლეული';

  @override
  String get paywallAfterItem2 => 'დასუფთავება';

  @override
  String get paywallAfterItem3 => 'ხორცი';

  @override
  String get paywallAfterItem4 => 'საცხობი';

  @override
  String get paywallTestimonialsTitle => 'რას ამბობენ ჩვენი მომხმარებლები:';

  @override
  String get paywallTestimonial1Name => 'ენ ს.';

  @override
  String get paywallTestimonial1Text =>
      'AI აწყობს ჩემს შოპინგის წამებში. მე ვზოგავ 20 წუთს მარკეტში მოგზაურობისთვის.';

  @override
  String get paywallTestimonial2Name => 'ჩარლზ მ.';

  @override
  String get paywallTestimonial2Text =>
      'სიის პუნქტი აღარ დამავიწყდა. AI ჩატი სენსაციურია!';

  @override
  String get paywallSocialProof => 'სარგებლობს +2400 ოჯახი';

  @override
  String get paywallCtaUnlock => 'განბლოკეთ PRO';

  @override
  String get paywallBestValue => 'საუკეთესო ღირებულება';

  @override
  String get paywallMostPopular => 'ყველაზე პოპულარული';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'უსაფრთხო გადახდა';

  @override
  String get paywallSelectPlan => 'აირჩიეთ თქვენი გეგმა:';

  @override
  String paywallSavePercent(Object percent) {
    return 'შენახვა $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'მხოლოდ $price/თვეში';
  }

  @override
  String get paywallPackageAnnual => 'წლიური გეგმა';

  @override
  String get paywallPackageMonthly => 'ყოველთვიური გეგმა';

  @override
  String get paywallPackageLifetime => 'უვადოდ წვდომა';

  @override
  String get paywallCancelAnytime =>
      'გააუქმეთ ნებისმიერ დროს. არანაირი ვალდებულება.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get paywallTerms => 'გამოყენების პირობები';

  @override
  String get paywallRestore => 'აღდგენა';

  @override
  String get paywallHeroHeadline => 'Kipi AI ყოველთვის თქვენს გვერდით';

  @override
  String get paywallHeroSubtitle =>
      'დაამატეთ ნივთები, მოაწყვეთ სიები და დაზოგეთ დრო ჯიბეში AI-ით';

  @override
  String get paywallBenefit1Desc => 'ამატებს, აწყობს და სთავაზობს ნივთებს 24/7';

  @override
  String get paywallBenefit2Desc => 'არ არის 3 სიის ლიმიტი';

  @override
  String get paywallBenefit3Desc =>
      'ხარჯების თვალყურის დევნება და ოჯახის სიები';

  @override
  String get paywallPackageMonthlyDesc => 'სრული მოქნილობა';

  @override
  String paywallCtaTrialDays(int days) {
    return 'დაწყება უფასოდ — $days დღე';
  }

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
      'ილაპარაკეთ ბუნებრივად თქვენი სიის სამართავად!\n\nმაგალითები:\n• \'დაამატე პური, ყველი და ლორი\'\n• \'წაშალე სამრეცხაო სარეცხი\'\n• \'შეცვალე თემა ლურჯზე\'\n\nეს არის KipiList Premium-ის ექსკლუზიური ფუნქცია.';

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
      'თქვენი გამოხმაურება მიღებულია და გვეხმარება KipiList-ის გაუმჯობესებაში ყველასთვის.';

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
  String get aiEnergy => 'AI ენერგია';

  @override
  String get searchInConversation => 'საუბარში ძიება...';

  @override
  String get noMessagesFound => 'შეტყობინებები ვერ მოიძებნა';

  @override
  String get suggestedQuestions => 'შემოთავაზებული კითხვები:';

  @override
  String get shoppingAssistant => 'სავაჭრო ასისტენტი';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'შეძენილია $purchased $total-დან';
  }

  @override
  String get estimatedCost => 'სავარაუდო';

  @override
  String get viewItems => 'ნივთების ნახვა';

  @override
  String get noItemsInList => 'სიაში ელემენტი არ არის';

  @override
  String get longHistoryWarning =>
      'ხანგრძლივი ისტორია: ასისტენტი ყურადღებას ამახვილებს უახლეს შეტყობინებებზე უკეთესი მუშაობისთვის.';

  @override
  String get listening => 'მოსმენა...';

  @override
  String get addDirectToList => 'პირდაპირ სიაში დამატება';

  @override
  String get unlockFullResponse => 'განბლოკეთ სრული პასუხი';

  @override
  String get switchList => 'სიის გადართვა';

  @override
  String get marketMode => 'ბაზრის რეჟიმი';

  @override
  String get backToChat => 'დაბრუნება ჩატში';

  @override
  String get finishShopping => 'დაასრულეთ შოპინგი';

  @override
  String get welcomeAiAssistant =>
      'კეთილი იყოს თქვენი მობრძანება AI ასისტენტში';

  @override
  String get createListToStartAi =>
      'შექმენით საყიდლების სია, რომ დაიწყოთ ჭკვიანი ჩატის გამოყენება.';

  @override
  String get howCanIHelp => 'როგორ შემიძლია დახმარება?';

  @override
  String get chatSubtitleShort => 'ჰკითხეთ ფასებს, რეცეპტებს, ორგანიზაციას...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total შეძენილი';
  }

  @override
  String get quickReplies => 'სწრაფი პასუხები:';

  @override
  String get voiceProFeature =>
      'გაფართოებული ხმოვანი ბრძანებები არის Pro. ძირითადი კარნახის ჩართვა...';

  @override
  String get viewPro => 'ნახვა Pro';

  @override
  String get errorLoadingChat => 'უი! ჩეთის ჩატვირთვისას მოხდა რაღაც შეცდომა.';

  @override
  String get errorLoadingChatSubtitle =>
      'შეამოწმეთ თქვენი კავშირი ან სცადეთ მოგვიანებით.';

  @override
  String get errorOscillation =>
      'ეს შეიძლება მოხდეს ქსელის რხევების ან დროებითი მიუწვდომლობის გამო. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get activeListening => 'აქტიური მოსმენა';

  @override
  String get whatToDoWithItem => 'რის გაკეთებას ისურვებდით ამ ნივთთან?';

  @override
  String get viewDetails => 'დეტალების ნახვა';

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

  @override
  String get inviteToList => 'მოიწვიე სიაში';

  @override
  String get shareApp => 'აპლიკაციის გაზიარება';

  @override
  String get shareAppDescription =>
      'მოიწვიე მეგობრები, რომ გამოიყენონ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'მე ვიყენებ KipiList-ს ჩემი შოპინგის ორგანიზებისთვის! ჩამოტვირთეთ ჩემი ბმულით და ჩვენ ორივე ვიღებთ 7 დღიან Premium უფასოდ: $url';
  }

  @override
  String get shareReferralSubject => 'მიიღეთ 7 დღიანი KipiList Premium!';

  @override
  String get gestureHint => 'ხანგრძლივად ასარჩევად • გადაფურცლეთ წასაშლელად';

  @override
  String get catalogTitle => 'კატალოგი';

  @override
  String get catalogMyFrequents => 'ჩემი სიხშირე';

  @override
  String get catalogSearchGlobal => 'მოძებნეთ ნებისმიერი პროდუქტი...';

  @override
  String catalogSearchInCategory(String category) {
    return 'ძიება $category-ში...';
  }

  @override
  String get catalogSortPopular => 'ყველაზე პოპულარული';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ნაციონალები';

  @override
  String get catalogRareSection => 'ნაკლებად გავრცელებული თქვენს ქვეყანაში';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'დაამატეთ $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'პროდუქტი ვერ მოიძებნა, ჩაწერეთ სახელი';

  @override
  String get catalogBrowse => 'კატალოგის დათვალიერება';

  @override
  String get offlineBanner => 'თქვენ ხაზგარეშე ხართ';

  @override
  String get consentTitle => 'კონფიდენციალურობა და ანალიტიკა';

  @override
  String get consentBody =>
      'KipiList იყენებს Firebase Analytics-ს თქვენი გამოცდილების გასაუმჯობესებლად. თქვენი მონაცემები მუშავდება ჩვენი კონფიდენციალურობის პოლიტიკის შესაბამისად.';

  @override
  String get consentAccept => 'მიღება';

  @override
  String get consentDecline => 'არა, მადლობა';

  @override
  String get mealPlannerPantryAllAvailable => 'მარაგში';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count აკლია ელემენტი',
      one: '$count აკლია ელემენტი',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ვარგისიანობის ვადა';

  @override
  String get notInformed => 'არ არის ინფორმირებული';

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
  String get errorRenderScreen =>
      'Oops! Something went wrong rendering this screen.';

  @override
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(Object error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

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
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get userProfile => 'User Profile';

  @override
  String get saveProfile => 'Save Profile';

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
  String get manageCategoriesTitle => 'კატეგორიების მართვა';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get noCategories => 'No categories.';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(Object days) {
    return '$days days';
  }

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get aiPremiumDescription =>
      'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icon:';

  @override
  String get scanBarcode => 'Scan Barcode';

  @override
  String get scanProduct => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String replaceItem(Object name) {
    return 'Replace $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get swap => 'Swap';

  @override
  String itemAdded(Object name) {
    return '$name added';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error loading products: $error';
  }

  @override
  String get mealType => 'Meal type';

  @override
  String get requestTimeout => 'Sorry, the request timed out.';

  @override
  String get connectionError2 => 'Sorry, a connection error occurred.';

  @override
  String get addingItems => 'Adding items to list...';

  @override
  String get removingItems => 'Removing items...';

  @override
  String get updatingItem => 'Updating item...';

  @override
  String get checkingItem => 'Checking item...';

  @override
  String get uncheckingItem => 'Unchecking item...';

  @override
  String get clearingCheckedItems => 'Clearing checked items...';

  @override
  String get reorganizingList => 'Reorganizing list...';

  @override
  String get creatingNewList => 'Creating new list...';

  @override
  String get removingList => 'Removing list...';

  @override
  String get renamingList => 'Renaming list...';

  @override
  String get queryingYourLists => 'Querying your lists...';

  @override
  String get settingBudget => 'Setting budget...';

  @override
  String get checkingPantry => 'Checking your pantry...';

  @override
  String get addingToPantry => 'Adding to pantry...';

  @override
  String get removingFromPantry => 'Removing from pantry...';

  @override
  String get updatingPantry => 'Updating pantry...';

  @override
  String get savingRecipe => 'Saving recipe...';

  @override
  String get searchingRecipes => 'Searching recipes...';

  @override
  String get removingRecipe => 'Removing recipe...';

  @override
  String get addingIngredientsToList => 'Adding ingredients to list...';

  @override
  String get organizingMenu => 'Organizing your menu...';

  @override
  String get loadingMenu => 'Loading your menu...';

  @override
  String get updatingMenu => 'Updating menu...';

  @override
  String get searchingCategories => 'Searching categories...';

  @override
  String get categorizingItems => 'Categorizing items...';

  @override
  String get generatingShareLink => 'Generating share link...';

  @override
  String get searchingSharedList => 'Searching shared list...';

  @override
  String get loadingProfile => 'Loading your profile...';

  @override
  String get savingPreferences => 'Saving your preferences...';

  @override
  String get checkingSettings => 'Checking your settings...';

  @override
  String get generatingContent => 'Generating personalized content...';

  @override
  String get searchingProducts => 'Searching products...';

  @override
  String get estimatingPrices => 'Estimating prices...';

  @override
  String get processing => 'Processing...';

  @override
  String get shoppingList => 'Shopping List';

  @override
  String get purchasedSuffix => ' [Purchased]';

  @override
  String get listUnarchived => 'List unarchived successfully.';

  @override
  String get toolDeleteList => 'Delete list';

  @override
  String get toolAddItems => 'Add items';

  @override
  String get toolRemoveItems => 'Remove items';

  @override
  String get toolAddToPantry => 'Add to pantry';

  @override
  String get toolRemoveFromPantry => 'Remove from pantry';

  @override
  String get toolShareList => 'Share list';

  @override
  String get toolSaveRecipe => 'Save recipe';

  @override
  String get toolDeleteRecipe => 'Delete recipe';

  @override
  String get toolRemoveMeal => 'Remove meal';

  @override
  String get toolSavePreference => 'Save preference';

  @override
  String get toolRemovePreference => 'Remove preference';

  @override
  String currentTheme(Object mode) {
    return 'Current theme: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Theme changed to $mode.';
  }

  @override
  String get addToList => 'Add to List';

  @override
  String errorAddingItem(Object error) {
    return 'Error adding item: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error adding items in batch: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error toggling item status: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Error removing item: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error updating item: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error updating items: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Error restoring item: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error increasing quantity: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error decreasing quantity: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error clearing list: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Error clearing purchased items: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Error removing items: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Error toggling items: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Error reordering item: $error';
  }

  @override
  String get errorCreatingList => 'Error creating list';

  @override
  String errorServerConnection(Object error) {
    return 'Error connecting to server: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error updating list: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error deleting list: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Error removing shared list: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error setting current list: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error archiving list: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error unarchiving list: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'User not authenticated.';

  @override
  String get errorGeneratingCode => 'Error generating unique code. Try again.';

  @override
  String pantryLimitReached(Object count) {
    return 'Limit of $count items in pantry on the free plan. Upgrade to add more.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error importing list \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error executing $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorry, an error occurred while processing your request. Check your connection or try again later.';

  @override
  String get couldNotProcess => 'Could not process after multiple attempts.';

  @override
  String get errorResumingProcessing => 'Error resuming processing.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error resuming loop';

  @override
  String get othersCategory => 'Others';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro active';

  @override
  String get customizeAiAssistant => 'Customize AI Assistant';

  @override
  String get assistantHistory => 'Assistant History';

  @override
  String get assistantHistorySubtitle => 'View and search past conversations';

  @override
  String get customizeAssistant => 'Customize Assistant';

  @override
  String get assistantName => 'Assistant Name';

  @override
  String get chooseIcon => 'Choose an Icon:';

  @override
  String get backToToday => 'დაუბრუნდი დღეს';

  @override
  String get conversationHistoryTitle => 'Conversation History';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get newConversationDefaultTitle => 'New Conversation';

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
  String get aiEnergyLow => 'You\'re almost out of energy!';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    return 'Only $remaining free messages left today. Subscribe to Premium and stop worrying about limits.';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Subscribe to Premium and use the AI chat as much as you want. No counting, no limits.';

  @override
  String get suggestedItems => 'Suggested Items';

  @override
  String get swapped => 'Swapped';

  @override
  String get newCategoryDialog => 'New Category';

  @override
  String get editCategoryDialog => 'Edit Category';

  @override
  String get categoryName => 'Name';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get categoryColorLabel => 'Color:';

  @override
  String get categoryIconLabel => 'Icon:';

  @override
  String get product => 'Product';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed your list.';

  @override
  String get allSet => 'All set!';

  @override
  String itemsCount(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String budgetLabel(String amount) {
    return 'Budget: $amount';
  }

  @override
  String totalLabel(String amount) {
    return 'Total: $amount';
  }

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get saved => 'Saved';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get editAssistantName => 'Edit Assistant Name';

  @override
  String get selectAssistantIcon => 'Select Assistant Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String quantityWithUnit(String quantity, String unit) {
    return '$quantity $unit';
  }

  @override
  String quantityUnitWithPrice(String quantity, String unit, String price) {
    return '$quantity $unit • $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Your shopping list with artificial intelligence';

  @override
  String get onboardingLoginHeadline => 'Sign in in 1 second';

  @override
  String get onboardingLoginSubtitle =>
      'Your lists are saved and synced automatically';

  @override
  String get onboardingPersonalizationNameLabel => 'What can I call you?';

  @override
  String get onboardingPersonalizationNameHint => 'Your name (optional)';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'What do you organize most often?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Do you shop alone or with others?';

  @override
  String get onboardingCategoryGrocery => '🛒 Grocery';

  @override
  String get onboardingCategoryPharmacy => '💊 Pharmacy';

  @override
  String get onboardingCategoryRecipes => '🍽️ Recipes';

  @override
  String get onboardingCategoryHome => '🏠 Home';

  @override
  String get onboardingCategoryPet => '🐾 Pet';

  @override
  String get onboardingGroupSolo => '👤 Just me';

  @override
  String get onboardingGroupCouple => '👥 With someone';

  @override
  String get onboardingGroupFamily => '👨‍👩‍👧 Family';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hi $name! I see you organize $category 😊';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hi! I see you organize $category 😊';
  }

  @override
  String get onboardingAiDemoOffer => 'Want me to build a list right now?';

  @override
  String get onboardingAiDemoYes => '✅ Yes, build it for me!';

  @override
  String get onboardingAiDemoChange => '🔄 Different category';

  @override
  String onboardingAiDemoReaction(int count) {
    return 'Done! I created $count items for you 🎉';
  }

  @override
  String get onboardingAiDemoContinue => 'Amazing! I want more →';

  @override
  String get onboardingCommitmentsTitle => 'What do you want to achieve?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choose everything that applies to you';

  @override
  String get onboardingGoalSaveMoney => '💰 Spend less at the store';

  @override
  String get onboardingGoalNeverForget => '✅ Never forget an item';

  @override
  String get onboardingGoalFaster => '⚡ Shop faster';

  @override
  String get onboardingGoalFamily => '👨‍👩‍👧 Organize with family';

  @override
  String get onboardingGoalRecipes => '🍽️ Plan weekly recipes';

  @override
  String get onboardingGoalPantry => '📦 Track pantry stock';

  @override
  String get onboardingLoadingTitle => 'Building your plan...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up your personalized list...';

  @override
  String get onboardingLoadingStep3 => 'Your plan is ready! 🎉';

  @override
  String get onboardingLoadingStat1Label => 'Average rating';

  @override
  String get onboardingLoadingStat2Label => 'Lists created this week';

  @override
  String get onboardingLoadingStat3Label => 'Recommend the app';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, you\'re 7 days away from spending less on shopping';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, you\'re 7 days away from never forgetting an item again';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, you\'re 7 days away from shopping in half the time';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, you\'re 7 days away from organizing the whole family\'s shopping';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, you\'re 7 days away from planning your recipes automatically';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, you\'re 7 days away from full control of your pantry';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'You\'re 7 days away from spending less on shopping';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'You\'re 7 days away from never forgetting an item again';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'You\'re 7 days away from shopping in half the time';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'You\'re 7 days away from organizing the whole family\'s shopping';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'You\'re 7 days away from planning your recipes automatically';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'You\'re 7 days away from full control of your pantry';

  @override
  String get paywallTestimonial =>
      '\"I saved R\$180 in the first month by better organizing my shopping\"';

  @override
  String get paywallTestimonialAuthor => 'Ana R., São Paulo';

  @override
  String paywallTrialDisclaimer(int days) {
    return 'Cancel anytime · Charged after $days days';
  }

  @override
  String get paywallSkipNow => 'Not now';
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
  String get navChat => 'ჩატი';

  @override
  String get navRecipes => 'რეცეპტები';

  @override
  String get navLists => 'სიები';

  @override
  String get navMealPlanner => 'მენიუ';

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
  String get next => 'შემდეგი';

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
  String get profile => 'პროფილი';

  @override
  String get exitShoppingMode => 'გადით შოპინგის რეჟიმიდან';

  @override
  String get exit => 'გასვლა';

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
  String get languagePortuguese => 'პორტუგალიური (ბრაზილია)';

  @override
  String get languageEnglish => 'ინგლისური';

  @override
  String get languageSystem => 'სისტემის ნაგულისხმევი';

  @override
  String get chooseLanguage => 'ენის არჩევა';

  @override
  String get searchLanguage => 'ენის ძებნა...';

  @override
  String get currency => 'ვალუტა';

  @override
  String get chooseCurrency => 'აირჩიეთ ვალუტა';

  @override
  String get searchCurrency => 'მოძებნეთ ვალუტა...';

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
  String get dynamicColorsEnabledWarning =>
      'გამორთეთ დინამიური ფერები თემის ფერის მოქმედებისთვის';

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
  String get newChat => 'ახალი ჩატი';

  @override
  String get noHistory => 'არ არის ჩატის ისტორია';

  @override
  String get deleteSession => 'ჩატის წაშლა';

  @override
  String get deleteSessionConfirm =>
      'დარწმუნებული ხართ, რომ გსურთ ამ ჩატის წაშლა? შეტყობინებები სამუდამოდ დაიკარგება.';

  @override
  String get clearHistory => 'ისტორიის გასუფთავება';

  @override
  String get clearHistoryConfirm => 'წავშალოთ ყველა შეტყობინება ამ სესიაში?';

  @override
  String get chatHint => 'აკრიფეთ თქვენი შეტყობინება...';

  @override
  String get chatHintBlocked => 'განბლოკეთ AI ჩატში';

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
  String get aiLimitAlmostReached => 'AI შეტყობინებები თითქმის ამოიწურა';

  @override
  String get unlockAi => 'განბლოკეთ შეუზღუდავი AI';

  @override
  String get aiTeaserFallback =>
      'გამოიწერეთ Premium, რათა განბლოკოთ სრული პასუხი და მიიღოთ შეუზღუდავი AI რჩევები თქვენი შოპინგისთვის...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'შედით სისტემაში პრემიუმ ფუნქციების განსაბლოკად';

  @override
  String get signInGoogle => 'Google-ით შესვლა';

  @override
  String get signInApple => 'Apple-ით შესვლა';

  @override
  String get continueAsGuest => 'სტუმრად გაგრძელება';

  @override
  String get onboardingWelcomeTitle =>
      'კეთილი იყოს თქვენი მობრძანება KipiList-ში';

  @override
  String get onboardingWelcomeDesc =>
      'თქვენი შოპინგის ორგანიზებისა და ფულის დაზოგვის ყველაზე ჭკვიანი გზა.';

  @override
  String get onboardingSetupTitle => 'თქვენი გამოცდილების პერსონალიზაცია';

  @override
  String get onboardingSetupDesc =>
      'აირჩიეთ, როგორ გსურთ KipiList-მა გამოიყურებოდეს და იმუშაოს თქვენთვის.';

  @override
  String get onboardingLoginTitle => 'შეინახეთ ყველაფერი ღრუბელში';

  @override
  String get onboardingLoginDesc =>
      'თქვენი მონაცემები სინქრონიზებულია ყველა თქვენს მოწყობილობაზე';

  @override
  String get onboardingShareTitle => 'გაუზიარე მათ, ვინც გიყვარს';

  @override
  String get onboardingShareDesc =>
      'სიების სინქრონიზაცია ოჯახთან და მეგობრებთან რეალურ დროში';

  @override
  String get onboardingPremiumTitle => 'განბლოკეთ ყველა ფუნქცია';

  @override
  String get onboardingPremiumSubtitle =>
      'მიიღეთ მაქსიმუმი თქვენი სავაჭრო სიებიდან';

  @override
  String get onboardingAnnualBadge => 'საუკეთესო ღირებულება';

  @override
  String get onboardingMonthlyLabel => 'ყოველთვიური';

  @override
  String get onboardingAnnualLabel => 'წლიური';

  @override
  String get onboardingViewAllPlans => 'იხილეთ ყველა გეგმა';

  @override
  String get onboardingSubscribeCta => 'გამოწერა';

  @override
  String get onboardingCancelAnytime =>
      'გააუქმეთ ნებისმიერ დროს. არანაირი ვალდებულება.';

  @override
  String get onboardingContinueAsGuest => 'განაგრძეთ სტუმრად';

  @override
  String get onboardingRestore => 'აღდგენა';

  @override
  String get onboardingRestoreDesc =>
      'უკვე გაქვთ გამოწერა? შეეხეთ აქ მის აღსადგენად.';

  @override
  String get onboardingExit => 'გასვლა';

  @override
  String get onboardingPersonalizationTitle => 'მოდით გაგიცნოთ';

  @override
  String get onboardingPersonalizationDesc =>
      'ჩვენ ამას გამოვიყენებთ თქვენი წინადადებების პერსონალიზებისთვის და შოპინგი უფრო გონივრული რომ გავხადოთ.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'რომელია თქვენი საყვარელი საჭმელი?';

  @override
  String get onboardingPersonalizationFoodHint => 'მაგ. პიცა, სუში, ლაზანია...';

  @override
  String get onboardingPersonalizationCta => 'განაგრძეთ';

  @override
  String get onboardingPersonalizationSkip => 'ახლა გამოტოვეთ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'გვითხარით თქვენი საყვარელი საკვები გასაგრძელებლად';

  @override
  String get settingsDefaultScreen => 'ნაგულისხმევი საწყისი ეკრანი';

  @override
  String get settingsDefaultScreenSubtitle =>
      'აირჩიეთ საყიდლების სიას ან AI ჩატს შორის';

  @override
  String get settingsScreenList => 'სავაჭრო სია';

  @override
  String get settingsScreenChat => 'AI ჩატი';

  @override
  String loginError(String error) {
    return 'შესვლის შეცდომა: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'შეთავაზებების ჩატვირთვის შეცდომა. სცადეთ ხელახლა.';

  @override
  String get paywallPurchaseError =>
      'შესყიდვის დასრულება ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get paywallRestoreError => 'აღსადგენად აქტიური გამოწერა ვერ მოიძებნა.';

  @override
  String paywallTrialDays(Object days) {
    return '$days დღე უფასო';
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
  String get paywallTrialTitle =>
      'სცადეთ KipiList Pro უფასოდ 7 დღის განმავლობაში';

  @override
  String get paywallTrialSubtitle =>
      'გააუქმეთ ნებისმიერ დროს. დღეს გადასახადი არ არის.';

  @override
  String get paywallTrialCta => 'დაიწყეთ უფასო საცდელი ვერსია';

  @override
  String get recipeAddToList => 'საყიდლების სიაში დამატება';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ინგრედიენტი დაემატა $listName-ს';
  }

  @override
  String get paywallFeaturesTitle => 'ყველაფერი რაც თქვენ გჭირდებათ:';

  @override
  String get paywallFeatureUnlimitedLists => 'შეუზღუდავი სიები';

  @override
  String get paywallFeatureSmartAI => 'ჭკვიანი AI';

  @override
  String get paywallFeatureExpenseControl => 'ხარჯების კონტროლი';

  @override
  String get paywallFeatureSharing => 'გაზიარება';

  @override
  String get paywallBeforeAfterTitle => 'AI ადრე და შემდეგ:';

  @override
  String get paywallLabelCommon => 'საერთო';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ბრინჯი';

  @override
  String get paywallBeforeItem2 => 'საპონი';

  @override
  String get paywallBeforeItem3 => 'ხორცი';

  @override
  String get paywallBeforeItem4 => 'პური';

  @override
  String get paywallAfterItem1 => 'მარცვლეული';

  @override
  String get paywallAfterItem2 => 'დასუფთავება';

  @override
  String get paywallAfterItem3 => 'ხორცი';

  @override
  String get paywallAfterItem4 => 'საცხობი';

  @override
  String get paywallTestimonialsTitle => 'რას ამბობენ ჩვენი მომხმარებლები:';

  @override
  String get paywallTestimonial1Name => 'ენ ს.';

  @override
  String get paywallTestimonial1Text =>
      'AI აწყობს ჩემს შოპინგის წამებში. მე ვზოგავ 20 წუთს მარკეტში მოგზაურობისთვის.';

  @override
  String get paywallTestimonial2Name => 'ჩარლზ მ.';

  @override
  String get paywallTestimonial2Text =>
      'სიის პუნქტი აღარ დამავიწყდა. AI ჩატი სენსაციურია!';

  @override
  String get paywallSocialProof => 'სარგებლობს +2400 ოჯახი';

  @override
  String get paywallCtaUnlock => 'განბლოკეთ PRO';

  @override
  String get paywallBestValue => 'საუკეთესო ღირებულება';

  @override
  String get paywallMostPopular => 'ყველაზე პოპულარული';

  @override
  String get paywallSafeCheckout => 'უსაფრთხო გადახდა';

  @override
  String get paywallSelectPlan => 'აირჩიეთ თქვენი გეგმა:';

  @override
  String paywallSavePercent(Object percent) {
    return 'შენახვა $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'მხოლოდ $price/თვეში';
  }

  @override
  String get paywallPackageAnnual => 'წლიური გეგმა';

  @override
  String get paywallPackageMonthly => 'ყოველთვიური გეგმა';

  @override
  String get paywallPackageLifetime => 'უვადოდ წვდომა';

  @override
  String get paywallCancelAnytime =>
      'გააუქმეთ ნებისმიერ დროს. არანაირი ვალდებულება.';

  @override
  String get paywallPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get paywallTerms => 'გამოყენების პირობები';

  @override
  String get paywallRestore => 'აღდგენა';

  @override
  String get paywallHeroHeadline => 'Kipi AI ყოველთვის თქვენს გვერდით';

  @override
  String get paywallHeroSubtitle =>
      'დაამატეთ ნივთები, მოაწყვეთ სიები და დაზოგეთ დრო ჯიბეში AI-ით';

  @override
  String get paywallBenefit1Desc => 'ამატებს, აწყობს და სთავაზობს ნივთებს 24/7';

  @override
  String get paywallBenefit2Desc => 'არ არის 3 სიის ლიმიტი';

  @override
  String get paywallBenefit3Desc =>
      'ხარჯების თვალყურის დევნება და ოჯახის სიები';

  @override
  String get paywallPackageMonthlyDesc => 'სრული მოქნილობა';

  @override
  String paywallCtaTrialDays(int days) {
    return 'დაწყება უფასოდ — $days დღე';
  }

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
      'ილაპარაკეთ ბუნებრივად თქვენი სიის სამართავად!\n\nმაგალითები:\n• \'დაამატე პური, ყველი და ლორი\'\n• \'წაშალე სარეცხი ფხვნილი\'\n• \'შეცვალე თემა ლურჯზე\'\n\nეს არის KipiList Premium-ის ექსკლუზიური ფუნქცია.';

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
      'თქვენი გამოხმაურება მიღებულია და გვეხმარება KipiList-ის გაუმჯობესებაში ყველასთვის.';

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
  String get aiEnergy => 'AI ენერგია';

  @override
  String get searchInConversation => 'საუბარში ძიება...';

  @override
  String get noMessagesFound => 'შეტყობინებები ვერ მოიძებნა';

  @override
  String get suggestedQuestions => 'შემოთავაზებული კითხვები:';

  @override
  String get shoppingAssistant => 'სავაჭრო ასისტენტი';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'შეძენილია $purchased $total-დან';
  }

  @override
  String get estimatedCost => 'სავარაუდო';

  @override
  String get viewItems => 'ნივთების ნახვა';

  @override
  String get noItemsInList => 'სიაში ელემენტი არ არის';

  @override
  String get longHistoryWarning =>
      'ხანგრძლივი ისტორია: ასისტენტი ყურადღებას ამახვილებს უახლეს შეტყობინებებზე უკეთესი მუშაობისთვის.';

  @override
  String get listening => 'მოსმენა...';

  @override
  String get addDirectToList => 'პირდაპირ სიაში დამატება';

  @override
  String get unlockFullResponse => 'განბლოკეთ სრული პასუხი';

  @override
  String get switchList => 'სიის გადართვა';

  @override
  String get marketMode => 'ბაზრის რეჟიმი';

  @override
  String get backToChat => 'დაბრუნება ჩატში';

  @override
  String get finishShopping => 'დაასრულეთ შოპინგი';

  @override
  String get welcomeAiAssistant =>
      'კეთილი იყოს თქვენი მობრძანება AI ასისტენტში';

  @override
  String get createListToStartAi =>
      'შექმენით საყიდლების სია, რომ დაიწყოთ ჭკვიანი ჩატის გამოყენება.';

  @override
  String get howCanIHelp => 'როგორ შემიძლია დახმარება?';

  @override
  String get chatSubtitleShort => 'ჰკითხეთ ფასებს, რეცეპტებს, ორგანიზაციას...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total შეძენილი';
  }

  @override
  String get quickReplies => 'სწრაფი პასუხები:';

  @override
  String get voiceProFeature =>
      'გაფართოებული ხმოვანი ბრძანებები არის Pro. ძირითადი კარნახის ჩართვა...';

  @override
  String get viewPro => 'ნახვა Pro';

  @override
  String get errorLoadingChat => 'უი! ჩეთის ჩატვირთვისას მოხდა რაღაც შეცდომა.';

  @override
  String get errorLoadingChatSubtitle =>
      'შეამოწმეთ თქვენი კავშირი ან სცადეთ მოგვიანებით.';

  @override
  String get errorOscillation =>
      'ეს შეიძლება მოხდეს ქსელის რხევების ან დროებითი მიუწვდომლობის გამო. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get activeListening => 'აქტიური მოსმენა';

  @override
  String get whatToDoWithItem => 'რის გაკეთებას ისურვებდით ამ ნივთთან?';

  @override
  String get viewDetails => 'დეტალების ნახვა';

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

  @override
  String get inviteToList => 'მოიწვიე სიაში';

  @override
  String get shareApp => 'აპლიკაციის გაზიარება';

  @override
  String get shareAppDescription =>
      'მოიწვიე მეგობრები, რომ გამოიყენონ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'მე ვიყენებ KipiList-ს ჩემი შოპინგის ორგანიზებისთვის! ჩამოტვირთეთ ჩემი ბმულით და ჩვენ ორივე ვიღებთ 7 დღიან Premium უფასოდ: $url';
  }

  @override
  String get shareReferralSubject => 'მიიღეთ 7 დღიანი KipiList Premium!';

  @override
  String get gestureHint => 'ხანგრძლივად ასარჩევად • გადაფურცლეთ წასაშლელად';

  @override
  String get catalogTitle => 'კატალოგი';

  @override
  String get catalogMyFrequents => 'ჩემი სიხშირე';

  @override
  String get catalogSearchGlobal => 'მოძებნეთ ნებისმიერი პროდუქტი...';

  @override
  String catalogSearchInCategory(String category) {
    return 'ძიება $category-ში...';
  }

  @override
  String get catalogSortPopular => 'ყველაზე პოპულარული';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ნაციონალები';

  @override
  String get catalogRareSection => 'ნაკლებად გავრცელებული თქვენს ქვეყანაში';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'დაამატეთ $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'პროდუქტი ვერ მოიძებნა, ჩაწერეთ სახელი';

  @override
  String get catalogBrowse => 'კატალოგის დათვალიერება';

  @override
  String get offlineBanner => 'თქვენ ხაზგარეშე ხართ';

  @override
  String get consentTitle => 'კონფიდენციალურობა და ანალიტიკა';

  @override
  String get consentBody =>
      'KipiList იყენებს Firebase Analytics-ს თქვენი გამოცდილების გასაუმჯობესებლად. თქვენი მონაცემები მუშავდება ჩვენი კონფიდენციალურობის პოლიტიკის შესაბამისად.';

  @override
  String get consentAccept => 'მიღება';

  @override
  String get consentDecline => 'არა, მადლობა';

  @override
  String get mealPlannerPantryAllAvailable => 'მარაგში';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count აკლია ელემენტი',
      one: '$count აკლია ელემენტი',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ვარგისიანობის ვადა';

  @override
  String get notInformed => 'არ არის ინფორმირებული';

  @override
  String get manageCategoriesTitle => 'კატეგორიების მართვა';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get backToToday => 'დაუბრუნდი დღეს';
}
