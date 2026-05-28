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
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vybraté $count',
      many: 'Vybratých $count',
      few: 'Vybrané $count',
      one: 'Vybraný $count',
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
  String get settingsAppBar => 'Nastavenia';

  @override
  String get language => 'Jazyk';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predvolené systémové';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Vyčistiť históriu';

  @override
  String get clearHistoryConfirm => 'Vymazať všetky správy v tejto relácii?';

  @override
  String get chatHint => 'Napíšte svoju správu...';

  @override
  String chatError(String error) {
    return 'Chyba pri načítaní chatu: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Prihláste sa pre odomknutie\nprémiových funkcií';

  @override
  String get signInGoogle => 'Prihlásiť sa cez Google';

  @override
  String get signInApple => 'Prihlásiť sa cez Apple';

  @override
  String get continueAsGuest => 'Pokračovať ako hosť';

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
    return 'Chyba prihlásenia: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Hovorte prirodzene pre správu svojho zoznamu!\n\nPríklady:\n• \'Pridaj chlieb, syr a šunku\'\n• \'Odstráň prací prášok\'\n• \'Zmeň tému na modrú\'\n\nToto je exkluzívna funkcia Lista Plus Premium.';

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
      'Vaša spätná väzba bola prijatá a pomáha nám zlepšovať Lista Plus pre všetkých.';

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

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

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
