// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get navChat => 'Chatta';

  @override
  String get navRecipes => 'Recept';

  @override
  String get navLists => 'Listor';

  @override
  String get navMealPlanner => 'Meny';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get next => 'Nästa';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Avsluta shoppingläge';

  @override
  String get exit => 'Utgång';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get scanProductTitle => 'Skanna produkt';

  @override
  String get positionBarcodeCenter => 'Placera streckkoden i mitten';

  @override
  String get product => 'Produkt';

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'engelska';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Välj Språk';

  @override
  String get searchLanguage => 'Sök språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Välj Valuta';

  @override
  String get searchCurrency => 'Sök valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get dynamicColors => 'Dynamiska färger';

  @override
  String get dynamicColorsSubtitle => 'Använd färger baserat på din tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Inaktivera dynamiska färger för att temafärgen ska träda i kraft';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get myAchievements => 'Mina prestationer';

  @override
  String get itemsPurchased => 'Inköpta föremål';

  @override
  String get totalSavings => 'Totala besparingar';

  @override
  String get currentStreak => 'Aktuell Streak';

  @override
  String streakDays(int count) {
    return '$days dagar';
  }

  @override
  String get unlockedBadges => 'Olåsta märken';

  @override
  String get badgeBeginner => 'Nybörjare';

  @override
  String get badgeOrganized => 'Organiserad';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Superplanerare';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased av $total objekt';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Totalt: $amount';
  }

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

  @override
  String get newChat => 'Ny chatt';

  @override
  String get noHistory => 'Ingen chatthistorik';

  @override
  String get deleteSession => 'Ta bort chatt';

  @override
  String get deleteSessionConfirm =>
      'Är du säker på att du vill ta bort den här chatten? Meddelanden kommer att försvinna permanent.';

  @override
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String get chatHintBlocked => 'Lås upp AI för att chatta';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get aiAssistantTitle => 'AI-assistent';

  @override
  String get closeSheet => 'Nära';

  @override
  String get scanBarcodeTitle => 'Skanna streckkod';

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

  @override
  String get aiLimitAlmostReached => 'Nästan slut på AI-meddelanden';

  @override
  String get unlockAi => 'Lås upp obegränsad AI';

  @override
  String get aiTeaserFallback =>
      'Prenumerera på Premium för att låsa upp hela svaret och få obegränsade AI-tips för din shopping...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-åtgärder kvar denna månad — uppgradera för obegränsat';
  }

  @override
  String get aiUsageExhausted =>
      'Månatlig AI-gräns nådd. Uppgradera till Pro för obegränsat →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingWelcomeTitle => 'Välkommen till KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Det smartaste sättet att organisera din shopping och spara pengar.';

  @override
  String get onboardingSetupTitle => 'Anpassa din upplevelse';

  @override
  String get onboardingSetupDesc =>
      'Välj hur du vill att KipiList ska se ut och fungera för dig.';

  @override
  String get onboardingLoginTitle => 'Spara allt till molnet';

  @override
  String get onboardingLoginDesc =>
      'Din data synkroniseras över alla dina enheter';

  @override
  String get onboardingShareTitle => 'Dela med dem du älskar';

  @override
  String get onboardingShareDesc =>
      'Synkronisera listor med familj och vänner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås upp alla funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få ut det mesta av dina inköpslistor';

  @override
  String get onboardingAnnualBadge => 'Bästa värde';

  @override
  String get onboardingMonthlyLabel => 'Månatlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alla planer';

  @override
  String get onboardingSubscribeCta => 'Prenumerera';

  @override
  String get onboardingCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String get onboardingContinueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingRestore => 'Återställ inköp';

  @override
  String get onboardingRestoreDesc =>
      'Har du redan ett abonnemang? Tryck här för att återställa den.';

  @override
  String get onboardingMaybeLater => 'Kanske senare';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organisera din shopping på rätt sätt.';
  }

  @override
  String get onboardingSlide1Title => 'Smarta inköpslistor';

  @override
  String get onboardingSlide1Body =>
      'Skapa och dela listor direkt. Kipi lägger till objekt automatiskt baserat på dina vanor.';

  @override
  String get onboardingSlide2Title => 'Möt Kipi';

  @override
  String get onboardingSlide2Body =>
      'Fråga vad som helst – skapa listor, hitta recept, spåra ditt skafferi, planera din vecka.';

  @override
  String get onboardingSlide3Title => 'Skafferi & Måltidsplanering';

  @override
  String get onboardingSlide3Body =>
      'Spåra vad du har, planera måltider och generera inköpslistor automatiskt.';

  @override
  String get onboardingExit => 'Utgång';

  @override
  String get onboardingPersonalizationTitle => 'Låt oss lära känna dig';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi kommer att använda detta för att anpassa dina förslag och göra shopping smartare.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Vilken är din favoritmat?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'till exempel Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsätta';

  @override
  String get onboardingPersonalizationSkip => 'Hoppa över nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Berätta för oss din favoritmat för att fortsätta';

  @override
  String get settingsDefaultScreen => 'Standard startskärm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Välj mellan inköpslista eller AI-chatt';

  @override
  String get settingsScreenList => 'Inköpslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Inloggningsfel: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Det gick inte att läsa in erbjudanden. Försök igen.';

  @override
  String get paywallPurchaseError => 'Kunde inte slutföra köpet. Försök igen.';

  @override
  String get paywallRestoreError =>
      'Ingen aktiv prenumeration hittades att återställa.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGAR GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VECKOR GRATIS',
      one: '$count VECKA GRATIS',
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
  String get paywallTrialTitle => 'Prova gratis!';

  @override
  String get paywallTrialSubtitle => 'Avbryt när som helst. Ingen avgift idag.';

  @override
  String get paywallTrialCta => 'Starta gratis provperiod';

  @override
  String get recipeAddToList => 'Lägg till inköpslista';

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
  String get noListSelected => 'Ingen lista har valts. Öppna en lista först.';

  @override
  String get paywallFeaturesTitle => 'Allt du behöver:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiserar din lista automatiskt';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Skapa så många listor du behöver';

  @override
  String get paywallFeatureDescSharing => 'Handla tillsammans i realtid';

  @override
  String get paywallFeatureDescPantry => 'Spåra vad du har hemma';

  @override
  String get paywallFeatureDescBudget => 'Håll budgeten varje månad';

  @override
  String get paywallFeatureUnlimitedLists => 'Obegränsade listor';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Kostnadskontroll';

  @override
  String get paywallFeatureSharing => 'Delning';

  @override
  String get paywallBeforeAfterTitle => 'AI före och efter:';

  @override
  String get paywallLabelCommon => 'Gemensam';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'tvål';

  @override
  String get paywallBeforeItem3 => 'kött';

  @override
  String get paywallBeforeItem4 => 'bröd';

  @override
  String get paywallAfterItem1 => 'Spannmål';

  @override
  String get paywallAfterItem2 => 'Rengöring';

  @override
  String get paywallAfterItem3 => 'Kött';

  @override
  String get paywallAfterItem4 => 'Bageri';

  @override
  String get paywallTestimonialsTitle => 'Vad våra användare säger:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserar min shopping på några sekunder. Jag sparar 20 min per marknadsresa.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jag glömde aldrig en lista igen. AI-chatten är sensationell!';

  @override
  String get paywallSocialProof => '+2 400 familjer använder det';

  @override
  String get paywallCtaUnlock => 'Lås upp PRO';

  @override
  String get paywallBestValue => 'BÄSTA VÄRDE';

  @override
  String get paywallMostPopular => 'MEST POPULÄRT';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Säker betalning';

  @override
  String get paywallSelectPlan => 'Välj din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPARA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Endast $price/månad';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månadsplan';

  @override
  String get paywallPackageLifetime => 'Livstid åtkomst';

  @override
  String get paywallCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String paywallTrialInCard(int days) {
    return 'De första $days dagarna GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Säkrad av Google Play · Avbryt när som helst';

  @override
  String get paywallPolicy => 'Sekretesspolicy';

  @override
  String get paywallTerms => 'Användarvillkor';

  @override
  String get paywallRestore => 'Återställa';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltid vid din sida';

  @override
  String get paywallHeroSubtitle =>
      'Lägg till föremål, organisera listor och spara tid med AI i fickan';

  @override
  String get paywallBenefit1Desc =>
      'Lägger till, organiserar och föreslår föremål 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-listgräns';

  @override
  String get paywallBenefit3Desc => 'Utgiftsspårning och familjelistor';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Börja gratis — $days dagar';
  }

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Kricka';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Instrumentbräda';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera bugg';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsförfrågan';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra KipiList för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid sändning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera buggar, föreslå förbättringar eller korrigera översättningar';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Sök i konversation...';

  @override
  String get noMessagesFound => 'Inga meddelanden hittades';

  @override
  String get suggestedQuestions => 'Föreslagna frågor:';

  @override
  String get shoppingAssistant => 'Shoppingbiträde';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total köpt';
  }

  @override
  String get estimatedCost => 'Uppskattad';

  @override
  String get viewItems => 'Visa objekt';

  @override
  String get noItemsInList => 'Inga objekt i listan';

  @override
  String get longHistoryWarning =>
      'Lång historia: assistenten fokuserar på de senaste meddelandena för bättre prestanda.';

  @override
  String get listening => 'Lyssnande...';

  @override
  String get addDirectToList => 'Lägg till direkt i listan';

  @override
  String get unlockFullResponse => 'Lås upp fullständigt svar';

  @override
  String get switchList => 'Byt lista';

  @override
  String get marketMode => 'Marknadsläge';

  @override
  String get backToChat => 'Tillbaka till Chatt';

  @override
  String get finishShopping => 'Avsluta shopping';

  @override
  String get welcomeAiAssistant => 'Välkommen till AI Assistant';

  @override
  String get createListToStartAi =>
      'Skapa en inköpslista för att börja använda den smarta chatten.';

  @override
  String get howCanIHelp => 'Hur kan jag hjälpa till?';

  @override
  String get chatSubtitleShort => 'Fråga om priser, recept, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total köpt';
  }

  @override
  String get quickReplies => 'Snabba svar:';

  @override
  String get voiceProFeature =>
      'Avancerade röstkommandon är Pro. Aktiverar grundläggande diktering...';

  @override
  String get viewPro => 'Visa Pro';

  @override
  String get errorLoadingChat =>
      'hoppsan! Något gick fel när chatten laddades.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollera din anslutning eller försök igen senare.';

  @override
  String get errorOscillation =>
      'Detta kan uppstå på grund av nätverksvängningar eller tillfällig otillgänglighet. Försök igen.';

  @override
  String get activeListening => 'Aktivt lyssnande';

  @override
  String get whatToDoWithItem =>
      'Vad skulle du vilja göra med det här föremålet?';

  @override
  String get viewDetails => 'Visa detaljer';

  @override
  String get openMenu => 'Öppna menyn';

  @override
  String get viewRecipe => 'Se recept';

  @override
  String get recipeCreated => 'Recept skapat!';

  @override
  String get editRecipe => 'Redigera';

  @override
  String get deleteRecipe => 'Radera';

  @override
  String get deleteRecipeConfirm => 'Vill du ta bort det här receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Är du säker på att du vill ta bort \"$recipeName\"? Denna åtgärd kan inte ångras.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Förberedelsetid';

  @override
  String get recipeSaved => 'Receptet sparat!';

  @override
  String get noRecipesSaved => 'Inga recept sparade';

  @override
  String get noRecipesSavedHint =>
      'Skapa ditt första anpassade recept genom att trycka på knappen nedan.';

  @override
  String get myRecipes => 'Mina recept';

  @override
  String get newRecipe => 'Nytt recept';

  @override
  String get loadingRecipes => 'Laddar dina recept...';

  @override
  String get errorLoadingRecipes => 'Det gick inte att läsa in recept';

  @override
  String get addIngredient => 'Tillsätt ingrediens';

  @override
  String get saveRecipe => 'Spara';

  @override
  String get recipeName => 'Receptets namn';

  @override
  String get shortDescription => 'Kort beskrivning';

  @override
  String get prepTimeMinutes => 'Förberedelsetid (minuter)';

  @override
  String get instructionsHint => 'Skriv ett steg per rad...';

  @override
  String get addPhoto => 'Lägg till foto';

  @override
  String get imageUrlPlaceholder => 'Eller klistra in en bildadress';

  @override
  String get tags => 'Taggar';

  @override
  String get recipeTags => 'Receptetiketter';

  @override
  String get suggestedTags => 'Föreslog';

  @override
  String get searchRecipes => 'Sök recept...';

  @override
  String get filterByTag => 'Filtrera efter tagg';

  @override
  String get allTags => 'Alla';

  @override
  String get recipeDeleted => 'Receptet raderat';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get editRecipeTitle => 'Redigera recept';

  @override
  String get newRecipeTitle => 'Nytt recept';

  @override
  String get requiredField => 'Nödvändig';

  @override
  String get chooseImageSource => 'Välj bildkälla';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Ange URL';

  @override
  String get recipeImage => 'Receptbild';

  @override
  String get removeImage => 'Ta bort bild';

  @override
  String get mealPlannerTitle => 'Måltidsplanerare';

  @override
  String get mealPlannerViewMonthly => 'Månadsvy';

  @override
  String get mealPlannerViewWeekly => 'Veckovy';

  @override
  String get mealPlannerNoMeals => 'Inga måltider planerade';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryck på en dag för att lägga till en måltid';

  @override
  String get mealPlannerLoading => 'Laddar matplan...';

  @override
  String get mealPlannerError => 'Det gick inte att läsa in måltidsplanen';

  @override
  String get mealPlannerAddMeal => 'Lägg till måltid';

  @override
  String get mealPlannerEditMeal => 'Redigera måltid';

  @override
  String get mealPlannerDeleteMeal => 'Ta bort måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltiden borttagen';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Serveringar';

  @override
  String get mealPlannerNoteLabel => 'Obs (valfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Välj ett recept';

  @override
  String get mealPlannerSearchRecipes => 'Sök recept...';

  @override
  String get mealPlannerNoRecipesFound => 'Inga recept hittades';

  @override
  String get mealPlannerNoRecipesHint => 'Skapa recept på fliken Recept först';

  @override
  String get mealPlannerSave => 'Lägg till i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planerade';
  }

  @override
  String get mealPlannerGenerateList => 'Skapa inköpslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lägg till alla ingredienser från planerade måltider den här veckan till din inköpslista?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) har lagts till i din lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Inga ingredienser att lägga till. Planera några måltider med recept först.';

  @override
  String get mealPlannerGenerateListNoList => 'Skapa en inköpslista först.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frukost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Mellanmål';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Inget planerat för den här veckan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryck på vilken dag som helst för att börja planera dina måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Bjud in till lista';

  @override
  String get shareApp => 'Dela app';

  @override
  String get shareAppDescription => 'Bjud in vänner att använda KipiList';

  @override
  String shareReferralText(String url) {
    return 'Jag använder KipiList för att organisera min shopping! Ladda ner via min länk så får vi båda 7 dagars Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dagars KipiList Premium!';

  @override
  String get gestureHint => 'Håll ned för att välja • Svep för att ta bort';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mina Frequents';

  @override
  String get catalogSearchGlobal => 'Sök vilken produkt som helst...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Sök i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populära';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'mindre vanligt i ditt land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Lägg till $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produkten hittades inte, skriv in namnet';

  @override
  String get catalogBrowse => 'Bläddra i katalogen';

  @override
  String get offlineBanner => 'Du är offline';

  @override
  String get consentTitle => 'Sekretess och analys';

  @override
  String get consentBody =>
      'KipiList använder Firebase Analytics för att förbättra din upplevelse. Dina uppgifter behandlas enligt vår integritetspolicy.';

  @override
  String get consentAccept => 'Acceptera';

  @override
  String get consentDecline => 'Nej tack';

  @override
  String get mealPlannerPantryAllAvailable => 'Alla ingredienser tillgängliga';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 saknas';
  }

  @override
  String get expirationDate => 'Utgångsdatum';

  @override
  String get notInformed => 'Inte inställt';

  @override
  String get skip => 'Hoppa';

  @override
  String get onboardingAiTitle => 'Chatta med Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hej! Jag är Kipi, din personliga shoppingassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Vad heter du?';

  @override
  String get onboardingAiNameHint => 'Skriv ditt namn...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Trevligt att träffa dig, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Vilken är din favoritmat?';

  @override
  String get onboardingAiFoodHint => 'till exempel Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Bra val! Här är vad jag skulle lägga till i din lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ser det här bra ut? Försök att skriva något annat!';

  @override
  String get onboardingAiReady =>
      'Stor! Du är redo att börja. Låt oss skapa ditt konto!';

  @override
  String get onboardingAiContinue => 'Fortsätt →';

  @override
  String get connectionError => 'Anslutningsfel';

  @override
  String connectionErrorDesc(String error) {
    return 'Kunde inte ansluta till servern. Kontrollera ditt internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Det gick inte att ladda listor';

  @override
  String get noListsFound => 'Inga listor hittades';

  @override
  String get backToToday => 'Tillbaka till idag';

  @override
  String get quickSuggestions => 'Snabba förslag';

  @override
  String get aiEnergyLow => 'Låg AI-energi';

  @override
  String get aiUnlockUnlimited => 'Lås upp obegränsad AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 idag';
  }

  @override
  String get aiSubscribeUnlimited => 'Prenumerera på obegränsad AI';

  @override
  String get unlockWithAd => 'Lås upp med Ad';

  @override
  String get conversationHistoryTitle => 'Konversationshistorik';

  @override
  String get noConversationsFound => 'Inga konversationer hittades';

  @override
  String get errorLoadingHistory => 'Det gick inte att ladda historiken';

  @override
  String get deleteConversationTitle => 'Ta bort konversation?';

  @override
  String get deleteConversationConfirm => 'Denna åtgärd kan inte ångras.';

  @override
  String get deleteConversation => 'Radera';

  @override
  String get subscription => 'Prenumeration';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Lås upp obegränsade listor, AI och mer';

  @override
  String get loadingSubscription => 'Laddar prenumeration...';

  @override
  String get errorLoadingSubscription =>
      'Det gick inte att läsa in prenumerationen';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Min profil';

  @override
  String get profileSubtitle => 'Personliga preferenser för AI-assistenten';

  @override
  String get customizeAiAssistant => 'Anpassa AI-assistent';

  @override
  String get assistantHistory => 'Assistenthistorik';

  @override
  String get assistantHistorySubtitle => 'Visa din konversationshistorik';

  @override
  String get manageCategories => 'Hantera kategorier';

  @override
  String get manageCategoriesSubtitle => 'Hantera objektkategorier';

  @override
  String get customizeAssistant => 'Anpassa';

  @override
  String get assistantName => 'Assistentens namn';

  @override
  String get chooseIcon => 'Välj ikon';

  @override
  String get profileSaved => 'Profilen har sparats!';

  @override
  String get errorSavingProfile => 'Fel när jag skulle spara: null';

  @override
  String get userProfile => 'Användarprofil';

  @override
  String get profileDescription =>
      'Berätta för oss dina personliga preferenser så att AI-assistenten kan föreslå personliga föremål och recept.';

  @override
  String get preferredMarket => 'Önskad marknad';

  @override
  String get preferredMarketHint => 'T.ex.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietrestriktioner';

  @override
  String get dietaryRestrictionsHint => 'T.ex.: vegan, vegetarisk, glutenfri';

  @override
  String get marketsToAvoid => 'Marknader att undvika';

  @override
  String get marketsToAvoidHint => 'Till exempel: Marknad Y, Marknad Z';

  @override
  String get observations => 'Anteckningar';

  @override
  String get observationsHint => 'Andra preferenser för assistenten';

  @override
  String get saveProfile => 'Spara profil';

  @override
  String get everythingReady => 'Allt klart!';

  @override
  String get youCompletedList => 'Du har slutfört listan!';

  @override
  String get selectCheaperAlternative =>
      'Välj ett billigare produktalternativ för att optimera kostnaden.';

  @override
  String get suggestedItems => 'Föreslagna föremål';

  @override
  String get swapped => 'Bytt';

  @override
  String get swap => 'Byta';

  @override
  String get chooseThemeColor => 'Välj Temafärg';

  @override
  String get manageCategoriesTitle => 'Hantera kategorier';

  @override
  String get categoryLimitReached =>
      'Begränsning av 10 kategorier på gratisversionen. Uppgradera till Pro!';

  @override
  String get deleteCategoryTitle => 'Ta bort kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Objekt i kategorin \"$category\" kommer att flyttas till \"Övriga\".\nFortsätta?';
  }

  @override
  String get deleteCategory => 'Radera';

  @override
  String get newCategoryDialog => 'Ny kategori';

  @override
  String get editCategoryDialog => 'Redigera kategori';

  @override
  String get categoryName => 'Kategorinamn';

  @override
  String get categoryNameHint => 'T.ex.: Kött';

  @override
  String get categoryColorLabel => 'Färg';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name har lagts till';
  }

  @override
  String get kipiQuickBarHint => 'Vad behöver du köpa?';

  @override
  String replaceItem(String item) {
    return 'Byt ut $item';
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
  String get onboardingHookHeadline => 'Glöm aldrig en matvara igen';

  @override
  String get onboardingGoalSaveMoney => 'Spara pengar';

  @override
  String get onboardingGoalNeverForget => 'Glöm aldrig saker';

  @override
  String get onboardingGoalFaster => 'Handla snabbare';

  @override
  String get onboardingGoalFamily => 'Ordna familjeshopping';

  @override
  String get onboardingGoalRecipes => 'Upptäck recept';

  @override
  String get onboardingGoalPantry => 'Spårskafferi';

  @override
  String get onboardingCommitmentsTitle => 'Vad är viktigt för dig?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Välj dina mål för att anpassa KipiList';

  @override
  String get onboardingCommitmentsCta => 'Låt oss gå!';

  @override
  String get onboardingPersonalizationNameLabel => 'Ditt namn';

  @override
  String get onboardingPersonalizationNameHint => 'Ange ditt namn';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Vad handlar du för?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Vem handlar du åt?';

  @override
  String get onboardingCategoryGrocery => 'Specerier';

  @override
  String get onboardingCategoryPharmacy => 'Apotek';

  @override
  String get onboardingCategoryRecipes => 'Recept';

  @override
  String get onboardingCategoryHome => 'Hem';

  @override
  String get onboardingCategoryPet => 'Sällskapsdjur';

  @override
  String get onboardingGroupSolo => 'Bara jag';

  @override
  String get onboardingGroupCouple => 'Par';

  @override
  String get onboardingGroupFamily => 'Familj';

  @override
  String get onboardingLoadingTitle => 'Förbereder din upplevelse...';

  @override
  String get onboardingLoadingStep1 => 'Analyserar dina preferenser...';

  @override
  String get onboardingLoadingStep2 => 'Konfigurerar AI-assistent...';

  @override
  String get onboardingLoadingStep3 => 'Nästan klar...';

  @override
  String get onboardingLoadingStat1Label => 'Artiklar katalogiserade';

  @override
  String get onboardingLoadingStat2Label => 'Användare hjälpte till';

  @override
  String get onboardingLoadingStat3Label => 'Minuter sparade';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spara på varje resa!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, glöm aldrig ett föremål!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, handla på halva tiden!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organisera familjeshopping!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, upptäck nya recept!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, spåra ditt skafferi perfekt!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Spara på varje resa!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Glöm aldrig ett föremål!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Handla på halva tiden!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Ordna familjeshopping!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Upptäck nya recept!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Spåra ditt skafferi perfekt!';

  @override
  String paywallPricePerDay(String price) {
    return 'Endast $price/dag — mindre än en kaffe';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Hoppa över nu';

  @override
  String get paywallTestimonial =>
      'AI organiserar min shopping på några sekunder. Jag sparar 20 min per resa.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Avbryt när som helst · Ingen kostnad förrän provperioden är slut';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hej $name! Vilken $category behöver du?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Vad $category behöver du?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Trevlig!';

  @override
  String get onboardingAiDemoChange => 'Ändra objekt';

  @override
  String get onboardingAiDemoOffer => 'Försök att skriva något annat!';

  @override
  String get onboardingAiDemoContinue => 'Fortsätta';

  @override
  String get onboardingAiDemoSlideHeadline => 'Din inköpslista, nu med AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Se hur Kipi bygger din fullständiga lista på några sekunder';

  @override
  String get onboardingAiDemoSlideCta => 'Jag vill ha det här! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Jag är värd för en grillfest 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Redo! Här är allt du behöver:';

  @override
  String get onboardingAiDemoSlideDone => 'Komplett lista på några sekunder ✨';

  @override
  String get onboardingPainTitle => 'Vad frustrerar dig mest?';

  @override
  String get onboardingPainSubtitle => 'Var ärlig – vi fixar var och en';

  @override
  String get onboardingPainCta => 'Ja, fixa det här åt mig →';

  @override
  String get onboardingPainForget => 'Jag glömmer saker i butiken';

  @override
  String get onboardingPainFamily => 'Min familj ser aldrig listan';

  @override
  String get onboardingPainOverspend => 'Jag går alltid över budget';

  @override
  String get onboardingPainRepeat => 'En resa räcker aldrig';

  @override
  String get aiWelcomeContent =>
      'Hej! 👋 Jag är **Kipi**, din personliga shopping- och receptassistent!\n\nJag är här för att hjälpa dig:\n🛒 **Ordna** din shopping automatiskt efter kategorier\n💰 **Spåra** din budget och ge dig tips för att spara pengar\n🍲 **Föreslå** läckra recept med det du redan har\n\nHur kan jag hjälpa dig idag? Du kan börja med att skapa din första lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Skapa min första lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, hjälp mig att skapa min första inköpslista';

  @override
  String get aiWelcomeSuggestSave => 'Hur sparar man pengar?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hur kan du hjälpa mig att spara pengar på matvaror?';

  @override
  String get suggestionMilk => 'Mjölk';

  @override
  String get suggestionBread => 'Bröd';

  @override
  String get suggestionEggs => 'Ägg';

  @override
  String get suggestionCoffee => 'Kaffe';

  @override
  String get suggestionRice => 'Ris';

  @override
  String get suggestionFruits => 'Frukter';
}

/// The translations for Swedish, as used in Sweden (`sv_SE`).
class AppLocalizationsSvSe extends AppLocalizationsSv {
  AppLocalizationsSvSe() : super('sv_SE');

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get navChat => 'Chatta';

  @override
  String get navRecipes => 'Recept';

  @override
  String get navLists => 'Listor';

  @override
  String get navMealPlanner => 'Meny';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get next => 'Nästa';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Avsluta shoppingläge';

  @override
  String get exit => 'Utgång';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get scanProductTitle => 'Skanna produkt';

  @override
  String get positionBarcodeCenter => 'Placera streckkoden i mitten';

  @override
  String get product => 'Produkt';

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'engelska';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Välj Språk';

  @override
  String get searchLanguage => 'Sök språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Välj Valuta';

  @override
  String get searchCurrency => 'Sök valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get dynamicColors => 'Dynamiska färger';

  @override
  String get dynamicColorsSubtitle => 'Använd färger baserat på din tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Inaktivera dynamiska färger för att temafärgen ska träda i kraft';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get myAchievements => 'Mina prestationer';

  @override
  String get itemsPurchased => 'Inköpta föremål';

  @override
  String get totalSavings => 'Totala besparingar';

  @override
  String get currentStreak => 'Aktuell Streak';

  @override
  String streakDays(int count) {
    return '$days dagar';
  }

  @override
  String get unlockedBadges => 'Olåsta märken';

  @override
  String get badgeBeginner => 'Nybörjare';

  @override
  String get badgeOrganized => 'Organiserad';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Superplanerare';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased av $total objekt';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Totalt: $amount';
  }

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

  @override
  String get newChat => 'Ny chatt';

  @override
  String get noHistory => 'Ingen chatthistorik';

  @override
  String get deleteSession => 'Ta bort chatt';

  @override
  String get deleteSessionConfirm =>
      'Är du säker på att du vill ta bort den här chatten? Meddelanden kommer att försvinna permanent.';

  @override
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String get chatHintBlocked => 'Lås upp AI för att chatta';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get aiAssistantTitle => 'AI-assistent';

  @override
  String get closeSheet => 'Nära';

  @override
  String get scanBarcodeTitle => 'Skanna streckkod';

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

  @override
  String get aiLimitAlmostReached => 'Nästan slut på AI-meddelanden';

  @override
  String get unlockAi => 'Lås upp obegränsad AI';

  @override
  String get aiTeaserFallback =>
      'Prenumerera på Premium för att låsa upp hela svaret och få obegränsade AI-tips för din shopping...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-åtgärder kvar denna månad — uppgradera för obegränsat';
  }

  @override
  String get aiUsageExhausted =>
      'Månatlig AI-gräns nådd. Uppgradera till Pro för obegränsat →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingWelcomeTitle => 'Välkommen till KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Det smartaste sättet att organisera din shopping och spara pengar.';

  @override
  String get onboardingSetupTitle => 'Anpassa din upplevelse';

  @override
  String get onboardingSetupDesc =>
      'Välj hur du vill att KipiList ska se ut och fungera för dig.';

  @override
  String get onboardingLoginTitle => 'Spara allt till molnet';

  @override
  String get onboardingLoginDesc =>
      'Din data synkroniseras över alla dina enheter';

  @override
  String get onboardingShareTitle => 'Dela med dem du älskar';

  @override
  String get onboardingShareDesc =>
      'Synkronisera listor med familj och vänner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås upp alla funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få ut det mesta av dina inköpslistor';

  @override
  String get onboardingAnnualBadge => 'Bästa värde';

  @override
  String get onboardingMonthlyLabel => 'Månatlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alla planer';

  @override
  String get onboardingSubscribeCta => 'Prenumerera';

  @override
  String get onboardingCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String get onboardingContinueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingRestore => 'Återställ inköp';

  @override
  String get onboardingRestoreDesc =>
      'Har du redan ett abonnemang? Tryck här för att återställa den.';

  @override
  String get onboardingMaybeLater => 'Kanske senare';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organisera din shopping på rätt sätt.';
  }

  @override
  String get onboardingSlide1Title => 'Smarta inköpslistor';

  @override
  String get onboardingSlide1Body =>
      'Skapa och dela listor direkt. Kipi lägger till objekt automatiskt baserat på dina vanor.';

  @override
  String get onboardingSlide2Title => 'Möt Kipi';

  @override
  String get onboardingSlide2Body =>
      'Fråga vad som helst – skapa listor, hitta recept, spåra ditt skafferi, planera din vecka.';

  @override
  String get onboardingSlide3Title => 'Skafferi & Måltidsplanering';

  @override
  String get onboardingSlide3Body =>
      'Spåra vad du har, planera måltider och generera inköpslistor automatiskt.';

  @override
  String get onboardingExit => 'Utgång';

  @override
  String get onboardingPersonalizationTitle => 'Låt oss lära känna dig';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi kommer att använda detta för att anpassa dina förslag och göra shopping smartare.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Vilken är din favoritmat?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'till exempel Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsätta';

  @override
  String get onboardingPersonalizationSkip => 'Hoppa över nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Berätta för oss din favoritmat för att fortsätta';

  @override
  String get settingsDefaultScreen => 'Standard startskärm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Välj mellan inköpslista eller AI-chatt';

  @override
  String get settingsScreenList => 'Inköpslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Inloggningsfel: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Det gick inte att läsa in erbjudanden. Försök igen.';

  @override
  String get paywallPurchaseError => 'Kunde inte slutföra köpet. Försök igen.';

  @override
  String get paywallRestoreError =>
      'Ingen aktiv prenumeration hittades att återställa.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGAR GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VECKOR GRATIS',
      one: '$count VECKA GRATIS',
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
  String get paywallTrialTitle => 'Prova gratis!';

  @override
  String get paywallTrialSubtitle => 'Avbryt när som helst. Ingen avgift idag.';

  @override
  String get paywallTrialCta => 'Starta gratis provperiod';

  @override
  String get recipeAddToList => 'Lägg till inköpslista';

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
  String get noListSelected => 'Ingen lista har valts. Öppna en lista först.';

  @override
  String get paywallFeaturesTitle => 'Allt du behöver:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiserar din lista automatiskt';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Skapa så många listor du behöver';

  @override
  String get paywallFeatureDescSharing => 'Handla tillsammans i realtid';

  @override
  String get paywallFeatureDescPantry => 'Spåra vad du har hemma';

  @override
  String get paywallFeatureDescBudget => 'Håll budgeten varje månad';

  @override
  String get paywallFeatureUnlimitedLists => 'Obegränsade listor';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Kostnadskontroll';

  @override
  String get paywallFeatureSharing => 'Delning';

  @override
  String get paywallBeforeAfterTitle => 'AI före och efter:';

  @override
  String get paywallLabelCommon => 'Gemensam';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'tvål';

  @override
  String get paywallBeforeItem3 => 'kött';

  @override
  String get paywallBeforeItem4 => 'bröd';

  @override
  String get paywallAfterItem1 => 'Spannmål';

  @override
  String get paywallAfterItem2 => 'Rengöring';

  @override
  String get paywallAfterItem3 => 'Kött';

  @override
  String get paywallAfterItem4 => 'Bageri';

  @override
  String get paywallTestimonialsTitle => 'Vad våra användare säger:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserar min shopping på några sekunder. Jag sparar 20 min per marknadsresa.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jag glömde aldrig en lista igen. AI-chatten är sensationell!';

  @override
  String get paywallSocialProof => '+2 400 familjer använder det';

  @override
  String get paywallCtaUnlock => 'Lås upp PRO';

  @override
  String get paywallBestValue => 'BÄSTA VÄRDE';

  @override
  String get paywallMostPopular => 'MEST POPULÄRT';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Säker betalning';

  @override
  String get paywallSelectPlan => 'Välj din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPARA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Endast $price/månad';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månadsplan';

  @override
  String get paywallPackageLifetime => 'Livstid åtkomst';

  @override
  String get paywallCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String paywallTrialInCard(int days) {
    return 'De första $days dagarna GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Säkrad av Google Play · Avbryt när som helst';

  @override
  String get paywallPolicy => 'Sekretesspolicy';

  @override
  String get paywallTerms => 'Användarvillkor';

  @override
  String get paywallRestore => 'Återställa';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltid vid din sida';

  @override
  String get paywallHeroSubtitle =>
      'Lägg till föremål, organisera listor och spara tid med AI i fickan';

  @override
  String get paywallBenefit1Desc =>
      'Lägger till, organiserar och föreslår föremål 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-listgräns';

  @override
  String get paywallBenefit3Desc => 'Utgiftsspårning och familjelistor';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Börja gratis — $days dagar';
  }

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Kricka';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Instrumentbräda';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera fel';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsbegäran';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra KipiList för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid skickning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera fel, föreslå förbättringar eller fixa översättningar';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Sök i konversation...';

  @override
  String get noMessagesFound => 'Inga meddelanden hittades';

  @override
  String get suggestedQuestions => 'Föreslagna frågor:';

  @override
  String get shoppingAssistant => 'Shoppingbiträde';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total köpt';
  }

  @override
  String get estimatedCost => 'Uppskattad';

  @override
  String get viewItems => 'Visa objekt';

  @override
  String get noItemsInList => 'Inga objekt i listan';

  @override
  String get longHistoryWarning =>
      'Lång historia: assistenten fokuserar på de senaste meddelandena för bättre prestanda.';

  @override
  String get listening => 'Lyssnande...';

  @override
  String get addDirectToList => 'Lägg till direkt i listan';

  @override
  String get unlockFullResponse => 'Lås upp fullständigt svar';

  @override
  String get switchList => 'Byt lista';

  @override
  String get marketMode => 'Marknadsläge';

  @override
  String get backToChat => 'Tillbaka till Chatt';

  @override
  String get finishShopping => 'Avsluta shopping';

  @override
  String get welcomeAiAssistant => 'Välkommen till AI Assistant';

  @override
  String get createListToStartAi =>
      'Skapa en inköpslista för att börja använda den smarta chatten.';

  @override
  String get howCanIHelp => 'Hur kan jag hjälpa till?';

  @override
  String get chatSubtitleShort => 'Fråga om priser, recept, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total köpt';
  }

  @override
  String get quickReplies => 'Snabba svar:';

  @override
  String get voiceProFeature =>
      'Avancerade röstkommandon är Pro. Aktiverar grundläggande diktering...';

  @override
  String get viewPro => 'Visa Pro';

  @override
  String get errorLoadingChat =>
      'hoppsan! Något gick fel när chatten laddades.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollera din anslutning eller försök igen senare.';

  @override
  String get errorOscillation =>
      'Detta kan uppstå på grund av nätverksvängningar eller tillfällig otillgänglighet. Försök igen.';

  @override
  String get activeListening => 'Aktivt lyssnande';

  @override
  String get whatToDoWithItem =>
      'Vad skulle du vilja göra med det här föremålet?';

  @override
  String get viewDetails => 'Visa detaljer';

  @override
  String get openMenu => 'Öppna menyn';

  @override
  String get viewRecipe => 'Se recept';

  @override
  String get recipeCreated => 'Recept skapat!';

  @override
  String get editRecipe => 'Redigera';

  @override
  String get deleteRecipe => 'Radera';

  @override
  String get deleteRecipeConfirm => 'Vill du ta bort det här receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Är du säker på att du vill ta bort \"$recipeName\"? Denna åtgärd kan inte ångras.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Förberedelsetid';

  @override
  String get recipeSaved => 'Receptet sparat!';

  @override
  String get noRecipesSaved => 'Inga recept sparade';

  @override
  String get noRecipesSavedHint =>
      'Skapa ditt första anpassade recept genom att trycka på knappen nedan.';

  @override
  String get myRecipes => 'Mina recept';

  @override
  String get newRecipe => 'Nytt recept';

  @override
  String get loadingRecipes => 'Laddar dina recept...';

  @override
  String get errorLoadingRecipes => 'Det gick inte att läsa in recept';

  @override
  String get addIngredient => 'Tillsätt ingrediens';

  @override
  String get saveRecipe => 'Spara';

  @override
  String get recipeName => 'Receptets namn';

  @override
  String get shortDescription => 'Kort beskrivning';

  @override
  String get prepTimeMinutes => 'Förberedelsetid (minuter)';

  @override
  String get instructionsHint => 'Skriv ett steg per rad...';

  @override
  String get addPhoto => 'Lägg till foto';

  @override
  String get imageUrlPlaceholder => 'Eller klistra in en bildadress';

  @override
  String get tags => 'Taggar';

  @override
  String get recipeTags => 'Receptetiketter';

  @override
  String get suggestedTags => 'Föreslog';

  @override
  String get searchRecipes => 'Sök recept...';

  @override
  String get filterByTag => 'Filtrera efter tagg';

  @override
  String get allTags => 'Alla';

  @override
  String get recipeDeleted => 'Receptet raderat';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get editRecipeTitle => 'Redigera recept';

  @override
  String get newRecipeTitle => 'Nytt recept';

  @override
  String get requiredField => 'Nödvändig';

  @override
  String get chooseImageSource => 'Välj bildkälla';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Ange URL';

  @override
  String get recipeImage => 'Receptbild';

  @override
  String get removeImage => 'Ta bort bild';

  @override
  String get mealPlannerTitle => 'Måltidsplanerare';

  @override
  String get mealPlannerViewMonthly => 'Månadsvy';

  @override
  String get mealPlannerViewWeekly => 'Veckovy';

  @override
  String get mealPlannerNoMeals => 'Inga måltider planerade';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryck på en dag för att lägga till en måltid';

  @override
  String get mealPlannerLoading => 'Laddar matplan...';

  @override
  String get mealPlannerError => 'Det gick inte att läsa in måltidsplanen';

  @override
  String get mealPlannerAddMeal => 'Lägg till måltid';

  @override
  String get mealPlannerEditMeal => 'Redigera måltid';

  @override
  String get mealPlannerDeleteMeal => 'Ta bort måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltiden borttagen';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Serveringar';

  @override
  String get mealPlannerNoteLabel => 'Obs (valfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Välj ett recept';

  @override
  String get mealPlannerSearchRecipes => 'Sök recept...';

  @override
  String get mealPlannerNoRecipesFound => 'Inga recept hittades';

  @override
  String get mealPlannerNoRecipesHint => 'Skapa recept på fliken Recept först';

  @override
  String get mealPlannerSave => 'Lägg till i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planerade';
  }

  @override
  String get mealPlannerGenerateList => 'Skapa inköpslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lägg till alla ingredienser från planerade måltider den här veckan till din inköpslista?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) har lagts till i din lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Inga ingredienser att lägga till. Planera några måltider med recept först.';

  @override
  String get mealPlannerGenerateListNoList => 'Skapa en inköpslista först.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frukost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Mellanmål';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Inget planerat för den här veckan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryck på vilken dag som helst för att börja planera dina måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Bjud in till lista';

  @override
  String get shareApp => 'Dela app';

  @override
  String get shareAppDescription => 'Bjud in vänner att använda KipiList';

  @override
  String shareReferralText(String url) {
    return 'Jag använder KipiList för att organisera min shopping! Ladda ner via min länk så får vi båda 7 dagars Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dagars KipiList Premium!';

  @override
  String get gestureHint => 'Håll ned för att välja • Svep för att ta bort';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mina Frequents';

  @override
  String get catalogSearchGlobal => 'Sök vilken produkt som helst...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Sök i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populära';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'mindre vanligt i ditt land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Lägg till $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produkten hittades inte, skriv in namnet';

  @override
  String get catalogBrowse => 'Bläddra i katalogen';

  @override
  String get offlineBanner => 'Du är offline';

  @override
  String get consentTitle => 'Sekretess och analys';

  @override
  String get consentBody =>
      'KipiList använder Firebase Analytics för att förbättra din upplevelse. Dina uppgifter behandlas enligt vår integritetspolicy.';

  @override
  String get consentAccept => 'Acceptera';

  @override
  String get consentDecline => 'Nej tack';

  @override
  String get mealPlannerPantryAllAvailable => 'Alla ingredienser tillgängliga';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 saknas';
  }

  @override
  String get expirationDate => 'Utgångsdatum';

  @override
  String get notInformed => 'Inte inställt';

  @override
  String get skip => 'Hoppa';

  @override
  String get onboardingAiTitle => 'Chatta med Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hej! Jag är Kipi, din personliga shoppingassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Vad heter du?';

  @override
  String get onboardingAiNameHint => 'Skriv ditt namn...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Trevligt att träffa dig, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Vilken är din favoritmat?';

  @override
  String get onboardingAiFoodHint => 'till exempel Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Bra val! Här är vad jag skulle lägga till i din lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ser det här bra ut? Försök att skriva något annat!';

  @override
  String get onboardingAiReady =>
      'Stor! Du är redo att börja. Låt oss skapa ditt konto!';

  @override
  String get onboardingAiContinue => 'Fortsätt →';

  @override
  String get connectionError => 'Anslutningsfel';

  @override
  String connectionErrorDesc(String error) {
    return 'Kunde inte ansluta till servern. Kontrollera ditt internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Det gick inte att ladda listor';

  @override
  String get noListsFound => 'Inga listor hittades';

  @override
  String get backToToday => 'Tillbaka till idag';

  @override
  String get quickSuggestions => 'Snabba förslag';

  @override
  String get aiEnergyLow => 'Låg AI-energi';

  @override
  String get aiUnlockUnlimited => 'Lås upp obegränsad AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 idag';
  }

  @override
  String get aiSubscribeUnlimited => 'Prenumerera på obegränsad AI';

  @override
  String get unlockWithAd => 'Lås upp med Ad';

  @override
  String get conversationHistoryTitle => 'Konversationshistorik';

  @override
  String get noConversationsFound => 'Inga konversationer hittades';

  @override
  String get errorLoadingHistory => 'Det gick inte att ladda historiken';

  @override
  String get deleteConversationTitle => 'Ta bort konversation?';

  @override
  String get deleteConversationConfirm => 'Denna åtgärd kan inte ångras.';

  @override
  String get deleteConversation => 'Radera';

  @override
  String get subscription => 'Prenumeration';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Lås upp obegränsade listor, AI och mer';

  @override
  String get loadingSubscription => 'Laddar prenumeration...';

  @override
  String get errorLoadingSubscription =>
      'Det gick inte att läsa in prenumerationen';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Min profil';

  @override
  String get profileSubtitle => 'Personliga preferenser för AI-assistenten';

  @override
  String get customizeAiAssistant => 'Anpassa AI-assistent';

  @override
  String get assistantHistory => 'Assistenthistorik';

  @override
  String get assistantHistorySubtitle => 'Visa din konversationshistorik';

  @override
  String get manageCategories => 'Hantera kategorier';

  @override
  String get manageCategoriesSubtitle => 'Hantera objektkategorier';

  @override
  String get customizeAssistant => 'Anpassa';

  @override
  String get assistantName => 'Assistentens namn';

  @override
  String get chooseIcon => 'Välj ikon';

  @override
  String get profileSaved => 'Profilen har sparats!';

  @override
  String get errorSavingProfile => 'Fel när jag skulle spara: null';

  @override
  String get userProfile => 'Användarprofil';

  @override
  String get profileDescription =>
      'Berätta för oss dina personliga preferenser så att AI-assistenten kan föreslå personliga föremål och recept.';

  @override
  String get preferredMarket => 'Önskad marknad';

  @override
  String get preferredMarketHint => 'T.ex.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietrestriktioner';

  @override
  String get dietaryRestrictionsHint => 'T.ex.: vegan, vegetarisk, glutenfri';

  @override
  String get marketsToAvoid => 'Marknader att undvika';

  @override
  String get marketsToAvoidHint => 'Till exempel: Marknad Y, Marknad Z';

  @override
  String get observations => 'Anteckningar';

  @override
  String get observationsHint => 'Andra preferenser för assistenten';

  @override
  String get saveProfile => 'Spara profil';

  @override
  String get everythingReady => 'Allt klart!';

  @override
  String get youCompletedList => 'Du har slutfört listan!';

  @override
  String get selectCheaperAlternative =>
      'Välj ett billigare produktalternativ för att optimera kostnaden.';

  @override
  String get suggestedItems => 'Föreslagna föremål';

  @override
  String get swapped => 'Bytt';

  @override
  String get swap => 'Byta';

  @override
  String get chooseThemeColor => 'Välj Temafärg';

  @override
  String get manageCategoriesTitle => 'Hantera kategorier';

  @override
  String get categoryLimitReached =>
      'Begränsning av 10 kategorier på gratisversionen. Uppgradera till Pro!';

  @override
  String get deleteCategoryTitle => 'Ta bort kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Objekt i kategorin \"$category\" kommer att flyttas till \"Övriga\".\nFortsätta?';
  }

  @override
  String get deleteCategory => 'Radera';

  @override
  String get newCategoryDialog => 'Ny kategori';

  @override
  String get editCategoryDialog => 'Redigera kategori';

  @override
  String get categoryName => 'Kategorinamn';

  @override
  String get categoryNameHint => 'T.ex.: Kött';

  @override
  String get categoryColorLabel => 'Färg';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name har lagts till';
  }

  @override
  String get kipiQuickBarHint => 'Vad behöver du köpa?';

  @override
  String replaceItem(String item) {
    return 'Byt ut $item';
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
  String get onboardingHookHeadline => 'Glöm aldrig en matvara igen';

  @override
  String get onboardingGoalSaveMoney => 'Spara pengar';

  @override
  String get onboardingGoalNeverForget => 'Glöm aldrig saker';

  @override
  String get onboardingGoalFaster => 'Handla snabbare';

  @override
  String get onboardingGoalFamily => 'Ordna familjeshopping';

  @override
  String get onboardingGoalRecipes => 'Upptäck recept';

  @override
  String get onboardingGoalPantry => 'Spårskafferi';

  @override
  String get onboardingCommitmentsTitle => 'Vad är viktigt för dig?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Välj dina mål för att anpassa KipiList';

  @override
  String get onboardingCommitmentsCta => 'Låt oss gå!';

  @override
  String get onboardingPersonalizationNameLabel => 'Ditt namn';

  @override
  String get onboardingPersonalizationNameHint => 'Ange ditt namn';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Vad handlar du för?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Vem handlar du åt?';

  @override
  String get onboardingCategoryGrocery => 'Specerier';

  @override
  String get onboardingCategoryPharmacy => 'Apotek';

  @override
  String get onboardingCategoryRecipes => 'Recept';

  @override
  String get onboardingCategoryHome => 'Hem';

  @override
  String get onboardingCategoryPet => 'Sällskapsdjur';

  @override
  String get onboardingGroupSolo => 'Bara jag';

  @override
  String get onboardingGroupCouple => 'Par';

  @override
  String get onboardingGroupFamily => 'Familj';

  @override
  String get onboardingLoadingTitle => 'Förbereder din upplevelse...';

  @override
  String get onboardingLoadingStep1 => 'Analyserar dina preferenser...';

  @override
  String get onboardingLoadingStep2 => 'Konfigurerar AI-assistent...';

  @override
  String get onboardingLoadingStep3 => 'Nästan klar...';

  @override
  String get onboardingLoadingStat1Label => 'Artiklar katalogiserade';

  @override
  String get onboardingLoadingStat2Label => 'Användare hjälpte till';

  @override
  String get onboardingLoadingStat3Label => 'Minuter sparade';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spara på varje resa!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, glöm aldrig ett föremål!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, handla på halva tiden!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organisera familjeshopping!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, upptäck nya recept!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, spåra ditt skafferi perfekt!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Spara på varje resa!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Glöm aldrig ett föremål!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Handla på halva tiden!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Ordna familjeshopping!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Upptäck nya recept!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Spåra ditt skafferi perfekt!';

  @override
  String paywallPricePerDay(String price) {
    return 'Endast $price/dag — mindre än en kaffe';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Hoppa över nu';

  @override
  String get paywallTestimonial =>
      'AI organiserar min shopping på några sekunder. Jag sparar 20 min per resa.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Avbryt när som helst · Ingen kostnad förrän provperioden är slut';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hej $name! Vilken $category behöver du?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Vad $category behöver du?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Trevlig!';

  @override
  String get onboardingAiDemoChange => 'Ändra objekt';

  @override
  String get onboardingAiDemoOffer => 'Försök att skriva något annat!';

  @override
  String get onboardingAiDemoContinue => 'Fortsätta';

  @override
  String get onboardingAiDemoSlideHeadline => 'Din inköpslista, nu med AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Se hur Kipi bygger din fullständiga lista på några sekunder';

  @override
  String get onboardingAiDemoSlideCta => 'Jag vill ha det här! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Jag är värd för en grillfest 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Redo! Här är allt du behöver:';

  @override
  String get onboardingAiDemoSlideDone => 'Komplett lista på några sekunder ✨';

  @override
  String get onboardingPainTitle => 'Vad frustrerar dig mest?';

  @override
  String get onboardingPainSubtitle => 'Var ärlig – vi fixar var och en';

  @override
  String get onboardingPainCta => 'Ja, fixa det här åt mig →';

  @override
  String get onboardingPainForget => 'Jag glömmer saker i butiken';

  @override
  String get onboardingPainFamily => 'Min familj ser aldrig listan';

  @override
  String get onboardingPainOverspend => 'Jag går alltid över budget';

  @override
  String get onboardingPainRepeat => 'En resa räcker aldrig';

  @override
  String get aiWelcomeContent =>
      'Hej! 👋 Jag är **Kipi**, din personliga shopping- och receptassistent!\n\nJag är här för att hjälpa dig:\n🛒 **Ordna** din shopping automatiskt efter kategorier\n💰 **Spåra** din budget och ge dig tips för att spara pengar\n🍲 **Föreslå** läckra recept med det du redan har\n\nHur kan jag hjälpa dig idag? Du kan börja med att skapa din första lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Skapa min första lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, hjälp mig att skapa min första inköpslista';

  @override
  String get aiWelcomeSuggestSave => 'Hur sparar man pengar?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hur kan du hjälpa mig att spara pengar på matvaror?';

  @override
  String get suggestionMilk => 'Mjölk';

  @override
  String get suggestionBread => 'Bröd';

  @override
  String get suggestionEggs => 'Ägg';

  @override
  String get suggestionCoffee => 'Kaffe';

  @override
  String get suggestionRice => 'Ris';

  @override
  String get suggestionFruits => 'Frukter';
}
