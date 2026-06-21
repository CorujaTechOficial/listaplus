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
  String get navChat => 'Csevegés';

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
  String pantryDeficitCount(int count, String unit) {
    return 'Hiányzik $count$unit';
  }

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
  String get scanProductTitle => 'Termék beolvasása';

  @override
  String get positionBarcodeCenter => 'Helyezze a vonalkódot középre';

  @override
  String get product => 'Termék';

  @override
  String get settingsAppBar => 'Beállítások';

  @override
  String get preferencesSection => 'Preferences';

  @override
  String get aiSection => 'AI asszisztens';

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
  String get themeMode => 'Téma mód';

  @override
  String get chooseThemeMode => 'Válassza ki a téma módot';

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
  String get myAchievements => 'Eredményeim';

  @override
  String get itemsPurchased => 'Vásárolt tételek';

  @override
  String get totalSavings => 'Teljes megtakarítás';

  @override
  String get currentStreak => 'Aktuális sorozat';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '$count nap',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Feloldott jelvények';

  @override
  String get badgeBeginner => 'Kezdő';

  @override
  String get badgeOrganized => 'Szervezett';

  @override
  String get badgeSavingMaster => 'Mentés Mester';

  @override
  String get badgeSuperPlanner => 'Szuper tervező';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased / $total elem';
  }

  @override
  String progressBudget(String amount) {
    return 'Költségkeret: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Összesen: $amount';
  }

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
  String get keepAdding => 'Folytassa a hozzáadást';

  @override
  String get keepAddingSubtitle =>
      'Több elem hozzáadásához tartsa nyitva a lapot';

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
  String get chatEmptySubtitle =>
      'A kezdéshez kérjen tételjavaslatokat, recepteket vagy mentési tippeket.';

  @override
  String get chatEmptyTitle => 'A chat üres';

  @override
  String chatError(String error) {
    return 'Hiba a chat betöltésekor: $error';
  }

  @override
  String get goodResponse => 'Jó válasz';

  @override
  String get badResponse => 'Rossz válasz';

  @override
  String get scrollToBottom => 'Görgessen lefelé';

  @override
  String get somethingWentWrong => 'Valami elromlott';

  @override
  String get editMessage => 'Üzenet szerkesztése';

  @override
  String get searchConversations => 'Beszélgetések keresése';

  @override
  String get dateGroupToday => 'Ma';

  @override
  String get dateGroupYesterday => 'Tegnap';

  @override
  String get dateGroupPrevious7Days => 'Előző 7 nap';

  @override
  String get dateGroupOlder => 'Régebbi';

  @override
  String get aiAssistantTitle => 'AI asszisztens';

  @override
  String get closeSheet => 'Közeli';

  @override
  String get scanBarcodeTitle => 'Vonalkód beolvasása';

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
  String aiUsageWarning(int remaining) {
    return '$remaining AI-műveletek maradtak ebben a hónapban – korlátlan frissítés';
  }

  @override
  String get aiUsageExhausted =>
      'Elérte a havi AI-korlátot. Frissítsen Pro-ra a korlátlan használatért →';

  @override
  String get undo => 'Visszavonás';

  @override
  String get newChatStarted => 'New chat started';

  @override
  String get quickAddToList => 'Add to list';

  @override
  String get aiCapabilitiesTitle => 'What can I do?';

  @override
  String get aiCapabilitiesLists => 'Shopping Lists';

  @override
  String get aiCapabilitiesBudget => 'Budget & Prices';

  @override
  String get aiCapabilitiesRecipes => 'Recipes & Menus';

  @override
  String get aiCapabilitiesOrganize => 'Organization';

  @override
  String get marketModeDescription => 'Check off items as you shop';

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
  String get onboardingMaybeLater => 'Talán később';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Szia $name, szervezze meg vásárlását a megfelelő módon.';
  }

  @override
  String get onboardingSlide1Title => 'Intelligens bevásárlólisták';

  @override
  String get onboardingSlide1Body =>
      'Létrehozhat és megoszthat listákat azonnal. Kipi automatikusan hozzáadja az elemeket az Ön szokásai alapján.';

  @override
  String get onboardingSlide2Title => 'Találkozz Kipivel';

  @override
  String get onboardingSlide2Body =>
      'Kérdezz bármit – hozzon létre listákat, keressen recepteket, kövesse nyomon a spájzját, tervezze meg hetét.';

  @override
  String get onboardingSlide3Title => 'Kamra és étkezés tervezése';

  @override
  String get onboardingSlide3Body =>
      'Kövesse nyomon, mit eszik, tervezze meg az étkezést, és készítsen automatikusan bevásárlólistákat.';

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
  String get paywallTrialTitle =>
      'Próbálja ki a KipiList Pro-t 7 napig ingyenesen';

  @override
  String get paywallTrialSubtitle => 'Bármikor lemondhatja. Ma nincs díj.';

  @override
  String get paywallTrialCta => 'Indítsa el az ingyenes próbaverziót';

  @override
  String get recipeAddToList => 'Hozzáadás a bevásárlólistához';

  @override
  String get recipeAddError =>
      'Nem sikerült hozzáadni a listához. Kérjük, próbálja újra.';

  @override
  String get recipeTapToCheck =>
      'Érintse meg az összetevőt, hogy ellenőrizze azt főzés közben';

  @override
  String get recipeIngredientInPantry => 'Spájzban';

  @override
  String get recipeIngredientLowPantry => 'Alacsony a kamrában';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count összetevők hozzáadva a $listName-hoz';
  }

  @override
  String get noListSelected =>
      'Nincs kiválasztva lista. Először nyisson meg egy listát.';

  @override
  String get paywallFeaturesTitle => 'Minden, amire szüksége van:';

  @override
  String get paywallFeatureDescAssistant =>
      'Az AI automatikusan rendszerezi a listát';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Hozzon létre annyi listát, amennyire szüksége van';

  @override
  String get paywallFeatureDescSharing => 'Vásároljon együtt valós időben';

  @override
  String get paywallFeatureDescPantry => 'Kövesse nyomon, mi van otthon';

  @override
  String get paywallFeatureDescBudget =>
      'Maradjon a költségvetésben minden hónapban';

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
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Biztonságos fizetés';

  @override
  String get paywallSelectPlan => 'Válassza ki tervét:';

  @override
  String paywallSavePercent(int percent) {
    return 'MEGTAKARÍTÁS $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
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
  String paywallTrialInCard(int days) {
    return 'Az első $days nap INGYENES';
  }

  @override
  String get paywallSecuredByStore =>
      'A Google Play védi · Bármikor lemondhatja';

  @override
  String get paywallPolicy => 'Adatvédelmi szabályzat';

  @override
  String get paywallTerms => 'Felhasználási feltételek';

  @override
  String get paywallRestore => 'Visszaállítás';

  @override
  String get paywallTimelineToday => 'Ma';

  @override
  String get paywallTimelineTodayDesc =>
      'Nyissa fel azonnal a teljes hozzáférést';

  @override
  String paywallTimelineDay(int day) {
    return '$day nap';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Emlékeztetjük Önt a tárgyalás vége előtt';

  @override
  String get paywallTimelineChargeDesc =>
      'Előfizetése elindul – bármikor lemondhatja';

  @override
  String get paywallHeroFeatureTitle => 'AI vásárlási asszisztens';

  @override
  String get paywallHeroFeatureDesc =>
      'Mondjon ki vagy illesszen be egy teljes listát – a mesterséges intelligencia másodpercek alatt rendezi, kategorizálja és költségvetést készít';

  @override
  String get paywallBasedOnAnswers =>
      'Az Ön válaszai alapján személyre szabott';

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
  String get paywallWelcomeOfferBadge => '🎁 Üdvözlő ajánlat';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kezdje ingyen – $days nap';
  }

  @override
  String get premiumUpgrade => 'Frissítsen a feloldáshoz';

  @override
  String get itemRemoved => 'Elem eltávolítva';

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
  String get pantryItemAdded => 'Elem hozzáadva';

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
  String get recipeYieldServings => 'Hozam adagok';

  @override
  String get recipeManualTotalCost => 'Manuális teljes költség';

  @override
  String get recipeManualTotalCostHint =>
      'Hagyja üresen, hogy megbecsülje az összetevők árát.';

  @override
  String get recipeEstimatedTotalCost => 'Becsült összköltség';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / adag';
  }

  @override
  String recipeServesCount(int count) {
    return 'Kiszolgál $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Részleges becslés az összetevők és ár alapján.';

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
  String get mealPlannerEstimatePartial =>
      'Becslés receptek alapján, részleges áradatokkal.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Month: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Week: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Today: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Remove goal';

  @override
  String get mealPlannerBudgetGoalNav => 'Meal planner budget';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Monthly spending goal for meal planning';

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
  String shareReferralText(String url) {
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
  String get catalogRareBadge => 'Ritka';

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
  String get catalogCategories => 'Kategóriák';

  @override
  String get offlineBanner => 'Ön offline állapotban van';

  @override
  String get consentTitle => 'Adatvédelem és elemzések';

  @override
  String get consentBody =>
      'A KipiList a Firebase Analytics segítségével javítja az élményt. Adatait az adatvédelmi szabályzatunk szerint kezeljük.';

  @override
  String get consentAccept => 'Elfogadás';

  @override
  String get consentDecline => 'Nem, köszönöm';

  @override
  String get mealPlannerPantryAllAvailable => 'Raktáron';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hiányzó elem',
      one: '$count hiányzó elem',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'Étkezéstípusok kezelése';

  @override
  String get mealPlannerAddType => 'Adja hozzá az étkezés típusát';

  @override
  String get mealPlannerEditType => 'Étkezés típusának szerkesztése';

  @override
  String get mealPlannerTypeName => 'Név';

  @override
  String get mealPlannerTypeColor => 'Szín';

  @override
  String get mealPlannerTypeIcon => 'Ikon';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Biztosan törli ezt az étkezési típust? A tervezett étkezések ezzel a típussal megmaradnak.';

  @override
  String get mealPlannerTypeNameEmpty => 'A név nem lehet üres';

  @override
  String get mealPlannerTypeDeleteError => 'Ez az étkezéstípus nem törölhető.';

  @override
  String get mealPlannerCustomTypeLabel => 'Egyedi típus';

  @override
  String get mealPlannerDefaultTypeLabel => 'Alapértelmezett típus';

  @override
  String get expirationDate => 'Lejárati idő';

  @override
  String get notInformed => 'Nem tájékoztatták';

  @override
  String get skip => 'Kihagyás';

  @override
  String get onboardingAiTitle => 'Csevegés Kipivel';

  @override
  String get onboardingAiGreeting =>
      'Szia! Kipi vagyok, a személyes vásárlási asszisztensed! 🛒';

  @override
  String get onboardingAiAskName => 'mi a neved?';

  @override
  String get onboardingAiNameHint => 'Írja be a nevét...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Örülök, hogy találkoztunk, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Mi a kedvenc ételed?';

  @override
  String get onboardingAiFoodHint => 'például Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Remek választások! A következőket adnám hozzá a listádhoz:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'Ez jól néz ki? Próbálj mást beírni!';

  @override
  String get onboardingAiReady =>
      'Nagy! Készen állsz a kezdésre. Állítsuk be fiókját!';

  @override
  String get onboardingAiContinue => 'Folytatás →';

  @override
  String get connectionError => 'Csatlakozási hiba';

  @override
  String connectionErrorDesc(String error) {
    return 'Hiba: $error';
  }

  @override
  String get errorLoadingLists => 'Hiba a listák betöltésekor';

  @override
  String get errorLoadingItems => 'Hiba az elemek betöltésekor';

  @override
  String get noListsFound => 'Nem találhatók listák';

  @override
  String get backToToday => 'Vissza a mába';

  @override
  String get quickSuggestions => 'Gyors javaslatok';

  @override
  String get aiEnergyLow => 'Alacsony AI energia';

  @override
  String get aiUnlockUnlimited => 'Oldja fel a korlátlan AI-t';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 ma';
  }

  @override
  String get aiSubscribeUnlimited => 'Iratkozzon fel korlátlan AI-ra';

  @override
  String get unlockWithAd => 'Feloldás hirdetéssel';

  @override
  String get conversationHistoryTitle => 'Beszélgetés előzményei';

  @override
  String get noConversationsFound => 'Nem találhatók beszélgetések';

  @override
  String get errorLoadingHistory => 'Hiba az előzmények betöltésekor';

  @override
  String get deleteConversationTitle => 'Beszélgetés törlése';

  @override
  String get deleteConversationConfirm => 'Ez a művelet nem vonható vissza.';

  @override
  String get deleteConversation => 'Töröl';

  @override
  String get subscription => 'Előfizetés';

  @override
  String get kipiListProActive => 'KipiList Pro aktív';

  @override
  String get unlockPremiumTitle => 'A Premium feloldása';

  @override
  String get loadingSubscription => 'Előfizetés betöltése...';

  @override
  String get errorLoadingSubscription => 'Hiba az előfizetés betöltésekor';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'A profilom';

  @override
  String get profileSubtitle => 'Az Ön profiladatai';

  @override
  String get customizeAiAssistant => 'Az AI-asszisztens testreszabása';

  @override
  String get assistantHistory => 'Asszisztens története';

  @override
  String get assistantHistorySubtitle =>
      'Megtekintheti beszélgetési előzményeit';

  @override
  String get manageCategories => 'Kategóriák kezelése';

  @override
  String get manageCategoriesSubtitle =>
      'Kategóriák hozzáadása, szerkesztése vagy eltávolítása';

  @override
  String get customizeAssistant => 'Testreszabás';

  @override
  String get assistantName => 'Asszisztens neve';

  @override
  String get chooseIcon => 'Válassza ki az ikont';

  @override
  String get profileSaved => 'Profil mentve';

  @override
  String get errorSavingProfile => 'Hiba a profil mentésekor';

  @override
  String get userProfile => 'Felhasználói profil';

  @override
  String get profileDescription => 'Profil leírása';

  @override
  String get preferredMarket => 'Előnyben részesített piac';

  @override
  String get preferredMarketHint => 'Hol szoktál vásárolni?';

  @override
  String get dietaryRestrictions => 'Diétás korlátozások';

  @override
  String get dietaryRestrictionsHint => 'Van valami étkezési korlátozás?';

  @override
  String get marketsToAvoid => 'Elkerülendő piacok';

  @override
  String get marketsToAvoidHint => 'Piacok, ahol nem szeretne vásárolni';

  @override
  String get observations => 'Észrevételek';

  @override
  String get observationsHint => 'További megjegyzések?';

  @override
  String get saveProfile => 'Profil mentése';

  @override
  String get everythingReady => 'Minden készen áll!';

  @override
  String get youCompletedList => 'Teljesítetted a listát!';

  @override
  String get selectCheaperAlternative => 'Válasszon olcsóbb alternatívát';

  @override
  String get suggestedItems => 'Javasolt elemek';

  @override
  String get swapped => 'Cserélve';

  @override
  String get swap => 'Csere';

  @override
  String get chooseThemeColor => 'Válassza ki a téma színét';

  @override
  String get manageCategoriesTitle => 'Kategóriák kezelése';

  @override
  String get categoryLimitReached => 'Elérte a kategóriakorlátot';

  @override
  String get deleteCategoryTitle => 'Kategória törlése';

  @override
  String deleteCategoryConfirm(String category) {
    return 'A \"$category\" mappában lévő elemek átkerülnek az \"Egyéb\" mappába.\nFolytatja?';
  }

  @override
  String get deleteCategory => 'Töröl';

  @override
  String get newCategoryDialog => 'Új kategória';

  @override
  String get editCategoryDialog => 'Kategória szerkesztése';

  @override
  String get categoryName => 'Kategória neve';

  @override
  String get categoryNameHint => 'Adja meg a kategória nevét';

  @override
  String get categoryColorLabel => 'Szín';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name hozzáadva';
  }

  @override
  String get kipiQuickBarHint => 'Mit kell vásárolni?';

  @override
  String replaceItem(String item) {
    return 'Csere $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit – $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Soha többé ne felejts el egy élelmiszert';

  @override
  String get onboardingGoalSaveMoney => 'Pénzt takarít meg';

  @override
  String get onboardingGoalNeverForget => 'Soha ne felejtsd el az elemeket';

  @override
  String get onboardingGoalFaster => 'Vásároljon gyorsabban';

  @override
  String get onboardingGoalFamily => 'Szervezze meg a családi vásárlást';

  @override
  String get onboardingGoalRecipes => 'Fedezze fel a recepteket';

  @override
  String get onboardingGoalPantry => 'Pálya kamra';

  @override
  String get onboardingCommitmentsTitle => 'Mi számít neked?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Válassza ki céljait a KipiList személyre szabásához';

  @override
  String get onboardingCommitmentsCta => 'Menjünk!';

  @override
  String get onboardingPersonalizationNameLabel => 'A te neved';

  @override
  String get onboardingPersonalizationNameHint => 'Írja be a nevét';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Mit vásárolsz?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Kinek vásárolsz?';

  @override
  String get onboardingCategoryGrocery => 'Élelmiszerboltok';

  @override
  String get onboardingCategoryPharmacy => 'Gyógyszertár';

  @override
  String get onboardingCategoryRecipes => 'Receptek';

  @override
  String get onboardingCategoryHome => 'Otthon';

  @override
  String get onboardingCategoryPet => 'Kedvenc';

  @override
  String get onboardingGroupSolo => 'Csak én';

  @override
  String get onboardingGroupCouple => 'Párosít';

  @override
  String get onboardingGroupFamily => 'Család';

  @override
  String get onboardingLoadingTitle => 'Tapasztalat előkészítése...';

  @override
  String get onboardingLoadingStep1 => 'A preferenciák elemzése...';

  @override
  String get onboardingLoadingStep2 => 'AI-asszisztens beállítása...';

  @override
  String get onboardingLoadingStep3 => 'Majdnem kész...';

  @override
  String get onboardingLoadingStat1Label => 'Katalógusba sorolt ​​tételek';

  @override
  String get onboardingLoadingStat2Label => 'A felhasználók segítettek';

  @override
  String get onboardingLoadingStat3Label => 'Megtakarított percek';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spóroljon minden utazáson!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, soha ne felejts el egyetlen elemet sem!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, vásároljon feleannyi idő alatt!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, szervezzen családi vásárlást!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, fedezzen fel új recepteket!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, kövesse tökéletesen a kamráját!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Minden utazáson spóroljon!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Soha ne felejts el egy tárgyat!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Vásároljon feleannyi idő alatt!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Szervezze meg a családi vásárlást!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Fedezz fel új recepteket!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Kövesse nyomon a kamráját tökéletesen!';

  @override
  String paywallPricePerDay(String price) {
    return 'Csak $price/nap – kevesebb, mint egy kávé';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Most hagyd ki';

  @override
  String get paywallTestimonial =>
      'Az AI pillanatok alatt megszervezi a vásárlásomat. 20 percet spórolok utazásonként.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Bármikor lemondhatja · A próbaidőszak végéig nincs díj';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Szia $name! Milyen $category-ra van szüksége?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Milyen $category-ra van szüksége?';
  }

  @override
  String get onboardingAiDemoYes => 'Igen!';

  @override
  String get onboardingAiDemoReaction => 'Szép!';

  @override
  String get onboardingAiDemoChange => 'Elem módosítása';

  @override
  String get onboardingAiDemoOffer => 'Próbálj mást beírni!';

  @override
  String get onboardingAiDemoContinue => 'Folytatás';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Az Ön bevásárlólistája, most AI-val';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Tekintse meg, hogyan készíti Kipi másodpercek alatt a teljes listát';

  @override
  String get onboardingAiDemoSlideCta => 'ezt akarom! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Barbecue-t rendezek 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Kész! Itt van minden, amire szüksége van:';

  @override
  String get onboardingAiDemoSlideDone => 'Teljes lista másodpercek alatt ✨';

  @override
  String get onboardingPainTitle => 'Mi frusztrál a legjobban?';

  @override
  String get onboardingPainSubtitle => 'Légy őszinte – mindegyiket megjavítjuk';

  @override
  String get onboardingPainCta => 'Igen, javítsd ki nekem →';

  @override
  String get onboardingPainForget => 'Elfelejtem az árukat a boltban';

  @override
  String get onboardingPainFamily => 'A családom soha nem látja a listát';

  @override
  String get onboardingPainOverspend => 'Mindig túllépem a költségvetést';

  @override
  String get onboardingPainRepeat => 'Egy utazás sosem elég';

  @override
  String get aiWelcomeContent =>
      'Helló! 👋 **Kipi** vagyok, a személyes vásárlási és recepttársad!\n\nAzért vagyok itt, hogy segítsek:\n🛒 **Szervezd** automatikusan a vásárlást kategóriák szerint\n💰 **Kövesse nyomon** költségvetését, és adjon pénzmegtakarítási tippeket\n🍲 **Javasljon** finom recepteket azzal, amivel már rendelkezik\n\nHogyan segíthetek ma? Kezdheti az első lista létrehozásával!';

  @override
  String get aiWelcomeSuggestCreateList => 'Hozd létre az első listámat';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, segíts elkészíteni az első bevásárlólistámat';

  @override
  String get aiWelcomeSuggestSave => 'Hogyan lehet pénzt megtakarítani?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hogyan segíthetsz nekem pénzt spórolni az élelmiszerekre?';

  @override
  String get suggestionMilk => 'Tej';

  @override
  String get suggestionBread => 'Kenyér';

  @override
  String get suggestionEggs => 'Tojás';

  @override
  String get suggestionCoffee => 'Kávé';

  @override
  String get suggestionRice => 'Rizs';

  @override
  String get suggestionFruits => 'Gyümölcsök';

  @override
  String get recipeIngredientSingular => '1 összetevő';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count összetevők';
  }

  @override
  String get pantryAvailabilityAll => 'Minden kész!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount a kamrában';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$total/$current. lépés';
  }

  @override
  String get onboardingDemoHeadline =>
      'Mondja el, mit tervez. Kipi összeállítja a listát.';

  @override
  String get onboardingDemoSubtitle =>
      'Szerezze meg a rendszerezett elemeket másodpercek alatt.';

  @override
  String get onboardingPersonalizationEffect =>
      'Ez segít Kipinek relevánsabb tételeket és mennyiségeket javasolni.';

  @override
  String get onboardingPersonalizeWithName => 'Személyre a nevemmel';

  @override
  String get onboardingCreateFirstList => 'Hozd létre az első listámat';

  @override
  String get onboardingPromptWeekly => 'Tervezd meg a heti szükségleteimet';

  @override
  String get onboardingPromptEvent => 'Valami különlegessel készülök';

  @override
  String get onboardingPromptEssentials => 'Ajánlja nekem a lényeges dolgokat';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Rizs|🫘 Bab|🥛 Tej|🥚 Tojás|🍞 Kenyér|🍎 Gyümölcs';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Öntapadó kötszerek|🌡️ Hőmérő|🧴 Fertőtlenítő|😷 Arcmaszkok|🧼 Kézfertőtlenítő';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Paradicsom|🧅 Hagyma|🧄 Fokhagyma|🥚 Tojás|🧀 Sajt|🌿 Friss fűszernövények';

  @override
  String get onboardingFallbackHome =>
      '🧻 Papírtörülközők|🧽 Szivacsok|🧴 Mosószer|🗑️ Szemeteszsákok|🧹 Tisztítókendők';

  @override
  String get onboardingFallbackPet =>
      '🥣 Állateledel|🦴 Csemegek|🧼 Kisállat sampon|🧸 Játék|🧻 Hulladékzsákok';

  @override
  String get onboardingListSaveFailed =>
      'Előkészítettem a tételeket, de nem tudtam elmenteni a listát. Próbálja újra, hogy az alkalmazásban maradjon.';

  @override
  String onboardingListCreated(int count) {
    return 'A listája készen van: $count elemet rendeztek Önnek.';
  }

  @override
  String get onboardingContinueToOffer => 'Folytatás';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Elkészült az első listája · $count elem';
  }

  @override
  String get paywallContinueFree => 'Folytassa az ingyenes verzióval';

  @override
  String get paywallPurchasePending =>
      'Befizetése jóváhagyásra vár. A hozzáférés a megerősítést követően automatikusan felszabadul.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Ma: nincs díj. Majd $price/év $days nap után. Bármikor lemondhatja.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Ma: nincs díj. Majd $price/hó $days nap után. Bármikor lemondhatja.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/év. Bármikor lemondhatja.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/hónap. Bármikor lemondhatja.';
  }

  @override
  String get obHookTitle => 'Az okosabb vásárlás itt kezdődik';

  @override
  String get obHookSubtitle =>
      'AI-alapú listák, amelyek időt és pénzt takarítanak meg Önnek minden egyes utazás során.';

  @override
  String get obHookSocial => 'Világszerte vásárlók ezrei bíznak meg benne';

  @override
  String get obHookCta => 'Kezdje el';

  @override
  String get obQuizHouseholdTitle => 'Kinek vásárolsz?';

  @override
  String get obQuizHouseholdSolo => 'Csak én';

  @override
  String get obQuizHouseholdCouple => 'Én és a párom';

  @override
  String get obQuizHouseholdFamilySmall => '3-4 tagú család';

  @override
  String get obQuizHouseholdFamilyLarge => '5+ fős család';

  @override
  String get obQuizFrequencyTitle => 'Milyen gyakran vásárol élelmiszert?';

  @override
  String get obQuizFrequencyDaily => 'Szinte minden nap';

  @override
  String get obQuizFrequencyWeekly => 'Hetente egyszer';

  @override
  String get obQuizFrequencyBiweekly => 'Kéthetente';

  @override
  String get obQuizFrequencyMonthly => 'Nagy havi szállítás';

  @override
  String get obQuizPainTitle =>
      'Mi az, ami leginkább elkeserít a vásárlás során?';

  @override
  String get obQuizPainForget => 'Mindig elfelejtem a dolgokat';

  @override
  String get obQuizPainOverspend => 'A tervezettnél többet költök';

  @override
  String get obQuizPainWaste => 'Az étel itthon veszendőbe megy';

  @override
  String get obQuizPainTime => 'Túl sok időt vesz igénybe';

  @override
  String get obQuizSavingsTitle => 'Mennyit szeretne havonta megtakarítani?';

  @override
  String get obQuizSavingsSmall => 'Egy kicsit – minden apróság számít';

  @override
  String get obQuizSavingsMedium => 'A bolti számlám körülbelül 10%-a';

  @override
  String get obQuizSavingsLarge => 'Amennyire csak lehetséges';

  @override
  String get obQuizMethodTitle => 'Hogyan készíts ma bevásárlólistákat?';

  @override
  String get obQuizMethodPaper => 'Toll és papír';

  @override
  String get obQuizMethodNotes => 'Jegyzetek alkalmazás';

  @override
  String get obQuizMethodMemory => 'a fejemben tartom';

  @override
  String get obQuizMethodNone => 'Nem készítek listákat';

  @override
  String get obSocialTitle => 'Jó társaságban vagy';

  @override
  String get obSocialSubtitle =>
      'A hozzád hasonló vásárlók már spórolnak a KipiList segítségével';

  @override
  String get obSocialQuote1 =>
      'Soha többé nem felejtek el semmit. Az AI másodpercek alatt összeállítja a listámat.';

  @override
  String get obSocialQuote2 =>
      'Az első hónapban érezhetően csökkentettük élelmiszerszámlánkat.';

  @override
  String get obSocialQuote3 =>
      'A lista párommal való megosztása véget vetett a vásárlási káoszunknak.';

  @override
  String get obLoadingTitle => 'Személyre szabott terv elkészítése...';

  @override
  String get obLoadingStepProfile => 'Beállítás az Ön háztartásához';

  @override
  String get obLoadingStepHabits => 'Ráhangolódás a vásárlási rutinra';

  @override
  String get obLoadingStepSavings => 'A megtakarítási stratégia optimalizálása';

  @override
  String get obLoadingStepLists => 'Okos listák készítése';

  @override
  String get obRevealTitle => 'Elkészült a terved!';

  @override
  String get obRevealSubtitle => 'Így fog működni a KipiList';

  @override
  String get obRevealSavingsCaption =>
      'Tervezett megtakarítás a KipiList segítségével';

  @override
  String obRevealMonth(int n) {
    return '$n hónap';
  }

  @override
  String get obRevealFeatureAi =>
      'Az AI összeállítja és rendszerezi a listákat';

  @override
  String get obRevealFeatureBudget => 'A célhoz képest nyomon követhető kiadás';

  @override
  String get obRevealFeaturePantry =>
      'A kamrakövetés csökkenti az élelmiszer-pazarlást';

  @override
  String get obRevealFeatureShare => 'Valós idejű megosztás a háztartással';

  @override
  String get obPaywallTitle => 'Oldja fel tervét';

  @override
  String get obPaywallRetry => 'Próbáld újra';

  @override
  String get obLoginTitle => 'Mentse el tervét';

  @override
  String get obLoginSubtitle =>
      'Jelentkezzen be, hogy listái szinkronizálódjanak az eszközök között';

  @override
  String get obLoginGoogle => 'Folytassa a Google-lal';

  @override
  String get obLoginApple => 'Folytassa az Apple-lel';

  @override
  String get obLoginSkip => 'Most nem';

  @override
  String get obLoginError =>
      'Sikertelen bejelentkezés. Próbálja újra, vagy most hagyja ki.';

  @override
  String get searchMessages => 'Üzenetek keresése...';

  @override
  String get deletedList => 'Lista törölve';

  @override
  String get openConversation => 'Nyissa meg a beszélgetést';

  @override
  String get userRole => 'Te';

  @override
  String get assistantRole => 'Helyettes';

  @override
  String get agentActionsRunning => 'Műveletek futtatása...';

  @override
  String get agentActionsFailed => 'Nem sikerült végrehajtani a műveleteket';

  @override
  String get agentActionsPremium => 'A műveletekhez Premium szükséges';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Változtatások visszavonása';

  @override
  String premiumStepDescription(String description) {
    return '$description (prémium)';
  }

  @override
  String get itemAddedToList => 'Az elem hozzáadva a listához.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Előző állapot: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Iratkozzon fel a Premiumra az automatikus műveletek feloldásához.';

  @override
  String get viewPlans => 'Tervek megtekintése';

  @override
  String get artifactSynced => 'Szinkronizálva';

  @override
  String get artifactBudgetLabel => 'Költségvetés:';

  @override
  String get totalEstimatedLabel => 'Becsült összesen';

  @override
  String get quickActionPantry => 'Spájz megtekintése';

  @override
  String get quickActionAi => 'Csevegés Kipivel';

  @override
  String aiApiError(int statusCode) {
    return 'Az AI szolgáltatás hibát adott vissza ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'A kérés túl sokáig tartott. Kérjük, próbálja újra.';

  @override
  String get aiConnectionError =>
      'Nem sikerült csatlakozni az AI-szolgáltatáshoz. Ellenőrizze a kapcsolatot.';

  @override
  String get aiEmptyResponseError => 'Az AI szolgáltatás üres választ adott.';

  @override
  String get aiInvalidResponseError =>
      'Az AI szolgáltatás érvénytelen választ adott vissza.';

  @override
  String get categoryFruits => 'Gyümölcsök';

  @override
  String get categoryCleaning => 'Tisztítás';

  @override
  String get categoryBeverages => 'Italok';

  @override
  String get categoryBakery => 'Pékség';

  @override
  String get categoryMeat => 'Hús';

  @override
  String get categoryDairy => 'Tejtermékek';

  @override
  String get categoryVegetables => 'Zöldségek';

  @override
  String get categoryGrains => 'Gabonák és gabonafélék';

  @override
  String get categoryHygiene => 'Személyes gondoskodás';

  @override
  String get categoryFrozen => 'Fagyasztott élelmiszerek';

  @override
  String get categoryCanned => 'Konzervek';

  @override
  String get categorySeasonings => 'Fűszerek';

  @override
  String get categorySweets => 'Édességek és desszertek';

  @override
  String get categoryAlcohol => 'Alkoholos italok';

  @override
  String get categoryFish => 'Hal';

  @override
  String get categoryColdCuts => 'Felvágottak';

  @override
  String get categoryUtilities => 'Háztartási kellékek';

  @override
  String get categoryPet => 'Kisállat kellékek';

  @override
  String get categoryBaby => 'Baba';

  @override
  String get categoryOthers => 'Más';

  @override
  String chatEmptyGreeting(String name) {
    return 'Szia $name, Kipi vagyok 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Szia Kipi vagyok 👋';

  @override
  String get chatEmptyPitch =>
      'Listákat készítek, recepteket javaslok, és megkeresem a mentés helyét. Hol kezdjük?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Tervezze meg a grillezést';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, grillezést rendezek – segíts összeállítani a bevásárlólistát';

  @override
  String get aiRateLimitError =>
      'Túl sok üzenet rövid időn belül. Várjon néhány másodpercet, és próbálja újra.';

  @override
  String get chatHistoryErrorTitle =>
      'Nem sikerült betölteni ezt a beszélgetést';

  @override
  String get chatHistoryErrorBody =>
      'Valami elromlott a mi oldalunkon. Koppintson az újrapróbálkozásra az újrapróbálkozáshoz.';

  @override
  String get chatHistoryOfflineTitle => 'Ön offline állapotban van';

  @override
  String get chatHistoryOfflineBody =>
      'Ellenőrizze az internetkapcsolatot, és próbálja újra.';

  @override
  String get aiGeneratingResponse => 'Válasz generálása…';
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
  String get navChat => 'Csevegés';

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
  String pantryDeficitCount(int count, String unit) {
    return 'Hiányzik $count$unit';
  }

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
  String get scanProductTitle => 'Termék beolvasása';

  @override
  String get positionBarcodeCenter => 'Helyezze a vonalkódot középre';

  @override
  String get product => 'Termék';

  @override
  String get settingsAppBar => 'Beállítások';

  @override
  String get preferencesSection => 'Preferences';

  @override
  String get aiSection => 'AI asszisztens';

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
  String get themeMode => 'Téma mód';

  @override
  String get chooseThemeMode => 'Válassza ki a téma módot';

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
  String get myAchievements => 'Eredményeim';

  @override
  String get itemsPurchased => 'Vásárolt tételek';

  @override
  String get totalSavings => 'Teljes megtakarítás';

  @override
  String get currentStreak => 'Aktuális sorozat';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '$count nap',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Feloldott jelvények';

  @override
  String get badgeBeginner => 'Kezdő';

  @override
  String get badgeOrganized => 'Szervezett';

  @override
  String get badgeSavingMaster => 'Mentés Mester';

  @override
  String get badgeSuperPlanner => 'Szuper tervező';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased / $total elem';
  }

  @override
  String progressBudget(String amount) {
    return 'Költségkeret: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Összesen: $amount';
  }

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
  String get keepAdding => 'Folytassa a hozzáadást';

  @override
  String get keepAddingSubtitle =>
      'Több elem hozzáadásához tartsa nyitva a lapot';

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
  String get chatEmptySubtitle =>
      'A kezdéshez kérjen tételjavaslatokat, recepteket vagy mentési tippeket.';

  @override
  String get chatEmptyTitle => 'A chat üres';

  @override
  String chatError(String error) {
    return 'Hiba a chat betöltésekor: $error';
  }

  @override
  String get goodResponse => 'Jó válasz';

  @override
  String get badResponse => 'Rossz válasz';

  @override
  String get scrollToBottom => 'Görgessen lefelé';

  @override
  String get somethingWentWrong => 'Valami elromlott';

  @override
  String get editMessage => 'Üzenet szerkesztése';

  @override
  String get searchConversations => 'Beszélgetések keresése';

  @override
  String get dateGroupToday => 'Ma';

  @override
  String get dateGroupYesterday => 'Tegnap';

  @override
  String get dateGroupPrevious7Days => 'Előző 7 nap';

  @override
  String get dateGroupOlder => 'Régebbi';

  @override
  String get aiAssistantTitle => 'AI asszisztens';

  @override
  String get closeSheet => 'Közeli';

  @override
  String get scanBarcodeTitle => 'Vonalkód beolvasása';

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
  String aiUsageWarning(int remaining) {
    return '$remaining AI-műveletek maradtak ebben a hónapban – korlátlan frissítés';
  }

  @override
  String get aiUsageExhausted =>
      'Elérte a havi AI-korlátot. Frissítsen Pro-ra a korlátlan használatért →';

  @override
  String get undo => 'Visszavonás';

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
  String get onboardingMaybeLater => 'Talán később';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Szia $name, szervezze meg vásárlását a megfelelő módon.';
  }

  @override
  String get onboardingSlide1Title => 'Intelligens bevásárlólisták';

  @override
  String get onboardingSlide1Body =>
      'Létrehozhat és megoszthat listákat azonnal. Kipi automatikusan hozzáadja az elemeket az Ön szokásai alapján.';

  @override
  String get onboardingSlide2Title => 'Találkozz Kipivel';

  @override
  String get onboardingSlide2Body =>
      'Kérdezz bármit – hozzon létre listákat, keressen recepteket, kövesse nyomon a spájzját, tervezze meg hetét.';

  @override
  String get onboardingSlide3Title => 'Kamra és étkezés tervezése';

  @override
  String get onboardingSlide3Body =>
      'Kövesse nyomon, mit eszik, tervezze meg az étkezést, és készítsen automatikusan bevásárlólistákat.';

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
  String get paywallTrialTitle =>
      'Próbálja ki a KipiList Pro-t 7 napig ingyenesen';

  @override
  String get paywallTrialSubtitle => 'Bármikor lemondhatja. Ma nincs díj.';

  @override
  String get paywallTrialCta => 'Indítsa el az ingyenes próbaverziót';

  @override
  String get recipeAddToList => 'Hozzáadás a bevásárlólistához';

  @override
  String get recipeAddError =>
      'Nem sikerült hozzáadni a listához. Kérjük, próbálja újra.';

  @override
  String get recipeTapToCheck =>
      'Érintse meg az összetevőt, hogy ellenőrizze azt főzés közben';

  @override
  String get recipeIngredientInPantry => 'Spájzban';

  @override
  String get recipeIngredientLowPantry => 'Alacsony a kamrában';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count összetevők hozzáadva a $listName-hoz';
  }

  @override
  String get noListSelected =>
      'Nincs kiválasztva lista. Először nyisson meg egy listát.';

  @override
  String get paywallFeaturesTitle => 'Minden, amire szüksége van:';

  @override
  String get paywallFeatureDescAssistant =>
      'Az AI automatikusan rendszerezi a listát';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Hozzon létre annyi listát, amennyire szüksége van';

  @override
  String get paywallFeatureDescSharing => 'Vásároljon együtt valós időben';

  @override
  String get paywallFeatureDescPantry => 'Kövesse nyomon, mi van otthon';

  @override
  String get paywallFeatureDescBudget =>
      'Maradjon a költségvetésben minden hónapban';

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
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Biztonságos fizetés';

  @override
  String get paywallSelectPlan => 'Válassza ki tervét:';

  @override
  String paywallSavePercent(int percent) {
    return 'MEGTAKARÍTÁS $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
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
  String paywallTrialInCard(int days) {
    return 'Az első $days nap INGYENES';
  }

  @override
  String get paywallSecuredByStore =>
      'A Google Play védi · Bármikor lemondhatja';

  @override
  String get paywallPolicy => 'Adatvédelmi szabályzat';

  @override
  String get paywallTerms => 'Felhasználási feltételek';

  @override
  String get paywallRestore => 'Visszaállítás';

  @override
  String get paywallTimelineToday => 'Ma';

  @override
  String get paywallTimelineTodayDesc =>
      'Nyissa fel azonnal a teljes hozzáférést';

  @override
  String paywallTimelineDay(int day) {
    return '$day nap';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Emlékeztetjük Önt a tárgyalás vége előtt';

  @override
  String get paywallTimelineChargeDesc =>
      'Előfizetése elindul – bármikor lemondhatja';

  @override
  String get paywallHeroFeatureTitle => 'AI vásárlási asszisztens';

  @override
  String get paywallHeroFeatureDesc =>
      'Mondjon ki vagy illesszen be egy teljes listát – a mesterséges intelligencia másodpercek alatt rendezi, kategorizálja és költségvetést készít';

  @override
  String get paywallBasedOnAnswers =>
      'Az Ön válaszai alapján személyre szabott';

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
  String get paywallWelcomeOfferBadge => '🎁 Üdvözlő ajánlat';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kezdje ingyen – $days nap';
  }

  @override
  String get premiumUpgrade => 'Frissítsen a feloldáshoz';

  @override
  String get itemRemoved => 'Elem eltávolítva';

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
  String get pantryItemAdded => 'Elem hozzáadva';

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
  String get recipeYieldServings => 'Hozam adagok';

  @override
  String get recipeManualTotalCost => 'Manuális teljes költség';

  @override
  String get recipeManualTotalCostHint =>
      'Hagyja üresen, hogy megbecsülje az összetevők árát.';

  @override
  String get recipeEstimatedTotalCost => 'Becsült összköltség';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / adag';
  }

  @override
  String recipeServesCount(int count) {
    return 'Kiszolgál $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Részleges becslés az összetevők és ár alapján.';

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
  String get mealPlannerEstimatePartial =>
      'Becslés receptek alapján, részleges áradatokkal.';

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
  String shareReferralText(String url) {
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
  String get catalogRareBadge => 'Ritka';

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
  String get catalogCategories => 'Kategóriák';

  @override
  String get offlineBanner => 'Ön offline állapotban van';

  @override
  String get consentTitle => 'Adatvédelem és elemzések';

  @override
  String get consentBody =>
      'A KipiList a Firebase Analytics segítségével javítja az élményt. Adatait az adatvédelmi szabályzatunk szerint kezeljük.';

  @override
  String get consentAccept => 'Elfogadás';

  @override
  String get consentDecline => 'Nem, köszönöm';

  @override
  String get mealPlannerPantryAllAvailable => 'Raktáron';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hiányzó elem',
      one: '$count hiányzó elem',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'Étkezéstípusok kezelése';

  @override
  String get mealPlannerAddType => 'Adja hozzá az étkezés típusát';

  @override
  String get mealPlannerEditType => 'Étkezés típusának szerkesztése';

  @override
  String get mealPlannerTypeName => 'Név';

  @override
  String get mealPlannerTypeColor => 'Szín';

  @override
  String get mealPlannerTypeIcon => 'Ikon';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Biztosan törli ezt az étkezési típust? A tervezett étkezések ezzel a típussal megmaradnak.';

  @override
  String get mealPlannerTypeNameEmpty => 'A név nem lehet üres';

  @override
  String get mealPlannerTypeDeleteError => 'Ez az étkezéstípus nem törölhető.';

  @override
  String get mealPlannerCustomTypeLabel => 'Egyedi típus';

  @override
  String get mealPlannerDefaultTypeLabel => 'Alapértelmezett típus';

  @override
  String get expirationDate => 'Lejárati idő';

  @override
  String get notInformed => 'Nem tájékoztatták';

  @override
  String get skip => 'Kihagyás';

  @override
  String get onboardingAiTitle => 'Csevegés Kipivel';

  @override
  String get onboardingAiGreeting =>
      'Szia! Kipi vagyok, a személyes vásárlási asszisztensed! 🛒';

  @override
  String get onboardingAiAskName => 'mi a neved?';

  @override
  String get onboardingAiNameHint => 'Írja be a nevét...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Örülök, hogy találkoztunk, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Mi a kedvenc ételed?';

  @override
  String get onboardingAiFoodHint => 'például Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Remek választások! A következőket adnám hozzá a listádhoz:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'Ez jól néz ki? Próbálj mást beírni!';

  @override
  String get onboardingAiReady =>
      'Nagy! Készen állsz a kezdésre. Állítsuk be fiókját!';

  @override
  String get onboardingAiContinue => 'Folytatás →';

  @override
  String get connectionError => 'Csatlakozási hiba';

  @override
  String connectionErrorDesc(String error) {
    return 'Hiba: $error';
  }

  @override
  String get errorLoadingLists => 'Hiba a listák betöltésekor';

  @override
  String get errorLoadingItems => 'Hiba az elemek betöltésekor';

  @override
  String get noListsFound => 'Nem találhatók listák';

  @override
  String get backToToday => 'Vissza a mába';

  @override
  String get quickSuggestions => 'Gyors javaslatok';

  @override
  String get aiEnergyLow => 'Alacsony AI energia';

  @override
  String get aiUnlockUnlimited => 'Oldja fel a korlátlan AI-t';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 ma';
  }

  @override
  String get aiSubscribeUnlimited => 'Iratkozzon fel korlátlan AI-ra';

  @override
  String get unlockWithAd => 'Feloldás hirdetéssel';

  @override
  String get conversationHistoryTitle => 'Beszélgetés előzményei';

  @override
  String get noConversationsFound => 'Nem találhatók beszélgetések';

  @override
  String get errorLoadingHistory => 'Hiba az előzmények betöltésekor';

  @override
  String get deleteConversationTitle => 'Beszélgetés törlése';

  @override
  String get deleteConversationConfirm => 'Ez a művelet nem vonható vissza.';

  @override
  String get deleteConversation => 'Töröl';

  @override
  String get subscription => 'Előfizetés';

  @override
  String get kipiListProActive => 'KipiList Pro aktív';

  @override
  String get unlockPremiumTitle => 'A Premium feloldása';

  @override
  String get loadingSubscription => 'Előfizetés betöltése...';

  @override
  String get errorLoadingSubscription => 'Hiba az előfizetés betöltésekor';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'A profilom';

  @override
  String get profileSubtitle => 'Az Ön profiladatai';

  @override
  String get customizeAiAssistant => 'Az AI-asszisztens testreszabása';

  @override
  String get assistantHistory => 'Asszisztens története';

  @override
  String get assistantHistorySubtitle =>
      'Megtekintheti beszélgetési előzményeit';

  @override
  String get manageCategories => 'Kategóriák kezelése';

  @override
  String get manageCategoriesSubtitle =>
      'Kategóriák hozzáadása, szerkesztése vagy eltávolítása';

  @override
  String get customizeAssistant => 'Testreszabás';

  @override
  String get assistantName => 'Asszisztens neve';

  @override
  String get chooseIcon => 'Válassza ki az ikont';

  @override
  String get profileSaved => 'Profil mentve';

  @override
  String get errorSavingProfile => 'Hiba a profil mentésekor';

  @override
  String get userProfile => 'Felhasználói profil';

  @override
  String get profileDescription => 'Profil leírása';

  @override
  String get preferredMarket => 'Előnyben részesített piac';

  @override
  String get preferredMarketHint => 'Hol szoktál vásárolni?';

  @override
  String get dietaryRestrictions => 'Diétás korlátozások';

  @override
  String get dietaryRestrictionsHint => 'Van valami étkezési korlátozás?';

  @override
  String get marketsToAvoid => 'Elkerülendő piacok';

  @override
  String get marketsToAvoidHint => 'Piacok, ahol nem szeretne vásárolni';

  @override
  String get observations => 'Észrevételek';

  @override
  String get observationsHint => 'További megjegyzések?';

  @override
  String get saveProfile => 'Profil mentése';

  @override
  String get everythingReady => 'Minden készen áll!';

  @override
  String get youCompletedList => 'Teljesítetted a listát!';

  @override
  String get selectCheaperAlternative => 'Válasszon olcsóbb alternatívát';

  @override
  String get suggestedItems => 'Javasolt elemek';

  @override
  String get swapped => 'Cserélve';

  @override
  String get swap => 'Csere';

  @override
  String get chooseThemeColor => 'Válassza ki a téma színét';

  @override
  String get manageCategoriesTitle => 'Kategóriák kezelése';

  @override
  String get categoryLimitReached => 'Elérte a kategóriakorlátot';

  @override
  String get deleteCategoryTitle => 'Kategória törlése';

  @override
  String deleteCategoryConfirm(String category) {
    return 'A \"$category\" mappában lévő elemek átkerülnek az \"Egyéb\" mappába.\nFolytatja?';
  }

  @override
  String get deleteCategory => 'Töröl';

  @override
  String get newCategoryDialog => 'Új kategória';

  @override
  String get editCategoryDialog => 'Kategória szerkesztése';

  @override
  String get categoryName => 'Kategória neve';

  @override
  String get categoryNameHint => 'Adja meg a kategória nevét';

  @override
  String get categoryColorLabel => 'Szín';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name hozzáadva';
  }

  @override
  String get kipiQuickBarHint => 'Mit kell vásárolni?';

  @override
  String replaceItem(String item) {
    return 'Csere $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit – $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Soha többé ne felejts el egy élelmiszert';

  @override
  String get onboardingGoalSaveMoney => 'Pénzt takarít meg';

  @override
  String get onboardingGoalNeverForget => 'Soha ne felejtsd el az elemeket';

  @override
  String get onboardingGoalFaster => 'Vásároljon gyorsabban';

  @override
  String get onboardingGoalFamily => 'Szervezze meg a családi vásárlást';

  @override
  String get onboardingGoalRecipes => 'Fedezze fel a recepteket';

  @override
  String get onboardingGoalPantry => 'Pálya kamra';

  @override
  String get onboardingCommitmentsTitle => 'Mi számít neked?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Válassza ki céljait a KipiList személyre szabásához';

  @override
  String get onboardingCommitmentsCta => 'Menjünk!';

  @override
  String get onboardingPersonalizationNameLabel => 'A te neved';

  @override
  String get onboardingPersonalizationNameHint => 'Írja be a nevét';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Mit vásárolsz?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Kinek vásárolsz?';

  @override
  String get onboardingCategoryGrocery => 'Élelmiszerboltok';

  @override
  String get onboardingCategoryPharmacy => 'Gyógyszertár';

  @override
  String get onboardingCategoryRecipes => 'Receptek';

  @override
  String get onboardingCategoryHome => 'Otthon';

  @override
  String get onboardingCategoryPet => 'Kedvenc';

  @override
  String get onboardingGroupSolo => 'Csak én';

  @override
  String get onboardingGroupCouple => 'Párosít';

  @override
  String get onboardingGroupFamily => 'Család';

  @override
  String get onboardingLoadingTitle => 'Tapasztalat előkészítése...';

  @override
  String get onboardingLoadingStep1 => 'A preferenciák elemzése...';

  @override
  String get onboardingLoadingStep2 => 'AI-asszisztens beállítása...';

  @override
  String get onboardingLoadingStep3 => 'Majdnem kész...';

  @override
  String get onboardingLoadingStat1Label => 'Katalógusba sorolt ​​tételek';

  @override
  String get onboardingLoadingStat2Label => 'A felhasználók segítettek';

  @override
  String get onboardingLoadingStat3Label => 'Megtakarított percek';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spóroljon minden utazáson!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, soha ne felejts el egyetlen elemet sem!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, vásároljon feleannyi idő alatt!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, szervezzen családi vásárlást!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, fedezzen fel új recepteket!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, kövesse tökéletesen a kamráját!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Minden utazáson spóroljon!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Soha ne felejts el egy tárgyat!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Vásároljon feleannyi idő alatt!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Szervezze meg a családi vásárlást!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Fedezz fel új recepteket!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Kövesse nyomon a kamráját tökéletesen!';

  @override
  String paywallPricePerDay(String price) {
    return 'Csak $price/nap – kevesebb, mint egy kávé';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Most hagyd ki';

  @override
  String get paywallTestimonial =>
      'Az AI pillanatok alatt megszervezi a vásárlásomat. 20 percet spórolok utazásonként.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Bármikor lemondhatja · A próbaidőszak végéig nincs díj';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Szia $name! Milyen $category-ra van szüksége?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Milyen $category-ra van szüksége?';
  }

  @override
  String get onboardingAiDemoYes => 'Igen!';

  @override
  String get onboardingAiDemoReaction => 'Szép!';

  @override
  String get onboardingAiDemoChange => 'Elem módosítása';

  @override
  String get onboardingAiDemoOffer => 'Próbálj mást beírni!';

  @override
  String get onboardingAiDemoContinue => 'Folytatás';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Az Ön bevásárlólistája, most AI-val';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Tekintse meg, hogyan készíti Kipi másodpercek alatt a teljes listát';

  @override
  String get onboardingAiDemoSlideCta => 'ezt akarom! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Barbecue-t rendezek 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Kész! Itt van minden, amire szüksége van:';

  @override
  String get onboardingAiDemoSlideDone => 'Teljes lista másodpercek alatt ✨';

  @override
  String get onboardingPainTitle => 'Mi frusztrál a legjobban?';

  @override
  String get onboardingPainSubtitle => 'Légy őszinte – mindegyiket megjavítjuk';

  @override
  String get onboardingPainCta => 'Igen, javítsd ki nekem →';

  @override
  String get onboardingPainForget => 'Elfelejtem az árukat a boltban';

  @override
  String get onboardingPainFamily => 'A családom soha nem látja a listát';

  @override
  String get onboardingPainOverspend => 'Mindig túllépem a költségvetést';

  @override
  String get onboardingPainRepeat => 'Egy utazás sosem elég';

  @override
  String get aiWelcomeContent =>
      'Helló! 👋 **Kipi** vagyok, a személyes vásárlási és recepttársad!\n\nAzért vagyok itt, hogy segítsek:\n🛒 **Szervezd** automatikusan a vásárlást kategóriák szerint\n💰 **Kövesse nyomon** költségvetését, és adjon pénzmegtakarítási tippeket\n🍲 **Javasljon** finom recepteket azzal, amivel már rendelkezik\n\nHogyan segíthetek ma? Kezdheti az első lista létrehozásával!';

  @override
  String get aiWelcomeSuggestCreateList => 'Hozd létre az első listámat';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, segíts elkészíteni az első bevásárlólistámat';

  @override
  String get aiWelcomeSuggestSave => 'Hogyan lehet pénzt megtakarítani?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hogyan segíthetsz nekem pénzt spórolni az élelmiszerekre?';

  @override
  String get suggestionMilk => 'Tej';

  @override
  String get suggestionBread => 'Kenyér';

  @override
  String get suggestionEggs => 'Tojás';

  @override
  String get suggestionCoffee => 'Kávé';

  @override
  String get suggestionRice => 'Rizs';

  @override
  String get suggestionFruits => 'Gyümölcsök';

  @override
  String get recipeIngredientSingular => '1 összetevő';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count összetevők';
  }

  @override
  String get pantryAvailabilityAll => 'Minden kész!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount a kamrában';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$total/$current. lépés';
  }

  @override
  String get onboardingDemoHeadline =>
      'Mondja el, mit tervez. Kipi összeállítja a listát.';

  @override
  String get onboardingDemoSubtitle =>
      'Szerezze meg a rendszerezett elemeket másodpercek alatt.';

  @override
  String get onboardingPersonalizationEffect =>
      'Ez segít Kipinek relevánsabb tételeket és mennyiségeket javasolni.';

  @override
  String get onboardingPersonalizeWithName => 'Személyre a nevemmel';

  @override
  String get onboardingCreateFirstList => 'Hozd létre az első listámat';

  @override
  String get onboardingPromptWeekly => 'Tervezd meg a heti szükségleteimet';

  @override
  String get onboardingPromptEvent => 'Valami különlegessel készülök';

  @override
  String get onboardingPromptEssentials => 'Ajánlja nekem a lényeges dolgokat';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Rizs|🫘 Bab|🥛 Tej|🥚 Tojás|🍞 Kenyér|🍎 Gyümölcs';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Öntapadó kötszerek|🌡️ Hőmérő|🧴 Fertőtlenítő|😷 Arcmaszkok|🧼 Kézfertőtlenítő';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Paradicsom|🧅 Hagyma|🧄 Fokhagyma|🥚 Tojás|🧀 Sajt|🌿 Friss fűszernövények';

  @override
  String get onboardingFallbackHome =>
      '🧻 Papírtörülközők|🧽 Szivacsok|🧴 Mosószer|🗑️ Szemeteszsákok|🧹 Tisztítókendők';

  @override
  String get onboardingFallbackPet =>
      '🥣 Állateledel|🦴 Csemegek|🧼 Kisállat sampon|🧸 Játék|🧻 Hulladékzsákok';

  @override
  String get onboardingListSaveFailed =>
      'Előkészítettem a tételeket, de nem tudtam elmenteni a listát. Próbálja újra, hogy az alkalmazásban maradjon.';

  @override
  String onboardingListCreated(int count) {
    return 'A listája készen van: $count elemet rendeztek Önnek.';
  }

  @override
  String get onboardingContinueToOffer => 'Folytatás';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Elkészült az első listája · $count elem';
  }

  @override
  String get paywallContinueFree => 'Folytassa az ingyenes verzióval';

  @override
  String get paywallPurchasePending =>
      'Befizetése jóváhagyásra vár. A hozzáférés a megerősítést követően automatikusan felszabadul.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Ma: nincs díj. Majd $price/év $days nap után. Bármikor lemondhatja.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Ma: nincs díj. Majd $price/hó $days nap után. Bármikor lemondhatja.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/év. Bármikor lemondhatja.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/hónap. Bármikor lemondhatja.';
  }

  @override
  String get obHookTitle => 'Az okosabb vásárlás itt kezdődik';

  @override
  String get obHookSubtitle =>
      'AI-alapú listák, amelyek időt és pénzt takarítanak meg Önnek minden egyes utazás során.';

  @override
  String get obHookSocial => 'Világszerte vásárlók ezrei bíznak meg benne';

  @override
  String get obHookCta => 'Kezdje el';

  @override
  String get obQuizHouseholdTitle => 'Kinek vásárolsz?';

  @override
  String get obQuizHouseholdSolo => 'Csak én';

  @override
  String get obQuizHouseholdCouple => 'Én és a párom';

  @override
  String get obQuizHouseholdFamilySmall => '3-4 tagú család';

  @override
  String get obQuizHouseholdFamilyLarge => '5+ fős család';

  @override
  String get obQuizFrequencyTitle => 'Milyen gyakran vásárol élelmiszert?';

  @override
  String get obQuizFrequencyDaily => 'Szinte minden nap';

  @override
  String get obQuizFrequencyWeekly => 'Hetente egyszer';

  @override
  String get obQuizFrequencyBiweekly => 'Kéthetente';

  @override
  String get obQuizFrequencyMonthly => 'Nagy havi szállítás';

  @override
  String get obQuizPainTitle =>
      'Mi az, ami leginkább elkeserít a vásárlás során?';

  @override
  String get obQuizPainForget => 'Mindig elfelejtem a dolgokat';

  @override
  String get obQuizPainOverspend => 'A tervezettnél többet költök';

  @override
  String get obQuizPainWaste => 'Az étel itthon veszendőbe megy';

  @override
  String get obQuizPainTime => 'Túl sok időt vesz igénybe';

  @override
  String get obQuizSavingsTitle => 'Mennyit szeretne havonta megtakarítani?';

  @override
  String get obQuizSavingsSmall => 'Egy kicsit – minden apróság számít';

  @override
  String get obQuizSavingsMedium => 'A bolti számlám körülbelül 10%-a';

  @override
  String get obQuizSavingsLarge => 'Amennyire csak lehetséges';

  @override
  String get obQuizMethodTitle => 'Hogyan készíts ma bevásárlólistákat?';

  @override
  String get obQuizMethodPaper => 'Toll és papír';

  @override
  String get obQuizMethodNotes => 'Jegyzetek alkalmazás';

  @override
  String get obQuizMethodMemory => 'a fejemben tartom';

  @override
  String get obQuizMethodNone => 'Nem készítek listákat';

  @override
  String get obSocialTitle => 'Jó társaságban vagy';

  @override
  String get obSocialSubtitle =>
      'A hozzád hasonló vásárlók már spórolnak a KipiList segítségével';

  @override
  String get obSocialQuote1 =>
      'Soha többé nem felejtek el semmit. Az AI másodpercek alatt összeállítja a listámat.';

  @override
  String get obSocialQuote2 =>
      'Az első hónapban érezhetően csökkentettük élelmiszerszámlánkat.';

  @override
  String get obSocialQuote3 =>
      'A lista párommal való megosztása véget vetett a vásárlási káoszunknak.';

  @override
  String get obLoadingTitle => 'Személyre szabott terv elkészítése...';

  @override
  String get obLoadingStepProfile => 'Beállítás az Ön háztartásához';

  @override
  String get obLoadingStepHabits => 'Ráhangolódás a vásárlási rutinra';

  @override
  String get obLoadingStepSavings => 'A megtakarítási stratégia optimalizálása';

  @override
  String get obLoadingStepLists => 'Okos listák készítése';

  @override
  String get obRevealTitle => 'Elkészült a terved!';

  @override
  String get obRevealSubtitle => 'Így fog működni a KipiList';

  @override
  String get obRevealSavingsCaption =>
      'Tervezett megtakarítás a KipiList segítségével';

  @override
  String obRevealMonth(int n) {
    return '$n hónap';
  }

  @override
  String get obRevealFeatureAi =>
      'Az AI összeállítja és rendszerezi a listákat';

  @override
  String get obRevealFeatureBudget => 'A célhoz képest nyomon követhető kiadás';

  @override
  String get obRevealFeaturePantry =>
      'A kamrakövetés csökkenti az élelmiszer-pazarlást';

  @override
  String get obRevealFeatureShare => 'Valós idejű megosztás a háztartással';

  @override
  String get obPaywallTitle => 'Oldja fel tervét';

  @override
  String get obPaywallRetry => 'Próbáld újra';

  @override
  String get obLoginTitle => 'Mentse el tervét';

  @override
  String get obLoginSubtitle =>
      'Jelentkezzen be, hogy listái szinkronizálódjanak az eszközök között';

  @override
  String get obLoginGoogle => 'Folytassa a Google-lal';

  @override
  String get obLoginApple => 'Folytassa az Apple-lel';

  @override
  String get obLoginSkip => 'Most nem';

  @override
  String get obLoginError =>
      'Sikertelen bejelentkezés. Próbálja újra, vagy most hagyja ki.';

  @override
  String get searchMessages => 'Üzenetek keresése...';

  @override
  String get deletedList => 'Lista törölve';

  @override
  String get openConversation => 'Nyissa meg a beszélgetést';

  @override
  String get userRole => 'Te';

  @override
  String get assistantRole => 'Helyettes';

  @override
  String get agentActionsRunning => 'Műveletek futtatása...';

  @override
  String get agentActionsFailed => 'Nem sikerült végrehajtani a műveleteket';

  @override
  String get agentActionsPremium => 'A műveletekhez Premium szükséges';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Változtatások visszavonása';

  @override
  String premiumStepDescription(String description) {
    return '$description (prémium)';
  }

  @override
  String get itemAddedToList => 'Az elem hozzáadva a listához.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Előző állapot: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Iratkozzon fel a Premiumra az automatikus műveletek feloldásához.';

  @override
  String get viewPlans => 'Tervek megtekintése';

  @override
  String get artifactSynced => 'Szinkronizálva';

  @override
  String get artifactBudgetLabel => 'Költségvetés:';

  @override
  String get totalEstimatedLabel => 'Becsült összesen';

  @override
  String get quickActionPantry => 'Spájz megtekintése';

  @override
  String get quickActionAi => 'Csevegés Kipivel';

  @override
  String aiApiError(int statusCode) {
    return 'Az AI szolgáltatás hibát adott vissza ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'A kérés túl sokáig tartott. Kérjük, próbálja újra.';

  @override
  String get aiConnectionError =>
      'Nem sikerült csatlakozni az AI-szolgáltatáshoz. Ellenőrizze a kapcsolatot.';

  @override
  String get aiEmptyResponseError => 'Az AI szolgáltatás üres választ adott.';

  @override
  String get aiInvalidResponseError =>
      'Az AI szolgáltatás érvénytelen választ adott vissza.';

  @override
  String get categoryFruits => 'Gyümölcsök';

  @override
  String get categoryCleaning => 'Tisztítás';

  @override
  String get categoryBeverages => 'Italok';

  @override
  String get categoryBakery => 'Pékség';

  @override
  String get categoryMeat => 'Hús';

  @override
  String get categoryDairy => 'Tejtermékek';

  @override
  String get categoryVegetables => 'Zöldségek';

  @override
  String get categoryGrains => 'Gabonák és gabonafélék';

  @override
  String get categoryHygiene => 'Személyes gondoskodás';

  @override
  String get categoryFrozen => 'Fagyasztott élelmiszerek';

  @override
  String get categoryCanned => 'Konzervek';

  @override
  String get categorySeasonings => 'Fűszerek';

  @override
  String get categorySweets => 'Édességek és desszertek';

  @override
  String get categoryAlcohol => 'Alkoholos italok';

  @override
  String get categoryFish => 'Hal';

  @override
  String get categoryColdCuts => 'Felvágottak';

  @override
  String get categoryUtilities => 'Háztartási kellékek';

  @override
  String get categoryPet => 'Kisállat kellékek';

  @override
  String get categoryBaby => 'Baba';

  @override
  String get categoryOthers => 'Más';

  @override
  String chatEmptyGreeting(String name) {
    return 'Szia $name, Kipi vagyok 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Szia Kipi vagyok 👋';

  @override
  String get chatEmptyPitch =>
      'Listákat készítek, recepteket javaslok, és megkeresem a mentés helyét. Hol kezdjük?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Tervezze meg a grillezést';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, grillezést rendezek – segíts összeállítani a bevásárlólistát';

  @override
  String get aiRateLimitError =>
      'Túl sok üzenet rövid időn belül. Várjon néhány másodpercet, és próbálja újra.';

  @override
  String get chatHistoryErrorTitle =>
      'Nem sikerült betölteni ezt a beszélgetést';

  @override
  String get chatHistoryErrorBody =>
      'Valami elromlott a mi oldalunkon. Koppintson az újrapróbálkozásra az újrapróbálkozáshoz.';

  @override
  String get chatHistoryOfflineTitle => 'Ön offline állapotban van';

  @override
  String get chatHistoryOfflineBody =>
      'Ellenőrizze az internetkapcsolatot, és próbálja újra.';

  @override
  String get aiGeneratingResponse => 'Válasz generálása…';
}
