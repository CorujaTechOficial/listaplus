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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Rendszer alapértelmezett';

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
  String get clearHistory => 'Előzmények törlése';

  @override
  String get clearHistoryConfirm =>
      'Minden üzenet törlése ebben a munkamenetben?';

  @override
  String get chatHint => 'Írja be az üzenetét...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Jelentkezzen be a prémium\nfunkciók feloldásához';

  @override
  String get signInGoogle => 'Bejelentkezés Google-lal';

  @override
  String get signInApple => 'Bejelentkezés Apple-lel';

  @override
  String get continueAsGuest => 'Folytatás vendégként';

  @override
  String loginError(String error) {
    return 'Bejelentkezési hiba: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Beszéljen természetesen a lista kezeléséhez!\n\nPéldák:\n• \'Kenyér, sajt és sonka hozzáadása\'\n• \'Mosószer eltávolítása\'\n• \'Téma váltása kékre\'\n\nEz a Lista Plus Premium exkluzív funkciója.';

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
      'A visszajelzésed megérkezett és segít nekünk a Lista Plus fejlesztésében mindenki számára.';

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
  String get openMenu => 'Open menu';

  @override
  String get viewRecipe => 'View Recipe';

  @override
  String get recipeCreated => 'Recipe created!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Delete';

  @override
  String get deleteRecipeConfirm => 'Delete this recipe?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Are you sure you want to delete \"$recipeName\"? This action cannot be undone.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Prep time';

  @override
  String get recipeSaved => 'Recipe saved!';

  @override
  String get noRecipesSaved => 'No recipes saved';

  @override
  String get noRecipesSavedHint =>
      'Create your first custom recipe by tapping the button below.';

  @override
  String get myRecipes => 'My Recipes';

  @override
  String get newRecipe => 'New Recipe';

  @override
  String get loadingRecipes => 'Loading your recipes...';

  @override
  String get errorLoadingRecipes => 'Error loading recipes';

  @override
  String get addIngredient => 'Add ingredient';

  @override
  String get saveRecipe => 'Save';

  @override
  String get recipeName => 'Recipe name';

  @override
  String get shortDescription => 'Short description';

  @override
  String get prepTimeMinutes => 'Prep time (minutes)';

  @override
  String get instructionsHint => 'Type one step per line...';

  @override
  String get addPhoto => 'Add photo';

  @override
  String get imageUrlPlaceholder => 'Or paste an image URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Recipe tags';

  @override
  String get suggestedTags => 'Suggested';

  @override
  String get searchRecipes => 'Search recipes...';

  @override
  String get filterByTag => 'Filter by tag';

  @override
  String get allTags => 'All';

  @override
  String get recipeDeleted => 'Recipe deleted';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get editRecipeTitle => 'Edit Recipe';

  @override
  String get newRecipeTitle => 'New Recipe';

  @override
  String get requiredField => 'Required';

  @override
  String get chooseImageSource => 'Choose image source';

  @override
  String get gallery => 'Gallery';

  @override
  String get enterUrl => 'Enter URL';

  @override
  String get recipeImage => 'Recipe image';

  @override
  String get removeImage => 'Remove image';
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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Rendszer alapértelmezett';

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
  String get clearHistory => 'Előzmények törlése';

  @override
  String get clearHistoryConfirm =>
      'Minden üzenet törlése ebben a munkamenetben?';

  @override
  String get chatHint => 'Írja be az üzenetét...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Jelentkezzen be a prémium\nfunkciók feloldásához';

  @override
  String get signInGoogle => 'Bejelentkezés Google-lal';

  @override
  String get signInApple => 'Bejelentkezés Apple-lel';

  @override
  String get continueAsGuest => 'Folytatás vendégként';

  @override
  String loginError(String error) {
    return 'Bejelentkezési hiba: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Beszéljen természetesen a lista kezeléséhez!\n\nPéldák:\n• \'Kenyér, sajt és sonka hozzáadása\'\n• \'Mosószer eltávolítása\'\n• \'Téma váltása kékre\'\n\nEz a Lista Plus Premium exkluzív funkciója.';

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
      'A visszajelzésed megérkezett, és segít nekünk a Lista Plus fejlesztésében mindenki számára.';

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
}
