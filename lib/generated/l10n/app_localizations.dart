import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
    Locale('pt', 'BR')
  ];

  /// Main app title
  ///
  /// In en, this message translates to:
  /// **'Shopping List'**
  String get appTitle;

  /// No description provided for @lists.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get lists;

  /// No description provided for @pantry.
  ///
  /// In en, this message translates to:
  /// **'Pantry'**
  String get pantry;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @upgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgrade;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String error(String message);

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String errorGeneric(String message);

  /// No description provided for @purchaseError.
  ///
  /// In en, this message translates to:
  /// **'Error processing purchase. Try again.'**
  String get purchaseError;

  /// No description provided for @restoreError.
  ///
  /// In en, this message translates to:
  /// **'Error restoring purchases. Try again.'**
  String get restoreError;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get fieldRequired;

  /// No description provided for @selectedItems.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, one{{count} selected} other{{count} selected}}'**
  String selectedItems(int count);

  /// No description provided for @estimated.
  ///
  /// In en, this message translates to:
  /// **'Estimated'**
  String get estimated;

  /// No description provided for @alreadyPurchased.
  ///
  /// In en, this message translates to:
  /// **'Already purchased'**
  String get alreadyPurchased;

  /// No description provided for @clearList.
  ///
  /// In en, this message translates to:
  /// **'Clear list'**
  String get clearList;

  /// No description provided for @clearPurchased.
  ///
  /// In en, this message translates to:
  /// **'Clear purchased'**
  String get clearPurchased;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @shareViaCode.
  ///
  /// In en, this message translates to:
  /// **'Share via code'**
  String get shareViaCode;

  /// No description provided for @importViaCode.
  ///
  /// In en, this message translates to:
  /// **'Import via code'**
  String get importViaCode;

  /// No description provided for @listAssistant.
  ///
  /// In en, this message translates to:
  /// **'List assistant'**
  String get listAssistant;

  /// No description provided for @globalAssistant.
  ///
  /// In en, this message translates to:
  /// **'Global assistant'**
  String get globalAssistant;

  /// No description provided for @becomePremium.
  ///
  /// In en, this message translates to:
  /// **'Become Premium'**
  String get becomePremium;

  /// No description provided for @manageSubscription.
  ///
  /// In en, this message translates to:
  /// **'Manage subscription'**
  String get manageSubscription;

  /// No description provided for @completePurchase.
  ///
  /// In en, this message translates to:
  /// **'Complete purchase'**
  String get completePurchase;

  /// No description provided for @confirmClearList.
  ///
  /// In en, this message translates to:
  /// **'Remove all items?'**
  String get confirmClearList;

  /// No description provided for @shareListTitle.
  ///
  /// In en, this message translates to:
  /// **'Share List'**
  String get shareListTitle;

  /// No description provided for @shareThisCode.
  ///
  /// In en, this message translates to:
  /// **'Share this code:'**
  String get shareThisCode;

  /// No description provided for @validForLimitedTime.
  ///
  /// In en, this message translates to:
  /// **'Valid for limited time'**
  String get validForLimitedTime;

  /// No description provided for @importListTitle.
  ///
  /// In en, this message translates to:
  /// **'Import List'**
  String get importListTitle;

  /// No description provided for @enterCodeHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the code'**
  String get enterCodeHint;

  /// No description provided for @confirmArchiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Complete Purchase'**
  String get confirmArchiveTitle;

  /// No description provided for @confirmArchiveContent.
  ///
  /// In en, this message translates to:
  /// **'Complete this purchase and archive the list?'**
  String get confirmArchiveContent;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @listArchived.
  ///
  /// In en, this message translates to:
  /// **'List archived successfully!'**
  String get listArchived;

  /// No description provided for @listAdded.
  ///
  /// In en, this message translates to:
  /// **'{listName} added!'**
  String listAdded(String listName);

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @unmark.
  ///
  /// In en, this message translates to:
  /// **'Unmark'**
  String get unmark;

  /// No description provided for @confirmDeleteItems.
  ///
  /// In en, this message translates to:
  /// **'Remove {count} item(s)?'**
  String confirmDeleteItems(int count);

  /// No description provided for @confirmDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmDeleteTitle;

  /// No description provided for @confirmContent.
  ///
  /// In en, this message translates to:
  /// **'Remove {count} item(s)?'**
  String confirmContent(int count);

  /// No description provided for @archiveList.
  ///
  /// In en, this message translates to:
  /// **'Archive list'**
  String get archiveList;

  /// No description provided for @pantryAppBar.
  ///
  /// In en, this message translates to:
  /// **'Pantry'**
  String get pantryAppBar;

  /// No description provided for @generateShoppingList.
  ///
  /// In en, this message translates to:
  /// **'Generate shopping list'**
  String get generateShoppingList;

  /// No description provided for @pantryEmpty.
  ///
  /// In en, this message translates to:
  /// **'Empty pantry'**
  String get pantryEmpty;

  /// No description provided for @pantryEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add products you want to keep at home'**
  String get pantryEmptySubtitle;

  /// No description provided for @itemsNeedPurchase.
  ///
  /// In en, this message translates to:
  /// **'{deficit} item(s) need to be bought'**
  String itemsNeedPurchase(int deficit);

  /// No description provided for @noItemsToBuy.
  ///
  /// In en, this message translates to:
  /// **'No items need to be bought'**
  String get noItemsToBuy;

  /// No description provided for @newPantryList.
  ///
  /// In en, this message translates to:
  /// **'Pantry Shopping'**
  String get newPantryList;

  /// No description provided for @newListTitle.
  ///
  /// In en, this message translates to:
  /// **'New Shopping List'**
  String get newListTitle;

  /// No description provided for @itemsWillBeAdded.
  ///
  /// In en, this message translates to:
  /// **'{count} item(s) will be added'**
  String itemsWillBeAdded(int count);

  /// No description provided for @listNameLabel.
  ///
  /// In en, this message translates to:
  /// **'List name'**
  String get listNameLabel;

  /// No description provided for @listCreated.
  ///
  /// In en, this message translates to:
  /// **'List \"{name}\" created with {count} items'**
  String listCreated(String name, int count);

  /// No description provided for @noTracking.
  ///
  /// In en, this message translates to:
  /// **'No tracking'**
  String get noTracking;

  /// No description provided for @markAsPurchased.
  ///
  /// In en, this message translates to:
  /// **'Mark as purchased'**
  String get markAsPurchased;

  /// No description provided for @editPantryItem.
  ///
  /// In en, this message translates to:
  /// **'Edit {name}'**
  String editPantryItem(String name);

  /// No description provided for @idealQuantity.
  ///
  /// In en, this message translates to:
  /// **'Ideal quantity'**
  String get idealQuantity;

  /// No description provided for @currentQuantity.
  ///
  /// In en, this message translates to:
  /// **'Current quantity'**
  String get currentQuantity;

  /// No description provided for @consumed.
  ///
  /// In en, this message translates to:
  /// **'Consumed'**
  String get consumed;

  /// No description provided for @restocked.
  ///
  /// In en, this message translates to:
  /// **'{name} restocked to {quantity} {unit}'**
  String restocked(String name, int quantity, String unit);

  /// No description provided for @confirmRemovePantry.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{name}\" from pantry?'**
  String confirmRemovePantry(String name);

  /// No description provided for @pantryEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit {name}'**
  String pantryEditTitle(String name);

  /// No description provided for @settingsAppBar.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsAppBar;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languagePortuguese.
  ///
  /// In en, this message translates to:
  /// **'Português (Brasil)'**
  String get languagePortuguese;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystem;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @themeColor.
  ///
  /// In en, this message translates to:
  /// **'Theme color'**
  String get themeColor;

  /// No description provided for @finance.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get finance;

  /// No description provided for @monthlyBudgetNav.
  ///
  /// In en, this message translates to:
  /// **'Monthly budget'**
  String get monthlyBudgetNav;

  /// No description provided for @budgetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track your monthly spending'**
  String get budgetSubtitle;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get data;

  /// No description provided for @backupNav.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backupNav;

  /// No description provided for @backupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Export or import your data'**
  String get backupSubtitle;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsOfUse;

  /// No description provided for @backupTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backupTitle;

  /// No description provided for @backupPremiumDescription.
  ///
  /// In en, this message translates to:
  /// **'Backup and export is a premium feature'**
  String get backupPremiumDescription;

  /// No description provided for @exportData.
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get exportData;

  /// No description provided for @exportDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Save all lists as JSON'**
  String get exportDataSubtitle;

  /// No description provided for @importData.
  ///
  /// In en, this message translates to:
  /// **'Import data'**
  String get importData;

  /// No description provided for @importDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Restore lists from a JSON'**
  String get importDataSubtitle;

  /// No description provided for @importJsonTitle.
  ///
  /// In en, this message translates to:
  /// **'Import JSON'**
  String get importJsonTitle;

  /// No description provided for @importJsonHint.
  ///
  /// In en, this message translates to:
  /// **'Paste the backup JSON here...'**
  String get importJsonHint;

  /// No description provided for @backupExported.
  ///
  /// In en, this message translates to:
  /// **'Backup exported!'**
  String get backupExported;

  /// No description provided for @budgetAppBar.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get budgetAppBar;

  /// No description provided for @budgetPremiumLocked.
  ///
  /// In en, this message translates to:
  /// **'Global monthly budget is premium'**
  String get budgetPremiumLocked;

  /// No description provided for @budgetUpgradePrompt.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to unlock'**
  String get budgetUpgradePrompt;

  /// No description provided for @noBudgetDefined.
  ///
  /// In en, this message translates to:
  /// **'No budget set'**
  String get noBudgetDefined;

  /// No description provided for @totalEstimated.
  ///
  /// In en, this message translates to:
  /// **'Total estimated: {amount}'**
  String totalEstimated(String amount);

  /// No description provided for @setBudgetButton.
  ///
  /// In en, this message translates to:
  /// **'Set budget'**
  String get setBudgetButton;

  /// No description provided for @budgetLists.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get budgetLists;

  /// No description provided for @budgetValueLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount (R\$)'**
  String get budgetValueLabel;

  /// No description provided for @setBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get setBudgetTitle;

  /// No description provided for @budgetAmountSpent.
  ///
  /// In en, this message translates to:
  /// **'{spent} / {budget}'**
  String budgetAmountSpent(String spent, String budget);

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get filterPending;

  /// No description provided for @filterPurchased.
  ///
  /// In en, this message translates to:
  /// **'Purchased'**
  String get filterPurchased;

  /// No description provided for @sortName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get sortName;

  /// No description provided for @sortCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get sortCategory;

  /// No description provided for @sortDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get sortDate;

  /// No description provided for @sortManual.
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get sortManual;

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get addItem;

  /// No description provided for @itemName.
  ///
  /// In en, this message translates to:
  /// **'Item name'**
  String get itemName;

  /// No description provided for @quantityShort.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get quantityShort;

  /// No description provided for @unit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unit;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @estimatedPrice.
  ///
  /// In en, this message translates to:
  /// **'Estimated price (R\$)'**
  String get estimatedPrice;

  /// No description provided for @addItemPrice.
  ///
  /// In en, this message translates to:
  /// **'Estimated price'**
  String get addItemPrice;

  /// No description provided for @editItem.
  ///
  /// In en, this message translates to:
  /// **'Edit Item'**
  String get editItem;

  /// No description provided for @quantityFull.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantityFull;

  /// No description provided for @editItemPrice.
  ///
  /// In en, this message translates to:
  /// **'Estimated price'**
  String get editItemPrice;

  /// No description provided for @addToPantry.
  ///
  /// In en, this message translates to:
  /// **'Add to Pantry'**
  String get addToPantry;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product name'**
  String get productName;

  /// No description provided for @idealQty.
  ///
  /// In en, this message translates to:
  /// **'Ideal qty'**
  String get idealQty;

  /// No description provided for @currentQty.
  ///
  /// In en, this message translates to:
  /// **'Current qty'**
  String get currentQty;

  /// No description provided for @trackStock.
  ///
  /// In en, this message translates to:
  /// **'Track stock'**
  String get trackStock;

  /// No description provided for @trackStockActive.
  ///
  /// In en, this message translates to:
  /// **'Appears in shopping suggestions'**
  String get trackStockActive;

  /// No description provided for @trackStockInactive.
  ///
  /// In en, this message translates to:
  /// **'Does not generate shopping suggestion'**
  String get trackStockInactive;

  /// No description provided for @createListDialog.
  ///
  /// In en, this message translates to:
  /// **'Create List'**
  String get createListDialog;

  /// No description provided for @renameListDialog.
  ///
  /// In en, this message translates to:
  /// **'Rename List'**
  String get renameListDialog;

  /// No description provided for @listHistory.
  ///
  /// In en, this message translates to:
  /// **'List History'**
  String get listHistory;

  /// No description provided for @myLists.
  ///
  /// In en, this message translates to:
  /// **'My Lists'**
  String get myLists;

  /// No description provided for @viewActive.
  ///
  /// In en, this message translates to:
  /// **'View Active'**
  String get viewActive;

  /// No description provided for @viewHistory.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get viewHistory;

  /// No description provided for @noArchivedLists.
  ///
  /// In en, this message translates to:
  /// **'No archived lists'**
  String get noArchivedLists;

  /// No description provided for @noActiveLists.
  ///
  /// In en, this message translates to:
  /// **'No active lists'**
  String get noActiveLists;

  /// No description provided for @completedOn.
  ///
  /// In en, this message translates to:
  /// **'Completed on {date}'**
  String completedOn(String date);

  /// No description provided for @sharedLabel.
  ///
  /// In en, this message translates to:
  /// **'Shared'**
  String get sharedLabel;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @removeSharedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeSharedTooltip;

  /// No description provided for @deleteListTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete list'**
  String get deleteListTitle;

  /// No description provided for @deleteListContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{name}\"? All items will be removed.'**
  String deleteListContent(String name);

  /// No description provided for @removeSharedListTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove shared list'**
  String get removeSharedListTitle;

  /// No description provided for @removeSharedListContent.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{name}\" from your lists? The original list will not be affected.'**
  String removeSharedListContent(String name);

  /// No description provided for @createNewList.
  ///
  /// In en, this message translates to:
  /// **'Create new list'**
  String get createNewList;

  /// No description provided for @aiAssistant.
  ///
  /// In en, this message translates to:
  /// **'AI Assistant'**
  String get aiAssistant;

  /// No description provided for @aiAssistantDescription.
  ///
  /// In en, this message translates to:
  /// **'Get smart suggestions, recipes and personalized tips with our AI assistant.'**
  String get aiAssistantDescription;

  /// No description provided for @generalAssistant.
  ///
  /// In en, this message translates to:
  /// **'General Assistant'**
  String get generalAssistant;

  /// No description provided for @clearHistory.
  ///
  /// In en, this message translates to:
  /// **'Clear History'**
  String get clearHistory;

  /// No description provided for @clearHistoryConfirm.
  ///
  /// In en, this message translates to:
  /// **'Clear all messages in this session?'**
  String get clearHistoryConfirm;

  /// No description provided for @chatHint.
  ///
  /// In en, this message translates to:
  /// **'Type your message...'**
  String get chatHint;

  /// No description provided for @chatError.
  ///
  /// In en, this message translates to:
  /// **'Error loading chat: {error}'**
  String chatError(String error);

  /// No description provided for @listHelp.
  ///
  /// In en, this message translates to:
  /// **'How can I help with your list?'**
  String get listHelp;

  /// No description provided for @generalHelp.
  ///
  /// In en, this message translates to:
  /// **'How can I help with your shopping today?'**
  String get generalHelp;

  /// No description provided for @chatSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ask for item suggestions, recipes or saving tips.'**
  String get chatSubtitle;

  /// No description provided for @aiError.
  ///
  /// In en, this message translates to:
  /// **'Sorry, an error occurred processing your request. Check your connection or try again later.'**
  String get aiError;

  /// No description provided for @listaPlusTitle.
  ///
  /// In en, this message translates to:
  /// **'Lista Plus'**
  String get listaPlusTitle;

  /// No description provided for @loginPrompt.
  ///
  /// In en, this message translates to:
  /// **'Log in to unlock\npremium features'**
  String get loginPrompt;

  /// No description provided for @signInGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInGoogle;

  /// No description provided for @signInApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInApple;

  /// No description provided for @continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as guest'**
  String get continueAsGuest;

  /// No description provided for @loginError.
  ///
  /// In en, this message translates to:
  /// **'Login error: {error}'**
  String loginError(String error);

  /// No description provided for @paywallTitle.
  ///
  /// In en, this message translates to:
  /// **'Lista Plus Premium'**
  String get paywallTitle;

  /// No description provided for @premiumUpgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to unlock'**
  String get premiumUpgrade;

  /// No description provided for @earnPremium.
  ///
  /// In en, this message translates to:
  /// **'Earn free Premium!'**
  String get earnPremium;

  /// No description provided for @watchAdDescription.
  ///
  /// In en, this message translates to:
  /// **'Watch a video and earn 24h of Premium'**
  String get watchAdDescription;

  /// No description provided for @watch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get watch;

  /// No description provided for @adsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Ads unavailable at the moment.'**
  String get adsUnavailable;

  /// No description provided for @adLoadError.
  ///
  /// In en, this message translates to:
  /// **'Error loading ad. Try again.'**
  String get adLoadError;

  /// No description provided for @adDisplayError.
  ///
  /// In en, this message translates to:
  /// **'Error displaying ad.'**
  String get adDisplayError;

  /// No description provided for @premium24h.
  ///
  /// In en, this message translates to:
  /// **'+24h of Premium!'**
  String get premium24h;

  /// No description provided for @itemRemoved.
  ///
  /// In en, this message translates to:
  /// **'Item removed'**
  String get itemRemoved;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @emptyListTitle.
  ///
  /// In en, this message translates to:
  /// **'Your list is empty'**
  String get emptyListTitle;

  /// No description provided for @emptyListSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add items to get started'**
  String get emptyListSubtitle;

  /// No description provided for @noListFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'No lists found'**
  String get noListFoundTitle;

  /// No description provided for @noListFoundSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first list to get started'**
  String get noListFoundSubtitle;

  /// No description provided for @createFirstList.
  ///
  /// In en, this message translates to:
  /// **'Create First List'**
  String get createFirstList;

  /// No description provided for @listBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'List Budget'**
  String get listBudgetTitle;

  /// No description provided for @budgetAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Budget amount'**
  String get budgetAmountLabel;

  /// No description provided for @removeBudget.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeBudget;

  /// No description provided for @prefUnlimitedLists.
  ///
  /// In en, this message translates to:
  /// **'Unlimited lists'**
  String get prefUnlimitedLists;

  /// No description provided for @prefSharing.
  ///
  /// In en, this message translates to:
  /// **'Share lists'**
  String get prefSharing;

  /// No description provided for @prefFullHistory.
  ///
  /// In en, this message translates to:
  /// **'Full history'**
  String get prefFullHistory;

  /// No description provided for @prefExportData.
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get prefExportData;

  /// No description provided for @prefCustomThemes.
  ///
  /// In en, this message translates to:
  /// **'Custom themes'**
  String get prefCustomThemes;

  /// No description provided for @prefMonthlyBudget.
  ///
  /// In en, this message translates to:
  /// **'Global monthly budget'**
  String get prefMonthlyBudget;

  /// No description provided for @prefAIAssistant.
  ///
  /// In en, this message translates to:
  /// **'Personal AI Assistant'**
  String get prefAIAssistant;

  /// No description provided for @prefUnlimitedPantry.
  ///
  /// In en, this message translates to:
  /// **'Unlimited pantry'**
  String get prefUnlimitedPantry;

  /// No description provided for @themeGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get themeGreen;

  /// No description provided for @themeBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get themeBlue;

  /// No description provided for @themePurple.
  ///
  /// In en, this message translates to:
  /// **'Purple'**
  String get themePurple;

  /// No description provided for @themeRed.
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get themeRed;

  /// No description provided for @themeOrange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get themeOrange;

  /// No description provided for @themePink.
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get themePink;

  /// No description provided for @themeIndigo.
  ///
  /// In en, this message translates to:
  /// **'Indigo'**
  String get themeIndigo;

  /// No description provided for @themeAmber.
  ///
  /// In en, this message translates to:
  /// **'Amber'**
  String get themeAmber;

  /// No description provided for @themeTeal.
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get themeTeal;

  /// No description provided for @themeBrown.
  ///
  /// In en, this message translates to:
  /// **'Brown'**
  String get themeBrown;

  /// No description provided for @catFruits.
  ///
  /// In en, this message translates to:
  /// **'Fruits'**
  String get catFruits;

  /// No description provided for @catCleaning.
  ///
  /// In en, this message translates to:
  /// **'Cleaning'**
  String get catCleaning;

  /// No description provided for @catBeverages.
  ///
  /// In en, this message translates to:
  /// **'Beverages'**
  String get catBeverages;

  /// No description provided for @catBakery.
  ///
  /// In en, this message translates to:
  /// **'Bakery'**
  String get catBakery;

  /// No description provided for @catOthers.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get catOthers;

  /// No description provided for @unitPack.
  ///
  /// In en, this message translates to:
  /// **'pack'**
  String get unitPack;

  /// No description provided for @shareSubject.
  ///
  /// In en, this message translates to:
  /// **'Shopping List'**
  String get shareSubject;

  /// No description provided for @monthlyBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get monthlyBudgetTitle;

  /// No description provided for @monthlyBudgetSpent.
  ///
  /// In en, this message translates to:
  /// **'{spent} / {budget}'**
  String monthlyBudgetSpent(String spent, String budget);

  /// No description provided for @deleteListConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete list'**
  String get deleteListConfirm;

  /// No description provided for @pantryItemRemoved.
  ///
  /// In en, this message translates to:
  /// **'Item removed'**
  String get pantryItemRemoved;

  /// No description provided for @deficitItems.
  ///
  /// In en, this message translates to:
  /// **'{deficit,plural, one{{deficit} item needs to be bought} other{{deficit} items need to be bought}}'**
  String deficitItems(int deficit);

  /// No description provided for @cartTotal.
  ///
  /// In en, this message translates to:
  /// **'Cart total'**
  String get cartTotal;

  /// No description provided for @restockLabel.
  ///
  /// In en, this message translates to:
  /// **'Restock'**
  String get restockLabel;

  /// No description provided for @adFree.
  ///
  /// In en, this message translates to:
  /// **'Ad free'**
  String get adFree;

  /// No description provided for @advancedFeatures.
  ///
  /// In en, this message translates to:
  /// **'Advanced features'**
  String get advancedFeatures;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @deselectAll.
  ///
  /// In en, this message translates to:
  /// **'Deselect all'**
  String get deselectAll;

  /// No description provided for @monthlyBudgetAppBar.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get monthlyBudgetAppBar;

  /// No description provided for @budgetEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get budgetEditTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt': {
  switch (locale.countryCode) {
    case 'BR': return AppLocalizationsPtBr();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pt': return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
