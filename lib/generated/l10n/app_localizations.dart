import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bn', 'BD'),
    Locale('ca'),
    Locale('cs'),
    Locale('cs', 'CZ'),
    Locale('da'),
    Locale('da', 'DK'),
    Locale('de'),
    Locale('de', 'DE'),
    Locale('el'),
    Locale('el', 'GR'),
    Locale('en'),
    Locale('en', 'AU'),
    Locale('en', 'CA'),
    Locale('en', 'GB'),
    Locale('en', 'IN'),
    Locale('en', 'SG'),
    Locale('en', 'ZA'),
    Locale('es'),
    Locale('es', '419'),
    Locale('es', 'ES'),
    Locale('es', 'US'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fa', 'AE'),
    Locale('fa', 'AF'),
    Locale('fa', 'IR'),
    Locale('fi'),
    Locale('fi', 'FI'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('fr', 'FR'),
    Locale('gl'),
    Locale('gl', 'ES'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hi', 'IN'),
    Locale('hr'),
    Locale('hu'),
    Locale('hu', 'HU'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('is', 'IS'),
    Locale('it'),
    Locale('it', 'IT'),
    Locale('he', 'IL'),
    Locale('ja'),
    Locale('ja', 'JP'),
    Locale('ka'),
    Locale('ka', 'GE'),
    Locale('kk'),
    Locale('km'),
    Locale('km', 'KH'),
    Locale('kn'),
    Locale('kn', 'IN'),
    Locale('ko'),
    Locale('ko', 'KR'),
    Locale('ky'),
    Locale('ky', 'KG'),
    Locale('lo'),
    Locale('lo', 'LA'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('mk', 'MK'),
    Locale('ml'),
    Locale('ml', 'IN'),
    Locale('mn'),
    Locale('mn', 'MN'),
    Locale('mr'),
    Locale('mr', 'IN'),
    Locale('ms'),
    Locale('ms', 'MY'),
    Locale('my'),
    Locale('ne'),
    Locale('ne', 'NP'),
    Locale('nl'),
    Locale('nl', 'NL'),
    Locale('no'),
    Locale('no', 'NO'),
    Locale('pa'),
    Locale('pl'),
    Locale('pl', 'PL'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('rm'),
    Locale('ro'),
    Locale('ru'),
    Locale('ru', 'RU'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sv', 'SE'),
    Locale('sw'),
    Locale('ta'),
    Locale('ta', 'IN'),
    Locale('te'),
    Locale('te', 'IN'),
    Locale('th'),
    Locale('tr'),
    Locale('tr', 'TR'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'TW'),
    Locale('zu'),
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

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @regenerate.
  ///
  /// In en, this message translates to:
  /// **'Regenerate'**
  String get regenerate;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

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

  /// No description provided for @addedFeedback.
  ///
  /// In en, this message translates to:
  /// **'Added!'**
  String get addedFeedback;

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

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get chooseLanguage;

  /// No description provided for @searchLanguage.
  ///
  /// In en, this message translates to:
  /// **'Search language...'**
  String get searchLanguage;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @chooseCurrency.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get chooseCurrency;

  /// No description provided for @searchCurrency.
  ///
  /// In en, this message translates to:
  /// **'Search currency...'**
  String get searchCurrency;

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

  /// No description provided for @dynamicColors.
  ///
  /// In en, this message translates to:
  /// **'Dynamic colors'**
  String get dynamicColors;

  /// No description provided for @dynamicColorsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use colors based on your wallpaper'**
  String get dynamicColorsSubtitle;

  /// SnackBar shown when user picks a color while Dynamic Colors is on
  ///
  /// In en, this message translates to:
  /// **'Disable dynamic colors for the theme color to take effect'**
  String get dynamicColorsEnabledWarning;

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
  /// **'Amount'**
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
  /// **'Estimated price'**
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

  /// No description provided for @addToPantryPrompt.
  ///
  /// In en, this message translates to:
  /// **'Add \"{name}\" to your Pantry?'**
  String addToPantryPrompt(String name);

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

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

  /// No description provided for @newChat.
  ///
  /// In en, this message translates to:
  /// **'New Chat'**
  String get newChat;

  /// No description provided for @noHistory.
  ///
  /// In en, this message translates to:
  /// **'No chat history'**
  String get noHistory;

  /// No description provided for @deleteSession.
  ///
  /// In en, this message translates to:
  /// **'Delete Chat'**
  String get deleteSession;

  /// No description provided for @deleteSessionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this chat? The messages will be permanently lost.'**
  String get deleteSessionConfirm;

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

  /// No description provided for @chatHintBlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlock AI to chat'**
  String get chatHintBlocked;

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

  /// No description provided for @aiLimitAlmostReached.
  ///
  /// In en, this message translates to:
  /// **'Almost out of AI messages'**
  String get aiLimitAlmostReached;

  /// No description provided for @unlockAi.
  ///
  /// In en, this message translates to:
  /// **'Unlock unlimited AI'**
  String get unlockAi;

  /// No description provided for @aiTeaserFallback.
  ///
  /// In en, this message translates to:
  /// **'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...'**
  String get aiTeaserFallback;

  /// No description provided for @kipiListTitle.
  ///
  /// In en, this message translates to:
  /// **'KipiList'**
  String get kipiListTitle;

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

  /// Slide 1 headline
  ///
  /// In en, this message translates to:
  /// **'Welcome to KipiList'**
  String get onboardingWelcomeTitle;

  /// Slide 1 body
  ///
  /// In en, this message translates to:
  /// **'The smartest way to organize your shopping and save money.'**
  String get onboardingWelcomeDesc;

  /// Slide setup headline
  ///
  /// In en, this message translates to:
  /// **'Personalize your experience'**
  String get onboardingSetupTitle;

  /// Slide setup body
  ///
  /// In en, this message translates to:
  /// **'Choose how you want KipiList to look and work for you.'**
  String get onboardingSetupDesc;

  /// Slide 2 headline
  ///
  /// In en, this message translates to:
  /// **'Save everything to the cloud'**
  String get onboardingLoginTitle;

  /// Slide 2 body
  ///
  /// In en, this message translates to:
  /// **'Your data synced across all your devices'**
  String get onboardingLoginDesc;

  /// Slide 3 headline
  ///
  /// In en, this message translates to:
  /// **'Share with the ones you love'**
  String get onboardingShareTitle;

  /// Slide 3 body
  ///
  /// In en, this message translates to:
  /// **'Sync lists with family and friends in real time'**
  String get onboardingShareDesc;

  /// Slide 4 headline
  ///
  /// In en, this message translates to:
  /// **'Unlock all features'**
  String get onboardingPremiumTitle;

  /// Slide 4 subtitle
  ///
  /// In en, this message translates to:
  /// **'Get the most out of your shopping lists'**
  String get onboardingPremiumSubtitle;

  /// Annual plan badge
  ///
  /// In en, this message translates to:
  /// **'Best Value'**
  String get onboardingAnnualBadge;

  /// Monthly plan label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get onboardingMonthlyLabel;

  /// Annual plan label
  ///
  /// In en, this message translates to:
  /// **'Annual'**
  String get onboardingAnnualLabel;

  /// Link to show additional plans
  ///
  /// In en, this message translates to:
  /// **'View all plans'**
  String get onboardingViewAllPlans;

  /// Subscribe button text
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get onboardingSubscribeCta;

  /// Cancellation disclaimer
  ///
  /// In en, this message translates to:
  /// **'Cancel anytime. No commitment.'**
  String get onboardingCancelAnytime;

  /// Skip login link
  ///
  /// In en, this message translates to:
  /// **'Continue as guest'**
  String get onboardingContinueAsGuest;

  /// Restore purchases button
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get onboardingRestore;

  /// Explanation for restore button
  ///
  /// In en, this message translates to:
  /// **'Already have a subscription? Tap here to restore it.'**
  String get onboardingRestoreDesc;

  /// Exit button text
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get onboardingExit;

  /// Personalization slide headline
  ///
  /// In en, this message translates to:
  /// **'Let\'s get to know you'**
  String get onboardingPersonalizationTitle;

  /// Personalization slide body text
  ///
  /// In en, this message translates to:
  /// **'We\'ll use this to personalize your suggestions and make shopping smarter.'**
  String get onboardingPersonalizationDesc;

  /// Favorite food field label
  ///
  /// In en, this message translates to:
  /// **'What\'s your favorite food?'**
  String get onboardingPersonalizationFoodLabel;

  /// Favorite food field hint
  ///
  /// In en, this message translates to:
  /// **'e.g. Pizza, Sushi, Lasagna...'**
  String get onboardingPersonalizationFoodHint;

  /// Personalization step continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingPersonalizationCta;

  /// Skip personalization link
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get onboardingPersonalizationSkip;

  /// Validation message when food field is empty
  ///
  /// In en, this message translates to:
  /// **'Tell us your favorite food to continue'**
  String get onboardingPersonalizationFoodRequired;

  /// Settings option label
  ///
  /// In en, this message translates to:
  /// **'Default home screen'**
  String get settingsDefaultScreen;

  /// Settings option subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose between shopping list or AI chat'**
  String get settingsDefaultScreenSubtitle;

  /// List screen option
  ///
  /// In en, this message translates to:
  /// **'Shopping List'**
  String get settingsScreenList;

  /// Chat screen option
  ///
  /// In en, this message translates to:
  /// **'AI Chat'**
  String get settingsScreenChat;

  /// No description provided for @loginError.
  ///
  /// In en, this message translates to:
  /// **'Login error: {error}'**
  String loginError(String error);

  /// No description provided for @paywallTitle.
  ///
  /// In en, this message translates to:
  /// **'KipiList Premium'**
  String get paywallTitle;

  /// No description provided for @paywallLoadingError.
  ///
  /// In en, this message translates to:
  /// **'Error loading offers. Try again.'**
  String get paywallLoadingError;

  /// No description provided for @paywallPurchaseError.
  ///
  /// In en, this message translates to:
  /// **'Could not complete purchase. Try again.'**
  String get paywallPurchaseError;

  /// No description provided for @paywallRestoreError.
  ///
  /// In en, this message translates to:
  /// **'No active subscription found to restore.'**
  String get paywallRestoreError;

  /// No description provided for @paywallTrialDays.
  ///
  /// In en, this message translates to:
  /// **'{days} DAYS FREE'**
  String paywallTrialDays(Object days);

  /// No description provided for @paywallTrialWeeks.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, one{{count} WEEK FREE} other{{count} WEEKS FREE}}'**
  String paywallTrialWeeks(num count);

  /// No description provided for @paywallTrialMonths.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, one{{count} MONTH FREE} other{{count} MONTHS FREE}}'**
  String paywallTrialMonths(num count);

  /// No description provided for @paywallFeaturesTitle.
  ///
  /// In en, this message translates to:
  /// **'Everything you need:'**
  String get paywallFeaturesTitle;

  /// No description provided for @paywallFeatureUnlimitedLists.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Lists'**
  String get paywallFeatureUnlimitedLists;

  /// No description provided for @paywallFeatureSmartAI.
  ///
  /// In en, this message translates to:
  /// **'Smart AI'**
  String get paywallFeatureSmartAI;

  /// No description provided for @paywallFeatureExpenseControl.
  ///
  /// In en, this message translates to:
  /// **'Expense Control'**
  String get paywallFeatureExpenseControl;

  /// No description provided for @paywallFeatureSharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get paywallFeatureSharing;

  /// No description provided for @paywallBeforeAfterTitle.
  ///
  /// In en, this message translates to:
  /// **'AI Before and After:'**
  String get paywallBeforeAfterTitle;

  /// No description provided for @paywallLabelCommon.
  ///
  /// In en, this message translates to:
  /// **'Common'**
  String get paywallLabelCommon;

  /// No description provided for @paywallLabelPro.
  ///
  /// In en, this message translates to:
  /// **'KipiList PRO'**
  String get paywallLabelPro;

  /// No description provided for @paywallBeforeItem1.
  ///
  /// In en, this message translates to:
  /// **'rice'**
  String get paywallBeforeItem1;

  /// No description provided for @paywallBeforeItem2.
  ///
  /// In en, this message translates to:
  /// **'soap'**
  String get paywallBeforeItem2;

  /// No description provided for @paywallBeforeItem3.
  ///
  /// In en, this message translates to:
  /// **'meat'**
  String get paywallBeforeItem3;

  /// No description provided for @paywallBeforeItem4.
  ///
  /// In en, this message translates to:
  /// **'bread'**
  String get paywallBeforeItem4;

  /// No description provided for @paywallAfterItem1.
  ///
  /// In en, this message translates to:
  /// **'Grains'**
  String get paywallAfterItem1;

  /// No description provided for @paywallAfterItem2.
  ///
  /// In en, this message translates to:
  /// **'Cleaning'**
  String get paywallAfterItem2;

  /// No description provided for @paywallAfterItem3.
  ///
  /// In en, this message translates to:
  /// **'Meats'**
  String get paywallAfterItem3;

  /// No description provided for @paywallAfterItem4.
  ///
  /// In en, this message translates to:
  /// **'Bakery'**
  String get paywallAfterItem4;

  /// No description provided for @paywallTestimonialsTitle.
  ///
  /// In en, this message translates to:
  /// **'What our users say:'**
  String get paywallTestimonialsTitle;

  /// No description provided for @paywallTestimonial1Name.
  ///
  /// In en, this message translates to:
  /// **'Ann S.'**
  String get paywallTestimonial1Name;

  /// No description provided for @paywallTestimonial1Text.
  ///
  /// In en, this message translates to:
  /// **'AI organizes my shopping in seconds. I save 20 min per market trip.'**
  String get paywallTestimonial1Text;

  /// No description provided for @paywallTestimonial2Name.
  ///
  /// In en, this message translates to:
  /// **'Charles M.'**
  String get paywallTestimonial2Name;

  /// No description provided for @paywallTestimonial2Text.
  ///
  /// In en, this message translates to:
  /// **'I never forgot a list item again. The AI chat is sensational!'**
  String get paywallTestimonial2Text;

  /// No description provided for @paywallSocialProof.
  ///
  /// In en, this message translates to:
  /// **'Join thousands of smart shoppers saving time and money'**
  String get paywallSocialProof;

  /// No description provided for @paywallCtaUnlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock KipiList PRO'**
  String get paywallCtaUnlock;

  /// No description provided for @paywallCtaTrial.
  ///
  /// In en, this message translates to:
  /// **'Start My Free Trial'**
  String get paywallCtaTrial;

  /// No description provided for @paywallBestValue.
  ///
  /// In en, this message translates to:
  /// **'BEST VALUE'**
  String get paywallBestValue;

  /// No description provided for @paywallMostPopular.
  ///
  /// In en, this message translates to:
  /// **'MOST POPULAR'**
  String get paywallMostPopular;

  /// No description provided for @paywallSafeCheckout.
  ///
  /// In en, this message translates to:
  /// **'Secure payment via App Store/Play Store'**
  String get paywallSafeCheckout;

  /// No description provided for @paywallSelectPlan.
  ///
  /// In en, this message translates to:
  /// **'Choose your plan:'**
  String get paywallSelectPlan;

  /// No description provided for @paywallSavePercent.
  ///
  /// In en, this message translates to:
  /// **'SAVE {percent}%'**
  String paywallSavePercent(Object percent);

  /// No description provided for @paywallPricePerMonth.
  ///
  /// In en, this message translates to:
  /// **'Only {price}/month'**
  String paywallPricePerMonth(Object price);

  /// No description provided for @paywallPackageAnnual.
  ///
  /// In en, this message translates to:
  /// **'Annual Plan'**
  String get paywallPackageAnnual;

  /// No description provided for @paywallPackageMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly Plan'**
  String get paywallPackageMonthly;

  /// No description provided for @paywallPackageLifetime.
  ///
  /// In en, this message translates to:
  /// **'Lifetime Access'**
  String get paywallPackageLifetime;

  /// No description provided for @paywallCancelAnytime.
  ///
  /// In en, this message translates to:
  /// **'Cancel anytime. No commitment.'**
  String get paywallCancelAnytime;

  /// No description provided for @paywallPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get paywallPolicy;

  /// No description provided for @paywallTerms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get paywallTerms;

  /// No description provided for @paywallRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get paywallRestore;

  /// No description provided for @premiumUpgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to unlock'**
  String get premiumUpgrade;

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

  /// No description provided for @prefInteractiveArtifacts.
  ///
  /// In en, this message translates to:
  /// **'Interactive AI Artifacts'**
  String get prefInteractiveArtifacts;

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

  /// No description provided for @budgetDashboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get budgetDashboardTitle;

  /// No description provided for @selectListForDashboard.
  ///
  /// In en, this message translates to:
  /// **'Select a list to view the dashboard.'**
  String get selectListForDashboard;

  /// No description provided for @spendingAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Spending Analysis'**
  String get spendingAnalysis;

  /// No description provided for @noItemsToAnalyze.
  ///
  /// In en, this message translates to:
  /// **'No items in the list to analyze.'**
  String get noItemsToAnalyze;

  /// No description provided for @markItemsToSeeAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Mark items as purchased to see the analysis.'**
  String get markItemsToSeeAnalysis;

  /// No description provided for @totalSpending.
  ///
  /// In en, this message translates to:
  /// **'Total Spent'**
  String get totalSpending;

  /// No description provided for @spendingByCategory.
  ///
  /// In en, this message translates to:
  /// **'Spending by Category'**
  String get spendingByCategory;

  /// No description provided for @achievements.
  ///
  /// In en, this message translates to:
  /// **'Achievements'**
  String get achievements;

  /// No description provided for @exportPdfExcel.
  ///
  /// In en, this message translates to:
  /// **'Export PDF/Excel'**
  String get exportPdfExcel;

  /// No description provided for @exportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export as PDF'**
  String get exportPdf;

  /// No description provided for @exportExcel.
  ///
  /// In en, this message translates to:
  /// **'Export as Excel'**
  String get exportExcel;

  /// No description provided for @organizingAi.
  ///
  /// In en, this message translates to:
  /// **'ORGANIZING WITH AI...'**
  String get organizingAi;

  /// No description provided for @yesLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesLabel;

  /// No description provided for @noLabel.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noLabel;

  /// No description provided for @shareListText.
  ///
  /// In en, this message translates to:
  /// **'My Shopping List'**
  String get shareListText;

  /// No description provided for @emptyListAddItems.
  ///
  /// In en, this message translates to:
  /// **'Your list is empty! Add items first. ℹ️'**
  String get emptyListAddItems;

  /// No description provided for @listOrganizedMagic.
  ///
  /// In en, this message translates to:
  /// **'List magically organized by categories! ✨'**
  String get listOrganizedMagic;

  /// No description provided for @shoppingMode.
  ///
  /// In en, this message translates to:
  /// **'Shopping Mode'**
  String get shoppingMode;

  /// No description provided for @smartOrganization.
  ///
  /// In en, this message translates to:
  /// **'Smart Organization'**
  String get smartOrganization;

  /// No description provided for @savings.
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get savings;

  /// No description provided for @shoppingModeHeader.
  ///
  /// In en, this message translates to:
  /// **'SHOPPING MODE'**
  String get shoppingModeHeader;

  /// No description provided for @shareAsText.
  ///
  /// In en, this message translates to:
  /// **'Send items as formatted text'**
  String get shareAsText;

  /// No description provided for @shareRealtime.
  ///
  /// In en, this message translates to:
  /// **'Real-time sync with other people'**
  String get shareRealtime;

  /// No description provided for @quickRecipe.
  ///
  /// In en, this message translates to:
  /// **'Quick recipe'**
  String get quickRecipe;

  /// No description provided for @quickRecipePrompt.
  ///
  /// In en, this message translates to:
  /// **'Suggest recipes with items from my list.'**
  String get quickRecipePrompt;

  /// No description provided for @economyTips.
  ///
  /// In en, this message translates to:
  /// **'Economy tips'**
  String get economyTips;

  /// No description provided for @economyTipsPrompt.
  ///
  /// In en, this message translates to:
  /// **'How can I save money on this purchase?'**
  String get economyTipsPrompt;

  /// No description provided for @organizeAisles.
  ///
  /// In en, this message translates to:
  /// **'Organize by aisles'**
  String get organizeAisles;

  /// No description provided for @organizeAislesPrompt.
  ///
  /// In en, this message translates to:
  /// **'Organize by market aisles.'**
  String get organizeAislesPrompt;

  /// No description provided for @recipeSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Recipe suggestion'**
  String get recipeSuggestion;

  /// No description provided for @aiCreditsRemaining.
  ///
  /// In en, this message translates to:
  /// **'{remaining} credits remaining'**
  String aiCreditsRemaining(int remaining);

  /// No description provided for @addAllToList.
  ///
  /// In en, this message translates to:
  /// **'Add all to list'**
  String get addAllToList;

  /// No description provided for @organizeByAisles.
  ///
  /// In en, this message translates to:
  /// **'Organize by aisles'**
  String get organizeByAisles;

  /// No description provided for @voiceTranscriptionTooltip.
  ///
  /// In en, this message translates to:
  /// **'Voice typing (Free)'**
  String get voiceTranscriptionTooltip;

  /// No description provided for @aiVoiceCommandTooltip.
  ///
  /// In en, this message translates to:
  /// **'AI Voice Command (Premium)'**
  String get aiVoiceCommandTooltip;

  /// No description provided for @voiceCommandTitle.
  ///
  /// In en, this message translates to:
  /// **'AI Voice Command'**
  String get voiceCommandTitle;

  /// No description provided for @voiceCommandContent.
  ///
  /// In en, this message translates to:
  /// **'Speak naturally to manage your list!\n\nExamples:\n• \'Add bread, cheese, and ham\'\n• \'Remove laundry detergent\'\n• \'Change theme to blue\'\n\nThis is an exclusive feature of KipiList Premium.'**
  String get voiceCommandContent;

  /// No description provided for @voiceCommandPlanBtn.
  ///
  /// In en, this message translates to:
  /// **'View Plans'**
  String get voiceCommandPlanBtn;

  /// No description provided for @itemsAddedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Items successfully added to list!'**
  String get itemsAddedSuccess;

  /// No description provided for @viewList.
  ///
  /// In en, this message translates to:
  /// **'View list'**
  String get viewList;

  /// No description provided for @feedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get feedbackTitle;

  /// No description provided for @feedbackPrompt.
  ///
  /// In en, this message translates to:
  /// **'What would you like to share?'**
  String get feedbackPrompt;

  /// No description provided for @feedbackTypeBug.
  ///
  /// In en, this message translates to:
  /// **'Report Bug'**
  String get feedbackTypeBug;

  /// No description provided for @feedbackTypeBugHint.
  ///
  /// In en, this message translates to:
  /// **'Something is not working'**
  String get feedbackTypeBugHint;

  /// No description provided for @feedbackTypeSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Suggestion'**
  String get feedbackTypeSuggestion;

  /// No description provided for @feedbackTypeSuggestionHint.
  ///
  /// In en, this message translates to:
  /// **'Idea to improve the app'**
  String get feedbackTypeSuggestionHint;

  /// No description provided for @feedbackTypeTranslation.
  ///
  /// In en, this message translates to:
  /// **'Translation Issue'**
  String get feedbackTypeTranslation;

  /// No description provided for @feedbackTypeTranslationHint.
  ///
  /// In en, this message translates to:
  /// **'Incorrect or awkward translation'**
  String get feedbackTypeTranslationHint;

  /// No description provided for @feedbackTypeFeature.
  ///
  /// In en, this message translates to:
  /// **'Feature Request'**
  String get feedbackTypeFeature;

  /// No description provided for @feedbackTypeFeatureHint.
  ///
  /// In en, this message translates to:
  /// **'Feature you would like to see'**
  String get feedbackTypeFeatureHint;

  /// No description provided for @feedbackTypeOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get feedbackTypeOther;

  /// No description provided for @feedbackTypeOtherHint.
  ///
  /// In en, this message translates to:
  /// **'Other type of feedback'**
  String get feedbackTypeOtherHint;

  /// No description provided for @feedbackHint.
  ///
  /// In en, this message translates to:
  /// **'Describe your feedback in detail...'**
  String get feedbackHint;

  /// No description provided for @feedbackSend.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get feedbackSend;

  /// No description provided for @feedbackSending.
  ///
  /// In en, this message translates to:
  /// **'Sending...'**
  String get feedbackSending;

  /// No description provided for @feedbackThankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank You!'**
  String get feedbackThankYou;

  /// No description provided for @feedbackThankYouMessage.
  ///
  /// In en, this message translates to:
  /// **'Your feedback has been received and helps us improve KipiList for everyone.'**
  String get feedbackThankYouMessage;

  /// No description provided for @feedbackBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get feedbackBack;

  /// No description provided for @feedbackError.
  ///
  /// In en, this message translates to:
  /// **'Error sending: {error}'**
  String feedbackError(String error);

  /// No description provided for @feedbackRetry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get feedbackRetry;

  /// No description provided for @feedbackSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get feedbackSettingsTitle;

  /// No description provided for @feedbackSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Report bugs, suggest improvements or fix translations'**
  String get feedbackSettingsSubtitle;

  /// No description provided for @aiEnergy.
  ///
  /// In en, this message translates to:
  /// **'AI Energy'**
  String get aiEnergy;

  /// No description provided for @searchInConversation.
  ///
  /// In en, this message translates to:
  /// **'Search in conversation...'**
  String get searchInConversation;

  /// No description provided for @noMessagesFound.
  ///
  /// In en, this message translates to:
  /// **'No messages found'**
  String get noMessagesFound;

  /// No description provided for @suggestedQuestions.
  ///
  /// In en, this message translates to:
  /// **'Suggested questions:'**
  String get suggestedQuestions;

  /// No description provided for @shoppingAssistant.
  ///
  /// In en, this message translates to:
  /// **'Shopping assistant'**
  String get shoppingAssistant;

  /// No description provided for @itemsPurchasedCount.
  ///
  /// In en, this message translates to:
  /// **'{purchased} of {total} purchased'**
  String itemsPurchasedCount(int purchased, int total);

  /// No description provided for @estimatedCost.
  ///
  /// In en, this message translates to:
  /// **'Estimated'**
  String get estimatedCost;

  /// No description provided for @viewItems.
  ///
  /// In en, this message translates to:
  /// **'View items'**
  String get viewItems;

  /// No description provided for @noItemsInList.
  ///
  /// In en, this message translates to:
  /// **'No items in the list'**
  String get noItemsInList;

  /// No description provided for @longHistoryWarning.
  ///
  /// In en, this message translates to:
  /// **'Long history: the assistant focuses on the latest messages for better performance.'**
  String get longHistoryWarning;

  /// No description provided for @listening.
  ///
  /// In en, this message translates to:
  /// **'Listening...'**
  String get listening;

  /// No description provided for @addDirectToList.
  ///
  /// In en, this message translates to:
  /// **'Add directly to list'**
  String get addDirectToList;

  /// No description provided for @unlockFullResponse.
  ///
  /// In en, this message translates to:
  /// **'Unlock Full Response'**
  String get unlockFullResponse;

  /// No description provided for @switchList.
  ///
  /// In en, this message translates to:
  /// **'Switch list'**
  String get switchList;

  /// No description provided for @marketMode.
  ///
  /// In en, this message translates to:
  /// **'Market Mode'**
  String get marketMode;

  /// No description provided for @backToChat.
  ///
  /// In en, this message translates to:
  /// **'Back to Chat'**
  String get backToChat;

  /// No description provided for @finishShopping.
  ///
  /// In en, this message translates to:
  /// **'Finish Shopping'**
  String get finishShopping;

  /// No description provided for @welcomeAiAssistant.
  ///
  /// In en, this message translates to:
  /// **'Welcome to AI Assistant'**
  String get welcomeAiAssistant;

  /// No description provided for @createListToStartAi.
  ///
  /// In en, this message translates to:
  /// **'Create a shopping list to start using the smart chat.'**
  String get createListToStartAi;

  /// No description provided for @howCanIHelp.
  ///
  /// In en, this message translates to:
  /// **'How can I help?'**
  String get howCanIHelp;

  /// No description provided for @chatSubtitleShort.
  ///
  /// In en, this message translates to:
  /// **'Ask about prices, recipes, organization...'**
  String get chatSubtitleShort;

  /// No description provided for @itemsPurchasedShort.
  ///
  /// In en, this message translates to:
  /// **'{purchased}/{total} purchased'**
  String itemsPurchasedShort(int purchased, int total);

  /// No description provided for @quickReplies.
  ///
  /// In en, this message translates to:
  /// **'Quick replies:'**
  String get quickReplies;

  /// No description provided for @voiceProFeature.
  ///
  /// In en, this message translates to:
  /// **'Advanced voice commands are Pro. Enabling basic dictation...'**
  String get voiceProFeature;

  /// No description provided for @viewPro.
  ///
  /// In en, this message translates to:
  /// **'View Pro'**
  String get viewPro;

  /// No description provided for @errorLoadingChat.
  ///
  /// In en, this message translates to:
  /// **'Oops! Something went wrong loading the chat.'**
  String get errorLoadingChat;

  /// No description provided for @errorLoadingChatSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Check your connection or try again later.'**
  String get errorLoadingChatSubtitle;

  /// No description provided for @errorOscillation.
  ///
  /// In en, this message translates to:
  /// **'This may occur due to network oscillations or temporary unavailability. Please try again.'**
  String get errorOscillation;

  /// No description provided for @activeListening.
  ///
  /// In en, this message translates to:
  /// **'Active Listening'**
  String get activeListening;

  /// No description provided for @whatToDoWithItem.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do with this item?'**
  String get whatToDoWithItem;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @openMenu.
  ///
  /// In en, this message translates to:
  /// **'Open menu'**
  String get openMenu;

  /// No description provided for @viewRecipe.
  ///
  /// In en, this message translates to:
  /// **'View Recipe'**
  String get viewRecipe;

  /// No description provided for @recipeCreated.
  ///
  /// In en, this message translates to:
  /// **'Recipe created!'**
  String get recipeCreated;

  /// No description provided for @editRecipe.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editRecipe;

  /// No description provided for @deleteRecipe.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteRecipe;

  /// No description provided for @deleteRecipeConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete this recipe?'**
  String get deleteRecipeConfirm;

  /// No description provided for @deleteRecipeConfirmMsg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{recipeName}\"? This action cannot be undone.'**
  String deleteRecipeConfirmMsg(String recipeName);

  /// No description provided for @ingredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get ingredients;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @prepTime.
  ///
  /// In en, this message translates to:
  /// **'Prep time'**
  String get prepTime;

  /// No description provided for @recipeSaved.
  ///
  /// In en, this message translates to:
  /// **'Recipe saved!'**
  String get recipeSaved;

  /// No description provided for @noRecipesSaved.
  ///
  /// In en, this message translates to:
  /// **'No recipes saved'**
  String get noRecipesSaved;

  /// No description provided for @noRecipesSavedHint.
  ///
  /// In en, this message translates to:
  /// **'Create your first custom recipe by tapping the button below.'**
  String get noRecipesSavedHint;

  /// No description provided for @myRecipes.
  ///
  /// In en, this message translates to:
  /// **'My Recipes'**
  String get myRecipes;

  /// No description provided for @newRecipe.
  ///
  /// In en, this message translates to:
  /// **'New Recipe'**
  String get newRecipe;

  /// No description provided for @loadingRecipes.
  ///
  /// In en, this message translates to:
  /// **'Loading your recipes...'**
  String get loadingRecipes;

  /// No description provided for @errorLoadingRecipes.
  ///
  /// In en, this message translates to:
  /// **'Error loading recipes'**
  String get errorLoadingRecipes;

  /// No description provided for @addIngredient.
  ///
  /// In en, this message translates to:
  /// **'Add ingredient'**
  String get addIngredient;

  /// No description provided for @saveRecipe.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveRecipe;

  /// No description provided for @recipeName.
  ///
  /// In en, this message translates to:
  /// **'Recipe name'**
  String get recipeName;

  /// No description provided for @shortDescription.
  ///
  /// In en, this message translates to:
  /// **'Short description'**
  String get shortDescription;

  /// No description provided for @prepTimeMinutes.
  ///
  /// In en, this message translates to:
  /// **'Prep time (minutes)'**
  String get prepTimeMinutes;

  /// No description provided for @instructionsHint.
  ///
  /// In en, this message translates to:
  /// **'Type one step per line...'**
  String get instructionsHint;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add photo'**
  String get addPhoto;

  /// No description provided for @imageUrlPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Or paste an image URL'**
  String get imageUrlPlaceholder;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// No description provided for @recipeTags.
  ///
  /// In en, this message translates to:
  /// **'Recipe tags'**
  String get recipeTags;

  /// No description provided for @suggestedTags.
  ///
  /// In en, this message translates to:
  /// **'Suggested'**
  String get suggestedTags;

  /// No description provided for @searchRecipes.
  ///
  /// In en, this message translates to:
  /// **'Search recipes...'**
  String get searchRecipes;

  /// No description provided for @filterByTag.
  ///
  /// In en, this message translates to:
  /// **'Filter by tag'**
  String get filterByTag;

  /// No description provided for @allTags.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allTags;

  /// No description provided for @recipeDeleted.
  ///
  /// In en, this message translates to:
  /// **'Recipe deleted'**
  String get recipeDeleted;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @editRecipeTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Recipe'**
  String get editRecipeTitle;

  /// No description provided for @newRecipeTitle.
  ///
  /// In en, this message translates to:
  /// **'New Recipe'**
  String get newRecipeTitle;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @chooseImageSource.
  ///
  /// In en, this message translates to:
  /// **'Choose image source'**
  String get chooseImageSource;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @enterUrl.
  ///
  /// In en, this message translates to:
  /// **'Enter URL'**
  String get enterUrl;

  /// No description provided for @recipeImage.
  ///
  /// In en, this message translates to:
  /// **'Recipe image'**
  String get recipeImage;

  /// No description provided for @removeImage.
  ///
  /// In en, this message translates to:
  /// **'Remove image'**
  String get removeImage;

  /// No description provided for @mealPlannerTitle.
  ///
  /// In en, this message translates to:
  /// **'Meal Planner'**
  String get mealPlannerTitle;

  /// No description provided for @mealPlannerViewMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly view'**
  String get mealPlannerViewMonthly;

  /// No description provided for @mealPlannerViewWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly view'**
  String get mealPlannerViewWeekly;

  /// No description provided for @mealPlannerNoMeals.
  ///
  /// In en, this message translates to:
  /// **'No meals planned'**
  String get mealPlannerNoMeals;

  /// No description provided for @mealPlannerNoMealsHint.
  ///
  /// In en, this message translates to:
  /// **'Tap a day to add a meal'**
  String get mealPlannerNoMealsHint;

  /// No description provided for @mealPlannerLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading meal plan...'**
  String get mealPlannerLoading;

  /// No description provided for @mealPlannerError.
  ///
  /// In en, this message translates to:
  /// **'Error loading meal plan'**
  String get mealPlannerError;

  /// No description provided for @mealPlannerAddMeal.
  ///
  /// In en, this message translates to:
  /// **'Add Meal'**
  String get mealPlannerAddMeal;

  /// No description provided for @mealPlannerEditMeal.
  ///
  /// In en, this message translates to:
  /// **'Edit Meal'**
  String get mealPlannerEditMeal;

  /// No description provided for @mealPlannerDeleteMeal.
  ///
  /// In en, this message translates to:
  /// **'Remove meal'**
  String get mealPlannerDeleteMeal;

  /// No description provided for @mealPlannerMealDeleted.
  ///
  /// In en, this message translates to:
  /// **'Meal removed'**
  String get mealPlannerMealDeleted;

  /// No description provided for @mealPlannerServings.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, one{{count} serving} other{{count} servings}}'**
  String mealPlannerServings(int count);

  /// No description provided for @mealPlannerServingsLabel.
  ///
  /// In en, this message translates to:
  /// **'Servings'**
  String get mealPlannerServingsLabel;

  /// No description provided for @mealPlannerNoteLabel.
  ///
  /// In en, this message translates to:
  /// **'Note (optional)'**
  String get mealPlannerNoteLabel;

  /// No description provided for @mealPlannerSelectRecipe.
  ///
  /// In en, this message translates to:
  /// **'Select a recipe'**
  String get mealPlannerSelectRecipe;

  /// No description provided for @mealPlannerSearchRecipes.
  ///
  /// In en, this message translates to:
  /// **'Search recipes...'**
  String get mealPlannerSearchRecipes;

  /// No description provided for @mealPlannerNoRecipesFound.
  ///
  /// In en, this message translates to:
  /// **'No recipes found'**
  String get mealPlannerNoRecipesFound;

  /// No description provided for @mealPlannerNoRecipesHint.
  ///
  /// In en, this message translates to:
  /// **'Create recipes in the Recipes tab first'**
  String get mealPlannerNoRecipesHint;

  /// No description provided for @mealPlannerSave.
  ///
  /// In en, this message translates to:
  /// **'Add to plan'**
  String get mealPlannerSave;

  /// No description provided for @mealPlannerWeekProgress.
  ///
  /// In en, this message translates to:
  /// **'{count} of {total} meals planned'**
  String mealPlannerWeekProgress(int count, int total);

  /// No description provided for @mealPlannerGenerateList.
  ///
  /// In en, this message translates to:
  /// **'Generate shopping list'**
  String get mealPlannerGenerateList;

  /// No description provided for @mealPlannerGenerateListConfirm.
  ///
  /// In en, this message translates to:
  /// **'Add all ingredients from planned meals this week to your shopping list?'**
  String get mealPlannerGenerateListConfirm;

  /// No description provided for @mealPlannerGenerateListSuccess.
  ///
  /// In en, this message translates to:
  /// **'{count} ingredient(s) added to your list!'**
  String mealPlannerGenerateListSuccess(int count);

  /// No description provided for @mealPlannerGenerateListEmpty.
  ///
  /// In en, this message translates to:
  /// **'No ingredients to add. Plan some meals with recipes first.'**
  String get mealPlannerGenerateListEmpty;

  /// No description provided for @mealPlannerGenerateListNoList.
  ///
  /// In en, this message translates to:
  /// **'Create a shopping list first.'**
  String get mealPlannerGenerateListNoList;

  /// No description provided for @mealPlannerMealTypeBreakfast.
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get mealPlannerMealTypeBreakfast;

  /// No description provided for @mealPlannerMealTypeLunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get mealPlannerMealTypeLunch;

  /// No description provided for @mealPlannerMealTypeDinner.
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get mealPlannerMealTypeDinner;

  /// No description provided for @mealPlannerMealTypeSnack.
  ///
  /// In en, this message translates to:
  /// **'Snack'**
  String get mealPlannerMealTypeSnack;

  /// No description provided for @mealPlannerDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get mealPlannerDateLabel;

  /// No description provided for @mealPlannerWeekEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing planned for this week'**
  String get mealPlannerWeekEmpty;

  /// No description provided for @mealPlannerWeekEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Tap any day to start planning your meals!'**
  String get mealPlannerWeekEmptyHint;

  /// No description provided for @mealPlannerPrepTime.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String mealPlannerPrepTime(int minutes);

  /// Button to invite someone to a shopping list
  ///
  /// In en, this message translates to:
  /// **'Invite to list'**
  String get inviteToList;

  /// Button to share the app with friends
  ///
  /// In en, this message translates to:
  /// **'Share app'**
  String get shareApp;

  /// Subtitle for sharing the app option
  ///
  /// In en, this message translates to:
  /// **'Invite friends to use KipiList'**
  String get shareAppDescription;

  /// Referral text shared outside the app when inviting friends
  ///
  /// In en, this message translates to:
  /// **'I\'m using KipiList to organize my shopping! Download via my link and we both get 7 days of Premium free: {url}'**
  String shareReferralText(Object url);

  /// Subject line for the referral share
  ///
  /// In en, this message translates to:
  /// **'Get 7 days of KipiList Premium!'**
  String get shareReferralSubject;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'az',
    'be',
    'bg',
    'bn',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ky',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'my',
    'ne',
    'nl',
    'no',
    'pa',
    'pl',
    'pt',
    'rm',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'bn':
      {
        switch (locale.countryCode) {
          case 'BD':
            return AppLocalizationsBnBd();
        }
        break;
      }
    case 'cs':
      {
        switch (locale.countryCode) {
          case 'CZ':
            return AppLocalizationsCsCz();
        }
        break;
      }
    case 'da':
      {
        switch (locale.countryCode) {
          case 'DK':
            return AppLocalizationsDaDk();
        }
        break;
      }
    case 'de':
      {
        switch (locale.countryCode) {
          case 'DE':
            return AppLocalizationsDeDe();
        }
        break;
      }
    case 'el':
      {
        switch (locale.countryCode) {
          case 'GR':
            return AppLocalizationsElGr();
        }
        break;
      }
    case 'en':
      {
        switch (locale.countryCode) {
          case 'AU':
            return AppLocalizationsEnAu();
          case 'CA':
            return AppLocalizationsEnCa();
          case 'GB':
            return AppLocalizationsEnGb();
          case 'IN':
            return AppLocalizationsEnIn();
          case 'SG':
            return AppLocalizationsEnSg();
          case 'ZA':
            return AppLocalizationsEnZa();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return AppLocalizationsEs419();
          case 'ES':
            return AppLocalizationsEsEs();
          case 'US':
            return AppLocalizationsEsUs();
        }
        break;
      }
    case 'fa':
      {
        switch (locale.countryCode) {
          case 'AE':
            return AppLocalizationsFaAe();
          case 'AF':
            return AppLocalizationsFaAf();
          case 'IR':
            return AppLocalizationsFaIr();
        }
        break;
      }
    case 'fi':
      {
        switch (locale.countryCode) {
          case 'FI':
            return AppLocalizationsFiFi();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
          case 'FR':
            return AppLocalizationsFrFr();
        }
        break;
      }
    case 'gl':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsGlEs();
        }
        break;
      }
    case 'he':
      {
        switch (locale.countryCode) {
          case 'IL':
            return AppLocalizationsHeIl();
        }
        break;
      }
    case 'hi':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsHiIn();
        }
        break;
      }
    case 'hu':
      {
        switch (locale.countryCode) {
          case 'HU':
            return AppLocalizationsHuHu();
        }
        break;
      }
    case 'is':
      {
        switch (locale.countryCode) {
          case 'IS':
            return AppLocalizationsIsIs();
        }
        break;
      }
    case 'it':
      {
        switch (locale.countryCode) {
          case 'IT':
            return AppLocalizationsItIt();
        }
        break;
      }
    case 'ja':
      {
        switch (locale.countryCode) {
          case 'JP':
            return AppLocalizationsJaJp();
        }
        break;
      }
    case 'ka':
      {
        switch (locale.countryCode) {
          case 'GE':
            return AppLocalizationsKaGe();
        }
        break;
      }
    case 'km':
      {
        switch (locale.countryCode) {
          case 'KH':
            return AppLocalizationsKmKh();
        }
        break;
      }
    case 'kn':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsKnIn();
        }
        break;
      }
    case 'ko':
      {
        switch (locale.countryCode) {
          case 'KR':
            return AppLocalizationsKoKr();
        }
        break;
      }
    case 'ky':
      {
        switch (locale.countryCode) {
          case 'KG':
            return AppLocalizationsKyKg();
        }
        break;
      }
    case 'lo':
      {
        switch (locale.countryCode) {
          case 'LA':
            return AppLocalizationsLoLa();
        }
        break;
      }
    case 'mk':
      {
        switch (locale.countryCode) {
          case 'MK':
            return AppLocalizationsMkMk();
        }
        break;
      }
    case 'ml':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsMlIn();
        }
        break;
      }
    case 'mn':
      {
        switch (locale.countryCode) {
          case 'MN':
            return AppLocalizationsMnMn();
        }
        break;
      }
    case 'mr':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsMrIn();
        }
        break;
      }
    case 'ms':
      {
        switch (locale.countryCode) {
          case 'MY':
            return AppLocalizationsMsMy();
        }
        break;
      }
    case 'ne':
      {
        switch (locale.countryCode) {
          case 'NP':
            return AppLocalizationsNeNp();
        }
        break;
      }
    case 'nl':
      {
        switch (locale.countryCode) {
          case 'NL':
            return AppLocalizationsNlNl();
        }
        break;
      }
    case 'no':
      {
        switch (locale.countryCode) {
          case 'NO':
            return AppLocalizationsNoNo();
        }
        break;
      }
    case 'pl':
      {
        switch (locale.countryCode) {
          case 'PL':
            return AppLocalizationsPlPl();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
    case 'ru':
      {
        switch (locale.countryCode) {
          case 'RU':
            return AppLocalizationsRuRu();
        }
        break;
      }
    case 'sv':
      {
        switch (locale.countryCode) {
          case 'SE':
            return AppLocalizationsSvSe();
        }
        break;
      }
    case 'ta':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsTaIn();
        }
        break;
      }
    case 'te':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsTeIn();
        }
        break;
      }
    case 'tr':
      {
        switch (locale.countryCode) {
          case 'TR':
            return AppLocalizationsTrTr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'rm':
      return AppLocalizationsRm();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
