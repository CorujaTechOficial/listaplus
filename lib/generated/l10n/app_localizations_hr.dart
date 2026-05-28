// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Popis za kupovinu';

  @override
  String get lists => 'Popisi';

  @override
  String get pantry => 'Ostava';

  @override
  String get cancel => 'Odustani';

  @override
  String get save => 'Spremi';

  @override
  String get create => 'Stvori';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Ukloni';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get copy => 'Kopiraj';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get regenerate => 'Regeneriraj';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get close => 'Zatvori';

  @override
  String get import => 'Uvezi';

  @override
  String get rename => 'Preimenuj';

  @override
  String get upgrade => 'Nadogradi';

  @override
  String get clear => 'Očisti';

  @override
  String error(String message) {
    return 'Greška: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Greška: $message';
  }

  @override
  String get purchaseError => 'Greška u obradi kupnje. Pokušaj ponovno.';

  @override
  String get restoreError => 'Greška u obnavljanju kupnji. Pokušaj ponovno.';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get fieldRequired => 'Obavezno polje';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Odabrano $count',
      few: 'Odabrano $count',
      one: 'Odabrano $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Procijenjeno';

  @override
  String get alreadyPurchased => 'Već kupljeno';

  @override
  String get clearList => 'Očisti popis';

  @override
  String get clearPurchased => 'Očisti kupljeno';

  @override
  String get share => 'Podijeli';

  @override
  String get shareViaCode => 'Podijeli putem koda';

  @override
  String get importViaCode => 'Uvezi putem koda';

  @override
  String get listAssistant => 'Pomoćnik za popis';

  @override
  String get globalAssistant => 'Globalni pomoćnik';

  @override
  String get becomePremium => 'Postani Premium';

  @override
  String get manageSubscription => 'Upravljanje pretplatom';

  @override
  String get completePurchase => 'Dovrši kupnju';

  @override
  String get confirmClearList => 'Ukloniti sve stavke?';

  @override
  String get shareListTitle => 'Podijeli popis';

  @override
  String get shareThisCode => 'Podijeli ovaj kod:';

  @override
  String get validForLimitedTime => 'Vrijedi ograničeno vrijeme';

  @override
  String get importListTitle => 'Uvezi popis';

  @override
  String get enterCodeHint => 'Unesi kod';

  @override
  String get confirmArchiveTitle => 'Dovrši kupnju';

  @override
  String get confirmArchiveContent => 'Dovršiti ovu kupnju i arhivirati popis?';

  @override
  String get complete => 'Dovrši';

  @override
  String get listArchived => 'Popis uspješno arhiviran!';

  @override
  String listAdded(String listName) {
    return '$listName dodan!';
  }

  @override
  String get buy => 'Kupi';

  @override
  String get unmark => 'Odznači';

  @override
  String confirmDeleteItems(int count) {
    return 'Ukloniti $count stavku(i)?';
  }

  @override
  String get confirmDeleteTitle => 'Potvrdi';

  @override
  String confirmContent(int count) {
    return 'Ukloniti $count stavku(i)?';
  }

  @override
  String get archiveList => 'Arhiviraj popis';

  @override
  String get pantryAppBar => 'Ostava';

  @override
  String get generateShoppingList => 'Generiraj popis za kupnju';

  @override
  String get pantryEmpty => 'Prazna ostava';

  @override
  String get pantryEmptySubtitle => 'Dodaj proizvode koje želiš imati kod kuće';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit stavku(i) treba kupiti';
  }

  @override
  String get noItemsToBuy => 'Nema stavki za kupnju';

  @override
  String get newPantryList => 'Kupnja za ostavu';

  @override
  String get newListTitle => 'Novi popis za kupnju';

  @override
  String itemsWillBeAdded(int count) {
    return '$count stavku(i) će biti dodano';
  }

  @override
  String get listNameLabel => 'Naziv popisa';

  @override
  String listCreated(String name, int count) {
    return 'Popis \"$name\" stvoren s $count stavki';
  }

  @override
  String get noTracking => 'Bez praćenja';

  @override
  String get markAsPurchased => 'Označi kao kupljeno';

  @override
  String editPantryItem(String name) {
    return 'Uredi $name';
  }

  @override
  String get idealQuantity => 'Idealna količina';

  @override
  String get currentQuantity => 'Trenutna količina';

  @override
  String get consumed => 'Potrošeno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name nadopunjeno na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ukloniti \"$name\" iz ostave?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Uredi $name';
  }

  @override
  String get settingsAppBar => 'Postavke';

  @override
  String get language => 'Jezik';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Zadano sustava';

  @override
  String get chooseLanguage => 'Odaberi jezik';

  @override
  String get searchLanguage => 'Pretraži jezik...';

  @override
  String get appearance => 'Izgled';

  @override
  String get light => 'Svijetlo';

  @override
  String get system => 'Sustav';

  @override
  String get dark => 'Tamno';

  @override
  String get themeColor => 'Boja teme';

  @override
  String get dynamicColors => 'Dinamične boje';

  @override
  String get dynamicColorsSubtitle => 'Koristi boje na temelju pozadine';

  @override
  String get finance => 'Financije';

  @override
  String get monthlyBudgetNav => 'Mjesečni proračun';

  @override
  String get budgetSubtitle => 'Prati svoju mjesečnu potrošnju';

  @override
  String get data => 'Podaci';

  @override
  String get backupNav => 'Sigurnosna kopija';

  @override
  String get backupSubtitle => 'Izvezi ili uvezi svoje podatke';

  @override
  String get about => 'O nama';

  @override
  String get version => 'Verzija';

  @override
  String get privacy => 'Privatnost';

  @override
  String get termsOfUse => 'Uvjeti korištenja';

  @override
  String get backupTitle => 'Sigurnosna kopija';

  @override
  String get backupPremiumDescription =>
      'Sigurnosna kopija i izvoz su Premium značajka';

  @override
  String get exportData => 'Izvezi podatke';

  @override
  String get exportDataSubtitle => 'Spremi sve popise kao JSON';

  @override
  String get importData => 'Uvezi podatke';

  @override
  String get importDataSubtitle => 'Vrati popise iz JSON-a';

  @override
  String get importJsonTitle => 'Uvezi JSON';

  @override
  String get importJsonHint => 'Zalijepi JSON sigurnosne kopije ovdje...';

  @override
  String get backupExported => 'Sigurnosna kopija izvezena!';

  @override
  String get budgetAppBar => 'Mjesečni proračun';

  @override
  String get budgetPremiumLocked => 'Globalni mjesečni proračun je Premium';

  @override
  String get budgetUpgradePrompt => 'Nadogradi za otključavanje';

  @override
  String get noBudgetDefined => 'Nije postavljen proračun';

  @override
  String totalEstimated(String amount) {
    return 'Ukupno procijenjeno: $amount';
  }

  @override
  String get setBudgetButton => 'Postavi proračun';

  @override
  String get budgetLists => 'Popisi';

  @override
  String get budgetValueLabel => 'Iznos';

  @override
  String get setBudgetTitle => 'Mjesečni proračun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get filterPending => 'Na čekanju';

  @override
  String get filterPurchased => 'Kupljeno';

  @override
  String get sortName => 'Naziv';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ručno';

  @override
  String get addItem => 'Dodaj stavku';

  @override
  String get itemName => 'Naziv stavke';

  @override
  String get quantityShort => 'Kol';

  @override
  String get unit => 'Jedinica';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Procijenjena cijena';

  @override
  String get addItemPrice => 'Procijenjena cijena';

  @override
  String get editItem => 'Uredi stavku';

  @override
  String get quantityFull => 'Količina';

  @override
  String get editItemPrice => 'Procijenjena cijena';

  @override
  String get addToPantry => 'Dodaj u ostavu';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodati \"$name\" u tvoju ostavu?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Naziv proizvoda';

  @override
  String get idealQty => 'Idealna kol';

  @override
  String get currentQty => 'Trenutna kol';

  @override
  String get trackStock => 'Prati zalihe';

  @override
  String get trackStockActive => 'Pojavljuje se u prijedlozima za kupnju';

  @override
  String get trackStockInactive => 'Ne generira prijedlog za kupnju';

  @override
  String get createListDialog => 'Stvori popis';

  @override
  String get renameListDialog => 'Preimenuj popis';

  @override
  String get listHistory => 'Povijest popisa';

  @override
  String get myLists => 'Moji popisi';

  @override
  String get viewActive => 'Pregledaj aktivne';

  @override
  String get viewHistory => 'Pregledaj povijest';

  @override
  String get noArchivedLists => 'Nema arhiviranih popisa';

  @override
  String get noActiveLists => 'Nema aktivnih popisa';

  @override
  String completedOn(String date) {
    return 'Dovršeno $date';
  }

  @override
  String get sharedLabel => 'Podijeljeno';

  @override
  String get restore => 'Vrati';

  @override
  String get removeSharedTooltip => 'Ukloni';

  @override
  String get deleteListTitle => 'Izbriši popis';

  @override
  String deleteListContent(String name) {
    return 'Jesi li siguran da želiš izbrisati \"$name\"? Sve stavke će biti uklonjene.';
  }

  @override
  String get removeSharedListTitle => 'Ukloni podijeljeni popis';

  @override
  String removeSharedListContent(String name) {
    return 'Ukloniti \"$name\" s tvojih popisa? Originalni popis neće biti pogođen.';
  }

  @override
  String get createNewList => 'Stvori novi popis';

  @override
  String get aiAssistant => 'AI pomoćnik';

  @override
  String get aiAssistantDescription =>
      'Dobij pametne prijedloge, recepte i personalizirane savjete s našim AI pomoćnikom.';

  @override
  String get generalAssistant => 'Opći pomoćnik';

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
  String get clearHistory => 'Očisti povijest';

  @override
  String get clearHistoryConfirm => 'Izbrisati sve poruke u ovoj sesiji?';

  @override
  String get chatHint => 'Upiši svoju poruku...';

  @override
  String chatError(String error) {
    return 'Greška u učitavanju chata: $error';
  }

  @override
  String get listHelp => 'Kako mogu pomoći s tvojim popisom?';

  @override
  String get generalHelp => 'Kako mogu pomoći s tvojom današnjom kupovinom?';

  @override
  String get chatSubtitle =>
      'Zatraži prijedloge stavki, recepte ili savjete za uštedu.';

  @override
  String get aiError =>
      'Oprosti, došlo je do greške u obradi tvog zahtjeva. Provjeri svoju vezu ili pokušaj ponovno kasnije.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Prijavi se za otključavanje\nPremium značajki';

  @override
  String get signInGoogle => 'Prijava s Googleom';

  @override
  String get signInApple => 'Prijava s Appleom';

  @override
  String get continueAsGuest => 'Nastavi kao gost';

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
    return 'Greška pri prijavi: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Nadogradi za otključavanje';

  @override
  String get itemRemoved => 'Stavka uklonjena';

  @override
  String get undo => 'Poništi';

  @override
  String get emptyListTitle => 'Tvoj popis je prazan';

  @override
  String get emptyListSubtitle => 'Dodaj stavke za početak';

  @override
  String get noListFoundTitle => 'Nema pronađenih popisa';

  @override
  String get noListFoundSubtitle => 'Stvori svoj prvi popis za početak';

  @override
  String get createFirstList => 'Stvori prvi popis';

  @override
  String get listBudgetTitle => 'Proračun popisa';

  @override
  String get budgetAmountLabel => 'Iznos proračuna';

  @override
  String get removeBudget => 'Ukloni';

  @override
  String get prefUnlimitedLists => 'Neograničeni popisi';

  @override
  String get prefSharing => 'Dijeljenje popisa';

  @override
  String get prefFullHistory => 'Puna povijest';

  @override
  String get prefExportData => 'Izvoz podataka';

  @override
  String get prefCustomThemes => 'Prilagođene teme';

  @override
  String get prefMonthlyBudget => 'Globalni mjesečni proračun';

  @override
  String get prefAIAssistant => 'Osobni AI pomoćnik';

  @override
  String get prefUnlimitedPantry => 'Neograničena ostava';

  @override
  String get prefInteractiveArtifacts => 'Interaktivni AI artefakti';

  @override
  String get themeGreen => 'Zelena';

  @override
  String get themeBlue => 'Plava';

  @override
  String get themePurple => 'Ljubičasta';

  @override
  String get themeRed => 'Crvena';

  @override
  String get themeOrange => 'Narančasta';

  @override
  String get themePink => 'Ružičasta';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Smeđa';

  @override
  String get catFruits => 'Voće';

  @override
  String get catCleaning => 'Čišćenje';

  @override
  String get catBeverages => 'Pića';

  @override
  String get catBakery => 'Pekara';

  @override
  String get catOthers => 'Ostalo';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Popis za kupovinu';

  @override
  String get monthlyBudgetTitle => 'Mjesečni proračun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Izbriši popis';

  @override
  String get pantryItemRemoved => 'Stavka uklonjena';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit stavki treba kupiti',
      few: '$deficit stavke treba kupiti',
      one: '$deficit stavku treba kupiti',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Ukupno košarica';

  @override
  String get restockLabel => 'Nadopuni';

  @override
  String get advancedFeatures => 'Napredne značajke';

  @override
  String get selectAll => 'Odaberi sve';

  @override
  String get deselectAll => 'Poništi odabir';

  @override
  String get monthlyBudgetAppBar => 'Mjesečni proračun';

  @override
  String get budgetEditTitle => 'Mjesečni proračun';

  @override
  String get budgetDashboardTitle => 'Nadzorna ploča';

  @override
  String get selectListForDashboard =>
      'Odaberi popis za prikaz nadzorne ploče.';

  @override
  String get spendingAnalysis => 'Analiza potrošnje';

  @override
  String get noItemsToAnalyze => 'Nema stavki u popisu za analizu.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označi stavke kao kupljene za prikaz analize.';

  @override
  String get totalSpending => 'Ukupno potrošeno';

  @override
  String get spendingByCategory => 'Potrošnja po kategoriji';

  @override
  String get achievements => 'Postignuća';

  @override
  String get exportPdfExcel => 'Izvezi PDF/Excel';

  @override
  String get exportPdf => 'Izvezi kao PDF';

  @override
  String get exportExcel => 'Izvezi kao Excel';

  @override
  String get organizingAi => 'ORGANIZIRANJE S AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Moj popis za kupovinu';

  @override
  String get emptyListAddItems => 'Tvoj popis je prazan! Prvo dodaj stavke. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Popis čarobno organiziran po kategorijama! ✨';

  @override
  String get shoppingMode => 'Način kupnje';

  @override
  String get smartOrganization => 'Pametna organizacija';

  @override
  String get savings => 'Ušteda';

  @override
  String get shoppingModeHeader => 'NAČIN KUPNJE';

  @override
  String get shareAsText => 'Pošalji stavke kao formatirani tekst';

  @override
  String get shareRealtime =>
      'Sinkronizacija u stvarnom vremenu s drugim osobama';

  @override
  String get quickRecipe => 'Brzi recept';

  @override
  String get quickRecipePrompt => 'Predloži recepte sa stavkama s mog popisa.';

  @override
  String get economyTips => 'Savjeti za uštedu';

  @override
  String get economyTipsPrompt => 'Kako mogu uštedjeti na ovoj kupnji?';

  @override
  String get organizeAisles => 'Organiziraj po prolazima';

  @override
  String get organizeAislesPrompt => 'Organiziraj po prolazima trgovine.';

  @override
  String get recipeSuggestion => 'Prijedlog recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Preostalo $remaining kredita';
  }

  @override
  String get addAllToList => 'Dodaj sve na popis';

  @override
  String get organizeByAisles => 'Organiziraj po prolazima';

  @override
  String get voiceTranscriptionTooltip => 'Glasovno tipkanje (Besplatno)';

  @override
  String get aiVoiceCommandTooltip => 'AI glasovna naredba (Premium)';

  @override
  String get voiceCommandTitle => 'AI glasovna naredba';

  @override
  String get voiceCommandContent =>
      'Govori prirodno za upravljanje svojim popisom!\n\nPrimjeri:\n• \'Dodaj kruh, sir i šunku\'\n• \'Ukloni deterdžent za rublje\'\n• \'Promijeni temu u plavu\'\n\nOvo je ekskluzivna značajka Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pogledaj planove';

  @override
  String get itemsAddedSuccess => 'Stavke uspješno dodane na popis!';

  @override
  String get viewList => 'Pogledaj popis';

  @override
  String get feedbackTitle => 'Pošalji povratne informacije';

  @override
  String get feedbackPrompt => 'Što želite podijeliti?';

  @override
  String get feedbackTypeBug => 'Prijavi grešku';

  @override
  String get feedbackTypeBugHint => 'Nešto ne radi';

  @override
  String get feedbackTypeSuggestion => 'Prijedlog';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja za poboljšanje aplikacije';

  @override
  String get feedbackTypeTranslation => 'Problem s prijevodom';

  @override
  String get feedbackTypeTranslationHint => 'Netočan ili nespretan prijevod';

  @override
  String get feedbackTypeFeature => 'Zahtjev za značajku';

  @override
  String get feedbackTypeFeatureHint => 'Značajka koju želite vidjeti';

  @override
  String get feedbackTypeOther => 'Ostalo';

  @override
  String get feedbackTypeOtherHint => 'Druga vrsta povratnih informacija';

  @override
  String get feedbackHint => 'Opišite svoje povratne informacije detaljno...';

  @override
  String get feedbackSend => 'Pošalji povratne informacije';

  @override
  String get feedbackSending => 'Slanje...';

  @override
  String get feedbackThankYou => 'Hvala vam!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše povratne informacije su primljene i pomažu nam poboljšati Lista Plus za sve.';

  @override
  String get feedbackBack => 'Natrag';

  @override
  String feedbackError(String error) {
    return 'Greška pri slanju: $error';
  }

  @override
  String get feedbackRetry => 'Pokušaj ponovno';

  @override
  String get feedbackSettingsTitle => 'Pošalji povratne informacije';

  @override
  String get feedbackSettingsSubtitle =>
      'Prijavite greške, predložite poboljšanja ili ispravite prijevode';

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
  String get openMenu => 'Otvori izbornik';

  @override
  String get viewRecipe => 'Vidi recept';

  @override
  String get recipeCreated => 'Recept stvoren!';

  @override
  String get editRecipe => 'Uredi';

  @override
  String get deleteRecipe => 'Izbriši';

  @override
  String get deleteRecipeConfirm => 'Izbrisati ovaj recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Jeste li sigurni da želite izbrisati \"$recipeName\"? Ova se radnja ne može poništiti.';
  }

  @override
  String get ingredients => 'Sastojci';

  @override
  String get instructions => 'Upute';

  @override
  String get prepTime => 'Vrijeme prip.';

  @override
  String get recipeSaved => 'Recept spremljen!';

  @override
  String get noRecipesSaved => 'Nema spremljenih recepata';

  @override
  String get noRecipesSavedHint =>
      'Stvorite svoj prvi prilagođeni recept dodirom na gumb ispod.';

  @override
  String get myRecipes => 'Moji recepti';

  @override
  String get newRecipe => 'Novi recept';

  @override
  String get loadingRecipes => 'Učitavanje vaših recepata...';

  @override
  String get errorLoadingRecipes => 'Greška pri učitavanju recepata';

  @override
  String get addIngredient => 'Dodaj sastojak';

  @override
  String get saveRecipe => 'Spremi';

  @override
  String get recipeName => 'Naziv recepta';

  @override
  String get shortDescription => 'Kratki opis';

  @override
  String get prepTimeMinutes => 'Vrijeme pripreme (minute)';

  @override
  String get instructionsHint => 'Upiši jedan korak po retku...';

  @override
  String get addPhoto => 'Dodaj fotografiju';

  @override
  String get imageUrlPlaceholder => 'Ili zalijepi URL slike';

  @override
  String get tags => 'Oznake';

  @override
  String get recipeTags => 'Oznake recepta';

  @override
  String get suggestedTags => 'Predloženo';

  @override
  String get searchRecipes => 'Pretraži recepte...';

  @override
  String get filterByTag => 'Filtriraj po oznaci';

  @override
  String get allTags => 'Sve';

  @override
  String get recipeDeleted => 'Recept izbrisan';

  @override
  String get saveChanges => 'Spremi promjene';

  @override
  String get editRecipeTitle => 'Uredi recept';

  @override
  String get newRecipeTitle => 'Novi recept';

  @override
  String get requiredField => 'Obavezno';

  @override
  String get chooseImageSource => 'Odaberi izvor slike';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Unesi URL';

  @override
  String get recipeImage => 'Slika recepta';

  @override
  String get removeImage => 'Ukloni sliku';

  @override
  String get mealPlannerTitle => 'Planer obroka';

  @override
  String get mealPlannerViewMonthly => 'Mjesečni prikaz';

  @override
  String get mealPlannerViewWeekly => 'Tjedni prikaz';

  @override
  String get mealPlannerNoMeals => 'Nema planiranih obroka';

  @override
  String get mealPlannerNoMealsHint => 'Dodirni dan za dodavanje obroka';

  @override
  String get mealPlannerLoading => 'Učitavanje plana obroka...';

  @override
  String get mealPlannerError => 'Greška pri učitavanju plana obroka';

  @override
  String get mealPlannerAddMeal => 'Dodaj obrok';

  @override
  String get mealPlannerEditMeal => 'Uredi obrok';

  @override
  String get mealPlannerDeleteMeal => 'Ukloni obrok';

  @override
  String get mealPlannerMealDeleted => 'Obrok uklonjen';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcija',
      few: '$count porcije',
      one: '$count porcija',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcije';

  @override
  String get mealPlannerNoteLabel => 'Bilješka (opcionalno)';

  @override
  String get mealPlannerSelectRecipe => 'Odaberi recept';

  @override
  String get mealPlannerSearchRecipes => 'Pretraži recepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Recepti nisu pronađeni';

  @override
  String get mealPlannerNoRecipesHint =>
      'Prvo stvorite recepte u kartici Recepti';

  @override
  String get mealPlannerSave => 'Dodaj u plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count od $total planiranih obroka';
  }

  @override
  String get mealPlannerGenerateList => 'Generiraj popis za kupnju';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Dodati sve sastojke iz planiranih obroka za ovaj tjedan na popis za kupnju?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count sastojak(a) dodano na vaš popis!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nema sastojaka za dodavanje. Prvo isplanirajte obroke s receptima.';

  @override
  String get mealPlannerGenerateListNoList => 'Prvo stvorite popis za kupnju.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Doručak';

  @override
  String get mealPlannerMealTypeLunch => 'Ručak';

  @override
  String get mealPlannerMealTypeDinner => 'Večera';

  @override
  String get mealPlannerMealTypeSnack => 'Međuobrok';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Ništa nije planirano za ovaj tjedan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Dodirni bilo koji dan za početak planiranja obroka!';

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
