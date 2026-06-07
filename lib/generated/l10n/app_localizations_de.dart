// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Einkaufsliste';

  @override
  String get lists => 'Listen';

  @override
  String get pantry => 'Vorrat';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Rezepte';

  @override
  String get navLists => 'Listen';

  @override
  String get navMealPlanner => 'Speisekarte';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get create => 'Erstellen';

  @override
  String get add => 'Hinzufügen';

  @override
  String get remove => 'Entfernen';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get copy => 'Kopieren';

  @override
  String get next => 'Nächste';

  @override
  String get retry => 'Wiederholen';

  @override
  String get regenerate => 'Neu generieren';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get close => 'Schließen';

  @override
  String get import => 'Importieren';

  @override
  String get rename => 'Umbenennen';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Leeren';

  @override
  String error(String message) {
    return 'Fehler: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fehler: $message';
  }

  @override
  String get purchaseError =>
      'Fehler bei der Kaufabwicklung. Bitte versuche es erneut.';

  @override
  String get restoreError =>
      'Fehler beim Wiederherstellen der Käufe. Bitte versuche es erneut.';

  @override
  String get loading => 'Laden...';

  @override
  String get fieldRequired => 'Pflichtfeld';

  @override
  String get addedFeedback => 'Hinzugefügt!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Verlassen Sie den Einkaufsmodus';

  @override
  String get exit => 'Ausfahrt';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausgewählt',
      one: '$count ausgewählt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geschätzt';

  @override
  String get alreadyPurchased => 'Bereits gekauft';

  @override
  String get clearList => 'Liste leeren';

  @override
  String get clearPurchased => 'Gekauftes leeren';

  @override
  String get share => 'Teilen';

  @override
  String get shareViaCode => 'Per Code teilen';

  @override
  String get importViaCode => 'Per Code importieren';

  @override
  String get listAssistant => 'Listen-Assistent';

  @override
  String get globalAssistant => 'Globaler Assistent';

  @override
  String get becomePremium => 'Premium werden';

  @override
  String get manageSubscription => 'Abonnement verwalten';

  @override
  String get completePurchase => 'Kauf abschließen';

  @override
  String get confirmClearList => 'Alle Artikel entfernen?';

  @override
  String get shareListTitle => 'Liste teilen';

  @override
  String get shareThisCode => 'Diesen Code teilen:';

  @override
  String get validForLimitedTime => 'Begrenzt gültig';

  @override
  String get importListTitle => 'Liste importieren';

  @override
  String get enterCodeHint => 'Code eingeben';

  @override
  String get confirmArchiveTitle => 'Kauf abschließen';

  @override
  String get confirmArchiveContent =>
      'Diesen Kauf abschließen und die Liste archivieren?';

  @override
  String get complete => 'Abschließen';

  @override
  String get listArchived => 'Liste erfolgreich archiviert!';

  @override
  String listAdded(String listName) {
    return '$listName hinzugefügt!';
  }

  @override
  String get buy => 'Kaufen';

  @override
  String get unmark => 'Markierung aufheben';

  @override
  String confirmDeleteItems(int count) {
    return '$count Artikel entfernen?';
  }

  @override
  String get confirmDeleteTitle => 'Bestätigen';

  @override
  String confirmContent(int count) {
    return '$count Artikel entfernen?';
  }

  @override
  String get archiveList => 'Liste archivieren';

  @override
  String get pantryAppBar => 'Vorrat';

  @override
  String get generateShoppingList => 'Einkaufsliste erstellen';

  @override
  String get pantryEmpty => 'Vorrat leer';

  @override
  String get pantryEmptySubtitle =>
      'Füge Produkte hinzu, die du zu Hause behalten möchtest';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit Artikel müssen gekauft werden';
  }

  @override
  String get noItemsToBuy => 'Keine Artikel müssen gekauft werden';

  @override
  String get newPantryList => 'Vorratseinkauf';

  @override
  String get newListTitle => 'Neue Einkaufsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count Artikel werden hinzugefügt';
  }

  @override
  String get listNameLabel => 'Listenname';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" mit $count Artikeln erstellt';
  }

  @override
  String get noTracking => 'Keine Verfolgung';

  @override
  String get markAsPurchased => 'Als gekauft markieren';

  @override
  String editPantryItem(String name) {
    return '$name bearbeiten';
  }

  @override
  String get idealQuantity => 'Ideale Menge';

  @override
  String get currentQuantity => 'Aktuelle Menge';

  @override
  String get consumed => 'Verbraucht';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name auf $quantity $unit aufgefüllt';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" aus dem Vorrat entfernen?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name bearbeiten';
  }

  @override
  String get settingsAppBar => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'Englisch';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Sprache wählen';

  @override
  String get searchLanguage => 'Sprache suchen...';

  @override
  String get currency => 'Währung';

  @override
  String get chooseCurrency => 'Wählen Sie Währung aus';

  @override
  String get searchCurrency => 'Währung suchen...';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get light => 'Hell';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dunkel';

  @override
  String get themeColor => 'Designfarbe';

  @override
  String get dynamicColors => 'Dynamische Farben';

  @override
  String get dynamicColorsSubtitle =>
      'Farben basierend auf Ihrem Hintergrundbild verwenden';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktivieren Sie dynamische Farben, damit die Designfarbe wirksam wird';

  @override
  String get finance => 'Finanzen';

  @override
  String get monthlyBudgetNav => 'Monatsbudget';

  @override
  String get budgetSubtitle => 'Verfolge deine monatlichen Ausgaben';

  @override
  String get data => 'Daten';

  @override
  String get backupNav => 'Sicherung';

  @override
  String get backupSubtitle => 'Exportiere oder importiere deine Daten';

  @override
  String get about => 'Über';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get backupTitle => 'Sicherung';

  @override
  String get backupPremiumDescription =>
      'Backup und Export sind eine Premium-Funktion';

  @override
  String get exportData => 'Daten exportieren';

  @override
  String get exportDataSubtitle => 'Alle Listen als JSON speichern';

  @override
  String get importData => 'Daten importieren';

  @override
  String get importDataSubtitle =>
      'Listen aus einer JSON-Datei wiederherstellen';

  @override
  String get importJsonTitle => 'JSON importieren';

  @override
  String get importJsonHint => 'Füge das Backup-JSON hier ein...';

  @override
  String get backupExported => 'Backup exportiert!';

  @override
  String get budgetAppBar => 'Monatsbudget';

  @override
  String get budgetPremiumLocked => 'Globales Monatsbudget ist Premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade zum Freischalten';

  @override
  String get noBudgetDefined => 'Kein Budget festgelegt';

  @override
  String totalEstimated(String amount) {
    return 'Gesamt geschätzt: $amount';
  }

  @override
  String get setBudgetButton => 'Budget festlegen';

  @override
  String get budgetLists => 'Listen';

  @override
  String get budgetValueLabel => 'Betrag';

  @override
  String get setBudgetTitle => 'Monatsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ausstehend';

  @override
  String get filterPurchased => 'Gekauft';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Artikel hinzufügen';

  @override
  String get itemName => 'Artikelname';

  @override
  String get quantityShort => 'Menge';

  @override
  String get unit => 'Einheit';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Geschätzter Preis';

  @override
  String get addItemPrice => 'Geschätzter Preis';

  @override
  String get editItem => 'Artikel bearbeiten';

  @override
  String get quantityFull => 'Menge';

  @override
  String get editItemPrice => 'Geschätzter Preis';

  @override
  String get addToPantry => 'Zum Vorrat hinzufügen';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" zu deinem Vorrat hinzufügen?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktname';

  @override
  String get idealQty => 'Ideale Menge';

  @override
  String get currentQty => 'Aktuelle Menge';

  @override
  String get trackStock => 'Lagerbestand verfolgen';

  @override
  String get trackStockActive => 'Erscheint in Einkaufsvorschlägen';

  @override
  String get trackStockInactive => 'Erzeugt keinen Einkaufsvorschlag';

  @override
  String get createListDialog => 'Liste erstellen';

  @override
  String get renameListDialog => 'Liste umbenennen';

  @override
  String get listHistory => 'Listenverlauf';

  @override
  String get myLists => 'Meine Listen';

  @override
  String get viewActive => 'Aktive anzeigen';

  @override
  String get viewHistory => 'Verlauf anzeigen';

  @override
  String get noArchivedLists => 'Keine archivierten Listen';

  @override
  String get noActiveLists => 'Keine aktiven Listen';

  @override
  String completedOn(String date) {
    return 'Abgeschlossen am $date';
  }

  @override
  String get sharedLabel => 'Geteilt';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get removeSharedTooltip => 'Entfernen';

  @override
  String get deleteListTitle => 'Liste löschen';

  @override
  String deleteListContent(String name) {
    return 'Bist du sicher, dass du \"$name\" löschen möchtest? Alle Artikel werden entfernt.';
  }

  @override
  String get removeSharedListTitle => 'Geteilte Liste entfernen';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" aus deinen Listen entfernen? Die Originalliste bleibt erhalten.';
  }

  @override
  String get createNewList => 'Neue Liste erstellen';

  @override
  String get aiAssistant => 'KI-Assistent';

  @override
  String get aiAssistantDescription =>
      'Hole dir mit unserem KI-Assistenten intelligente Vorschläge, Rezepte und persönliche Tipps.';

  @override
  String get generalAssistant => 'Allgemeiner Assistent';

  @override
  String get newChat => 'Neuer Chat';

  @override
  String get noHistory => 'Kein Chatverlauf';

  @override
  String get deleteSession => 'Chat löschen';

  @override
  String get deleteSessionConfirm =>
      'Sind Sie sicher, dass Sie diesen Chat löschen möchten? Die Nachrichten gehen dauerhaft verloren.';

  @override
  String get clearHistory => 'Verlauf löschen';

  @override
  String get clearHistoryConfirm =>
      'Alle Nachrichten in dieser Sitzung löschen?';

  @override
  String get chatHint => 'Gib deine Nachricht ein...';

  @override
  String get chatHintBlocked => 'Schalte KI frei, um zu chatten';

  @override
  String chatError(String error) {
    return 'Fehler beim Laden des Chats: $error';
  }

  @override
  String get listHelp => 'Wie kann ich mit deiner Liste helfen?';

  @override
  String get generalHelp => 'Wie kann ich dir heute beim Einkaufen helfen?';

  @override
  String get chatSubtitle =>
      'Frage nach Artikelvorschlägen, Rezepten oder Spartipps.';

  @override
  String get aiError =>
      'Entschuldigung, bei der Verarbeitung deiner Anfrage ist ein Fehler aufgetreten. Überprüfe deine Verbindung oder versuche es später erneut.';

  @override
  String get aiLimitAlmostReached => 'Fast keine KI-Nachrichten mehr';

  @override
  String get unlockAi => 'Schalte unbegrenzte KI frei';

  @override
  String get aiTeaserFallback =>
      'Abonnieren Sie Premium, um die vollständige Antwort freizuschalten und unbegrenzt KI-Tipps für Ihren Einkauf zu erhalten ...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Melde dich an, um\nPremium-Funktionen freizuschalten';

  @override
  String get signInGoogle => 'Mit Google anmelden';

  @override
  String get signInApple => 'Mit Apple anmelden';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get onboardingWelcomeTitle => 'Willkommen bei KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Der intelligenteste Weg, Ihren Einkauf zu organisieren und Geld zu sparen.';

  @override
  String get onboardingSetupTitle => 'Personalisieren Sie Ihr Erlebnis';

  @override
  String get onboardingSetupDesc =>
      'Wählen Sie, wie KipiList aussehen und für Sie arbeiten soll.';

  @override
  String get onboardingLoginTitle => 'Speichern Sie alles in der Cloud';

  @override
  String get onboardingLoginDesc =>
      'Ihre Daten werden auf allen Ihren Geräten synchronisiert';

  @override
  String get onboardingShareTitle => 'Teilen Sie es mit denen, die Sie lieben';

  @override
  String get onboardingShareDesc =>
      'Synchronisieren Sie Listen in Echtzeit mit Familie und Freunden';

  @override
  String get onboardingPremiumTitle => 'Schalten Sie alle Funktionen frei';

  @override
  String get onboardingPremiumSubtitle =>
      'Holen Sie das Beste aus Ihren Einkaufslisten heraus';

  @override
  String get onboardingAnnualBadge => 'Bestes Preis-Leistungs-Verhältnis';

  @override
  String get onboardingMonthlyLabel => 'Monatlich';

  @override
  String get onboardingAnnualLabel => 'Jährlich';

  @override
  String get onboardingViewAllPlans => 'Alle Pläne anzeigen';

  @override
  String get onboardingSubscribeCta => 'Abonnieren';

  @override
  String get onboardingCancelAnytime =>
      'Jederzeit kündbar. Keine Verpflichtung.';

  @override
  String get onboardingContinueAsGuest => 'Als Gast fortfahren';

  @override
  String get onboardingRestore => 'Wiederherstellen';

  @override
  String get onboardingRestoreDesc =>
      'Sie haben bereits ein Abonnement? Tippen Sie hier, um es wiederherzustellen.';

  @override
  String get onboardingExit => 'Ausfahrt';

  @override
  String get onboardingPersonalizationTitle => 'Lass uns dich kennenlernen';

  @override
  String get onboardingPersonalizationDesc =>
      'Wir nutzen dies, um Ihre Vorschläge zu personalisieren und das Einkaufen intelligenter zu gestalten.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Was ist dein Lieblingsessen?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'z.B. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Weitermachen';

  @override
  String get onboardingPersonalizationSkip => 'Überspringen Sie es vorerst';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Sagen Sie uns Ihr Lieblingsessen, um fortzufahren';

  @override
  String get settingsDefaultScreen => 'Standard-Startbildschirm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Wählen Sie zwischen Einkaufsliste oder KI-Chat';

  @override
  String get settingsScreenList => 'Einkaufsliste';

  @override
  String get settingsScreenChat => 'KI-Chat';

  @override
  String loginError(String error) {
    return 'Anmeldefehler: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Fehler beim Laden der Angebote. Versuchen Sie es erneut.';

  @override
  String get paywallPurchaseError =>
      'Der Kauf konnte nicht abgeschlossen werden. Versuchen Sie es erneut.';

  @override
  String get paywallRestoreError =>
      'Es wurde kein aktives Abonnement zum Wiederherstellen gefunden.';

  @override
  String paywallTrialDays(Object days) {
    return '$days TAGE KOSTENLOS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WOCHEN KOSTENLOS',
      one: '$count WOCHE KOSTENLOS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONATE KOSTENLOS',
      one: '$count MONAT KOSTENLOS',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Alles was Sie brauchen:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unbegrenzte Listen';

  @override
  String get paywallFeatureSmartAI => 'Intelligente KI';

  @override
  String get paywallFeatureExpenseControl => 'Kostenkontrolle';

  @override
  String get paywallFeatureSharing => 'Teilen';

  @override
  String get paywallBeforeAfterTitle => 'KI vorher und nachher:';

  @override
  String get paywallLabelCommon => 'Gemeinsam';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'Reis';

  @override
  String get paywallBeforeItem2 => 'Seife';

  @override
  String get paywallBeforeItem3 => 'Fleisch';

  @override
  String get paywallBeforeItem4 => 'brot';

  @override
  String get paywallAfterItem1 => 'Körner';

  @override
  String get paywallAfterItem2 => 'Reinigung';

  @override
  String get paywallAfterItem3 => 'Fleisch';

  @override
  String get paywallAfterItem4 => 'Bäckerei';

  @override
  String get paywallTestimonialsTitle => 'Was unsere Benutzer sagen:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'KI organisiert meinen Einkauf in Sekundenschnelle. Ich spare 20 Minuten pro Marktfahrt.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ich habe nie wieder einen Listenpunkt vergessen. Der KI-Chat ist sensationell!';

  @override
  String get paywallSocialProof => 'Über 2.400 Familien nutzen es';

  @override
  String get paywallCtaUnlock => 'Schalte PRO frei';

  @override
  String get paywallBestValue => 'Das beste Preis-Leistungs-Verhältnis';

  @override
  String get paywallMostPopular => 'AM BELIEBTESTEN';

  @override
  String get paywallSafeCheckout => 'Sichere Zahlung';

  @override
  String get paywallSelectPlan => 'Wählen Sie Ihren Plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAREN Sie $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Nur $price/Monat';
  }

  @override
  String get paywallPackageAnnual => 'Jahresplan';

  @override
  String get paywallPackageMonthly => 'Monatsplan';

  @override
  String get paywallPackageLifetime => 'Lebenslanger Zugriff';

  @override
  String get paywallCancelAnytime => 'Jederzeit kündbar. Keine Verpflichtung.';

  @override
  String get paywallPolicy => 'Datenschutzrichtlinie';

  @override
  String get paywallTerms => 'Nutzungsbedingungen';

  @override
  String get paywallRestore => 'Wiederherstellen';

  @override
  String get paywallHeroHeadline => 'Kipi AI immer an Ihrer Seite';

  @override
  String get paywallHeroSubtitle =>
      'Fügen Sie Elemente hinzu, organisieren Sie Listen und sparen Sie Zeit mit KI in Ihrer Tasche';

  @override
  String get paywallBenefit1Desc =>
      'Fügt Artikel rund um die Uhr hinzu, organisiert sie und schlägt sie vor';

  @override
  String get paywallBenefit2Desc => 'Keine Beschränkung auf 3 Listen';

  @override
  String get paywallBenefit3Desc => 'Spesenverfolgung und Familienlisten';

  @override
  String get paywallPackageMonthlyDesc => 'Volle Flexibilität';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kostenlos starten – $days Tage';
  }

  @override
  String get premiumUpgrade => 'Upgrade zum Freischalten';

  @override
  String get itemRemoved => 'Artikel entfernt';

  @override
  String get undo => 'Rückgängig';

  @override
  String get emptyListTitle => 'Deine Liste ist leer';

  @override
  String get emptyListSubtitle => 'Füge Artikel hinzu, um zu beginnen';

  @override
  String get noListFoundTitle => 'Keine Listen gefunden';

  @override
  String get noListFoundSubtitle =>
      'Erstelle deine erste Liste, um zu beginnen';

  @override
  String get createFirstList => 'Erste Liste erstellen';

  @override
  String get listBudgetTitle => 'Listenbudget';

  @override
  String get budgetAmountLabel => 'Budgetbetrag';

  @override
  String get removeBudget => 'Entfernen';

  @override
  String get prefUnlimitedLists => 'Unbegrenzte Listen';

  @override
  String get prefSharing => 'Listen teilen';

  @override
  String get prefFullHistory => 'Vollständiger Verlauf';

  @override
  String get prefExportData => 'Daten exportieren';

  @override
  String get prefCustomThemes => 'Benutzerdefinierte Designs';

  @override
  String get prefMonthlyBudget => 'Globales Monatsbudget';

  @override
  String get prefAIAssistant => 'Persönlicher KI-Assistent';

  @override
  String get prefUnlimitedPantry => 'Unbegrenzter Vorrat';

  @override
  String get prefInteractiveArtifacts => 'Interaktive KI-Artefakte';

  @override
  String get themeGreen => 'Grün';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Rot';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bernstein';

  @override
  String get themeTeal => 'Blaugrün';

  @override
  String get themeBrown => 'Braun';

  @override
  String get catFruits => 'Obst';

  @override
  String get catCleaning => 'Reinigung';

  @override
  String get catBeverages => 'Getränke';

  @override
  String get catBakery => 'Backwaren';

  @override
  String get catOthers => 'Sonstiges';

  @override
  String get unitPack => 'Packung';

  @override
  String get shareSubject => 'Einkaufsliste';

  @override
  String get monthlyBudgetTitle => 'Monatsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Liste löschen';

  @override
  String get pantryItemRemoved => 'Artikel entfernt';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit Artikel müssen gekauft werden',
      one: '$deficit Artikel muss gekauft werden',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Warenkorb gesamt';

  @override
  String get restockLabel => 'Auffüllen';

  @override
  String get advancedFeatures => 'Erweiterte Funktionen';

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String get deselectAll => 'Alle abwählen';

  @override
  String get monthlyBudgetAppBar => 'Monatsbudget';

  @override
  String get budgetEditTitle => 'Monatsbudget';

  @override
  String get budgetDashboardTitle => 'Armaturenbrett';

  @override
  String get selectListForDashboard =>
      'Wähle eine Liste aus, um das Dashboard anzuzeigen.';

  @override
  String get spendingAnalysis => 'Ausgabenanalyse';

  @override
  String get noItemsToAnalyze => 'Keine Artikel in der Liste zum Analysieren.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markiere Artikel als gekauft, um die Analyse zu sehen.';

  @override
  String get totalSpending => 'Gesamtausgaben';

  @override
  String get spendingByCategory => 'Ausgaben nach Kategorie';

  @override
  String get achievements => 'Erfolge';

  @override
  String get exportPdfExcel => 'PDF/Excel exportieren';

  @override
  String get exportPdf => 'Als PDF exportieren';

  @override
  String get exportExcel => 'Als Excel exportieren';

  @override
  String get organizingAi => 'ORGANISIERE MIT KI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nein';

  @override
  String get shareListText => 'Meine Einkaufsliste';

  @override
  String get emptyListAddItems =>
      'Deine Liste ist leer! Füge zuerst Artikel hinzu. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste wie von Zauberhand nach Kategorien organisiert! ✨';

  @override
  String get shoppingMode => 'Einkaufsmodus';

  @override
  String get smartOrganization => 'Intelligente Organisation';

  @override
  String get savings => 'Ersparnis';

  @override
  String get shoppingModeHeader => 'EINKAUFSMODUS';

  @override
  String get shareAsText => 'Artikel als formatierten Text senden';

  @override
  String get shareRealtime => 'Echtzeit-Synchronisation mit anderen Personen';

  @override
  String get quickRecipe => 'Schnelles Rezept';

  @override
  String get quickRecipePrompt =>
      'Schlage Rezepte mit Artikeln aus meiner Liste vor.';

  @override
  String get economyTips => 'Spartipps';

  @override
  String get economyTipsPrompt =>
      'Wie kann ich bei diesem Einkauf Geld sparen?';

  @override
  String get organizeAisles => 'Nach Gängen organisieren';

  @override
  String get organizeAislesPrompt => 'Nach Supermarkt-Gängen organisieren.';

  @override
  String get recipeSuggestion => 'Rezeptvorschlag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining Credits übrig';
  }

  @override
  String get addAllToList => 'Alle zur Liste hinzufügen';

  @override
  String get organizeByAisles => 'Nach Gängen organisieren';

  @override
  String get voiceTranscriptionTooltip => 'Spracheingabe (Kostenlos)';

  @override
  String get aiVoiceCommandTooltip => 'KI-Sprachbefehl (Premium)';

  @override
  String get voiceCommandTitle => 'KI-Sprachbefehl';

  @override
  String get voiceCommandContent =>
      'Sprich natürlich, um deine Liste zu verwalten!\n\nBeispiele:\n• \'Füge Brot, Käse und Schinken hinzu\'\n• \'Entferne Waschmittel\'\n• \'Ändere das Design zu Blau\'\n\nDies ist eine exklusive Funktion von KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pläne ansehen';

  @override
  String get itemsAddedSuccess => 'Artikel erfolgreich zur Liste hinzugefügt!';

  @override
  String get viewList => 'Liste anzeigen';

  @override
  String get feedbackTitle => 'Feedback senden';

  @override
  String get feedbackPrompt => 'Was möchtest du mitteilen?';

  @override
  String get feedbackTypeBug => 'Fehler melden';

  @override
  String get feedbackTypeBugHint => 'Etwas funktioniert nicht';

  @override
  String get feedbackTypeSuggestion => 'Vorschlag';

  @override
  String get feedbackTypeSuggestionHint => 'Idee zur Verbesserung der App';

  @override
  String get feedbackTypeTranslation => 'Übersetzungsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Falsche oder ungeschickte Übersetzung';

  @override
  String get feedbackTypeFeature => 'Funktionswunsch';

  @override
  String get feedbackTypeFeatureHint => 'Funktion, die du dir wünschst';

  @override
  String get feedbackTypeOther => 'Sonstiges';

  @override
  String get feedbackTypeOtherHint => 'Andere Art von Feedback';

  @override
  String get feedbackHint => 'Beschreibe dein Feedback ausführlich...';

  @override
  String get feedbackSend => 'Feedback senden';

  @override
  String get feedbackSending => 'Senden...';

  @override
  String get feedbackThankYou => 'Vielen Dank!';

  @override
  String get feedbackThankYouMessage =>
      'Dein Feedback wurde empfangen und hilft uns, KipiList für alle zu verbessern.';

  @override
  String get feedbackBack => 'Zurück';

  @override
  String feedbackError(String error) {
    return 'Fehler beim Senden: $error';
  }

  @override
  String get feedbackRetry => 'Erneut versuchen';

  @override
  String get feedbackSettingsTitle => 'Feedback senden';

  @override
  String get feedbackSettingsSubtitle =>
      'Fehler melden, Verbesserungen vorschlagen oder Übersetzungen korrigieren';

  @override
  String get aiEnergy => 'KI-Energie';

  @override
  String get searchInConversation => 'Suche im Gespräch...';

  @override
  String get noMessagesFound => 'Keine Nachrichten gefunden';

  @override
  String get suggestedQuestions => 'Vorgeschlagene Fragen:';

  @override
  String get shoppingAssistant => 'Einkaufsassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased von $total gekauft';
  }

  @override
  String get estimatedCost => 'Geschätzt';

  @override
  String get viewItems => 'Artikel ansehen';

  @override
  String get noItemsInList => 'Keine Elemente in der Liste';

  @override
  String get longHistoryWarning =>
      'Lange Geschichte: Der Assistent konzentriert sich auf die neuesten Nachrichten für eine bessere Leistung.';

  @override
  String get listening => 'Hören...';

  @override
  String get addDirectToList => 'Direkt zur Liste hinzufügen';

  @override
  String get unlockFullResponse => 'Schalten Sie die vollständige Antwort frei';

  @override
  String get switchList => 'Liste wechseln';

  @override
  String get marketMode => 'Marktmodus';

  @override
  String get backToChat => 'Zurück zum Chat';

  @override
  String get finishShopping => 'Beenden Sie den Einkauf';

  @override
  String get welcomeAiAssistant => 'Willkommen bei AI Assistant';

  @override
  String get createListToStartAi =>
      'Erstellen Sie eine Einkaufsliste, um den Smart Chat zu nutzen.';

  @override
  String get howCanIHelp => 'Wie kann ich helfen?';

  @override
  String get chatSubtitleShort =>
      'Fragen Sie nach Preisen, Rezepten, Organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekauft';
  }

  @override
  String get quickReplies => 'Schnelle Antworten:';

  @override
  String get voiceProFeature =>
      'Erweiterte Sprachbefehle sind Pro. Einfaches Diktat aktivieren...';

  @override
  String get viewPro => 'Pro ansehen';

  @override
  String get errorLoadingChat =>
      'Hoppla! Beim Laden des Chats ist ein Fehler aufgetreten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Überprüfen Sie Ihre Verbindung oder versuchen Sie es später noch einmal.';

  @override
  String get errorOscillation =>
      'Dies kann aufgrund von Netzwerkschwankungen oder vorübergehender Nichtverfügbarkeit auftreten. Bitte versuchen Sie es erneut.';

  @override
  String get activeListening => 'Aktives Zuhören';

  @override
  String get whatToDoWithItem => 'Was möchten Sie mit diesem Artikel machen?';

  @override
  String get viewDetails => 'Details anzeigen';

  @override
  String get openMenu => 'Menü öffnen';

  @override
  String get viewRecipe => 'Rezept anzeigen';

  @override
  String get recipeCreated => 'Rezept erstellt!';

  @override
  String get editRecipe => 'Bearbeiten';

  @override
  String get deleteRecipe => 'Löschen';

  @override
  String get deleteRecipeConfirm => 'Dieses Rezept löschen?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sind Sie sicher, dass Sie \"$recipeName\" löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String get ingredients => 'Zutaten';

  @override
  String get instructions => 'Anleitungen';

  @override
  String get prepTime => 'Vorbereitungszeit';

  @override
  String get recipeSaved => 'Rezept gespeichert!';

  @override
  String get noRecipesSaved => 'Keine Rezepte gespeichert';

  @override
  String get noRecipesSavedHint =>
      'Erstellen Sie Ihr erstes eigenes Rezept, indem Sie auf die Schaltfläche unten tippen.';

  @override
  String get myRecipes => 'Meine Rezepte';

  @override
  String get newRecipe => 'Neues Rezept';

  @override
  String get loadingRecipes => 'Ihre Rezepte werden geladen...';

  @override
  String get errorLoadingRecipes => 'Fehler beim Laden der Rezepte';

  @override
  String get addIngredient => 'Zutat hinzufügen';

  @override
  String get saveRecipe => 'Speichern';

  @override
  String get recipeName => 'Rezeptname';

  @override
  String get shortDescription => 'Kurzbeschreibung';

  @override
  String get prepTimeMinutes => 'Vorbereitungszeit (Minuten)';

  @override
  String get instructionsHint => 'Geben Sie einen Schritt pro Zeile ein...';

  @override
  String get addPhoto => 'Foto hinzufügen';

  @override
  String get imageUrlPlaceholder => 'Oder Bild-URL einfügen';

  @override
  String get tags => 'Schlagworte';

  @override
  String get recipeTags => 'Rezept-Tags';

  @override
  String get suggestedTags => 'Vorgeschlagen';

  @override
  String get searchRecipes => 'Rezepte suchen...';

  @override
  String get filterByTag => 'Nach Tag filtern';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Rezept gelöscht';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get editRecipeTitle => 'Rezept bearbeiten';

  @override
  String get newRecipeTitle => 'Neues Rezept';

  @override
  String get requiredField => 'Erforderlich';

  @override
  String get chooseImageSource => 'Bildquelle wählen';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'URL eingeben';

  @override
  String get recipeImage => 'Rezeptbild';

  @override
  String get removeImage => 'Bild entfernen';

  @override
  String get mealPlannerTitle => 'Wochenplaner';

  @override
  String get mealPlannerViewMonthly => 'Monatsansicht';

  @override
  String get mealPlannerViewWeekly => 'Wochenansicht';

  @override
  String get mealPlannerNoMeals => 'Keine Mahlzeiten geplant';

  @override
  String get mealPlannerNoMealsHint =>
      'Tippen Sie auf einen Tag, um eine Mahlzeit hinzuzufügen';

  @override
  String get mealPlannerLoading => 'Essensplan wird geladen...';

  @override
  String get mealPlannerError => 'Fehler beim Laden des Essensplans';

  @override
  String get mealPlannerAddMeal => 'Mahlzeit hinzufügen';

  @override
  String get mealPlannerEditMeal => 'Mahlzeit bearbeiten';

  @override
  String get mealPlannerDeleteMeal => 'Mahlzeit entfernen';

  @override
  String get mealPlannerMealDeleted => 'Mahlzeit entfernt';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Portionen',
      one: '$count Portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portionen';

  @override
  String get mealPlannerNoteLabel => 'Notiz (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Rezept auswählen';

  @override
  String get mealPlannerSearchRecipes => 'Rezepte suchen...';

  @override
  String get mealPlannerNoRecipesFound => 'Keine Rezepte gefunden';

  @override
  String get mealPlannerNoRecipesHint =>
      'Erstellen Sie zuerst Rezepte im Reiter Rezepte';

  @override
  String get mealPlannerSave => 'Zum Plan hinzufügen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count von $total Mahlzeiten geplant';
  }

  @override
  String get mealPlannerGenerateList => 'Einkaufsliste erstellen';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Alle Zutaten der geplanten Mahlzeiten dieser Woche zur Einkaufsliste hinzufügen?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count Zutat(en) zu Ihrer Liste hinzugefügt!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Keine Zutaten zum Hinzufügen. Planen Sie zuerst Mahlzeiten mit Rezepten.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Erstellen Sie zuerst eine Einkaufsliste.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frühstück';

  @override
  String get mealPlannerMealTypeLunch => 'Mittagessen';

  @override
  String get mealPlannerMealTypeDinner => 'Abendessen';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Nichts für diese Woche geplant';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tippen Sie auf einen beliebigen Tag, um mit der Planung Ihrer Mahlzeiten zu beginnen!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes Min.';
  }

  @override
  String get inviteToList => 'Zur Liste einladen';

  @override
  String get shareApp => 'App teilen';

  @override
  String get shareAppDescription => 'Laden Sie Freunde ein, KipiList zu nutzen';

  @override
  String shareReferralText(Object url) {
    return 'Ich verwende KipiList, um meinen Einkauf zu organisieren! Laden Sie es über meinen Link herunter und wir erhalten beide 7 Tage Premium kostenlos: $url';
  }

  @override
  String get shareReferralSubject =>
      'Sichern Sie sich 7 Tage KipiList Premium!';

  @override
  String get gestureHint =>
      'Zum Auswählen gedrückt halten. • Zum Entfernen wischen';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Meine Frequents';

  @override
  String get catalogSearchGlobal =>
      'Suchen Sie nach einem beliebigen Produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Suche in $category...';
  }

  @override
  String get catalogSortPopular => 'Am beliebtesten';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Staatsangehörige';

  @override
  String get catalogRareSection => 'kommt in Ihrem Land weniger häufig vor';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Fügen Sie $count $_temp0 hinzu →';
  }

  @override
  String get catalogProductNotFound =>
      'Produkt nicht gefunden, geben Sie den Namen ein';

  @override
  String get catalogBrowse => 'Katalog durchsuchen';
}

/// The translations for German, as used in Germany (`de_DE`).
class AppLocalizationsDeDe extends AppLocalizationsDe {
  AppLocalizationsDeDe() : super('de_DE');

  @override
  String get appTitle => 'Einkaufsliste';

  @override
  String get lists => 'Listen';

  @override
  String get pantry => 'Vorrat';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Rezepte';

  @override
  String get navLists => 'Listen';

  @override
  String get navMealPlanner => 'Speisekarte';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get create => 'Erstellen';

  @override
  String get add => 'Hinzufügen';

  @override
  String get remove => 'Entfernen';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get copy => 'Kopieren';

  @override
  String get next => 'Nächste';

  @override
  String get retry => 'Wiederholen';

  @override
  String get regenerate => 'Neu generieren';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get close => 'Schließen';

  @override
  String get import => 'Importieren';

  @override
  String get rename => 'Umbenennen';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get clear => 'Leeren';

  @override
  String error(String message) {
    return 'Fehler: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fehler: $message';
  }

  @override
  String get purchaseError =>
      'Fehler bei der Kaufabwicklung. Bitte versuche es erneut.';

  @override
  String get restoreError =>
      'Fehler beim Wiederherstellen der Käufe. Bitte versuche es erneut.';

  @override
  String get loading => 'Laden...';

  @override
  String get fieldRequired => 'Pflichtfeld';

  @override
  String get addedFeedback => 'Hinzugefügt!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Verlassen Sie den Einkaufsmodus';

  @override
  String get exit => 'Ausfahrt';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausgewählt',
      one: '$count ausgewählt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geschätzt';

  @override
  String get alreadyPurchased => 'Bereits gekauft';

  @override
  String get clearList => 'Liste leeren';

  @override
  String get clearPurchased => 'Gekauftes leeren';

  @override
  String get share => 'Teilen';

  @override
  String get shareViaCode => 'Per Code teilen';

  @override
  String get importViaCode => 'Per Code importieren';

  @override
  String get listAssistant => 'Listen-Assistent';

  @override
  String get globalAssistant => 'Globaler Assistent';

  @override
  String get becomePremium => 'Premium werden';

  @override
  String get manageSubscription => 'Abonnement verwalten';

  @override
  String get completePurchase => 'Kauf abschließen';

  @override
  String get confirmClearList => 'Alle Artikel entfernen?';

  @override
  String get shareListTitle => 'Liste teilen';

  @override
  String get shareThisCode => 'Diesen Code teilen:';

  @override
  String get validForLimitedTime => 'Begrenzt gültig';

  @override
  String get importListTitle => 'Liste importieren';

  @override
  String get enterCodeHint => 'Code eingeben';

  @override
  String get confirmArchiveTitle => 'Kauf abschließen';

  @override
  String get confirmArchiveContent =>
      'Diesen Kauf abschließen und die Liste archivieren?';

  @override
  String get complete => 'Abschließen';

  @override
  String get listArchived => 'Liste erfolgreich archiviert!';

  @override
  String listAdded(String listName) {
    return '$listName hinzugefügt!';
  }

  @override
  String get buy => 'Kaufen';

  @override
  String get unmark => 'Markierung aufheben';

  @override
  String confirmDeleteItems(int count) {
    return '$count Artikel entfernen?';
  }

  @override
  String get confirmDeleteTitle => 'Bestätigen';

  @override
  String confirmContent(int count) {
    return '$count Artikel entfernen?';
  }

  @override
  String get archiveList => 'Liste archivieren';

  @override
  String get pantryAppBar => 'Vorrat';

  @override
  String get generateShoppingList => 'Einkaufsliste erstellen';

  @override
  String get pantryEmpty => 'Vorrat leer';

  @override
  String get pantryEmptySubtitle =>
      'Füge Produkte hinzu, die du zu Hause behalten möchtest';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit Artikel müssen gekauft werden';
  }

  @override
  String get noItemsToBuy => 'Keine Artikel müssen gekauft werden';

  @override
  String get newPantryList => 'Vorratseinkauf';

  @override
  String get newListTitle => 'Neue Einkaufsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count Artikel werden hinzugefügt';
  }

  @override
  String get listNameLabel => 'Listenname';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" mit $count Artikeln erstellt';
  }

  @override
  String get noTracking => 'Keine Verfolgung';

  @override
  String get markAsPurchased => 'Als gekauft markieren';

  @override
  String editPantryItem(String name) {
    return '$name bearbeiten';
  }

  @override
  String get idealQuantity => 'Ideale Menge';

  @override
  String get currentQuantity => 'Aktuelle Menge';

  @override
  String get consumed => 'Verbraucht';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name auf $quantity $unit aufgefüllt';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" aus dem Vorrat entfernen?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name bearbeiten';
  }

  @override
  String get settingsAppBar => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'Englisch';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Sprache wählen';

  @override
  String get searchLanguage => 'Sprache suchen...';

  @override
  String get currency => 'Währung';

  @override
  String get chooseCurrency => 'Wählen Sie Währung aus';

  @override
  String get searchCurrency => 'Währung suchen...';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get light => 'Hell';

  @override
  String get system => 'System';

  @override
  String get dark => 'Dunkel';

  @override
  String get themeColor => 'Designfarbe';

  @override
  String get dynamicColors => 'Dynamische Farben';

  @override
  String get dynamicColorsSubtitle =>
      'Farben basierend auf Ihrem Hintergrundbild verwenden';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktivieren Sie dynamische Farben, damit die Designfarbe wirksam wird';

  @override
  String get finance => 'Finanzen';

  @override
  String get monthlyBudgetNav => 'Monatsbudget';

  @override
  String get budgetSubtitle => 'Verfolge deine monatlichen Ausgaben';

  @override
  String get data => 'Daten';

  @override
  String get backupNav => 'Sicherung';

  @override
  String get backupSubtitle => 'Exportiere oder importiere deine Daten';

  @override
  String get about => 'Über';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get backupTitle => 'Sicherung';

  @override
  String get backupPremiumDescription =>
      'Backup und Export sind eine Premium-Funktion';

  @override
  String get exportData => 'Daten exportieren';

  @override
  String get exportDataSubtitle => 'Alle Listen als JSON speichern';

  @override
  String get importData => 'Daten importieren';

  @override
  String get importDataSubtitle =>
      'Listen aus einer JSON-Datei wiederherstellen';

  @override
  String get importJsonTitle => 'JSON importieren';

  @override
  String get importJsonHint => 'Füge das Backup-JSON hier ein...';

  @override
  String get backupExported => 'Backup exportiert!';

  @override
  String get budgetAppBar => 'Monatsbudget';

  @override
  String get budgetPremiumLocked => 'Globales Monatsbudget ist Premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade zum Freischalten';

  @override
  String get noBudgetDefined => 'Kein Budget festgelegt';

  @override
  String totalEstimated(String amount) {
    return 'Gesamt geschätzt: $amount';
  }

  @override
  String get setBudgetButton => 'Budget festlegen';

  @override
  String get budgetLists => 'Listen';

  @override
  String get budgetValueLabel => 'Betrag';

  @override
  String get setBudgetTitle => 'Monatsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ausstehend';

  @override
  String get filterPurchased => 'Gekauft';

  @override
  String get sortName => 'Name';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Artikel hinzufügen';

  @override
  String get itemName => 'Artikelname';

  @override
  String get quantityShort => 'Menge';

  @override
  String get unit => 'Einheit';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Geschätzter Preis';

  @override
  String get addItemPrice => 'Geschätzter Preis';

  @override
  String get editItem => 'Artikel bearbeiten';

  @override
  String get quantityFull => 'Menge';

  @override
  String get editItemPrice => 'Geschätzter Preis';

  @override
  String get addToPantry => 'Zum Vorrat hinzufügen';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" zu deinem Vorrat hinzufügen?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktname';

  @override
  String get idealQty => 'Ideale Menge';

  @override
  String get currentQty => 'Aktuelle Menge';

  @override
  String get trackStock => 'Lagerbestand verfolgen';

  @override
  String get trackStockActive => 'Erscheint in Einkaufsvorschlägen';

  @override
  String get trackStockInactive => 'Erzeugt keinen Einkaufsvorschlag';

  @override
  String get createListDialog => 'Liste erstellen';

  @override
  String get renameListDialog => 'Liste umbenennen';

  @override
  String get listHistory => 'Listenverlauf';

  @override
  String get myLists => 'Meine Listen';

  @override
  String get viewActive => 'Aktive anzeigen';

  @override
  String get viewHistory => 'Verlauf anzeigen';

  @override
  String get noArchivedLists => 'Keine archivierten Listen';

  @override
  String get noActiveLists => 'Keine aktiven Listen';

  @override
  String completedOn(String date) {
    return 'Abgeschlossen am $date';
  }

  @override
  String get sharedLabel => 'Geteilt';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get removeSharedTooltip => 'Entfernen';

  @override
  String get deleteListTitle => 'Liste löschen';

  @override
  String deleteListContent(String name) {
    return 'Bist du sicher, dass du \"$name\" löschen möchtest? Alle Artikel werden entfernt.';
  }

  @override
  String get removeSharedListTitle => 'Geteilte Liste entfernen';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" aus deinen Listen entfernen? Die Originalliste bleibt erhalten.';
  }

  @override
  String get createNewList => 'Neue Liste erstellen';

  @override
  String get aiAssistant => 'KI-Assistent';

  @override
  String get aiAssistantDescription =>
      'Hole dir mit unserem KI-Assistenten intelligente Vorschläge, Rezepte und persönliche Tipps.';

  @override
  String get generalAssistant => 'Allgemeiner Assistent';

  @override
  String get newChat => 'Neuer Chat';

  @override
  String get noHistory => 'Kein Chatverlauf';

  @override
  String get deleteSession => 'Chat löschen';

  @override
  String get deleteSessionConfirm =>
      'Sind Sie sicher, dass Sie diesen Chat löschen möchten? Die Nachrichten gehen dauerhaft verloren.';

  @override
  String get clearHistory => 'Verlauf löschen';

  @override
  String get clearHistoryConfirm =>
      'Alle Nachrichten in dieser Sitzung löschen?';

  @override
  String get chatHint => 'Gib deine Nachricht ein...';

  @override
  String get chatHintBlocked => 'Schalte KI frei, um zu chatten';

  @override
  String chatError(String error) {
    return 'Fehler beim Laden des Chats: $error';
  }

  @override
  String get listHelp => 'Wie kann ich mit deiner Liste helfen?';

  @override
  String get generalHelp => 'Wie kann ich dir heute beim Einkaufen helfen?';

  @override
  String get chatSubtitle =>
      'Frage nach Artikelvorschlägen, Rezepten oder Spartipps.';

  @override
  String get aiError =>
      'Entschuldigung, bei der Verarbeitung deiner Anfrage ist ein Fehler aufgetreten. Überprüfe deine Verbindung oder versuche es später erneut.';

  @override
  String get aiLimitAlmostReached => 'Fast keine KI-Nachrichten mehr';

  @override
  String get unlockAi => 'Schalte unbegrenzte KI frei';

  @override
  String get aiTeaserFallback =>
      'Abonnieren Sie Premium, um die vollständige Antwort freizuschalten und unbegrenzt KI-Tipps für Ihren Einkauf zu erhalten ...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Melde dich an, um\nPremium-Funktionen freizuschalten';

  @override
  String get signInGoogle => 'Mit Google anmelden';

  @override
  String get signInApple => 'Mit Apple anmelden';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get onboardingWelcomeTitle => 'Willkommen bei KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Der intelligenteste Weg, Ihren Einkauf zu organisieren und Geld zu sparen.';

  @override
  String get onboardingSetupTitle => 'Personalisieren Sie Ihr Erlebnis';

  @override
  String get onboardingSetupDesc =>
      'Wählen Sie, wie KipiList aussehen und für Sie arbeiten soll.';

  @override
  String get onboardingLoginTitle => 'Speichern Sie alles in der Cloud';

  @override
  String get onboardingLoginDesc =>
      'Ihre Daten werden auf allen Ihren Geräten synchronisiert';

  @override
  String get onboardingShareTitle => 'Teilen Sie es mit denen, die Sie lieben';

  @override
  String get onboardingShareDesc =>
      'Synchronisieren Sie Listen in Echtzeit mit Familie und Freunden';

  @override
  String get onboardingPremiumTitle => 'Schalten Sie alle Funktionen frei';

  @override
  String get onboardingPremiumSubtitle =>
      'Holen Sie das Beste aus Ihren Einkaufslisten heraus';

  @override
  String get onboardingAnnualBadge => 'Bestes Preis-Leistungs-Verhältnis';

  @override
  String get onboardingMonthlyLabel => 'Monatlich';

  @override
  String get onboardingAnnualLabel => 'Jährlich';

  @override
  String get onboardingViewAllPlans => 'Alle Pläne anzeigen';

  @override
  String get onboardingSubscribeCta => 'Abonnieren';

  @override
  String get onboardingCancelAnytime =>
      'Jederzeit kündbar. Keine Verpflichtung.';

  @override
  String get onboardingContinueAsGuest => 'Als Gast fortfahren';

  @override
  String get onboardingRestore => 'Wiederherstellen';

  @override
  String get onboardingRestoreDesc =>
      'Sie haben bereits ein Abonnement? Tippen Sie hier, um es wiederherzustellen.';

  @override
  String get onboardingExit => 'Ausfahrt';

  @override
  String get onboardingPersonalizationTitle => 'Lass uns dich kennenlernen';

  @override
  String get onboardingPersonalizationDesc =>
      'Wir nutzen dies, um Ihre Vorschläge zu personalisieren und das Einkaufen intelligenter zu gestalten.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Was ist dein Lieblingsessen?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'z.B. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Weitermachen';

  @override
  String get onboardingPersonalizationSkip => 'Überspringen Sie es vorerst';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Sagen Sie uns Ihr Lieblingsessen, um fortzufahren';

  @override
  String get settingsDefaultScreen => 'Standard-Startbildschirm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Wählen Sie zwischen Einkaufsliste oder KI-Chat';

  @override
  String get settingsScreenList => 'Einkaufsliste';

  @override
  String get settingsScreenChat => 'KI-Chat';

  @override
  String loginError(String error) {
    return 'Anmeldefehler: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Fehler beim Laden der Angebote. Versuchen Sie es erneut.';

  @override
  String get paywallPurchaseError =>
      'Der Kauf konnte nicht abgeschlossen werden. Versuchen Sie es erneut.';

  @override
  String get paywallRestoreError =>
      'Es wurde kein aktives Abonnement zum Wiederherstellen gefunden.';

  @override
  String paywallTrialDays(Object days) {
    return '$days TAGE KOSTENLOS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WOCHEN KOSTENLOS',
      one: '$count WOCHE KOSTENLOS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONATE KOSTENLOS',
      one: '$count MONAT KOSTENLOS',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Alles was Sie brauchen:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unbegrenzte Listen';

  @override
  String get paywallFeatureSmartAI => 'Intelligente KI';

  @override
  String get paywallFeatureExpenseControl => 'Kostenkontrolle';

  @override
  String get paywallFeatureSharing => 'Teilen';

  @override
  String get paywallBeforeAfterTitle => 'KI vorher und nachher:';

  @override
  String get paywallLabelCommon => 'Gemeinsam';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'Reis';

  @override
  String get paywallBeforeItem2 => 'Seife';

  @override
  String get paywallBeforeItem3 => 'Fleisch';

  @override
  String get paywallBeforeItem4 => 'brot';

  @override
  String get paywallAfterItem1 => 'Körner';

  @override
  String get paywallAfterItem2 => 'Reinigung';

  @override
  String get paywallAfterItem3 => 'Fleisch';

  @override
  String get paywallAfterItem4 => 'Bäckerei';

  @override
  String get paywallTestimonialsTitle => 'Was unsere Benutzer sagen:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'KI organisiert meinen Einkauf in Sekundenschnelle. Ich spare 20 Minuten pro Marktfahrt.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ich habe nie wieder einen Listenpunkt vergessen. Der KI-Chat ist sensationell!';

  @override
  String get paywallSocialProof => 'Über 2.400 Familien nutzen es';

  @override
  String get paywallCtaUnlock => 'Schalte PRO frei';

  @override
  String get paywallBestValue => 'Das beste Preis-Leistungs-Verhältnis';

  @override
  String get paywallMostPopular => 'AM BELIEBTESTEN';

  @override
  String get paywallSafeCheckout => 'Sichere Zahlung';

  @override
  String get paywallSelectPlan => 'Wählen Sie Ihren Plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAREN Sie $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Nur $price/Monat';
  }

  @override
  String get paywallPackageAnnual => 'Jahresplan';

  @override
  String get paywallPackageMonthly => 'Monatsplan';

  @override
  String get paywallPackageLifetime => 'Lebenslanger Zugriff';

  @override
  String get paywallCancelAnytime => 'Jederzeit kündbar. Keine Verpflichtung.';

  @override
  String get paywallPolicy => 'Datenschutzrichtlinie';

  @override
  String get paywallTerms => 'Nutzungsbedingungen';

  @override
  String get paywallRestore => 'Wiederherstellen';

  @override
  String get paywallHeroHeadline => 'Kipi AI immer an Ihrer Seite';

  @override
  String get paywallHeroSubtitle =>
      'Fügen Sie Elemente hinzu, organisieren Sie Listen und sparen Sie Zeit mit KI in Ihrer Tasche';

  @override
  String get paywallBenefit1Desc =>
      'Fügt Artikel rund um die Uhr hinzu, organisiert sie und schlägt sie vor';

  @override
  String get paywallBenefit2Desc => 'Keine Beschränkung auf 3 Listen';

  @override
  String get paywallBenefit3Desc => 'Spesenverfolgung und Familienlisten';

  @override
  String get paywallPackageMonthlyDesc => 'Volle Flexibilität';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Kostenlos starten – $days Tage';
  }

  @override
  String get premiumUpgrade => 'Upgrade zum Freischalten';

  @override
  String get itemRemoved => 'Artikel entfernt';

  @override
  String get undo => 'Rückgängig';

  @override
  String get emptyListTitle => 'Deine Liste ist leer';

  @override
  String get emptyListSubtitle => 'Füge Artikel hinzu, um zu beginnen';

  @override
  String get noListFoundTitle => 'Keine Listen gefunden';

  @override
  String get noListFoundSubtitle =>
      'Erstelle deine erste Liste, um zu beginnen';

  @override
  String get createFirstList => 'Erste Liste erstellen';

  @override
  String get listBudgetTitle => 'Listenbudget';

  @override
  String get budgetAmountLabel => 'Budgetbetrag';

  @override
  String get removeBudget => 'Entfernen';

  @override
  String get prefUnlimitedLists => 'Unbegrenzte Listen';

  @override
  String get prefSharing => 'Listen teilen';

  @override
  String get prefFullHistory => 'Vollständiger Verlauf';

  @override
  String get prefExportData => 'Daten exportieren';

  @override
  String get prefCustomThemes => 'Benutzerdefinierte Designs';

  @override
  String get prefMonthlyBudget => 'Globales Monatsbudget';

  @override
  String get prefAIAssistant => 'Persönlicher KI-Assistent';

  @override
  String get prefUnlimitedPantry => 'Unbegrenzter Vorrat';

  @override
  String get prefInteractiveArtifacts => 'Interaktive KI-Artefakte';

  @override
  String get themeGreen => 'Grün';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Rot';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bernstein';

  @override
  String get themeTeal => 'Blaugrün';

  @override
  String get themeBrown => 'Braun';

  @override
  String get catFruits => 'Obst';

  @override
  String get catCleaning => 'Reinigung';

  @override
  String get catBeverages => 'Getränke';

  @override
  String get catBakery => 'Backwaren';

  @override
  String get catOthers => 'Sonstiges';

  @override
  String get unitPack => 'Packung';

  @override
  String get shareSubject => 'Einkaufsliste';

  @override
  String get monthlyBudgetTitle => 'Monatsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Liste löschen';

  @override
  String get pantryItemRemoved => 'Artikel entfernt';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit Artikel müssen gekauft werden',
      one: '$deficit Artikel muss gekauft werden',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Warenkorb gesamt';

  @override
  String get restockLabel => 'Auffüllen';

  @override
  String get advancedFeatures => 'Erweiterte Funktionen';

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String get deselectAll => 'Alle abwählen';

  @override
  String get monthlyBudgetAppBar => 'Monatsbudget';

  @override
  String get budgetEditTitle => 'Monatsbudget';

  @override
  String get budgetDashboardTitle => 'Armaturenbrett';

  @override
  String get selectListForDashboard =>
      'Wähle eine Liste aus, um das Dashboard anzuzeigen.';

  @override
  String get spendingAnalysis => 'Ausgabenanalyse';

  @override
  String get noItemsToAnalyze => 'Keine Artikel in der Liste zum Analysieren.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markiere Artikel als gekauft, um die Analyse zu sehen.';

  @override
  String get totalSpending => 'Gesamtausgaben';

  @override
  String get spendingByCategory => 'Ausgaben nach Kategorie';

  @override
  String get achievements => 'Erfolge';

  @override
  String get exportPdfExcel => 'PDF/Excel exportieren';

  @override
  String get exportPdf => 'Als PDF exportieren';

  @override
  String get exportExcel => 'Als Excel exportieren';

  @override
  String get organizingAi => 'ORGANISIERE MIT KI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nein';

  @override
  String get shareListText => 'Meine Einkaufsliste';

  @override
  String get emptyListAddItems =>
      'Deine Liste ist leer! Füge zuerst Artikel hinzu. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste wie von Zauberhand nach Kategorien organisiert! ✨';

  @override
  String get shoppingMode => 'Einkaufsmodus';

  @override
  String get smartOrganization => 'Intelligente Organisation';

  @override
  String get savings => 'Ersparnis';

  @override
  String get shoppingModeHeader => 'EINKAUFSMODUS';

  @override
  String get shareAsText => 'Artikel als formatierten Text senden';

  @override
  String get shareRealtime => 'Echtzeit-Synchronisation mit anderen Personen';

  @override
  String get quickRecipe => 'Schnelles Rezept';

  @override
  String get quickRecipePrompt =>
      'Schlage Rezepte mit Artikeln aus meiner Liste vor.';

  @override
  String get economyTips => 'Spartipps';

  @override
  String get economyTipsPrompt =>
      'Wie kann ich bei diesem Einkauf Geld sparen?';

  @override
  String get organizeAisles => 'Nach Gängen organisieren';

  @override
  String get organizeAislesPrompt => 'Nach Supermarkt-Gängen organisieren.';

  @override
  String get recipeSuggestion => 'Rezeptvorschlag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining Credits übrig';
  }

  @override
  String get addAllToList => 'Alle zur Liste hinzufügen';

  @override
  String get organizeByAisles => 'Nach Gängen organisieren';

  @override
  String get voiceTranscriptionTooltip => 'Spracheingabe (Kostenlos)';

  @override
  String get aiVoiceCommandTooltip => 'KI-Sprachbefehl (Premium)';

  @override
  String get voiceCommandTitle => 'KI-Sprachbefehl';

  @override
  String get voiceCommandContent =>
      'Sprich natürlich, um deine Liste zu verwalten!\n\nBeispiele:\n• \'Füge Brot, Käse und Schinken hinzu\'\n• \'Entferne Waschmittel\'\n• \'Ändere das Design zu Blau\'\n\nDies ist eine exklusive Funktion von KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pläne ansehen';

  @override
  String get itemsAddedSuccess => 'Artikel erfolgreich zur Liste hinzugefügt!';

  @override
  String get viewList => 'Liste anzeigen';

  @override
  String get feedbackTitle => 'Feedback senden';

  @override
  String get feedbackPrompt => 'Was möchtest du mitteilen?';

  @override
  String get feedbackTypeBug => 'Fehler melden';

  @override
  String get feedbackTypeBugHint => 'Etwas funktioniert nicht';

  @override
  String get feedbackTypeSuggestion => 'Vorschlag';

  @override
  String get feedbackTypeSuggestionHint => 'Idee zur Verbesserung der App';

  @override
  String get feedbackTypeTranslation => 'Übersetzungsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Falsche oder unpassende Übersetzung';

  @override
  String get feedbackTypeFeature => 'Funktionswunsch';

  @override
  String get feedbackTypeFeatureHint => 'Funktion, die du dir wünschst';

  @override
  String get feedbackTypeOther => 'Sonstiges';

  @override
  String get feedbackTypeOtherHint => 'Andere Art von Feedback';

  @override
  String get feedbackHint => 'Beschreibe dein Feedback im Detail...';

  @override
  String get feedbackSend => 'Feedback senden';

  @override
  String get feedbackSending => 'Wird gesendet...';

  @override
  String get feedbackThankYou => 'Vielen Dank!';

  @override
  String get feedbackThankYouMessage =>
      'Dein Feedback wurde empfangen und hilft uns, KipiList für alle zu verbessern.';

  @override
  String get feedbackBack => 'Zurück';

  @override
  String feedbackError(String error) {
    return 'Fehler beim Senden: $error';
  }

  @override
  String get feedbackRetry => 'Erneut versuchen';

  @override
  String get feedbackSettingsTitle => 'Feedback senden';

  @override
  String get feedbackSettingsSubtitle =>
      'Fehler melden, Verbesserungen vorschlagen oder Übersetzungen korrigieren';

  @override
  String get aiEnergy => 'KI-Energie';

  @override
  String get searchInConversation => 'Suche im Gespräch...';

  @override
  String get noMessagesFound => 'Keine Nachrichten gefunden';

  @override
  String get suggestedQuestions => 'Vorgeschlagene Fragen:';

  @override
  String get shoppingAssistant => 'Einkaufsassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased von $total gekauft';
  }

  @override
  String get estimatedCost => 'Geschätzt';

  @override
  String get viewItems => 'Artikel ansehen';

  @override
  String get noItemsInList => 'Keine Elemente in der Liste';

  @override
  String get longHistoryWarning =>
      'Lange Geschichte: Der Assistent konzentriert sich auf die neuesten Nachrichten für eine bessere Leistung.';

  @override
  String get listening => 'Hören...';

  @override
  String get addDirectToList => 'Direkt zur Liste hinzufügen';

  @override
  String get unlockFullResponse => 'Schalten Sie die vollständige Antwort frei';

  @override
  String get switchList => 'Liste wechseln';

  @override
  String get marketMode => 'Marktmodus';

  @override
  String get backToChat => 'Zurück zum Chat';

  @override
  String get finishShopping => 'Beenden Sie den Einkauf';

  @override
  String get welcomeAiAssistant => 'Willkommen bei AI Assistant';

  @override
  String get createListToStartAi =>
      'Erstellen Sie eine Einkaufsliste, um den Smart Chat zu nutzen.';

  @override
  String get howCanIHelp => 'Wie kann ich helfen?';

  @override
  String get chatSubtitleShort =>
      'Fragen Sie nach Preisen, Rezepten, Organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekauft';
  }

  @override
  String get quickReplies => 'Schnelle Antworten:';

  @override
  String get voiceProFeature =>
      'Erweiterte Sprachbefehle sind Pro. Einfaches Diktat aktivieren...';

  @override
  String get viewPro => 'Pro ansehen';

  @override
  String get errorLoadingChat =>
      'Hoppla! Beim Laden des Chats ist ein Fehler aufgetreten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Überprüfen Sie Ihre Verbindung oder versuchen Sie es später noch einmal.';

  @override
  String get errorOscillation =>
      'Dies kann aufgrund von Netzwerkschwankungen oder vorübergehender Nichtverfügbarkeit auftreten. Bitte versuchen Sie es erneut.';

  @override
  String get activeListening => 'Aktives Zuhören';

  @override
  String get whatToDoWithItem => 'Was möchten Sie mit diesem Artikel machen?';

  @override
  String get viewDetails => 'Details anzeigen';

  @override
  String get openMenu => 'Menü öffnen';

  @override
  String get viewRecipe => 'Rezept anzeigen';

  @override
  String get recipeCreated => 'Rezept erstellt!';

  @override
  String get editRecipe => 'Bearbeiten';

  @override
  String get deleteRecipe => 'Löschen';

  @override
  String get deleteRecipeConfirm => 'Dieses Rezept löschen?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sind Sie sicher, dass Sie \"$recipeName\" löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String get ingredients => 'Zutaten';

  @override
  String get instructions => 'Anleitungen';

  @override
  String get prepTime => 'Vorbereitungszeit';

  @override
  String get recipeSaved => 'Rezept gespeichert!';

  @override
  String get noRecipesSaved => 'Keine Rezepte gespeichert';

  @override
  String get noRecipesSavedHint =>
      'Erstellen Sie Ihr erstes eigenes Rezept, indem Sie auf die Schaltfläche unten tippen.';

  @override
  String get myRecipes => 'Meine Rezepte';

  @override
  String get newRecipe => 'Neues Rezept';

  @override
  String get loadingRecipes => 'Ihre Rezepte werden geladen...';

  @override
  String get errorLoadingRecipes => 'Fehler beim Laden der Rezepte';

  @override
  String get addIngredient => 'Zutat hinzufügen';

  @override
  String get saveRecipe => 'Speichern';

  @override
  String get recipeName => 'Rezeptname';

  @override
  String get shortDescription => 'Kurzbeschreibung';

  @override
  String get prepTimeMinutes => 'Vorbereitungszeit (Minuten)';

  @override
  String get instructionsHint => 'Geben Sie einen Schritt pro Zeile ein...';

  @override
  String get addPhoto => 'Foto hinzufügen';

  @override
  String get imageUrlPlaceholder => 'Oder Bild-URL einfügen';

  @override
  String get tags => 'Schlagworte';

  @override
  String get recipeTags => 'Rezept-Tags';

  @override
  String get suggestedTags => 'Vorgeschlagen';

  @override
  String get searchRecipes => 'Rezepte suchen...';

  @override
  String get filterByTag => 'Nach Tag filtern';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Rezept gelöscht';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get editRecipeTitle => 'Rezept bearbeiten';

  @override
  String get newRecipeTitle => 'Neues Rezept';

  @override
  String get requiredField => 'Erforderlich';

  @override
  String get chooseImageSource => 'Bildquelle wählen';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'URL eingeben';

  @override
  String get recipeImage => 'Rezeptbild';

  @override
  String get removeImage => 'Bild entfernen';

  @override
  String get mealPlannerTitle => 'Wochenplaner';

  @override
  String get mealPlannerViewMonthly => 'Monatsansicht';

  @override
  String get mealPlannerViewWeekly => 'Wochenansicht';

  @override
  String get mealPlannerNoMeals => 'Keine Mahlzeiten geplant';

  @override
  String get mealPlannerNoMealsHint =>
      'Tippen Sie auf einen Tag, um eine Mahlzeit hinzuzufügen';

  @override
  String get mealPlannerLoading => 'Essensplan wird geladen...';

  @override
  String get mealPlannerError => 'Fehler beim Laden des Essensplans';

  @override
  String get mealPlannerAddMeal => 'Mahlzeit hinzufügen';

  @override
  String get mealPlannerEditMeal => 'Mahlzeit bearbeiten';

  @override
  String get mealPlannerDeleteMeal => 'Mahlzeit entfernen';

  @override
  String get mealPlannerMealDeleted => 'Mahlzeit entfernt';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Portionen',
      one: '$count Portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portionen';

  @override
  String get mealPlannerNoteLabel => 'Notiz (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Rezept auswählen';

  @override
  String get mealPlannerSearchRecipes => 'Rezepte suchen...';

  @override
  String get mealPlannerNoRecipesFound => 'Keine Rezepte gefunden';

  @override
  String get mealPlannerNoRecipesHint =>
      'Erstellen Sie zuerst Rezepte im Reiter Rezepte';

  @override
  String get mealPlannerSave => 'Zum Plan hinzufügen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count von $total Mahlzeiten geplant';
  }

  @override
  String get mealPlannerGenerateList => 'Einkaufsliste erstellen';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Alle Zutaten der geplanten Mahlzeiten dieser Woche zur Einkaufsliste hinzufügen?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count Zutat(en) zu Ihrer Liste hinzugefügt!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Keine Zutaten zum Hinzufügen. Planen Sie zuerst Mahlzeiten mit Rezepten.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Erstellen Sie zuerst eine Einkaufsliste.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frühstück';

  @override
  String get mealPlannerMealTypeLunch => 'Mittagessen';

  @override
  String get mealPlannerMealTypeDinner => 'Abendessen';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Nichts für diese Woche geplant';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tippen Sie auf einen beliebigen Tag, um mit der Planung Ihrer Mahlzeiten zu beginnen!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes Min.';
  }

  @override
  String get inviteToList => 'Zur Liste einladen';

  @override
  String get shareApp => 'App teilen';

  @override
  String get shareAppDescription => 'Laden Sie Freunde ein, KipiList zu nutzen';

  @override
  String shareReferralText(Object url) {
    return 'Ich verwende KipiList, um meinen Einkauf zu organisieren! Laden Sie es über meinen Link herunter und wir erhalten beide 7 Tage Premium kostenlos: $url';
  }

  @override
  String get shareReferralSubject =>
      'Sichern Sie sich 7 Tage KipiList Premium!';

  @override
  String get gestureHint =>
      'Zum Auswählen gedrückt halten. • Zum Entfernen wischen';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Meine Frequents';

  @override
  String get catalogSearchGlobal =>
      'Suchen Sie nach einem beliebigen Produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Suche in $category...';
  }

  @override
  String get catalogSortPopular => 'Am beliebtesten';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Staatsangehörige';

  @override
  String get catalogRareSection => 'kommt in Ihrem Land weniger häufig vor';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Fügen Sie $count $_temp0 hinzu →';
  }

  @override
  String get catalogProductNotFound =>
      'Produkt nicht gefunden, geben Sie den Namen ein';

  @override
  String get catalogBrowse => 'Katalog durchsuchen';
}
