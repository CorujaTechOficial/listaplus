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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Výchozí systém';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get searchLanguage => 'Hledat jazyk...';

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
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Vyčistit historii';

  @override
  String get clearHistoryConfirm => 'Smazat všechny zprávy v této relaci?';

  @override
  String get chatHint => 'Napiš svou zprávu...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Přihlas se pro odemknutí\nprémiových funkcí';

  @override
  String get signInGoogle => 'Přihlásit se přes Google';

  @override
  String get signInApple => 'Přihlásit se přes Apple';

  @override
  String get continueAsGuest => 'Pokračovat jako host';

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
    return 'Chyba přihlášení: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Mluv přirozeně pro správu svého seznamu!\n\nPříklady:\n• \'Přidej chléb, sýr a šunku\'\n• \'Odeber prací prášek\'\n• \'Změň motiv na modrý\'\n\nToto je exkluzivní funkce Lista Plus Premium.';

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
      'Vaše zpětná vazba byla přijata a pomáhá nám vylepšovat Lista Plus pro všechny.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Výchozí systém';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get searchLanguage => 'Hledat jazyk...';

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
  String get clearHistory => 'Vyčistit historii';

  @override
  String get clearHistoryConfirm => 'Smazat všechny zprávy v této relaci?';

  @override
  String get chatHint => 'Napiš svou zprávu...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Přihlas se pro odemknutí\nprémiových funkcí';

  @override
  String get signInGoogle => 'Přihlásit se přes Google';

  @override
  String get signInApple => 'Přihlásit se přes Apple';

  @override
  String get continueAsGuest => 'Pokračovat jako host';

  @override
  String loginError(String error) {
    return 'Chyba přihlášení: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Mluv přirozeně pro správu svého seznamu!\n\nPříklady:\n• \'Přidej chléb, sýr a šunku\'\n• \'Odeber prací prášek\'\n• \'Změň motiv na modrý\'\n\nToto je exkluzivní funkce Lista Plus Premium.';

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
      'Vaše zpětná vazba byla přijata a pomáhá nám vylepšovat Lista Plus pro všechny.';

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
}
