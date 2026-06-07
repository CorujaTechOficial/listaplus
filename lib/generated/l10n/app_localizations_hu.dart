// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Bevásárlólista';

  @override
  String get lists => 'Listák';

  @override
  String get pantry => 'Kamra';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Receptek';

  @override
  String get navLists => 'Listák';

  @override
  String get navMealPlanner => 'Menü';

  @override
  String get cancel => 'Mégse';

  @override
  String get save => 'Mentés';

  @override
  String get create => 'Létrehozás';

  @override
  String get add => 'Hozzáadás';

  @override
  String get remove => 'Eltávolítás';

  @override
  String get delete => 'Törlés';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get copy => 'Másolás';

  @override
  String get next => 'Következő';

  @override
  String get retry => 'Újra';

  @override
  String get regenerate => 'Újragenerálás';

  @override
  String get copiedToClipboard => 'Vágólapra másolva';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get close => 'Bezárás';

  @override
  String get import => 'Importálás';

  @override
  String get rename => 'Átnevezés';

  @override
  String get upgrade => 'Frissítés';

  @override
  String get clear => 'Törlés';

  @override
  String error(String message) {
    return 'Hiba: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hiba: $message';
  }

  @override
  String get purchaseError =>
      'Hiba a vásárlás feldolgozása közben. Próbálja újra.';

  @override
  String get restoreError =>
      'Hiba a vásárlások visszaállítása közben. Próbálja újra.';

  @override
  String get loading => 'Betöltés...';

  @override
  String get fieldRequired => 'Kötelező mező';

  @override
  String get addedFeedback => 'Hozzáadva!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Lépjen ki a Vásárlás módból';

  @override
  String get exit => 'Kijárat';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kiválasztva',
      one: '$count kiválasztva',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Becsült';

  @override
  String get alreadyPurchased => 'Már megvásárolva';

  @override
  String get clearList => 'Lista törlése';

  @override
  String get clearPurchased => 'Megvásároltak törlése';

  @override
  String get share => 'Megosztás';

  @override
  String get shareViaCode => 'Megosztás kóddal';

  @override
  String get importViaCode => 'Importálás kóddal';

  @override
  String get listAssistant => 'Lista asszisztens';

  @override
  String get globalAssistant => 'Globális asszisztens';

  @override
  String get becomePremium => 'Legyen Premium';

  @override
  String get manageSubscription => 'Előfizetés kezelése';

  @override
  String get completePurchase => 'Vásárlás befejezése';

  @override
  String get confirmClearList => 'Összes elem eltávolítása?';

  @override
  String get shareListTitle => 'Lista megosztása';

  @override
  String get shareThisCode => 'Ossza meg ezt a kódot:';

  @override
  String get validForLimitedTime => 'Korlátozott ideig érvényes';

  @override
  String get importListTitle => 'Lista importálása';

  @override
  String get enterCodeHint => 'Írja be a kódot';

  @override
  String get confirmArchiveTitle => 'Vásárlás befejezése';

  @override
  String get confirmArchiveContent =>
      'Befejezi ezt a vásárlást és archiválja a listát?';

  @override
  String get complete => 'Befejezés';

  @override
  String get listArchived => 'Lista sikeresen archiválva!';

  @override
  String listAdded(String listName) {
    return '$listName hozzáadva!';
  }

  @override
  String get buy => 'Vásárlás';

  @override
  String get unmark => 'Jelölés eltávolítása';

  @override
  String confirmDeleteItems(int count) {
    return '$count elem eltávolítása?';
  }

  @override
  String get confirmDeleteTitle => 'Megerősítés';

  @override
  String confirmContent(int count) {
    return '$count elem eltávolítása?';
  }

  @override
  String get archiveList => 'Lista archiválása';

  @override
  String get pantryAppBar => 'Kamra';

  @override
  String get generateShoppingList => 'Bevásárlólista generálása';

  @override
  String get pantryEmpty => 'Üres kamra';

  @override
  String get pantryEmptySubtitle =>
      'Adja hozzá a termékeket, amelyeket otthon szeretne tartani';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit terméket kell vásárolni';
  }

  @override
  String get noItemsToBuy => 'Nincs vásárolandó termék';

  @override
  String get newPantryList => 'Kamra bevásárlás';

  @override
  String get newListTitle => 'Új bevásárlólista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elem kerül hozzáadásra';
  }

  @override
  String get listNameLabel => 'Lista neve';

  @override
  String listCreated(String name, int count) {
    return 'A(z) \"$name\" lista létrehozva $count elemmel';
  }

  @override
  String get noTracking => 'Nincs nyomonkövetés';

  @override
  String get markAsPurchased => 'Megvásároltnak jelölés';

  @override
  String editPantryItem(String name) {
    return '$name szerkesztése';
  }

  @override
  String get idealQuantity => 'Ideális mennyiség';

  @override
  String get currentQuantity => 'Jelenlegi mennyiség';

  @override
  String get consumed => 'Elfogyasztva';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name feltöltve: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" eltávolítása a kamrából?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name szerkesztése';
  }

  @override
  String get settingsAppBar => 'Beállítások';

  @override
  String get language => 'Nyelv';

  @override
  String get languagePortuguese => 'portugál (Brazil)';

  @override
  String get languageEnglish => 'angol';

  @override
  String get languageSystem => 'Rendszer alapértelmezett';

  @override
  String get chooseLanguage => 'Nyelv kiválasztása';

  @override
  String get searchLanguage => 'Nyelv keresése...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Válassza a Pénznem lehetőséget';

  @override
  String get searchCurrency => 'Pénznem keresése...';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get light => 'Világos';

  @override
  String get system => 'Rendszer';

  @override
  String get dark => 'Sötét';

  @override
  String get themeColor => 'Téma színe';

  @override
  String get dynamicColors => 'Dinamikus színek';

  @override
  String get dynamicColorsSubtitle => 'Színek használata a háttérkép alapján';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tiltsa le a dinamikus színeket, hogy a téma színe érvényesüljön';

  @override
  String get finance => 'Pénzügyek';

  @override
  String get monthlyBudgetNav => 'Havi költségvetés';

  @override
  String get budgetSubtitle => 'Kövesse nyomon havi kiadásait';

  @override
  String get data => 'Adatok';

  @override
  String get backupNav => 'Biztonsági mentés';

  @override
  String get backupSubtitle => 'Adatok exportálása vagy importálása';

  @override
  String get about => 'Névjegy';

  @override
  String get version => 'Verzió';

  @override
  String get privacy => 'Adatvédelem';

  @override
  String get termsOfUse => 'Felhasználási feltételek';

  @override
  String get backupTitle => 'Biztonsági mentés';

  @override
  String get backupPremiumDescription =>
      'A biztonsági mentés és exportálás prémium funkció';

  @override
  String get exportData => 'Adatok exportálása';

  @override
  String get exportDataSubtitle => 'Összes lista mentése JSON-ként';

  @override
  String get importData => 'Adatok importálása';

  @override
  String get importDataSubtitle => 'Listák visszaállítása JSON-ból';

  @override
  String get importJsonTitle => 'JSON importálása';

  @override
  String get importJsonHint => 'Illessze be a biztonsági mentés JSON-t ide...';

  @override
  String get backupExported => 'Biztonsági mentés exportálva!';

  @override
  String get budgetAppBar => 'Havi költségvetés';

  @override
  String get budgetPremiumLocked => 'A globális havi költségvetés prémium';

  @override
  String get budgetUpgradePrompt => 'Frissítsen a feloldáshoz';

  @override
  String get noBudgetDefined => 'Nincs költségvetés beállítva';

  @override
  String totalEstimated(String amount) {
    return 'Becsült összesen: $amount';
  }

  @override
  String get setBudgetButton => 'Költségvetés beállítása';

  @override
  String get budgetLists => 'Listák';

  @override
  String get budgetValueLabel => 'Összeg';

  @override
  String get setBudgetTitle => 'Havi költségvetés';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Összes';

  @override
  String get filterPending => 'Függőben';

  @override
  String get filterPurchased => 'Megvásárolva';

  @override
  String get sortName => 'Név';

  @override
  String get sortCategory => 'Kategória';

  @override
  String get sortDate => 'Dátum';

  @override
  String get sortManual => 'Kézi';

  @override
  String get addItem => 'Elem hozzáadása';

  @override
  String get itemName => 'Elem neve';

  @override
  String get quantityShort => 'Menny.';

  @override
  String get unit => 'Egység';

  @override
  String get category => 'Kategória';

  @override
  String get estimatedPrice => 'Becsült ár';

  @override
  String get addItemPrice => 'Becsült ár';

  @override
  String get editItem => 'Elem szerkesztése';

  @override
  String get quantityFull => 'Mennyiség';

  @override
  String get editItemPrice => 'Becsült ár';

  @override
  String get addToPantry => 'Hozzáadás a kamrához';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" hozzáadása a kamrához?';
  }

  @override
  String get yes => 'Igen';

  @override
  String get productName => 'Termék neve';

  @override
  String get idealQty => 'Ideális menny.';

  @override
  String get currentQty => 'Jelenlegi menny.';

  @override
  String get trackStock => 'Készlet követése';

  @override
  String get trackStockActive => 'Megjelenik a vásárlási javaslatokban';

  @override
  String get trackStockInactive => 'Nem generál vásárlási javaslatot';

  @override
  String get createListDialog => 'Lista létrehozása';

  @override
  String get renameListDialog => 'Lista átnevezése';

  @override
  String get listHistory => 'Lista előzmények';

  @override
  String get myLists => 'Listáim';

  @override
  String get viewActive => 'Aktívak megtekintése';

  @override
  String get viewHistory => 'Előzmények megtekintése';

  @override
  String get noArchivedLists => 'Nincsenek archivált listák';

  @override
  String get noActiveLists => 'Nincsenek aktív listák';

  @override
  String completedOn(String date) {
    return 'Befejezve: $date';
  }

  @override
  String get sharedLabel => 'Megosztott';

  @override
  String get restore => 'Visszaállítás';

  @override
  String get removeSharedTooltip => 'Eltávolítás';

  @override
  String get deleteListTitle => 'Lista törlése';

  @override
  String deleteListContent(String name) {
    return 'Biztosan törli a(z) \"$name\" listát? Minden elem eltávolításra kerül.';
  }

  @override
  String get removeSharedListTitle => 'Megosztott lista eltávolítása';

  @override
  String removeSharedListContent(String name) {
    return 'Eltávolítja a(z) \"$name\" listát a listáiból? Az eredeti lista nem változik.';
  }

  @override
  String get createNewList => 'Új lista létrehozása';

  @override
  String get aiAssistant => 'AI asszisztens';

  @override
  String get aiAssistantDescription =>
      'Kapjon intelligens javaslatokat, recepteket és személyre szabott tippeket AI asszisztensünktől.';

  @override
  String get generalAssistant => 'Általános asszisztens';

  @override
  String get newChat => 'Új csevegés';

  @override
  String get noHistory => 'Nincs csevegési előzmény';

  @override
  String get deleteSession => 'Csevegés törlése';

  @override
  String get deleteSessionConfirm =>
      'Biztosan törli ezt a csevegést? Az üzenetek véglegesen elvesznek.';

  @override
  String get clearHistory => 'Előzmények törlése';

  @override
  String get clearHistoryConfirm =>
      'Minden üzenet törlése ebben a munkamenetben?';

  @override
  String get chatHint => 'Írja be az üzenetét...';

  @override
  String get chatHintBlocked => 'Oldja fel az AI-t a csevegéshez';

  @override
  String chatError(String error) {
    return 'Hiba a chat betöltésekor: $error';
  }

  @override
  String get listHelp => 'Miben segíthetek a listájával?';

  @override
  String get generalHelp => 'Miben segíthetek a mai bevásárlásban?';

  @override
  String get chatSubtitle =>
      'Kérdezzen termékajánlatokat, recepteket vagy megtakarítási tippeket.';

  @override
  String get aiError =>
      'Elnézést, hiba történt a kérés feldolgozása során. Ellenőrizze a kapcsolatot, vagy próbálja újra később.';

  @override
  String get aiLimitAlmostReached => 'Majdnem kifogytak az AI-üzenetek';

  @override
  String get unlockAi => 'Oldja fel a korlátlan AI-t';

  @override
  String get aiTeaserFallback =>
      'Iratkozzon fel a Premiumra, hogy feloldja a teljes választ, és korlátlan számú mesterséges intelligenciával kapcsolatos tippet kapjon a vásárláshoz...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Jelentkezzen be a prémium\nfunkciók feloldásához';

  @override
  String get signInGoogle => 'Bejelentkezés Google-lal';

  @override
  String get signInApple => 'Bejelentkezés Apple-lel';

  @override
  String get continueAsGuest => 'Folytatás vendégként';

  @override
  String get onboardingWelcomeTitle => 'Üdvözöljük a KipiListban';

  @override
  String get onboardingWelcomeDesc =>
      'A legokosabb módja a vásárlás megszervezésének és a pénzmegtakarításnak.';

  @override
  String get onboardingSetupTitle => 'Tegye személyre élményeit';

  @override
  String get onboardingSetupDesc =>
      'Válassza ki, hogy a KipiList hogyan nézzen ki és működjön az Ön számára.';

  @override
  String get onboardingLoginTitle => 'Mentse el mindent a felhőbe';

  @override
  String get onboardingLoginDesc =>
      'Adatai szinkronizálva vannak az összes eszközén';

  @override
  String get onboardingShareTitle => 'Oszd meg azokkal, akiket szeretsz';

  @override
  String get onboardingShareDesc =>
      'Szinkronizálja a listákat családjával és barátaival valós időben';

  @override
  String get onboardingPremiumTitle => 'Oldja fel az összes funkciót';

  @override
  String get onboardingPremiumSubtitle =>
      'Hozza ki a legtöbbet bevásárlólistáiból';

  @override
  String get onboardingAnnualBadge => 'Legjobb érték';

  @override
  String get onboardingMonthlyLabel => 'Havi';

  @override
  String get onboardingAnnualLabel => 'Évi';

  @override
  String get onboardingViewAllPlans => 'Tekintse meg az összes tervet';

  @override
  String get onboardingSubscribeCta => 'Iratkozz fel';

  @override
  String get onboardingCancelAnytime =>
      'Bármikor lemondhatja. Nincs elkötelezettség.';

  @override
  String get onboardingContinueAsGuest => 'Továbbra is vendégként';

  @override
  String get onboardingRestore => 'Visszaállítás';

  @override
  String get onboardingRestoreDesc =>
      'Már van előfizetése? Koppintson ide a visszaállításhoz.';

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
  String get onboardingExit => 'Kijárat';

  @override
  String get onboardingPersonalizationTitle => 'Ismerkedjünk meg';

  @override
  String get onboardingPersonalizationDesc =>
      'Ezt arra fogjuk használni, hogy személyre szabjuk javaslatait, és okosabbá tegyük a vásárlást.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Mi a kedvenc ételed?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'például Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Folytatás';

  @override
  String get onboardingPersonalizationSkip => 'Most hagyd ki';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Mondja el kedvenc ételét a folytatáshoz';

  @override
  String get settingsDefaultScreen => 'Alapértelmezett kezdőképernyő';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Válasszon a bevásárlólista vagy az AI chat között';

  @override
  String get settingsScreenList => 'Bevásárlólista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Bejelentkezési hiba: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Hiba az ajánlatok betöltésekor. Próbáld újra.';

  @override
  String get paywallPurchaseError =>
      'Nem sikerült befejezni a vásárlást. Próbáld újra.';

  @override
  String get paywallRestoreError =>
      'Nem található visszaállítandó aktív előfizetés.';

  @override
  String paywallTrialDays(Object days) {
    return '$days NAP INGYENES';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HÉT INGYENES',
      one: '$count INGYENES HÉT',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HÓNAP INGYENES',
      one: '$count HÓNAP INGYENES',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Minden, amire szüksége van:';

  @override
  String get paywallFeatureUnlimitedLists => 'Korlátlan listák';

  @override
  String get paywallFeatureSmartAI => 'Intelligens AI';

  @override
  String get paywallFeatureExpenseControl => 'Költségszabályozás';

  @override
  String get paywallFeatureSharing => 'Megosztás';

  @override
  String get paywallBeforeAfterTitle => 'AI előtt és után:';

  @override
  String get paywallLabelCommon => 'Közös';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rizs';

  @override
  String get paywallBeforeItem2 => 'szappan';

  @override
  String get paywallBeforeItem3 => 'hús';

  @override
  String get paywallBeforeItem4 => 'kenyér';

  @override
  String get paywallAfterItem1 => 'Szemek';

  @override
  String get paywallAfterItem2 => 'Tisztítás';

  @override
  String get paywallAfterItem3 => 'Húsok';

  @override
  String get paywallAfterItem4 => 'Pékség';

  @override
  String get paywallTestimonialsTitle => 'Felhasználóink ​​véleménye:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'Az AI pillanatok alatt megszervezi a vásárlásomat. 20 percet spórolok piaci kirándulásonként.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Soha többé nem felejtettem el egyetlen listaelemet sem. Az AI chat szenzációs!';

  @override
  String get paywallSocialProof => '+2400 család használja';

  @override
  String get paywallCtaUnlock => 'A PRO feloldása';

  @override
  String get paywallBestValue => 'LEGJOBB ÉRTÉK';

  @override
  String get paywallMostPopular => 'LEGNÉPSZERŰBB';

  @override
  String get paywallSafeCheckout => 'Biztonságos fizetés';

  @override
  String get paywallSelectPlan => 'Válassza ki tervét:';

  @override
  String paywallSavePercent(Object percent) {
    return 'MEGTAKARÍTÁS $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Csak $price/hó';
  }

  @override
  String get paywallPackageAnnual => 'Éves terv';

  @override
  String get paywallPackageMonthly => 'Havi terv';

  @override
  String get paywallPackageLifetime => 'Életre szóló hozzáférés';

  @override
  String get paywallCancelAnytime =>
      'Bármikor lemondhatja. Nincs elkötelezettség.';

  @override
  String get paywallPolicy => 'Adatvédelmi szabályzat';

  @override
  String get paywallTerms => 'Felhasználási feltételek';

  @override
  String get paywallRestore => 'Visszaállítás';

  @override
  String get paywallHeroHeadline => 'Kipi AI mindig melletted';

  @override
  String get paywallHeroSubtitle =>
      'Adjon hozzá elemeket, rendezze a listákat, és takarítson meg időt a mesterséges intelligencia segítségével';

  @override
  String get paywallBenefit1Desc =>
      'Hozzáad, rendszerez és javasol elemeket a hét minden napján, 24 órában';

  @override
  String get paywallBenefit2Desc => 'Nincs 3 listás korlát';

  @override
  String get paywallBenefit3Desc => 'Költségkövetés és családlisták';

  @override
  String get paywallPackageMonthlyDesc => 'Teljes rugalmasság';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kezdje ingyen – $days nap';
  }

  @override
  String get premiumUpgrade => 'Frissítsen a feloldáshoz';

  @override
  String get itemRemoved => 'Elem eltávolítva';

  @override
  String get undo => 'Visszavonás';

  @override
  String get emptyListTitle => 'A lista üres';

  @override
  String get emptyListSubtitle => 'Adjon hozzá elemeket a kezdéshez';

  @override
  String get noListFoundTitle => 'Nincs lista';

  @override
  String get noListFoundSubtitle => 'Hozza létre az első listát a kezdéshez';

  @override
  String get createFirstList => 'Első lista létrehozása';

  @override
  String get listBudgetTitle => 'Lista költségvetés';

  @override
  String get budgetAmountLabel => 'Költségvetés összege';

  @override
  String get removeBudget => 'Eltávolítás';

  @override
  String get prefUnlimitedLists => 'Korlátlan listák';

  @override
  String get prefSharing => 'Listák megosztása';

  @override
  String get prefFullHistory => 'Teljes előzmények';

  @override
  String get prefExportData => 'Adatok exportálása';

  @override
  String get prefCustomThemes => 'Egyedi témák';

  @override
  String get prefMonthlyBudget => 'Globális havi költségvetés';

  @override
  String get prefAIAssistant => 'Személyes AI asszisztens';

  @override
  String get prefUnlimitedPantry => 'Korlátlan kamra';

  @override
  String get prefInteractiveArtifacts => 'Interaktív AI tartalmak';

  @override
  String get themeGreen => 'Zöld';

  @override
  String get themeBlue => 'Kék';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Piros';

  @override
  String get themeOrange => 'Narancs';

  @override
  String get themePink => 'Rózsaszín';

  @override
  String get themeIndigo => 'Indigó';

  @override
  String get themeAmber => 'Borostyán';

  @override
  String get themeTeal => 'Kékeszöld';

  @override
  String get themeBrown => 'Barna';

  @override
  String get catFruits => 'Gyümölcsök';

  @override
  String get catCleaning => 'Tisztítás';

  @override
  String get catBeverages => 'Italok';

  @override
  String get catBakery => 'Pékáru';

  @override
  String get catOthers => 'Egyéb';

  @override
  String get unitPack => 'csomag';

  @override
  String get shareSubject => 'Bevásárlólista';

  @override
  String get monthlyBudgetTitle => 'Havi költségvetés';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Lista törlése';

  @override
  String get pantryItemRemoved => 'Elem eltávolítva';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit terméket kell vásárolni',
      one: '$deficit terméket kell vásárolni',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kosár összesen';

  @override
  String get restockLabel => 'Feltöltés';

  @override
  String get advancedFeatures => 'Speciális funkciók';

  @override
  String get selectAll => 'Összes kiválasztása';

  @override
  String get deselectAll => 'Összes kijelölése megszüntetése';

  @override
  String get monthlyBudgetAppBar => 'Havi költségvetés';

  @override
  String get budgetEditTitle => 'Havi költségvetés';

  @override
  String get budgetDashboardTitle => 'Irányítópult';

  @override
  String get selectListForDashboard =>
      'Válasszon egy listát az irányítópult megtekintéséhez.';

  @override
  String get spendingAnalysis => 'Kiadáselemzés';

  @override
  String get noItemsToAnalyze => 'Nincsenek elemezhető elemek a listában.';

  @override
  String get markItemsToSeeAnalysis =>
      'Jelölje meg a termékeket vásároltként az elemzés megtekintéséhez.';

  @override
  String get totalSpending => 'Összes kiadás';

  @override
  String get spendingByCategory => 'Kiadások kategória szerint';

  @override
  String get achievements => 'Eredmények';

  @override
  String get exportPdfExcel => 'Exportálás PDF/Excel formátumba';

  @override
  String get exportPdf => 'Exportálás PDF-ként';

  @override
  String get exportExcel => 'Exportálás Excel-ként';

  @override
  String get organizingAi => 'RENDEZÉS AI-JAL...';

  @override
  String get yesLabel => 'Igen';

  @override
  String get noLabel => 'Nem';

  @override
  String get shareListText => 'Bevásárlólistám';

  @override
  String get emptyListAddItems =>
      'A lista üres! Először adjon hozzá elemeket. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista varázslatosan kategóriákba rendezve! ✨';

  @override
  String get shoppingMode => 'Bevásárló mód';

  @override
  String get smartOrganization => 'Intelligens rendezés';

  @override
  String get savings => 'Megtakarítás';

  @override
  String get shoppingModeHeader => 'BEVÁSÁRLÓ MÓD';

  @override
  String get shareAsText => 'Elemek küldése formázott szövegként';

  @override
  String get shareRealtime => 'Valós idejű szinkronizálás másokkal';

  @override
  String get quickRecipe => 'Gyors recept';

  @override
  String get quickRecipePrompt => 'Ajánljon recepteket a listám elemeiből.';

  @override
  String get economyTips => 'Megtakarítási tippek';

  @override
  String get economyTipsPrompt =>
      'Hogyan takaríthatok meg pénzt ezen a vásárláson?';

  @override
  String get organizeAisles => 'Rendezés sorok szerint';

  @override
  String get organizeAislesPrompt => 'Rendezze a piac sorai szerint.';

  @override
  String get recipeSuggestion => 'Receptjavaslat';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit maradt';
  }

  @override
  String get addAllToList => 'Összes hozzáadása a listához';

  @override
  String get organizeByAisles => 'Rendezés sorok szerint';

  @override
  String get voiceTranscriptionTooltip => 'Hangos gépelés (Ingyenes)';

  @override
  String get aiVoiceCommandTooltip => 'AI hangparancs (Prémium)';

  @override
  String get voiceCommandTitle => 'AI hangparancs';

  @override
  String get voiceCommandContent =>
      'Beszéljen természetesen a lista kezeléséhez!\n\nPéldák:\n• \'Kenyér, sajt és sonka hozzáadása\'\n• \'Mosószer eltávolítása\'\n• \'Téma váltása kékre\'\n\nEz a KipiList Premium exkluzív funkciója.';

  @override
  String get voiceCommandPlanBtn => 'Csomagok megtekintése';

  @override
  String get itemsAddedSuccess => 'Elemek sikeresen hozzáadva a listához!';

  @override
  String get viewList => 'Lista megtekintése';

  @override
  String get feedbackTitle => 'Visszajelzés küldése';

  @override
  String get feedbackPrompt => 'Mit szeretnél megosztani?';

  @override
  String get feedbackTypeBug => 'Hiba bejelentése';

  @override
  String get feedbackTypeBugHint => 'Valami nem működik';

  @override
  String get feedbackTypeSuggestion => 'Javaslat';

  @override
  String get feedbackTypeSuggestionHint => 'Ötlet az alkalmazás fejlesztésére';

  @override
  String get feedbackTypeTranslation => 'Fordítási probléma';

  @override
  String get feedbackTypeTranslationHint =>
      'Helytelen vagy természetellenes fordítás';

  @override
  String get feedbackTypeFeature => 'Funkció kérése';

  @override
  String get feedbackTypeFeatureHint => 'Funkció, amit szeretnél látni';

  @override
  String get feedbackTypeOther => 'Egyéb';

  @override
  String get feedbackTypeOtherHint => 'Más típusú visszajelzés';

  @override
  String get feedbackHint => 'Írd le részletesen a visszajelzésed...';

  @override
  String get feedbackSend => 'Visszajelzés küldése';

  @override
  String get feedbackSending => 'Küldés...';

  @override
  String get feedbackThankYou => 'Köszönjük!';

  @override
  String get feedbackThankYouMessage =>
      'A visszajelzésed megérkezett és segít nekünk a KipiList fejlesztésében mindenki számára.';

  @override
  String get feedbackBack => 'Vissza';

  @override
  String feedbackError(String error) {
    return 'Hiba a küldés során: $error';
  }

  @override
  String get feedbackRetry => 'Próbáld újra';

  @override
  String get feedbackSettingsTitle => 'Visszajelzés küldése';

  @override
  String get feedbackSettingsSubtitle =>
      'Hibák bejelentése, fejlesztési javaslatok vagy fordítások javítása';

  @override
  String get aiEnergy => 'AI energia';

  @override
  String get searchInConversation => 'Keresés a beszélgetésben...';

  @override
  String get noMessagesFound => 'Nem található üzenet';

  @override
  String get suggestedQuestions => 'Javasolt kérdések:';

  @override
  String get shoppingAssistant => 'Bevásárlási asszisztens';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total/$purchased megvásárolva';
  }

  @override
  String get estimatedCost => 'Becsült';

  @override
  String get viewItems => 'Elemek megtekintése';

  @override
  String get noItemsInList => 'Nincsenek elemek a listában';

  @override
  String get longHistoryWarning =>
      'Hosszú történelem: az asszisztens a legújabb üzenetekre összpontosít a jobb teljesítmény érdekében.';

  @override
  String get listening => 'Hallgat...';

  @override
  String get addDirectToList => 'Hozzáadás közvetlenül a listához';

  @override
  String get unlockFullResponse => 'Teljes válasz feloldása';

  @override
  String get switchList => 'Váltólista';

  @override
  String get marketMode => 'Piaci mód';

  @override
  String get backToChat => 'Vissza a Chathez';

  @override
  String get finishShopping => 'Fejezd be a vásárlást';

  @override
  String get welcomeAiAssistant => 'Üdvözöljük az AI-asszisztensben';

  @override
  String get createListToStartAi =>
      'Hozzon létre egy bevásárlólistát az intelligens csevegés használatának megkezdéséhez.';

  @override
  String get howCanIHelp => 'Hogyan segíthetek?';

  @override
  String get chatSubtitleShort =>
      'Érdeklődjön árakról, receptekről, szervezésről...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total megvásárolva';
  }

  @override
  String get quickReplies => 'Gyors válaszok:';

  @override
  String get voiceProFeature =>
      'A speciális hangutasítások Pro. Alapszintű diktálás engedélyezése...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Hoppá! Hiba történt a csevegés betöltésekor.';

  @override
  String get errorLoadingChatSubtitle =>
      'Ellenőrizze a kapcsolatot, vagy próbálja újra később.';

  @override
  String get errorOscillation =>
      'Ez a hálózat rezgései vagy ideiglenes elérhetetlenség miatt fordulhat elő. Kérjük, próbálja újra.';

  @override
  String get activeListening => 'Aktív hallgatás';

  @override
  String get whatToDoWithItem => 'Mit szeretne csinálni ezzel az elemmel?';

  @override
  String get viewDetails => 'Részletek megtekintése';

  @override
  String get openMenu => 'Menü megnyitása';

  @override
  String get viewRecipe => 'Recept megtekintése';

  @override
  String get recipeCreated => 'Recept létrehozva!';

  @override
  String get editRecipe => 'Szerkesztés';

  @override
  String get deleteRecipe => 'Törlés';

  @override
  String get deleteRecipeConfirm => 'Törli ezt a receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Biztosan törölni szeretné a(z) \"$recipeName\" receptet? Ez a művelet nem vonható vissza.';
  }

  @override
  String get ingredients => 'Hozzávalók';

  @override
  String get instructions => 'Útmutató';

  @override
  String get prepTime => 'Elkészítési idő';

  @override
  String get recipeSaved => 'Recept mentve!';

  @override
  String get noRecipesSaved => 'Nincsenek mentett receptek';

  @override
  String get noRecipesSavedHint =>
      'Hozza létre első egyedi receptjét az alábbi gombra koppintva.';

  @override
  String get myRecipes => 'Receptjeim';

  @override
  String get newRecipe => 'Új recept';

  @override
  String get loadingRecipes => 'Receptek betöltése...';

  @override
  String get errorLoadingRecipes => 'Hiba a receptek betöltésekor';

  @override
  String get addIngredient => 'Hozzávaló hozzáadása';

  @override
  String get saveRecipe => 'Mentés';

  @override
  String get recipeName => 'Recept neve';

  @override
  String get shortDescription => 'Rövid leírás';

  @override
  String get prepTimeMinutes => 'Elkészítési idő (perc)';

  @override
  String get instructionsHint => 'Gépeljen be egy lépést soronként...';

  @override
  String get addPhoto => 'Fotó hozzáadása';

  @override
  String get imageUrlPlaceholder => 'Vagy illesszen be egy kép URL-t';

  @override
  String get tags => 'Címkék';

  @override
  String get recipeTags => 'Recept címkék';

  @override
  String get suggestedTags => 'Javasolt';

  @override
  String get searchRecipes => 'Receptek keresése...';

  @override
  String get filterByTag => 'Szűrés címke szerint';

  @override
  String get allTags => 'Összes';

  @override
  String get recipeDeleted => 'Recept törölve';

  @override
  String get saveChanges => 'Módosítások mentése';

  @override
  String get editRecipeTitle => 'Recept szerkesztése';

  @override
  String get newRecipeTitle => 'Új recept';

  @override
  String get requiredField => 'Kötelező';

  @override
  String get chooseImageSource => 'Képforrás kiválasztása';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'URL megadása';

  @override
  String get recipeImage => 'Recept képe';

  @override
  String get removeImage => 'Kép eltávolítása';

  @override
  String get mealPlannerTitle => 'Étrendtervező';

  @override
  String get mealPlannerViewMonthly => 'Havi nézet';

  @override
  String get mealPlannerViewWeekly => 'Heti nézet';

  @override
  String get mealPlannerNoMeals => 'Nincsenek tervezett étkezések';

  @override
  String get mealPlannerNoMealsHint =>
      'Koppintson egy napra az étkezés hozzáadásához';

  @override
  String get mealPlannerLoading => 'Étrend betöltése...';

  @override
  String get mealPlannerError => 'Hiba az étrend betöltésekor';

  @override
  String get mealPlannerAddMeal => 'Étkezés hozzáadása';

  @override
  String get mealPlannerEditMeal => 'Étkezés szerkesztése';

  @override
  String get mealPlannerDeleteMeal => 'Étkezés eltávolítása';

  @override
  String get mealPlannerMealDeleted => 'Étkezés eltávolítva';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count adag',
      one: '$count adag',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Adagok';

  @override
  String get mealPlannerNoteLabel => 'Megjegyzés (opcionális)';

  @override
  String get mealPlannerSelectRecipe => 'Válasszon receptet';

  @override
  String get mealPlannerSearchRecipes => 'Receptek keresése...';

  @override
  String get mealPlannerNoRecipesFound => 'Nem találhatók receptek';

  @override
  String get mealPlannerNoRecipesHint =>
      'Előbb hozzon létre recepteket a Receptek fülön';

  @override
  String get mealPlannerSave => 'Hozzáadás a tervhez';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total étkezés megtervezve';
  }

  @override
  String get mealPlannerGenerateList => 'Bevásárlólista generálása';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Hozzáadja a heti tervezett étkezések összes hozzávalóját a bevásárlólistához?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hozzávaló hozzáadva a listához!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nincsenek hozzáadható hozzávalók. Előbb tervezzen étkezéseket receptekkel.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Előbb hozzon létre egy bevásárlólistát.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Reggeli';

  @override
  String get mealPlannerMealTypeLunch => 'Ebéd';

  @override
  String get mealPlannerMealTypeDinner => 'Vacsora';

  @override
  String get mealPlannerMealTypeSnack => 'Tízórai/Uzsonna';

  @override
  String get mealPlannerDateLabel => 'Dátum';

  @override
  String get mealPlannerWeekEmpty => 'Nincs semmi tervezve erre a hétre';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Koppintson bármelyik napra az étkezések tervezésének megkezdéséhez!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes perc';
  }

  @override
  String get inviteToList => 'Meghívás a listára';

  @override
  String get shareApp => 'Alkalmazás megosztása';

  @override
  String get shareAppDescription =>
      'Hívd meg barátaidat a KipiList használatára';

  @override
  String shareReferralText(Object url) {
    return 'A KipiList-t használom a vásárlások szervezésére! Töltsd le a linkemen keresztül, és mindketten kapunk 7 nap ingyenes prémiumot: $url';
  }

  @override
  String get shareReferralSubject => '7 nap KipiList Premium!';

  @override
  String get gestureHint =>
      'Tartsa lenyomva a kiválasztáshoz • Csúsztassa az ujját az eltávolításhoz';

  @override
  String get catalogTitle => 'Katalógus';

  @override
  String get catalogMyFrequents => 'Gyakoriságaim';

  @override
  String get catalogSearchGlobal => 'Keressen bármilyen terméket...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Keresés itt: $category...';
  }

  @override
  String get catalogSortPopular => 'A legnépszerűbb';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nemzetiek';

  @override
  String get catalogRareSection => 'kevésbé gyakori az Ön országában';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 hozzáadása →';
  }

  @override
  String get catalogProductNotFound =>
      'A termék nem található, írja be a nevet';

  @override
  String get catalogBrowse => 'Tallózás a katalógusban';

  @override
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';
}

/// The translations for Hungarian, as used in Hungary (`hu_HU`).
class AppLocalizationsHuHu extends AppLocalizationsHu {
  AppLocalizationsHuHu() : super('hu_HU');

  @override
  String get appTitle => 'Bevásárlólista';

  @override
  String get lists => 'Listák';

  @override
  String get pantry => 'Kamra';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Receptek';

  @override
  String get navLists => 'Listák';

  @override
  String get navMealPlanner => 'Menü';

  @override
  String get cancel => 'Mégse';

  @override
  String get save => 'Mentés';

  @override
  String get create => 'Létrehozás';

  @override
  String get add => 'Hozzáadás';

  @override
  String get remove => 'Eltávolítás';

  @override
  String get delete => 'Törlés';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get copy => 'Másolás';

  @override
  String get next => 'Következő';

  @override
  String get retry => 'Újra';

  @override
  String get regenerate => 'Újragenerálás';

  @override
  String get copiedToClipboard => 'Vágólapra másolva';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get close => 'Bezárás';

  @override
  String get import => 'Importálás';

  @override
  String get rename => 'Átnevezés';

  @override
  String get upgrade => 'Frissítés';

  @override
  String get clear => 'Törlés';

  @override
  String error(String message) {
    return 'Hiba: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hiba: $message';
  }

  @override
  String get purchaseError =>
      'Hiba a vásárlás feldolgozása közben. Próbálja újra.';

  @override
  String get restoreError =>
      'Hiba a vásárlások visszaállítása közben. Próbálja újra.';

  @override
  String get loading => 'Betöltés...';

  @override
  String get fieldRequired => 'Kötelező mező';

  @override
  String get addedFeedback => 'Hozzáadva!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Lépjen ki a Vásárlás módból';

  @override
  String get exit => 'Kijárat';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kiválasztva',
      one: '$count kiválasztva',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Becsült';

  @override
  String get alreadyPurchased => 'Már megvásárolva';

  @override
  String get clearList => 'Lista törlése';

  @override
  String get clearPurchased => 'Megvásároltak törlése';

  @override
  String get share => 'Megosztás';

  @override
  String get shareViaCode => 'Megosztás kóddal';

  @override
  String get importViaCode => 'Importálás kóddal';

  @override
  String get listAssistant => 'Lista asszisztens';

  @override
  String get globalAssistant => 'Globális asszisztens';

  @override
  String get becomePremium => 'Legyen Premium';

  @override
  String get manageSubscription => 'Előfizetés kezelése';

  @override
  String get completePurchase => 'Vásárlás befejezése';

  @override
  String get confirmClearList => 'Összes elem eltávolítása?';

  @override
  String get shareListTitle => 'Lista megosztása';

  @override
  String get shareThisCode => 'Ossza meg ezt a kódot:';

  @override
  String get validForLimitedTime => 'Korlátozott ideig érvényes';

  @override
  String get importListTitle => 'Lista importálása';

  @override
  String get enterCodeHint => 'Írja be a kódot';

  @override
  String get confirmArchiveTitle => 'Vásárlás befejezése';

  @override
  String get confirmArchiveContent =>
      'Befejezi ezt a vásárlást és archiválja a listát?';

  @override
  String get complete => 'Befejezés';

  @override
  String get listArchived => 'Lista sikeresen archiválva!';

  @override
  String listAdded(String listName) {
    return '$listName hozzáadva!';
  }

  @override
  String get buy => 'Vásárlás';

  @override
  String get unmark => 'Jelölés eltávolítása';

  @override
  String confirmDeleteItems(int count) {
    return '$count elem eltávolítása?';
  }

  @override
  String get confirmDeleteTitle => 'Megerősítés';

  @override
  String confirmContent(int count) {
    return '$count elem eltávolítása?';
  }

  @override
  String get archiveList => 'Lista archiválása';

  @override
  String get pantryAppBar => 'Kamra';

  @override
  String get generateShoppingList => 'Bevásárlólista generálása';

  @override
  String get pantryEmpty => 'Üres kamra';

  @override
  String get pantryEmptySubtitle =>
      'Adja hozzá a termékeket, amelyeket otthon szeretne tartani';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit terméket kell vásárolni';
  }

  @override
  String get noItemsToBuy => 'Nincs vásárolandó termék';

  @override
  String get newPantryList => 'Kamra bevásárlás';

  @override
  String get newListTitle => 'Új bevásárlólista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elem kerül hozzáadásra';
  }

  @override
  String get listNameLabel => 'Lista neve';

  @override
  String listCreated(String name, int count) {
    return 'A(z) \"$name\" lista létrehozva $count elemmel';
  }

  @override
  String get noTracking => 'Nincs nyomonkövetés';

  @override
  String get markAsPurchased => 'Megvásároltnak jelölés';

  @override
  String editPantryItem(String name) {
    return '$name szerkesztése';
  }

  @override
  String get idealQuantity => 'Ideális mennyiség';

  @override
  String get currentQuantity => 'Jelenlegi mennyiség';

  @override
  String get consumed => 'Elfogyasztva';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name feltöltve: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" eltávolítása a kamrából?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name szerkesztése';
  }

  @override
  String get settingsAppBar => 'Beállítások';

  @override
  String get language => 'Nyelv';

  @override
  String get languagePortuguese => 'portugál (Brazil)';

  @override
  String get languageEnglish => 'angol';

  @override
  String get languageSystem => 'Rendszer alapértelmezett';

  @override
  String get chooseLanguage => 'Nyelv kiválasztása';

  @override
  String get searchLanguage => 'Nyelv keresése...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Válassza a Pénznem lehetőséget';

  @override
  String get searchCurrency => 'Pénznem keresése...';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get light => 'Világos';

  @override
  String get system => 'Rendszer';

  @override
  String get dark => 'Sötét';

  @override
  String get themeColor => 'Téma színe';

  @override
  String get dynamicColors => 'Dinamikus színek';

  @override
  String get dynamicColorsSubtitle => 'Színek használata a háttérkép alapján';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tiltsa le a dinamikus színeket, hogy a téma színe érvényesüljön';

  @override
  String get finance => 'Pénzügyek';

  @override
  String get monthlyBudgetNav => 'Havi költségvetés';

  @override
  String get budgetSubtitle => 'Kövesse nyomon havi kiadásait';

  @override
  String get data => 'Adatok';

  @override
  String get backupNav => 'Biztonsági mentés';

  @override
  String get backupSubtitle => 'Adatok exportálása vagy importálása';

  @override
  String get about => 'Névjegy';

  @override
  String get version => 'Verzió';

  @override
  String get privacy => 'Adatvédelem';

  @override
  String get termsOfUse => 'Felhasználási feltételek';

  @override
  String get backupTitle => 'Biztonsági mentés';

  @override
  String get backupPremiumDescription =>
      'A biztonsági mentés és exportálás prémium funkció';

  @override
  String get exportData => 'Adatok exportálása';

  @override
  String get exportDataSubtitle => 'Összes lista mentése JSON-ként';

  @override
  String get importData => 'Adatok importálása';

  @override
  String get importDataSubtitle => 'Listák visszaállítása JSON-ból';

  @override
  String get importJsonTitle => 'JSON importálása';

  @override
  String get importJsonHint => 'Illessze be a biztonsági mentés JSON-t ide...';

  @override
  String get backupExported => 'Biztonsági mentés exportálva!';

  @override
  String get budgetAppBar => 'Havi költségvetés';

  @override
  String get budgetPremiumLocked => 'A globális havi költségvetés prémium';

  @override
  String get budgetUpgradePrompt => 'Frissítsen a feloldáshoz';

  @override
  String get noBudgetDefined => 'Nincs költségvetés beállítva';

  @override
  String totalEstimated(String amount) {
    return 'Becsült összesen: $amount';
  }

  @override
  String get setBudgetButton => 'Költségvetés beállítása';

  @override
  String get budgetLists => 'Listák';

  @override
  String get budgetValueLabel => 'Összeg';

  @override
  String get setBudgetTitle => 'Havi költségvetés';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Összes';

  @override
  String get filterPending => 'Függőben';

  @override
  String get filterPurchased => 'Megvásárolva';

  @override
  String get sortName => 'Név';

  @override
  String get sortCategory => 'Kategória';

  @override
  String get sortDate => 'Dátum';

  @override
  String get sortManual => 'Kézi';

  @override
  String get addItem => 'Elem hozzáadása';

  @override
  String get itemName => 'Elem neve';

  @override
  String get quantityShort => 'Menny.';

  @override
  String get unit => 'Egység';

  @override
  String get category => 'Kategória';

  @override
  String get estimatedPrice => 'Becsült ár';

  @override
  String get addItemPrice => 'Becsült ár';

  @override
  String get editItem => 'Elem szerkesztése';

  @override
  String get quantityFull => 'Mennyiség';

  @override
  String get editItemPrice => 'Becsült ár';

  @override
  String get addToPantry => 'Hozzáadás a kamrához';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" hozzáadása a kamrához?';
  }

  @override
  String get yes => 'Igen';

  @override
  String get productName => 'Termék neve';

  @override
  String get idealQty => 'Ideális menny.';

  @override
  String get currentQty => 'Jelenlegi menny.';

  @override
  String get trackStock => 'Készlet követése';

  @override
  String get trackStockActive => 'Megjelenik a vásárlási javaslatokban';

  @override
  String get trackStockInactive => 'Nem generál vásárlási javaslatot';

  @override
  String get createListDialog => 'Lista létrehozása';

  @override
  String get renameListDialog => 'Lista átnevezése';

  @override
  String get listHistory => 'Lista előzmények';

  @override
  String get myLists => 'Listáim';

  @override
  String get viewActive => 'Aktívak megtekintése';

  @override
  String get viewHistory => 'Előzmények megtekintése';

  @override
  String get noArchivedLists => 'Nincsenek archivált listák';

  @override
  String get noActiveLists => 'Nincsenek aktív listák';

  @override
  String completedOn(String date) {
    return 'Befejezve: $date';
  }

  @override
  String get sharedLabel => 'Megosztott';

  @override
  String get restore => 'Visszaállítás';

  @override
  String get removeSharedTooltip => 'Eltávolítás';

  @override
  String get deleteListTitle => 'Lista törlése';

  @override
  String deleteListContent(String name) {
    return 'Biztosan törli a(z) \"$name\" listát? Minden elem eltávolításra kerül.';
  }

  @override
  String get removeSharedListTitle => 'Megosztott lista eltávolítása';

  @override
  String removeSharedListContent(String name) {
    return 'Eltávolítja a(z) \"$name\" listát a listáiból? Az eredeti lista nem változik.';
  }

  @override
  String get createNewList => 'Új lista létrehozása';

  @override
  String get aiAssistant => 'AI asszisztens';

  @override
  String get aiAssistantDescription =>
      'Kapjon intelligens javaslatokat, recepteket és személyre szabott tippeket AI asszisztensünktől.';

  @override
  String get generalAssistant => 'Általános asszisztens';

  @override
  String get newChat => 'Új csevegés';

  @override
  String get noHistory => 'Nincs csevegési előzmény';

  @override
  String get deleteSession => 'Csevegés törlése';

  @override
  String get deleteSessionConfirm =>
      'Biztosan törli ezt a csevegést? Az üzenetek véglegesen elvesznek.';

  @override
  String get clearHistory => 'Előzmények törlése';

  @override
  String get clearHistoryConfirm =>
      'Minden üzenet törlése ebben a munkamenetben?';

  @override
  String get chatHint => 'Írja be az üzenetét...';

  @override
  String get chatHintBlocked => 'Oldja fel az AI-t a csevegéshez';

  @override
  String chatError(String error) {
    return 'Hiba a chat betöltésekor: $error';
  }

  @override
  String get listHelp => 'Miben segíthetek a listájával?';

  @override
  String get generalHelp => 'Miben segíthetek a mai bevásárlásban?';

  @override
  String get chatSubtitle =>
      'Kérdezzen termékajánlatokat, recepteket vagy megtakarítási tippeket.';

  @override
  String get aiError =>
      'Elnézést, hiba történt a kérés feldolgozása során. Ellenőrizze a kapcsolatot, vagy próbálja újra később.';

  @override
  String get aiLimitAlmostReached => 'Majdnem kifogytak az AI-üzenetek';

  @override
  String get unlockAi => 'Oldja fel a korlátlan AI-t';

  @override
  String get aiTeaserFallback =>
      'Iratkozzon fel a Premiumra, hogy feloldja a teljes választ, és korlátlan számú mesterséges intelligenciával kapcsolatos tippet kapjon a vásárláshoz...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Jelentkezzen be a prémium\nfunkciók feloldásához';

  @override
  String get signInGoogle => 'Bejelentkezés Google-lal';

  @override
  String get signInApple => 'Bejelentkezés Apple-lel';

  @override
  String get continueAsGuest => 'Folytatás vendégként';

  @override
  String get onboardingWelcomeTitle => 'Üdvözöljük a KipiListban';

  @override
  String get onboardingWelcomeDesc =>
      'A legokosabb módja a vásárlás megszervezésének és a pénzmegtakarításnak.';

  @override
  String get onboardingSetupTitle => 'Tegye személyre élményeit';

  @override
  String get onboardingSetupDesc =>
      'Válassza ki, hogy a KipiList hogyan nézzen ki és működjön az Ön számára.';

  @override
  String get onboardingLoginTitle => 'Mentse el mindent a felhőbe';

  @override
  String get onboardingLoginDesc =>
      'Adatai szinkronizálva vannak az összes eszközén';

  @override
  String get onboardingShareTitle => 'Oszd meg azokkal, akiket szeretsz';

  @override
  String get onboardingShareDesc =>
      'Szinkronizálja a listákat családjával és barátaival valós időben';

  @override
  String get onboardingPremiumTitle => 'Oldja fel az összes funkciót';

  @override
  String get onboardingPremiumSubtitle =>
      'Hozza ki a legtöbbet bevásárlólistáiból';

  @override
  String get onboardingAnnualBadge => 'Legjobb érték';

  @override
  String get onboardingMonthlyLabel => 'Havi';

  @override
  String get onboardingAnnualLabel => 'Évi';

  @override
  String get onboardingViewAllPlans => 'Tekintse meg az összes tervet';

  @override
  String get onboardingSubscribeCta => 'Iratkozz fel';

  @override
  String get onboardingCancelAnytime =>
      'Bármikor lemondhatja. Nincs elkötelezettség.';

  @override
  String get onboardingContinueAsGuest => 'Továbbra is vendégként';

  @override
  String get onboardingRestore => 'Visszaállítás';

  @override
  String get onboardingRestoreDesc =>
      'Már van előfizetése? Koppintson ide a visszaállításhoz.';

  @override
  String get onboardingExit => 'Kijárat';

  @override
  String get onboardingPersonalizationTitle => 'Ismerkedjünk meg';

  @override
  String get onboardingPersonalizationDesc =>
      'Ezt arra fogjuk használni, hogy személyre szabjuk javaslatait, és okosabbá tegyük a vásárlást.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Mi a kedvenc ételed?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'például Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Folytatás';

  @override
  String get onboardingPersonalizationSkip => 'Most hagyd ki';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Mondja el kedvenc ételét a folytatáshoz';

  @override
  String get settingsDefaultScreen => 'Alapértelmezett kezdőképernyő';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Válasszon a bevásárlólista vagy az AI chat között';

  @override
  String get settingsScreenList => 'Bevásárlólista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Bejelentkezési hiba: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Hiba az ajánlatok betöltésekor. Próbáld újra.';

  @override
  String get paywallPurchaseError =>
      'Nem sikerült befejezni a vásárlást. Próbáld újra.';

  @override
  String get paywallRestoreError =>
      'Nem található visszaállítandó aktív előfizetés.';

  @override
  String paywallTrialDays(Object days) {
    return '$days NAP INGYENES';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HÉT INGYENES',
      one: '$count INGYENES HÉT',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HÓNAP INGYENES',
      one: '$count HÓNAP INGYENES',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Minden, amire szüksége van:';

  @override
  String get paywallFeatureUnlimitedLists => 'Korlátlan listák';

  @override
  String get paywallFeatureSmartAI => 'Intelligens AI';

  @override
  String get paywallFeatureExpenseControl => 'Költségszabályozás';

  @override
  String get paywallFeatureSharing => 'Megosztás';

  @override
  String get paywallBeforeAfterTitle => 'AI előtt és után:';

  @override
  String get paywallLabelCommon => 'Közös';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rizs';

  @override
  String get paywallBeforeItem2 => 'szappan';

  @override
  String get paywallBeforeItem3 => 'hús';

  @override
  String get paywallBeforeItem4 => 'kenyér';

  @override
  String get paywallAfterItem1 => 'Szemek';

  @override
  String get paywallAfterItem2 => 'Tisztítás';

  @override
  String get paywallAfterItem3 => 'Húsok';

  @override
  String get paywallAfterItem4 => 'Pékség';

  @override
  String get paywallTestimonialsTitle => 'Felhasználóink ​​véleménye:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'Az AI pillanatok alatt megszervezi a vásárlásomat. 20 percet spórolok piaci kirándulásonként.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Soha többé nem felejtettem el egyetlen listaelemet sem. Az AI chat szenzációs!';

  @override
  String get paywallSocialProof => '+2400 család használja';

  @override
  String get paywallCtaUnlock => 'A PRO feloldása';

  @override
  String get paywallBestValue => 'LEGJOBB ÉRTÉK';

  @override
  String get paywallMostPopular => 'LEGNÉPSZERŰBB';

  @override
  String get paywallSafeCheckout => 'Biztonságos fizetés';

  @override
  String get paywallSelectPlan => 'Válassza ki tervét:';

  @override
  String paywallSavePercent(Object percent) {
    return 'MEGTAKARÍTÁS $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Csak $price/hó';
  }

  @override
  String get paywallPackageAnnual => 'Éves terv';

  @override
  String get paywallPackageMonthly => 'Havi terv';

  @override
  String get paywallPackageLifetime => 'Életre szóló hozzáférés';

  @override
  String get paywallCancelAnytime =>
      'Bármikor lemondhatja. Nincs elkötelezettség.';

  @override
  String get paywallPolicy => 'Adatvédelmi szabályzat';

  @override
  String get paywallTerms => 'Felhasználási feltételek';

  @override
  String get paywallRestore => 'Visszaállítás';

  @override
  String get paywallHeroHeadline => 'Kipi AI mindig melletted';

  @override
  String get paywallHeroSubtitle =>
      'Adjon hozzá elemeket, rendezze a listákat, és takarítson meg időt a mesterséges intelligencia segítségével';

  @override
  String get paywallBenefit1Desc =>
      'Hozzáad, rendszerez és javasol elemeket a hét minden napján, 24 órában';

  @override
  String get paywallBenefit2Desc => 'Nincs 3 listás korlát';

  @override
  String get paywallBenefit3Desc => 'Költségkövetés és családlisták';

  @override
  String get paywallPackageMonthlyDesc => 'Teljes rugalmasság';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kezdje ingyen – $days nap';
  }

  @override
  String get premiumUpgrade => 'Frissítsen a feloldáshoz';

  @override
  String get itemRemoved => 'Elem eltávolítva';

  @override
  String get undo => 'Visszavonás';

  @override
  String get emptyListTitle => 'A lista üres';

  @override
  String get emptyListSubtitle => 'Adjon hozzá elemeket a kezdéshez';

  @override
  String get noListFoundTitle => 'Nincs lista';

  @override
  String get noListFoundSubtitle => 'Hozza létre az első listát a kezdéshez';

  @override
  String get createFirstList => 'Első lista létrehozása';

  @override
  String get listBudgetTitle => 'Lista költségvetés';

  @override
  String get budgetAmountLabel => 'Költségvetés összege';

  @override
  String get removeBudget => 'Eltávolítás';

  @override
  String get prefUnlimitedLists => 'Korlátlan listák';

  @override
  String get prefSharing => 'Listák megosztása';

  @override
  String get prefFullHistory => 'Teljes előzmények';

  @override
  String get prefExportData => 'Adatok exportálása';

  @override
  String get prefCustomThemes => 'Egyedi témák';

  @override
  String get prefMonthlyBudget => 'Globális havi költségvetés';

  @override
  String get prefAIAssistant => 'Személyes AI asszisztens';

  @override
  String get prefUnlimitedPantry => 'Korlátlan kamra';

  @override
  String get prefInteractiveArtifacts => 'Interaktív AI tartalmak';

  @override
  String get themeGreen => 'Zöld';

  @override
  String get themeBlue => 'Kék';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Piros';

  @override
  String get themeOrange => 'Narancs';

  @override
  String get themePink => 'Rózsaszín';

  @override
  String get themeIndigo => 'Indigó';

  @override
  String get themeAmber => 'Borostyán';

  @override
  String get themeTeal => 'Kékeszöld';

  @override
  String get themeBrown => 'Barna';

  @override
  String get catFruits => 'Gyümölcsök';

  @override
  String get catCleaning => 'Tisztítás';

  @override
  String get catBeverages => 'Italok';

  @override
  String get catBakery => 'Pékáru';

  @override
  String get catOthers => 'Egyéb';

  @override
  String get unitPack => 'csomag';

  @override
  String get shareSubject => 'Bevásárlólista';

  @override
  String get monthlyBudgetTitle => 'Havi költségvetés';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Lista törlése';

  @override
  String get pantryItemRemoved => 'Elem eltávolítva';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit terméket kell vásárolni',
      one: '$deficit terméket kell vásárolni',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kosár összesen';

  @override
  String get restockLabel => 'Feltöltés';

  @override
  String get advancedFeatures => 'Speciális funkciók';

  @override
  String get selectAll => 'Összes kiválasztása';

  @override
  String get deselectAll => 'Összes kijelölése megszüntetése';

  @override
  String get monthlyBudgetAppBar => 'Havi költségvetés';

  @override
  String get budgetEditTitle => 'Havi költségvetés';

  @override
  String get budgetDashboardTitle => 'Irányítópult';

  @override
  String get selectListForDashboard =>
      'Válasszon egy listát az irányítópult megtekintéséhez.';

  @override
  String get spendingAnalysis => 'Kiadáselemzés';

  @override
  String get noItemsToAnalyze => 'Nincsenek elemezhető elemek a listában.';

  @override
  String get markItemsToSeeAnalysis =>
      'Jelölje meg a termékeket vásároltként az elemzés megtekintéséhez.';

  @override
  String get totalSpending => 'Összes kiadás';

  @override
  String get spendingByCategory => 'Kiadások kategória szerint';

  @override
  String get achievements => 'Eredmények';

  @override
  String get exportPdfExcel => 'Exportálás PDF/Excel formátumba';

  @override
  String get exportPdf => 'Exportálás PDF-ként';

  @override
  String get exportExcel => 'Exportálás Excel-ként';

  @override
  String get organizingAi => 'RENDEZÉS AI-JAL...';

  @override
  String get yesLabel => 'Igen';

  @override
  String get noLabel => 'Nem';

  @override
  String get shareListText => 'Bevásárlólistám';

  @override
  String get emptyListAddItems =>
      'A lista üres! Először adjon hozzá elemeket. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista varázslatosan kategóriákba rendezve! ✨';

  @override
  String get shoppingMode => 'Bevásárló mód';

  @override
  String get smartOrganization => 'Intelligens rendezés';

  @override
  String get savings => 'Megtakarítás';

  @override
  String get shoppingModeHeader => 'BEVÁSÁRLÓ MÓD';

  @override
  String get shareAsText => 'Elemek küldése formázott szövegként';

  @override
  String get shareRealtime => 'Valós idejű szinkronizálás másokkal';

  @override
  String get quickRecipe => 'Gyors recept';

  @override
  String get quickRecipePrompt => 'Ajánljon recepteket a listám elemeiből.';

  @override
  String get economyTips => 'Megtakarítási tippek';

  @override
  String get economyTipsPrompt =>
      'Hogyan takaríthatok meg pénzt ezen a vásárláson?';

  @override
  String get organizeAisles => 'Rendezés sorok szerint';

  @override
  String get organizeAislesPrompt => 'Rendezze a piac sorai szerint.';

  @override
  String get recipeSuggestion => 'Receptjavaslat';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit maradt';
  }

  @override
  String get addAllToList => 'Összes hozzáadása a listához';

  @override
  String get organizeByAisles => 'Rendezés sorok szerint';

  @override
  String get voiceTranscriptionTooltip => 'Hangos gépelés (Ingyenes)';

  @override
  String get aiVoiceCommandTooltip => 'AI hangparancs (Prémium)';

  @override
  String get voiceCommandTitle => 'AI hangparancs';

  @override
  String get voiceCommandContent =>
      'Beszéljen természetesen a lista kezeléséhez!\n\nPéldák:\n• \'Kenyér, sajt és sonka hozzáadása\'\n• \'Mosószer eltávolítása\'\n• \'Téma váltása kékre\'\n\nEz a KipiList Premium exkluzív funkciója.';

  @override
  String get voiceCommandPlanBtn => 'Csomagok megtekintése';

  @override
  String get itemsAddedSuccess => 'Elemek sikeresen hozzáadva a listához!';

  @override
  String get viewList => 'Lista megtekintése';

  @override
  String get feedbackTitle => 'Visszajelzés küldése';

  @override
  String get feedbackPrompt => 'Mit szeretnél megosztani?';

  @override
  String get feedbackTypeBug => 'Hiba bejelentése';

  @override
  String get feedbackTypeBugHint => 'Valami nem működik';

  @override
  String get feedbackTypeSuggestion => 'Javaslat';

  @override
  String get feedbackTypeSuggestionHint => 'Ötlet az alkalmazás fejlesztésére';

  @override
  String get feedbackTypeTranslation => 'Fordítási hiba';

  @override
  String get feedbackTypeTranslationHint =>
      'Helytelen vagy természetellenes fordítás';

  @override
  String get feedbackTypeFeature => 'Funkciókérés';

  @override
  String get feedbackTypeFeatureHint => 'Funkció, amit szívesen látnál';

  @override
  String get feedbackTypeOther => 'Egyéb';

  @override
  String get feedbackTypeOtherHint => 'Egyéb típusú visszajelzés';

  @override
  String get feedbackHint => 'Írd le részletesen a visszajelzésed...';

  @override
  String get feedbackSend => 'Visszajelzés küldése';

  @override
  String get feedbackSending => 'Küldés...';

  @override
  String get feedbackThankYou => 'Köszönjük!';

  @override
  String get feedbackThankYouMessage =>
      'A visszajelzésed megérkezett, és segít nekünk a KipiList fejlesztésében mindenki számára.';

  @override
  String get feedbackBack => 'Vissza';

  @override
  String feedbackError(String error) {
    return 'Hiba a küldés során: $error';
  }

  @override
  String get feedbackRetry => 'Újrapróbálkozás';

  @override
  String get feedbackSettingsTitle => 'Visszajelzés küldése';

  @override
  String get feedbackSettingsSubtitle =>
      'Hibák bejelentése, fejlesztési javaslatok vagy fordítások javítása';

  @override
  String get aiEnergy => 'AI energia';

  @override
  String get searchInConversation => 'Keresés a beszélgetésben...';

  @override
  String get noMessagesFound => 'Nem található üzenet';

  @override
  String get suggestedQuestions => 'Javasolt kérdések:';

  @override
  String get shoppingAssistant => 'Bevásárlási asszisztens';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total/$purchased megvásárolva';
  }

  @override
  String get estimatedCost => 'Becsült';

  @override
  String get viewItems => 'Elemek megtekintése';

  @override
  String get noItemsInList => 'Nincsenek elemek a listában';

  @override
  String get longHistoryWarning =>
      'Hosszú történelem: az asszisztens a legújabb üzenetekre összpontosít a jobb teljesítmény érdekében.';

  @override
  String get listening => 'Hallgat...';

  @override
  String get addDirectToList => 'Hozzáadás közvetlenül a listához';

  @override
  String get unlockFullResponse => 'Teljes válasz feloldása';

  @override
  String get switchList => 'Váltólista';

  @override
  String get marketMode => 'Piaci mód';

  @override
  String get backToChat => 'Vissza a Chathez';

  @override
  String get finishShopping => 'Fejezd be a vásárlást';

  @override
  String get welcomeAiAssistant => 'Üdvözöljük az AI-asszisztensben';

  @override
  String get createListToStartAi =>
      'Hozzon létre egy bevásárlólistát az intelligens csevegés használatának megkezdéséhez.';

  @override
  String get howCanIHelp => 'Hogyan segíthetek?';

  @override
  String get chatSubtitleShort =>
      'Érdeklődjön árakról, receptekről, szervezésről...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total megvásárolva';
  }

  @override
  String get quickReplies => 'Gyors válaszok:';

  @override
  String get voiceProFeature =>
      'A speciális hangutasítások Pro. Alapszintű diktálás engedélyezése...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Hoppá! Hiba történt a csevegés betöltésekor.';

  @override
  String get errorLoadingChatSubtitle =>
      'Ellenőrizze a kapcsolatot, vagy próbálja újra később.';

  @override
  String get errorOscillation =>
      'Ez a hálózat rezgései vagy ideiglenes elérhetetlenség miatt fordulhat elő. Kérjük, próbálja újra.';

  @override
  String get activeListening => 'Aktív hallgatás';

  @override
  String get whatToDoWithItem => 'Mit szeretne csinálni ezzel az elemmel?';

  @override
  String get viewDetails => 'Részletek megtekintése';

  @override
  String get openMenu => 'Menü megnyitása';

  @override
  String get viewRecipe => 'Recept megtekintése';

  @override
  String get recipeCreated => 'Recept létrehozva!';

  @override
  String get editRecipe => 'Szerkesztés';

  @override
  String get deleteRecipe => 'Törlés';

  @override
  String get deleteRecipeConfirm => 'Törli ezt a receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Biztosan törölni szeretné a(z) \"$recipeName\" receptet? Ez a művelet nem vonható vissza.';
  }

  @override
  String get ingredients => 'Hozzávalók';

  @override
  String get instructions => 'Útmutató';

  @override
  String get prepTime => 'Elkészítési idő';

  @override
  String get recipeSaved => 'Recept mentve!';

  @override
  String get noRecipesSaved => 'Nincsenek mentett receptek';

  @override
  String get noRecipesSavedHint =>
      'Hozza létre első egyedi receptjét az alábbi gombra koppintva.';

  @override
  String get myRecipes => 'Receptjeim';

  @override
  String get newRecipe => 'Új recept';

  @override
  String get loadingRecipes => 'Receptek betöltése...';

  @override
  String get errorLoadingRecipes => 'Hiba a receptek betöltésekor';

  @override
  String get addIngredient => 'Hozzávaló hozzáadása';

  @override
  String get saveRecipe => 'Mentés';

  @override
  String get recipeName => 'Recept neve';

  @override
  String get shortDescription => 'Rövid leírás';

  @override
  String get prepTimeMinutes => 'Elkészítési idő (perc)';

  @override
  String get instructionsHint => 'Gépeljen be egy lépést soronként...';

  @override
  String get addPhoto => 'Fotó hozzáadása';

  @override
  String get imageUrlPlaceholder => 'Vagy illesszen be egy kép URL-t';

  @override
  String get tags => 'Címkék';

  @override
  String get recipeTags => 'Recept címkék';

  @override
  String get suggestedTags => 'Javasolt';

  @override
  String get searchRecipes => 'Receptek keresése...';

  @override
  String get filterByTag => 'Szűrés címke szerint';

  @override
  String get allTags => 'Összes';

  @override
  String get recipeDeleted => 'Recept törölve';

  @override
  String get saveChanges => 'Módosítások mentése';

  @override
  String get editRecipeTitle => 'Recept szerkesztése';

  @override
  String get newRecipeTitle => 'Új recept';

  @override
  String get requiredField => 'Kötelező';

  @override
  String get chooseImageSource => 'Képforrás kiválasztása';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'URL megadása';

  @override
  String get recipeImage => 'Recept képe';

  @override
  String get removeImage => 'Kép eltávolítása';

  @override
  String get mealPlannerTitle => 'Étrendtervező';

  @override
  String get mealPlannerViewMonthly => 'Havi nézet';

  @override
  String get mealPlannerViewWeekly => 'Heti nézet';

  @override
  String get mealPlannerNoMeals => 'Nincsenek tervezett étkezések';

  @override
  String get mealPlannerNoMealsHint =>
      'Koppintson egy napra az étkezés hozzáadásához';

  @override
  String get mealPlannerLoading => 'Étrend betöltése...';

  @override
  String get mealPlannerError => 'Hiba az étrend betöltésekor';

  @override
  String get mealPlannerAddMeal => 'Étkezés hozzáadása';

  @override
  String get mealPlannerEditMeal => 'Étkezés szerkesztése';

  @override
  String get mealPlannerDeleteMeal => 'Étkezés eltávolítása';

  @override
  String get mealPlannerMealDeleted => 'Étkezés eltávolítva';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count adag',
      one: '$count adag',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Adagok';

  @override
  String get mealPlannerNoteLabel => 'Megjegyzés (opcionális)';

  @override
  String get mealPlannerSelectRecipe => 'Válasszon receptet';

  @override
  String get mealPlannerSearchRecipes => 'Receptek keresése...';

  @override
  String get mealPlannerNoRecipesFound => 'Nem találhatók receptek';

  @override
  String get mealPlannerNoRecipesHint =>
      'Előbb hozzon létre recepteket a Receptek fülön';

  @override
  String get mealPlannerSave => 'Hozzáadás a tervhez';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total étkezés megtervezve';
  }

  @override
  String get mealPlannerGenerateList => 'Bevásárlólista generálása';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Hozzáadja a heti tervezett étkezések összes hozzávalóját a bevásárlólistához?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hozzávaló hozzáadva a listához!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nincsenek hozzáadható hozzávalók. Előbb tervezzen étkezéseket receptekkel.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Előbb hozzon létre egy bevásárlólistát.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Reggeli';

  @override
  String get mealPlannerMealTypeLunch => 'Ebéd';

  @override
  String get mealPlannerMealTypeDinner => 'Vacsora';

  @override
  String get mealPlannerMealTypeSnack => 'Tízórai/Uzsonna';

  @override
  String get mealPlannerDateLabel => 'Dátum';

  @override
  String get mealPlannerWeekEmpty => 'Nincs semmi tervezve erre a hétre';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Koppintson bármelyik napra az étkezések tervezésének megkezdéséhez!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes perc';
  }

  @override
  String get inviteToList => 'Meghívás a listára';

  @override
  String get shareApp => 'Alkalmazás megosztása';

  @override
  String get shareAppDescription =>
      'Hívd meg barátaidat a KipiList használatára';

  @override
  String shareReferralText(Object url) {
    return 'A KipiList-t használom a vásárlások szervezésére! Töltsd le a linkemen keresztül, és mindketten kapunk 7 nap ingyenes prémiumot: $url';
  }

  @override
  String get shareReferralSubject => '7 nap KipiList Premium!';

  @override
  String get gestureHint =>
      'Tartsa lenyomva a kiválasztáshoz • Csúsztassa az ujját az eltávolításhoz';

  @override
  String get catalogTitle => 'Katalógus';

  @override
  String get catalogMyFrequents => 'Gyakoriságaim';

  @override
  String get catalogSearchGlobal => 'Keressen bármilyen terméket...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Keresés itt: $category...';
  }

  @override
  String get catalogSortPopular => 'A legnépszerűbb';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nemzetiek';

  @override
  String get catalogRareSection => 'kevésbé gyakori az Ön országában';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 hozzáadása →';
  }

  @override
  String get catalogProductNotFound =>
      'A termék nem található, írja be a nevet';

  @override
  String get catalogBrowse => 'Tallózás a katalógusban';
}
