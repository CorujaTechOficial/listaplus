// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Nákupní seznam';

  @override
  String get lists => 'Seznamy';

  @override
  String get pantry => 'Spižírna';

  @override
  String get cancel => 'Zrušit';

  @override
  String get save => 'Uložit';

  @override
  String get create => 'Vytvořit';

  @override
  String get add => 'Přidat';

  @override
  String get remove => 'Odebrat';

  @override
  String get delete => 'Smazat';

  @override
  String get edit => 'Upravit';

  @override
  String get copy => 'Kopírovat';

  @override
  String get next => 'Další';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get regenerate => 'Znovu vygenerovat';

  @override
  String get copiedToClipboard => 'Zkopírováno do schránky';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get close => 'Zavřít';

  @override
  String get import => 'Importovat';

  @override
  String get rename => 'Přejmenovat';

  @override
  String get upgrade => 'Upgradovat';

  @override
  String get clear => 'Vyčistit';

  @override
  String error(String message) {
    return 'Chyba: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Chyba: $message';
  }

  @override
  String get purchaseError => 'Chyba při zpracování nákupu. Zkus to znovu.';

  @override
  String get restoreError => 'Chyba při obnově nákupů. Zkus to znovu.';

  @override
  String get loading => 'Načítání...';

  @override
  String get fieldRequired => 'Povinné pole';

  @override
  String get addedFeedback => 'Přidáno!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vybráno $count',
      many: 'Vybráno $count',
      few: 'Vybrány $count',
      one: 'Vybrán $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Odhadováno';

  @override
  String get alreadyPurchased => 'Již zakoupeno';

  @override
  String get clearList => 'Vyčistit seznam';

  @override
  String get clearPurchased => 'Vyčistit zakoupené';

  @override
  String get share => 'Sdílet';

  @override
  String get shareViaCode => 'Sdílet pomocí kódu';

  @override
  String get importViaCode => 'Importovat pomocí kódu';

  @override
  String get listAssistant => 'Asistent seznamu';

  @override
  String get globalAssistant => 'Globální asistent';

  @override
  String get becomePremium => 'Staň se Premium';

  @override
  String get manageSubscription => 'Spravovat předplatné';

  @override
  String get completePurchase => 'Dokončit nákup';

  @override
  String get confirmClearList => 'Odebrat všechny položky?';

  @override
  String get shareListTitle => 'Sdílet seznam';

  @override
  String get shareThisCode => 'Sdílej tento kód:';

  @override
  String get validForLimitedTime => 'Platí po omezenou dobu';

  @override
  String get importListTitle => 'Importovat seznam';

  @override
  String get enterCodeHint => 'Zadej kód';

  @override
  String get confirmArchiveTitle => 'Dokončit nákup';

  @override
  String get confirmArchiveContent =>
      'Dokončit tento nákup a archivovat seznam?';

  @override
  String get complete => 'Dokončit';

  @override
  String get listArchived => 'Seznam úspěšně archivován!';

  @override
  String listAdded(String listName) {
    return '$listName přidán!';
  }

  @override
  String get buy => 'Koupit';

  @override
  String get unmark => 'Odznačit';

  @override
  String confirmDeleteItems(int count) {
    return 'Odebrat $count položku(y)?';
  }

  @override
  String get confirmDeleteTitle => 'Potvrdit';

  @override
  String confirmContent(int count) {
    return 'Odebrat $count položku(y)?';
  }

  @override
  String get archiveList => 'Archivovat seznam';

  @override
  String get pantryAppBar => 'Spižírna';

  @override
  String get generateShoppingList => 'Vygenerovat nákupní seznam';

  @override
  String get pantryEmpty => 'Prázdná spižírna';

  @override
  String get pantryEmptySubtitle => 'Přidej produkty, které chceš mít doma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit položku(y) je třeba koupit';
  }

  @override
  String get noItemsToBuy => 'Žádné položky ke koupi';

  @override
  String get newPantryList => 'Nákup pro spižírnu';

  @override
  String get newListTitle => 'Nový nákupní seznam';

  @override
  String itemsWillBeAdded(int count) {
    return '$count položek bude přidáno';
  }

  @override
  String get listNameLabel => 'Název seznamu';

  @override
  String listCreated(String name, int count) {
    return 'Seznam \"$name\" vytvořen s $count položkami';
  }

  @override
  String get noTracking => 'Bez sledování';

  @override
  String get markAsPurchased => 'Označit jako zakoupené';

  @override
  String editPantryItem(String name) {
    return 'Upravit $name';
  }

  @override
  String get idealQuantity => 'Ideální množství';

  @override
  String get currentQuantity => 'Aktuální množství';

  @override
  String get consumed => 'Spotřebováno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name doplněno na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Odebrat \"$name\" ze spižírny?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Upravit $name';
  }

  @override
  String get settingsAppBar => 'Nastavení';

  @override
  String get language => 'Jazyk';

  @override
  String get languagePortuguese => 'português (Brazílie)';

  @override
  String get languageEnglish => 'angličtina';

  @override
  String get languageSystem => 'Výchozí systém';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get searchLanguage => 'Hledat jazyk...';

  @override
  String get currency => 'Měna';

  @override
  String get chooseCurrency => 'Vyberte možnost Měna';

  @override
  String get searchCurrency => 'Hledat měnu...';

  @override
  String get appearance => 'Vzhled';

  @override
  String get light => 'Světlý';

  @override
  String get system => 'Systém';

  @override
  String get dark => 'Tmavý';

  @override
  String get themeColor => 'Barva motivu';

  @override
  String get dynamicColors => 'Dynamické barvy';

  @override
  String get dynamicColorsSubtitle => 'Použít barvy na základě vaší tapety';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktivujte dynamické barvy, aby se barva motivu projevila';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Měsíční rozpočet';

  @override
  String get budgetSubtitle => 'Sleduj své měsíční výdaje';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Záloha';

  @override
  String get backupSubtitle => 'Exportuj nebo importuj svá data';

  @override
  String get about => 'O aplikaci';

  @override
  String get version => 'Verze';

  @override
  String get privacy => 'Soukromí';

  @override
  String get termsOfUse => 'Podmínky použití';

  @override
  String get backupTitle => 'Záloha';

  @override
  String get backupPremiumDescription =>
      'Zálohování a export je prémiová funkce';

  @override
  String get exportData => 'Exportovat data';

  @override
  String get exportDataSubtitle => 'Uložit všechny seznamy jako JSON';

  @override
  String get importData => 'Importovat data';

  @override
  String get importDataSubtitle => 'Obnovit seznamy z JSON';

  @override
  String get importJsonTitle => 'Importovat JSON';

  @override
  String get importJsonHint => 'Vlož sem JSON zálohy...';

  @override
  String get backupExported => 'Záloha exportována!';

  @override
  String get budgetAppBar => 'Měsíční rozpočet';

  @override
  String get budgetPremiumLocked => 'Globální měsíční rozpočet je Premium';

  @override
  String get budgetUpgradePrompt => 'Upgraduj pro odemknutí';

  @override
  String get noBudgetDefined => 'Není nastaven rozpočet';

  @override
  String totalEstimated(String amount) {
    return 'Celkem odhadováno: $amount';
  }

  @override
  String get setBudgetButton => 'Nastavit rozpočet';

  @override
  String get budgetLists => 'Seznamy';

  @override
  String get budgetValueLabel => 'Částka';

  @override
  String get setBudgetTitle => 'Měsíční rozpočet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Vše';

  @override
  String get filterPending => 'Čekající';

  @override
  String get filterPurchased => 'Zakoupené';

  @override
  String get sortName => 'Název';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ručně';

  @override
  String get addItem => 'Přidat položku';

  @override
  String get itemName => 'Název položky';

  @override
  String get quantityShort => 'Mn';

  @override
  String get unit => 'Jednotka';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Odhadovaná cena';

  @override
  String get addItemPrice => 'Odhadovaná cena';

  @override
  String get editItem => 'Upravit položku';

  @override
  String get quantityFull => 'Množství';

  @override
  String get editItemPrice => 'Odhadovaná cena';

  @override
  String get addToPantry => 'Přidat do spižírny';

  @override
  String addToPantryPrompt(String name) {
    return 'Přidat \"$name\" do tvé spižírny?';
  }

  @override
  String get yes => 'Ano';

  @override
  String get productName => 'Název produktu';

  @override
  String get idealQty => 'Ideální mn';

  @override
  String get currentQty => 'Aktuální mn';

  @override
  String get trackStock => 'Sledovat zásoby';

  @override
  String get trackStockActive => 'Objevuje se v návrzích nákupu';

  @override
  String get trackStockInactive => 'Negeneruje návrh nákupu';

  @override
  String get createListDialog => 'Vytvořit seznam';

  @override
  String get renameListDialog => 'Přejmenovat seznam';

  @override
  String get listHistory => 'Historie seznamů';

  @override
  String get myLists => 'Mé seznamy';

  @override
  String get viewActive => 'Zobrazit aktivní';

  @override
  String get viewHistory => 'Zobrazit historii';

  @override
  String get noArchivedLists => 'Žádné archivované seznamy';

  @override
  String get noActiveLists => 'Žádné aktivní seznamy';

  @override
  String completedOn(String date) {
    return 'Dokončeno $date';
  }

  @override
  String get sharedLabel => 'Sdíleno';

  @override
  String get restore => 'Obnovit';

  @override
  String get removeSharedTooltip => 'Odebrat';

  @override
  String get deleteListTitle => 'Smazat seznam';

  @override
  String deleteListContent(String name) {
    return 'Opravdu chceš smazat \"$name\"? Všechny položky budou odstraněny.';
  }

  @override
  String get removeSharedListTitle => 'Odebrat sdílený seznam';

  @override
  String removeSharedListContent(String name) {
    return 'Odebrat \"$name\" z tvých seznamů? Původní seznam zůstane nedotčen.';
  }

  @override
  String get createNewList => 'Vytvořit nový seznam';

  @override
  String get aiAssistant => 'AI asistent';

  @override
  String get aiAssistantDescription =>
      'Získej chytré návrhy, recepty a personalizované tipy s naším AI asistentem.';

  @override
  String get generalAssistant => 'Obecný asistent';

  @override
  String get newChat => 'Nový chat';

  @override
  String get noHistory => 'Žádná historie chatu';

  @override
  String get deleteSession => 'Smazat chat';

  @override
  String get deleteSessionConfirm =>
      'Opravdu chcete tento chat smazat? Zprávy budou trvale ztraceny.';

  @override
  String get clearHistory => 'Vyčistit historii';

  @override
  String get clearHistoryConfirm => 'Smazat všechny zprávy v této relaci?';

  @override
  String get chatHint => 'Napiš svou zprávu...';

  @override
  String get chatHintBlocked => 'Odemkněte AI, abyste mohli chatovat';

  @override
  String chatError(String error) {
    return 'Chyba při načítání chatu: $error';
  }

  @override
  String get listHelp => 'Jak mohu pomoci s tvým seznamem?';

  @override
  String get generalHelp => 'Jak mohu dnes pomoci s tvým nákupem?';

  @override
  String get chatSubtitle =>
      'Požádej o návrhy položek, recepty nebo tipy na úsporu.';

  @override
  String get aiError =>
      'Omlouváme se, při zpracování tvého požadavku došlo k chybě. Zkontroluj připojení nebo to zkus znovu později.';

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
  String get loginPrompt => 'Přihlas se pro odemknutí\nprémiových funkcí';

  @override
  String get signInGoogle => 'Přihlásit se přes Google';

  @override
  String get signInApple => 'Přihlásit se přes Apple';

  @override
  String get continueAsGuest => 'Pokračovat jako host';

  @override
  String get onboardingWelcomeTitle => 'Vítejte v KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Nejchytřejší způsob, jak uspořádat nákupy a ušetřit peníze.';

  @override
  String get onboardingSetupTitle => 'Přizpůsobte si své zkušenosti';

  @override
  String get onboardingSetupDesc =>
      'Vyberte si, jak chcete, aby pro vás KipiList vypadala a fungovala.';

  @override
  String get onboardingLoginTitle => 'Uložte vše do cloudu';

  @override
  String get onboardingLoginDesc =>
      'Vaše data se synchronizují na všech vašich zařízeních';

  @override
  String get onboardingShareTitle => 'Sdílejte s těmi, které máte rádi';

  @override
  String get onboardingShareDesc =>
      'Synchronizujte seznamy s rodinou a přáteli v reálném čase';

  @override
  String get onboardingPremiumTitle => 'Odemkněte všechny funkce';

  @override
  String get onboardingPremiumSubtitle =>
      'Získejte ze svých nákupních seznamů maximum';

  @override
  String get onboardingAnnualBadge => 'Nejlepší hodnota';

  @override
  String get onboardingMonthlyLabel => 'Měsíční';

  @override
  String get onboardingAnnualLabel => 'Výroční';

  @override
  String get onboardingViewAllPlans => 'Zobrazit všechny plány';

  @override
  String get onboardingSubscribeCta => 'Upsat';

  @override
  String get onboardingCancelAnytime => 'Zrušit kdykoli. Žádný závazek.';

  @override
  String get onboardingContinueAsGuest => 'Pokračovat jako host';

  @override
  String get onboardingRestore => 'Obnovit';

  @override
  String get onboardingRestoreDesc =>
      'Už máte předplatné? Klepnutím sem jej obnovíte.';

  @override
  String get onboardingExit => 'Výstup';

  @override
  String get onboardingPersonalizationTitle => 'Pojďme se s vámi seznámit';

  @override
  String get onboardingPersonalizationDesc =>
      'Použijeme to k přizpůsobení vašich návrhů a zefektivnění nakupování.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Jaké je tvé oblíbené jídlo?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'např. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Pokračovat';

  @override
  String get onboardingPersonalizationSkip => 'Prozatím přeskočit';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Pro pokračování nám řekněte své oblíbené jídlo';

  @override
  String get settingsDefaultScreen => 'Výchozí domovská obrazovka';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Vyberte si mezi nákupním seznamem nebo chatem AI';

  @override
  String get settingsScreenList => 'Nákupní seznam';

  @override
  String get settingsScreenChat => 'AI chat';

  @override
  String loginError(String error) {
    return 'Chyba přihlášení: $error';
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
  String get premiumUpgrade => 'Upgraduj pro odemknutí';

  @override
  String get itemRemoved => 'Položka odebrána';

  @override
  String get undo => 'Zpět';

  @override
  String get emptyListTitle => 'Tvůj seznam je prázdný';

  @override
  String get emptyListSubtitle => 'Přidej položky pro začátek';

  @override
  String get noListFoundTitle => 'Nenalezeny žádné seznamy';

  @override
  String get noListFoundSubtitle => 'Vytvoř svůj první seznam pro začátek';

  @override
  String get createFirstList => 'Vytvořit první seznam';

  @override
  String get listBudgetTitle => 'Rozpočet seznamu';

  @override
  String get budgetAmountLabel => 'Částka rozpočtu';

  @override
  String get removeBudget => 'Odebrat';

  @override
  String get prefUnlimitedLists => 'Neomezené seznamy';

  @override
  String get prefSharing => 'Sdílení seznamů';

  @override
  String get prefFullHistory => 'Plná historie';

  @override
  String get prefExportData => 'Export dat';

  @override
  String get prefCustomThemes => 'Vlastní motivy';

  @override
  String get prefMonthlyBudget => 'Globální měsíční rozpočet';

  @override
  String get prefAIAssistant => 'Osobní AI asistent';

  @override
  String get prefUnlimitedPantry => 'Neomezená spižírna';

  @override
  String get prefInteractiveArtifacts => 'Interaktivní AI artefakty';

  @override
  String get themeGreen => 'Zelená';

  @override
  String get themeBlue => 'Modrá';

  @override
  String get themePurple => 'Fialová';

  @override
  String get themeRed => 'Červená';

  @override
  String get themeOrange => 'Oranžová';

  @override
  String get themePink => 'Růžová';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantar';

  @override
  String get themeTeal => 'Tyrkysová';

  @override
  String get themeBrown => 'Hnědá';

  @override
  String get catFruits => 'Ovoce';

  @override
  String get catCleaning => 'Úklid';

  @override
  String get catBeverages => 'Nápoje';

  @override
  String get catBakery => 'Pekařství';

  @override
  String get catOthers => 'Ostatní';

  @override
  String get unitPack => 'balení';

  @override
  String get shareSubject => 'Nákupní seznam';

  @override
  String get monthlyBudgetTitle => 'Měsíční rozpočet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Smazat seznam';

  @override
  String get pantryItemRemoved => 'Položka odebrána';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit položek je třeba koupit',
      many: '$deficit položek je třeba koupit',
      few: '$deficit položky je třeba koupit',
      one: '$deficit položku je třeba koupit',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Celkem košík';

  @override
  String get restockLabel => 'Doplnit';

  @override
  String get advancedFeatures => 'Pokročilé funkce';

  @override
  String get selectAll => 'Vybrat vše';

  @override
  String get deselectAll => 'Zrušit výběr';

  @override
  String get monthlyBudgetAppBar => 'Měsíční rozpočet';

  @override
  String get budgetEditTitle => 'Měsíční rozpočet';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vyber seznam pro zobrazení dashboardu.';

  @override
  String get spendingAnalysis => 'Analýza výdajů';

  @override
  String get noItemsToAnalyze => 'V seznamu nejsou žádné položky k analýze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označ položky jako zakoupené pro zobrazení analýzy.';

  @override
  String get totalSpending => 'Celkem utraceno';

  @override
  String get spendingByCategory => 'Výdaje podle kategorie';

  @override
  String get achievements => 'Úspěchy';

  @override
  String get exportPdfExcel => 'Exportovat PDF/Excel';

  @override
  String get exportPdf => 'Exportovat jako PDF';

  @override
  String get exportExcel => 'Exportovat jako Excel';

  @override
  String get organizingAi => 'ORGANIZOVÁNÍ S AI...';

  @override
  String get yesLabel => 'Ano';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Můj nákupní seznam';

  @override
  String get emptyListAddItems =>
      'Tvůj seznam je prázdný! Nejprve přidej položky. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Seznam kouzelně uspořádán podle kategorií! ✨';

  @override
  String get shoppingMode => 'Nákupní režim';

  @override
  String get smartOrganization => 'Chytrá organizace';

  @override
  String get savings => 'Úspory';

  @override
  String get shoppingModeHeader => 'NÁKUPNÍ REŽIM';

  @override
  String get shareAsText => 'Odeslat položky jako formátovaný text';

  @override
  String get shareRealtime => 'Synchronizace v reálném čase s ostatními';

  @override
  String get quickRecipe => 'Rychlý recept';

  @override
  String get quickRecipePrompt => 'Navrhni recepty s položkami z mého seznamu.';

  @override
  String get economyTips => 'Tipy na úsporu';

  @override
  String get economyTipsPrompt => 'Jak mohu ušetřit na tomto nákupu?';

  @override
  String get organizeAisles => 'Uspořádat podle uliček';

  @override
  String get organizeAislesPrompt => 'Uspořádat podle uliček obchodu.';

  @override
  String get recipeSuggestion => 'Návrh receptu';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Zbývá $remaining kreditů';
  }

  @override
  String get addAllToList => 'Přidat vše do seznamu';

  @override
  String get organizeByAisles => 'Uspořádat podle uliček';

  @override
  String get voiceTranscriptionTooltip => 'Hlasové psaní (Zdarma)';

  @override
  String get aiVoiceCommandTooltip => 'AI hlasový příkaz (Premium)';

  @override
  String get voiceCommandTitle => 'AI hlasový příkaz';

  @override
  String get voiceCommandContent =>
      'Mluv přirozeně pro správu svého seznamu!\n\nPříklady:\n• \'Přidej chléb, sýr a šunku\'\n• \'Odeber prací prášek\'\n• \'Změň motiv na modrý\'\n\nToto je exkluzivní funkce KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Zobrazit plány';

  @override
  String get itemsAddedSuccess => 'Položky úspěšně přidány do seznamu!';

  @override
  String get viewList => 'Zobrazit seznam';

  @override
  String get feedbackTitle => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackPrompt => 'Co byste chtěli sdílet?';

  @override
  String get feedbackTypeBug => 'Nahlásit chybu';

  @override
  String get feedbackTypeBugHint => 'Něco nefunguje';

  @override
  String get feedbackTypeSuggestion => 'Návrh';

  @override
  String get feedbackTypeSuggestionHint => 'Nápad na vylepšení aplikace';

  @override
  String get feedbackTypeTranslation => 'Problém s překladem';

  @override
  String get feedbackTypeTranslationHint => 'Nesprávný nebo neobratný překlad';

  @override
  String get feedbackTypeFeature => 'Žádost o funkci';

  @override
  String get feedbackTypeFeatureHint => 'Funkce, kterou byste rádi viděli';

  @override
  String get feedbackTypeOther => 'Jiné';

  @override
  String get feedbackTypeOtherHint => 'Jiný typ zpětné vazby';

  @override
  String get feedbackHint => 'Popište svou zpětnou vazbu podrobně...';

  @override
  String get feedbackSend => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackSending => 'Odesílání...';

  @override
  String get feedbackThankYou => 'Děkujeme!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše zpětná vazba byla přijata a pomáhá nám vylepšovat KipiList pro všechny.';

  @override
  String get feedbackBack => 'Zpět';

  @override
  String feedbackError(String error) {
    return 'Chyba při odesílání: $error';
  }

  @override
  String get feedbackRetry => 'Zkusit znovu';

  @override
  String get feedbackSettingsTitle => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackSettingsSubtitle =>
      'Hlaste chyby, navrhujte vylepšení nebo opravujte překlady';

  @override
  String get aiEnergy => 'Energie AI';

  @override
  String get searchInConversation => 'Hledat v konverzaci...';

  @override
  String get noMessagesFound => 'Nebyly nalezeny žádné zprávy';

  @override
  String get suggestedQuestions => 'Doporučené otázky:';

  @override
  String get shoppingAssistant => 'Nákupní asistentka';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Zakoupeno $purchased z $total';
  }

  @override
  String get estimatedCost => 'Odhadovaný';

  @override
  String get viewItems => 'Zobrazit položky';

  @override
  String get noItemsInList => 'V seznamu nejsou žádné položky';

  @override
  String get longHistoryWarning =>
      'Dlouhá historie: asistent se zaměřuje na nejnovější zprávy pro lepší výkon.';

  @override
  String get listening => 'Naslouchání...';

  @override
  String get addDirectToList => 'Přidat přímo do seznamu';

  @override
  String get unlockFullResponse => 'Odemkněte plnou odezvu';

  @override
  String get switchList => 'Přepnout seznam';

  @override
  String get marketMode => 'Režim trhu';

  @override
  String get backToChat => 'Zpět na Chat';

  @override
  String get finishShopping => 'Dokončit nakupování';

  @override
  String get welcomeAiAssistant => 'Vítejte v AI Assistant';

  @override
  String get createListToStartAi =>
      'Vytvořte si nákupní seznam a začněte používat chytrý chat.';

  @override
  String get howCanIHelp => 'Jak mohu pomoci?';

  @override
  String get chatSubtitleShort => 'Zeptejte se na ceny, recepty, organizaci...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total zakoupeno';
  }

  @override
  String get quickReplies => 'Rychlé odpovědi:';

  @override
  String get voiceProFeature =>
      'Pokročilé hlasové příkazy jsou Pro. Povolení základního diktování...';

  @override
  String get viewPro => 'Zobrazit Pro';

  @override
  String get errorLoadingChat => 'Jejda! Při načítání chatu se něco pokazilo.';

  @override
  String get errorLoadingChatSubtitle =>
      'Zkontrolujte připojení nebo to zkuste znovu později.';

  @override
  String get errorOscillation =>
      'K tomu může dojít v důsledku oscilací sítě nebo dočasné nedostupnosti. Zkuste to prosím znovu.';

  @override
  String get activeListening => 'Aktivní naslouchání';

  @override
  String get whatToDoWithItem => 'Co byste s touto položkou chtěli udělat?';

  @override
  String get viewDetails => 'Zobrazit podrobnosti';

  @override
  String get openMenu => 'Otevřít menu';

  @override
  String get viewRecipe => 'Zobrazit recept';

  @override
  String get recipeCreated => 'Recept byl vytvořen!';

  @override
  String get editRecipe => 'Upravit';

  @override
  String get deleteRecipe => 'Smazat';

  @override
  String get deleteRecipeConfirm => 'Smazat tento recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Opravdu chcete smazat \"$recipeName\"? Tuto akci nelze vzít zpět.';
  }

  @override
  String get ingredients => 'Ingredience';

  @override
  String get instructions => 'Instrukce';

  @override
  String get prepTime => 'Čas přípravy';

  @override
  String get recipeSaved => 'Recept byl uložen!';

  @override
  String get noRecipesSaved => 'Žádné recepty nejsou uloženy';

  @override
  String get noRecipesSavedHint =>
      'Vytvořte svůj první vlastní recept klepnutím na tlačítko níže.';

  @override
  String get myRecipes => 'Moje recepty';

  @override
  String get newRecipe => 'Nový recept';

  @override
  String get loadingRecipes => 'Načítání vašich receptů...';

  @override
  String get errorLoadingRecipes => 'Chyba při načítání receptů';

  @override
  String get addIngredient => 'Přidat ingredienci';

  @override
  String get saveRecipe => 'Uložit';

  @override
  String get recipeName => 'Název receptu';

  @override
  String get shortDescription => 'Krátký popis';

  @override
  String get prepTimeMinutes => 'Čas přípravy (minuty)';

  @override
  String get instructionsHint => 'Zadejte jeden krok na řádek...';

  @override
  String get addPhoto => 'Přidat fotku';

  @override
  String get imageUrlPlaceholder => 'Nebo vložte URL obrázku';

  @override
  String get tags => 'Tagy';

  @override
  String get recipeTags => 'Tagy receptu';

  @override
  String get suggestedTags => 'Navrhované';

  @override
  String get searchRecipes => 'Hledat recepty...';

  @override
  String get filterByTag => 'Filtrovat podle tagu';

  @override
  String get allTags => 'Vše';

  @override
  String get recipeDeleted => 'Recept byl smazán';

  @override
  String get saveChanges => 'Uložit změny';

  @override
  String get editRecipeTitle => 'Upravit recept';

  @override
  String get newRecipeTitle => 'Nový recept';

  @override
  String get requiredField => 'Povinné';

  @override
  String get chooseImageSource => 'Vyberte zdroj obrázku';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Zadejte URL';

  @override
  String get recipeImage => 'Obrázek receptu';

  @override
  String get removeImage => 'Odstranit obrázek';

  @override
  String get mealPlannerTitle => 'Plánovač jídel';

  @override
  String get mealPlannerViewMonthly => 'Měsíční zobrazení';

  @override
  String get mealPlannerViewWeekly => 'Týdenní zobrazení';

  @override
  String get mealPlannerNoMeals => 'Žádná plánovaná jídla';

  @override
  String get mealPlannerNoMealsHint => 'Klepnutím na den přidáte jídlo';

  @override
  String get mealPlannerLoading => 'Načítání jídelníčku...';

  @override
  String get mealPlannerError => 'Chyba při načítání jídelníčku';

  @override
  String get mealPlannerAddMeal => 'Přidat jídlo';

  @override
  String get mealPlannerEditMeal => 'Upravit jídlo';

  @override
  String get mealPlannerDeleteMeal => 'Odebrat jídlo';

  @override
  String get mealPlannerMealDeleted => 'Jídlo bylo odebráno';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porce',
      many: '$count porcí',
      few: '$count porce',
      one: '$count porce',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porce';

  @override
  String get mealPlannerNoteLabel => 'Poznámka (volitelné)';

  @override
  String get mealPlannerSelectRecipe => 'Vyberte recept';

  @override
  String get mealPlannerSearchRecipes => 'Hledat recepty...';

  @override
  String get mealPlannerNoRecipesFound => 'Žádné recepty nenalezeny';

  @override
  String get mealPlannerNoRecipesHint =>
      'Nejprve vytvořte recepty na kartě Recepty';

  @override
  String get mealPlannerSave => 'Přidat do plánu';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Naplánováno $count z $total jídel';
  }

  @override
  String get mealPlannerGenerateList => 'Vygenerovat nákupní seznam';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Přidat všechny ingredience z plánovaných jídel na tento týden do nákupního seznamu?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Do seznamu bylo přidáno $count ingrediencí!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Žádné ingredience k přidání. Nejprve naplánujte jídla s recepty.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Nejprve vytvořte nákupní seznam.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Snídaně';

  @override
  String get mealPlannerMealTypeLunch => 'Oběd';

  @override
  String get mealPlannerMealTypeDinner => 'Večeře';

  @override
  String get mealPlannerMealTypeSnack => 'Svačina';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Na tento týden není nic naplánováno';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Klepnutím na jakýkoli den začněte plánovat svá jídla!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Pozvat do seznamu';

  @override
  String get shareApp => 'Sdílet aplikaci';

  @override
  String get shareAppDescription => 'Pozvěte přátele, aby používali KipiList';

  @override
  String shareReferralText(Object url) {
    return 'K organizaci nákupů používám KipiList! Stáhněte si přes můj odkaz a oba získáme 7 dní Premium zdarma: $url';
  }

  @override
  String get shareReferralSubject => 'Získejte 7 dní KipiList Premium!';
}

/// The translations for Czech, as used in the Czechia Czech Republic (`cs_CZ`).
class AppLocalizationsCsCz extends AppLocalizationsCs {
  AppLocalizationsCsCz() : super('cs_CZ');

  @override
  String get appTitle => 'Nákupní seznam';

  @override
  String get lists => 'Seznamy';

  @override
  String get pantry => 'Spižírna';

  @override
  String get cancel => 'Zrušit';

  @override
  String get save => 'Uložit';

  @override
  String get create => 'Vytvořit';

  @override
  String get add => 'Přidat';

  @override
  String get remove => 'Odebrat';

  @override
  String get delete => 'Smazat';

  @override
  String get edit => 'Upravit';

  @override
  String get copy => 'Kopírovat';

  @override
  String get next => 'Další';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get regenerate => 'Znovu vygenerovat';

  @override
  String get copiedToClipboard => 'Zkopírováno do schránky';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get close => 'Zavřít';

  @override
  String get import => 'Importovat';

  @override
  String get rename => 'Přejmenovat';

  @override
  String get upgrade => 'Upgradovat';

  @override
  String get clear => 'Vyčistit';

  @override
  String error(String message) {
    return 'Chyba: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Chyba: $message';
  }

  @override
  String get purchaseError => 'Chyba při zpracování nákupu. Zkus to znovu.';

  @override
  String get restoreError => 'Chyba při obnově nákupů. Zkus to znovu.';

  @override
  String get loading => 'Načítání...';

  @override
  String get fieldRequired => 'Povinné pole';

  @override
  String get addedFeedback => 'Přidáno!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vybráno $count',
      many: 'Vybráno $count',
      few: 'Vybrány $count',
      one: 'Vybrán $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Odhadováno';

  @override
  String get alreadyPurchased => 'Již zakoupeno';

  @override
  String get clearList => 'Vyčistit seznam';

  @override
  String get clearPurchased => 'Vyčistit zakoupené';

  @override
  String get share => 'Sdílet';

  @override
  String get shareViaCode => 'Sdílet pomocí kódu';

  @override
  String get importViaCode => 'Importovat pomocí kódu';

  @override
  String get listAssistant => 'Asistent seznamu';

  @override
  String get globalAssistant => 'Globální asistent';

  @override
  String get becomePremium => 'Staň se Premium';

  @override
  String get manageSubscription => 'Spravovat předplatné';

  @override
  String get completePurchase => 'Dokončit nákup';

  @override
  String get confirmClearList => 'Odebrat všechny položky?';

  @override
  String get shareListTitle => 'Sdílet seznam';

  @override
  String get shareThisCode => 'Sdílej tento kód:';

  @override
  String get validForLimitedTime => 'Platí po omezenou dobu';

  @override
  String get importListTitle => 'Importovat seznam';

  @override
  String get enterCodeHint => 'Zadej kód';

  @override
  String get confirmArchiveTitle => 'Dokončit nákup';

  @override
  String get confirmArchiveContent =>
      'Dokončit tento nákup a archivovat seznam?';

  @override
  String get complete => 'Dokončit';

  @override
  String get listArchived => 'Seznam úspěšně archivován!';

  @override
  String listAdded(String listName) {
    return '$listName přidán!';
  }

  @override
  String get buy => 'Koupit';

  @override
  String get unmark => 'Odznačit';

  @override
  String confirmDeleteItems(int count) {
    return 'Odebrat $count položku(y)?';
  }

  @override
  String get confirmDeleteTitle => 'Potvrdit';

  @override
  String confirmContent(int count) {
    return 'Odebrat $count položku(y)?';
  }

  @override
  String get archiveList => 'Archivovat seznam';

  @override
  String get pantryAppBar => 'Spižírna';

  @override
  String get generateShoppingList => 'Vygenerovat nákupní seznam';

  @override
  String get pantryEmpty => 'Prázdná spižírna';

  @override
  String get pantryEmptySubtitle => 'Přidej produkty, které chceš mít doma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit položku(y) je třeba koupit';
  }

  @override
  String get noItemsToBuy => 'Žádné položky ke koupi';

  @override
  String get newPantryList => 'Nákup pro spižírnu';

  @override
  String get newListTitle => 'Nový nákupní seznam';

  @override
  String itemsWillBeAdded(int count) {
    return '$count položek bude přidáno';
  }

  @override
  String get listNameLabel => 'Název seznamu';

  @override
  String listCreated(String name, int count) {
    return 'Seznam \"$name\" vytvořen s $count položkami';
  }

  @override
  String get noTracking => 'Bez sledování';

  @override
  String get markAsPurchased => 'Označit jako zakoupené';

  @override
  String editPantryItem(String name) {
    return 'Upravit $name';
  }

  @override
  String get idealQuantity => 'Ideální množství';

  @override
  String get currentQuantity => 'Aktuální množství';

  @override
  String get consumed => 'Spotřebováno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name doplněno na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Odebrat \"$name\" ze spižírny?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Upravit $name';
  }

  @override
  String get settingsAppBar => 'Nastavení';

  @override
  String get language => 'Jazyk';

  @override
  String get languagePortuguese => 'português (Brazílie)';

  @override
  String get languageEnglish => 'angličtina';

  @override
  String get languageSystem => 'Výchozí systém';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get searchLanguage => 'Hledat jazyk...';

  @override
  String get currency => 'Měna';

  @override
  String get chooseCurrency => 'Vyberte možnost Měna';

  @override
  String get searchCurrency => 'Hledat měnu...';

  @override
  String get appearance => 'Vzhled';

  @override
  String get light => 'Světlý';

  @override
  String get system => 'Systém';

  @override
  String get dark => 'Tmavý';

  @override
  String get themeColor => 'Barva motivu';

  @override
  String get dynamicColors => 'Dynamické barvy';

  @override
  String get dynamicColorsSubtitle => 'Použít barvy na základě vaší tapety';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktivujte dynamické barvy, aby se barva motivu projevila';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Měsíční rozpočet';

  @override
  String get budgetSubtitle => 'Sleduj své měsíční výdaje';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Záloha';

  @override
  String get backupSubtitle => 'Exportuj nebo importuj svá data';

  @override
  String get about => 'O aplikaci';

  @override
  String get version => 'Verze';

  @override
  String get privacy => 'Soukromí';

  @override
  String get termsOfUse => 'Podmínky použití';

  @override
  String get backupTitle => 'Záloha';

  @override
  String get backupPremiumDescription =>
      'Zálohování a export je prémiová funkce';

  @override
  String get exportData => 'Exportovat data';

  @override
  String get exportDataSubtitle => 'Uložit všechny seznamy jako JSON';

  @override
  String get importData => 'Importovat data';

  @override
  String get importDataSubtitle => 'Obnovit seznamy z JSON';

  @override
  String get importJsonTitle => 'Importovat JSON';

  @override
  String get importJsonHint => 'Vlož sem JSON zálohy...';

  @override
  String get backupExported => 'Záloha exportována!';

  @override
  String get budgetAppBar => 'Měsíční rozpočet';

  @override
  String get budgetPremiumLocked => 'Globální měsíční rozpočet je Premium';

  @override
  String get budgetUpgradePrompt => 'Upgraduj pro odemknutí';

  @override
  String get noBudgetDefined => 'Není nastaven rozpočet';

  @override
  String totalEstimated(String amount) {
    return 'Celkem odhadováno: $amount';
  }

  @override
  String get setBudgetButton => 'Nastavit rozpočet';

  @override
  String get budgetLists => 'Seznamy';

  @override
  String get budgetValueLabel => 'Částka';

  @override
  String get setBudgetTitle => 'Měsíční rozpočet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Vše';

  @override
  String get filterPending => 'Čekající';

  @override
  String get filterPurchased => 'Zakoupené';

  @override
  String get sortName => 'Název';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ručně';

  @override
  String get addItem => 'Přidat položku';

  @override
  String get itemName => 'Název položky';

  @override
  String get quantityShort => 'Mn';

  @override
  String get unit => 'Jednotka';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Odhadovaná cena';

  @override
  String get addItemPrice => 'Odhadovaná cena';

  @override
  String get editItem => 'Upravit položku';

  @override
  String get quantityFull => 'Množství';

  @override
  String get editItemPrice => 'Odhadovaná cena';

  @override
  String get addToPantry => 'Přidat do spižírny';

  @override
  String addToPantryPrompt(String name) {
    return 'Přidat \"$name\" do tvé spižírny?';
  }

  @override
  String get yes => 'Ano';

  @override
  String get productName => 'Název produktu';

  @override
  String get idealQty => 'Ideální mn';

  @override
  String get currentQty => 'Aktuální mn';

  @override
  String get trackStock => 'Sledovat zásoby';

  @override
  String get trackStockActive => 'Objevuje se v návrzích nákupu';

  @override
  String get trackStockInactive => 'Negeneruje návrh nákupu';

  @override
  String get createListDialog => 'Vytvořit seznam';

  @override
  String get renameListDialog => 'Přejmenovat seznam';

  @override
  String get listHistory => 'Historie seznamů';

  @override
  String get myLists => 'Mé seznamy';

  @override
  String get viewActive => 'Zobrazit aktivní';

  @override
  String get viewHistory => 'Zobrazit historii';

  @override
  String get noArchivedLists => 'Žádné archivované seznamy';

  @override
  String get noActiveLists => 'Žádné aktivní seznamy';

  @override
  String completedOn(String date) {
    return 'Dokončeno $date';
  }

  @override
  String get sharedLabel => 'Sdíleno';

  @override
  String get restore => 'Obnovit';

  @override
  String get removeSharedTooltip => 'Odebrat';

  @override
  String get deleteListTitle => 'Smazat seznam';

  @override
  String deleteListContent(String name) {
    return 'Opravdu chceš smazat \"$name\"? Všechny položky budou odstraněny.';
  }

  @override
  String get removeSharedListTitle => 'Odebrat sdílený seznam';

  @override
  String removeSharedListContent(String name) {
    return 'Odebrat \"$name\" z tvých seznamů? Původní seznam zůstane nedotčen.';
  }

  @override
  String get createNewList => 'Vytvořit nový seznam';

  @override
  String get aiAssistant => 'AI asistent';

  @override
  String get aiAssistantDescription =>
      'Získej chytré návrhy, recepty a personalizované tipy s naším AI asistentem.';

  @override
  String get generalAssistant => 'Obecný asistent';

  @override
  String get newChat => 'Nový chat';

  @override
  String get noHistory => 'Žádná historie chatu';

  @override
  String get deleteSession => 'Smazat chat';

  @override
  String get deleteSessionConfirm =>
      'Opravdu chcete tento chat smazat? Zprávy budou trvale ztraceny.';

  @override
  String get clearHistory => 'Vyčistit historii';

  @override
  String get clearHistoryConfirm => 'Smazat všechny zprávy v této relaci?';

  @override
  String get chatHint => 'Napiš svou zprávu...';

  @override
  String get chatHintBlocked => 'Odemkněte AI, abyste mohli chatovat';

  @override
  String chatError(String error) {
    return 'Chyba při načítání chatu: $error';
  }

  @override
  String get listHelp => 'Jak mohu pomoci s tvým seznamem?';

  @override
  String get generalHelp => 'Jak mohu dnes pomoci s tvým nákupem?';

  @override
  String get chatSubtitle =>
      'Požádej o návrhy položek, recepty nebo tipy na úsporu.';

  @override
  String get aiError =>
      'Omlouváme se, při zpracování tvého požadavku došlo k chybě. Zkontroluj připojení nebo to zkus znovu později.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Přihlas se pro odemknutí\nprémiových funkcí';

  @override
  String get signInGoogle => 'Přihlásit se přes Google';

  @override
  String get signInApple => 'Přihlásit se přes Apple';

  @override
  String get continueAsGuest => 'Pokračovat jako host';

  @override
  String get onboardingWelcomeTitle => 'Vítejte v KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Nejchytřejší způsob, jak uspořádat nákupy a ušetřit peníze.';

  @override
  String get onboardingSetupTitle => 'Přizpůsobte si své zkušenosti';

  @override
  String get onboardingSetupDesc =>
      'Vyberte si, jak chcete, aby pro vás KipiList vypadala a fungovala.';

  @override
  String get onboardingLoginTitle => 'Uložte vše do cloudu';

  @override
  String get onboardingLoginDesc =>
      'Vaše data se synchronizují na všech vašich zařízeních';

  @override
  String get onboardingShareTitle => 'Sdílejte s těmi, které máte rádi';

  @override
  String get onboardingShareDesc =>
      'Synchronizujte seznamy s rodinou a přáteli v reálném čase';

  @override
  String get onboardingPremiumTitle => 'Odemkněte všechny funkce';

  @override
  String get onboardingPremiumSubtitle =>
      'Získejte ze svých nákupních seznamů maximum';

  @override
  String get onboardingAnnualBadge => 'Nejlepší hodnota';

  @override
  String get onboardingMonthlyLabel => 'Měsíční';

  @override
  String get onboardingAnnualLabel => 'Výroční';

  @override
  String get onboardingViewAllPlans => 'Zobrazit všechny plány';

  @override
  String get onboardingSubscribeCta => 'Upsat';

  @override
  String get onboardingCancelAnytime => 'Zrušit kdykoli. Žádný závazek.';

  @override
  String get onboardingContinueAsGuest => 'Pokračovat jako host';

  @override
  String get onboardingRestore => 'Obnovit';

  @override
  String get onboardingRestoreDesc =>
      'Už máte předplatné? Klepnutím sem jej obnovíte.';

  @override
  String get onboardingExit => 'Výstup';

  @override
  String get onboardingPersonalizationTitle => 'Pojďme se s vámi seznámit';

  @override
  String get onboardingPersonalizationDesc =>
      'Použijeme to k přizpůsobení vašich návrhů a zefektivnění nakupování.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Jaké je tvé oblíbené jídlo?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'např. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Pokračovat';

  @override
  String get onboardingPersonalizationSkip => 'Prozatím přeskočit';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Pro pokračování nám řekněte své oblíbené jídlo';

  @override
  String get settingsDefaultScreen => 'Výchozí domovská obrazovka';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Vyberte si mezi nákupním seznamem nebo chatem AI';

  @override
  String get settingsScreenList => 'Nákupní seznam';

  @override
  String get settingsScreenChat => 'AI chat';

  @override
  String loginError(String error) {
    return 'Chyba přihlášení: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'Upgraduj pro odemknutí';

  @override
  String get itemRemoved => 'Položka odebrána';

  @override
  String get undo => 'Zpět';

  @override
  String get emptyListTitle => 'Tvůj seznam je prázdný';

  @override
  String get emptyListSubtitle => 'Přidej položky pro začátek';

  @override
  String get noListFoundTitle => 'Nenalezeny žádné seznamy';

  @override
  String get noListFoundSubtitle => 'Vytvoř svůj první seznam pro začátek';

  @override
  String get createFirstList => 'Vytvořit první seznam';

  @override
  String get listBudgetTitle => 'Rozpočet seznamu';

  @override
  String get budgetAmountLabel => 'Částka rozpočtu';

  @override
  String get removeBudget => 'Odebrat';

  @override
  String get prefUnlimitedLists => 'Neomezené seznamy';

  @override
  String get prefSharing => 'Sdílení seznamů';

  @override
  String get prefFullHistory => 'Plná historie';

  @override
  String get prefExportData => 'Export dat';

  @override
  String get prefCustomThemes => 'Vlastní motivy';

  @override
  String get prefMonthlyBudget => 'Globální měsíční rozpočet';

  @override
  String get prefAIAssistant => 'Osobní AI asistent';

  @override
  String get prefUnlimitedPantry => 'Neomezená spižírna';

  @override
  String get prefInteractiveArtifacts => 'Interaktivní AI artefakty';

  @override
  String get themeGreen => 'Zelená';

  @override
  String get themeBlue => 'Modrá';

  @override
  String get themePurple => 'Fialová';

  @override
  String get themeRed => 'Červená';

  @override
  String get themeOrange => 'Oranžová';

  @override
  String get themePink => 'Růžová';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantar';

  @override
  String get themeTeal => 'Tyrkysová';

  @override
  String get themeBrown => 'Hnědá';

  @override
  String get catFruits => 'Ovoce';

  @override
  String get catCleaning => 'Úklid';

  @override
  String get catBeverages => 'Nápoje';

  @override
  String get catBakery => 'Pekařství';

  @override
  String get catOthers => 'Ostatní';

  @override
  String get unitPack => 'balení';

  @override
  String get shareSubject => 'Nákupní seznam';

  @override
  String get monthlyBudgetTitle => 'Měsíční rozpočet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Smazat seznam';

  @override
  String get pantryItemRemoved => 'Položka odebrána';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit položek je třeba koupit',
      many: '$deficit položek je třeba koupit',
      few: '$deficit položky je třeba koupit',
      one: '$deficit položku je třeba koupit',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Celkem košík';

  @override
  String get restockLabel => 'Doplnit';

  @override
  String get advancedFeatures => 'Pokročilé funkce';

  @override
  String get selectAll => 'Vybrat vše';

  @override
  String get deselectAll => 'Zrušit výběr';

  @override
  String get monthlyBudgetAppBar => 'Měsíční rozpočet';

  @override
  String get budgetEditTitle => 'Měsíční rozpočet';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vyber seznam pro zobrazení dashboardu.';

  @override
  String get spendingAnalysis => 'Analýza výdajů';

  @override
  String get noItemsToAnalyze => 'V seznamu nejsou žádné položky k analýze.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označ položky jako zakoupené pro zobrazení analýzy.';

  @override
  String get totalSpending => 'Celkem utraceno';

  @override
  String get spendingByCategory => 'Výdaje podle kategorie';

  @override
  String get achievements => 'Úspěchy';

  @override
  String get exportPdfExcel => 'Exportovat PDF/Excel';

  @override
  String get exportPdf => 'Exportovat jako PDF';

  @override
  String get exportExcel => 'Exportovat jako Excel';

  @override
  String get organizingAi => 'ORGANIZOVÁNÍ S AI...';

  @override
  String get yesLabel => 'Ano';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Můj nákupní seznam';

  @override
  String get emptyListAddItems =>
      'Tvůj seznam je prázdný! Nejprve přidej položky. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Seznam kouzelně uspořádán podle kategorií! ✨';

  @override
  String get shoppingMode => 'Nákupní režim';

  @override
  String get smartOrganization => 'Chytrá organizace';

  @override
  String get savings => 'Úspory';

  @override
  String get shoppingModeHeader => 'NÁKUPNÍ REŽIM';

  @override
  String get shareAsText => 'Odeslat položky jako formátovaný text';

  @override
  String get shareRealtime => 'Synchronizace v reálném čase s ostatními';

  @override
  String get quickRecipe => 'Rychlý recept';

  @override
  String get quickRecipePrompt => 'Navrhni recepty s položkami z mého seznamu.';

  @override
  String get economyTips => 'Tipy na úsporu';

  @override
  String get economyTipsPrompt => 'Jak mohu ušetřit na tomto nákupu?';

  @override
  String get organizeAisles => 'Uspořádat podle uliček';

  @override
  String get organizeAislesPrompt => 'Uspořádat podle uliček obchodu.';

  @override
  String get recipeSuggestion => 'Návrh receptu';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Zbývá $remaining kreditů';
  }

  @override
  String get addAllToList => 'Přidat vše do seznamu';

  @override
  String get organizeByAisles => 'Uspořádat podle uliček';

  @override
  String get voiceTranscriptionTooltip => 'Hlasové psaní (Zdarma)';

  @override
  String get aiVoiceCommandTooltip => 'AI hlasový příkaz (Premium)';

  @override
  String get voiceCommandTitle => 'AI hlasový příkaz';

  @override
  String get voiceCommandContent =>
      'Mluv přirozeně pro správu svého seznamu!\n\nPříklady:\n• \'Přidej chléb, sýr a šunku\'\n• \'Odeber prací prášek\'\n• \'Změň motiv na modrý\'\n\nToto je exkluzivní funkce KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Zobrazit plány';

  @override
  String get itemsAddedSuccess => 'Položky úspěšně přidány do seznamu!';

  @override
  String get viewList => 'Zobrazit seznam';

  @override
  String get feedbackTitle => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackPrompt => 'Co byste chtěli sdílet?';

  @override
  String get feedbackTypeBug => 'Nahlásit chybu';

  @override
  String get feedbackTypeBugHint => 'Něco nefunguje';

  @override
  String get feedbackTypeSuggestion => 'Návrh';

  @override
  String get feedbackTypeSuggestionHint => 'Nápad na vylepšení aplikace';

  @override
  String get feedbackTypeTranslation => 'Problém s překladem';

  @override
  String get feedbackTypeTranslationHint => 'Nesprávný nebo nevhodný překlad';

  @override
  String get feedbackTypeFeature => 'Žádost o funkci';

  @override
  String get feedbackTypeFeatureHint => 'Funkce, kterou byste rádi viděli';

  @override
  String get feedbackTypeOther => 'Jiné';

  @override
  String get feedbackTypeOtherHint => 'Jiný typ zpětné vazby';

  @override
  String get feedbackHint => 'Popište svou zpětnou vazbu podrobně...';

  @override
  String get feedbackSend => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackSending => 'Odesílání...';

  @override
  String get feedbackThankYou => 'Děkujeme!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše zpětná vazba byla přijata a pomáhá nám vylepšovat KipiList pro všechny.';

  @override
  String get feedbackBack => 'Zpět';

  @override
  String feedbackError(String error) {
    return 'Chyba při odesílání: $error';
  }

  @override
  String get feedbackRetry => 'Zkusit znovu';

  @override
  String get feedbackSettingsTitle => 'Odeslat zpětnou vazbu';

  @override
  String get feedbackSettingsSubtitle =>
      'Nahlaste chyby, navrhněte vylepšení nebo opravte překlady';

  @override
  String get aiEnergy => 'Energie AI';

  @override
  String get searchInConversation => 'Hledat v konverzaci...';

  @override
  String get noMessagesFound => 'Nebyly nalezeny žádné zprávy';

  @override
  String get suggestedQuestions => 'Doporučené otázky:';

  @override
  String get shoppingAssistant => 'Nákupní asistentka';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Zakoupeno $purchased z $total';
  }

  @override
  String get estimatedCost => 'Odhadovaný';

  @override
  String get viewItems => 'Zobrazit položky';

  @override
  String get noItemsInList => 'V seznamu nejsou žádné položky';

  @override
  String get longHistoryWarning =>
      'Dlouhá historie: asistent se zaměřuje na nejnovější zprávy pro lepší výkon.';

  @override
  String get listening => 'Naslouchání...';

  @override
  String get addDirectToList => 'Přidat přímo do seznamu';

  @override
  String get unlockFullResponse => 'Odemkněte plnou odezvu';

  @override
  String get switchList => 'Přepnout seznam';

  @override
  String get marketMode => 'Režim trhu';

  @override
  String get backToChat => 'Zpět na Chat';

  @override
  String get finishShopping => 'Dokončit nakupování';

  @override
  String get welcomeAiAssistant => 'Vítejte v AI Assistant';

  @override
  String get createListToStartAi =>
      'Vytvořte si nákupní seznam a začněte používat chytrý chat.';

  @override
  String get howCanIHelp => 'Jak mohu pomoci?';

  @override
  String get chatSubtitleShort => 'Zeptejte se na ceny, recepty, organizaci...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total zakoupeno';
  }

  @override
  String get quickReplies => 'Rychlé odpovědi:';

  @override
  String get voiceProFeature =>
      'Pokročilé hlasové příkazy jsou Pro. Povolení základního diktování...';

  @override
  String get viewPro => 'Zobrazit Pro';

  @override
  String get errorLoadingChat => 'Jejda! Při načítání chatu se něco pokazilo.';

  @override
  String get errorLoadingChatSubtitle =>
      'Zkontrolujte připojení nebo to zkuste znovu později.';

  @override
  String get errorOscillation =>
      'K tomu může dojít v důsledku oscilací sítě nebo dočasné nedostupnosti. Zkuste to prosím znovu.';

  @override
  String get activeListening => 'Aktivní naslouchání';

  @override
  String get whatToDoWithItem => 'Co byste s touto položkou chtěli udělat?';

  @override
  String get viewDetails => 'Zobrazit podrobnosti';

  @override
  String get openMenu => 'Otevřít menu';

  @override
  String get viewRecipe => 'Zobrazit recept';

  @override
  String get recipeCreated => 'Recept byl vytvořen!';

  @override
  String get editRecipe => 'Upravit';

  @override
  String get deleteRecipe => 'Smazat';

  @override
  String get deleteRecipeConfirm => 'Smazat tento recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Opravdu chcete smazat \"$recipeName\"? Tuto akci nelze vzít zpět.';
  }

  @override
  String get ingredients => 'Ingredience';

  @override
  String get instructions => 'Instrukce';

  @override
  String get prepTime => 'Čas přípravy';

  @override
  String get recipeSaved => 'Recept byl uložen!';

  @override
  String get noRecipesSaved => 'Žádné recepty nejsou uloženy';

  @override
  String get noRecipesSavedHint =>
      'Vytvořte svůj první vlastní recept klepnutím na tlačítko níže.';

  @override
  String get myRecipes => 'Moje recepty';

  @override
  String get newRecipe => 'Nový recept';

  @override
  String get loadingRecipes => 'Načítání vašich receptů...';

  @override
  String get errorLoadingRecipes => 'Chyba při načítání receptů';

  @override
  String get addIngredient => 'Přidat ingredienci';

  @override
  String get saveRecipe => 'Uložit';

  @override
  String get recipeName => 'Název receptu';

  @override
  String get shortDescription => 'Krátký popis';

  @override
  String get prepTimeMinutes => 'Čas přípravy (minuty)';

  @override
  String get instructionsHint => 'Zadejte jeden krok na řádek...';

  @override
  String get addPhoto => 'Přidat fotku';

  @override
  String get imageUrlPlaceholder => 'Nebo vložte URL obrázku';

  @override
  String get tags => 'Tagy';

  @override
  String get recipeTags => 'Tagy receptu';

  @override
  String get suggestedTags => 'Navrhované';

  @override
  String get searchRecipes => 'Hledat recepty...';

  @override
  String get filterByTag => 'Filtrovat podle tagu';

  @override
  String get allTags => 'Vše';

  @override
  String get recipeDeleted => 'Recept byl smazán';

  @override
  String get saveChanges => 'Uložit změny';

  @override
  String get editRecipeTitle => 'Upravit recept';

  @override
  String get newRecipeTitle => 'Nový recept';

  @override
  String get requiredField => 'Povinné';

  @override
  String get chooseImageSource => 'Vyberte zdroj obrázku';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Zadejte URL';

  @override
  String get recipeImage => 'Obrázek receptu';

  @override
  String get removeImage => 'Odstranit obrázek';

  @override
  String get mealPlannerTitle => 'Plánovač jídel';

  @override
  String get mealPlannerViewMonthly => 'Měsíční zobrazení';

  @override
  String get mealPlannerViewWeekly => 'Týdenní zobrazení';

  @override
  String get mealPlannerNoMeals => 'Žádná plánovaná jídla';

  @override
  String get mealPlannerNoMealsHint => 'Klepnutím na den přidáte jídlo';

  @override
  String get mealPlannerLoading => 'Načítání jídelníčku...';

  @override
  String get mealPlannerError => 'Chyba při načítání jídelníčku';

  @override
  String get mealPlannerAddMeal => 'Přidat jídlo';

  @override
  String get mealPlannerEditMeal => 'Upravit jídlo';

  @override
  String get mealPlannerDeleteMeal => 'Odebrat jídlo';

  @override
  String get mealPlannerMealDeleted => 'Jídlo bylo odebráno';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porce',
      many: '$count porcí',
      few: '$count porce',
      one: '$count porce',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porce';

  @override
  String get mealPlannerNoteLabel => 'Poznámka (volitelné)';

  @override
  String get mealPlannerSelectRecipe => 'Vyberte recept';

  @override
  String get mealPlannerSearchRecipes => 'Hledat recepty...';

  @override
  String get mealPlannerNoRecipesFound => 'Žádné recepty nenalezeny';

  @override
  String get mealPlannerNoRecipesHint =>
      'Nejprve vytvořte recepty na kartě Recepty';

  @override
  String get mealPlannerSave => 'Přidat do plánu';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Naplánováno $count z $total jídel';
  }

  @override
  String get mealPlannerGenerateList => 'Vygenerovat nákupní seznam';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Přidat všechny ingredience z plánovaných jídel na tento týden do nákupního seznamu?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Do seznamu bylo přidáno $count ingrediencí!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Žádné ingredience k přidání. Nejprve naplánujte jídla s recepty.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Nejprve vytvořte nákupní seznam.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Snídaně';

  @override
  String get mealPlannerMealTypeLunch => 'Oběd';

  @override
  String get mealPlannerMealTypeDinner => 'Večeře';

  @override
  String get mealPlannerMealTypeSnack => 'Svačina';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Na tento týden není nic naplánováno';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Klepnutím na jakýkoli den začněte plánovat svá jídla!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Pozvat do seznamu';

  @override
  String get shareApp => 'Sdílet aplikaci';

  @override
  String get shareAppDescription => 'Pozvěte přátele, aby používali KipiList';

  @override
  String shareReferralText(Object url) {
    return 'K organizaci nákupů používám KipiList! Stáhněte si přes můj odkaz a oba získáme 7 dní Premium zdarma: $url';
  }

  @override
  String get shareReferralSubject => 'Získejte 7 dní KipiList Premium!';
}
