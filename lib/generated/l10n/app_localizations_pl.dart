// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Lista zakupów';

  @override
  String get lists => 'Listy';

  @override
  String get pantry => 'Spiżarnia';

  @override
  String get cancel => 'Anuluj';

  @override
  String get save => 'Zapisz';

  @override
  String get create => 'Utwórz';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Usuń';

  @override
  String get delete => 'Usuń';

  @override
  String get edit => 'Edytuj';

  @override
  String get copy => 'Kopiuj';

  @override
  String get retry => 'Ponów';

  @override
  String get regenerate => 'Regeneruj';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get close => 'Zamknij';

  @override
  String get import => 'Importuj';

  @override
  String get rename => 'Zmień nazwę';

  @override
  String get upgrade => 'Ulepsz';

  @override
  String get clear => 'Wyczyść';

  @override
  String error(String message) {
    return 'Błąd: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Błąd: $message';
  }

  @override
  String get purchaseError => 'Błąd przetwarzania zakupu. Spróbuj ponownie.';

  @override
  String get restoreError => 'Błąd przywracania zakupów. Spróbuj ponownie.';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get fieldRequired => 'Wymagane pole';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wybrano $count',
      many: 'Wybrano $count',
      few: 'Wybrano $count',
      one: 'Wybrano $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Szacunkowo';

  @override
  String get alreadyPurchased => 'Już zakupione';

  @override
  String get clearList => 'Wyczyść listę';

  @override
  String get clearPurchased => 'Usuń zakupione';

  @override
  String get share => 'Udostępnij';

  @override
  String get shareViaCode => 'Udostępnij przez kod';

  @override
  String get importViaCode => 'Importuj przez kod';

  @override
  String get listAssistant => 'Asystent listy';

  @override
  String get globalAssistant => 'Asystent globalny';

  @override
  String get becomePremium => 'Zostań Premium';

  @override
  String get manageSubscription => 'Zarządzaj subskrypcją';

  @override
  String get completePurchase => 'Sfinalizuj zakup';

  @override
  String get confirmClearList => 'Usunąć wszystkie przedmioty?';

  @override
  String get shareListTitle => 'Udostępnij listę';

  @override
  String get shareThisCode => 'Udostępnij ten kod:';

  @override
  String get validForLimitedTime => 'Ważny przez ograniczony czas';

  @override
  String get importListTitle => 'Importuj listę';

  @override
  String get enterCodeHint => 'Wprowadź kod';

  @override
  String get confirmArchiveTitle => 'Sfinalizuj zakup';

  @override
  String get confirmArchiveContent =>
      'Sfinalizować ten zakup i zarchiwizować listę?';

  @override
  String get complete => 'Zakończ';

  @override
  String get listArchived => 'Lista zarchiwizowana pomyślnie!';

  @override
  String listAdded(String listName) {
    return 'Dodano $listName!';
  }

  @override
  String get buy => 'Kup';

  @override
  String get unmark => 'Odznacz';

  @override
  String confirmDeleteItems(int count) {
    return 'Usunąć $count przedmiot(y/ów)?';
  }

  @override
  String get confirmDeleteTitle => 'Potwierdź';

  @override
  String confirmContent(int count) {
    return 'Usunąć $count przedmiot(y/ów)?';
  }

  @override
  String get archiveList => 'Archiwizuj listę';

  @override
  String get pantryAppBar => 'Spiżarnia';

  @override
  String get generateShoppingList => 'Generuj listę zakupów';

  @override
  String get pantryEmpty => 'Pusta spiżarnia';

  @override
  String get pantryEmptySubtitle => 'Dodaj produkty, które chcesz mieć w domu';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit przedmiot(y/ów) wymaga zakupu';
  }

  @override
  String get noItemsToBuy => 'Brak przedmiotów do kupienia';

  @override
  String get newPantryList => 'Zakupy ze spiżarni';

  @override
  String get newListTitle => 'Nowa lista zakupów';

  @override
  String itemsWillBeAdded(int count) {
    return '$count przedmiot(y/ów) zostanie dodanych';
  }

  @override
  String get listNameLabel => 'Nazwa listy';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" utworzona z $count przedmiotami';
  }

  @override
  String get noTracking => 'Brak śledzenia';

  @override
  String get markAsPurchased => 'Oznacz jako kupione';

  @override
  String editPantryItem(String name) {
    return 'Edytuj $name';
  }

  @override
  String get idealQuantity => 'Idealna ilość';

  @override
  String get currentQuantity => 'Bieżąca ilość';

  @override
  String get consumed => 'Spożyto';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name uzupełnione do $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Usunąć \"$name\" ze spiżarni?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edytuj $name';
  }

  @override
  String get settingsAppBar => 'Ustawienia';

  @override
  String get language => 'Język';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Wygląd';

  @override
  String get light => 'Jasny';

  @override
  String get system => 'System';

  @override
  String get dark => 'Ciemny';

  @override
  String get themeColor => 'Kolor motywu';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Finanse';

  @override
  String get monthlyBudgetNav => 'Miesięczny budżet';

  @override
  String get budgetSubtitle => 'Śledź swoje miesięczne wydatki';

  @override
  String get data => 'Dane';

  @override
  String get backupNav => 'Kopia zapasowa';

  @override
  String get backupSubtitle => 'Eksportuj lub importuj swoje dane';

  @override
  String get about => 'O aplikacji';

  @override
  String get version => 'Wersja';

  @override
  String get privacy => 'Prywatność';

  @override
  String get termsOfUse => 'Warunki użytkowania';

  @override
  String get backupTitle => 'Kopia zapasowa';

  @override
  String get backupPremiumDescription =>
      'Kopia zapasowa i eksport to funkcja premium';

  @override
  String get exportData => 'Eksportuj dane';

  @override
  String get exportDataSubtitle => 'Zapisz wszystkie listy jako JSON';

  @override
  String get importData => 'Importuj dane';

  @override
  String get importDataSubtitle => 'Przywróć listy z pliku JSON';

  @override
  String get importJsonTitle => 'Importuj JSON';

  @override
  String get importJsonHint => 'Wklej tutaj JSON kopii zapasowej...';

  @override
  String get backupExported => 'Kopia zapasowa wyeksportowana!';

  @override
  String get budgetAppBar => 'Miesięczny budżet';

  @override
  String get budgetPremiumLocked =>
      'Globalny miesięczny budżet jest funkcją premium';

  @override
  String get budgetUpgradePrompt => 'Ulepsz, aby odblokować';

  @override
  String get noBudgetDefined => 'Brak ustawionego budżetu';

  @override
  String totalEstimated(String amount) {
    return 'Szacowana suma: $amount';
  }

  @override
  String get setBudgetButton => 'Ustaw budżet';

  @override
  String get budgetLists => 'Listy';

  @override
  String get budgetValueLabel => 'Kwota';

  @override
  String get setBudgetTitle => 'Miesięczny budżet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterPending => 'Oczekujące';

  @override
  String get filterPurchased => 'Zakupione';

  @override
  String get sortName => 'Nazwa';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Ręcznie';

  @override
  String get addItem => 'Dodaj przedmiot';

  @override
  String get itemName => 'Nazwa przedmiotu';

  @override
  String get quantityShort => 'Ilość';

  @override
  String get unit => 'Jednostka';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Szacowana cena';

  @override
  String get addItemPrice => 'Szacowana cena';

  @override
  String get editItem => 'Edytuj przedmiot';

  @override
  String get quantityFull => 'Ilość';

  @override
  String get editItemPrice => 'Szacowana cena';

  @override
  String get addToPantry => 'Dodaj do spiżarni';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodać \"$name\" do spiżarni?';
  }

  @override
  String get yes => 'Tak';

  @override
  String get productName => 'Nazwa produktu';

  @override
  String get idealQty => 'Idealna ilość';

  @override
  String get currentQty => 'Bieżąca ilość';

  @override
  String get trackStock => 'Śledź stan';

  @override
  String get trackStockActive => 'Pojawia się w sugestiach zakupów';

  @override
  String get trackStockInactive => 'Nie generuje sugestii zakupu';

  @override
  String get createListDialog => 'Utwórz listę';

  @override
  String get renameListDialog => 'Zmień nazwę listy';

  @override
  String get listHistory => 'Historia list';

  @override
  String get myLists => 'Moje listy';

  @override
  String get viewActive => 'Pokaż aktywne';

  @override
  String get viewHistory => 'Pokaż historię';

  @override
  String get noArchivedLists => 'Brak zarchiwizowanych list';

  @override
  String get noActiveLists => 'Brak aktywnych list';

  @override
  String completedOn(String date) {
    return 'Zakończono $date';
  }

  @override
  String get sharedLabel => 'Udostępnione';

  @override
  String get restore => 'Przywróć';

  @override
  String get removeSharedTooltip => 'Usuń';

  @override
  String get deleteListTitle => 'Usuń listę';

  @override
  String deleteListContent(String name) {
    return 'Czy na pewno chcesz usunąć \"$name\"? Wszystkie przedmioty zostaną usunięte.';
  }

  @override
  String get removeSharedListTitle => 'Usuń udostępnioną listę';

  @override
  String removeSharedListContent(String name) {
    return 'Usunąć \"$name\" z twoich list? Oryginalna lista nie zostanie naruszona.';
  }

  @override
  String get createNewList => 'Utwórz nową listę';

  @override
  String get aiAssistant => 'Asystent AI';

  @override
  String get aiAssistantDescription =>
      'Uzyskaj inteligentne sugestie, przepisy i spersonalizowane porady dzięki naszemu asystentowi AI.';

  @override
  String get generalAssistant => 'Asystent ogólny';

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
  String get clearHistory => 'Wyczyść historię';

  @override
  String get clearHistoryConfirm => 'Usunąć wszystkie wiadomości w tej sesji?';

  @override
  String get chatHint => 'Wpisz swoją wiadomość...';

  @override
  String chatError(String error) {
    return 'Błąd ładowania czatu: $error';
  }

  @override
  String get listHelp => 'Jak mogę pomóc z twoją listą?';

  @override
  String get generalHelp => 'Jak mogę pomóc ci dzisiaj w zakupach?';

  @override
  String get chatSubtitle =>
      'Poproś o sugestie przedmiotów, przepisy lub porady oszczędnościowe.';

  @override
  String get aiError =>
      'Przepraszamy, wystąpił błąd podczas przetwarzania twojego żądania. Sprawdź połączenie lub spróbuj ponownie później.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Zaloguj się, aby odblokować\nfunkcje premium';

  @override
  String get signInGoogle => 'Zaloguj się przez Google';

  @override
  String get signInApple => 'Zaloguj się przez Apple';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String loginError(String error) {
    return 'Błąd logowania: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Ulepsz, aby odblokować';

  @override
  String get itemRemoved => 'Przedmiot usunięty';

  @override
  String get undo => 'Cofnij';

  @override
  String get emptyListTitle => 'Twoja lista jest pusta';

  @override
  String get emptyListSubtitle => 'Dodaj przedmioty, aby rozpocząć';

  @override
  String get noListFoundTitle => 'Nie znaleziono list';

  @override
  String get noListFoundSubtitle =>
      'Utwórz swoją pierwszą listę, aby rozpocząć';

  @override
  String get createFirstList => 'Utwórz pierwszą listę';

  @override
  String get listBudgetTitle => 'Budżet listy';

  @override
  String get budgetAmountLabel => 'Kwota budżetu';

  @override
  String get removeBudget => 'Usuń';

  @override
  String get prefUnlimitedLists => 'Nieograniczone listy';

  @override
  String get prefSharing => 'Udostępnianie list';

  @override
  String get prefFullHistory => 'Pełna historia';

  @override
  String get prefExportData => 'Eksport danych';

  @override
  String get prefCustomThemes => 'Niestandardowe motywy';

  @override
  String get prefMonthlyBudget => 'Globalny miesięczny budżet';

  @override
  String get prefAIAssistant => 'Osobisty asystent AI';

  @override
  String get prefUnlimitedPantry => 'Nieograniczona spiżarnia';

  @override
  String get prefInteractiveArtifacts => 'Interaktywne artefakty AI';

  @override
  String get themeGreen => 'Zielony';

  @override
  String get themeBlue => 'Niebieski';

  @override
  String get themePurple => 'Fioletowy';

  @override
  String get themeRed => 'Czerwony';

  @override
  String get themeOrange => 'Pomarańczowy';

  @override
  String get themePink => 'Różowy';

  @override
  String get themeIndigo => 'Indygo';

  @override
  String get themeAmber => 'Bursztynowy';

  @override
  String get themeTeal => 'Morski';

  @override
  String get themeBrown => 'Brązowy';

  @override
  String get catFruits => 'Owoce';

  @override
  String get catCleaning => 'Środki czystości';

  @override
  String get catBeverages => 'Napoje';

  @override
  String get catBakery => 'Piekarnia';

  @override
  String get catOthers => 'Inne';

  @override
  String get unitPack => 'opakowanie';

  @override
  String get shareSubject => 'Lista zakupów';

  @override
  String get monthlyBudgetTitle => 'Miesięczny budżet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Usuń listę';

  @override
  String get pantryItemRemoved => 'Przedmiot usunięty';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit przedmiotu wymaga zakupu',
      many: '$deficit przedmiotów wymaga zakupu',
      few: '$deficit przedmioty wymagają zakupu',
      one: '$deficit przedmiot wymaga zakupu',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Suma koszyka';

  @override
  String get restockLabel => 'Uzupełnij';

  @override
  String get advancedFeatures => 'Zaawansowane funkcje';

  @override
  String get selectAll => 'Zaznacz wszystkie';

  @override
  String get deselectAll => 'Odznacz wszystkie';

  @override
  String get monthlyBudgetAppBar => 'Miesięczny budżet';

  @override
  String get budgetEditTitle => 'Miesięczny budżet';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard => 'Wybierz listę, aby wyświetlić panel.';

  @override
  String get spendingAnalysis => 'Analiza wydatków';

  @override
  String get noItemsToAnalyze => 'Brak przedmiotów na liście do analizy.';

  @override
  String get markItemsToSeeAnalysis =>
      'Oznacz przedmioty jako kupione, aby zobaczyć analizę.';

  @override
  String get totalSpending => 'Łączne wydatki';

  @override
  String get spendingByCategory => 'Wydatki według kategorii';

  @override
  String get achievements => 'Osiągnięcia';

  @override
  String get exportPdfExcel => 'Eksportuj PDF/Excel';

  @override
  String get exportPdf => 'Eksportuj jako PDF';

  @override
  String get exportExcel => 'Eksportuj jako Excel';

  @override
  String get organizingAi => 'ORGANIZOWANIE PRZEZ AI...';

  @override
  String get yesLabel => 'Tak';

  @override
  String get noLabel => 'Nie';

  @override
  String get shareListText => 'Moja lista zakupów';

  @override
  String get emptyListAddItems =>
      'Twoja lista jest pusta! Najpierw dodaj przedmioty. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista magicznie uporządkowana według kategorii! ✨';

  @override
  String get shoppingMode => 'Tryb zakupów';

  @override
  String get smartOrganization => 'Inteligentna organizacja';

  @override
  String get savings => 'Oszczędności';

  @override
  String get shoppingModeHeader => 'TRYB ZAKUPÓW';

  @override
  String get shareAsText => 'Wyślij przedmioty jako sformatowany tekst';

  @override
  String get shareRealtime => 'Synchronizacja w czasie rzeczywistym z innymi';

  @override
  String get quickRecipe => 'Szybki przepis';

  @override
  String get quickRecipePrompt =>
      'Zaproponuj przepisy z przedmiotów z mojej listy.';

  @override
  String get economyTips => 'Porady oszczędnościowe';

  @override
  String get economyTipsPrompt => 'Jak mogę zaoszczędzić na tych zakupach?';

  @override
  String get organizeAisles => 'Organizuj według alejek';

  @override
  String get organizeAislesPrompt => 'Uporządkuj według alejek sklepowych.';

  @override
  String get recipeSuggestion => 'Sugestia przepisu';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Pozostało $remaining kredytów';
  }

  @override
  String get addAllToList => 'Dodaj wszystkie do listy';

  @override
  String get organizeByAisles => 'Organizuj według alejek';

  @override
  String get voiceTranscriptionTooltip => 'Pisanie głosowe (Darmowe)';

  @override
  String get aiVoiceCommandTooltip => 'Polecenie głosowe AI (Premium)';

  @override
  String get voiceCommandTitle => 'Polecenie głosowe AI';

  @override
  String get voiceCommandContent =>
      'Mów naturalnie, aby zarządzać swoją listą!\n\nPrzykłady:\n• \'Dodaj chleb, ser i szynkę\'\n• \'Usuń proszek do prania\'\n• \'Zmień motyw na niebieski\'\n\nTo ekskluzywna funkcja Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Zobacz plany';

  @override
  String get itemsAddedSuccess => 'Przedmioty pomyślnie dodane do listy!';

  @override
  String get viewList => 'Zobacz listę';

  @override
  String get feedbackTitle => 'Wyślij opinię';

  @override
  String get feedbackPrompt => 'Czym chcesz się podzielić?';

  @override
  String get feedbackTypeBug => 'Zgłoś błąd';

  @override
  String get feedbackTypeBugHint => 'Coś nie działa';

  @override
  String get feedbackTypeSuggestion => 'Sugestia';

  @override
  String get feedbackTypeSuggestionHint => 'Pomysł na ulepszenie aplikacji';

  @override
  String get feedbackTypeTranslation => 'Problem z tłumaczeniem';

  @override
  String get feedbackTypeTranslationHint =>
      'Nieprawidłowe lub nienaturalne tłumaczenie';

  @override
  String get feedbackTypeFeature => 'Prośba o funkcję';

  @override
  String get feedbackTypeFeatureHint => 'Funkcja, którą chciałbyś zobaczyć';

  @override
  String get feedbackTypeOther => 'Inne';

  @override
  String get feedbackTypeOtherHint => 'Inny rodzaj opinii';

  @override
  String get feedbackHint => 'Opisz szczegółowo swoją opinię...';

  @override
  String get feedbackSend => 'Wyślij opinię';

  @override
  String get feedbackSending => 'Wysyłanie...';

  @override
  String get feedbackThankYou => 'Dziękujemy!';

  @override
  String get feedbackThankYouMessage =>
      'Twoja opinia została odebrana i pomaga nam ulepszać Lista Plus dla wszystkich.';

  @override
  String get feedbackBack => 'Wstecz';

  @override
  String feedbackError(String error) {
    return 'Błąd wysyłania: $error';
  }

  @override
  String get feedbackRetry => 'Spróbuj ponownie';

  @override
  String get feedbackSettingsTitle => 'Wyślij opinię';

  @override
  String get feedbackSettingsSubtitle =>
      'Zgłaszaj błędy, sugeruj ulepszenia lub poprawiaj tłumaczenia';

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
}

/// The translations for Polish, as used in Poland (`pl_PL`).
class AppLocalizationsPlPl extends AppLocalizationsPl {
  AppLocalizationsPlPl() : super('pl_PL');

  @override
  String get appTitle => 'Lista zakupów';

  @override
  String get lists => 'Listy';

  @override
  String get pantry => 'Spiżarnia';

  @override
  String get cancel => 'Anuluj';

  @override
  String get save => 'Zapisz';

  @override
  String get create => 'Utwórz';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Usuń';

  @override
  String get delete => 'Usuń';

  @override
  String get edit => 'Edytuj';

  @override
  String get copy => 'Kopiuj';

  @override
  String get retry => 'Ponów';

  @override
  String get regenerate => 'Regeneruj';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get close => 'Zamknij';

  @override
  String get import => 'Importuj';

  @override
  String get rename => 'Zmień nazwę';

  @override
  String get upgrade => 'Ulepsz';

  @override
  String get clear => 'Wyczyść';

  @override
  String error(String message) {
    return 'Błąd: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Błąd: $message';
  }

  @override
  String get purchaseError => 'Błąd przetwarzania zakupu. Spróbuj ponownie.';

  @override
  String get restoreError => 'Błąd przywracania zakupów. Spróbuj ponownie.';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get fieldRequired => 'Wymagane pole';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wybrano $count',
      many: 'Wybrano $count',
      few: 'Wybrano $count',
      one: 'Wybrano $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Szacunkowo';

  @override
  String get alreadyPurchased => 'Już zakupione';

  @override
  String get clearList => 'Wyczyść listę';

  @override
  String get clearPurchased => 'Usuń zakupione';

  @override
  String get share => 'Udostępnij';

  @override
  String get shareViaCode => 'Udostępnij przez kod';

  @override
  String get importViaCode => 'Importuj przez kod';

  @override
  String get listAssistant => 'Asystent listy';

  @override
  String get globalAssistant => 'Asystent globalny';

  @override
  String get becomePremium => 'Zostań Premium';

  @override
  String get manageSubscription => 'Zarządzaj subskrypcją';

  @override
  String get completePurchase => 'Sfinalizuj zakup';

  @override
  String get confirmClearList => 'Usunąć wszystkie przedmioty?';

  @override
  String get shareListTitle => 'Udostępnij listę';

  @override
  String get shareThisCode => 'Udostępnij ten kod:';

  @override
  String get validForLimitedTime => 'Ważny przez ograniczony czas';

  @override
  String get importListTitle => 'Importuj listę';

  @override
  String get enterCodeHint => 'Wprowadź kod';

  @override
  String get confirmArchiveTitle => 'Sfinalizuj zakup';

  @override
  String get confirmArchiveContent =>
      'Sfinalizować ten zakup i zarchiwizować listę?';

  @override
  String get complete => 'Zakończ';

  @override
  String get listArchived => 'Lista zarchiwizowana pomyślnie!';

  @override
  String listAdded(String listName) {
    return 'Dodano $listName!';
  }

  @override
  String get buy => 'Kup';

  @override
  String get unmark => 'Odznacz';

  @override
  String confirmDeleteItems(int count) {
    return 'Usunąć $count przedmiot(y/ów)?';
  }

  @override
  String get confirmDeleteTitle => 'Potwierdź';

  @override
  String confirmContent(int count) {
    return 'Usunąć $count przedmiot(y/ów)?';
  }

  @override
  String get archiveList => 'Archiwizuj listę';

  @override
  String get pantryAppBar => 'Spiżarnia';

  @override
  String get generateShoppingList => 'Generuj listę zakupów';

  @override
  String get pantryEmpty => 'Pusta spiżarnia';

  @override
  String get pantryEmptySubtitle => 'Dodaj produkty, które chcesz mieć w domu';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit przedmiot(y/ów) wymaga zakupu';
  }

  @override
  String get noItemsToBuy => 'Brak przedmiotów do kupienia';

  @override
  String get newPantryList => 'Zakupy ze spiżarni';

  @override
  String get newListTitle => 'Nowa lista zakupów';

  @override
  String itemsWillBeAdded(int count) {
    return '$count przedmiot(y/ów) zostanie dodanych';
  }

  @override
  String get listNameLabel => 'Nazwa listy';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" utworzona z $count przedmiotami';
  }

  @override
  String get noTracking => 'Brak śledzenia';

  @override
  String get markAsPurchased => 'Oznacz jako kupione';

  @override
  String editPantryItem(String name) {
    return 'Edytuj $name';
  }

  @override
  String get idealQuantity => 'Idealna ilość';

  @override
  String get currentQuantity => 'Bieżąca ilość';

  @override
  String get consumed => 'Spożyto';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name uzupełnione do $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Usunąć \"$name\" ze spiżarni?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Edytuj $name';
  }

  @override
  String get settingsAppBar => 'Ustawienia';

  @override
  String get language => 'Język';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get appearance => 'Wygląd';

  @override
  String get light => 'Jasny';

  @override
  String get system => 'System';

  @override
  String get dark => 'Ciemny';

  @override
  String get themeColor => 'Kolor motywu';

  @override
  String get finance => 'Finanse';

  @override
  String get monthlyBudgetNav => 'Miesięczny budżet';

  @override
  String get budgetSubtitle => 'Śledź swoje miesięczne wydatki';

  @override
  String get data => 'Dane';

  @override
  String get backupNav => 'Kopia zapasowa';

  @override
  String get backupSubtitle => 'Eksportuj lub importuj swoje dane';

  @override
  String get about => 'O aplikacji';

  @override
  String get version => 'Wersja';

  @override
  String get privacy => 'Prywatność';

  @override
  String get termsOfUse => 'Warunki użytkowania';

  @override
  String get backupTitle => 'Kopia zapasowa';

  @override
  String get backupPremiumDescription =>
      'Kopia zapasowa i eksport to funkcja premium';

  @override
  String get exportData => 'Eksportuj dane';

  @override
  String get exportDataSubtitle => 'Zapisz wszystkie listy jako JSON';

  @override
  String get importData => 'Importuj dane';

  @override
  String get importDataSubtitle => 'Przywróć listy z pliku JSON';

  @override
  String get importJsonTitle => 'Importuj JSON';

  @override
  String get importJsonHint => 'Wklej tutaj JSON kopii zapasowej...';

  @override
  String get backupExported => 'Kopia zapasowa wyeksportowana!';

  @override
  String get budgetAppBar => 'Miesięczny budżet';

  @override
  String get budgetPremiumLocked =>
      'Globalny miesięczny budżet jest funkcją premium';

  @override
  String get budgetUpgradePrompt => 'Ulepsz, aby odblokować';

  @override
  String get noBudgetDefined => 'Brak ustawionego budżetu';

  @override
  String totalEstimated(String amount) {
    return 'Szacowana suma: $amount';
  }

  @override
  String get setBudgetButton => 'Ustaw budżet';

  @override
  String get budgetLists => 'Listy';

  @override
  String get budgetValueLabel => 'Kwota';

  @override
  String get setBudgetTitle => 'Miesięczny budżet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterPending => 'Oczekujące';

  @override
  String get filterPurchased => 'Zakupione';

  @override
  String get sortName => 'Nazwa';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Ręcznie';

  @override
  String get addItem => 'Dodaj przedmiot';

  @override
  String get itemName => 'Nazwa przedmiotu';

  @override
  String get quantityShort => 'Ilość';

  @override
  String get unit => 'Jednostka';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Szacowana cena';

  @override
  String get addItemPrice => 'Szacowana cena';

  @override
  String get editItem => 'Edytuj przedmiot';

  @override
  String get quantityFull => 'Ilość';

  @override
  String get editItemPrice => 'Szacowana cena';

  @override
  String get addToPantry => 'Dodaj do spiżarni';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodać \"$name\" do spiżarni?';
  }

  @override
  String get yes => 'Tak';

  @override
  String get productName => 'Nazwa produktu';

  @override
  String get idealQty => 'Idealna ilość';

  @override
  String get currentQty => 'Bieżąca ilość';

  @override
  String get trackStock => 'Śledź stan';

  @override
  String get trackStockActive => 'Pojawia się w sugestiach zakupów';

  @override
  String get trackStockInactive => 'Nie generuje sugestii zakupu';

  @override
  String get createListDialog => 'Utwórz listę';

  @override
  String get renameListDialog => 'Zmień nazwę listy';

  @override
  String get listHistory => 'Historia list';

  @override
  String get myLists => 'Moje listy';

  @override
  String get viewActive => 'Pokaż aktywne';

  @override
  String get viewHistory => 'Pokaż historię';

  @override
  String get noArchivedLists => 'Brak zarchiwizowanych list';

  @override
  String get noActiveLists => 'Brak aktywnych list';

  @override
  String completedOn(String date) {
    return 'Zakończono $date';
  }

  @override
  String get sharedLabel => 'Udostępnione';

  @override
  String get restore => 'Przywróć';

  @override
  String get removeSharedTooltip => 'Usuń';

  @override
  String get deleteListTitle => 'Usuń listę';

  @override
  String deleteListContent(String name) {
    return 'Czy na pewno chcesz usunąć \"$name\"? Wszystkie przedmioty zostaną usunięte.';
  }

  @override
  String get removeSharedListTitle => 'Usuń udostępnioną listę';

  @override
  String removeSharedListContent(String name) {
    return 'Usunąć \"$name\" z twoich list? Oryginalna lista nie zostanie naruszona.';
  }

  @override
  String get createNewList => 'Utwórz nową listę';

  @override
  String get aiAssistant => 'Asystent AI';

  @override
  String get aiAssistantDescription =>
      'Uzyskaj inteligentne sugestie, przepisy i spersonalizowane porady dzięki naszemu asystentowi AI.';

  @override
  String get generalAssistant => 'Asystent ogólny';

  @override
  String get clearHistory => 'Wyczyść historię';

  @override
  String get clearHistoryConfirm => 'Usunąć wszystkie wiadomości w tej sesji?';

  @override
  String get chatHint => 'Wpisz swoją wiadomość...';

  @override
  String chatError(String error) {
    return 'Błąd ładowania czatu: $error';
  }

  @override
  String get listHelp => 'Jak mogę pomóc z twoją listą?';

  @override
  String get generalHelp => 'Jak mogę pomóc ci dzisiaj w zakupach?';

  @override
  String get chatSubtitle =>
      'Poproś o sugestie przedmiotów, przepisy lub porady oszczędnościowe.';

  @override
  String get aiError =>
      'Przepraszamy, wystąpił błąd podczas przetwarzania twojego żądania. Sprawdź połączenie lub spróbuj ponownie później.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Zaloguj się, aby odblokować\nfunkcje premium';

  @override
  String get signInGoogle => 'Zaloguj się przez Google';

  @override
  String get signInApple => 'Zaloguj się przez Apple';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String loginError(String error) {
    return 'Błąd logowania: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Ulepsz, aby odblokować';

  @override
  String get itemRemoved => 'Przedmiot usunięty';

  @override
  String get undo => 'Cofnij';

  @override
  String get emptyListTitle => 'Twoja lista jest pusta';

  @override
  String get emptyListSubtitle => 'Dodaj przedmioty, aby rozpocząć';

  @override
  String get noListFoundTitle => 'Nie znaleziono list';

  @override
  String get noListFoundSubtitle =>
      'Utwórz swoją pierwszą listę, aby rozpocząć';

  @override
  String get createFirstList => 'Utwórz pierwszą listę';

  @override
  String get listBudgetTitle => 'Budżet listy';

  @override
  String get budgetAmountLabel => 'Kwota budżetu';

  @override
  String get removeBudget => 'Usuń';

  @override
  String get prefUnlimitedLists => 'Nieograniczone listy';

  @override
  String get prefSharing => 'Udostępnianie list';

  @override
  String get prefFullHistory => 'Pełna historia';

  @override
  String get prefExportData => 'Eksport danych';

  @override
  String get prefCustomThemes => 'Niestandardowe motywy';

  @override
  String get prefMonthlyBudget => 'Globalny miesięczny budżet';

  @override
  String get prefAIAssistant => 'Osobisty asystent AI';

  @override
  String get prefUnlimitedPantry => 'Nieograniczona spiżarnia';

  @override
  String get prefInteractiveArtifacts => 'Interaktywne artefakty AI';

  @override
  String get themeGreen => 'Zielony';

  @override
  String get themeBlue => 'Niebieski';

  @override
  String get themePurple => 'Fioletowy';

  @override
  String get themeRed => 'Czerwony';

  @override
  String get themeOrange => 'Pomarańczowy';

  @override
  String get themePink => 'Różowy';

  @override
  String get themeIndigo => 'Indygo';

  @override
  String get themeAmber => 'Bursztynowy';

  @override
  String get themeTeal => 'Morski';

  @override
  String get themeBrown => 'Brązowy';

  @override
  String get catFruits => 'Owoce';

  @override
  String get catCleaning => 'Środki czystości';

  @override
  String get catBeverages => 'Napoje';

  @override
  String get catBakery => 'Piekarnia';

  @override
  String get catOthers => 'Inne';

  @override
  String get unitPack => 'opakowanie';

  @override
  String get shareSubject => 'Lista zakupów';

  @override
  String get monthlyBudgetTitle => 'Miesięczny budżet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Usuń listę';

  @override
  String get pantryItemRemoved => 'Przedmiot usunięty';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit przedmiotu wymaga zakupu',
      many: '$deficit przedmiotów wymaga zakupu',
      few: '$deficit przedmioty wymagają zakupu',
      one: '$deficit przedmiot wymaga zakupu',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Suma koszyka';

  @override
  String get restockLabel => 'Uzupełnij';

  @override
  String get advancedFeatures => 'Zaawansowane funkcje';

  @override
  String get selectAll => 'Zaznacz wszystkie';

  @override
  String get deselectAll => 'Odznacz wszystkie';

  @override
  String get monthlyBudgetAppBar => 'Miesięczny budżet';

  @override
  String get budgetEditTitle => 'Miesięczny budżet';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard => 'Wybierz listę, aby wyświetlić panel.';

  @override
  String get spendingAnalysis => 'Analiza wydatków';

  @override
  String get noItemsToAnalyze => 'Brak przedmiotów na liście do analizy.';

  @override
  String get markItemsToSeeAnalysis =>
      'Oznacz przedmioty jako kupione, aby zobaczyć analizę.';

  @override
  String get totalSpending => 'Łączne wydatki';

  @override
  String get spendingByCategory => 'Wydatki według kategorii';

  @override
  String get achievements => 'Osiągnięcia';

  @override
  String get exportPdfExcel => 'Eksportuj PDF/Excel';

  @override
  String get exportPdf => 'Eksportuj jako PDF';

  @override
  String get exportExcel => 'Eksportuj jako Excel';

  @override
  String get organizingAi => 'ORGANIZOWANIE PRZEZ AI...';

  @override
  String get yesLabel => 'Tak';

  @override
  String get noLabel => 'Nie';

  @override
  String get shareListText => 'Moja lista zakupów';

  @override
  String get emptyListAddItems =>
      'Twoja lista jest pusta! Najpierw dodaj przedmioty. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista magicznie uporządkowana według kategorii! ✨';

  @override
  String get shoppingMode => 'Tryb zakupów';

  @override
  String get smartOrganization => 'Inteligentna organizacja';

  @override
  String get savings => 'Oszczędności';

  @override
  String get shoppingModeHeader => 'TRYB ZAKUPÓW';

  @override
  String get shareAsText => 'Wyślij przedmioty jako sformatowany tekst';

  @override
  String get shareRealtime => 'Synchronizacja w czasie rzeczywistym z innymi';

  @override
  String get quickRecipe => 'Szybki przepis';

  @override
  String get quickRecipePrompt =>
      'Zaproponuj przepisy z przedmiotów z mojej listy.';

  @override
  String get economyTips => 'Porady oszczędnościowe';

  @override
  String get economyTipsPrompt => 'Jak mogę zaoszczędzić na tych zakupach?';

  @override
  String get organizeAisles => 'Organizuj według alejek';

  @override
  String get organizeAislesPrompt => 'Uporządkuj według alejek sklepowych.';

  @override
  String get recipeSuggestion => 'Sugestia przepisu';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Pozostało $remaining kredytów';
  }

  @override
  String get addAllToList => 'Dodaj wszystkie do listy';

  @override
  String get organizeByAisles => 'Organizuj według alejek';

  @override
  String get voiceTranscriptionTooltip => 'Pisanie głosowe (Darmowe)';

  @override
  String get aiVoiceCommandTooltip => 'Polecenie głosowe AI (Premium)';

  @override
  String get voiceCommandTitle => 'Polecenie głosowe AI';

  @override
  String get voiceCommandContent =>
      'Mów naturalnie, aby zarządzać swoją listą!\n\nPrzykłady:\n• \'Dodaj chleb, ser i szynkę\'\n• \'Usuń proszek do prania\'\n• \'Zmień motyw na niebieski\'\n\nTo ekskluzywna funkcja Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Zobacz plany';

  @override
  String get itemsAddedSuccess => 'Przedmioty pomyślnie dodane do listy!';

  @override
  String get viewList => 'Zobacz listę';

  @override
  String get feedbackTitle => 'Wyślij opinię';

  @override
  String get feedbackPrompt => 'Czym chcesz się podzielić?';

  @override
  String get feedbackTypeBug => 'Zgłoś błąd';

  @override
  String get feedbackTypeBugHint => 'Coś nie działa';

  @override
  String get feedbackTypeSuggestion => 'Sugestia';

  @override
  String get feedbackTypeSuggestionHint => 'Pomysł na ulepszenie aplikacji';

  @override
  String get feedbackTypeTranslation => 'Problem z tłumaczeniem';

  @override
  String get feedbackTypeTranslationHint =>
      'Nieprawidłowe lub niezgrabne tłumaczenie';

  @override
  String get feedbackTypeFeature => 'Prośba o funkcję';

  @override
  String get feedbackTypeFeatureHint => 'Funkcja, którą chciałbyś zobaczyć';

  @override
  String get feedbackTypeOther => 'Inne';

  @override
  String get feedbackTypeOtherHint => 'Inny rodzaj opinii';

  @override
  String get feedbackHint => 'Opisz swoją opinię szczegółowo...';

  @override
  String get feedbackSend => 'Wyślij opinię';

  @override
  String get feedbackSending => 'Wysyłanie...';

  @override
  String get feedbackThankYou => 'Dziękujemy!';

  @override
  String get feedbackThankYouMessage =>
      'Twoja opinia została otrzymana i pomaga nam ulepszać Lista Plus dla wszystkich.';

  @override
  String get feedbackBack => 'Wstecz';

  @override
  String feedbackError(String error) {
    return 'Błąd wysyłania: $error';
  }

  @override
  String get feedbackRetry => 'Spróbuj ponownie';

  @override
  String get feedbackSettingsTitle => 'Wyślij opinię';

  @override
  String get feedbackSettingsSubtitle =>
      'Zgłaszaj błędy, sugeruj ulepszenia lub poprawiaj tłumaczenia';

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
