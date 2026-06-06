// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'បញ្ជីទិញទំនិញ';

  @override
  String get lists => 'បញ្ជី';

  @override
  String get pantry => 'អាហារដ្ឋាន';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get create => 'បង្កើត';

  @override
  String get add => 'បន្ថែម';

  @override
  String get remove => 'ដកចេញ';

  @override
  String get delete => 'លុប';

  @override
  String get edit => 'កែសម្រួល';

  @override
  String get copy => 'ចម្លង';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get retry => 'ព្យាយាមម្តងទៀត';

  @override
  String get regenerate => 'បង្កើតឡើងវិញ';

  @override
  String get copiedToClipboard => 'បានចម្លងទៅក្ដារតម្បៀតខ្ទាស់';

  @override
  String get confirm => 'បញ្ជាក់';

  @override
  String get close => 'បិទ';

  @override
  String get import => 'នាំចូល';

  @override
  String get rename => 'ប្តូរឈ្មោះ';

  @override
  String get upgrade => 'ធ្វើឱ្យប្រសើរ';

  @override
  String get clear => 'សម្អាត';

  @override
  String error(String message) {
    return 'កំហុស៖ $message';
  }

  @override
  String errorGeneric(String message) {
    return 'កំហុស៖ $message';
  }

  @override
  String get purchaseError => 'កំហុសក្នុងការទិញ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get restoreError => 'កំហុសក្នុងការស្តារឡើងវិញ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get loading => 'កំពុងផ្ទុក...';

  @override
  String get fieldRequired => 'វាលដែលត្រូវការ';

  @override
  String get addedFeedback => 'បានបន្ថែម!';

  @override
  String selectedItems(int count) {
    return 'បានជ្រើស $count';
  }

  @override
  String get estimated => 'ប៉ាន់ស្មាន';

  @override
  String get alreadyPurchased => 'បានទិញរួច';

  @override
  String get clearList => 'សម្អាតបញ្ជី';

  @override
  String get clearPurchased => 'សម្អាតដែលបានទិញ';

  @override
  String get share => 'ចែករំលែក';

  @override
  String get shareViaCode => 'ចែករំលែកតាមលេខកូដ';

  @override
  String get importViaCode => 'នាំចូលតាមលេខកូដ';

  @override
  String get listAssistant => 'ជំនួយការបញ្ជី';

  @override
  String get globalAssistant => 'ជំនួយការទូទៅ';

  @override
  String get becomePremium => 'ក្លាយជា Premium';

  @override
  String get manageSubscription => 'គ្រប់គ្រងការជាវ';

  @override
  String get completePurchase => 'បញ្ចប់ការទិញ';

  @override
  String get confirmClearList => 'លុបធាតុទាំងអស់?';

  @override
  String get shareListTitle => 'ចែករំលែកបញ្ជី';

  @override
  String get shareThisCode => 'ចែករំលែកលេខកូដនេះ៖';

  @override
  String get validForLimitedTime => 'មានសុពលភាពកំណត់';

  @override
  String get importListTitle => 'នាំចូលបញ្ជី';

  @override
  String get enterCodeHint => 'បញ្ចូលលេខកូដ';

  @override
  String get confirmArchiveTitle => 'បញ្ចប់ការទិញ';

  @override
  String get confirmArchiveContent => 'បញ្ចប់ការទិញនេះ ហើយទុកក្នុងប័ណ្ណសារ?';

  @override
  String get complete => 'បញ្ចប់';

  @override
  String get listArchived => 'បញ្ជីបានទុកក្នុងប័ណ្ណសារដោយជោគជ័យ!';

  @override
  String listAdded(String listName) {
    return 'បានបន្ថែម $listName!';
  }

  @override
  String get buy => 'ទិញ';

  @override
  String get unmark => 'ដកសញ្ញា';

  @override
  String confirmDeleteItems(int count) {
    return 'លុប $count ធាតុ?';
  }

  @override
  String get confirmDeleteTitle => 'បញ្ជាក់';

  @override
  String confirmContent(int count) {
    return 'លុប $count ធាតុ?';
  }

  @override
  String get archiveList => 'ទុកបញ្ជីក្នុងប័ណ្ណសារ';

  @override
  String get pantryAppBar => 'អាហារដ្ឋាន';

  @override
  String get generateShoppingList => 'បង្កើតបញ្ជីទិញទំនិញ';

  @override
  String get pantryEmpty => 'អាហារដ្ឋានទទេ';

  @override
  String get pantryEmptySubtitle => 'បន្ថែមផលិតផលដែលអ្នកចង់ទុកនៅផ្ទះ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ធាតុត្រូវការទិញ';
  }

  @override
  String get noItemsToBuy => 'គ្មានធាតុដែលត្រូវការទិញទេ';

  @override
  String get newPantryList => 'ទិញពីអាហារដ្ឋាន';

  @override
  String get newListTitle => 'បញ្ជីទិញទំនិញថ្មី';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ធាតុនឹងត្រូវបានបន្ថែម';
  }

  @override
  String get listNameLabel => 'ឈ្មោះបញ្ជី';

  @override
  String listCreated(String name, int count) {
    return 'បញ្ជី \"$name\" ត្រូវបានបង្កើតដោយមាន $count ធាតុ';
  }

  @override
  String get noTracking => 'គ្មានការតាមដាន';

  @override
  String get markAsPurchased => 'សម្គាល់ថាបានទិញ';

  @override
  String editPantryItem(String name) {
    return 'កែ $name';
  }

  @override
  String get idealQuantity => 'បរិមាណដែលចង់បាន';

  @override
  String get currentQuantity => 'បរិមាណបច្ចុប្បន្ន';

  @override
  String get consumed => 'បានប្រើប្រាស់';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ត្រូវបានស្តុកឡើងវិញ $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'លុប \"$name\" ចេញពីអាហារដ្ឋាន?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'កែ $name';
  }

  @override
  String get settingsAppBar => 'ការកំណត់';

  @override
  String get language => 'ភាសា';

  @override
  String get languagePortuguese => 'ព័រទុយហ្គាល់ (ប្រេស៊ីល)';

  @override
  String get languageEnglish => 'អង់គ្លេស';

  @override
  String get languageSystem => 'លំនាំដើមប្រព័ន្ធ';

  @override
  String get chooseLanguage => 'ជ្រើសរើសភាសា';

  @override
  String get searchLanguage => 'ស្វែងរកភាសា...';

  @override
  String get currency => 'រូបិយប័ណ្ណ';

  @override
  String get chooseCurrency => 'ជ្រើសរើសរូបិយប័ណ្ណ';

  @override
  String get searchCurrency => 'ស្វែងរករូបិយប័ណ្ណ...';

  @override
  String get appearance => 'រូបរាង';

  @override
  String get light => 'ភ្លឺ';

  @override
  String get system => 'ប្រព័ន្ធ';

  @override
  String get dark => 'ងងឹត';

  @override
  String get themeColor => 'ពណ៌ប្រធានបទ';

  @override
  String get dynamicColors => 'ពណ៌ថាមវន្ត';

  @override
  String get dynamicColorsSubtitle => 'ប្រើពណ៌តាមផ្ទាំងរូបភាពរបស់អ្នក';

  @override
  String get dynamicColorsEnabledWarning =>
      'បិទពណ៌ថាមវន្តសម្រាប់ពណ៌ស្បែកដើម្បីឱ្យមានប្រសិទ្ធិភាព';

  @override
  String get finance => 'ហិរញ្ញវត្ថុ';

  @override
  String get monthlyBudgetNav => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetSubtitle => 'តាមដានការចំណាយប្រចាំខែរបស់អ្នក';

  @override
  String get data => 'ទិន្នន័យ';

  @override
  String get backupNav => 'បម្រុងទុក';

  @override
  String get backupSubtitle => 'នាំចេញ ឬនាំចូលទិន្នន័យរបស់អ្នក';

  @override
  String get about => 'អំពី';

  @override
  String get version => 'កំណែ';

  @override
  String get privacy => 'ឯកជនភាព';

  @override
  String get termsOfUse => 'លក្ខខណ្ឌនៃការប្រើប្រាស់';

  @override
  String get backupTitle => 'បម្រុងទុក';

  @override
  String get backupPremiumDescription =>
      'ការបម្រុងទុក និងនាំចេញគឺជាមុខងារ Premium';

  @override
  String get exportData => 'នាំចេញទិន្នន័យ';

  @override
  String get exportDataSubtitle => 'រក្សាទុកបញ្ជីទាំងអស់ជា JSON';

  @override
  String get importData => 'នាំចូលទិន្នន័យ';

  @override
  String get importDataSubtitle => 'ស្តារបញ្ជីពី JSON';

  @override
  String get importJsonTitle => 'នាំចូល JSON';

  @override
  String get importJsonHint => 'បិទភ្ជាប់ JSON បម្រុងទុកនៅទីនេះ...';

  @override
  String get backupExported => 'បាននាំចេញបម្រុងទុក!';

  @override
  String get budgetAppBar => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetPremiumLocked => 'ថវិកាប្រចាំខែសកលគឺ Premium';

  @override
  String get budgetUpgradePrompt => 'ធ្វើឱ្យប្រសើរដើម្បីដោះសោ';

  @override
  String get noBudgetDefined => 'គ្មានថវិកាកំណត់ទេ';

  @override
  String totalEstimated(String amount) {
    return 'ប៉ាន់ស្មានសរុប៖ $amount';
  }

  @override
  String get setBudgetButton => 'កំណត់ថវិកា';

  @override
  String get budgetLists => 'បញ្ជី';

  @override
  String get budgetValueLabel => 'ចំនួនទឹកប្រាក់';

  @override
  String get setBudgetTitle => 'ថវិកាប្រចាំខែ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ទាំងអស់';

  @override
  String get filterPending => 'កំពុងរង់ចាំ';

  @override
  String get filterPurchased => 'បានទិញ';

  @override
  String get sortName => 'ឈ្មោះ';

  @override
  String get sortCategory => 'ប្រភេទ';

  @override
  String get sortDate => 'កាលបរិច្ឆេទ';

  @override
  String get sortManual => 'ដោយដៃ';

  @override
  String get addItem => 'បន្ថែមធាតុ';

  @override
  String get itemName => 'ឈ្មោះធាតុ';

  @override
  String get quantityShort => 'បរិមាណ';

  @override
  String get unit => 'ឯកតា';

  @override
  String get category => 'ប្រភេទ';

  @override
  String get estimatedPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get addItemPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get editItem => 'កែធាតុ';

  @override
  String get quantityFull => 'បរិមាណ';

  @override
  String get editItemPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get addToPantry => 'បន្ថែមទៅអាហារដ្ឋាន';

  @override
  String addToPantryPrompt(String name) {
    return 'បន្ថែម \"$name\" ទៅអាហារដ្ឋាន?';
  }

  @override
  String get yes => 'បាទ';

  @override
  String get productName => 'ឈ្មោះផលិតផល';

  @override
  String get idealQty => 'បរិមាណដែលចង់បាន';

  @override
  String get currentQty => 'បរិមាណបច្ចុប្បន្ន';

  @override
  String get trackStock => 'តាមដានស្តុក';

  @override
  String get trackStockActive => 'បង្ហាញក្នុងការណែនាំទិញទំនិញ';

  @override
  String get trackStockInactive => 'មិនបង្កើតការណែនាំទិញទំនិញទេ';

  @override
  String get createListDialog => 'បង្កើតបញ្ជី';

  @override
  String get renameListDialog => 'ប្តូរឈ្មោះបញ្ជី';

  @override
  String get listHistory => 'ប្រវត្តិបញ្ជី';

  @override
  String get myLists => 'បញ្ជីរបស់ខ្ញុំ';

  @override
  String get viewActive => 'មើលសកម្ម';

  @override
  String get viewHistory => 'មើលប្រវត្តិ';

  @override
  String get noArchivedLists => 'គ្មានបញ្ជីក្នុងប័ណ្ណសារ';

  @override
  String get noActiveLists => 'គ្មានបញ្ជីសកម្ម';

  @override
  String completedOn(String date) {
    return 'បានបញ្ចប់នៅ $date';
  }

  @override
  String get sharedLabel => 'បានចែករំលែក';

  @override
  String get restore => 'ស្តារ';

  @override
  String get removeSharedTooltip => 'ដកចេញ';

  @override
  String get deleteListTitle => 'លុបបញ្ជី';

  @override
  String deleteListContent(String name) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$name\" ទេ? ធាតុទាំងអស់នឹងត្រូវដកចេញ។';
  }

  @override
  String get removeSharedListTitle => 'ដកបញ្ជីដែលបានចែករំលែក';

  @override
  String removeSharedListContent(String name) {
    return 'ដក \"$name\" ចេញពីបញ្ជីរបស់អ្នក? បញ្ជីដើមនឹងមិនប៉ះពាល់ទេ។';
  }

  @override
  String get createNewList => 'បង្កើតបញ្ជីថ្មី';

  @override
  String get aiAssistant => 'ជំនួយការ AI';

  @override
  String get aiAssistantDescription =>
      'ទទួលបានការណែនាំឆ្លាតវៃ រូបមន្ត និងគន្លឹះផ្ទាល់ខ្លួនជាមួយជំនួយការ AI របស់យើង។';

  @override
  String get generalAssistant => 'ជំនួយការទូទៅ';

  @override
  String get newChat => 'ការជជែកថ្មី។';

  @override
  String get noHistory => 'មិនមានប្រវត្តិជជែក';

  @override
  String get deleteSession => 'លុបការជជែក';

  @override
  String get deleteSessionConfirm =>
      'តើអ្នកប្រាកដថាចង់លុបការជជែកនេះទេ? សារនឹងបាត់បង់ជាអចិន្ត្រៃយ៍។';

  @override
  String get clearHistory => 'សម្អាតប្រវត្តិ';

  @override
  String get clearHistoryConfirm => 'សម្អាតសារទាំងអស់ក្នុងវគ្គនេះ?';

  @override
  String get chatHint => 'វាយសាររបស់អ្នក...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'កំហុសក្នុងការផ្ទុកការសន្ទនា៖ $error';
  }

  @override
  String get listHelp => 'តើខ្ញុំអាចជួយអ្នកជាមួយបញ្ជីរបស់អ្នកដោយរបៀបណា?';

  @override
  String get generalHelp => 'តើខ្ញុំអាចជួយអ្នកជាមួយការទិញថ្ងៃនេះដោយរបៀបណា?';

  @override
  String get chatSubtitle => 'សួររកការណែនាំធាតុ រូបមន្ត ឬគន្លឹះសន្សំប្រាក់។';

  @override
  String get aiError =>
      'សូមទោស កំហុសបានកើតឡើងក្នុងដំណើរការសំណើរបស់អ្នក។ ពិនិត្យការតភ្ជាប់របស់អ្នក ឬព្យាយាមម្តងទៀតនៅពេលក្រោយ។';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'ចូលដើម្បីដោះសោ\nមុខងារ Premium';

  @override
  String get signInGoogle => 'ចូលជាមួយ Google';

  @override
  String get signInApple => 'ចូលជាមួយ Apple';

  @override
  String get continueAsGuest => 'បន្តជាភ្ញៀវ';

  @override
  String get onboardingWelcomeTitle => 'សូមស្វាគមន៍មកកាន់ KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'វិធីដ៏ឆ្លាតវៃបំផុតក្នុងការរៀបចំការទិញទំនិញរបស់អ្នក និងសន្សំប្រាក់។';

  @override
  String get onboardingSetupTitle => 'កំណត់បទពិសោធន៍របស់អ្នក។';

  @override
  String get onboardingSetupDesc =>
      'ជ្រើសរើសរបៀបដែលអ្នកចង់ឱ្យ KipiList មើលទៅ និងដំណើរការសម្រាប់អ្នក។';

  @override
  String get onboardingLoginTitle => 'រក្សាទុកអ្វីគ្រប់យ៉ាងទៅពពក';

  @override
  String get onboardingLoginDesc =>
      'ទិន្នន័យរបស់អ្នកបានធ្វើសមកាលកម្មនៅលើឧបករណ៍របស់អ្នកទាំងអស់។';

  @override
  String get onboardingShareTitle => 'ចែករំលែកជាមួយអ្នកដែលអ្នកស្រលាញ់';

  @override
  String get onboardingShareDesc =>
      'ធ្វើសមកាលកម្មបញ្ជីជាមួយគ្រួសារ និងមិត្តភក្តិក្នុងពេលវេលាជាក់ស្តែង';

  @override
  String get onboardingPremiumTitle => 'ដោះសោមុខងារទាំងអស់។';

  @override
  String get onboardingPremiumSubtitle =>
      'ទទួលបានអត្ថប្រយោជន៍ច្រើនបំផុតពីបញ្ជីទិញទំនិញរបស់អ្នក។';

  @override
  String get onboardingAnnualBadge => 'តម្លៃល្អបំផុត';

  @override
  String get onboardingMonthlyLabel => 'ប្រចាំខែ';

  @override
  String get onboardingAnnualLabel => 'ប្រចាំឆ្នាំ';

  @override
  String get onboardingViewAllPlans => 'មើលគម្រោងទាំងអស់។';

  @override
  String get onboardingSubscribeCta => 'ជាវ';

  @override
  String get onboardingCancelAnytime =>
      'បោះបង់នៅពេលណាក៏បាន។ គ្មានការប្តេជ្ញាចិត្ត។';

  @override
  String get onboardingContinueAsGuest => 'បន្តក្នុងនាមជាភ្ញៀវ';

  @override
  String get onboardingRestore => 'ស្តារ';

  @override
  String get onboardingRestoreDesc =>
      'មាន​ការ​ជាវ​ហើយ​ឬ​នៅ? ចុចទីនេះដើម្បីស្ដារវាឡើងវិញ។';

  @override
  String get onboardingExit => 'ចេញ';

  @override
  String get onboardingPersonalizationTitle => 'តោះមកស្គាល់អ្នក។';

  @override
  String get onboardingPersonalizationDesc =>
      'យើង​នឹង​ប្រើ​វា​ដើម្បី​កំណត់​ការ​ផ្ដល់​យោបល់​របស់​អ្នក​ឱ្យ​ស្រប​នឹង​អ្នក និង​ធ្វើ​ឱ្យ​ការ​ទិញ​ទំនិញ​កាន់តែ​ឆ្លាតវៃ។';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'តើ​ម្ហូប​អ្វី​ដែល​អ្នក​ចូលចិត្ត?';

  @override
  String get onboardingPersonalizationFoodHint => 'ឧ. ភីហ្សា ស៊ូស៊ី ឡាសាណា...';

  @override
  String get onboardingPersonalizationCta => 'បន្ត';

  @override
  String get onboardingPersonalizationSkip => 'រំលងឥឡូវនេះ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ប្រាប់យើងអំពីអាហារដែលអ្នកចូលចិត្តដើម្បីបន្ត';

  @override
  String get settingsDefaultScreen => 'អេក្រង់ដើមលំនាំដើម';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ជ្រើសរើសរវាងបញ្ជីទិញទំនិញ ឬការជជែក AI';

  @override
  String get settingsScreenList => 'បញ្ជីទិញទំនិញ';

  @override
  String get settingsScreenChat => 'AI ជជែក';

  @override
  String loginError(String error) {
    return 'កំហុសក្នុងការចូល៖ $error';
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
  String get paywallSocialProof =>
      'Join thousands of smart shoppers saving time and money';

  @override
  String get paywallCtaUnlock => 'Unlock KipiList PRO';

  @override
  String get paywallCtaTrial => 'Start My Free Trial';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment via App Store/Play Store';

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
  String get premiumUpgrade => 'ធ្វើឱ្យប្រសើរដើម្បីដោះសោ';

  @override
  String get itemRemoved => 'ធាតុត្រូវបានដកចេញ';

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String get emptyListTitle => 'បញ្ជីរបស់អ្នកទទេ';

  @override
  String get emptyListSubtitle => 'បន្ថែមធាតុដើម្បីចាប់ផ្តើម';

  @override
  String get noListFoundTitle => 'រកមិនឃើញបញ្ជីទេ';

  @override
  String get noListFoundSubtitle => 'បង្កើតបញ្ជីដំបូងរបស់អ្នកដើម្បីចាប់ផ្តើម';

  @override
  String get createFirstList => 'បង្កើតបញ្ជីដំបូង';

  @override
  String get listBudgetTitle => 'ថវិកាបញ្ជី';

  @override
  String get budgetAmountLabel => 'ចំនួនថវិកា';

  @override
  String get removeBudget => 'ដកចេញ';

  @override
  String get prefUnlimitedLists => 'បញ្ជីគ្មានដែនកំណត់';

  @override
  String get prefSharing => 'ចែករំលែកបញ្ជី';

  @override
  String get prefFullHistory => 'ប្រវត្តិពេញលេញ';

  @override
  String get prefExportData => 'នាំចេញទិន្នន័យ';

  @override
  String get prefCustomThemes => 'ប្រធានបទផ្ទាល់ខ្លួន';

  @override
  String get prefMonthlyBudget => 'ថវិកាប្រចាំខែសកល';

  @override
  String get prefAIAssistant => 'ជំនួយការ AI ផ្ទាល់ខ្លួន';

  @override
  String get prefUnlimitedPantry => 'អាហារដ្ឋានគ្មានដែនកំណត់';

  @override
  String get prefInteractiveArtifacts => 'AI Artifacts អន្តរកម្ម';

  @override
  String get themeGreen => 'បៃតង';

  @override
  String get themeBlue => 'ខៀវ';

  @override
  String get themePurple => 'ស្វាយ';

  @override
  String get themeRed => 'ក្រហម';

  @override
  String get themeOrange => 'ទឹកក្រូច';

  @override
  String get themePink => 'ផ្កាឈូក';

  @override
  String get themeIndigo => 'ឥន្ទ្រនីល';

  @override
  String get themeAmber => 'ពណ៌លឿងខ្ចី';

  @override
  String get themeTeal => 'បៃតងខៀវ';

  @override
  String get themeBrown => 'ត្នោត';

  @override
  String get catFruits => 'ផ្លែឈើ';

  @override
  String get catCleaning => 'សម្អាត';

  @override
  String get catBeverages => 'ភេសជ្ជៈ';

  @override
  String get catBakery => 'នំប៉័ង';

  @override
  String get catOthers => 'ផ្សេងៗ';

  @override
  String get unitPack => 'កញ្ចប់';

  @override
  String get shareSubject => 'បញ្ជីទិញទំនិញ';

  @override
  String get monthlyBudgetTitle => 'ថវិកាប្រចាំខែ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'លុបបញ្ជី';

  @override
  String get pantryItemRemoved => 'ធាតុត្រូវបានដកចេញ';

  @override
  String deficitItems(int deficit) {
    return '$deficit ធាតុត្រូវការទិញ';
  }

  @override
  String get cartTotal => 'សរុបកន្ត្រក';

  @override
  String get restockLabel => 'ស្តុកឡើងវិញ';

  @override
  String get advancedFeatures => 'មុខងារកម្រិតខ្ពស់';

  @override
  String get selectAll => 'ជ្រើសរើសទាំងអស់';

  @override
  String get deselectAll => 'ដកជ្រើសរើសទាំងអស់';

  @override
  String get monthlyBudgetAppBar => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetEditTitle => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetDashboardTitle => 'ផ្ទាំងគ្រប់គ្រង';

  @override
  String get selectListForDashboard =>
      'ជ្រើសរើសបញ្ជីមួយដើម្បីមើលផ្ទាំងគ្រប់គ្រង។';

  @override
  String get spendingAnalysis => 'ការវិភាគការចំណាយ';

  @override
  String get noItemsToAnalyze => 'គ្មានធាតុនៅក្នុងបញ្ជីដើម្បីវិភាគទេ។';

  @override
  String get markItemsToSeeAnalysis => 'សម្គាល់ធាតុថាបានទិញដើម្បីមើលការវិភាគ។';

  @override
  String get totalSpending => 'ការចំណាយសរុប';

  @override
  String get spendingByCategory => 'ការចំណាយតាមប្រភេទ';

  @override
  String get achievements => 'សមិទ្ធផល';

  @override
  String get exportPdfExcel => 'នាំចេញ PDF/Excel';

  @override
  String get exportPdf => 'នាំចេញជា PDF';

  @override
  String get exportExcel => 'នាំចេញជា Excel';

  @override
  String get organizingAi => 'កំពុងរៀបចំជាមួយ AI...';

  @override
  String get yesLabel => 'បាទ';

  @override
  String get noLabel => 'ទេ';

  @override
  String get shareListText => 'បញ្ជីទិញទំនិញរបស់ខ្ញុំ';

  @override
  String get emptyListAddItems => 'បញ្ជីរបស់អ្នកទទេ! បន្ថែមធាតុជាមុនសិន។';

  @override
  String get listOrganizedMagic => 'បញ្ជីត្រូវបានរៀបចំដោយប្រភេទដោយវេទមន្ត!';

  @override
  String get shoppingMode => 'របៀបទិញទំនិញ';

  @override
  String get smartOrganization => 'ការរៀបចំឆ្លាតវៃ';

  @override
  String get savings => 'ការសន្សំ';

  @override
  String get shoppingModeHeader => 'របៀបទិញទំនិញ';

  @override
  String get shareAsText => 'ផ្ញើធាតុជាអត្ថបទដែលបានធ្វើទ្រង់ទ្រាយ';

  @override
  String get shareRealtime => 'សមកាលកម្មក្នុងពេលជាក់ស្តែងជាមួយអ្នកដទៃ';

  @override
  String get quickRecipe => 'រូបមន្តរហ័ស';

  @override
  String get quickRecipePrompt => 'ណែនាំរូបមន្តជាមួយធាតុពីបញ្ជីរបស់ខ្ញុំ។';

  @override
  String get economyTips => 'គន្លឹះសន្សំប្រាក់';

  @override
  String get economyTipsPrompt => 'តើខ្ញុំអាចសន្សំប្រាក់លើការទិញនេះដោយរបៀបណា?';

  @override
  String get organizeAisles => 'រៀបចំតាមផ្លូវដើរ';

  @override
  String get organizeAislesPrompt => 'រៀបចំតាមផ្លូវដើរផ្សារ។';

  @override
  String get recipeSuggestion => 'ការណែនាំរូបមន្ត';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'នៅសល់ $remaining ឥណទាន';
  }

  @override
  String get addAllToList => 'បន្ថែមទាំងអស់ទៅបញ្ជី';

  @override
  String get organizeByAisles => 'រៀបចំតាមផ្លូវដើរ';

  @override
  String get voiceTranscriptionTooltip => 'វាយដោយសំឡេង (ឥតគិតថ្លៃ)';

  @override
  String get aiVoiceCommandTooltip => 'ពាក្យបញ្ជាសំឡេង AI (Premium)';

  @override
  String get voiceCommandTitle => 'ពាក្យបញ្ជាសំឡេង AI';

  @override
  String get voiceCommandContent =>
      'និយាយដោយធម្មជាតិដើម្បីគ្រប់គ្រងបញ្ជីរបស់អ្នក!\n\nឧទាហរណ៍៖\n• \'បន្ថែមនំប៉័ង ឈីស និងសាច់ក្រក\'\n• \'ដកសាប៊ូបោកខោអាវ\'\n• \'ប្តូរប្រធានបទទៅជាពណ៌ខៀវ\'\n\nនេះគឺជាមុខងារផ្តាច់មុខរបស់ KipiList Premium។';

  @override
  String get voiceCommandPlanBtn => 'មើលគម្រោង';

  @override
  String get itemsAddedSuccess => 'ធាតុត្រូវបានបន្ថែមទៅបញ្ជីដោយជោគជ័យ!';

  @override
  String get viewList => 'មើលបញ្ជី';

  @override
  String get feedbackTitle => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackPrompt => 'តើអ្នកចង់ចែករំលែកអ្វី?';

  @override
  String get feedbackTypeBug => 'រាយការណ៍កំហុស';

  @override
  String get feedbackTypeBugHint => 'មានអ្វីមួយមិនដំណើរការ';

  @override
  String get feedbackTypeSuggestion => 'សំណូមពរ';

  @override
  String get feedbackTypeSuggestionHint => 'គំនិតកែលម្អកម្មវិធី';

  @override
  String get feedbackTypeTranslation => 'បញ្ហាការបកប្រែ';

  @override
  String get feedbackTypeTranslationHint =>
      'ការបកប្រែមិនត្រឹមត្រូវ ឬមិនធម្មជាតិ';

  @override
  String get feedbackTypeFeature => 'ស្នើសុំមុខងារ';

  @override
  String get feedbackTypeFeatureHint => 'មុខងារដែលអ្នកចង់ឃើញ';

  @override
  String get feedbackTypeOther => 'ផ្សេងៗ';

  @override
  String get feedbackTypeOtherHint => 'ប្រភេទមតិកែលម្អផ្សេងទៀត';

  @override
  String get feedbackHint => 'ពិពណ៌នាលម្អិតអំពីមតិកែលម្អរបស់អ្នក...';

  @override
  String get feedbackSend => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackSending => 'កំពុងផ្ញើ...';

  @override
  String get feedbackThankYou => 'សូមអរគុណ!';

  @override
  String get feedbackThankYouMessage =>
      'មតិកែលម្អរបស់អ្នកត្រូវបានទទួល និងជួយយើងកែលម្អ KipiList សម្រាប់អ្នករាល់គ្នា។';

  @override
  String get feedbackBack => 'ត្រឡប់';

  @override
  String feedbackError(String error) {
    return 'កំហុសក្នុងការផ្ញើ៖ $error';
  }

  @override
  String get feedbackRetry => 'ព្យាយាមម្តងទៀត';

  @override
  String get feedbackSettingsTitle => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackSettingsSubtitle =>
      'រាយការណ៍កំហុស ស្នើសុំការកែលម្អ ឬកែការបកប្រែ';

  @override
  String get aiEnergy => 'ថាមពល AI';

  @override
  String get searchInConversation => 'ស្វែងរកនៅក្នុងការសន្ទនា...';

  @override
  String get noMessagesFound => 'រកមិនឃើញសារទេ។';

  @override
  String get suggestedQuestions => 'សំណួរដែលបានណែនាំ៖';

  @override
  String get shoppingAssistant => 'ជំនួយការការដើរទិញឥវ៉ាន់';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased នៃ $total បានទិញ';
  }

  @override
  String get estimatedCost => 'ប៉ាន់ស្មាន';

  @override
  String get viewItems => 'មើលធាតុ';

  @override
  String get noItemsInList => 'មិនមានធាតុនៅក្នុងបញ្ជីទេ។';

  @override
  String get longHistoryWarning =>
      'ប្រវត្តិយូរអង្វែង៖ ជំនួយការផ្តោតលើសារចុងក្រោយបំផុតសម្រាប់ដំណើរការកាន់តែប្រសើរ។';

  @override
  String get listening => 'កំពុងស្តាប់...';

  @override
  String get addDirectToList => 'បន្ថែមដោយផ្ទាល់ទៅក្នុងបញ្ជី';

  @override
  String get unlockFullResponse => 'ដោះសោការឆ្លើយតបពេញលេញ';

  @override
  String get switchList => 'ប្តូរបញ្ជី';

  @override
  String get marketMode => 'របៀបទីផ្សារ';

  @override
  String get backToChat => 'ត្រឡប់ទៅ Chat វិញ';

  @override
  String get finishShopping => 'បញ្ចប់ការទិញទំនិញ';

  @override
  String get welcomeAiAssistant => 'សូមស្វាគមន៍មកកាន់ AI Assistant';

  @override
  String get createListToStartAi =>
      'បង្កើតបញ្ជីទិញទំនិញ ដើម្បីចាប់ផ្តើមប្រើការជជែកឆ្លាតវៃ។';

  @override
  String get howCanIHelp => 'តើខ្ញុំអាចជួយបានដោយរបៀបណា?';

  @override
  String get chatSubtitleShort => 'សួរអំពីតម្លៃ រូបមន្ត អង្គការ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total បានទិញ';
  }

  @override
  String get quickReplies => 'ការឆ្លើយតបរហ័ស៖';

  @override
  String get voiceProFeature =>
      'ការបញ្ជាដោយសំឡេងកម្រិតខ្ពស់គឺ Pro ។ បើក​ការ​សរសេរ​តាម​តាម​មូលដ្ឋាន...';

  @override
  String get viewPro => 'មើល Pro';

  @override
  String get errorLoadingChat =>
      'ឱ! មាន​អ្វី​មួយ​ខុស​ប្រក្រតី​ក្នុង​ការ​ផ្ទុក​ការ​ជជែក។';

  @override
  String get errorLoadingChatSubtitle =>
      'ពិនិត្យការតភ្ជាប់របស់អ្នក ឬព្យាយាមម្តងទៀតនៅពេលក្រោយ។';

  @override
  String get errorOscillation =>
      'វា​អាច​កើត​ឡើង​ដោយ​សារ​ការ​យោល​បណ្តាញ ឬ​មិន​អាច​ប្រើ​បាន​បណ្ដោះ​អាសន្ន។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get activeListening => 'ការស្តាប់សកម្ម';

  @override
  String get whatToDoWithItem => 'តើអ្នកចង់ធ្វើអ្វីជាមួយធាតុនេះ?';

  @override
  String get viewDetails => 'មើលព័ត៌មានលម្អិត';

  @override
  String get openMenu => 'បើកម៉ឺនុយ';

  @override
  String get viewRecipe => 'មើលរូបមន្ត';

  @override
  String get recipeCreated => 'បានបង្កើតរូបមន្ត!';

  @override
  String get editRecipe => 'កែសម្រួល';

  @override
  String get deleteRecipe => 'លុប';

  @override
  String get deleteRecipeConfirm => 'លុបរូបមន្តនេះ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$recipeName\" ឬ? សកម្មភាពនេះមិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get ingredients => 'គ្រឿងផ្សំ';

  @override
  String get instructions => 'ការណែនាំ';

  @override
  String get prepTime => 'រយៈពេលរៀបចំ';

  @override
  String get recipeSaved => 'បានរក្សាទុករូបមន្ត!';

  @override
  String get noRecipesSaved => 'គ្មានរូបមន្តដែលបានរក្សាទុក';

  @override
  String get noRecipesSavedHint =>
      'បង្កើតរូបមន្តផ្ទាល់ខ្លួនដំបូងរបស់អ្នកដោយប៉ះប៊ូតុងខាងក្រោម。';

  @override
  String get myRecipes => 'រូបមន្តរបស់ខ្ញុំ';

  @override
  String get newRecipe => 'រូបមន្តថ្មី';

  @override
  String get loadingRecipes => 'កំពុងទាញយករូបមន្តរបស់អ្នក...';

  @override
  String get errorLoadingRecipes => 'កំហុសក្នុងការទាញយករូបមន្ត';

  @override
  String get addIngredient => 'បន្ថែមគ្រឿងផ្សំ';

  @override
  String get saveRecipe => 'រក្សាទុក';

  @override
  String get recipeName => 'ឈ្មោះរូបមន្ត';

  @override
  String get shortDescription => 'ការពិពណ៌នាខ្លី';

  @override
  String get prepTimeMinutes => 'រយៈពេលរៀបចំ (នាទី)';

  @override
  String get instructionsHint => 'វាយបញ្ចូលមួយជំហានក្នុងមួយជួរ...';

  @override
  String get addPhoto => 'បន្ថែមរូបថត';

  @override
  String get imageUrlPlaceholder => 'ឬបិទភ្ជាប់ URL រូបភាព';

  @override
  String get tags => 'ស្លាក';

  @override
  String get recipeTags => 'ស្លាករូបមន្ត';

  @override
  String get suggestedTags => 'ត្រូវបានណែនាំ';

  @override
  String get searchRecipes => 'ស្វែងរករូបមន្ត...';

  @override
  String get filterByTag => 'ត្រងតាមស្លាក';

  @override
  String get allTags => 'ទាំងអស់';

  @override
  String get recipeDeleted => 'បានលុបរូបមន្ត';

  @override
  String get saveChanges => 'រក្សាទុកការផ្លាស់ប្តូរ';

  @override
  String get editRecipeTitle => 'កែសម្រួលរូបមន្ត';

  @override
  String get newRecipeTitle => 'រូបមន្តថ្មី';

  @override
  String get requiredField => 'ចាំបាច់';

  @override
  String get chooseImageSource => 'ជ្រើសរើសប្រភពរូបភាព';

  @override
  String get gallery => 'វិចិត្រសាល';

  @override
  String get enterUrl => 'បញ្ចូល URL';

  @override
  String get recipeImage => 'រូបភាពរូបមន្ត';

  @override
  String get removeImage => 'លុបរូបភាព';

  @override
  String get mealPlannerTitle => 'អ្នករៀបចំអាហារ';

  @override
  String get mealPlannerViewMonthly => 'ទិដ្ឋភាពប្រចាំខែ';

  @override
  String get mealPlannerViewWeekly => 'ទិដ្ឋភាពប្រចាំសប្តាហ៍';

  @override
  String get mealPlannerNoMeals => 'គ្មានអាហារដែលបានគ្រោងទុក';

  @override
  String get mealPlannerNoMealsHint => 'ប៉ះថ្ងៃណាមួយដើម្បីបន្ថែមអាហារ';

  @override
  String get mealPlannerLoading => 'កំពុងទាញយកគម្រោងអាហារ...';

  @override
  String get mealPlannerError => 'កំហុសក្នុងការទាញយកគម្រោងអាហារ';

  @override
  String get mealPlannerAddMeal => 'បន្ថែមអាហារ';

  @override
  String get mealPlannerEditMeal => 'កែសម្រួលអាហារ';

  @override
  String get mealPlannerDeleteMeal => 'លុបអាហារ';

  @override
  String get mealPlannerMealDeleted => 'បានលុបអាហារ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ចំណែក',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ចំនួនចំណែក';

  @override
  String get mealPlannerNoteLabel => 'កំណត់សម្គាល់ (ជាជម្រើស)';

  @override
  String get mealPlannerSelectRecipe => 'ជ្រើសរើសរូបមន្ត';

  @override
  String get mealPlannerSearchRecipes => 'ស្វែងរករូបមន្ត...';

  @override
  String get mealPlannerNoRecipesFound => 'រកមិនឃើញរូបមន្ត';

  @override
  String get mealPlannerNoRecipesHint =>
      'បង្កើតរូបមន្តក្នុងផ្ទាំងរូបមន្តជាមុនសិន';

  @override
  String get mealPlannerSave => 'បន្ថែមទៅក្នុងគម្រោង';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'អាហារចំនួន $count ក្នុងចំណោម $total ត្រូវបានគ្រោងទុក';
  }

  @override
  String get mealPlannerGenerateList => 'បង្កើតបញ្ជីទិញទំនិញ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'បន្ថែមគ្រឿងផ្សំទាំងអស់ពីអាហារដែលបានគ្រោងទុកក្នុងសប្តាហ៍នេះទៅក្នុងបញ្ជីទិញទំនិញរបស់អ្នក?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'បានបន្ថែមគ្រឿងផ្សំ $count ទៅក្នុងបញ្ជីរបស់អ្នក!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'គ្មានគ្រឿងផ្សំដែលត្រូវបន្ថែមទេ។ រៀបចំគម្រោងអាហារជាមួយរូបមន្តជាមុនសិន。';

  @override
  String get mealPlannerGenerateListNoList => 'បង្កើតបញ្ជីទិញទំនិញជាមុនសិន。';

  @override
  String get mealPlannerMealTypeBreakfast => 'អាហារពេលព្រឹក';

  @override
  String get mealPlannerMealTypeLunch => 'អាហារពេលថ្ងៃត្រង់';

  @override
  String get mealPlannerMealTypeDinner => 'អាហារពេលល្ងាច';

  @override
  String get mealPlannerMealTypeSnack => 'អាហារសម្រន់';

  @override
  String get mealPlannerDateLabel => 'កាលបរិច្ឆេទ';

  @override
  String get mealPlannerWeekEmpty =>
      'គ្មានអ្វីត្រូវបានគ្រោងទុកសម្រាប់សប្តាហ៍នេះទេ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ប៉ះថ្ងៃណាមួយដើម្បីចាប់ផ្តើមរៀបចំគម្រោងអាហាររបស់អ្នក!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes នាទី';
  }

  @override
  String get inviteToList => 'អញ្ជើញទៅបញ្ជី';

  @override
  String get shareApp => 'ចែករំលែកកម្មវិធី';

  @override
  String get shareAppDescription => 'អញ្ជើញមិត្តភក្តិឱ្យប្រើ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'ខ្ញុំកំពុងប្រើ KipiList ដើម្បីរៀបចំការទិញទំនិញរបស់ខ្ញុំ! ទាញយកតាមរយៈតំណរបស់ខ្ញុំ ហើយយើងទាំងពីរទទួលបាន Premium ឥតគិតថ្លៃ 7 ថ្ងៃ៖ $url';
  }

  @override
  String get shareReferralSubject => 'ទទួលបាន 7 ថ្ងៃនៃ KipiList Premium!';
}

/// The translations for Khmer Central Khmer, as used in Cambodia (`km_KH`).
class AppLocalizationsKmKh extends AppLocalizationsKm {
  AppLocalizationsKmKh() : super('km_KH');

  @override
  String get appTitle => 'បញ្ជីដើរទិញឥវ៉ាន់';

  @override
  String get lists => 'បញ្ជី';

  @override
  String get pantry => 'ទូដាក់អាហារ';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get create => 'បង្កើត';

  @override
  String get add => 'បន្ថែម';

  @override
  String get remove => 'ដកចេញ';

  @override
  String get delete => 'លុប';

  @override
  String get edit => 'កែសម្រួល';

  @override
  String get copy => 'ចម្លង';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get retry => 'ព្យាយាមម្តងទៀត';

  @override
  String get regenerate => 'បង្កើតឡើងវិញ';

  @override
  String get copiedToClipboard => 'បានចម្លងទៅក្តារតម្បៀតខ្ទាស់';

  @override
  String get confirm => 'បញ្ជាក់';

  @override
  String get close => 'បិទ';

  @override
  String get import => 'នាំចូល';

  @override
  String get rename => 'ប្តូរឈ្មោះ';

  @override
  String get upgrade => 'ធ្វើឱ្យប្រសើរ';

  @override
  String get clear => 'សម្អាត';

  @override
  String error(String message) {
    return 'កំហុស: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'កំហុស: $message';
  }

  @override
  String get purchaseError =>
      'មានកំហុសក្នុងការដំណើរការការទិញ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get restoreError => 'មានកំហុសក្នុងការស្ដារការទិញ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get loading => 'កំពុងផ្ទុក...';

  @override
  String get fieldRequired => 'វាលចាំបាច់';

  @override
  String get addedFeedback => 'បានបន្ថែម!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count បានជ្រើស',
      one: '$count បានជ្រើស',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ប៉ាន់ស្មាន';

  @override
  String get alreadyPurchased => 'បានទិញរួច';

  @override
  String get clearList => 'សម្អាតបញ្ជី';

  @override
  String get clearPurchased => 'សម្អាតអ្វីដែលបានទិញ';

  @override
  String get share => 'ចែករំលែក';

  @override
  String get shareViaCode => 'ចែករំលែកតាមរយៈកូដ';

  @override
  String get importViaCode => 'នាំចូលតាមរយៈកូដ';

  @override
  String get listAssistant => 'ជំនួយការបញ្ជី';

  @override
  String get globalAssistant => 'ជំនួយការសកល';

  @override
  String get becomePremium => 'ក្លាយជា Premium';

  @override
  String get manageSubscription => 'គ្រប់គ្រងការជាវ';

  @override
  String get completePurchase => 'បញ្ចប់ការទិញ';

  @override
  String get confirmClearList => 'លុបធាតុទាំងអស់?';

  @override
  String get shareListTitle => 'ចែករំលែកបញ្ជី';

  @override
  String get shareThisCode => 'ចែករំលែកកូដនេះ:';

  @override
  String get validForLimitedTime => 'មានសុពលភាពក្នុងរយៈពេលកំណត់';

  @override
  String get importListTitle => 'នាំចូលបញ្ជី';

  @override
  String get enterCodeHint => 'បញ្ចូលកូដ';

  @override
  String get confirmArchiveTitle => 'បញ្ចប់ការទិញ';

  @override
  String get confirmArchiveContent => 'បញ្ចប់ការទិញនេះ និងទុកក្នុងប័ណ្ណសារ?';

  @override
  String get complete => 'បញ្ចប់';

  @override
  String get listArchived => 'បញ្ជីបានទុកក្នុងប័ណ្ណសារដោយជោគជ័យ!';

  @override
  String listAdded(String listName) {
    return '$listName បានបន្ថែម!';
  }

  @override
  String get buy => 'ទិញ';

  @override
  String get unmark => 'ដកសញ្ញាសម្គាល់';

  @override
  String confirmDeleteItems(int count) {
    return 'លុប $count ធាតុ?';
  }

  @override
  String get confirmDeleteTitle => 'បញ្ជាក់';

  @override
  String confirmContent(int count) {
    return 'លុប $count ធាតុ?';
  }

  @override
  String get archiveList => 'ទុកបញ្ជីក្នុងប័ណ្ណសារ';

  @override
  String get pantryAppBar => 'ទូដាក់អាហារ';

  @override
  String get generateShoppingList => 'បង្កើតបញ្ជីដើរទិញឥវ៉ាន់';

  @override
  String get pantryEmpty => 'ទូដាក់អាហារទទេ';

  @override
  String get pantryEmptySubtitle => 'បន្ថែមផលិតផលដែលអ្នកចង់ទុកនៅផ្ទះ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ធាតុចាំបាច់ត្រូវទិញ';
  }

  @override
  String get noItemsToBuy => 'គ្មានធាតុចាំបាច់ត្រូវទិញទេ';

  @override
  String get newPantryList => 'ការដើរទិញឥវ៉ាន់បន្ថែម';

  @override
  String get newListTitle => 'បញ្ជីដើរទិញឥវ៉ាន់ថ្មី';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ធាតុនឹងត្រូវបានបន្ថែម';
  }

  @override
  String get listNameLabel => 'ឈ្មោះបញ្ជី';

  @override
  String listCreated(String name, int count) {
    return 'បញ្ជី \"$name\" ត្រូវបានបង្កើតដោយមាន $count ធាតុ';
  }

  @override
  String get noTracking => 'គ្មានការតាមដាន';

  @override
  String get markAsPurchased => 'សម្គាល់ថាបានទិញ';

  @override
  String editPantryItem(String name) {
    return 'កែសម្រួល $name';
  }

  @override
  String get idealQuantity => 'បរិមាណដ៏ល្អ';

  @override
  String get currentQuantity => 'បរិមាណបច្ចុប្បន្ន';

  @override
  String get consumed => 'បានប្រើប្រាស់';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ត្រូវបានស្តុកវិញដល់ $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'លុប \"$name\" ពីទូដាក់អាហារ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'កែសម្រួល $name';
  }

  @override
  String get settingsAppBar => 'ការកំណត់';

  @override
  String get language => 'ភាសា';

  @override
  String get languagePortuguese => 'ព័រទុយហ្គាល់ (ប្រេស៊ីល)';

  @override
  String get languageEnglish => 'ភាសាអង់គ្លេស';

  @override
  String get languageSystem => 'លំនាំដើមប្រព័ន្ធ';

  @override
  String get chooseLanguage => 'ជ្រើសរើសភាសា';

  @override
  String get searchLanguage => 'ស្វែងរកភាសា...';

  @override
  String get currency => 'រូបិយប័ណ្ណ';

  @override
  String get chooseCurrency => 'ជ្រើសរើសរូបិយប័ណ្ណ';

  @override
  String get searchCurrency => 'ស្វែងរករូបិយប័ណ្ណ...';

  @override
  String get appearance => 'រូបរាង';

  @override
  String get light => 'ភ្លឺ';

  @override
  String get system => 'ប្រព័ន្ធ';

  @override
  String get dark => 'ងងឹត';

  @override
  String get themeColor => 'ពណ៌ប្រធានបទ';

  @override
  String get dynamicColors => 'ពណ៌ថាមវន្ត';

  @override
  String get dynamicColorsSubtitle => 'ប្រើពណ៌តាមផ្ទាំងរូបភាពរបស់អ្នក';

  @override
  String get dynamicColorsEnabledWarning =>
      'បិទពណ៌ថាមវន្តសម្រាប់ពណ៌ស្បែកដើម្បីឱ្យមានប្រសិទ្ធិភាព';

  @override
  String get finance => 'ហិរញ្ញវត្ថុ';

  @override
  String get monthlyBudgetNav => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetSubtitle => 'តាមដានការចំណាយប្រចាំខែរបស់អ្នក';

  @override
  String get data => 'ទិន្នន័យ';

  @override
  String get backupNav => 'បម្រុងទុក';

  @override
  String get backupSubtitle => 'នាំចេញ ឬនាំចូលទិន្នន័យរបស់អ្នក';

  @override
  String get about => 'អំពី';

  @override
  String get version => 'កំណែ';

  @override
  String get privacy => 'ឯកជនភាព';

  @override
  String get termsOfUse => 'លក្ខខណ្ឌនៃការប្រើប្រាស់';

  @override
  String get backupTitle => 'បម្រុងទុក';

  @override
  String get backupPremiumDescription => 'ការបម្រុងទុក និងនាំចេញជាមុខងារពិសេស';

  @override
  String get exportData => 'នាំចេញទិន្នន័យ';

  @override
  String get exportDataSubtitle => 'រក្សាទុកបញ្ជីទាំងអស់ជា JSON';

  @override
  String get importData => 'នាំចូលទិន្នន័យ';

  @override
  String get importDataSubtitle => 'ស្តារបញ្ជីពី JSON';

  @override
  String get importJsonTitle => 'នាំចូល JSON';

  @override
  String get importJsonHint => 'បិទភ្ជាប់ JSON បម្រុងទុកនៅទីនេះ...';

  @override
  String get backupExported => 'បាននាំចេញបម្រុងទុក!';

  @override
  String get budgetAppBar => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetPremiumLocked => 'ថវិកាប្រចាំខែសកលជាមុខងារពិសេស';

  @override
  String get budgetUpgradePrompt => 'ធ្វើឱ្យប្រសើរដើម្បីដោះសោ';

  @override
  String get noBudgetDefined => 'មិនទាន់កំណត់ថវិកា';

  @override
  String totalEstimated(String amount) {
    return 'សរុបប៉ាន់ស្មាន: $amount';
  }

  @override
  String get setBudgetButton => 'កំណត់ថវិកា';

  @override
  String get budgetLists => 'បញ្ជី';

  @override
  String get budgetValueLabel => 'ចំនួនទឹកប្រាក់';

  @override
  String get setBudgetTitle => 'ថវិកាប្រចាំខែ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ទាំងអស់';

  @override
  String get filterPending => 'កំពុងរង់ចាំ';

  @override
  String get filterPurchased => 'បានទិញ';

  @override
  String get sortName => 'ឈ្មោះ';

  @override
  String get sortCategory => 'ប្រភេទ';

  @override
  String get sortDate => 'កាលបរិច្ឆេទ';

  @override
  String get sortManual => 'ដោយដៃ';

  @override
  String get addItem => 'បន្ថែមធាតុ';

  @override
  String get itemName => 'ឈ្មោះធាតុ';

  @override
  String get quantityShort => 'បរិមាណ';

  @override
  String get unit => 'ឯកតា';

  @override
  String get category => 'ប្រភេទ';

  @override
  String get estimatedPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get addItemPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get editItem => 'កែសម្រួលធាតុ';

  @override
  String get quantityFull => 'បរិមាណ';

  @override
  String get editItemPrice => 'តម្លៃប៉ាន់ស្មាន';

  @override
  String get addToPantry => 'បន្ថែមទៅទូដាក់អាហារ';

  @override
  String addToPantryPrompt(String name) {
    return 'បន្ថែម \"$name\" ទៅទូដាក់អាហាររបស់អ្នក?';
  }

  @override
  String get yes => 'បាទ/ចាស';

  @override
  String get productName => 'ឈ្មោះផលិតផល';

  @override
  String get idealQty => 'បរិមាណដ៏ល្អ';

  @override
  String get currentQty => 'បរិមាណបច្ចុប្បន្ន';

  @override
  String get trackStock => 'តាមដានស្តុក';

  @override
  String get trackStockActive => 'បង្ហាញក្នុងការណែនាំការដើរទិញឥវ៉ាន់';

  @override
  String get trackStockInactive => 'មិនបង្កើតការណែនាំការដើរទិញឥវ៉ាន់';

  @override
  String get createListDialog => 'បង្កើតបញ្ជី';

  @override
  String get renameListDialog => 'ប្តូរឈ្មោះបញ្ជី';

  @override
  String get listHistory => 'ប្រវត្តិបញ្ជី';

  @override
  String get myLists => 'បញ្ជីរបស់ខ្ញុំ';

  @override
  String get viewActive => 'មើលសកម្ម';

  @override
  String get viewHistory => 'មើលប្រវត្តិ';

  @override
  String get noArchivedLists => 'គ្មានបញ្ជីក្នុងប័ណ្ណសារ';

  @override
  String get noActiveLists => 'គ្មានបញ្ជីសកម្ម';

  @override
  String completedOn(String date) {
    return 'បានបញ្ចប់នៅ $date';
  }

  @override
  String get sharedLabel => 'បានចែករំលែក';

  @override
  String get restore => 'ស្តារ';

  @override
  String get removeSharedTooltip => 'ដកចេញ';

  @override
  String get deleteListTitle => 'លុបបញ្ជី';

  @override
  String deleteListContent(String name) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$name\" ទេ? ធាតុទាំងអស់នឹងត្រូវបានលុប។';
  }

  @override
  String get removeSharedListTitle => 'ដកបញ្ជីដែលបានចែករំលែកចេញ';

  @override
  String removeSharedListContent(String name) {
    return 'ដក \"$name\" ពីបញ្ជីរបស់អ្នក? បញ្ជីដើមនឹងមិនប៉ះពាល់ទេ។';
  }

  @override
  String get createNewList => 'បង្កើតបញ្ជីថ្មី';

  @override
  String get aiAssistant => 'ជំនួយការ AI';

  @override
  String get aiAssistantDescription =>
      'ទទួលបានការណែនាំឆ្លាតវៃ រូបមន្ត និងគន្លឹះផ្ទាល់ខ្លួនជាមួយជំនួយការ AI របស់យើង។';

  @override
  String get generalAssistant => 'ជំនួយការទូទៅ';

  @override
  String get newChat => 'ការជជែកថ្មី។';

  @override
  String get noHistory => 'មិនមានប្រវត្តិជជែក';

  @override
  String get deleteSession => 'លុបការជជែក';

  @override
  String get deleteSessionConfirm =>
      'តើអ្នកប្រាកដថាចង់លុបការជជែកនេះទេ? សារនឹងបាត់បង់ជាអចិន្ត្រៃយ៍។';

  @override
  String get clearHistory => 'សម្អាតប្រវត្តិ';

  @override
  String get clearHistoryConfirm => 'សម្អាតសារទាំងអស់ក្នុងវគ្គនេះ?';

  @override
  String get chatHint => 'វាយសាររបស់អ្នក...';

  @override
  String chatError(String error) {
    return 'កំហុសក្នុងការផ្ទុកជជែក: $error';
  }

  @override
  String get listHelp => 'តើខ្ញុំអាចជួយអ្វីជាមួយបញ្ជីរបស់អ្នក?';

  @override
  String get generalHelp =>
      'តើខ្ញុំអាចជួយអ្វីជាមួយការដើរទិញឥវ៉ាន់របស់អ្នកថ្ងៃនេះ?';

  @override
  String get chatSubtitle => 'សួររកការណែនាំធាតុ រូបមន្ត ឬគន្លឹះសន្សំប្រាក់។';

  @override
  String get aiError =>
      'សូមទោស មានកំហុសក្នុងការដំណើរការសំណើរបស់អ្នក។ សូមពិនិត្យការតភ្ជាប់របស់អ្នក ឬព្យាយាមម្តងទៀតពេលក្រោយ។';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'ចូលដើម្បីដោះសោ\nមុខងារពិសេស';

  @override
  String get signInGoogle => 'ចូលជាមួយ Google';

  @override
  String get signInApple => 'ចូលជាមួយ Apple';

  @override
  String get continueAsGuest => 'បន្តជាភ្ញៀវ';

  @override
  String get onboardingWelcomeTitle => 'សូមស្វាគមន៍មកកាន់ KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'វិធីដ៏ឆ្លាតវៃបំផុតក្នុងការរៀបចំការទិញទំនិញរបស់អ្នក និងសន្សំប្រាក់។';

  @override
  String get onboardingSetupTitle => 'កំណត់បទពិសោធន៍របស់អ្នក។';

  @override
  String get onboardingSetupDesc =>
      'ជ្រើសរើសរបៀបដែលអ្នកចង់ឱ្យ KipiList មើលទៅ និងដំណើរការសម្រាប់អ្នក។';

  @override
  String get onboardingLoginTitle => 'រក្សាទុកអ្វីគ្រប់យ៉ាងទៅពពក';

  @override
  String get onboardingLoginDesc =>
      'ទិន្នន័យរបស់អ្នកបានធ្វើសមកាលកម្មនៅលើឧបករណ៍របស់អ្នកទាំងអស់។';

  @override
  String get onboardingShareTitle => 'ចែករំលែកជាមួយអ្នកដែលអ្នកស្រលាញ់';

  @override
  String get onboardingShareDesc =>
      'ធ្វើសមកាលកម្មបញ្ជីជាមួយគ្រួសារ និងមិត្តភក្តិក្នុងពេលវេលាជាក់ស្តែង';

  @override
  String get onboardingPremiumTitle => 'ដោះសោមុខងារទាំងអស់។';

  @override
  String get onboardingPremiumSubtitle =>
      'ទទួលបានអត្ថប្រយោជន៍ច្រើនបំផុតពីបញ្ជីទិញទំនិញរបស់អ្នក។';

  @override
  String get onboardingAnnualBadge => 'តម្លៃល្អបំផុត';

  @override
  String get onboardingMonthlyLabel => 'ប្រចាំខែ';

  @override
  String get onboardingAnnualLabel => 'ប្រចាំឆ្នាំ';

  @override
  String get onboardingViewAllPlans => 'មើលគម្រោងទាំងអស់។';

  @override
  String get onboardingSubscribeCta => 'ជាវ';

  @override
  String get onboardingCancelAnytime =>
      'បោះបង់នៅពេលណាក៏បាន។ គ្មានការប្តេជ្ញាចិត្ត។';

  @override
  String get onboardingContinueAsGuest => 'បន្តក្នុងនាមជាភ្ញៀវ';

  @override
  String get onboardingRestore => 'ស្តារ';

  @override
  String get onboardingRestoreDesc =>
      'មាន​ការ​ជាវ​ហើយ​ឬ​នៅ? ចុចទីនេះដើម្បីស្ដារវាឡើងវិញ។';

  @override
  String get onboardingExit => 'ចេញ';

  @override
  String get onboardingPersonalizationTitle => 'តោះមកស្គាល់អ្នក។';

  @override
  String get onboardingPersonalizationDesc =>
      'យើង​នឹង​ប្រើ​វា​ដើម្បី​កំណត់​ការ​ផ្ដល់​យោបល់​របស់​អ្នក​ឱ្យ​ស្រប​នឹង​អ្នក និង​ធ្វើ​ឱ្យ​ការ​ទិញ​ទំនិញ​កាន់តែ​ឆ្លាតវៃ។';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'តើ​ម្ហូប​អ្វី​ដែល​អ្នក​ចូលចិត្ត?';

  @override
  String get onboardingPersonalizationFoodHint => 'ឧ. ភីហ្សា ស៊ូស៊ី ឡាសាណា...';

  @override
  String get onboardingPersonalizationCta => 'បន្ត';

  @override
  String get onboardingPersonalizationSkip => 'រំលងឥឡូវនេះ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ប្រាប់យើងអំពីអាហារដែលអ្នកចូលចិត្តដើម្បីបន្ត';

  @override
  String get settingsDefaultScreen => 'អេក្រង់ដើមលំនាំដើម';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ជ្រើសរើសរវាងបញ្ជីទិញទំនិញ ឬការជជែក AI';

  @override
  String get settingsScreenList => 'បញ្ជីទិញទំនិញ';

  @override
  String get settingsScreenChat => 'AI ជជែក';

  @override
  String loginError(String error) {
    return 'កំហុសការចូល: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'ធ្វើឱ្យប្រសើរដើម្បីដោះសោ';

  @override
  String get itemRemoved => 'ធាតុត្រូវបានដកចេញ';

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String get emptyListTitle => 'បញ្ជីរបស់អ្នកទទេ';

  @override
  String get emptyListSubtitle => 'បន្ថែមធាតុដើម្បីចាប់ផ្តើម';

  @override
  String get noListFoundTitle => 'រកមិនឃើញបញ្ជី';

  @override
  String get noListFoundSubtitle => 'បង្កើតបញ្ជីដំបូងរបស់អ្នកដើម្បីចាប់ផ្តើម';

  @override
  String get createFirstList => 'បង្កើតបញ្ជីដំបូង';

  @override
  String get listBudgetTitle => 'ថវិកាបញ្ជី';

  @override
  String get budgetAmountLabel => 'ចំនួនថវិកា';

  @override
  String get removeBudget => 'ដកចេញ';

  @override
  String get prefUnlimitedLists => 'បញ្ជីគ្មានដែនកំណត់';

  @override
  String get prefSharing => 'ចែករំលែកបញ្ជី';

  @override
  String get prefFullHistory => 'ប្រវត្តិពេញលេញ';

  @override
  String get prefExportData => 'នាំចេញទិន្នន័យ';

  @override
  String get prefCustomThemes => 'ប្រធានបទផ្ទាល់ខ្លួន';

  @override
  String get prefMonthlyBudget => 'ថវិកាប្រចាំខែសកល';

  @override
  String get prefAIAssistant => 'ជំនួយការ AI ផ្ទាល់ខ្លួន';

  @override
  String get prefUnlimitedPantry => 'ទូដាក់អាហារគ្មានដែនកំណត់';

  @override
  String get prefInteractiveArtifacts => 'AI អន្តរកម្ម';

  @override
  String get themeGreen => 'បៃតង';

  @override
  String get themeBlue => 'ខៀវ';

  @override
  String get themePurple => 'ស្វាយ';

  @override
  String get themeRed => 'ក្រហម';

  @override
  String get themeOrange => 'ទឹកក្រូច';

  @override
  String get themePink => 'ផ្កាឈូក';

  @override
  String get themeIndigo => 'ខៀវចាស់';

  @override
  String get themeAmber => 'លឿងខ្ចី';

  @override
  String get themeTeal => 'បៃតងខៀវ';

  @override
  String get themeBrown => 'ត្នោត';

  @override
  String get catFruits => 'ផ្លែឈើ';

  @override
  String get catCleaning => 'សម្អាត';

  @override
  String get catBeverages => 'ភេសជ្ជៈ';

  @override
  String get catBakery => 'នំប៉័ង';

  @override
  String get catOthers => 'ផ្សេងៗ';

  @override
  String get unitPack => 'កញ្ចប់';

  @override
  String get shareSubject => 'បញ្ជីដើរទិញឥវ៉ាន់';

  @override
  String get monthlyBudgetTitle => 'ថវិកាប្រចាំខែ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'លុបបញ្ជី';

  @override
  String get pantryItemRemoved => 'ធាតុត្រូវបានដកចេញ';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ធាតុចាំបាច់ត្រូវទិញ',
      one: '$deficit ធាតុចាំបាច់ត្រូវទិញ',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'សរុបកន្ត្រក';

  @override
  String get restockLabel => 'ស្តុកវិញ';

  @override
  String get advancedFeatures => 'មុខងារកម្រិតខ្ពស់';

  @override
  String get selectAll => 'ជ្រើសរើសទាំងអស់';

  @override
  String get deselectAll => 'ដកការជ្រើសរើសទាំងអស់';

  @override
  String get monthlyBudgetAppBar => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetEditTitle => 'ថវិកាប្រចាំខែ';

  @override
  String get budgetDashboardTitle => 'ផ្ទាំងគ្រប់គ្រង';

  @override
  String get selectListForDashboard => 'ជ្រើសរើសបញ្ជីដើម្បីមើលផ្ទាំងគ្រប់គ្រង។';

  @override
  String get spendingAnalysis => 'ការវិភាគការចំណាយ';

  @override
  String get noItemsToAnalyze => 'គ្មានធាតុក្នុងបញ្ជីដើម្បីវិភាគទេ។';

  @override
  String get markItemsToSeeAnalysis => 'សម្គាល់ធាតុថាបានទិញដើម្បីមើលការវិភាគ។';

  @override
  String get totalSpending => 'ការចំណាយសរុប';

  @override
  String get spendingByCategory => 'ការចំណាយតាមប្រភេទ';

  @override
  String get achievements => 'សមិទ្ធផល';

  @override
  String get exportPdfExcel => 'នាំចេញ PDF/Excel';

  @override
  String get exportPdf => 'នាំចេញជា PDF';

  @override
  String get exportExcel => 'នាំចេញជា Excel';

  @override
  String get organizingAi => 'កំពុងរៀបចំជាមួយ AI...';

  @override
  String get yesLabel => 'បាទ/ចាស';

  @override
  String get noLabel => 'ទេ';

  @override
  String get shareListText => 'បញ្ជីដើរទិញឥវ៉ាន់របស់ខ្ញុំ';

  @override
  String get emptyListAddItems => 'បញ្ជីរបស់អ្នកទទេ! បន្ថែមធាតុជាមុនសិន។ ℹ️';

  @override
  String get listOrganizedMagic => 'បញ្ជីត្រូវបានរៀបចំតាមប្រភេទដោយវេទមន្ត! ✨';

  @override
  String get shoppingMode => 'របៀបដើរទិញឥវ៉ាន់';

  @override
  String get smartOrganization => 'ការរៀបចំឆ្លាតវៃ';

  @override
  String get savings => 'ការសន្សំ';

  @override
  String get shoppingModeHeader => 'របៀបដើរទិញឥវ៉ាន់';

  @override
  String get shareAsText => 'ផ្ញើធាតុជាអត្ថបទដែលបានធ្វើទ្រង់ទ្រាយ';

  @override
  String get shareRealtime => 'ធ្វើសមកាលកម្មតាមពេលជាក់ស្តែងជាមួយអ្នកដទៃ';

  @override
  String get quickRecipe => 'រូបមន្តរហ័ស';

  @override
  String get quickRecipePrompt => 'ណែនាំរូបមន្តជាមួយធាតុពីបញ្ជីរបស់ខ្ញុំ។';

  @override
  String get economyTips => 'គន្លឹះសន្សំប្រាក់';

  @override
  String get economyTipsPrompt => 'តើខ្ញុំអាចសន្សំប្រាក់លើការទិញនេះដោយរបៀបណា?';

  @override
  String get organizeAisles => 'រៀបចំតាមធ្នើរ';

  @override
  String get organizeAislesPrompt => 'រៀបចំតាមធ្នើរផ្សារ។';

  @override
  String get recipeSuggestion => 'ការណែនាំរូបមន្ត';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ឥណទាននៅសល់';
  }

  @override
  String get addAllToList => 'បន្ថែមទាំងអស់ទៅបញ្ជី';

  @override
  String get organizeByAisles => 'រៀបចំតាមធ្នើរ';

  @override
  String get voiceTranscriptionTooltip => 'វាយដោយសំឡេង (ឥតគិតថ្លៃ)';

  @override
  String get aiVoiceCommandTooltip => 'ពាក្យបញ្ជាសំឡេង AI (ពិសេស)';

  @override
  String get voiceCommandTitle => 'ពាក្យបញ្ជាសំឡេង AI';

  @override
  String get voiceCommandContent =>
      'និយាយដោយធម្មជាតិដើម្បីគ្រប់គ្រងបញ្ជីរបស់អ្នក!\n\nឧទាហរណ៍:\n• \'បន្ថែមនំប៉័ង ឈីស និងសាច់ក្រក\'\n• \'ដកសាប៊ូបោកខោអាវចេញ\'\n• \'ប្តូរប្រធានបទទៅជាពណ៌ខៀវ\'\n\nនេះជាមុខងារផ្តាច់មុខរបស់ KipiList Premium។';

  @override
  String get voiceCommandPlanBtn => 'មើលគម្រោង';

  @override
  String get itemsAddedSuccess => 'ធាតុត្រូវបានបន្ថែមទៅបញ្ជីដោយជោគជ័យ!';

  @override
  String get viewList => 'មើលបញ្ជី';

  @override
  String get feedbackTitle => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackPrompt => 'តើអ្នកចង់ចែករំលែកអ្វី?';

  @override
  String get feedbackTypeBug => 'រាយការណ៍កំហុស';

  @override
  String get feedbackTypeBugHint => 'មានអ្វីមួយមិនដំណើរការ';

  @override
  String get feedbackTypeSuggestion => 'សំណូមពរ';

  @override
  String get feedbackTypeSuggestionHint => 'គំនិតកែលម្អកម្មវិធី';

  @override
  String get feedbackTypeTranslation => 'បញ្ហាការបកប្រែ';

  @override
  String get feedbackTypeTranslationHint =>
      'ការបកប្រែមិនត្រឹមត្រូវ ឬមិនធម្មជាតិ';

  @override
  String get feedbackTypeFeature => 'ស្នើសុំមុខងារ';

  @override
  String get feedbackTypeFeatureHint => 'មុខងារដែលអ្នកចង់ឃើញ';

  @override
  String get feedbackTypeOther => 'ផ្សេងៗ';

  @override
  String get feedbackTypeOtherHint => 'ប្រភេទមតិកែលម្អផ្សេងទៀត';

  @override
  String get feedbackHint => 'ពិពណ៌នាលម្អិតអំពីមតិកែលម្អរបស់អ្នក...';

  @override
  String get feedbackSend => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackSending => 'កំពុងផ្ញើ...';

  @override
  String get feedbackThankYou => 'សូមអរគុណ!';

  @override
  String get feedbackThankYouMessage =>
      'មតិកែលម្អរបស់អ្នកត្រូវបានទទួល និងជួយយើងកែលម្អ KipiList សម្រាប់អ្នករាល់គ្នា។';

  @override
  String get feedbackBack => 'ត្រឡប់';

  @override
  String feedbackError(String error) {
    return 'កំហុសក្នុងការផ្ញើ៖ $error';
  }

  @override
  String get feedbackRetry => 'ព្យាយាមម្តងទៀត';

  @override
  String get feedbackSettingsTitle => 'ផ្ញើមតិកែលម្អ';

  @override
  String get feedbackSettingsSubtitle =>
      'រាយការណ៍កំហុស ស្នើសុំការកែលម្អ ឬកែការបកប្រែ';

  @override
  String get aiEnergy => 'ថាមពល AI';

  @override
  String get searchInConversation => 'ស្វែងរកនៅក្នុងការសន្ទនា...';

  @override
  String get noMessagesFound => 'រកមិនឃើញសារទេ។';

  @override
  String get suggestedQuestions => 'សំណួរដែលបានណែនាំ៖';

  @override
  String get shoppingAssistant => 'ជំនួយការការដើរទិញឥវ៉ាន់';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased នៃ $total បានទិញ';
  }

  @override
  String get estimatedCost => 'ប៉ាន់ស្មាន';

  @override
  String get viewItems => 'មើលធាតុ';

  @override
  String get noItemsInList => 'មិនមានធាតុនៅក្នុងបញ្ជីទេ។';

  @override
  String get longHistoryWarning =>
      'ប្រវត្តិយូរអង្វែង៖ ជំនួយការផ្តោតលើសារចុងក្រោយបំផុតសម្រាប់ដំណើរការកាន់តែប្រសើរ។';

  @override
  String get listening => 'កំពុងស្តាប់...';

  @override
  String get addDirectToList => 'បន្ថែមដោយផ្ទាល់ទៅក្នុងបញ្ជី';

  @override
  String get unlockFullResponse => 'ដោះសោការឆ្លើយតបពេញលេញ';

  @override
  String get switchList => 'ប្តូរបញ្ជី';

  @override
  String get marketMode => 'របៀបទីផ្សារ';

  @override
  String get backToChat => 'ត្រឡប់ទៅ Chat វិញ';

  @override
  String get finishShopping => 'បញ្ចប់ការទិញទំនិញ';

  @override
  String get welcomeAiAssistant => 'សូមស្វាគមន៍មកកាន់ AI Assistant';

  @override
  String get createListToStartAi =>
      'បង្កើតបញ្ជីទិញទំនិញ ដើម្បីចាប់ផ្តើមប្រើការជជែកឆ្លាតវៃ។';

  @override
  String get howCanIHelp => 'តើខ្ញុំអាចជួយបានដោយរបៀបណា?';

  @override
  String get chatSubtitleShort => 'សួរអំពីតម្លៃ រូបមន្ត អង្គការ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total បានទិញ';
  }

  @override
  String get quickReplies => 'ការឆ្លើយតបរហ័ស៖';

  @override
  String get voiceProFeature =>
      'ការបញ្ជាដោយសំឡេងកម្រិតខ្ពស់គឺ Pro ។ បើក​ការ​សរសេរ​តាម​តាម​មូលដ្ឋាន...';

  @override
  String get viewPro => 'មើល Pro';

  @override
  String get errorLoadingChat =>
      'ឱ! មាន​អ្វី​មួយ​ខុស​ប្រក្រតី​ក្នុង​ការ​ផ្ទុក​ការ​ជជែក។';

  @override
  String get errorLoadingChatSubtitle =>
      'ពិនិត្យការតភ្ជាប់របស់អ្នក ឬព្យាយាមម្តងទៀតនៅពេលក្រោយ។';

  @override
  String get errorOscillation =>
      'វា​អាច​កើត​ឡើង​ដោយ​សារ​ការ​យោល​បណ្តាញ ឬ​មិន​អាច​ប្រើ​បាន​បណ្ដោះ​អាសន្ន។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get activeListening => 'ការស្តាប់សកម្ម';

  @override
  String get whatToDoWithItem => 'តើអ្នកចង់ធ្វើអ្វីជាមួយធាតុនេះ?';

  @override
  String get viewDetails => 'មើលព័ត៌មានលម្អិត';

  @override
  String get openMenu => 'បើកម៉ឺនុយ';

  @override
  String get viewRecipe => 'មើលរូបមន្ត';

  @override
  String get recipeCreated => 'បានបង្កើតរូបមន្ត!';

  @override
  String get editRecipe => 'កែសម្រួល';

  @override
  String get deleteRecipe => 'លុប';

  @override
  String get deleteRecipeConfirm => 'លុបរូបមន្តនេះ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$recipeName\" ឬ? សកម្មភាពនេះមិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get ingredients => 'គ្រឿងផ្សំ';

  @override
  String get instructions => 'ការណែនាំ';

  @override
  String get prepTime => 'រយៈពេលរៀបចំ';

  @override
  String get recipeSaved => 'បានរក្សាទុករូបមន្ត!';

  @override
  String get noRecipesSaved => 'គ្មានរូបមន្តដែលបានរក្សាទុក';

  @override
  String get noRecipesSavedHint =>
      'បង្កើតរូបមន្តផ្ទាល់ខ្លួនដំបូងរបស់អ្នកដោយប៉ះប៊ូតុងខាងក្រោម。';

  @override
  String get myRecipes => 'រូបមន្តរបស់ខ្ញុំ';

  @override
  String get newRecipe => 'រូបមន្តថ្មី';

  @override
  String get loadingRecipes => 'កំពុងទាញយករូបមន្តរបស់អ្នក...';

  @override
  String get errorLoadingRecipes => 'កំហុសក្នុងការទាញយករូបមន្ត';

  @override
  String get addIngredient => 'បន្ថែមគ្រឿងផ្សំ';

  @override
  String get saveRecipe => 'រក្សាទុក';

  @override
  String get recipeName => 'ឈ្មោះរូបមន្ត';

  @override
  String get shortDescription => 'ការពិពណ៌នាខ្លី';

  @override
  String get prepTimeMinutes => 'រយៈពេលរៀបចំ (នាទី)';

  @override
  String get instructionsHint => 'វាយបញ្ចូលមួយជំហានក្នុងមួយជួរ...';

  @override
  String get addPhoto => 'បន្ថែមរូបថត';

  @override
  String get imageUrlPlaceholder => 'ឬបិទភ្ជាប់ URL រូបភាព';

  @override
  String get tags => 'ស្លាក';

  @override
  String get recipeTags => 'ស្លាករូបមន្ត';

  @override
  String get suggestedTags => 'ត្រូវបានណែនាំ';

  @override
  String get searchRecipes => 'ស្វែងរករូបមន្ត...';

  @override
  String get filterByTag => 'ត្រងតាមស្លាក';

  @override
  String get allTags => 'ទាំងអស់';

  @override
  String get recipeDeleted => 'បានលុបរូបមន្ត';

  @override
  String get saveChanges => 'រក្សាទុកការផ្លាស់ប្តូរ';

  @override
  String get editRecipeTitle => 'កែសម្រួលរូបមន្ត';

  @override
  String get newRecipeTitle => 'រូបមន្តថ្មី';

  @override
  String get requiredField => 'ចាំបាច់';

  @override
  String get chooseImageSource => 'ជ្រើសរើសប្រភពរូបភាព';

  @override
  String get gallery => 'វិចិត្រសាល';

  @override
  String get enterUrl => 'បញ្ចូល URL';

  @override
  String get recipeImage => 'រូបភាពរូបមន្ត';

  @override
  String get removeImage => 'លុបរូបភាព';

  @override
  String get mealPlannerTitle => 'អ្នករៀបចំអាហារ';

  @override
  String get mealPlannerViewMonthly => 'ទិដ្ឋភាពប្រចាំខែ';

  @override
  String get mealPlannerViewWeekly => 'ទិដ្ឋភាពប្រចាំសប្តាហ៍';

  @override
  String get mealPlannerNoMeals => 'គ្មានអាហារដែលបានគ្រោងទុក';

  @override
  String get mealPlannerNoMealsHint => 'ប៉ះថ្ងៃណាមួយដើម្បីបន្ថែមអាហារ';

  @override
  String get mealPlannerLoading => 'កំពុងទាញយកគម្រោងអាហារ...';

  @override
  String get mealPlannerError => 'កំហុសក្នុងការទាញយកគម្រោងអាហារ';

  @override
  String get mealPlannerAddMeal => 'បន្ថែមអាហារ';

  @override
  String get mealPlannerEditMeal => 'កែសម្រួលអាហារ';

  @override
  String get mealPlannerDeleteMeal => 'លុបអាហារ';

  @override
  String get mealPlannerMealDeleted => 'បានលុបអាហារ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ចំណែក',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ចំនួនចំណែក';

  @override
  String get mealPlannerNoteLabel => 'កំណត់សម្គាល់ (ជាជម្រើស)';

  @override
  String get mealPlannerSelectRecipe => 'ជ្រើសរើសរូបមន្ត';

  @override
  String get mealPlannerSearchRecipes => 'ស្វែងរករូបមន្ត...';

  @override
  String get mealPlannerNoRecipesFound => 'រកមិនឃើញរូបមន្ត';

  @override
  String get mealPlannerNoRecipesHint =>
      'បង្កើតរូបមន្តក្នុងផ្ទាំងរូបមន្តជាមុនសិន';

  @override
  String get mealPlannerSave => 'បន្ថែមទៅក្នុងគម្រោង';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'អាហារចំនួន $count ក្នុងចំណោម $total ត្រូវបានគ្រោងទុក';
  }

  @override
  String get mealPlannerGenerateList => 'បង្កើតបញ្ជីទិញទំនិញ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'បន្ថែមគ្រឿងផ្សំទាំងអស់ពីអាហារដែលបានគ្រោងទុកក្នុងសប្តាហ៍នេះទៅក្នុងបញ្ជីទិញទំនិញរបស់អ្នក?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'បានបន្ថែមគ្រឿងផ្សំ $count ទៅក្នុងបញ្ជីរបស់អ្នក!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'គ្មានគ្រឿងផ្សំដែលត្រូវបន្ថែមទេ។ រៀបចំគម្រោងអាហារជាមួយរូបមន្តជាមុនសិន。';

  @override
  String get mealPlannerGenerateListNoList => 'បង្កើតបញ្ជីទិញទំនិញជាមុនសិន。';

  @override
  String get mealPlannerMealTypeBreakfast => 'អាហារពេលព្រឹក';

  @override
  String get mealPlannerMealTypeLunch => 'អាហារពេលថ្ងៃត្រង់';

  @override
  String get mealPlannerMealTypeDinner => 'អាហារពេលល្ងាច';

  @override
  String get mealPlannerMealTypeSnack => 'អាហារសម្រន់';

  @override
  String get mealPlannerDateLabel => 'កាលបរិច្ឆេទ';

  @override
  String get mealPlannerWeekEmpty =>
      'គ្មានអ្វីត្រូវបានគ្រោងទុកសម្រាប់សប្តាហ៍នេះទេ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ប៉ះថ្ងៃណាមួយដើម្បីចាប់ផ្តើមរៀបចំគម្រោងអាហាររបស់អ្នក!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes នាទី';
  }

  @override
  String get inviteToList => 'អញ្ជើញទៅបញ្ជី';

  @override
  String get shareApp => 'ចែករំលែកកម្មវិធី';

  @override
  String get shareAppDescription => 'អញ្ជើញមិត្តភក្តិឱ្យប្រើ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'ខ្ញុំកំពុងប្រើ KipiList ដើម្បីរៀបចំការទិញទំនិញរបស់ខ្ញុំ! ទាញយកតាមរយៈតំណរបស់ខ្ញុំ ហើយយើងទាំងពីរទទួលបាន Premium ឥតគិតថ្លៃ 7 ថ្ងៃ៖ $url';
  }

  @override
  String get shareReferralSubject => 'ទទួលបាន 7 ថ្ងៃនៃ KipiList Premium!';
}
