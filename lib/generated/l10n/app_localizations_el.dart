// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Λίστα Αγορών';

  @override
  String get lists => 'Λίστες';

  @override
  String get pantry => 'Ντουλάπι';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get create => 'Δημιουργία';

  @override
  String get add => 'Προσθήκη';

  @override
  String get remove => 'Αφαίρεση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get copy => 'Αντιγραφή';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get regenerate => 'Αναγέννηση';

  @override
  String get copiedToClipboard => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get import => 'Εισαγωγή';

  @override
  String get rename => 'Μετονομασία';

  @override
  String get upgrade => 'Αναβάθμιση';

  @override
  String get clear => 'Εκκαθάριση';

  @override
  String error(String message) {
    return 'Σφάλμα: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Σφάλμα: $message';
  }

  @override
  String get purchaseError => 'Σφάλμα επεξεργασίας αγοράς. Δοκιμάστε ξανά.';

  @override
  String get restoreError => 'Σφάλμα επαναφοράς αγορών. Δοκιμάστε ξανά.';

  @override
  String get loading => 'Φόρτωση...';

  @override
  String get fieldRequired => 'Υποχρεωτικό πεδίο';

  @override
  String get addedFeedback => 'Προστέθηκε!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επιλεγμένα',
      one: '$count επιλεγμένο',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Εκτιμώμενο';

  @override
  String get alreadyPurchased => 'Ήδη αγορασμένο';

  @override
  String get clearList => 'Εκκαθάριση λίστας';

  @override
  String get clearPurchased => 'Εκκαθάριση αγορασμένων';

  @override
  String get share => 'Κοινή χρήση';

  @override
  String get shareViaCode => 'Κοινή χρήση μέσω κωδικού';

  @override
  String get importViaCode => 'Εισαγωγή μέσω κωδικού';

  @override
  String get listAssistant => 'Βοηθός λίστας';

  @override
  String get globalAssistant => 'Γενικός βοηθός';

  @override
  String get becomePremium => 'Γίνε Premium';

  @override
  String get manageSubscription => 'Διαχείριση συνδρομής';

  @override
  String get completePurchase => 'Ολοκλήρωση αγοράς';

  @override
  String get confirmClearList => 'Αφαίρεση όλων των στοιχείων;';

  @override
  String get shareListTitle => 'Κοινή χρήση λίστας';

  @override
  String get shareThisCode => 'Μοιράσου αυτόν τον κωδικό:';

  @override
  String get validForLimitedTime => 'Ισχύει για περιορισμένο χρόνο';

  @override
  String get importListTitle => 'Εισαγωγή λίστας';

  @override
  String get enterCodeHint => 'Εισάγετε τον κωδικό';

  @override
  String get confirmArchiveTitle => 'Ολοκλήρωση αγοράς';

  @override
  String get confirmArchiveContent =>
      'Να ολοκληρωθεί αυτή η αγορά και να αρχειοθετηθεί η λίστα;';

  @override
  String get complete => 'Ολοκλήρωση';

  @override
  String get listArchived => 'Η λίστα αρχειοθετήθηκε επιτυχώς!';

  @override
  String listAdded(String listName) {
    return 'Το $listName προστέθηκε!';
  }

  @override
  String get buy => 'Αγορά';

  @override
  String get unmark => 'Αποεπισήμανση';

  @override
  String confirmDeleteItems(int count) {
    return 'Αφαίρεση $count στοιχείου(ων);';
  }

  @override
  String get confirmDeleteTitle => 'Επιβεβαίωση';

  @override
  String confirmContent(int count) {
    return 'Αφαίρεση $count στοιχείου(ων);';
  }

  @override
  String get archiveList => 'Αρχειοθέτηση λίστας';

  @override
  String get pantryAppBar => 'Ντουλάπι';

  @override
  String get generateShoppingList => 'Δημιουργία λίστας αγορών';

  @override
  String get pantryEmpty => 'Άδειο ντουλάπι';

  @override
  String get pantryEmptySubtitle =>
      'Προσθέστε προϊόντα που θέλετε να έχετε στο σπίτι';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit στοιχείο(α) χρειάζονται αγορά';
  }

  @override
  String get noItemsToBuy => 'Κανένα στοιχείο δεν χρειάζεται αγορά';

  @override
  String get newPantryList => 'Αγορές ντουλαπιού';

  @override
  String get newListTitle => 'Νέα λίστα αγορών';

  @override
  String itemsWillBeAdded(int count) {
    return '$count στοιχείο(α) θα προστεθούν';
  }

  @override
  String get listNameLabel => 'Όνομα λίστας';

  @override
  String listCreated(String name, int count) {
    return 'Η λίστα \"$name\" δημιουργήθηκε με $count στοιχεία';
  }

  @override
  String get noTracking => 'Χωρίς παρακολούθηση';

  @override
  String get markAsPurchased => 'Σημείωση ως αγορασμένο';

  @override
  String editPantryItem(String name) {
    return 'Επεξεργασία $name';
  }

  @override
  String get idealQuantity => 'Ιδανική ποσότητα';

  @override
  String get currentQuantity => 'Τρέχουσα ποσότητα';

  @override
  String get consumed => 'Καταναλώθηκε';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Το $name ανανεώθηκε σε $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Αφαίρεση του \"$name\" από το ντουλάπι;';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Επεξεργασία $name';
  }

  @override
  String get settingsAppBar => 'Ρυθμίσεις';

  @override
  String get language => 'Γλώσσα';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Προεπιλογή συστήματος';

  @override
  String get chooseLanguage => 'Επιλογή γλώσσας';

  @override
  String get searchLanguage => 'Αναζήτηση γλώσσας...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get light => 'Ανοιχτό';

  @override
  String get system => 'Σύστημα';

  @override
  String get dark => 'Σκοτεινό';

  @override
  String get themeColor => 'Χρώμα θέματος';

  @override
  String get dynamicColors => 'Δυναμικά χρώματα';

  @override
  String get dynamicColorsSubtitle =>
      'Χρήση χρωμάτων με βάση την ταπετσαρία σας';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Οικονομικά';

  @override
  String get monthlyBudgetNav => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetSubtitle => 'Παρακολουθήστε τις μηνιαίες δαπάνες σας';

  @override
  String get data => 'Δεδομένα';

  @override
  String get backupNav => 'Αντίγραφο ασφαλείας';

  @override
  String get backupSubtitle => 'Εξαγωγή ή εισαγωγή δεδομένων';

  @override
  String get about => 'Σχετικά';

  @override
  String get version => 'Έκδοση';

  @override
  String get privacy => 'Απόρρητο';

  @override
  String get termsOfUse => 'Όροι χρήσης';

  @override
  String get backupTitle => 'Αντίγραφο ασφαλείας';

  @override
  String get backupPremiumDescription =>
      'Το αντίγραφο ασφαλείας και η εξαγωγή είναι λειτουργία Premium';

  @override
  String get exportData => 'Εξαγωγή δεδομένων';

  @override
  String get exportDataSubtitle => 'Αποθήκευση όλων των λιστών ως JSON';

  @override
  String get importData => 'Εισαγωγή δεδομένων';

  @override
  String get importDataSubtitle => 'Επαναφορά λιστών από JSON';

  @override
  String get importJsonTitle => 'Εισαγωγή JSON';

  @override
  String get importJsonHint =>
      'Επικολλήστε το JSON αντιγράφου ασφαλείας εδώ...';

  @override
  String get backupExported => 'Το αντίγραφο ασφαλείας εξήχθη!';

  @override
  String get budgetAppBar => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetPremiumLocked =>
      'Ο συνολικός μηνιαίος προϋπολογισμός είναι Premium';

  @override
  String get budgetUpgradePrompt => 'Αναβαθμίστε για ξεκλείδωμα';

  @override
  String get noBudgetDefined => 'Δεν έχει οριστεί προϋπολογισμός';

  @override
  String totalEstimated(String amount) {
    return 'Σύνολο εκτιμώμενο: $amount';
  }

  @override
  String get setBudgetButton => 'Ορισμός προϋπολογισμού';

  @override
  String get budgetLists => 'Λίστες';

  @override
  String get budgetValueLabel => 'Ποσό';

  @override
  String get setBudgetTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Όλα';

  @override
  String get filterPending => 'Εκκρεμή';

  @override
  String get filterPurchased => 'Αγορασμένα';

  @override
  String get sortName => 'Όνομα';

  @override
  String get sortCategory => 'Κατηγορία';

  @override
  String get sortDate => 'Ημερομηνία';

  @override
  String get sortManual => 'Χειροκίνητα';

  @override
  String get addItem => 'Προσθήκη στοιχείου';

  @override
  String get itemName => 'Όνομα στοιχείου';

  @override
  String get quantityShort => 'Ποσ';

  @override
  String get unit => 'Μονάδα';

  @override
  String get category => 'Κατηγορία';

  @override
  String get estimatedPrice => 'Εκτιμώμενη τιμή';

  @override
  String get addItemPrice => 'Εκτιμώμενη τιμή';

  @override
  String get editItem => 'Επεξεργασία στοιχείου';

  @override
  String get quantityFull => 'Ποσότητα';

  @override
  String get editItemPrice => 'Εκτιμώμενη τιμή';

  @override
  String get addToPantry => 'Προσθήκη στο ντουλάπι';

  @override
  String addToPantryPrompt(String name) {
    return 'Να προστεθεί το \"$name\" στο ντουλάπι σας;';
  }

  @override
  String get yes => 'Ναι';

  @override
  String get productName => 'Όνομα προϊόντος';

  @override
  String get idealQty => 'Ιδανική ποσ';

  @override
  String get currentQty => 'Τρέχουσα ποσ';

  @override
  String get trackStock => 'Παρακολούθηση αποθέματος';

  @override
  String get trackStockActive => 'Εμφανίζεται σε προτάσεις αγορών';

  @override
  String get trackStockInactive => 'Δεν δημιουργεί πρόταση αγοράς';

  @override
  String get createListDialog => 'Δημιουργία λίστας';

  @override
  String get renameListDialog => 'Μετονομασία λίστας';

  @override
  String get listHistory => 'Ιστορικό λιστών';

  @override
  String get myLists => 'Οι λίστες μου';

  @override
  String get viewActive => 'Προβολή ενεργών';

  @override
  String get viewHistory => 'Προβολή ιστορικού';

  @override
  String get noArchivedLists => 'Δεν υπάρχουν αρχειοθετημένες λίστες';

  @override
  String get noActiveLists => 'Δεν υπάρχουν ενεργές λίστες';

  @override
  String completedOn(String date) {
    return 'Ολοκληρώθηκε στις $date';
  }

  @override
  String get sharedLabel => 'Κοινόχρηστη';

  @override
  String get restore => 'Επαναφορά';

  @override
  String get removeSharedTooltip => 'Αφαίρεση';

  @override
  String get deleteListTitle => 'Διαγραφή λίστας';

  @override
  String deleteListContent(String name) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε το \"$name\"; Όλα τα στοιχεία θα αφαιρεθούν.';
  }

  @override
  String get removeSharedListTitle => 'Αφαίρεση κοινόχρηστης λίστας';

  @override
  String removeSharedListContent(String name) {
    return 'Να αφαιρεθεί το \"$name\" από τις λίστες σας; Η αρχική λίστα δεν θα επηρεαστεί.';
  }

  @override
  String get createNewList => 'Δημιουργία νέας λίστας';

  @override
  String get aiAssistant => 'Βοηθός AI';

  @override
  String get aiAssistantDescription =>
      'Λάβετε έξυπνες προτάσεις, συνταγές και εξατομικευμένες συμβουλές με τον βοηθό AI μας.';

  @override
  String get generalAssistant => 'Γενικός βοηθός';

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
  String get clearHistory => 'Εκκαθάριση ιστορικού';

  @override
  String get clearHistoryConfirm =>
      'Να διαγραφούν όλα τα μηνύματα αυτής της συνεδρίας;';

  @override
  String get chatHint => 'Πληκτρολογήστε το μήνυμά σας...';

  @override
  String chatError(String error) {
    return 'Σφάλμα φόρτωσης συνομιλίας: $error';
  }

  @override
  String get listHelp => 'Πώς μπορώ να βοηθήσω με τη λίστα σας;';

  @override
  String get generalHelp => 'Πώς μπορώ να βοηθήσω με τα ψώνια σας σήμερα;';

  @override
  String get chatSubtitle =>
      'Ζητήστε προτάσεις στοιχείων, συνταγές ή συμβουλές εξοικονόμησης.';

  @override
  String get aiError =>
      'Λυπούμαστε, παρουσιάστηκε σφάλμα κατά την επεξεργασία του αιτήματός σας. Ελέγξτε τη σύνδεσή σας ή δοκιμάστε ξανά αργότερα.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Συνδεθείτε για να ξεκλειδώσετε\nPremium λειτουργίες';

  @override
  String get signInGoogle => 'Σύνδεση με Google';

  @override
  String get signInApple => 'Σύνδεση με Apple';

  @override
  String get continueAsGuest => 'Συνέχεια ως επισκέπτης';

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
    return 'Σφάλμα σύνδεσης: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Αναβαθμίστε για ξεκλείδωμα';

  @override
  String get itemRemoved => 'Το στοιχείο αφαιρέθηκε';

  @override
  String get undo => 'Αναίρεση';

  @override
  String get emptyListTitle => 'Η λίστα σας είναι άδεια';

  @override
  String get emptyListSubtitle => 'Προσθέστε στοιχεία για να ξεκινήσετε';

  @override
  String get noListFoundTitle => 'Δεν βρέθηκαν λίστες';

  @override
  String get noListFoundSubtitle =>
      'Δημιουργήστε την πρώτη σας λίστα για να ξεκινήσετε';

  @override
  String get createFirstList => 'Δημιουργία πρώτης λίστας';

  @override
  String get listBudgetTitle => 'Προϋπολογισμός λίστας';

  @override
  String get budgetAmountLabel => 'Ποσό προϋπολογισμού';

  @override
  String get removeBudget => 'Αφαίρεση';

  @override
  String get prefUnlimitedLists => 'Απεριόριστες λίστες';

  @override
  String get prefSharing => 'Κοινή χρήση λιστών';

  @override
  String get prefFullHistory => 'Πλήρες ιστορικό';

  @override
  String get prefExportData => 'Εξαγωγή δεδομένων';

  @override
  String get prefCustomThemes => 'Προσαρμοσμένα θέματα';

  @override
  String get prefMonthlyBudget => 'Συνολικός μηνιαίος προϋπολογισμός';

  @override
  String get prefAIAssistant => 'Προσωπικός βοηθός AI';

  @override
  String get prefUnlimitedPantry => 'Απεριόριστο ντουλάπι';

  @override
  String get prefInteractiveArtifacts => 'Διαδραστικά τεχνουργήματα AI';

  @override
  String get themeGreen => 'Πράσινο';

  @override
  String get themeBlue => 'Μπλε';

  @override
  String get themePurple => 'Μωβ';

  @override
  String get themeRed => 'Κόκκινο';

  @override
  String get themeOrange => 'Πορτοκαλί';

  @override
  String get themePink => 'Ροζ';

  @override
  String get themeIndigo => 'Λουλακί';

  @override
  String get themeAmber => 'Κεχριμπάρι';

  @override
  String get themeTeal => 'Γαλαζοπράσινο';

  @override
  String get themeBrown => 'Καφέ';

  @override
  String get catFruits => 'Φρούτα';

  @override
  String get catCleaning => 'Καθαρισμός';

  @override
  String get catBeverages => 'Ποτά';

  @override
  String get catBakery => 'Αρτοποιείο';

  @override
  String get catOthers => 'Άλλα';

  @override
  String get unitPack => 'συσκευασία';

  @override
  String get shareSubject => 'Λίστα αγορών';

  @override
  String get monthlyBudgetTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Διαγραφή λίστας';

  @override
  String get pantryItemRemoved => 'Το στοιχείο αφαιρέθηκε';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit στοιχεία χρειάζονται αγορά',
      one: '$deficit στοιχείο χρειάζεται αγορά',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Σύνολο καλαθιού';

  @override
  String get restockLabel => 'Ανανέωση';

  @override
  String get advancedFeatures => 'Προηγμένες λειτουργίες';

  @override
  String get selectAll => 'Επιλογή όλων';

  @override
  String get deselectAll => 'Αποεπιλογή όλων';

  @override
  String get monthlyBudgetAppBar => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetEditTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetDashboardTitle => 'Πίνακας ελέγχου';

  @override
  String get selectListForDashboard =>
      'Επιλέξτε μια λίστα για να δείτε τον πίνακα ελέγχου.';

  @override
  String get spendingAnalysis => 'Ανάλυση δαπανών';

  @override
  String get noItemsToAnalyze => 'Δεν υπάρχουν στοιχεία στη λίστα για ανάλυση.';

  @override
  String get markItemsToSeeAnalysis =>
      'Σημειώστε τα στοιχεία ως αγορασμένα για να δείτε την ανάλυση.';

  @override
  String get totalSpending => 'Συνολικές δαπάνες';

  @override
  String get spendingByCategory => 'Δαπάνες ανά κατηγορία';

  @override
  String get achievements => 'Επιτεύγματα';

  @override
  String get exportPdfExcel => 'Εξαγωγή PDF/Excel';

  @override
  String get exportPdf => 'Εξαγωγή ως PDF';

  @override
  String get exportExcel => 'Εξαγωγή ως Excel';

  @override
  String get organizingAi => 'ΟΡΓΑΝΩΣΗ ΜΕ AI...';

  @override
  String get yesLabel => 'Ναι';

  @override
  String get noLabel => 'Όχι';

  @override
  String get shareListText => 'Η λίστα αγορών μου';

  @override
  String get emptyListAddItems =>
      'Η λίστα σας είναι άδεια! Προσθέστε πρώτα στοιχεία. ℹ️';

  @override
  String get listOrganizedMagic => 'Η λίστα οργανώθηκε μαγικά ανά κατηγορία! ✨';

  @override
  String get shoppingMode => 'Λειτουργία αγορών';

  @override
  String get smartOrganization => 'Έξυπνη οργάνωση';

  @override
  String get savings => 'Εξοικονόμηση';

  @override
  String get shoppingModeHeader => 'ΛΕΙΤΟΥΡΓΙΑ ΑΓΟΡΩΝ';

  @override
  String get shareAsText => 'Αποστολή στοιχείων ως μορφοποιημένο κείμενο';

  @override
  String get shareRealtime => 'Συγχρονισμός σε πραγματικό χρόνο με άλλους';

  @override
  String get quickRecipe => 'Γρήγορη συνταγή';

  @override
  String get quickRecipePrompt =>
      'Προτείνετε συνταγές με στοιχεία από τη λίστα μου.';

  @override
  String get economyTips => 'Συμβουλές εξοικονόμησης';

  @override
  String get economyTipsPrompt =>
      'Πώς μπορώ να εξοικονομήσω χρήματα σε αυτή την αγορά;';

  @override
  String get organizeAisles => 'Οργάνωση ανά διαδρόμους';

  @override
  String get organizeAislesPrompt => 'Οργάνωση ανά διαδρόμους σούπερ μάρκετ.';

  @override
  String get recipeSuggestion => 'Πρόταση συνταγής';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Απομένουν $remaining πιστώσεις';
  }

  @override
  String get addAllToList => 'Προσθήκη όλων στη λίστα';

  @override
  String get organizeByAisles => 'Οργάνωση ανά διαδρόμους';

  @override
  String get voiceTranscriptionTooltip => 'Φωνητική πληκτρολόγηση (Δωρεάν)';

  @override
  String get aiVoiceCommandTooltip => 'Φωνητική εντολή AI (Premium)';

  @override
  String get voiceCommandTitle => 'Φωνητική εντολή AI';

  @override
  String get voiceCommandContent =>
      'Μιλήστε φυσικά για να διαχειριστείτε τη λίστα σας!\n\nΠαραδείγματα:\n• \'Πρόσθεσε ψωμί, τυρί και ζαμπόν\'\n• \'Αφαίρεσε το απορρυπαντικό\'\n• \'Άλλαξε θέμα σε μπλε\'\n\nΑυτή είναι μια αποκλειστική λειτουργία του Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Δείτε τα πακέτα';

  @override
  String get itemsAddedSuccess => 'Τα στοιχεία προστέθηκαν επιτυχώς στη λίστα!';

  @override
  String get viewList => 'Προβολή λίστας';

  @override
  String get feedbackTitle => 'Αποστολή σχολίων';

  @override
  String get feedbackPrompt => 'Τι θα θέλατε να μοιραστείτε;';

  @override
  String get feedbackTypeBug => 'Αναφορά σφάλματος';

  @override
  String get feedbackTypeBugHint => 'Κάτι δεν λειτουργεί';

  @override
  String get feedbackTypeSuggestion => 'Πρόταση';

  @override
  String get feedbackTypeSuggestionHint => 'Ιδέα για βελτίωση της εφαρμογής';

  @override
  String get feedbackTypeTranslation => 'Πρόβλημα μετάφρασης';

  @override
  String get feedbackTypeTranslationHint => 'Λανθασμένη ή αμήχανη μετάφραση';

  @override
  String get feedbackTypeFeature => 'Αίτημα λειτουργίας';

  @override
  String get feedbackTypeFeatureHint => 'Λειτουργία που θα θέλατε να δείτε';

  @override
  String get feedbackTypeOther => 'Άλλο';

  @override
  String get feedbackTypeOtherHint => 'Άλλος τύπος σχολίων';

  @override
  String get feedbackHint => 'Περιγράψτε τα σχόλιά σας λεπτομερώς...';

  @override
  String get feedbackSend => 'Αποστολή σχολίων';

  @override
  String get feedbackSending => 'Αποστολή...';

  @override
  String get feedbackThankYou => 'Σας ευχαριστούμε!';

  @override
  String get feedbackThankYouMessage =>
      'Τα σχόλιά σας ελήφθησαν και μας βοηθούν να βελτιώσουμε το Lista Plus για όλους.';

  @override
  String get feedbackBack => 'Πίσω';

  @override
  String feedbackError(String error) {
    return 'Σφάλμα αποστολής: $error';
  }

  @override
  String get feedbackRetry => 'Δοκιμάστε ξανά';

  @override
  String get feedbackSettingsTitle => 'Αποστολή σχολίων';

  @override
  String get feedbackSettingsSubtitle =>
      'Αναφέρετε σφάλματα, προτείνετε βελτιώσεις ή διορθώστε μεταφράσεις';

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
  String get openMenu => 'Άνοιγμα μενού';

  @override
  String get viewRecipe => 'Προβολή συνταγής';

  @override
  String get recipeCreated => 'Η συνταγή δημιουργήθηκε!';

  @override
  String get editRecipe => 'Επεξεργασία';

  @override
  String get deleteRecipe => 'Διαγραφή';

  @override
  String get deleteRecipeConfirm => 'Διαγραφή αυτής της συνταγής;';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε τη συνταγή \"$recipeName\"; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get ingredients => 'Συστατικά';

  @override
  String get instructions => 'Οδηγίες';

  @override
  String get prepTime => 'Χρόνος προετοιμασίας';

  @override
  String get recipeSaved => 'Η συνταγή αποθηκεύτηκε!';

  @override
  String get noRecipesSaved => 'Δεν υπάρχουν αποθηκευμένες συνταγές';

  @override
  String get noRecipesSavedHint =>
      'Δημιουργήστε την πρώτη σας προσαρμοσμένη συνταγή πατώντας το παρακάτω κουμπί.';

  @override
  String get myRecipes => 'Οι συνταγές μου';

  @override
  String get newRecipe => 'Νέα συνταγή';

  @override
  String get loadingRecipes => 'Φόρτωση των συνταγών σας...';

  @override
  String get errorLoadingRecipes => 'Σφάλμα κατά τη φόρτωση των συνταγών';

  @override
  String get addIngredient => 'Προσθήκη συστατικού';

  @override
  String get saveRecipe => 'Αποθήκευση';

  @override
  String get recipeName => 'Όνομα συνταγής';

  @override
  String get shortDescription => 'Σύντομη περιγραφή';

  @override
  String get prepTimeMinutes => 'Χρόνος προετοιμασίας (λεπτά)';

  @override
  String get instructionsHint => 'Πληκτρολογήστε ένα βήμα ανά γραμμή...';

  @override
  String get addPhoto => 'Προσθήκη φωτογραφίας';

  @override
  String get imageUrlPlaceholder => 'Ή επικολλήστε ένα URL εικόνας';

  @override
  String get tags => 'Ετικέτες';

  @override
  String get recipeTags => 'Ετικέτες συνταγής';

  @override
  String get suggestedTags => 'Προτεινόμενα';

  @override
  String get searchRecipes => 'Αναζήτηση συνταγών...';

  @override
  String get filterByTag => 'Φιλτράρισμα ανά ετικέτα';

  @override
  String get allTags => 'Όλα';

  @override
  String get recipeDeleted => 'Η συνταγή διαγράφηκε';

  @override
  String get saveChanges => 'Αποθήκευση αλλαγών';

  @override
  String get editRecipeTitle => 'Επεξεργασία συνταγής';

  @override
  String get newRecipeTitle => 'Νέα συνταγή';

  @override
  String get requiredField => 'Απαιτείται';

  @override
  String get chooseImageSource => 'Επιλογή πηγής εικόνας';

  @override
  String get gallery => 'Συλλογή';

  @override
  String get enterUrl => 'Εισαγωγή URL';

  @override
  String get recipeImage => 'Εικόνα συνταγής';

  @override
  String get removeImage => 'Αφαίρεση εικόνας';

  @override
  String get mealPlannerTitle => 'Πρόγραμμα γευμάτων';

  @override
  String get mealPlannerViewMonthly => 'Μηνιαία προβολή';

  @override
  String get mealPlannerViewWeekly => 'Εβδομαδιαία προβολή';

  @override
  String get mealPlannerNoMeals => 'Δεν έχουν προγραμματιστεί γεύματα';

  @override
  String get mealPlannerNoMealsHint =>
      'Πατήστε μια ημέρα για να προσθέσετε ένα γεύμα';

  @override
  String get mealPlannerLoading => 'Φόρτωση προγράμματος γευμάτων...';

  @override
  String get mealPlannerError =>
      'Σφάλμα κατά τη φόρτωση του προγράμματος γευμάτων';

  @override
  String get mealPlannerAddMeal => 'Προσθήκη γεύματος';

  @override
  String get mealPlannerEditMeal => 'Επεξεργασία γεύματος';

  @override
  String get mealPlannerDeleteMeal => 'Αφαίρεση γεύματος';

  @override
  String get mealPlannerMealDeleted => 'Το γεύμα αφαιρέθηκε';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count μερίδες',
      one: '$count μερίδα',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Μερίδες';

  @override
  String get mealPlannerNoteLabel => 'Σημείωση (προαιρετικό)';

  @override
  String get mealPlannerSelectRecipe => 'Επιλέξτε μια συνταγή';

  @override
  String get mealPlannerSearchRecipes => 'Αναζήτηση συνταγών...';

  @override
  String get mealPlannerNoRecipesFound => 'Δεν βρέθηκαν συνταγές';

  @override
  String get mealPlannerNoRecipesHint =>
      'Δημιουργήστε πρώτα συνταγές στην καρτέλα Συνταγές';

  @override
  String get mealPlannerSave => 'Προσθήκη στο πρόγραμμα';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Προγραμματίστηκαν $count από $total γεύματα';
  }

  @override
  String get mealPlannerGenerateList => 'Δημιουργία λίστας αγορών';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Προσθήκη όλων των συστατικών από τα προγραμματισμένα γεύματα αυτής της εβδομάδας στη λίστα αγορών σας;';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Προστέθηκαν $count συστατικά στη λίστα σας!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Δεν υπάρχουν συστατικά για προσθήκη. Προγραμματίστε πρώτα μερικά γεύματα με συνταγές.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Δημιουργήστε πρώτα μια λίστα αγορών.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Πρωινό';

  @override
  String get mealPlannerMealTypeLunch => 'Μεσημεριανό';

  @override
  String get mealPlannerMealTypeDinner => 'Δείπνο';

  @override
  String get mealPlannerMealTypeSnack => 'Σνακ';

  @override
  String get mealPlannerDateLabel => 'Ημερομηνία';

  @override
  String get mealPlannerWeekEmpty =>
      'Τίποτα προγραμματισμένο για αυτήν την εβδομάδα';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Πατήστε οποιαδήποτε ημέρα για να ξεκινήσετε τον προγραμματισμό των γευμάτων σας!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes λεπτά';
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

/// The translations for Modern Greek, as used in Greece (`el_GR`).
class AppLocalizationsElGr extends AppLocalizationsEl {
  AppLocalizationsElGr() : super('el_GR');

  @override
  String get appTitle => 'Λίστα Αγορών';

  @override
  String get lists => 'Λίστες';

  @override
  String get pantry => 'Ντουλάπι';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get create => 'Δημιουργία';

  @override
  String get add => 'Προσθήκη';

  @override
  String get remove => 'Αφαίρεση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get copy => 'Αντιγραφή';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get regenerate => 'Αναγέννηση';

  @override
  String get copiedToClipboard => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get import => 'Εισαγωγή';

  @override
  String get rename => 'Μετονομασία';

  @override
  String get upgrade => 'Αναβάθμιση';

  @override
  String get clear => 'Εκκαθάριση';

  @override
  String error(String message) {
    return 'Σφάλμα: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Σφάλμα: $message';
  }

  @override
  String get purchaseError => 'Σφάλμα επεξεργασίας αγοράς. Δοκιμάστε ξανά.';

  @override
  String get restoreError => 'Σφάλμα επαναφοράς αγορών. Δοκιμάστε ξανά.';

  @override
  String get loading => 'Φόρτωση...';

  @override
  String get fieldRequired => 'Υποχρεωτικό πεδίο';

  @override
  String get addedFeedback => 'Προστέθηκε!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επιλεγμένα',
      one: '$count επιλεγμένο',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Εκτιμώμενο';

  @override
  String get alreadyPurchased => 'Ήδη αγορασμένο';

  @override
  String get clearList => 'Εκκαθάριση λίστας';

  @override
  String get clearPurchased => 'Εκκαθάριση αγορασμένων';

  @override
  String get share => 'Κοινή χρήση';

  @override
  String get shareViaCode => 'Κοινή χρήση μέσω κωδικού';

  @override
  String get importViaCode => 'Εισαγωγή μέσω κωδικού';

  @override
  String get listAssistant => 'Βοηθός λίστας';

  @override
  String get globalAssistant => 'Γενικός βοηθός';

  @override
  String get becomePremium => 'Γίνε Premium';

  @override
  String get manageSubscription => 'Διαχείριση συνδρομής';

  @override
  String get completePurchase => 'Ολοκλήρωση αγοράς';

  @override
  String get confirmClearList => 'Αφαίρεση όλων των στοιχείων;';

  @override
  String get shareListTitle => 'Κοινή χρήση λίστας';

  @override
  String get shareThisCode => 'Μοιράσου αυτόν τον κωδικό:';

  @override
  String get validForLimitedTime => 'Ισχύει για περιορισμένο χρόνο';

  @override
  String get importListTitle => 'Εισαγωγή λίστας';

  @override
  String get enterCodeHint => 'Εισάγετε τον κωδικό';

  @override
  String get confirmArchiveTitle => 'Ολοκλήρωση αγοράς';

  @override
  String get confirmArchiveContent =>
      'Να ολοκληρωθεί αυτή η αγορά και να αρχειοθετηθεί η λίστα;';

  @override
  String get complete => 'Ολοκλήρωση';

  @override
  String get listArchived => 'Η λίστα αρχειοθετήθηκε επιτυχώς!';

  @override
  String listAdded(String listName) {
    return 'Το $listName προστέθηκε!';
  }

  @override
  String get buy => 'Αγορά';

  @override
  String get unmark => 'Αποεπισήμανση';

  @override
  String confirmDeleteItems(int count) {
    return 'Αφαίρεση $count στοιχείου(ων);';
  }

  @override
  String get confirmDeleteTitle => 'Επιβεβαίωση';

  @override
  String confirmContent(int count) {
    return 'Αφαίρεση $count στοιχείου(ων);';
  }

  @override
  String get archiveList => 'Αρχειοθέτηση λίστας';

  @override
  String get pantryAppBar => 'Ντουλάπι';

  @override
  String get generateShoppingList => 'Δημιουργία λίστας αγορών';

  @override
  String get pantryEmpty => 'Άδειο ντουλάπι';

  @override
  String get pantryEmptySubtitle =>
      'Προσθέστε προϊόντα που θέλετε να έχετε στο σπίτι';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit στοιχείο(α) χρειάζονται αγορά';
  }

  @override
  String get noItemsToBuy => 'Κανένα στοιχείο δεν χρειάζεται αγορά';

  @override
  String get newPantryList => 'Αγορές ντουλαπιού';

  @override
  String get newListTitle => 'Νέα λίστα αγορών';

  @override
  String itemsWillBeAdded(int count) {
    return '$count στοιχείο(α) θα προστεθούν';
  }

  @override
  String get listNameLabel => 'Όνομα λίστας';

  @override
  String listCreated(String name, int count) {
    return 'Η λίστα \"$name\" δημιουργήθηκε με $count στοιχεία';
  }

  @override
  String get noTracking => 'Χωρίς παρακολούθηση';

  @override
  String get markAsPurchased => 'Σημείωση ως αγορασμένο';

  @override
  String editPantryItem(String name) {
    return 'Επεξεργασία $name';
  }

  @override
  String get idealQuantity => 'Ιδανική ποσότητα';

  @override
  String get currentQuantity => 'Τρέχουσα ποσότητα';

  @override
  String get consumed => 'Καταναλώθηκε';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Το $name ανανεώθηκε σε $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Αφαίρεση του \"$name\" από το ντουλάπι;';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Επεξεργασία $name';
  }

  @override
  String get settingsAppBar => 'Ρυθμίσεις';

  @override
  String get language => 'Γλώσσα';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Προεπιλογή συστήματος';

  @override
  String get chooseLanguage => 'Επιλογή γλώσσας';

  @override
  String get searchLanguage => 'Αναζήτηση γλώσσας...';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get light => 'Ανοιχτό';

  @override
  String get system => 'Σύστημα';

  @override
  String get dark => 'Σκοτεινό';

  @override
  String get themeColor => 'Χρώμα θέματος';

  @override
  String get dynamicColors => 'Δυναμικά χρώματα';

  @override
  String get dynamicColorsSubtitle =>
      'Χρήση χρωμάτων με βάση την ταπετσαρία σας';

  @override
  String get finance => 'Οικονομικά';

  @override
  String get monthlyBudgetNav => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetSubtitle => 'Παρακολουθήστε τις μηνιαίες δαπάνες σας';

  @override
  String get data => 'Δεδομένα';

  @override
  String get backupNav => 'Αντίγραφο ασφαλείας';

  @override
  String get backupSubtitle => 'Εξαγωγή ή εισαγωγή δεδομένων';

  @override
  String get about => 'Σχετικά';

  @override
  String get version => 'Έκδοση';

  @override
  String get privacy => 'Απόρρητο';

  @override
  String get termsOfUse => 'Όροι χρήσης';

  @override
  String get backupTitle => 'Αντίγραφο ασφαλείας';

  @override
  String get backupPremiumDescription =>
      'Το αντίγραφο ασφαλείας και η εξαγωγή είναι λειτουργία Premium';

  @override
  String get exportData => 'Εξαγωγή δεδομένων';

  @override
  String get exportDataSubtitle => 'Αποθήκευση όλων των λιστών ως JSON';

  @override
  String get importData => 'Εισαγωγή δεδομένων';

  @override
  String get importDataSubtitle => 'Επαναφορά λιστών από JSON';

  @override
  String get importJsonTitle => 'Εισαγωγή JSON';

  @override
  String get importJsonHint =>
      'Επικολλήστε το JSON αντιγράφου ασφαλείας εδώ...';

  @override
  String get backupExported => 'Το αντίγραφο ασφαλείας εξήχθη!';

  @override
  String get budgetAppBar => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetPremiumLocked =>
      'Ο συνολικός μηνιαίος προϋπολογισμός είναι Premium';

  @override
  String get budgetUpgradePrompt => 'Αναβαθμίστε για ξεκλείδωμα';

  @override
  String get noBudgetDefined => 'Δεν έχει οριστεί προϋπολογισμός';

  @override
  String totalEstimated(String amount) {
    return 'Σύνολο εκτιμώμενο: $amount';
  }

  @override
  String get setBudgetButton => 'Ορισμός προϋπολογισμού';

  @override
  String get budgetLists => 'Λίστες';

  @override
  String get budgetValueLabel => 'Ποσό';

  @override
  String get setBudgetTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Όλα';

  @override
  String get filterPending => 'Εκκρεμή';

  @override
  String get filterPurchased => 'Αγορασμένα';

  @override
  String get sortName => 'Όνομα';

  @override
  String get sortCategory => 'Κατηγορία';

  @override
  String get sortDate => 'Ημερομηνία';

  @override
  String get sortManual => 'Χειροκίνητα';

  @override
  String get addItem => 'Προσθήκη στοιχείου';

  @override
  String get itemName => 'Όνομα στοιχείου';

  @override
  String get quantityShort => 'Ποσ';

  @override
  String get unit => 'Μονάδα';

  @override
  String get category => 'Κατηγορία';

  @override
  String get estimatedPrice => 'Εκτιμώμενη τιμή';

  @override
  String get addItemPrice => 'Εκτιμώμενη τιμή';

  @override
  String get editItem => 'Επεξεργασία στοιχείου';

  @override
  String get quantityFull => 'Ποσότητα';

  @override
  String get editItemPrice => 'Εκτιμώμενη τιμή';

  @override
  String get addToPantry => 'Προσθήκη στο ντουλάπι';

  @override
  String addToPantryPrompt(String name) {
    return 'Να προστεθεί το \"$name\" στο ντουλάπι σας;';
  }

  @override
  String get yes => 'Ναι';

  @override
  String get productName => 'Όνομα προϊόντος';

  @override
  String get idealQty => 'Ιδανική ποσ';

  @override
  String get currentQty => 'Τρέχουσα ποσ';

  @override
  String get trackStock => 'Παρακολούθηση αποθέματος';

  @override
  String get trackStockActive => 'Εμφανίζεται σε προτάσεις αγορών';

  @override
  String get trackStockInactive => 'Δεν δημιουργεί πρόταση αγοράς';

  @override
  String get createListDialog => 'Δημιουργία λίστας';

  @override
  String get renameListDialog => 'Μετονομασία λίστας';

  @override
  String get listHistory => 'Ιστορικό λιστών';

  @override
  String get myLists => 'Οι λίστες μου';

  @override
  String get viewActive => 'Προβολή ενεργών';

  @override
  String get viewHistory => 'Προβολή ιστορικού';

  @override
  String get noArchivedLists => 'Δεν υπάρχουν αρχειοθετημένες λίστες';

  @override
  String get noActiveLists => 'Δεν υπάρχουν ενεργές λίστες';

  @override
  String completedOn(String date) {
    return 'Ολοκληρώθηκε στις $date';
  }

  @override
  String get sharedLabel => 'Κοινόχρηστη';

  @override
  String get restore => 'Επαναφορά';

  @override
  String get removeSharedTooltip => 'Αφαίρεση';

  @override
  String get deleteListTitle => 'Διαγραφή λίστας';

  @override
  String deleteListContent(String name) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε το \"$name\"; Όλα τα στοιχεία θα αφαιρεθούν.';
  }

  @override
  String get removeSharedListTitle => 'Αφαίρεση κοινόχρηστης λίστας';

  @override
  String removeSharedListContent(String name) {
    return 'Να αφαιρεθεί το \"$name\" από τις λίστες σας; Η αρχική λίστα δεν θα επηρεαστεί.';
  }

  @override
  String get createNewList => 'Δημιουργία νέας λίστας';

  @override
  String get aiAssistant => 'Βοηθός AI';

  @override
  String get aiAssistantDescription =>
      'Λάβετε έξυπνες προτάσεις, συνταγές και εξατομικευμένες συμβουλές με τον βοηθό AI μας.';

  @override
  String get generalAssistant => 'Γενικός βοηθός';

  @override
  String get clearHistory => 'Εκκαθάριση ιστορικού';

  @override
  String get clearHistoryConfirm =>
      'Να διαγραφούν όλα τα μηνύματα αυτής της συνεδρίας;';

  @override
  String get chatHint => 'Πληκτρολογήστε το μήνυμά σας...';

  @override
  String chatError(String error) {
    return 'Σφάλμα φόρτωσης συνομιλίας: $error';
  }

  @override
  String get listHelp => 'Πώς μπορώ να βοηθήσω με τη λίστα σας;';

  @override
  String get generalHelp => 'Πώς μπορώ να βοηθήσω με τα ψώνια σας σήμερα;';

  @override
  String get chatSubtitle =>
      'Ζητήστε προτάσεις στοιχείων, συνταγές ή συμβουλές εξοικονόμησης.';

  @override
  String get aiError =>
      'Λυπούμαστε, παρουσιάστηκε σφάλμα κατά την επεξεργασία του αιτήματός σας. Ελέγξτε τη σύνδεσή σας ή δοκιμάστε ξανά αργότερα.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Συνδεθείτε για να ξεκλειδώσετε Premium λειτουργίες';

  @override
  String get signInGoogle => 'Σύνδεση με Google';

  @override
  String get signInApple => 'Σύνδεση με Apple';

  @override
  String get continueAsGuest => 'Συνέχεια ως επισκέπτης';

  @override
  String loginError(String error) {
    return 'Σφάλμα σύνδεσης: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Αναβαθμίστε για ξεκλείδωμα';

  @override
  String get itemRemoved => 'Το στοιχείο αφαιρέθηκε';

  @override
  String get undo => 'Αναίρεση';

  @override
  String get emptyListTitle => 'Η λίστα σας είναι άδεια';

  @override
  String get emptyListSubtitle => 'Προσθέστε στοιχεία για να ξεκινήσετε';

  @override
  String get noListFoundTitle => 'Δεν βρέθηκαν λίστες';

  @override
  String get noListFoundSubtitle =>
      'Δημιουργήστε την πρώτη σας λίστα για να ξεκινήσετε';

  @override
  String get createFirstList => 'Δημιουργία πρώτης λίστας';

  @override
  String get listBudgetTitle => 'Προϋπολογισμός λίστας';

  @override
  String get budgetAmountLabel => 'Ποσό προϋπολογισμού';

  @override
  String get removeBudget => 'Αφαίρεση';

  @override
  String get prefUnlimitedLists => 'Απεριόριστες λίστες';

  @override
  String get prefSharing => 'Κοινή χρήση λιστών';

  @override
  String get prefFullHistory => 'Πλήρες ιστορικό';

  @override
  String get prefExportData => 'Εξαγωγή δεδομένων';

  @override
  String get prefCustomThemes => 'Προσαρμοσμένα θέματα';

  @override
  String get prefMonthlyBudget => 'Συνολικός μηνιαίος προϋπολογισμός';

  @override
  String get prefAIAssistant => 'Προσωπικός βοηθός AI';

  @override
  String get prefUnlimitedPantry => 'Απεριόριστο ντουλάπι';

  @override
  String get prefInteractiveArtifacts => 'Διαδραστικά τεχνουργήματα AI';

  @override
  String get themeGreen => 'Πράσινο';

  @override
  String get themeBlue => 'Μπλε';

  @override
  String get themePurple => 'Μωβ';

  @override
  String get themeRed => 'Κόκκινο';

  @override
  String get themeOrange => 'Πορτοκαλί';

  @override
  String get themePink => 'Ροζ';

  @override
  String get themeIndigo => 'Λουλακί';

  @override
  String get themeAmber => 'Κεχριμπάρι';

  @override
  String get themeTeal => 'Γαλαζοπράσινο';

  @override
  String get themeBrown => 'Καφέ';

  @override
  String get catFruits => 'Φρούτα';

  @override
  String get catCleaning => 'Καθαρισμός';

  @override
  String get catBeverages => 'Ποτά';

  @override
  String get catBakery => 'Αρτοποιείο';

  @override
  String get catOthers => 'Άλλα';

  @override
  String get unitPack => 'συσκευασία';

  @override
  String get shareSubject => 'Λίστα αγορών';

  @override
  String get monthlyBudgetTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Διαγραφή λίστας';

  @override
  String get pantryItemRemoved => 'Το στοιχείο αφαιρέθηκε';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit στοιχεία χρειάζονται αγορά',
      one: '$deficit στοιχείο χρειάζεται αγορά',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Σύνολο καλαθιού';

  @override
  String get restockLabel => 'Ανανέωση';

  @override
  String get advancedFeatures => 'Προηγμένες λειτουργίες';

  @override
  String get selectAll => 'Επιλογή όλων';

  @override
  String get deselectAll => 'Αποεπιλογή όλων';

  @override
  String get monthlyBudgetAppBar => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetEditTitle => 'Μηνιαίος προϋπολογισμός';

  @override
  String get budgetDashboardTitle => 'Πίνακας ελέγχου';

  @override
  String get selectListForDashboard =>
      'Επιλέξτε μια λίστα για να δείτε τον πίνακα ελέγχου.';

  @override
  String get spendingAnalysis => 'Ανάλυση δαπανών';

  @override
  String get noItemsToAnalyze => 'Δεν υπάρχουν στοιχεία στη λίστα για ανάλυση.';

  @override
  String get markItemsToSeeAnalysis =>
      'Σημειώστε τα στοιχεία ως αγορασμένα για να δείτε την ανάλυση.';

  @override
  String get totalSpending => 'Συνολικές δαπάνες';

  @override
  String get spendingByCategory => 'Δαπάνες ανά κατηγορία';

  @override
  String get achievements => 'Επιτεύγματα';

  @override
  String get exportPdfExcel => 'Εξαγωγή PDF/Excel';

  @override
  String get exportPdf => 'Εξαγωγή ως PDF';

  @override
  String get exportExcel => 'Εξαγωγή ως Excel';

  @override
  String get organizingAi => 'ΟΡΓΑΝΩΣΗ ΜΕ AI...';

  @override
  String get yesLabel => 'Ναι';

  @override
  String get noLabel => 'Όχι';

  @override
  String get shareListText => 'Η λίστα αγορών μου';

  @override
  String get emptyListAddItems =>
      'Η λίστα σας είναι άδεια! Προσθέστε πρώτα στοιχεία. ℹ️';

  @override
  String get listOrganizedMagic => 'Η λίστα οργανώθηκε μαγικά ανά κατηγορία! ✨';

  @override
  String get shoppingMode => 'Λειτουργία αγορών';

  @override
  String get smartOrganization => 'Έξυπνη οργάνωση';

  @override
  String get savings => 'Εξοικονόμηση';

  @override
  String get shoppingModeHeader => 'ΛΕΙΤΟΥΡΓΙΑ ΑΓΟΡΩΝ';

  @override
  String get shareAsText => 'Αποστολή στοιχείων ως μορφοποιημένο κείμενο';

  @override
  String get shareRealtime => 'Συγχρονισμός σε πραγματικό χρόνο με άλλους';

  @override
  String get quickRecipe => 'Γρήγορη συνταγή';

  @override
  String get quickRecipePrompt =>
      'Προτείνετε συνταγές με στοιχεία από τη λίστα μου.';

  @override
  String get economyTips => 'Συμβουλές εξοικονόμησης';

  @override
  String get economyTipsPrompt =>
      'Πώς μπορώ να εξοικονομήσω χρήματα σε αυτή την αγορά;';

  @override
  String get organizeAisles => 'Οργάνωση ανά διαδρόμους';

  @override
  String get organizeAislesPrompt => 'Οργάνωση ανά διαδρόμους σούπερ μάρκετ.';

  @override
  String get recipeSuggestion => 'Πρόταση συνταγής';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Απομένουν $remaining πιστώσεις';
  }

  @override
  String get addAllToList => 'Προσθήκη όλων στη λίστα';

  @override
  String get organizeByAisles => 'Οργάνωση ανά διαδρόμους';

  @override
  String get voiceTranscriptionTooltip => 'Φωνητική πληκτρολόγηση (Δωρεάν)';

  @override
  String get aiVoiceCommandTooltip => 'Φωνητική εντολή AI (Premium)';

  @override
  String get voiceCommandTitle => 'Φωνητική εντολή AI';

  @override
  String get voiceCommandContent =>
      'Μιλήστε φυσικά για να διαχειριστείτε τη λίστα σας!\n\nΠαραδείγματα:\n• \'Πρόσθεσε ψωμί, τυρί και ζαμπόν\'\n• \'Αφαίρεσε το απορρυπαντικό\'\n• \'Άλλαξε θέμα σε μπλε\'\n\nΑυτή είναι μια αποκλειστική λειτουργία του Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Δείτε τα πακέτα';

  @override
  String get itemsAddedSuccess => 'Τα στοιχεία προστέθηκαν επιτυχώς στη λίστα!';

  @override
  String get viewList => 'Προβολή λίστας';

  @override
  String get feedbackTitle => 'Αποστολή σχολίων';

  @override
  String get feedbackPrompt => 'Τι θα θέλατε να μοιραστείτε;';

  @override
  String get feedbackTypeBug => 'Αναφορά σφάλματος';

  @override
  String get feedbackTypeBugHint => 'Κάτι δεν λειτουργεί';

  @override
  String get feedbackTypeSuggestion => 'Πρόταση';

  @override
  String get feedbackTypeSuggestionHint => 'Ιδέα για βελτίωση της εφαρμογής';

  @override
  String get feedbackTypeTranslation => 'Θέμα μετάφρασης';

  @override
  String get feedbackTypeTranslationHint => 'Λανθασμένη ή περίεργη μετάφραση';

  @override
  String get feedbackTypeFeature => 'Αίτημα λειτουργίας';

  @override
  String get feedbackTypeFeatureHint => 'Λειτουργία που θα θέλατε να δείτε';

  @override
  String get feedbackTypeOther => 'Άλλο';

  @override
  String get feedbackTypeOtherHint => 'Άλλος τύπος σχολίου';

  @override
  String get feedbackHint => 'Περιγράψτε τα σχόλιά σας λεπτομερώς...';

  @override
  String get feedbackSend => 'Αποστολή σχολίων';

  @override
  String get feedbackSending => 'Αποστολή...';

  @override
  String get feedbackThankYou => 'Ευχαριστούμε!';

  @override
  String get feedbackThankYouMessage =>
      'Τα σχόλιά σας ελήφθησαν και μας βοηθούν να βελτιώσουμε το Lista Plus για όλους.';

  @override
  String get feedbackBack => 'Πίσω';

  @override
  String feedbackError(String error) {
    return 'Σφάλμα αποστολής: $error';
  }

  @override
  String get feedbackRetry => 'Δοκιμάστε ξανά';

  @override
  String get feedbackSettingsTitle => 'Αποστολή σχολίων';

  @override
  String get feedbackSettingsSubtitle =>
      'Αναφέρετε σφάλματα, προτείνετε βελτιώσεις ή διορθώστε μεταφράσεις';

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
  String get openMenu => 'Άνοιγμα μενού';

  @override
  String get viewRecipe => 'Προβολή συνταγής';

  @override
  String get recipeCreated => 'Η συνταγή δημιουργήθηκε!';

  @override
  String get editRecipe => 'Επεξεργασία';

  @override
  String get deleteRecipe => 'Διαγραφή';

  @override
  String get deleteRecipeConfirm => 'Διαγραφή αυτής της συνταγής;';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε τη συνταγή \"$recipeName\"; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get ingredients => 'Συστατικά';

  @override
  String get instructions => 'Οδηγίες';

  @override
  String get prepTime => 'Χρόνος προετοιμασίας';

  @override
  String get recipeSaved => 'Η συνταγή αποθηκεύτηκε!';

  @override
  String get noRecipesSaved => 'Δεν υπάρχουν αποθηκευμένες συνταγές';

  @override
  String get noRecipesSavedHint =>
      'Δημιουργήστε την πρώτη σας προσαρμοσμένη συνταγή πατώντας το παρακάτω κουμπί.';

  @override
  String get myRecipes => 'Οι συνταγές μου';

  @override
  String get newRecipe => 'Νέα συνταγή';

  @override
  String get loadingRecipes => 'Φόρτωση των συνταγών σας...';

  @override
  String get errorLoadingRecipes => 'Σφάλμα κατά τη φόρτωση των συνταγών';

  @override
  String get addIngredient => 'Προσθήκη συστατικού';

  @override
  String get saveRecipe => 'Αποθήκευση';

  @override
  String get recipeName => 'Όνομα συνταγής';

  @override
  String get shortDescription => 'Σύντομη περιγραφή';

  @override
  String get prepTimeMinutes => 'Χρόνος προετοιμασίας (λεπτά)';

  @override
  String get instructionsHint => 'Πληκτρολογήστε ένα βήμα ανά γραμμή...';

  @override
  String get addPhoto => 'Προσθήκη φωτογραφίας';

  @override
  String get imageUrlPlaceholder => 'Ή επικολλήστε ένα URL εικόνας';

  @override
  String get tags => 'Ετικέτες';

  @override
  String get recipeTags => 'Ετικέτες συνταγής';

  @override
  String get suggestedTags => 'Προτεινόμενα';

  @override
  String get searchRecipes => 'Αναζήτηση συνταγών...';

  @override
  String get filterByTag => 'Φιλτράρισμα ανά ετικέτα';

  @override
  String get allTags => 'Όλα';

  @override
  String get recipeDeleted => 'Η συνταγή διαγράφηκε';

  @override
  String get saveChanges => 'Αποθήκευση αλλαγών';

  @override
  String get editRecipeTitle => 'Επεξεργασία συνταγής';

  @override
  String get newRecipeTitle => 'Νέα συνταγή';

  @override
  String get requiredField => 'Απαιτείται';

  @override
  String get chooseImageSource => 'Επιλογή πηγής εικόνας';

  @override
  String get gallery => 'Συλλογή';

  @override
  String get enterUrl => 'Εισαγωγή URL';

  @override
  String get recipeImage => 'Εικόνα συνταγής';

  @override
  String get removeImage => 'Αφαίρεση εικόνας';

  @override
  String get mealPlannerTitle => 'Πρόγραμμα γευμάτων';

  @override
  String get mealPlannerViewMonthly => 'Μηνιαία προβολή';

  @override
  String get mealPlannerViewWeekly => 'Εβδομαδιαία προβολή';

  @override
  String get mealPlannerNoMeals => 'Δεν έχουν προγραμματιστεί γεύματα';

  @override
  String get mealPlannerNoMealsHint =>
      'Πατήστε μια ημέρα για να προσθέσετε ένα γεύμα';

  @override
  String get mealPlannerLoading => 'Φόρτωση προγράμματος γευμάτων...';

  @override
  String get mealPlannerError =>
      'Σφάλμα κατά τη φόρτωση του προγράμματος γευμάτων';

  @override
  String get mealPlannerAddMeal => 'Προσθήκη γεύματος';

  @override
  String get mealPlannerEditMeal => 'Επεξεργασία γεύματος';

  @override
  String get mealPlannerDeleteMeal => 'Αφαίρεση γεύματος';

  @override
  String get mealPlannerMealDeleted => 'Το γεύμα αφαιρέθηκε';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count μερίδες',
      one: '$count μερίδα',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Μερίδες';

  @override
  String get mealPlannerNoteLabel => 'Σημείωση (προαιρετικό)';

  @override
  String get mealPlannerSelectRecipe => 'Επιλέξτε μια συνταγή';

  @override
  String get mealPlannerSearchRecipes => 'Αναζήτηση συνταγών...';

  @override
  String get mealPlannerNoRecipesFound => 'Δεν βρέθηκαν συνταγές';

  @override
  String get mealPlannerNoRecipesHint =>
      'Δημιουργήστε πρώτα συνταγές στην καρτέλα Συνταγές';

  @override
  String get mealPlannerSave => 'Προσθήκη στο πρόγραμμα';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Προγραμματίστηκαν $count από $total γεύματα';
  }

  @override
  String get mealPlannerGenerateList => 'Δημιουργία λίστας αγορών';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Προσθήκη όλων των συστατικών από τα προγραμματισμένα γεύματα αυτής της εβδομάδας στη λίστα αγορών σας;';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Προστέθηκαν $count συστατικά στη λίστα σας!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Δεν υπάρχουν συστατικά για προσθήκη. Προγραμματίστε πρώτα μερικά γεύματα με συνταγές.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Δημιουργήστε πρώτα μια λίστα αγορών.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Πρωινό';

  @override
  String get mealPlannerMealTypeLunch => 'Μεσημεριανό';

  @override
  String get mealPlannerMealTypeDinner => 'Δείπνο';

  @override
  String get mealPlannerMealTypeSnack => 'Σνακ';

  @override
  String get mealPlannerDateLabel => 'Ημερομηνία';

  @override
  String get mealPlannerWeekEmpty =>
      'Τίποτα προγραμματισμένο για αυτήν την εβδομάδα';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Πατήστε οποιαδήποτε ημέρα για να ξεκινήσετε τον προγραμματισμό των γευμάτων σας!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes λεπτά';
  }
}
