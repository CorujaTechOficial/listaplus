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
  String get navChat => 'Pogawędzić';

  @override
  String get navRecipes => 'Przepisy';

  @override
  String get navLists => 'Listy';

  @override
  String get navMealPlanner => 'Menu';

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
  String get next => 'Następny';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Wyjdź z trybu zakupów';

  @override
  String get exit => 'Wyjście';

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
  String get languagePortuguese => 'Português (Brazylia)';

  @override
  String get languageEnglish => 'angielski';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get chooseLanguage => 'Wybierz Język';

  @override
  String get searchLanguage => 'Wyszukaj język...';

  @override
  String get currency => 'Waluta';

  @override
  String get chooseCurrency => 'Wybierz Waluta';

  @override
  String get searchCurrency => 'Wyszukaj walutę...';

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
  String get dynamicColors => 'Dynamiczne kolory';

  @override
  String get dynamicColorsSubtitle => 'Użyj kolorów na podstawie tapety';

  @override
  String get dynamicColorsEnabledWarning =>
      'Wyłącz kolory dynamiczne, aby kolor motywu zaczął obowiązywać';

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
  String get newChat => 'Nowy czat';

  @override
  String get noHistory => 'Brak historii czatów';

  @override
  String get deleteSession => 'Usuń czat';

  @override
  String get deleteSessionConfirm =>
      'Czy na pewno chcesz usunąć ten czat? Wiadomości zostaną trwale utracone.';

  @override
  String get clearHistory => 'Wyczyść historię';

  @override
  String get clearHistoryConfirm => 'Usunąć wszystkie wiadomości w tej sesji?';

  @override
  String get chatHint => 'Wpisz swoją wiadomość...';

  @override
  String get chatHintBlocked => 'Odblokuj sztuczną inteligencję, aby rozmawiać';

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
  String get aiLimitAlmostReached => 'Prawie skończyły się wiadomości AI';

  @override
  String get unlockAi => 'Odblokuj nieograniczoną sztuczną inteligencję';

  @override
  String get aiTeaserFallback =>
      'Subskrybuj Premium, aby odblokować pełną odpowiedź i uzyskać nieograniczone wskazówki AI dotyczące zakupów...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Zaloguj się, aby odblokować\nfunkcje premium';

  @override
  String get signInGoogle => 'Zaloguj się przez Google';

  @override
  String get signInApple => 'Zaloguj się przez Apple';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String get onboardingWelcomeTitle => 'Witamy w KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Najmądrzejszy sposób na zorganizowanie zakupów i zaoszczędzenie pieniędzy.';

  @override
  String get onboardingSetupTitle => 'Spersonalizuj swoje doświadczenia';

  @override
  String get onboardingSetupDesc =>
      'Wybierz, jak KipiList ma wyglądać i działać dla Ciebie.';

  @override
  String get onboardingLoginTitle => 'Zapisz wszystko w chmurze';

  @override
  String get onboardingLoginDesc =>
      'Twoje dane zsynchronizowane na wszystkich urządzeniach';

  @override
  String get onboardingShareTitle => 'Podziel się z tymi, których kochasz';

  @override
  String get onboardingShareDesc =>
      'Synchronizuj listy z rodziną i przyjaciółmi w czasie rzeczywistym';

  @override
  String get onboardingPremiumTitle => 'Odblokuj wszystkie funkcje';

  @override
  String get onboardingPremiumSubtitle =>
      'Wykorzystaj w pełni swoje listy zakupów';

  @override
  String get onboardingAnnualBadge => 'Najlepsza wartość';

  @override
  String get onboardingMonthlyLabel => 'Miesięczny';

  @override
  String get onboardingAnnualLabel => 'Coroczny';

  @override
  String get onboardingViewAllPlans => 'Zobacz wszystkie plany';

  @override
  String get onboardingSubscribeCta => 'Subskrybować';

  @override
  String get onboardingCancelAnytime =>
      'Anuluj w dowolnym momencie. Żadnego zaangażowania.';

  @override
  String get onboardingContinueAsGuest => 'Kontynuuj jako gość';

  @override
  String get onboardingRestore => 'Przywrócić';

  @override
  String get onboardingRestoreDesc =>
      'Masz już subskrypcję? Kliknij tutaj, aby je przywrócić.';

  @override
  String get onboardingMaybeLater => 'Maybe later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organize your shopping the right way.';
  }

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
  String get onboardingExit => 'Wyjście';

  @override
  String get onboardingPersonalizationTitle => 'Poznajmy Cię';

  @override
  String get onboardingPersonalizationDesc =>
      'Wykorzystamy to, aby spersonalizować Twoje sugestie i sprawić, że zakupy będą mądrzejsze.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Jakie jest Twoje ulubione jedzenie?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'np. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Kontynuować';

  @override
  String get onboardingPersonalizationSkip => 'Pomiń na razie';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Opowiedz nam o swoim ulubionym jedzeniu, aby kontynuować';

  @override
  String get settingsDefaultScreen => 'Domyślny ekran główny';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Wybierz pomiędzy listą zakupów lub czatem AI';

  @override
  String get settingsScreenList => 'Lista zakupów';

  @override
  String get settingsScreenChat => 'Czat AI';

  @override
  String loginError(String error) {
    return 'Błąd logowania: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Błąd podczas ładowania ofert. Spróbuj ponownie.';

  @override
  String get paywallPurchaseError =>
      'Nie udało się dokończyć zakupu. Spróbuj ponownie.';

  @override
  String get paywallRestoreError =>
      'Nie znaleziono aktywnej subskrypcji do przywrócenia.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DNI WOLNE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TYGODNIE WOLNY',
      one: '$count TYDZIEŃ WOLNY',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MIESIĘCY BEZPŁATNY',
      one: '$count MIESIĄC BEZPŁATNY',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Wypróbuj KipiList Pro za darmo przez 7 dni';

  @override
  String get paywallTrialSubtitle =>
      'Anuluj w dowolnym momencie. Dzisiaj bez opłat.';

  @override
  String get paywallTrialCta => 'Rozpocznij bezpłatny okres próbny';

  @override
  String get recipeAddToList => 'Dodaj do listy zakupów';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count składniki dodane do $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Wszystko, czego potrzebujesz:';

  @override
  String get paywallFeatureUnlimitedLists => 'Nieograniczone listy';

  @override
  String get paywallFeatureSmartAI => 'Inteligentna sztuczna inteligencja';

  @override
  String get paywallFeatureExpenseControl => 'Kontrola wydatków';

  @override
  String get paywallFeatureSharing => 'Partycypujący';

  @override
  String get paywallBeforeAfterTitle => 'AI przed i po:';

  @override
  String get paywallLabelCommon => 'Wspólny';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ryż';

  @override
  String get paywallBeforeItem2 => 'mydło';

  @override
  String get paywallBeforeItem3 => 'mięso';

  @override
  String get paywallBeforeItem4 => 'chleb';

  @override
  String get paywallAfterItem1 => 'Słodziny';

  @override
  String get paywallAfterItem2 => 'Czyszczenie';

  @override
  String get paywallAfterItem3 => 'Mięso';

  @override
  String get paywallAfterItem4 => 'Piekarnia';

  @override
  String get paywallTestimonialsTitle => 'Co mówią nasi użytkownicy:';

  @override
  String get paywallTestimonial1Name => 'Anna S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizuje moje zakupy w kilka sekund. Oszczędzam 20 minut na wycieczce po targu.';

  @override
  String get paywallTestimonial2Name => 'Karol M.';

  @override
  String get paywallTestimonial2Text =>
      'Już nigdy nie zapomniałem żadnej pozycji z listy. Czat AI jest rewelacyjny!';

  @override
  String get paywallSocialProof => 'Korzysta z niego ponad 2400 rodzin';

  @override
  String get paywallCtaUnlock => 'Odblokuj PRO';

  @override
  String get paywallBestValue => 'NAJLEPSZA WARTOŚĆ';

  @override
  String get paywallMostPopular => 'NAJPOPULARNIEJSZE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Bezpieczna płatność';

  @override
  String get paywallSelectPlan => 'Wybierz swój plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ZAOSZCZĘDŹ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Tylko $price/miesiąc';
  }

  @override
  String get paywallPackageAnnual => 'Plan roczny';

  @override
  String get paywallPackageMonthly => 'Plan miesięczny';

  @override
  String get paywallPackageLifetime => 'Dostęp na całe życie';

  @override
  String get paywallCancelAnytime =>
      'Anuluj w dowolnym momencie. Żadnego zaangażowania.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Polityka prywatności';

  @override
  String get paywallTerms => 'Warunki użytkowania';

  @override
  String get paywallRestore => 'Przywrócić';

  @override
  String get paywallHeroHeadline => 'Kipi AI zawsze po Twojej stronie';

  @override
  String get paywallHeroSubtitle =>
      'Dodawaj elementy, organizuj listy i oszczędzaj czas dzięki sztucznej inteligencji w kieszeni';

  @override
  String get paywallBenefit1Desc =>
      'Dodaje, porządkuje i sugeruje elementy 24 godziny na dobę, 7 dni w tygodniu';

  @override
  String get paywallBenefit2Desc => 'Brak limitu 3 list';

  @override
  String get paywallBenefit3Desc => 'Śledzenie wydatków i listy rodzinne';

  @override
  String get paywallPackageMonthlyDesc => 'Pełna elastyczność';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Zacznij bezpłatnie — $days dni';
  }

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
      'Mów naturalnie, aby zarządzać swoją listą!\n\nPrzykłady:\n• \'Dodaj chleb, ser i szynkę\'\n• \'Usuń proszek do prania\'\n• \'Zmień motyw na niebieski\'\n\nTo ekskluzywna funkcja KipiList Premium.';

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
      'Twoja opinia została odebrana i pomaga nam ulepszać KipiList dla wszystkich.';

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
  String get aiEnergy => 'Energia AI';

  @override
  String get searchInConversation => 'Wyszukaj w rozmowie...';

  @override
  String get noMessagesFound => 'Nie znaleziono żadnych wiadomości';

  @override
  String get suggestedQuestions => 'Sugerowane pytania:';

  @override
  String get shoppingAssistant => 'Asystent zakupów';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Zakupiono $purchased z $total';
  }

  @override
  String get estimatedCost => 'Szacowany';

  @override
  String get viewItems => 'Zobacz przedmioty';

  @override
  String get noItemsInList => 'Brak pozycji na liście';

  @override
  String get longHistoryWarning =>
      'Długa historia: asystent skupia się na najnowszych wiadomościach, aby uzyskać lepszą wydajność.';

  @override
  String get listening => 'Słuchający...';

  @override
  String get addDirectToList => 'Dodaj bezpośrednio do listy';

  @override
  String get unlockFullResponse => 'Odblokuj pełną odpowiedź';

  @override
  String get switchList => 'Zmień listę';

  @override
  String get marketMode => 'Tryb rynkowy';

  @override
  String get backToChat => 'Powrót do czatu';

  @override
  String get finishShopping => 'Zakończ zakupy';

  @override
  String get welcomeAiAssistant => 'Witamy w Asystencie AI';

  @override
  String get createListToStartAi =>
      'Utwórz listę zakupów, aby rozpocząć korzystanie z inteligentnego czatu.';

  @override
  String get howCanIHelp => 'Jak mogę pomóc?';

  @override
  String get chatSubtitleShort => 'Zapytaj o ceny, przepisy, organizację...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kupiono';
  }

  @override
  String get quickReplies => 'Szybkie odpowiedzi:';

  @override
  String get voiceProFeature =>
      'Zaawansowane polecenia głosowe to wersja Pro. Włączanie podstawowego dyktowania...';

  @override
  String get viewPro => 'Zobacz Pro';

  @override
  String get errorLoadingChat =>
      'Ups! Coś poszło nie tak podczas ładowania czatu.';

  @override
  String get errorLoadingChatSubtitle =>
      'Sprawdź połączenie lub spróbuj ponownie później.';

  @override
  String get errorOscillation =>
      'Może się to zdarzyć z powodu oscylacji sieci lub tymczasowej niedostępności. Spróbuj ponownie.';

  @override
  String get activeListening => 'Aktywne słuchanie';

  @override
  String get whatToDoWithItem => 'Co chciałbyś zrobić z tym przedmiotem?';

  @override
  String get viewDetails => 'Zobacz szczegóły';

  @override
  String get openMenu => 'Otwórz menu';

  @override
  String get viewRecipe => 'Zobacz przepis';

  @override
  String get recipeCreated => 'Przepis stworzony!';

  @override
  String get editRecipe => 'Redagować';

  @override
  String get deleteRecipe => 'Usuwać';

  @override
  String get deleteRecipeConfirm => 'Usunąć ten przepis?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Czy na pewno chcesz usunąć „$recipeName”? Tej akcji nie można cofnąć.';
  }

  @override
  String get ingredients => 'Składniki';

  @override
  String get instructions => 'Instrukcje';

  @override
  String get prepTime => 'Czas przygotowania';

  @override
  String get recipeSaved => 'Przepis zapisany!';

  @override
  String get noRecipesSaved => 'Nie zapisano żadnych przepisów';

  @override
  String get noRecipesSavedHint =>
      'Utwórz swój pierwszy niestandardowy przepis, dotykając przycisku poniżej.';

  @override
  String get myRecipes => 'Moje przepisy';

  @override
  String get newRecipe => 'Nowy przepis';

  @override
  String get loadingRecipes => 'Ładuję Twoje przepisy...';

  @override
  String get errorLoadingRecipes => 'Błąd podczas ładowania przepisów';

  @override
  String get addIngredient => 'Dodaj składnik';

  @override
  String get saveRecipe => 'Ratować';

  @override
  String get recipeName => 'Nazwa przepisu';

  @override
  String get shortDescription => 'Krótki opis';

  @override
  String get prepTimeMinutes => 'Czas przygotowania (minuty)';

  @override
  String get instructionsHint => 'Wpisz jeden krok w wierszu...';

  @override
  String get addPhoto => 'Dodaj zdjęcie';

  @override
  String get imageUrlPlaceholder => 'Możesz też wkleić adres URL obrazu';

  @override
  String get tags => 'Tagi';

  @override
  String get recipeTags => 'Tagi z przepisami';

  @override
  String get suggestedTags => 'Sugerowane';

  @override
  String get searchRecipes => 'Szukaj przepisów...';

  @override
  String get filterByTag => 'Filtruj według tagu';

  @override
  String get allTags => 'Wszystko';

  @override
  String get recipeDeleted => 'Przepis usunięty';

  @override
  String get saveChanges => 'Zapisz zmiany';

  @override
  String get editRecipeTitle => 'Edytuj przepis';

  @override
  String get newRecipeTitle => 'Nowy przepis';

  @override
  String get requiredField => 'Wymagany';

  @override
  String get chooseImageSource => 'Wybierz źródło obrazu';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Wpisz adres URL';

  @override
  String get recipeImage => 'Obraz przepisu';

  @override
  String get removeImage => 'Usuń obraz';

  @override
  String get mealPlannerTitle => 'Planista posiłków';

  @override
  String get mealPlannerViewMonthly => 'Widok miesięczny';

  @override
  String get mealPlannerViewWeekly => 'Widok tygodniowy';

  @override
  String get mealPlannerNoMeals => 'Brak zaplanowanych posiłków';

  @override
  String get mealPlannerNoMealsHint => 'Kliknij dzień, aby dodać posiłek';

  @override
  String get mealPlannerLoading => 'Ładowanie planu posiłków...';

  @override
  String get mealPlannerError => 'Błąd podczas ładowania planu posiłków';

  @override
  String get mealPlannerAddMeal => 'Dodaj posiłek';

  @override
  String get mealPlannerEditMeal => 'Edytuj posiłek';

  @override
  String get mealPlannerDeleteMeal => 'Usuń posiłek';

  @override
  String get mealPlannerMealDeleted => 'Posiłek usunięty';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcje',
      one: '$count porcja',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcje';

  @override
  String get mealPlannerNoteLabel => 'Uwaga (opcjonalnie)';

  @override
  String get mealPlannerSelectRecipe => 'Wybierz przepis';

  @override
  String get mealPlannerSearchRecipes => 'Szukaj przepisów...';

  @override
  String get mealPlannerNoRecipesFound => 'Nie znaleziono przepisów';

  @override
  String get mealPlannerNoRecipesHint =>
      'Najpierw utwórz przepisy w zakładce Przepisy';

  @override
  String get mealPlannerSave => 'Dodaj do planu';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Zaplanowano $count z $total posiłków';
  }

  @override
  String get mealPlannerGenerateList => 'Wygeneruj listę zakupów';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Dodać do swojej listy zakupów wszystkie składniki z zaplanowanych w tym tygodniu posiłków?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count składnik(i) dodany do Twojej listy!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Brak składników do dodania. Najpierw zaplanuj kilka posiłków, korzystając z przepisów.';

  @override
  String get mealPlannerGenerateListNoList => 'Najpierw utwórz listę zakupów.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Śniadanie';

  @override
  String get mealPlannerMealTypeLunch => 'Obiad';

  @override
  String get mealPlannerMealTypeDinner => 'Kolacja';

  @override
  String get mealPlannerMealTypeSnack => 'Przekąska';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Na ten tydzień nie zaplanowano nic';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Kliknij dowolny dzień, aby rozpocząć planowanie posiłków!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Zaproś do listy';

  @override
  String get shareApp => 'Udostępnij aplikację';

  @override
  String get shareAppDescription =>
      'Zaproś znajomych do korzystania z KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Do organizowania zakupów korzystam z KipiList! Pobierz za pomocą mojego linku, a oboje otrzymamy 7 dni Premium za darmo: $url';
  }

  @override
  String get shareReferralSubject => 'Zdobądź 7 dni KipiList Premium!';

  @override
  String get gestureHint => 'Przytrzymaj, aby wybrać. • Przesuń, aby usunąć';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Moje częste';

  @override
  String get catalogSearchGlobal => 'Wyszukaj dowolny produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Szukaj w $category...';
  }

  @override
  String get catalogSortPopular => 'Najbardziej popularne';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Rodacy';

  @override
  String get catalogRareSection => 'mniej powszechne w Twoim kraju';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Dodaj $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Nie znaleziono produktu. Wpisz nazwę';

  @override
  String get catalogBrowse => 'Przeglądaj katalog';

  @override
  String get offlineBanner => 'Jesteś offline';

  @override
  String get consentTitle => 'Prywatność i analityka';

  @override
  String get consentBody =>
      'KipiList korzysta z Firebase Analytics, aby poprawić Twoje doświadczenia. Twoje dane są przetwarzane zgodnie z naszą Polityką Prywatności.';

  @override
  String get consentAccept => 'Przyjąć';

  @override
  String get consentDecline => 'Nie, dzięki';

  @override
  String get mealPlannerPantryAllAvailable => 'W magazynie';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brakujące elementy',
      one: '$count brakujący element',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Data ważności';

  @override
  String get notInformed => 'Nie poinformowany';

  @override
  String get skip => 'Skip';

  @override
  String get onboardingAiTitle => 'Chat with Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m Kipi, your personal shopping assistant! 🛒';

  @override
  String get onboardingAiAskName => 'What\'s your name?';

  @override
  String get onboardingAiNameHint => 'Type your name...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Nice to meet you, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'What\'s your favorite food?';

  @override
  String get onboardingAiFoodHint => 'e.g. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Great choices! Here\'s what I\'d add to your list:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Does this look good? Try typing something else!';

  @override
  String get onboardingAiReady =>
      'Great! You\'re ready to start. Let\'s set up your account!';

  @override
  String get onboardingAiContinue => 'Continue →';

  @override
  String get errorRenderScreen =>
      'Oops! Something went wrong rendering this screen.';

  @override
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(Object error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

  @override
  String get unlockPremiumTitle => 'Unlock unlimited lists, AI and more';

  @override
  String get loadingSubscription => 'Loading subscription...';

  @override
  String get errorLoadingSubscription => 'Error loading subscription';

  @override
  String get profileSection => 'Profile';

  @override
  String get myProfile => 'My Profile';

  @override
  String get profileSubtitle => 'Personal preferences for the AI assistant';

  @override
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get userProfile => 'User Profile';

  @override
  String get saveProfile => 'Save Profile';

  @override
  String get profileDescription =>
      'Tell us your personal preferences so the AI assistant can suggest personalized items and recipes.';

  @override
  String get preferredMarket => 'Preferred Market';

  @override
  String get preferredMarketHint => 'E.g.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietary Restrictions';

  @override
  String get dietaryRestrictionsHint => 'E.g.: vegan, vegetarian, gluten-free';

  @override
  String get marketsToAvoid => 'Markets to Avoid';

  @override
  String get marketsToAvoidHint => 'E.g.: Market Y, Market Z';

  @override
  String get observations => 'Notes';

  @override
  String get observationsHint => 'Other preferences for the assistant';

  @override
  String get manageCategoriesTitle => 'Zarządzaj kategoriami';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get noCategories => 'No categories.';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(Object days) {
    return '$days days';
  }

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get aiPremiumDescription =>
      'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icon:';

  @override
  String get scanBarcode => 'Scan Barcode';

  @override
  String get scanProduct => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String replaceItem(Object name) {
    return 'Replace $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get swap => 'Swap';

  @override
  String itemAdded(Object name) {
    return '$name added';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error loading products: $error';
  }

  @override
  String get mealType => 'Meal type';

  @override
  String get requestTimeout => 'Sorry, the request timed out.';

  @override
  String get connectionError2 => 'Sorry, a connection error occurred.';

  @override
  String get addingItems => 'Adding items to list...';

  @override
  String get removingItems => 'Removing items...';

  @override
  String get updatingItem => 'Updating item...';

  @override
  String get checkingItem => 'Checking item...';

  @override
  String get uncheckingItem => 'Unchecking item...';

  @override
  String get clearingCheckedItems => 'Clearing checked items...';

  @override
  String get reorganizingList => 'Reorganizing list...';

  @override
  String get creatingNewList => 'Creating new list...';

  @override
  String get removingList => 'Removing list...';

  @override
  String get renamingList => 'Renaming list...';

  @override
  String get queryingYourLists => 'Querying your lists...';

  @override
  String get settingBudget => 'Setting budget...';

  @override
  String get checkingPantry => 'Checking your pantry...';

  @override
  String get addingToPantry => 'Adding to pantry...';

  @override
  String get removingFromPantry => 'Removing from pantry...';

  @override
  String get updatingPantry => 'Updating pantry...';

  @override
  String get savingRecipe => 'Saving recipe...';

  @override
  String get searchingRecipes => 'Searching recipes...';

  @override
  String get removingRecipe => 'Removing recipe...';

  @override
  String get addingIngredientsToList => 'Adding ingredients to list...';

  @override
  String get organizingMenu => 'Organizing your menu...';

  @override
  String get loadingMenu => 'Loading your menu...';

  @override
  String get updatingMenu => 'Updating menu...';

  @override
  String get searchingCategories => 'Searching categories...';

  @override
  String get categorizingItems => 'Categorizing items...';

  @override
  String get generatingShareLink => 'Generating share link...';

  @override
  String get searchingSharedList => 'Searching shared list...';

  @override
  String get loadingProfile => 'Loading your profile...';

  @override
  String get savingPreferences => 'Saving your preferences...';

  @override
  String get checkingSettings => 'Checking your settings...';

  @override
  String get generatingContent => 'Generating personalized content...';

  @override
  String get searchingProducts => 'Searching products...';

  @override
  String get estimatingPrices => 'Estimating prices...';

  @override
  String get processing => 'Processing...';

  @override
  String get shoppingList => 'Shopping List';

  @override
  String get purchasedSuffix => ' [Purchased]';

  @override
  String get listUnarchived => 'List unarchived successfully.';

  @override
  String get toolDeleteList => 'Delete list';

  @override
  String get toolAddItems => 'Add items';

  @override
  String get toolRemoveItems => 'Remove items';

  @override
  String get toolAddToPantry => 'Add to pantry';

  @override
  String get toolRemoveFromPantry => 'Remove from pantry';

  @override
  String get toolShareList => 'Share list';

  @override
  String get toolSaveRecipe => 'Save recipe';

  @override
  String get toolDeleteRecipe => 'Delete recipe';

  @override
  String get toolRemoveMeal => 'Remove meal';

  @override
  String get toolSavePreference => 'Save preference';

  @override
  String get toolRemovePreference => 'Remove preference';

  @override
  String currentTheme(Object mode) {
    return 'Current theme: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Theme changed to $mode.';
  }

  @override
  String get addToList => 'Add to List';

  @override
  String errorAddingItem(Object error) {
    return 'Error adding item: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error adding items in batch: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error toggling item status: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Error removing item: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error updating item: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error updating items: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Error restoring item: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error increasing quantity: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error decreasing quantity: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error clearing list: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Error clearing purchased items: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Error removing items: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Error toggling items: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Error reordering item: $error';
  }

  @override
  String get errorCreatingList => 'Error creating list';

  @override
  String errorServerConnection(Object error) {
    return 'Error connecting to server: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error updating list: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error deleting list: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Error removing shared list: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error setting current list: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error archiving list: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error unarchiving list: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'User not authenticated.';

  @override
  String get errorGeneratingCode => 'Error generating unique code. Try again.';

  @override
  String pantryLimitReached(Object count) {
    return 'Limit of $count items in pantry on the free plan. Upgrade to add more.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error importing list \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error executing $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorry, an error occurred while processing your request. Check your connection or try again later.';

  @override
  String get couldNotProcess => 'Could not process after multiple attempts.';

  @override
  String get errorResumingProcessing => 'Error resuming processing.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error resuming loop';

  @override
  String get othersCategory => 'Others';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro active';

  @override
  String get customizeAiAssistant => 'Customize AI Assistant';

  @override
  String get assistantHistory => 'Assistant History';

  @override
  String get assistantHistorySubtitle => 'View and search past conversations';

  @override
  String get customizeAssistant => 'Customize Assistant';

  @override
  String get assistantName => 'Assistant Name';

  @override
  String get chooseIcon => 'Choose an Icon:';

  @override
  String get backToToday => 'Wróćmy do dzisiaj';

  @override
  String get conversationHistoryTitle => 'Conversation History';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get newConversationDefaultTitle => 'New Conversation';

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
  String get aiEnergyLow => 'You\'re almost out of energy!';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    return 'Only $remaining free messages left today. Subscribe to Premium and stop worrying about limits.';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Subscribe to Premium and use the AI chat as much as you want. No counting, no limits.';

  @override
  String get suggestedItems => 'Suggested Items';

  @override
  String get swapped => 'Swapped';

  @override
  String get newCategoryDialog => 'New Category';

  @override
  String get editCategoryDialog => 'Edit Category';

  @override
  String get categoryName => 'Name';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get categoryColorLabel => 'Color:';

  @override
  String get categoryIconLabel => 'Icon:';

  @override
  String get product => 'Product';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed your list.';

  @override
  String get allSet => 'All set!';

  @override
  String itemsCount(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String budgetLabel(String amount) {
    return 'Budget: $amount';
  }

  @override
  String totalLabel(String amount) {
    return 'Total: $amount';
  }

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get saved => 'Saved';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get editAssistantName => 'Edit Assistant Name';

  @override
  String get selectAssistantIcon => 'Select Assistant Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String quantityWithUnit(String quantity, String unit) {
    return '$quantity $unit';
  }

  @override
  String quantityUnitWithPrice(String quantity, String unit, String price) {
    return '$quantity $unit • $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Your shopping list with artificial intelligence';

  @override
  String get onboardingLoginHeadline => 'Sign in in 1 second';

  @override
  String get onboardingLoginSubtitle =>
      'Your lists are saved and synced automatically';

  @override
  String get onboardingPersonalizationNameLabel => 'What can I call you?';

  @override
  String get onboardingPersonalizationNameHint => 'Your name (optional)';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'What do you organize most often?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Do you shop alone or with others?';

  @override
  String get onboardingCategoryGrocery => '🛒 Grocery';

  @override
  String get onboardingCategoryPharmacy => '💊 Pharmacy';

  @override
  String get onboardingCategoryRecipes => '🍽️ Recipes';

  @override
  String get onboardingCategoryHome => '🏠 Home';

  @override
  String get onboardingCategoryPet => '🐾 Pet';

  @override
  String get onboardingGroupSolo => '👤 Just me';

  @override
  String get onboardingGroupCouple => '👥 With someone';

  @override
  String get onboardingGroupFamily => '👨‍👩‍👧 Family';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hi $name! I see you organize $category 😊';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hi! I see you organize $category 😊';
  }

  @override
  String get onboardingAiDemoOffer => 'Want me to build a list right now?';

  @override
  String get onboardingAiDemoYes => '✅ Yes, build it for me!';

  @override
  String get onboardingAiDemoChange => '🔄 Different category';

  @override
  String onboardingAiDemoReaction(int count) {
    return 'Done! I created $count items for you 🎉';
  }

  @override
  String get onboardingAiDemoContinue => 'Amazing! I want more →';

  @override
  String get onboardingCommitmentsTitle => 'What do you want to achieve?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choose everything that applies to you';

  @override
  String get onboardingGoalSaveMoney => '💰 Spend less at the store';

  @override
  String get onboardingGoalNeverForget => '✅ Never forget an item';

  @override
  String get onboardingGoalFaster => '⚡ Shop faster';

  @override
  String get onboardingGoalFamily => '👨‍👩‍👧 Organize with family';

  @override
  String get onboardingGoalRecipes => '🍽️ Plan weekly recipes';

  @override
  String get onboardingGoalPantry => '📦 Track pantry stock';

  @override
  String get onboardingLoadingTitle => 'Building your plan...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up your personalized list...';

  @override
  String get onboardingLoadingStep3 => 'Your plan is ready! 🎉';

  @override
  String get onboardingLoadingStat1Label => 'Average rating';

  @override
  String get onboardingLoadingStat2Label => 'Lists created this week';

  @override
  String get onboardingLoadingStat3Label => 'Recommend the app';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, you\'re 7 days away from spending less on shopping';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, you\'re 7 days away from never forgetting an item again';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, you\'re 7 days away from shopping in half the time';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, you\'re 7 days away from organizing the whole family\'s shopping';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, you\'re 7 days away from planning your recipes automatically';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, you\'re 7 days away from full control of your pantry';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'You\'re 7 days away from spending less on shopping';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'You\'re 7 days away from never forgetting an item again';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'You\'re 7 days away from shopping in half the time';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'You\'re 7 days away from organizing the whole family\'s shopping';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'You\'re 7 days away from planning your recipes automatically';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'You\'re 7 days away from full control of your pantry';

  @override
  String get paywallTestimonial =>
      '\"I saved R\$180 in the first month by better organizing my shopping\"';

  @override
  String get paywallTestimonialAuthor => 'Ana R., São Paulo';

  @override
  String paywallTrialDisclaimer(int days) {
    return 'Cancel anytime · Charged after $days days';
  }

  @override
  String get paywallSkipNow => 'Not now';
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
  String get navChat => 'Pogawędzić';

  @override
  String get navRecipes => 'Przepisy';

  @override
  String get navLists => 'Listy';

  @override
  String get navMealPlanner => 'Menu';

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
  String get next => 'Następny';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Wyjdź z trybu zakupów';

  @override
  String get exit => 'Wyjście';

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
  String get languagePortuguese => 'Português (Brazylia)';

  @override
  String get languageEnglish => 'angielski';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get chooseLanguage => 'Wybierz Język';

  @override
  String get searchLanguage => 'Wyszukaj język...';

  @override
  String get currency => 'Waluta';

  @override
  String get chooseCurrency => 'Wybierz Waluta';

  @override
  String get searchCurrency => 'Wyszukaj walutę...';

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
  String get dynamicColors => 'Dynamiczne kolory';

  @override
  String get dynamicColorsSubtitle => 'Użyj kolorów na podstawie tapety';

  @override
  String get dynamicColorsEnabledWarning =>
      'Wyłącz kolory dynamiczne, aby kolor motywu zaczął obowiązywać';

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
  String get newChat => 'Nowy czat';

  @override
  String get noHistory => 'Brak historii czatów';

  @override
  String get deleteSession => 'Usuń czat';

  @override
  String get deleteSessionConfirm =>
      'Czy na pewno chcesz usunąć ten czat? Wiadomości zostaną trwale utracone.';

  @override
  String get clearHistory => 'Wyczyść historię';

  @override
  String get clearHistoryConfirm => 'Usunąć wszystkie wiadomości w tej sesji?';

  @override
  String get chatHint => 'Wpisz swoją wiadomość...';

  @override
  String get chatHintBlocked => 'Odblokuj sztuczną inteligencję, aby rozmawiać';

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
  String get aiLimitAlmostReached => 'Prawie skończyły się wiadomości AI';

  @override
  String get unlockAi => 'Odblokuj nieograniczoną sztuczną inteligencję';

  @override
  String get aiTeaserFallback =>
      'Subskrybuj Premium, aby odblokować pełną odpowiedź i uzyskać nieograniczone wskazówki AI dotyczące zakupów...';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Zaloguj się, aby odblokować\nfunkcje premium';

  @override
  String get signInGoogle => 'Zaloguj się przez Google';

  @override
  String get signInApple => 'Zaloguj się przez Apple';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String get onboardingWelcomeTitle => 'Witamy w KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Najmądrzejszy sposób na zorganizowanie zakupów i zaoszczędzenie pieniędzy.';

  @override
  String get onboardingSetupTitle => 'Spersonalizuj swoje doświadczenia';

  @override
  String get onboardingSetupDesc =>
      'Wybierz, jak KipiList ma wyglądać i działać dla Ciebie.';

  @override
  String get onboardingLoginTitle => 'Zapisz wszystko w chmurze';

  @override
  String get onboardingLoginDesc =>
      'Twoje dane zsynchronizowane na wszystkich urządzeniach';

  @override
  String get onboardingShareTitle => 'Podziel się z tymi, których kochasz';

  @override
  String get onboardingShareDesc =>
      'Synchronizuj listy z rodziną i przyjaciółmi w czasie rzeczywistym';

  @override
  String get onboardingPremiumTitle => 'Odblokuj wszystkie funkcje';

  @override
  String get onboardingPremiumSubtitle =>
      'Wykorzystaj w pełni swoje listy zakupów';

  @override
  String get onboardingAnnualBadge => 'Najlepsza wartość';

  @override
  String get onboardingMonthlyLabel => 'Miesięczny';

  @override
  String get onboardingAnnualLabel => 'Coroczny';

  @override
  String get onboardingViewAllPlans => 'Zobacz wszystkie plany';

  @override
  String get onboardingSubscribeCta => 'Subskrybować';

  @override
  String get onboardingCancelAnytime =>
      'Anuluj w dowolnym momencie. Żadnego zaangażowania.';

  @override
  String get onboardingContinueAsGuest => 'Kontynuuj jako gość';

  @override
  String get onboardingRestore => 'Przywrócić';

  @override
  String get onboardingRestoreDesc =>
      'Masz już subskrypcję? Kliknij tutaj, aby je przywrócić.';

  @override
  String get onboardingExit => 'Wyjście';

  @override
  String get onboardingPersonalizationTitle => 'Poznajmy Cię';

  @override
  String get onboardingPersonalizationDesc =>
      'Wykorzystamy to, aby spersonalizować Twoje sugestie i sprawić, że zakupy będą mądrzejsze.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Jakie jest Twoje ulubione jedzenie?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'np. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Kontynuować';

  @override
  String get onboardingPersonalizationSkip => 'Pomiń na razie';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Opowiedz nam o swoim ulubionym jedzeniu, aby kontynuować';

  @override
  String get settingsDefaultScreen => 'Domyślny ekran główny';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Wybierz pomiędzy listą zakupów lub czatem AI';

  @override
  String get settingsScreenList => 'Lista zakupów';

  @override
  String get settingsScreenChat => 'Czat AI';

  @override
  String loginError(String error) {
    return 'Błąd logowania: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Błąd podczas ładowania ofert. Spróbuj ponownie.';

  @override
  String get paywallPurchaseError =>
      'Nie udało się dokończyć zakupu. Spróbuj ponownie.';

  @override
  String get paywallRestoreError =>
      'Nie znaleziono aktywnej subskrypcji do przywrócenia.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DNI WOLNE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TYGODNIE WOLNY',
      one: '$count TYDZIEŃ WOLNY',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MIESIĘCY BEZPŁATNY',
      one: '$count MIESIĄC BEZPŁATNY',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Wypróbuj KipiList Pro za darmo przez 7 dni';

  @override
  String get paywallTrialSubtitle =>
      'Anuluj w dowolnym momencie. Dzisiaj bez opłat.';

  @override
  String get paywallTrialCta => 'Rozpocznij bezpłatny okres próbny';

  @override
  String get recipeAddToList => 'Dodaj do listy zakupów';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count składniki dodane do $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Wszystko, czego potrzebujesz:';

  @override
  String get paywallFeatureUnlimitedLists => 'Nieograniczone listy';

  @override
  String get paywallFeatureSmartAI => 'Inteligentna sztuczna inteligencja';

  @override
  String get paywallFeatureExpenseControl => 'Kontrola wydatków';

  @override
  String get paywallFeatureSharing => 'Partycypujący';

  @override
  String get paywallBeforeAfterTitle => 'AI przed i po:';

  @override
  String get paywallLabelCommon => 'Wspólny';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ryż';

  @override
  String get paywallBeforeItem2 => 'mydło';

  @override
  String get paywallBeforeItem3 => 'mięso';

  @override
  String get paywallBeforeItem4 => 'chleb';

  @override
  String get paywallAfterItem1 => 'Słodziny';

  @override
  String get paywallAfterItem2 => 'Czyszczenie';

  @override
  String get paywallAfterItem3 => 'Mięso';

  @override
  String get paywallAfterItem4 => 'Piekarnia';

  @override
  String get paywallTestimonialsTitle => 'Co mówią nasi użytkownicy:';

  @override
  String get paywallTestimonial1Name => 'Anna S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizuje moje zakupy w kilka sekund. Oszczędzam 20 minut na wycieczce po targu.';

  @override
  String get paywallTestimonial2Name => 'Karol M.';

  @override
  String get paywallTestimonial2Text =>
      'Już nigdy nie zapomniałem żadnej pozycji z listy. Czat AI jest rewelacyjny!';

  @override
  String get paywallSocialProof => 'Korzysta z niego ponad 2400 rodzin';

  @override
  String get paywallCtaUnlock => 'Odblokuj PRO';

  @override
  String get paywallBestValue => 'NAJLEPSZA WARTOŚĆ';

  @override
  String get paywallMostPopular => 'NAJPOPULARNIEJSZE';

  @override
  String get paywallSafeCheckout => 'Bezpieczna płatność';

  @override
  String get paywallSelectPlan => 'Wybierz swój plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ZAOSZCZĘDŹ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Tylko $price/miesiąc';
  }

  @override
  String get paywallPackageAnnual => 'Plan roczny';

  @override
  String get paywallPackageMonthly => 'Plan miesięczny';

  @override
  String get paywallPackageLifetime => 'Dostęp na całe życie';

  @override
  String get paywallCancelAnytime =>
      'Anuluj w dowolnym momencie. Żadnego zaangażowania.';

  @override
  String get paywallPolicy => 'Polityka prywatności';

  @override
  String get paywallTerms => 'Warunki użytkowania';

  @override
  String get paywallRestore => 'Przywrócić';

  @override
  String get paywallHeroHeadline => 'Kipi AI zawsze po Twojej stronie';

  @override
  String get paywallHeroSubtitle =>
      'Dodawaj elementy, organizuj listy i oszczędzaj czas dzięki sztucznej inteligencji w kieszeni';

  @override
  String get paywallBenefit1Desc =>
      'Dodaje, porządkuje i sugeruje elementy 24 godziny na dobę, 7 dni w tygodniu';

  @override
  String get paywallBenefit2Desc => 'Brak limitu 3 list';

  @override
  String get paywallBenefit3Desc => 'Śledzenie wydatków i listy rodzinne';

  @override
  String get paywallPackageMonthlyDesc => 'Pełna elastyczność';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Zacznij bezpłatnie — $days dni';
  }

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
      'Mów naturalnie, aby zarządzać swoją listą!\n\nPrzykłady:\n• \'Dodaj chleb, ser i szynkę\'\n• \'Usuń proszek do prania\'\n• \'Zmień motyw na niebieski\'\n\nTo ekskluzywna funkcja KipiList Premium.';

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
      'Twoja opinia została otrzymana i pomaga nam ulepszać KipiList dla wszystkich.';

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
  String get aiEnergy => 'Energia AI';

  @override
  String get searchInConversation => 'Wyszukaj w rozmowie...';

  @override
  String get noMessagesFound => 'Nie znaleziono żadnych wiadomości';

  @override
  String get suggestedQuestions => 'Sugerowane pytania:';

  @override
  String get shoppingAssistant => 'Asystent zakupów';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Zakupiono $purchased z $total';
  }

  @override
  String get estimatedCost => 'Szacowany';

  @override
  String get viewItems => 'Zobacz przedmioty';

  @override
  String get noItemsInList => 'Brak pozycji na liście';

  @override
  String get longHistoryWarning =>
      'Długa historia: asystent skupia się na najnowszych wiadomościach, aby uzyskać lepszą wydajność.';

  @override
  String get listening => 'Słuchający...';

  @override
  String get addDirectToList => 'Dodaj bezpośrednio do listy';

  @override
  String get unlockFullResponse => 'Odblokuj pełną odpowiedź';

  @override
  String get switchList => 'Zmień listę';

  @override
  String get marketMode => 'Tryb rynkowy';

  @override
  String get backToChat => 'Powrót do czatu';

  @override
  String get finishShopping => 'Zakończ zakupy';

  @override
  String get welcomeAiAssistant => 'Witamy w Asystencie AI';

  @override
  String get createListToStartAi =>
      'Utwórz listę zakupów, aby rozpocząć korzystanie z inteligentnego czatu.';

  @override
  String get howCanIHelp => 'Jak mogę pomóc?';

  @override
  String get chatSubtitleShort => 'Zapytaj o ceny, przepisy, organizację...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kupiono';
  }

  @override
  String get quickReplies => 'Szybkie odpowiedzi:';

  @override
  String get voiceProFeature =>
      'Zaawansowane polecenia głosowe to wersja Pro. Włączanie podstawowego dyktowania...';

  @override
  String get viewPro => 'Zobacz Pro';

  @override
  String get errorLoadingChat =>
      'Ups! Coś poszło nie tak podczas ładowania czatu.';

  @override
  String get errorLoadingChatSubtitle =>
      'Sprawdź połączenie lub spróbuj ponownie później.';

  @override
  String get errorOscillation =>
      'Może się to zdarzyć z powodu oscylacji sieci lub tymczasowej niedostępności. Spróbuj ponownie.';

  @override
  String get activeListening => 'Aktywne słuchanie';

  @override
  String get whatToDoWithItem => 'Co chciałbyś zrobić z tym przedmiotem?';

  @override
  String get viewDetails => 'Zobacz szczegóły';

  @override
  String get openMenu => 'Otwórz menu';

  @override
  String get viewRecipe => 'Zobacz przepis';

  @override
  String get recipeCreated => 'Przepis stworzony!';

  @override
  String get editRecipe => 'Redagować';

  @override
  String get deleteRecipe => 'Usuwać';

  @override
  String get deleteRecipeConfirm => 'Usunąć ten przepis?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Czy na pewno chcesz usunąć „$recipeName”? Tej akcji nie można cofnąć.';
  }

  @override
  String get ingredients => 'Składniki';

  @override
  String get instructions => 'Instrukcje';

  @override
  String get prepTime => 'Czas przygotowania';

  @override
  String get recipeSaved => 'Przepis zapisany!';

  @override
  String get noRecipesSaved => 'Nie zapisano żadnych przepisów';

  @override
  String get noRecipesSavedHint =>
      'Utwórz swój pierwszy niestandardowy przepis, dotykając przycisku poniżej.';

  @override
  String get myRecipes => 'Moje przepisy';

  @override
  String get newRecipe => 'Nowy przepis';

  @override
  String get loadingRecipes => 'Ładuję Twoje przepisy...';

  @override
  String get errorLoadingRecipes => 'Błąd podczas ładowania przepisów';

  @override
  String get addIngredient => 'Dodaj składnik';

  @override
  String get saveRecipe => 'Ratować';

  @override
  String get recipeName => 'Nazwa przepisu';

  @override
  String get shortDescription => 'Krótki opis';

  @override
  String get prepTimeMinutes => 'Czas przygotowania (minuty)';

  @override
  String get instructionsHint => 'Wpisz jeden krok w wierszu...';

  @override
  String get addPhoto => 'Dodaj zdjęcie';

  @override
  String get imageUrlPlaceholder => 'Możesz też wkleić adres URL obrazu';

  @override
  String get tags => 'Tagi';

  @override
  String get recipeTags => 'Tagi z przepisami';

  @override
  String get suggestedTags => 'Sugerowane';

  @override
  String get searchRecipes => 'Szukaj przepisów...';

  @override
  String get filterByTag => 'Filtruj według tagu';

  @override
  String get allTags => 'Wszystko';

  @override
  String get recipeDeleted => 'Przepis usunięty';

  @override
  String get saveChanges => 'Zapisz zmiany';

  @override
  String get editRecipeTitle => 'Edytuj przepis';

  @override
  String get newRecipeTitle => 'Nowy przepis';

  @override
  String get requiredField => 'Wymagany';

  @override
  String get chooseImageSource => 'Wybierz źródło obrazu';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Wpisz adres URL';

  @override
  String get recipeImage => 'Obraz przepisu';

  @override
  String get removeImage => 'Usuń obraz';

  @override
  String get mealPlannerTitle => 'Planista posiłków';

  @override
  String get mealPlannerViewMonthly => 'Widok miesięczny';

  @override
  String get mealPlannerViewWeekly => 'Widok tygodniowy';

  @override
  String get mealPlannerNoMeals => 'Brak zaplanowanych posiłków';

  @override
  String get mealPlannerNoMealsHint => 'Kliknij dzień, aby dodać posiłek';

  @override
  String get mealPlannerLoading => 'Ładowanie planu posiłków...';

  @override
  String get mealPlannerError => 'Błąd podczas ładowania planu posiłków';

  @override
  String get mealPlannerAddMeal => 'Dodaj posiłek';

  @override
  String get mealPlannerEditMeal => 'Edytuj posiłek';

  @override
  String get mealPlannerDeleteMeal => 'Usuń posiłek';

  @override
  String get mealPlannerMealDeleted => 'Posiłek usunięty';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcje',
      one: '$count porcja',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcje';

  @override
  String get mealPlannerNoteLabel => 'Uwaga (opcjonalnie)';

  @override
  String get mealPlannerSelectRecipe => 'Wybierz przepis';

  @override
  String get mealPlannerSearchRecipes => 'Szukaj przepisów...';

  @override
  String get mealPlannerNoRecipesFound => 'Nie znaleziono przepisów';

  @override
  String get mealPlannerNoRecipesHint =>
      'Najpierw utwórz przepisy w zakładce Przepisy';

  @override
  String get mealPlannerSave => 'Dodaj do planu';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Zaplanowano $count z $total posiłków';
  }

  @override
  String get mealPlannerGenerateList => 'Wygeneruj listę zakupów';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Dodać do swojej listy zakupów wszystkie składniki z zaplanowanych w tym tygodniu posiłków?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count składnik(i) dodany do Twojej listy!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Brak składników do dodania. Najpierw zaplanuj kilka posiłków, korzystając z przepisów.';

  @override
  String get mealPlannerGenerateListNoList => 'Najpierw utwórz listę zakupów.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Śniadanie';

  @override
  String get mealPlannerMealTypeLunch => 'Obiad';

  @override
  String get mealPlannerMealTypeDinner => 'Kolacja';

  @override
  String get mealPlannerMealTypeSnack => 'Przekąska';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Na ten tydzień nie zaplanowano nic';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Kliknij dowolny dzień, aby rozpocząć planowanie posiłków!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Zaproś do listy';

  @override
  String get shareApp => 'Udostępnij aplikację';

  @override
  String get shareAppDescription =>
      'Zaproś znajomych do korzystania z KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Do organizowania zakupów korzystam z KipiList! Pobierz za pomocą mojego linku, a oboje otrzymamy 7 dni Premium za darmo: $url';
  }

  @override
  String get shareReferralSubject => 'Zdobądź 7 dni KipiList Premium!';

  @override
  String get gestureHint => 'Przytrzymaj, aby wybrać. • Przesuń, aby usunąć';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Moje częste';

  @override
  String get catalogSearchGlobal => 'Wyszukaj dowolny produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Szukaj w $category...';
  }

  @override
  String get catalogSortPopular => 'Najbardziej popularne';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Rodacy';

  @override
  String get catalogRareSection => 'mniej powszechne w Twoim kraju';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Dodaj $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Nie znaleziono produktu. Wpisz nazwę';

  @override
  String get catalogBrowse => 'Przeglądaj katalog';

  @override
  String get offlineBanner => 'Jesteś offline';

  @override
  String get consentTitle => 'Prywatność i analityka';

  @override
  String get consentBody =>
      'KipiList korzysta z Firebase Analytics, aby poprawić Twoje doświadczenia. Twoje dane są przetwarzane zgodnie z naszą Polityką Prywatności.';

  @override
  String get consentAccept => 'Przyjąć';

  @override
  String get consentDecline => 'Nie, dzięki';

  @override
  String get mealPlannerPantryAllAvailable => 'W magazynie';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brakujące elementy',
      one: '$count brakujący element',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Data ważności';

  @override
  String get notInformed => 'Nie poinformowany';

  @override
  String get manageCategoriesTitle => 'Zarządzaj kategoriami';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get backToToday => 'Wróćmy do dzisiaj';
}
