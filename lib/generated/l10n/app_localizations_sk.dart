// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Nákupný zoznam';

  @override
  String get lists => 'Zoznamy';

  @override
  String get pantry => 'Spiž';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recepty';

  @override
  String get navLists => 'Zoznamy';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get save => 'Uložiť';

  @override
  String get create => 'Vytvoriť';

  @override
  String get add => 'Pridať';

  @override
  String get remove => 'Odstrániť';

  @override
  String get delete => 'Vymazať';

  @override
  String get edit => 'Upraviť';

  @override
  String get copy => 'Kopírovať';

  @override
  String get next => 'Ďalej';

  @override
  String get retry => 'Skúsiť znova';

  @override
  String get regenerate => 'Regenerovať';

  @override
  String get copiedToClipboard => 'Skopírované do schránky';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get close => 'Zavrieť';

  @override
  String get import => 'Importovať';

  @override
  String get rename => 'Premenovať';

  @override
  String get upgrade => 'Inovovať';

  @override
  String get clear => 'Vyčistiť';

  @override
  String error(String message) {
    return 'Chyba: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Chyba: $message';
  }

  @override
  String get purchaseError => 'Chyba pri spracovaní nákupu. Skúste znova.';

  @override
  String get restoreError => 'Chyba pri obnovení nákupov. Skúste znova.';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get fieldRequired => 'Povinné pole';

  @override
  String get addedFeedback => 'Pridané!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Ukončite nákupný režim';

  @override
  String get exit => 'VÝCHOD';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vybraté $count',
      many: 'Vybratých $count',
      few: 'Vybrané $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Odhad';

  @override
  String get alreadyPurchased => 'Už zakúpené';

  @override
  String get clearList => 'Vyčistiť zoznam';

  @override
  String get clearPurchased => 'Odstrániť zakúpené';

  @override
  String get share => 'Zdieľať';

  @override
  String get shareViaCode => 'Zdieľať cez kód';

  @override
  String get importViaCode => 'Importovať cez kód';

  @override
  String get listAssistant => 'Asistent zoznamu';

  @override
  String get globalAssistant => 'Globálny asistent';

  @override
  String get becomePremium => 'Staňte sa Premium';

  @override
  String get manageSubscription => 'Spravovať predplatné';

  @override
  String get completePurchase => 'Dokončiť nákup';

  @override
  String get confirmClearList => 'Odstrániť všetky položky?';

  @override
  String get shareListTitle => 'Zdieľať zoznam';

  @override
  String get shareThisCode => 'Zdieľajte tento kód:';

  @override
  String get validForLimitedTime => 'Platné na obmedzený čas';

  @override
  String get importListTitle => 'Importovať zoznam';

  @override
  String get enterCodeHint => 'Zadajte kód';

  @override
  String get confirmArchiveTitle => 'Dokončiť nákup';

  @override
  String get confirmArchiveContent =>
      'Dokončiť tento nákup a archivovať zoznam?';

  @override
  String get complete => 'Dokončiť';

  @override
  String get listArchived => 'Zoznam úspešne archivovaný!';

  @override
  String listAdded(String listName) {
    return '$listName pridaný!';
  }

  @override
  String get buy => 'Kúpiť';

  @override
  String get unmark => 'Zrušiť označenie';

  @override
  String confirmDeleteItems(int count) {
    return 'Odstrániť $count položku(y/iek)?';
  }

  @override
  String get confirmDeleteTitle => 'Potvrdiť';

  @override
  String confirmContent(int count) {
    return 'Odstrániť $count položku(y/iek)?';
  }

  @override
  String get archiveList => 'Archivovať zoznam';

  @override
  String get pantryAppBar => 'Spiž';

  @override
  String get generateShoppingList => 'Generovať nákupný zoznam';

  @override
  String get pantryEmpty => 'Prázdna spižiareň';

  @override
  String get pantryEmptySubtitle => 'Pridajte produkty, ktoré chcete mať doma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit položku(y/iek) treba kúpiť';
  }

  @override
  String get noItemsToBuy => 'Žiadne položky na kúpu';

  @override
  String get newPantryList => 'Nákup zo spiže';

  @override
  String get newListTitle => 'Nový nákupný zoznam';

  @override
  String itemsWillBeAdded(int count) {
    return '$count položku(y/iek) bude pridaných';
  }

  @override
  String get listNameLabel => 'Názov zoznamu';

  @override
  String listCreated(String name, int count) {
    return 'Zoznam \"$name\" vytvorený s $count položkami';
  }

  @override
  String get noTracking => 'Bez sledovania';

  @override
  String get markAsPurchased => 'Označiť ako kúpené';

  @override
  String editPantryItem(String name) {
    return 'Upraviť $name';
  }

  @override
  String get idealQuantity => 'Ideálne množstvo';

  @override
  String get currentQuantity => 'Aktuálne množstvo';

  @override
  String get consumed => 'Spotrebované';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name doplnené na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Odstrániť \"$name\" zo spiže?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Upraviť $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Umiestnite čiarový kód do stredu';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'Nastavenia';

  @override
  String get language => 'Jazyk';

  @override
  String get languagePortuguese => 'Português (Brazília)';

  @override
  String get languageEnglish => 'angličtina';

  @override
  String get languageSystem => 'Predvolené systémové';

  @override
  String get chooseLanguage => 'Vyberte Jazyk';

  @override
  String get searchLanguage => 'Jazyk vyhľadávania...';

  @override
  String get currency => 'mena';

  @override
  String get chooseCurrency => 'Vyberte položku Mena';

  @override
  String get searchCurrency => 'Hľadať menu...';

  @override
  String get appearance => 'Vzhľad';

  @override
  String get light => 'Svetlý';

  @override
  String get system => 'Systém';

  @override
  String get dark => 'Tmavý';

  @override
  String get themeColor => 'Farba témy';

  @override
  String get dynamicColors => 'Dynamické farby';

  @override
  String get dynamicColorsSubtitle => 'Použite farby podľa tapety';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktivujte dynamické farby, aby sa farba motívu prejavila';

  @override
  String get finance => 'Financie';

  @override
  String get monthlyBudgetNav => 'Mesačný rozpočet';

  @override
  String get budgetSubtitle => 'Sledujte svoje mesačné výdavky';

  @override
  String get data => 'Dáta';

  @override
  String get backupNav => 'Záloha';

  @override
  String get backupSubtitle => 'Exportujte alebo importujte svoje dáta';

  @override
  String get about => 'O aplikácii';

  @override
  String get version => 'Verzia';

  @override
  String get privacy => 'Súkromie';

  @override
  String get termsOfUse => 'Podmienky používania';

  @override
  String get myAchievements => 'Moje úspechy';

  @override
  String get itemsPurchased => 'Položky zakúpené';

  @override
  String get totalSavings => 'Celková úspora';

  @override
  String get currentStreak => 'Aktuálny pruh';

  @override
  String streakDays(int count) {
    return '$days dní';
  }

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
  String get backupTitle => 'Záloha';

  @override
  String get backupPremiumDescription => 'Záloha a export je prémiová funkcia';

  @override
  String get exportData => 'Exportovať dáta';

  @override
  String get exportDataSubtitle => 'Uložiť všetky zoznamy ako JSON';

  @override
  String get importData => 'Importovať dáta';

  @override
  String get importDataSubtitle => 'Obnoviť zoznamy z JSON';

  @override
  String get importJsonTitle => 'Importovať JSON';

  @override
  String get importJsonHint => 'Vložte JSON zálohy sem...';

  @override
  String get backupExported => 'Záloha exportovaná!';

  @override
  String get budgetAppBar => 'Mesačný rozpočet';

  @override
  String get budgetPremiumLocked => 'Globálny mesačný rozpočet je prémiový';

  @override
  String get budgetUpgradePrompt => 'Inovujte pre odomknutie';

  @override
  String get noBudgetDefined => 'Rozpočet nie je nastavený';

  @override
  String totalEstimated(String amount) {
    return 'Celkový odhad: $amount';
  }

  @override
  String get setBudgetButton => 'Nastaviť rozpočet';

  @override
  String get budgetLists => 'Zoznamy';

  @override
  String get budgetValueLabel => 'Suma';

  @override
  String get setBudgetTitle => 'Mesačný rozpočet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Všetky';

  @override
  String get filterPending => 'Čakajúce';

  @override
  String get filterPurchased => 'Zakúpené';

  @override
  String get sortName => 'Názov';

  @override
  String get sortCategory => 'Kategória';

  @override
  String get sortDate => 'Dátum';

  @override
  String get sortManual => 'Manuálne';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Pridať položku';

  @override
  String get itemName => 'Názov položky';

  @override
  String get quantityShort => 'Množ.';

  @override
  String get unit => 'Jednotka';

  @override
  String get category => 'Kategória';

  @override
  String get estimatedPrice => 'Odhadovaná cena';

  @override
  String get addItemPrice => 'Odhadovaná cena';

  @override
  String get editItem => 'Upraviť položku';

  @override
  String get quantityFull => 'Množstvo';

  @override
  String get editItemPrice => 'Odhadovaná cena';

  @override
  String get addToPantry => 'Pridať do spiže';

  @override
  String addToPantryPrompt(String name) {
    return 'Pridať \"$name\" do vašej spiže?';
  }

  @override
  String get yes => 'Áno';

  @override
  String get productName => 'Názov produktu';

  @override
  String get idealQty => 'Ideálne množ.';

  @override
  String get currentQty => 'Aktuálne množ.';

  @override
  String get trackStock => 'Sledovať zásoby';

  @override
  String get trackStockActive => 'Zobrazuje sa v nákupných návrhoch';

  @override
  String get trackStockInactive => 'Negeneruje nákupný návrh';

  @override
  String get createListDialog => 'Vytvoriť zoznam';

  @override
  String get renameListDialog => 'Premenovať zoznam';

  @override
  String get listHistory => 'História zoznamov';

  @override
  String get myLists => 'Moje zoznamy';

  @override
  String get viewActive => 'Zobraziť aktívne';

  @override
  String get viewHistory => 'Zobraziť históriu';

  @override
  String get noArchivedLists => 'Žiadne archivované zoznamy';

  @override
  String get noActiveLists => 'Žiadne aktívne zoznamy';

  @override
  String completedOn(String date) {
    return 'Dokončené $date';
  }

  @override
  String get sharedLabel => 'Zdieľané';

  @override
  String get restore => 'Obnoviť';

  @override
  String get removeSharedTooltip => 'Odstrániť';

  @override
  String get deleteListTitle => 'Vymazať zoznam';

  @override
  String deleteListContent(String name) {
    return 'Ste si istí, že chcete vymazať \"$name\"? Všetky položky budú odstránené.';
  }

  @override
  String get removeSharedListTitle => 'Odstrániť zdieľaný zoznam';

  @override
  String removeSharedListContent(String name) {
    return 'Odstrániť \"$name\" z vašich zoznamov? Pôvodný zoznam zostane nedotknutý.';
  }

  @override
  String get createNewList => 'Vytvoriť nový zoznam';

  @override
  String get aiAssistant => 'AI asistent';

  @override
  String get aiAssistantDescription =>
      'Získajte inteligentné návrhy, recepty a personalizované tipy s naším AI asistentom.';

  @override
  String get generalAssistant => 'Všeobecný asistent';

  @override
  String get newChat => 'Nový rozhovor';

  @override
  String get noHistory => 'Žiadna história rozhovorov';

  @override
  String get deleteSession => 'Odstrániť rozhovor';

  @override
  String get deleteSessionConfirm =>
      'Naozaj chcete odstrániť tento rozhovor? Správy sa natrvalo stratia.';

  @override
  String get clearHistory => 'Vyčistiť históriu';

  @override
  String get clearHistoryConfirm => 'Vymazať všetky správy v tejto relácii?';

  @override
  String get chatHint => 'Napíšte svoju správu...';

  @override
  String get chatHintBlocked => 'Odomknite AI, aby ste mohli chatovať';

  @override
  String chatError(String error) {
    return 'Chyba pri načítaní chatu: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'Ako vám môžem pomôcť s vaším zoznamom?';

  @override
  String get generalHelp => 'Ako vám dnes môžem pomôcť s nákupom?';

  @override
  String get chatSubtitle =>
      'Pýtajte sa na návrhy položiek, recepty alebo tipy na šetrenie.';

  @override
  String get aiError =>
      'Prepáčte, pri spracovaní vašej požiadavky sa vyskytla chyba. Skontrolujte pripojenie alebo skúste znova neskôr.';

  @override
  String get aiLimitAlmostReached => 'Takmer chýbajú správy AI';

  @override
  String get unlockAi => 'Odomknite neobmedzenú AI';

  @override
  String get aiTeaserFallback =>
      'Prihláste sa na odber Premium, aby ste odomkli plnú odpoveď a získali neobmedzené tipy na AI pre svoje nákupy...';

  @override
  String aiUsageWarning(int remaining) {
    return 'Tento mesiac zostáva $remaining akcií AI – neobmedzená inovácia';
  }

  @override
  String get aiUsageExhausted =>
      'Bol dosiahnutý mesačný limit AI. Inovujte na Pro neobmedzene →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Prihláste sa pre odomknutie\nprémiových funkcií';

  @override
  String get signInGoogle => 'Prihlásiť sa cez Google';

  @override
  String get signInApple => 'Prihlásiť sa cez Apple';

  @override
  String get continueAsGuest => 'Pokračovať ako hosť';

  @override
  String get onboardingWelcomeTitle => 'Vitajte v KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Najchytrejší spôsob, ako si zorganizovať nákupy a ušetriť peniaze.';

  @override
  String get onboardingSetupTitle => 'Prispôsobte si svoj zážitok';

  @override
  String get onboardingSetupDesc =>
      'Vyberte si, ako chcete, aby KipiList vyzerala a pracovala pre vás.';

  @override
  String get onboardingLoginTitle => 'Uložte všetko do cloudu';

  @override
  String get onboardingLoginDesc =>
      'Vaše údaje sú synchronizované na všetkých vašich zariadeniach';

  @override
  String get onboardingShareTitle => 'Zdieľajte s tými, ktorých máte radi';

  @override
  String get onboardingShareDesc =>
      'Synchronizujte zoznamy s rodinou a priateľmi v reálnom čase';

  @override
  String get onboardingPremiumTitle => 'Odomknite všetky funkcie';

  @override
  String get onboardingPremiumSubtitle =>
      'Vyťažte zo svojich nákupných zoznamov maximum';

  @override
  String get onboardingAnnualBadge => 'Najlepšia hodnota';

  @override
  String get onboardingMonthlyLabel => 'Mesačne';

  @override
  String get onboardingAnnualLabel => 'Ročný';

  @override
  String get onboardingViewAllPlans => 'Zobraziť všetky plány';

  @override
  String get onboardingSubscribeCta => 'Prihlásiť sa na odber';

  @override
  String get onboardingCancelAnytime => 'Zrušiť kedykoľvek. Žiadny záväzok.';

  @override
  String get onboardingContinueAsGuest => 'Pokračujte ako hosť';

  @override
  String get onboardingRestore => 'Obnoviť nákupy';

  @override
  String get onboardingRestoreDesc =>
      'Už máte predplatné? Klepnutím tu ho obnovíte.';

  @override
  String get onboardingMaybeLater => 'Možno neskôr';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Ahoj $name, zorganizuj si nakupovanie správnym spôsobom.';
  }

  @override
  String get onboardingSlide1Title => 'Inteligentné nákupné zoznamy';

  @override
  String get onboardingSlide1Body =>
      'Okamžite vytvárajte a zdieľajte zoznamy. Kipi pridáva položky automaticky na základe vašich zvykov.';

  @override
  String get onboardingSlide2Title => 'Zoznámte sa s Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pýtajte sa na čokoľvek – vytvorte zoznamy, nájdite recepty, sledujte svoju špajzu, plánujte si týždeň.';

  @override
  String get onboardingSlide3Title => 'Plánovanie špajze a stravovania';

  @override
  String get onboardingSlide3Body =>
      'Sledujte, čo máte, plánujte jedlá a automaticky generujte nákupné zoznamy.';

  @override
  String get onboardingExit => 'VÝCHOD';

  @override
  String get onboardingPersonalizationTitle => 'Poďme sa s vami zoznámiť';

  @override
  String get onboardingPersonalizationDesc =>
      'Použijeme to na prispôsobenie vašich návrhov a inteligentnejšie nakupovanie.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Aké je tvoje obľúbené jedlo?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'napr. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Pokračovať';

  @override
  String get onboardingPersonalizationSkip => 'Zatiaľ preskočiť';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Povedzte nám svoje obľúbené jedlo, aby sme mohli pokračovať';

  @override
  String get settingsDefaultScreen => 'Predvolená domovská obrazovka';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Vyberte si medzi nákupným zoznamom alebo chatom AI';

  @override
  String get settingsScreenList => 'Nákupný zoznam';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Chyba prihlásenia: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Chyba pri načítavaní ponúk. Skúste to znova.';

  @override
  String get paywallPurchaseError =>
      'Nákup sa nepodarilo dokončiť. Skúste to znova.';

  @override
  String get paywallRestoreError =>
      'Nenašlo sa žiadne aktívne predplatné na obnovenie.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DNÍ ZADARMO';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TÝŽDEŇ ZADARMO',
      one: '$count TÝŽDEŇ ZADARMO',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESIAC ZADARMO',
      one: '$count MESIAC ZADARMO',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Vyskúšajte zadarmo!';

  @override
  String get paywallTrialSubtitle => 'Zrušiť kedykoľvek. Dnes bez poplatku.';

  @override
  String get paywallTrialCta => 'Spustiť bezplatnú skúšobnú verziu';

  @override
  String get recipeAddToList => 'Pridať do nákupného zoznamu';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected =>
      'Nie je vybratý žiadny zoznam. Najprv otvorte zoznam.';

  @override
  String get paywallFeaturesTitle => 'Všetko, čo potrebujete:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organizuje váš zoznam automaticky';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Vytvorte toľko zoznamov, koľko potrebujete';

  @override
  String get paywallFeatureDescSharing => 'Nakupujte spolu v reálnom čase';

  @override
  String get paywallFeatureDescPantry => 'Sledujte, čo máte doma';

  @override
  String get paywallFeatureDescBudget => 'Dodržujte rozpočet každý mesiac';

  @override
  String get paywallFeatureUnlimitedLists => 'Neobmedzené zoznamy';

  @override
  String get paywallFeatureSmartAI => 'Inteligentná AI';

  @override
  String get paywallFeatureExpenseControl => 'Kontrola výdavkov';

  @override
  String get paywallFeatureSharing => 'Zdieľanie';

  @override
  String get paywallBeforeAfterTitle => 'AI pred a po:';

  @override
  String get paywallLabelCommon => 'Bežné';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ryža';

  @override
  String get paywallBeforeItem2 => 'mydlo';

  @override
  String get paywallBeforeItem3 => 'mäso';

  @override
  String get paywallBeforeItem4 => 'chlieb';

  @override
  String get paywallAfterItem1 => 'Zrná';

  @override
  String get paywallAfterItem2 => 'Upratovanie';

  @override
  String get paywallAfterItem3 => 'Mäso';

  @override
  String get paywallAfterItem4 => 'Pekáreň';

  @override
  String get paywallTestimonialsTitle => 'Čo hovoria naši používatelia:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI zorganizuje moje nakupovanie za pár sekúnd. Ušetrím 20 minút na výlet na trh.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Už som nikdy nezabudol na položku zoznamu. AI chat je senzačný!';

  @override
  String get paywallSocialProof => 'Využíva ho +2 400 rodín';

  @override
  String get paywallCtaUnlock => 'Odomknite PRO';

  @override
  String get paywallBestValue => 'NAJLEPŠIA HODNOTA';

  @override
  String get paywallMostPopular => 'NAJOBĽÚBENEJŠÍ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Bezpečná platba';

  @override
  String get paywallSelectPlan => 'Vyberte si svoj plán:';

  @override
  String paywallSavePercent(Object percent) {
    return 'Ušetrite $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Len $price/mesiac';
  }

  @override
  String get paywallPackageAnnual => 'Ročný plán';

  @override
  String get paywallPackageMonthly => 'Mesačný plán';

  @override
  String get paywallPackageLifetime => 'Doživotný prístup';

  @override
  String get paywallCancelAnytime => 'Zrušiť kedykoľvek. Žiadny záväzok.';

  @override
  String paywallTrialInCard(int days) {
    return 'Prvých $days dní ZADARMO';
  }

  @override
  String get paywallSecuredByStore =>
      'Zabezpečené službou Google Play · Zrušiť kedykoľvek';

  @override
  String get paywallPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get paywallTerms => 'Podmienky používania';

  @override
  String get paywallRestore => 'Obnoviť';

  @override
  String get paywallHeroHeadline => 'Kipi AI vždy po vašom boku';

  @override
  String get paywallHeroSubtitle =>
      'Pridávajte položky, organizujte zoznamy a šetrite čas s AI vo vrecku';

  @override
  String get paywallBenefit1Desc =>
      'Pridáva, organizuje a navrhuje položky 24 hodín denne, 7 dní v týždni';

  @override
  String get paywallBenefit2Desc => 'Žiadny limit na 3 zoznamy';

  @override
  String get paywallBenefit3Desc => 'Sledovanie výdavkov a rodinné zoznamy';

  @override
  String get paywallPackageMonthlyDesc => 'Plná flexibilita';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Začnite zadarmo — $days dní';
  }

  @override
  String get premiumUpgrade => 'Inovujte pre odomknutie';

  @override
  String get itemRemoved => 'Položka odstránená';

  @override
  String get undo => 'Vrátiť';

  @override
  String get emptyListTitle => 'Váš zoznam je prázdny';

  @override
  String get emptyListSubtitle => 'Pridajte položky pre začiatok';

  @override
  String get noListFoundTitle => 'Nenašli sa žiadne zoznamy';

  @override
  String get noListFoundSubtitle => 'Vytvorte svoj prvý zoznam pre začiatok';

  @override
  String get createFirstList => 'Vytvoriť prvý zoznam';

  @override
  String get listBudgetTitle => 'Rozpočet zoznamu';

  @override
  String get budgetAmountLabel => 'Suma rozpočtu';

  @override
  String get removeBudget => 'Odstrániť';

  @override
  String get prefUnlimitedLists => 'Neobmedzené zoznamy';

  @override
  String get prefSharing => 'Zdieľať zoznamy';

  @override
  String get prefFullHistory => 'Plná história';

  @override
  String get prefExportData => 'Exportovať dáta';

  @override
  String get prefCustomThemes => 'Vlastné témy';

  @override
  String get prefMonthlyBudget => 'Globálny mesačný rozpočet';

  @override
  String get prefAIAssistant => 'Osobný AI asistent';

  @override
  String get prefUnlimitedPantry => 'Neobmedzená spižeň';

  @override
  String get prefInteractiveArtifacts => 'Interaktívne AI artefakty';

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
  String get themePink => 'Ružová';

  @override
  String get themeIndigo => 'Indigová';

  @override
  String get themeAmber => 'Jantárová';

  @override
  String get themeTeal => 'Tyrkysová';

  @override
  String get themeBrown => 'Hnedá';

  @override
  String get catFruits => 'Ovocie';

  @override
  String get catCleaning => 'Čistenie';

  @override
  String get catBeverages => 'Nápoje';

  @override
  String get catBakery => 'Pečivo';

  @override
  String get catOthers => 'Ostatné';

  @override
  String get unitPack => 'balenie';

  @override
  String get shareSubject => 'Nákupný zoznam';

  @override
  String get monthlyBudgetTitle => 'Mesačný rozpočet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Vymazať zoznam';

  @override
  String get pantryItemRemoved => 'Položka odstránená';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit položiek treba kúpiť',
      many: '$deficit položiek treba kúpiť',
      few: '$deficit položky treba kúpiť',
      one: '$deficit položku treba kúpiť',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Celkom v košíku';

  @override
  String get restockLabel => 'Doplniť';

  @override
  String get advancedFeatures => 'Pokročilé funkcie';

  @override
  String get selectAll => 'Vybrať všetko';

  @override
  String get deselectAll => 'Zrušiť výber';

  @override
  String get monthlyBudgetAppBar => 'Mesačný rozpočet';

  @override
  String get budgetEditTitle => 'Mesačný rozpočet';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard => 'Vyberte zoznam pre zobrazenie panelu.';

  @override
  String get spendingAnalysis => 'Analýza výdavkov';

  @override
  String get noItemsToAnalyze => 'V zozname nie sú položky na analýzu.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označte položky ako kúpené pre zobrazenie analýzy.';

  @override
  String get totalSpending => 'Celkové výdavky';

  @override
  String get spendingByCategory => 'Výdavky podľa kategórie';

  @override
  String get achievements => 'Úspechy';

  @override
  String get exportPdfExcel => 'Exportovať PDF/Excel';

  @override
  String get exportPdf => 'Exportovať ako PDF';

  @override
  String get exportExcel => 'Exportovať ako Excel';

  @override
  String get organizingAi => 'ORGANIZOVANIE POMOCOU AI...';

  @override
  String get yesLabel => 'Áno';

  @override
  String get noLabel => 'Nie';

  @override
  String get shareListText => 'Môj nákupný zoznam';

  @override
  String get emptyListAddItems =>
      'Váš zoznam je prázdny! Najprv pridajte položky. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Zoznam kúzelne usporiadaný podľa kategórií! ✨';

  @override
  String get shoppingMode => 'Režim nakupovania';

  @override
  String get smartOrganization => 'Inteligentné usporiadanie';

  @override
  String get savings => 'Úspory';

  @override
  String get shoppingModeHeader => 'REŽIM NAKUPOVANIA';

  @override
  String get shareAsText => 'Poslať položky ako formátovaný text';

  @override
  String get shareRealtime => 'Synchronizácia v reálnom čase s ďalšími ľuďmi';

  @override
  String get quickRecipe => 'Rýchly recept';

  @override
  String get quickRecipePrompt =>
      'Navrhni recepty s položkami z môjho zoznamu.';

  @override
  String get economyTips => 'Tipy na šetrenie';

  @override
  String get economyTipsPrompt => 'Ako môžem ušetriť na tomto nákupe?';

  @override
  String get organizeAisles => 'Usporiadať podľa uličiek';

  @override
  String get organizeAislesPrompt => 'Usporiadať podľa obchodných uličiek.';

  @override
  String get recipeSuggestion => 'Návrh receptu';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Zostáva $remaining kreditov';
  }

  @override
  String get addAllToList => 'Pridať všetko do zoznamu';

  @override
  String get organizeByAisles => 'Usporiadať podľa uličiek';

  @override
  String get voiceTranscriptionTooltip => 'Hlasové písanie (Zadarmo)';

  @override
  String get aiVoiceCommandTooltip => 'AI hlasový príkaz (Premium)';

  @override
  String get voiceCommandTitle => 'AI hlasový príkaz';

  @override
  String get voiceCommandContent =>
      'Hovorte prirodzene pre správu svojho zoznamu!\n\nPríklady:\n• \'Pridaj chlieb, syr a šunku\'\n• \'Odstráň prací prášok\'\n• \'Zmeň tému na modrú\'\n\nToto je exkluzívna funkcia KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Zobraziť plány';

  @override
  String get itemsAddedSuccess => 'Položky úspešne pridané do zoznamu!';

  @override
  String get viewList => 'Zobraziť zoznam';

  @override
  String get feedbackTitle => 'Poslať spätnú väzbu';

  @override
  String get feedbackPrompt => 'Čo by ste chceli zdieľať?';

  @override
  String get feedbackTypeBug => 'Nahlásiť chybu';

  @override
  String get feedbackTypeBugHint => 'Niečo nefunguje';

  @override
  String get feedbackTypeSuggestion => 'Návrh';

  @override
  String get feedbackTypeSuggestionHint => 'Nápad na zlepšenie aplikácie';

  @override
  String get feedbackTypeTranslation => 'Problém s prekladom';

  @override
  String get feedbackTypeTranslationHint =>
      'Nesprávny alebo neprirodzený preklad';

  @override
  String get feedbackTypeFeature => 'Požiadavka na funkciu';

  @override
  String get feedbackTypeFeatureHint => 'Funkcia, ktorú by ste chceli vidieť';

  @override
  String get feedbackTypeOther => 'Iné';

  @override
  String get feedbackTypeOtherHint => 'Iný typ spätnej väzby';

  @override
  String get feedbackHint => 'Podrobne popíšte svoju spätnú väzbu...';

  @override
  String get feedbackSend => 'Odoslať spätnú väzbu';

  @override
  String get feedbackSending => 'Odosiela sa...';

  @override
  String get feedbackThankYou => 'Ďakujeme!';

  @override
  String get feedbackThankYouMessage =>
      'Vaša spätná väzba bola prijatá a pomáha nám zlepšovať KipiList pre všetkých.';

  @override
  String get feedbackBack => 'Späť';

  @override
  String feedbackError(String error) {
    return 'Chyba pri odosielaní: $error';
  }

  @override
  String get feedbackRetry => 'Skúsiť znova';

  @override
  String get feedbackSettingsTitle => 'Poslať spätnú väzbu';

  @override
  String get feedbackSettingsSubtitle =>
      'Nahlásiť chyby, navrhnúť zlepšenia alebo opraviť preklady';

  @override
  String get aiEnergy => 'Energia AI';

  @override
  String get searchInConversation => 'Hľadať v konverzácii...';

  @override
  String get noMessagesFound => 'Nenašli sa žiadne správy';

  @override
  String get suggestedQuestions => 'Navrhované otázky:';

  @override
  String get shoppingAssistant => 'Nákupný asistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Zakúpené: $purchased z $total';
  }

  @override
  String get estimatedCost => 'Odhadovaný';

  @override
  String get viewItems => 'Zobraziť položky';

  @override
  String get noItemsInList => 'V zozname nie sú žiadne položky';

  @override
  String get longHistoryWarning =>
      'Dlhá história: asistent sa zameriava na najnovšie správy pre lepší výkon.';

  @override
  String get listening => 'Počúvam...';

  @override
  String get addDirectToList => 'Pridať priamo do zoznamu';

  @override
  String get unlockFullResponse => 'Odomknite úplnú odpoveď';

  @override
  String get switchList => 'Prepnúť zoznam';

  @override
  String get marketMode => 'Trhový režim';

  @override
  String get backToChat => 'Späť na Chat';

  @override
  String get finishShopping => 'Dokončite nakupovanie';

  @override
  String get welcomeAiAssistant => 'Vitajte v Asistentovi AI';

  @override
  String get createListToStartAi =>
      'Ak chcete začať používať inteligentný chat, vytvorte si nákupný zoznam.';

  @override
  String get howCanIHelp => 'Ako môžem pomôcť?';

  @override
  String get chatSubtitleShort => 'Pýtajte sa na ceny, recepty, organizáciu...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total zakúpené';
  }

  @override
  String get quickReplies => 'Rýchle odpovede:';

  @override
  String get voiceProFeature =>
      'Pokročilé hlasové povely sú Pro. Povolenie základného diktovania...';

  @override
  String get viewPro => 'Zobraziť Pro';

  @override
  String get errorLoadingChat => 'Ojoj! Pri načítavaní četu sa vyskytla chyba.';

  @override
  String get errorLoadingChatSubtitle =>
      'Skontrolujte pripojenie alebo to skúste znova neskôr.';

  @override
  String get errorOscillation =>
      'Môže k tomu dôjsť v dôsledku oscilácií siete alebo dočasnej nedostupnosti. Skúste to znova.';

  @override
  String get activeListening => 'Aktívne počúvanie';

  @override
  String get whatToDoWithItem => 'Čo by ste chceli urobiť s touto položkou?';

  @override
  String get viewDetails => 'Zobraziť podrobnosti';

  @override
  String get openMenu => 'Otvoriť menu';

  @override
  String get viewRecipe => 'Zobraziť Recept';

  @override
  String get recipeCreated => 'Recept vytvorený!';

  @override
  String get editRecipe => 'Upraviť';

  @override
  String get deleteRecipe => 'Odstrániť';

  @override
  String get deleteRecipeConfirm => 'Odstrániť tento recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Naozaj chcete odstrániť „$recipeName“? Túto akciu nie je možné vrátiť späť.';
  }

  @override
  String get ingredients => 'Ingrediencie';

  @override
  String get instructions => 'Pokyny';

  @override
  String get prepTime => 'Čas prípravy';

  @override
  String get recipeSaved => 'Recept uložený!';

  @override
  String get noRecipesSaved => 'Nie sú uložené žiadne recepty';

  @override
  String get noRecipesSavedHint =>
      'Vytvorte si svoj prvý vlastný recept klepnutím na tlačidlo nižšie.';

  @override
  String get myRecipes => 'Moje recepty';

  @override
  String get newRecipe => 'Nový recept';

  @override
  String get loadingRecipes => 'Načítavajú sa vaše recepty...';

  @override
  String get errorLoadingRecipes => 'Chyba pri načítavaní receptov';

  @override
  String get addIngredient => 'Pridajte prísadu';

  @override
  String get saveRecipe => 'Uložiť';

  @override
  String get recipeName => 'Názov receptu';

  @override
  String get shortDescription => 'Krátky popis';

  @override
  String get prepTimeMinutes => 'Čas prípravy (minúty)';

  @override
  String get instructionsHint => 'Napíšte jeden krok na riadok...';

  @override
  String get addPhoto => 'Pridať fotku';

  @override
  String get imageUrlPlaceholder => 'Alebo prilepte adresu URL obrázka';

  @override
  String get tags => 'Tagy';

  @override
  String get recipeTags => 'Štítky receptov';

  @override
  String get suggestedTags => 'Navrhované';

  @override
  String get searchRecipes => 'Hľadať recepty...';

  @override
  String get filterByTag => 'Filtrovať podľa značky';

  @override
  String get allTags => 'Všetky';

  @override
  String get recipeDeleted => 'Recept bol odstránený';

  @override
  String get saveChanges => 'Uložte zmeny';

  @override
  String get editRecipeTitle => 'Upraviť recept';

  @override
  String get newRecipeTitle => 'Nový recept';

  @override
  String get requiredField => 'Povinné';

  @override
  String get chooseImageSource => 'Vyberte zdroj obrázka';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'Zadajte URL';

  @override
  String get recipeImage => 'Obrázok receptu';

  @override
  String get removeImage => 'Odstrániť obrázok';

  @override
  String get mealPlannerTitle => 'Plánovač jedál';

  @override
  String get mealPlannerViewMonthly => 'Mesačný pohľad';

  @override
  String get mealPlannerViewWeekly => 'Týždenný pohľad';

  @override
  String get mealPlannerNoMeals => 'Žiadne plánované jedlá';

  @override
  String get mealPlannerNoMealsHint => 'Klepnutím na deň pridáte jedlo';

  @override
  String get mealPlannerLoading => 'Načítava sa jedálny lístok...';

  @override
  String get mealPlannerError => 'Chyba pri načítavaní jedálneho lístka';

  @override
  String get mealPlannerAddMeal => 'Pridajte jedlo';

  @override
  String get mealPlannerEditMeal => 'Upraviť jedlo';

  @override
  String get mealPlannerDeleteMeal => 'Odstráňte jedlo';

  @override
  String get mealPlannerMealDeleted => 'Jedlo bolo odstránené';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcií',
      few: '$count porcie',
      one: '$count porcia',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcie';

  @override
  String get mealPlannerNoteLabel => 'Poznámka (voliteľné)';

  @override
  String get mealPlannerSelectRecipe => 'Vyberte recept';

  @override
  String get mealPlannerSearchRecipes => 'Hľadať recepty...';

  @override
  String get mealPlannerNoRecipesFound => 'Nenašli sa žiadne recepty';

  @override
  String get mealPlannerNoRecipesHint =>
      'Najprv vytvorte recepty na karte Recepty';

  @override
  String get mealPlannerSave => 'Pridať do plánu';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count z $total naplánovaných jedál';
  }

  @override
  String get mealPlannerGenerateList => 'Vytvorte nákupný zoznam';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Pridať všetky ingrediencie z plánovaných jedál na tento týždeň do nákupného zoznamu?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count prísad pridaných do vášho zoznamu!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Žiadne prísady na pridávanie. Naplánujte si najskôr nejaké jedlá s receptami.';

  @override
  String get mealPlannerGenerateListNoList => 'Najprv vytvorte nákupný zoznam.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Raňajky';

  @override
  String get mealPlannerMealTypeLunch => 'obed';

  @override
  String get mealPlannerMealTypeDinner => 'večera';

  @override
  String get mealPlannerMealTypeSnack => 'Občerstvenie';

  @override
  String get mealPlannerDateLabel => 'Dátum';

  @override
  String get mealPlannerWeekEmpty => 'Na tento týždeň nie je nič plánované';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Klepnutím na ktorýkoľvek deň začnete plánovať svoje jedlá!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Pozvať do zoznamu';

  @override
  String get shareApp => 'Zdieľať aplikáciu';

  @override
  String get shareAppDescription => 'Pozvite priateľov, aby používali KipiList';

  @override
  String shareReferralText(String url) {
    return 'Na organizovanie nákupov používam KipiList! Stiahnite si cez môj odkaz a obaja získame 7 dní Premium zadarmo: $url';
  }

  @override
  String get shareReferralSubject => 'Získajte 7 dní KipiList Premium!';

  @override
  String get gestureHint => 'Podržaním vyberte • Potiahnutím odstráňte';

  @override
  String get catalogTitle => 'Katalóg';

  @override
  String get catalogMyFrequents => 'Moji frekventanti';

  @override
  String get catalogSearchGlobal => 'Vyhľadajte akýkoľvek produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Hľadať v $category...';
  }

  @override
  String get catalogSortPopular => 'Najpopulárnejšie';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Štátni príslušníci';

  @override
  String get catalogRareSection => 'menej časté vo vašej krajine';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Pridať $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produkt sa nenašiel, zadajte názov';

  @override
  String get catalogBrowse => 'Prehľadávať katalóg';

  @override
  String get offlineBanner => 'Ste offline';

  @override
  String get consentTitle => 'Ochrana osobných údajov a Analytics';

  @override
  String get consentBody =>
      'KipiList používa Firebase Analytics na zlepšenie vášho zážitku. Vaše údaje sú spracované v súlade s našimi Zásadami ochrany osobných údajov.';

  @override
  String get consentAccept => 'Prijať';

  @override
  String get consentDecline => 'Nie, ďakujem';

  @override
  String get mealPlannerPantryAllAvailable => 'Všetky dostupné ingrediencie';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return 'Chýba $count $_temp0';
  }

  @override
  String get expirationDate => 'Dátum vypršania platnosti';

  @override
  String get notInformed => 'Nie je nastavené';

  @override
  String get skip => 'Preskočiť';

  @override
  String get onboardingAiTitle => 'Chatujte s Kipi';

  @override
  String get onboardingAiGreeting =>
      'Ahoj! Som Kipi, váš osobný nákupný asistent! 🛒';

  @override
  String get onboardingAiAskName => 'ako sa voláš?';

  @override
  String get onboardingAiNameHint => 'Napíšte svoje meno...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Rád vás spoznávam, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Aké je tvoje obľúbené jedlo?';

  @override
  String get onboardingAiFoodHint => 'napr. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Skvelé voľby! Tu je to, čo by som pridal do vášho zoznamu:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Vyzerá to dobre? Skúste napísať niečo iné!';

  @override
  String get onboardingAiReady =>
      'Skvelé! Ste pripravení začať. Poďme nastaviť váš účet!';

  @override
  String get onboardingAiContinue => 'Pokračovať →';

  @override
  String get connectionError => 'Chyba pripojenia';

  @override
  String connectionErrorDesc(String error) {
    return 'Nepodarilo sa pripojiť k serveru. Skontrolujte si internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Chyba pri načítavaní zoznamov';

  @override
  String get noListsFound => 'Nenašli sa žiadne zoznamy';

  @override
  String get backToToday => 'Späť k dnešku';

  @override
  String get quickSuggestions => 'Rýchle návrhy';

  @override
  String get aiEnergyLow => 'Nízka energia AI';

  @override
  String get aiUnlockUnlimited => 'Odomknite neobmedzenú AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 dnes';
  }

  @override
  String get aiSubscribeUnlimited => 'Predplaťte si neobmedzenú AI';

  @override
  String get unlockWithAd => 'Odomknite pomocou reklamy';

  @override
  String get conversationHistoryTitle => 'História konverzácie';

  @override
  String get noConversationsFound => 'Nenašli sa žiadne konverzácie';

  @override
  String get errorLoadingHistory => 'Chyba pri načítavaní histórie';

  @override
  String get deleteConversationTitle => 'Odstrániť konverzáciu?';

  @override
  String get deleteConversationConfirm =>
      'Túto akciu nie je možné vrátiť späť.';

  @override
  String get deleteConversation => 'Odstrániť';

  @override
  String get subscription => 'Predplatné';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Odomknite neobmedzené zoznamy, AI a ďalšie';

  @override
  String get loadingSubscription => 'Načítava sa odber...';

  @override
  String get errorLoadingSubscription => 'Chyba pri načítavaní odberu';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Môj profil';

  @override
  String get profileSubtitle => 'Osobné preferencie pre asistenta AI';

  @override
  String get customizeAiAssistant => 'Prispôsobte si asistenta AI';

  @override
  String get assistantHistory => 'História Asistenta';

  @override
  String get assistantHistorySubtitle => 'Pozrite si históriu konverzácií';

  @override
  String get manageCategories => 'Spravovať kategórie';

  @override
  String get manageCategoriesSubtitle => 'Spravujte kategórie položiek';

  @override
  String get customizeAssistant => 'Prispôsobiť';

  @override
  String get assistantName => 'Meno asistenta';

  @override
  String get chooseIcon => 'Vyberte ikonu';

  @override
  String get profileSaved => 'Profil bol úspešne uložený!';

  @override
  String get errorSavingProfile => 'Chyba pri ukladaní: null';

  @override
  String get userProfile => 'Používateľský profil';

  @override
  String get profileDescription =>
      'Povedzte nám svoje osobné preferencie, aby vám asistent AI mohol navrhnúť prispôsobené položky a recepty.';

  @override
  String get preferredMarket => 'Preferovaný trh';

  @override
  String get preferredMarketHint => 'Napr.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Diétne obmedzenia';

  @override
  String get dietaryRestrictionsHint =>
      'Napr.: vegánske, vegetariánske, bezlepkové';

  @override
  String get marketsToAvoid => 'Trhy, ktorým sa treba vyhnúť';

  @override
  String get marketsToAvoidHint => 'Napr.: Trh Y, Trh Z';

  @override
  String get observations => 'Poznámky';

  @override
  String get observationsHint => 'Ďalšie preferencie pre asistenta';

  @override
  String get saveProfile => 'Uložiť profil';

  @override
  String get everythingReady => 'Všetko pripravené!';

  @override
  String get youCompletedList => 'Dokončili ste zoznam!';

  @override
  String get selectCheaperAlternative =>
      'Vyberte si lacnejšiu alternatívu produktu na optimalizáciu nákladov.';

  @override
  String get suggestedItems => 'Navrhované položky';

  @override
  String get swapped => 'Vymenené';

  @override
  String get swap => 'Vymeňte';

  @override
  String get chooseThemeColor => 'Vyberte Farba motívu';

  @override
  String get manageCategoriesTitle => 'Spravovať kategórie';

  @override
  String get categoryLimitReached =>
      'Limit 10 kategórií v bezplatnej verzii. Inovujte na Pro!';

  @override
  String get deleteCategoryTitle => 'Odstrániť kategóriu';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Položky v kategórii „$category“ budú presunuté do „Iné“.\nPokračovať?';
  }

  @override
  String get deleteCategory => 'Odstrániť';

  @override
  String get newCategoryDialog => 'Nová kategória';

  @override
  String get editCategoryDialog => 'Upraviť kategóriu';

  @override
  String get categoryName => 'Názov kategórie';

  @override
  String get categoryNameHint => 'Napr.: Mäso';

  @override
  String get categoryColorLabel => 'Farba';

  @override
  String get categoryIconLabel => 'Ikona';

  @override
  String itemAddedSnack(String name) {
    return '$name pridané';
  }

  @override
  String get kipiQuickBarHint => 'Čo potrebujete kúpiť?';

  @override
  String replaceItem(String item) {
    return 'Nahradiť $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline => 'Už nikdy nezabudni na potravinu';

  @override
  String get onboardingGoalSaveMoney => 'Ušetrite peniaze';

  @override
  String get onboardingGoalNeverForget => 'Nikdy nezabúdajte na položky';

  @override
  String get onboardingGoalFaster => 'Nakupujte rýchlejšie';

  @override
  String get onboardingGoalFamily => 'Usporiadajte rodinné nákupy';

  @override
  String get onboardingGoalRecipes => 'Objavte recepty';

  @override
  String get onboardingGoalPantry => 'Koľajová špajza';

  @override
  String get onboardingCommitmentsTitle => 'na čom ti záleží?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Vyberte si svoje ciele a prispôsobte si KipiList';

  @override
  String get onboardingCommitmentsCta => 'Poďme!';

  @override
  String get onboardingPersonalizationNameLabel => 'Vaše meno';

  @override
  String get onboardingPersonalizationNameHint => 'Zadajte svoje meno';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Čo nakupujete?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Pre koho nakupujete?';

  @override
  String get onboardingCategoryGrocery => 'Potraviny';

  @override
  String get onboardingCategoryPharmacy => 'LEKÁREŇ';

  @override
  String get onboardingCategoryRecipes => 'Recepty';

  @override
  String get onboardingCategoryHome => 'Domov';

  @override
  String get onboardingCategoryPet => 'Pet';

  @override
  String get onboardingGroupSolo => 'Len ja';

  @override
  String get onboardingGroupCouple => 'Pár';

  @override
  String get onboardingGroupFamily => 'Rodina';

  @override
  String get onboardingLoadingTitle => 'Pripravuje sa váš zážitok...';

  @override
  String get onboardingLoadingStep1 => 'Prebieha analýza vašich preferencií...';

  @override
  String get onboardingLoadingStep2 => 'Nastavuje sa asistent AI...';

  @override
  String get onboardingLoadingStep3 => 'Takmer pripravený...';

  @override
  String get onboardingLoadingStat1Label => 'Položky katalogizované';

  @override
  String get onboardingLoadingStat2Label => 'Používatelia pomohli';

  @override
  String get onboardingLoadingStat3Label => 'Uložené minúty';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ušetrite na každej ceste!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nikdy nezabudnite na žiadnu položku!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, nakupujte za polovičný čas!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organizujte rodinné nákupy!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, objavte nové recepty!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, sledujte svoju špajzu dokonale!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Ušetrite na každej ceste!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nikdy nezabudnite na položku!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Nakupujte za polovičný čas!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Zorganizujte rodinné nákupy!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Objavte nové recepty!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Dokonale sledujte svoju špajzu!';

  @override
  String paywallPricePerDay(String price) {
    return 'Len $price/deň – menej ako káva';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Zatiaľ preskočiť';

  @override
  String get paywallTestimonial =>
      'AI zorganizuje moje nakupovanie za pár sekúnd. Ušetrím 20 minút na cestu.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Zrušiť kedykoľvek · Bez poplatku až do konca skúšobného obdobia';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Ahoj $name! Aké $category potrebujete?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Aké $category potrebujete?';
  }

  @override
  String get onboardingAiDemoYes => 'Áno!';

  @override
  String get onboardingAiDemoReaction => 'Pekne!';

  @override
  String get onboardingAiDemoChange => 'Zmeniť položku';

  @override
  String get onboardingAiDemoOffer => 'Skúste napísať niečo iné!';

  @override
  String get onboardingAiDemoContinue => 'Pokračovať';

  @override
  String get onboardingAiDemoSlideHeadline => 'Váš nákupný zoznam teraz s AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Pozrite sa, ako Kipi zostaví váš úplný zoznam v priebehu niekoľkých sekúnd';

  @override
  String get onboardingAiDemoSlideCta => 'toto chcem! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Usporadúvam grilovačku 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Pripravený! Tu je všetko, čo potrebujete:';

  @override
  String get onboardingAiDemoSlideDone => 'Kompletný zoznam za pár sekúnd ✨';

  @override
  String get onboardingPainTitle => 'Čo ťa najviac frustruje?';

  @override
  String get onboardingPainSubtitle => 'Buďte úprimní – každý opravíme';

  @override
  String get onboardingPainCta => 'Áno, opravte to za mňa →';

  @override
  String get onboardingPainForget => 'Zabudol som veci v obchode';

  @override
  String get onboardingPainFamily => 'Moja rodina tento zoznam nikdy neuvidí';

  @override
  String get onboardingPainOverspend => 'Vždy idem cez rozpočet';

  @override
  String get onboardingPainRepeat => 'Jeden výlet nikdy nestačí';
}
