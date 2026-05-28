// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Lista della Spesa';

  @override
  String get lists => 'Liste';

  @override
  String get pantry => 'Dispensa';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get create => 'Crea';

  @override
  String get add => 'Aggiungi';

  @override
  String get remove => 'Rimuovi';

  @override
  String get delete => 'Elimina';

  @override
  String get edit => 'Modifica';

  @override
  String get copy => 'Copia';

  @override
  String get retry => 'Riprova';

  @override
  String get regenerate => 'Rigenera';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get confirm => 'Conferma';

  @override
  String get close => 'Chiudi';

  @override
  String get import => 'Importa';

  @override
  String get rename => 'Rinomina';

  @override
  String get upgrade => 'Aggiorna';

  @override
  String get clear => 'Cancella';

  @override
  String error(String message) {
    return 'Errore: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errore: $message';
  }

  @override
  String get purchaseError =>
      'Errore durante l\'elaborazione dell\'acquisto. Riprova.';

  @override
  String get restoreError =>
      'Errore durante il ripristino degli acquisti. Riprova.';

  @override
  String get loading => 'Caricamento...';

  @override
  String get fieldRequired => 'Campo obbligatorio';

  @override
  String get addedFeedback => 'Aggiunto!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selezionati',
      one: '$count selezionato',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Stimato';

  @override
  String get alreadyPurchased => 'Già acquistato';

  @override
  String get clearList => 'Cancella lista';

  @override
  String get clearPurchased => 'Cancella acquistati';

  @override
  String get share => 'Condividi';

  @override
  String get shareViaCode => 'Condividi tramite codice';

  @override
  String get importViaCode => 'Importa tramite codice';

  @override
  String get listAssistant => 'Assistente lista';

  @override
  String get globalAssistant => 'Assistente globale';

  @override
  String get becomePremium => 'Diventa Premium';

  @override
  String get manageSubscription => 'Gestisci abbonamento';

  @override
  String get completePurchase => 'Completa acquisto';

  @override
  String get confirmClearList => 'Rimuovere tutti gli elementi?';

  @override
  String get shareListTitle => 'Condividi Lista';

  @override
  String get shareThisCode => 'Condividi questo codice:';

  @override
  String get validForLimitedTime => 'Valido per tempo limitato';

  @override
  String get importListTitle => 'Importa Lista';

  @override
  String get enterCodeHint => 'Inserisci il codice';

  @override
  String get confirmArchiveTitle => 'Completa Acquisto';

  @override
  String get confirmArchiveContent =>
      'Completare questo acquisto e archiviare la lista?';

  @override
  String get complete => 'Completa';

  @override
  String get listArchived => 'Lista archiviata con successo!';

  @override
  String listAdded(String listName) {
    return '$listName aggiunta!';
  }

  @override
  String get buy => 'Acquista';

  @override
  String get unmark => 'Deseleziona';

  @override
  String confirmDeleteItems(int count) {
    return 'Rimuovere $count elemento/i?';
  }

  @override
  String get confirmDeleteTitle => 'Conferma';

  @override
  String confirmContent(int count) {
    return 'Rimuovere $count elemento/i?';
  }

  @override
  String get archiveList => 'Archivia lista';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Genera lista della spesa';

  @override
  String get pantryEmpty => 'Dispensa vuota';

  @override
  String get pantryEmptySubtitle =>
      'Aggiungi i prodotti che vuoi tenere in casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit articolo/i da acquistare';
  }

  @override
  String get noItemsToBuy => 'Nessun articolo da acquistare';

  @override
  String get newPantryList => 'Spesa Dispensa';

  @override
  String get newListTitle => 'Nuova Lista della Spesa';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elemento/i verranno aggiunti';
  }

  @override
  String get listNameLabel => 'Nome lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creata con $count elementi';
  }

  @override
  String get noTracking => 'Nessun monitoraggio';

  @override
  String get markAsPurchased => 'Segna come acquistato';

  @override
  String editPantryItem(String name) {
    return 'Modifica $name';
  }

  @override
  String get idealQuantity => 'Quantità ideale';

  @override
  String get currentQuantity => 'Quantità attuale';

  @override
  String get consumed => 'Consumato';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name riassortito a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Rimuovere \"$name\" dalla dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifica $name';
  }

  @override
  String get settingsAppBar => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predefinito sistema';

  @override
  String get chooseLanguage => 'Seleziona Lingua';

  @override
  String get searchLanguage => 'Cerca lingua...';

  @override
  String get appearance => 'Aspetto';

  @override
  String get light => 'Chiaro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Scuro';

  @override
  String get themeColor => 'Colore tema';

  @override
  String get dynamicColors => 'Colori dinamici';

  @override
  String get dynamicColorsSubtitle => 'Usa i colori basati sul tuo sfondo';

  @override
  String get finance => 'Finanze';

  @override
  String get monthlyBudgetNav => 'Budget mensile';

  @override
  String get budgetSubtitle => 'Monitora le tue spese mensili';

  @override
  String get data => 'Dati';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Esporta o importa i tuoi dati';

  @override
  String get about => 'Informazioni';

  @override
  String get version => 'Versione';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Termini di utilizzo';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup ed esportazione sono funzionalità premium';

  @override
  String get exportData => 'Esporta dati';

  @override
  String get exportDataSubtitle => 'Salva tutte le liste come JSON';

  @override
  String get importData => 'Importa dati';

  @override
  String get importDataSubtitle => 'Ripristina liste da un JSON';

  @override
  String get importJsonTitle => 'Importa JSON';

  @override
  String get importJsonHint => 'Incolla qui il JSON del backup...';

  @override
  String get backupExported => 'Backup esportato!';

  @override
  String get budgetAppBar => 'Budget Mensile';

  @override
  String get budgetPremiumLocked => 'Il budget mensile globale è premium';

  @override
  String get budgetUpgradePrompt => 'Aggiorna per sbloccare';

  @override
  String get noBudgetDefined => 'Nessun budget impostato';

  @override
  String totalEstimated(String amount) {
    return 'Totale stimato: $amount';
  }

  @override
  String get setBudgetButton => 'Imposta budget';

  @override
  String get budgetLists => 'Liste';

  @override
  String get budgetValueLabel => 'Importo';

  @override
  String get setBudgetTitle => 'Budget Mensile';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tutti';

  @override
  String get filterPending => 'In sospeso';

  @override
  String get filterPurchased => 'Acquistati';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manuale';

  @override
  String get addItem => 'Aggiungi Elemento';

  @override
  String get itemName => 'Nome elemento';

  @override
  String get quantityShort => 'Qtà';

  @override
  String get unit => 'Unità';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Prezzo stimato';

  @override
  String get addItemPrice => 'Prezzo stimato';

  @override
  String get editItem => 'Modifica Elemento';

  @override
  String get quantityFull => 'Quantità';

  @override
  String get editItemPrice => 'Prezzo stimato';

  @override
  String get addToPantry => 'Aggiungi alla Dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Aggiungere \"$name\" alla tua dispensa?';
  }

  @override
  String get yes => 'Sì';

  @override
  String get productName => 'Nome prodotto';

  @override
  String get idealQty => 'Qtà ideale';

  @override
  String get currentQty => 'Qtà attuale';

  @override
  String get trackStock => 'Traccia scorte';

  @override
  String get trackStockActive => 'Appare nei suggerimenti di acquisto';

  @override
  String get trackStockInactive => 'Non genera suggerimenti di acquisto';

  @override
  String get createListDialog => 'Crea Lista';

  @override
  String get renameListDialog => 'Rinomina Lista';

  @override
  String get listHistory => 'Cronologia Liste';

  @override
  String get myLists => 'Le Mie Liste';

  @override
  String get viewActive => 'Vedi Attive';

  @override
  String get viewHistory => 'Vedi Cronologia';

  @override
  String get noArchivedLists => 'Nessuna lista archiviata';

  @override
  String get noActiveLists => 'Nessuna lista attiva';

  @override
  String completedOn(String date) {
    return 'Completata il $date';
  }

  @override
  String get sharedLabel => 'Condivisa';

  @override
  String get restore => 'Ripristina';

  @override
  String get removeSharedTooltip => 'Rimuovi';

  @override
  String get deleteListTitle => 'Elimina lista';

  @override
  String deleteListContent(String name) {
    return 'Sei sicuro di voler eliminare \"$name\"? Tutti gli elementi verranno rimossi.';
  }

  @override
  String get removeSharedListTitle => 'Rimuovi lista condivisa';

  @override
  String removeSharedListContent(String name) {
    return 'Rimuovere \"$name\" dalle tue liste? La lista originale non verrà modificata.';
  }

  @override
  String get createNewList => 'Crea nuova lista';

  @override
  String get aiAssistant => 'Assistente AI';

  @override
  String get aiAssistantDescription =>
      'Ottieni suggerimenti intelligenti, ricette e consigli personalizzati con il nostro assistente AI.';

  @override
  String get generalAssistant => 'Assistente Generale';

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
  String get clearHistory => 'Cancella Cronologia';

  @override
  String get clearHistoryConfirm =>
      'Cancellare tutti i messaggi in questa sessione?';

  @override
  String get chatHint => 'Scrivi il tuo messaggio...';

  @override
  String chatError(String error) {
    return 'Errore nel caricamento della chat: $error';
  }

  @override
  String get listHelp => 'Come posso aiutarti con la tua lista?';

  @override
  String get generalHelp => 'Come posso aiutarti con la spesa oggi?';

  @override
  String get chatSubtitle =>
      'Chiedi suggerimenti, ricette o consigli per risparmiare.';

  @override
  String get aiError =>
      'Spiacenti, si è verificato un errore nell\'elaborazione della richiesta. Controlla la connessione o riprova più tardi.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Accedi per sbloccare\nle funzionalità premium';

  @override
  String get signInGoogle => 'Accedi con Google';

  @override
  String get signInApple => 'Accedi con Apple';

  @override
  String get continueAsGuest => 'Continua come ospite';

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
    return 'Errore di accesso: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Aggiorna per sbloccare';

  @override
  String get itemRemoved => 'Elemento rimosso';

  @override
  String get undo => 'Annulla';

  @override
  String get emptyListTitle => 'La tua lista è vuota';

  @override
  String get emptyListSubtitle => 'Aggiungi elementi per iniziare';

  @override
  String get noListFoundTitle => 'Nessuna lista trovata';

  @override
  String get noListFoundSubtitle => 'Crea la tua prima lista per iniziare';

  @override
  String get createFirstList => 'Crea Prima Lista';

  @override
  String get listBudgetTitle => 'Budget Lista';

  @override
  String get budgetAmountLabel => 'Importo budget';

  @override
  String get removeBudget => 'Rimuovi';

  @override
  String get prefUnlimitedLists => 'Liste illimitate';

  @override
  String get prefSharing => 'Condividi liste';

  @override
  String get prefFullHistory => 'Cronologia completa';

  @override
  String get prefExportData => 'Esporta dati';

  @override
  String get prefCustomThemes => 'Temi personalizzati';

  @override
  String get prefMonthlyBudget => 'Budget mensile globale';

  @override
  String get prefAIAssistant => 'Assistente AI personale';

  @override
  String get prefUnlimitedPantry => 'Dispensa illimitata';

  @override
  String get prefInteractiveArtifacts => 'Artefatti AI interattivi';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Blu';

  @override
  String get themePurple => 'Viola';

  @override
  String get themeRed => 'Rosso';

  @override
  String get themeOrange => 'Arancione';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indaco';

  @override
  String get themeAmber => 'Ambra';

  @override
  String get themeTeal => 'Verde acqua';

  @override
  String get themeBrown => 'Marrone';

  @override
  String get catFruits => 'Frutta';

  @override
  String get catCleaning => 'Pulizia';

  @override
  String get catBeverages => 'Bevande';

  @override
  String get catBakery => 'Forno';

  @override
  String get catOthers => 'Altro';

  @override
  String get unitPack => 'confezione';

  @override
  String get shareSubject => 'Lista della Spesa';

  @override
  String get monthlyBudgetTitle => 'Budget Mensile';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Elimina lista';

  @override
  String get pantryItemRemoved => 'Elemento rimosso';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articoli da acquistare',
      one: '$deficit articolo da acquistare',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Totale carrello';

  @override
  String get restockLabel => 'Riassortisci';

  @override
  String get advancedFeatures => 'Funzionalità avanzate';

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String get deselectAll => 'Deseleziona tutto';

  @override
  String get monthlyBudgetAppBar => 'Budget Mensile';

  @override
  String get budgetEditTitle => 'Budget Mensile';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Seleziona una lista per visualizzare la dashboard.';

  @override
  String get spendingAnalysis => 'Analisi Spese';

  @override
  String get noItemsToAnalyze => 'Nessun elemento nella lista da analizzare.';

  @override
  String get markItemsToSeeAnalysis =>
      'Segna gli elementi come acquistati per vedere l\'analisi.';

  @override
  String get totalSpending => 'Totale Speso';

  @override
  String get spendingByCategory => 'Spese per Categoria';

  @override
  String get achievements => 'Obiettivi';

  @override
  String get exportPdfExcel => 'Esporta PDF/Excel';

  @override
  String get exportPdf => 'Esporta come PDF';

  @override
  String get exportExcel => 'Esporta come Excel';

  @override
  String get organizingAi => 'ORGANIZZANDO CON AI...';

  @override
  String get yesLabel => 'Sì';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'La Mia Lista della Spesa';

  @override
  String get emptyListAddItems =>
      'La tua lista è vuota! Aggiungi prima gli elementi. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista magicamente organizzata per categorie! ✨';

  @override
  String get shoppingMode => 'Modalità Acquisti';

  @override
  String get smartOrganization => 'Organizzazione Intelligente';

  @override
  String get savings => 'Risparmio';

  @override
  String get shoppingModeHeader => 'MODALITÀ ACQUISTI';

  @override
  String get shareAsText => 'Invia elementi come testo formattato';

  @override
  String get shareRealtime =>
      'Sincronizzazione in tempo reale con altre persone';

  @override
  String get quickRecipe => 'Ricetta veloce';

  @override
  String get quickRecipePrompt =>
      'Suggerisci ricette con gli elementi della mia lista.';

  @override
  String get economyTips => 'Consigli risparmio';

  @override
  String get economyTipsPrompt => 'Come posso risparmiare su questo acquisto?';

  @override
  String get organizeAisles => 'Organizza per reparti';

  @override
  String get organizeAislesPrompt => 'Organizza per reparti del supermercato.';

  @override
  String get recipeSuggestion => 'Suggerimento ricetta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crediti rimasti';
  }

  @override
  String get addAllToList => 'Aggiungi tutto alla lista';

  @override
  String get organizeByAisles => 'Organizza per reparti';

  @override
  String get voiceTranscriptionTooltip => 'Digitazione vocale (Gratuita)';

  @override
  String get aiVoiceCommandTooltip => 'Comando Vocale AI (Premium)';

  @override
  String get voiceCommandTitle => 'Comando Vocale AI';

  @override
  String get voiceCommandContent =>
      'Parla naturalmente per gestire la tua lista!\n\nEsempi:\n• \'Aggiungi pane, formaggio e prosciutto\'\n• \'Rimuovi detersivo per bucato\'\n• \'Cambia tema in blu\'\n\nQuesta è una funzionalità esclusiva di Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Vedi Piani';

  @override
  String get itemsAddedSuccess => 'Elementi aggiunti con successo alla lista!';

  @override
  String get viewList => 'Vedi lista';

  @override
  String get feedbackTitle => 'Invia Feedback';

  @override
  String get feedbackPrompt => 'Cosa vorresti condividere?';

  @override
  String get feedbackTypeBug => 'Segnala Bug';

  @override
  String get feedbackTypeBugHint => 'Qualcosa non funziona';

  @override
  String get feedbackTypeSuggestion => 'Suggerimento';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per migliorare l\'app';

  @override
  String get feedbackTypeTranslation => 'Problema di Traduzione';

  @override
  String get feedbackTypeTranslationHint => 'Traduzione errata o poco naturale';

  @override
  String get feedbackTypeFeature => 'Richiesta Funzionalità';

  @override
  String get feedbackTypeFeatureHint => 'Funzionalità che vorresti vedere';

  @override
  String get feedbackTypeOther => 'Altro';

  @override
  String get feedbackTypeOtherHint => 'Altro tipo di feedback';

  @override
  String get feedbackHint => 'Descrivi il tuo feedback in dettaglio...';

  @override
  String get feedbackSend => 'Invia Feedback';

  @override
  String get feedbackSending => 'Invio in corso...';

  @override
  String get feedbackThankYou => 'Grazie!';

  @override
  String get feedbackThankYouMessage =>
      'Il tuo feedback è stato ricevuto e ci aiuta a migliorare Lista Plus per tutti.';

  @override
  String get feedbackBack => 'Indietro';

  @override
  String feedbackError(String error) {
    return 'Errore nell\'invio: $error';
  }

  @override
  String get feedbackRetry => 'Riprova';

  @override
  String get feedbackSettingsTitle => 'Invia Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Segnala bug, suggerisci miglioramenti o correggi traduzioni';

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
  String get openMenu => 'Apri menu';

  @override
  String get viewRecipe => 'Visualizza Ricetta';

  @override
  String get recipeCreated => 'Ricetta creata!';

  @override
  String get editRecipe => 'Modifica';

  @override
  String get deleteRecipe => 'Elimina';

  @override
  String get deleteRecipeConfirm => 'Eliminare questa ricetta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sei sicuro di voler eliminare \"$recipeName\"? Questa azione non può essere annullata.';
  }

  @override
  String get ingredients => 'Ingredienti';

  @override
  String get instructions => 'Istruzioni';

  @override
  String get prepTime => 'Tempo di prep.';

  @override
  String get recipeSaved => 'Ricetta salvata!';

  @override
  String get noRecipesSaved => 'Nessuna ricetta salvata';

  @override
  String get noRecipesSavedHint =>
      'Crea la tua prima ricetta personalizzata toccando il pulsante qui sotto.';

  @override
  String get myRecipes => 'Le Mie Ricette';

  @override
  String get newRecipe => 'Nuova Ricetta';

  @override
  String get loadingRecipes => 'Caricamento ricette...';

  @override
  String get errorLoadingRecipes => 'Errore nel caricamento delle ricette';

  @override
  String get addIngredient => 'Aggiungi ingrediente';

  @override
  String get saveRecipe => 'Salva';

  @override
  String get recipeName => 'Nome ricetta';

  @override
  String get shortDescription => 'Breve descrizione';

  @override
  String get prepTimeMinutes => 'Tempo di preparazione (minuti)';

  @override
  String get instructionsHint => 'Scrivi un passaggio per riga...';

  @override
  String get addPhoto => 'Aggiungi foto';

  @override
  String get imageUrlPlaceholder => 'O incolla l\'URL di un\'immagine';

  @override
  String get tags => 'Tag';

  @override
  String get recipeTags => 'Tag ricetta';

  @override
  String get suggestedTags => 'Suggeriti';

  @override
  String get searchRecipes => 'Cerca ricette...';

  @override
  String get filterByTag => 'Filtra per tag';

  @override
  String get allTags => 'Tutti';

  @override
  String get recipeDeleted => 'Ricetta eliminata';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get editRecipeTitle => 'Modifica Ricetta';

  @override
  String get newRecipeTitle => 'Nuova Ricetta';

  @override
  String get requiredField => 'Obbligatorio';

  @override
  String get chooseImageSource => 'Scegli sorgente immagine';

  @override
  String get gallery => 'Galleria';

  @override
  String get enterUrl => 'Inserisci URL';

  @override
  String get recipeImage => 'Immagine ricetta';

  @override
  String get removeImage => 'Rimuovi immagine';

  @override
  String get mealPlannerTitle => 'Pianificatore Pasti';

  @override
  String get mealPlannerViewMonthly => 'Vista mensile';

  @override
  String get mealPlannerViewWeekly => 'Vista settimanale';

  @override
  String get mealPlannerNoMeals => 'Nessun pasto pianificato';

  @override
  String get mealPlannerNoMealsHint =>
      'Tocca un giorno per aggiungere un pasto';

  @override
  String get mealPlannerLoading => 'Caricamento piano alimentare...';

  @override
  String get mealPlannerError => 'Errore nel caricamento del piano alimentare';

  @override
  String get mealPlannerAddMeal => 'Aggiungi Pasto';

  @override
  String get mealPlannerEditMeal => 'Modifica Pasto';

  @override
  String get mealPlannerDeleteMeal => 'Rimuovi pasto';

  @override
  String get mealPlannerMealDeleted => 'Pasto rimosso';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porzioni',
      one: '$count porzione',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porzioni';

  @override
  String get mealPlannerNoteLabel => 'Nota (opzionale)';

  @override
  String get mealPlannerSelectRecipe => 'Seleziona una ricetta';

  @override
  String get mealPlannerSearchRecipes => 'Cerca ricette...';

  @override
  String get mealPlannerNoRecipesFound => 'Nessuna ricetta trovata';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea prima delle ricette nella scheda Ricette';

  @override
  String get mealPlannerSave => 'Aggiungi al piano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count di $total pasti pianificati';
  }

  @override
  String get mealPlannerGenerateList => 'Genera lista della spesa';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Aggiungere tutti gli ingredienti dei pasti pianificati per questa settimana alla lista della spesa?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredienti aggiunti alla tua lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nessun ingrediente da aggiungere. Pianifica prima dei pasti con ricette.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea prima una lista della spesa.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Colazione';

  @override
  String get mealPlannerMealTypeLunch => 'Pranzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'Nulla di pianificato per questa settimana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tocca un giorno qualsiasi per iniziare a pianificare i tuoi pasti!';

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

/// The translations for Italian, as used in Italy (`it_IT`).
class AppLocalizationsItIt extends AppLocalizationsIt {
  AppLocalizationsItIt() : super('it_IT');

  @override
  String get appTitle => 'Lista della Spesa';

  @override
  String get lists => 'Liste';

  @override
  String get pantry => 'Dispensa';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get create => 'Crea';

  @override
  String get add => 'Aggiungi';

  @override
  String get remove => 'Rimuovi';

  @override
  String get delete => 'Elimina';

  @override
  String get edit => 'Modifica';

  @override
  String get copy => 'Copia';

  @override
  String get retry => 'Riprova';

  @override
  String get regenerate => 'Rigenera';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get confirm => 'Conferma';

  @override
  String get close => 'Chiudi';

  @override
  String get import => 'Importa';

  @override
  String get rename => 'Rinomina';

  @override
  String get upgrade => 'Aggiorna';

  @override
  String get clear => 'Cancella';

  @override
  String error(String message) {
    return 'Errore: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errore: $message';
  }

  @override
  String get purchaseError =>
      'Errore durante l\'elaborazione dell\'acquisto. Riprova.';

  @override
  String get restoreError =>
      'Errore durante il ripristino degli acquisti. Riprova.';

  @override
  String get loading => 'Caricamento...';

  @override
  String get fieldRequired => 'Campo obbligatorio';

  @override
  String get addedFeedback => 'Aggiunto!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selezionati',
      one: '$count selezionato',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Stimato';

  @override
  String get alreadyPurchased => 'Già acquistato';

  @override
  String get clearList => 'Cancella lista';

  @override
  String get clearPurchased => 'Cancella acquistati';

  @override
  String get share => 'Condividi';

  @override
  String get shareViaCode => 'Condividi tramite codice';

  @override
  String get importViaCode => 'Importa tramite codice';

  @override
  String get listAssistant => 'Assistente lista';

  @override
  String get globalAssistant => 'Assistente globale';

  @override
  String get becomePremium => 'Diventa Premium';

  @override
  String get manageSubscription => 'Gestisci abbonamento';

  @override
  String get completePurchase => 'Completa acquisto';

  @override
  String get confirmClearList => 'Rimuovere tutti gli elementi?';

  @override
  String get shareListTitle => 'Condividi Lista';

  @override
  String get shareThisCode => 'Condividi questo codice:';

  @override
  String get validForLimitedTime => 'Valido per tempo limitato';

  @override
  String get importListTitle => 'Importa Lista';

  @override
  String get enterCodeHint => 'Inserisci il codice';

  @override
  String get confirmArchiveTitle => 'Completa Acquisto';

  @override
  String get confirmArchiveContent =>
      'Completare questo acquisto e archiviare la lista?';

  @override
  String get complete => 'Completa';

  @override
  String get listArchived => 'Lista archiviata con successo!';

  @override
  String listAdded(String listName) {
    return '$listName aggiunta!';
  }

  @override
  String get buy => 'Acquista';

  @override
  String get unmark => 'Deseleziona';

  @override
  String confirmDeleteItems(int count) {
    return 'Rimuovere $count elemento/i?';
  }

  @override
  String get confirmDeleteTitle => 'Conferma';

  @override
  String confirmContent(int count) {
    return 'Rimuovere $count elemento/i?';
  }

  @override
  String get archiveList => 'Archivia lista';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Genera lista della spesa';

  @override
  String get pantryEmpty => 'Dispensa vuota';

  @override
  String get pantryEmptySubtitle =>
      'Aggiungi i prodotti che vuoi tenere in casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit articolo/i da acquistare';
  }

  @override
  String get noItemsToBuy => 'Nessun articolo da acquistare';

  @override
  String get newPantryList => 'Spesa Dispensa';

  @override
  String get newListTitle => 'Nuova Lista della Spesa';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elemento/i verranno aggiunti';
  }

  @override
  String get listNameLabel => 'Nome lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creata con $count elementi';
  }

  @override
  String get noTracking => 'Nessun monitoraggio';

  @override
  String get markAsPurchased => 'Segna come acquistato';

  @override
  String editPantryItem(String name) {
    return 'Modifica $name';
  }

  @override
  String get idealQuantity => 'Quantità ideale';

  @override
  String get currentQuantity => 'Quantità attuale';

  @override
  String get consumed => 'Consumato';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name riassortito a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Rimuovere \"$name\" dalla dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifica $name';
  }

  @override
  String get settingsAppBar => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predefinito sistema';

  @override
  String get chooseLanguage => 'Seleziona Lingua';

  @override
  String get searchLanguage => 'Cerca lingua...';

  @override
  String get appearance => 'Aspetto';

  @override
  String get light => 'Chiaro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Scuro';

  @override
  String get themeColor => 'Colore tema';

  @override
  String get dynamicColors => 'Colori dinamici';

  @override
  String get dynamicColorsSubtitle => 'Usa i colori basati sul tuo sfondo';

  @override
  String get finance => 'Finanze';

  @override
  String get monthlyBudgetNav => 'Budget mensile';

  @override
  String get budgetSubtitle => 'Monitora le tue spese mensili';

  @override
  String get data => 'Dati';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Esporta o importa i tuoi dati';

  @override
  String get about => 'Informazioni';

  @override
  String get version => 'Versione';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Termini di utilizzo';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup ed esportazione sono funzionalità premium';

  @override
  String get exportData => 'Esporta dati';

  @override
  String get exportDataSubtitle => 'Salva tutte le liste come JSON';

  @override
  String get importData => 'Importa dati';

  @override
  String get importDataSubtitle => 'Ripristina liste da un JSON';

  @override
  String get importJsonTitle => 'Importa JSON';

  @override
  String get importJsonHint => 'Incolla qui il JSON del backup...';

  @override
  String get backupExported => 'Backup esportato!';

  @override
  String get budgetAppBar => 'Budget Mensile';

  @override
  String get budgetPremiumLocked => 'Il budget mensile globale è premium';

  @override
  String get budgetUpgradePrompt => 'Aggiorna per sbloccare';

  @override
  String get noBudgetDefined => 'Nessun budget impostato';

  @override
  String totalEstimated(String amount) {
    return 'Totale stimato: $amount';
  }

  @override
  String get setBudgetButton => 'Imposta budget';

  @override
  String get budgetLists => 'Liste';

  @override
  String get budgetValueLabel => 'Importo';

  @override
  String get setBudgetTitle => 'Budget Mensile';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tutti';

  @override
  String get filterPending => 'In sospeso';

  @override
  String get filterPurchased => 'Acquistati';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manuale';

  @override
  String get addItem => 'Aggiungi Elemento';

  @override
  String get itemName => 'Nome elemento';

  @override
  String get quantityShort => 'Qtà';

  @override
  String get unit => 'Unità';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Prezzo stimato';

  @override
  String get addItemPrice => 'Prezzo stimato';

  @override
  String get editItem => 'Modifica Elemento';

  @override
  String get quantityFull => 'Quantità';

  @override
  String get editItemPrice => 'Prezzo stimato';

  @override
  String get addToPantry => 'Aggiungi alla Dispensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Aggiungere \"$name\" alla tua dispensa?';
  }

  @override
  String get yes => 'Sì';

  @override
  String get productName => 'Nome prodotto';

  @override
  String get idealQty => 'Qtà ideale';

  @override
  String get currentQty => 'Qtà attuale';

  @override
  String get trackStock => 'Traccia scorte';

  @override
  String get trackStockActive => 'Appare nei suggerimenti di acquisto';

  @override
  String get trackStockInactive => 'Non genera suggerimenti di acquisto';

  @override
  String get createListDialog => 'Crea Lista';

  @override
  String get renameListDialog => 'Rinomina Lista';

  @override
  String get listHistory => 'Cronologia Liste';

  @override
  String get myLists => 'Le Mie Liste';

  @override
  String get viewActive => 'Vedi Attive';

  @override
  String get viewHistory => 'Vedi Cronologia';

  @override
  String get noArchivedLists => 'Nessuna lista archiviata';

  @override
  String get noActiveLists => 'Nessuna lista attiva';

  @override
  String completedOn(String date) {
    return 'Completata il $date';
  }

  @override
  String get sharedLabel => 'Condivisa';

  @override
  String get restore => 'Ripristina';

  @override
  String get removeSharedTooltip => 'Rimuovi';

  @override
  String get deleteListTitle => 'Elimina lista';

  @override
  String deleteListContent(String name) {
    return 'Sei sicuro di voler eliminare \"$name\"? Tutti gli elementi verranno rimossi.';
  }

  @override
  String get removeSharedListTitle => 'Rimuovi lista condivisa';

  @override
  String removeSharedListContent(String name) {
    return 'Rimuovere \"$name\" dalle tue liste? La lista originale non verrà modificata.';
  }

  @override
  String get createNewList => 'Crea nuova lista';

  @override
  String get aiAssistant => 'Assistente AI';

  @override
  String get aiAssistantDescription =>
      'Ottieni suggerimenti intelligenti, ricette e consigli personalizzati con il nostro assistente AI.';

  @override
  String get generalAssistant => 'Assistente Generale';

  @override
  String get clearHistory => 'Cancella Cronologia';

  @override
  String get clearHistoryConfirm =>
      'Cancellare tutti i messaggi in questa sessione?';

  @override
  String get chatHint => 'Scrivi il tuo messaggio...';

  @override
  String chatError(String error) {
    return 'Errore nel caricamento della chat: $error';
  }

  @override
  String get listHelp => 'Come posso aiutarti con la tua lista?';

  @override
  String get generalHelp => 'Come posso aiutarti con la spesa oggi?';

  @override
  String get chatSubtitle =>
      'Chiedi suggerimenti, ricette o consigli per risparmiare.';

  @override
  String get aiError =>
      'Spiacenti, si è verificato un errore nell\'elaborazione della richiesta. Controlla la connessione o riprova più tardi.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Accedi per sbloccare\nle funzionalità premium';

  @override
  String get signInGoogle => 'Accedi con Google';

  @override
  String get signInApple => 'Accedi con Apple';

  @override
  String get continueAsGuest => 'Continua come ospite';

  @override
  String loginError(String error) {
    return 'Errore di accesso: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Aggiorna per sbloccare';

  @override
  String get itemRemoved => 'Elemento rimosso';

  @override
  String get undo => 'Annulla';

  @override
  String get emptyListTitle => 'La tua lista è vuota';

  @override
  String get emptyListSubtitle => 'Aggiungi elementi per iniziare';

  @override
  String get noListFoundTitle => 'Nessuna lista trovata';

  @override
  String get noListFoundSubtitle => 'Crea la tua prima lista per iniziare';

  @override
  String get createFirstList => 'Crea Prima Lista';

  @override
  String get listBudgetTitle => 'Budget Lista';

  @override
  String get budgetAmountLabel => 'Importo budget';

  @override
  String get removeBudget => 'Rimuovi';

  @override
  String get prefUnlimitedLists => 'Liste illimitate';

  @override
  String get prefSharing => 'Condividi liste';

  @override
  String get prefFullHistory => 'Cronologia completa';

  @override
  String get prefExportData => 'Esporta dati';

  @override
  String get prefCustomThemes => 'Temi personalizzati';

  @override
  String get prefMonthlyBudget => 'Budget mensile globale';

  @override
  String get prefAIAssistant => 'Assistente AI personale';

  @override
  String get prefUnlimitedPantry => 'Dispensa illimitata';

  @override
  String get prefInteractiveArtifacts => 'Artefatti AI interattivi';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Blu';

  @override
  String get themePurple => 'Viola';

  @override
  String get themeRed => 'Rosso';

  @override
  String get themeOrange => 'Arancione';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indaco';

  @override
  String get themeAmber => 'Ambra';

  @override
  String get themeTeal => 'Verde acqua';

  @override
  String get themeBrown => 'Marrone';

  @override
  String get catFruits => 'Frutta';

  @override
  String get catCleaning => 'Pulizia';

  @override
  String get catBeverages => 'Bevande';

  @override
  String get catBakery => 'Forno';

  @override
  String get catOthers => 'Altro';

  @override
  String get unitPack => 'confezione';

  @override
  String get shareSubject => 'Lista della Spesa';

  @override
  String get monthlyBudgetTitle => 'Budget Mensile';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Elimina lista';

  @override
  String get pantryItemRemoved => 'Elemento rimosso';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articoli da acquistare',
      one: '$deficit articolo da acquistare',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Totale carrello';

  @override
  String get restockLabel => 'Riassortisci';

  @override
  String get advancedFeatures => 'Funzionalità avanzate';

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String get deselectAll => 'Deseleziona tutto';

  @override
  String get monthlyBudgetAppBar => 'Budget Mensile';

  @override
  String get budgetEditTitle => 'Budget Mensile';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Seleziona una lista per visualizzare la dashboard.';

  @override
  String get spendingAnalysis => 'Analisi Spese';

  @override
  String get noItemsToAnalyze => 'Nessun elemento nella lista da analizzare.';

  @override
  String get markItemsToSeeAnalysis =>
      'Segna gli elementi come acquistati per vedere l\'analisi.';

  @override
  String get totalSpending => 'Totale Speso';

  @override
  String get spendingByCategory => 'Spese per Categoria';

  @override
  String get achievements => 'Obiettivi';

  @override
  String get exportPdfExcel => 'Esporta PDF/Excel';

  @override
  String get exportPdf => 'Esporta come PDF';

  @override
  String get exportExcel => 'Esporta come Excel';

  @override
  String get organizingAi => 'ORGANIZZANDO CON AI...';

  @override
  String get yesLabel => 'Sì';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'La Mia Lista della Spesa';

  @override
  String get emptyListAddItems =>
      'La tua lista è vuota! Aggiungi prima gli elementi. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista magicamente organizzata per categorie! ✨';

  @override
  String get shoppingMode => 'Modalità Acquisti';

  @override
  String get smartOrganization => 'Organizzazione Intelligente';

  @override
  String get savings => 'Risparmio';

  @override
  String get shoppingModeHeader => 'MODALITÀ ACQUISTI';

  @override
  String get shareAsText => 'Invia elementi come testo formattato';

  @override
  String get shareRealtime =>
      'Sincronizzazione in tempo reale con altre persone';

  @override
  String get quickRecipe => 'Ricetta veloce';

  @override
  String get quickRecipePrompt =>
      'Suggerisci ricette con gli elementi della mia lista.';

  @override
  String get economyTips => 'Consigli risparmio';

  @override
  String get economyTipsPrompt => 'Come posso risparmiare su questo acquisto?';

  @override
  String get organizeAisles => 'Organizza per reparti';

  @override
  String get organizeAislesPrompt => 'Organizza per reparti del supermercato.';

  @override
  String get recipeSuggestion => 'Suggerimento ricetta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crediti rimasti';
  }

  @override
  String get addAllToList => 'Aggiungi tutto alla lista';

  @override
  String get organizeByAisles => 'Organizza per reparti';

  @override
  String get voiceTranscriptionTooltip => 'Digitazione vocale (Gratuita)';

  @override
  String get aiVoiceCommandTooltip => 'Comando Vocale AI (Premium)';

  @override
  String get voiceCommandTitle => 'Comando Vocale AI';

  @override
  String get voiceCommandContent =>
      'Parla naturalmente per gestire la tua lista!\n\nEsempi:\n• \'Aggiungi pane, formaggio e prosciutto\'\n• \'Rimuovi detersivo per bucato\'\n• \'Cambia tema in blu\'\n\nQuesta è una funzionalità esclusiva di Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Vedi Piani';

  @override
  String get itemsAddedSuccess => 'Elementi aggiunti con successo alla lista!';

  @override
  String get viewList => 'Vedi lista';

  @override
  String get feedbackTitle => 'Invia feedback';

  @override
  String get feedbackPrompt => 'Cosa vuoi condividere?';

  @override
  String get feedbackTypeBug => 'Segnala un bug';

  @override
  String get feedbackTypeBugHint => 'Qualcosa non funziona';

  @override
  String get feedbackTypeSuggestion => 'Suggerimento';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per migliorare l\'app';

  @override
  String get feedbackTypeTranslation => 'Problema di traduzione';

  @override
  String get feedbackTypeTranslationHint => 'Traduzione errata o poco naturale';

  @override
  String get feedbackTypeFeature => 'Richiesta funzionalità';

  @override
  String get feedbackTypeFeatureHint => 'Funzionalità che vorresti vedere';

  @override
  String get feedbackTypeOther => 'Altro';

  @override
  String get feedbackTypeOtherHint => 'Altro tipo di feedback';

  @override
  String get feedbackHint => 'Descrivi il tuo feedback in dettaglio...';

  @override
  String get feedbackSend => 'Invia feedback';

  @override
  String get feedbackSending => 'Invio in corso...';

  @override
  String get feedbackThankYou => 'Grazie!';

  @override
  String get feedbackThankYouMessage =>
      'Il tuo feedback è stato ricevuto e ci aiuta a migliorare Lista Plus per tutti.';

  @override
  String get feedbackBack => 'Indietro';

  @override
  String feedbackError(String error) {
    return 'Errore durante l\'invio: $error';
  }

  @override
  String get feedbackRetry => 'Riprova';

  @override
  String get feedbackSettingsTitle => 'Invia feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Segnala bug, suggerisci miglioramenti o correggi traduzioni';

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
  String get openMenu => 'Apri menu';

  @override
  String get viewRecipe => 'Visualizza Ricetta';

  @override
  String get recipeCreated => 'Ricetta creata!';

  @override
  String get editRecipe => 'Modifica';

  @override
  String get deleteRecipe => 'Elimina';

  @override
  String get deleteRecipeConfirm => 'Eliminare questa ricetta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sei sicuro di voler eliminare \"$recipeName\"? Questa azione non può essere annullata.';
  }

  @override
  String get ingredients => 'Ingredienti';

  @override
  String get instructions => 'Istruzioni';

  @override
  String get prepTime => 'Tempo di prep.';

  @override
  String get recipeSaved => 'Ricetta salvata!';

  @override
  String get noRecipesSaved => 'Nessuna ricetta salvata';

  @override
  String get noRecipesSavedHint =>
      'Crea la tua prima ricetta personalizzata toccando il pulsante qui sotto.';

  @override
  String get myRecipes => 'Le Mie Ricette';

  @override
  String get newRecipe => 'Nuova Ricetta';

  @override
  String get loadingRecipes => 'Caricamento ricette...';

  @override
  String get errorLoadingRecipes => 'Errore nel caricamento delle ricette';

  @override
  String get addIngredient => 'Aggiungi ingrediente';

  @override
  String get saveRecipe => 'Salva';

  @override
  String get recipeName => 'Nome ricetta';

  @override
  String get shortDescription => 'Breve descrizione';

  @override
  String get prepTimeMinutes => 'Tempo di preparazione (minuti)';

  @override
  String get instructionsHint => 'Scrivi un passaggio per riga...';

  @override
  String get addPhoto => 'Aggiungi foto';

  @override
  String get imageUrlPlaceholder => 'O incolla l\'URL di un\'immagine';

  @override
  String get tags => 'Tag';

  @override
  String get recipeTags => 'Tag ricetta';

  @override
  String get suggestedTags => 'Suggeriti';

  @override
  String get searchRecipes => 'Cerca ricette...';

  @override
  String get filterByTag => 'Filtra per tag';

  @override
  String get allTags => 'Tutti';

  @override
  String get recipeDeleted => 'Ricetta eliminata';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get editRecipeTitle => 'Modifica Ricetta';

  @override
  String get newRecipeTitle => 'Nuova Ricetta';

  @override
  String get requiredField => 'Obbligatorio';

  @override
  String get chooseImageSource => 'Scegli sorgente immagine';

  @override
  String get gallery => 'Galleria';

  @override
  String get enterUrl => 'Inserisci URL';

  @override
  String get recipeImage => 'Immagine ricetta';

  @override
  String get removeImage => 'Rimuovi immagine';

  @override
  String get mealPlannerTitle => 'Pianificatore Pasti';

  @override
  String get mealPlannerViewMonthly => 'Vista mensile';

  @override
  String get mealPlannerViewWeekly => 'Vista settimanale';

  @override
  String get mealPlannerNoMeals => 'Nessun pasto pianificato';

  @override
  String get mealPlannerNoMealsHint =>
      'Tocca un giorno per aggiungere un pasto';

  @override
  String get mealPlannerLoading => 'Caricamento piano alimentare...';

  @override
  String get mealPlannerError => 'Errore nel caricamento del piano alimentare';

  @override
  String get mealPlannerAddMeal => 'Aggiungi Pasto';

  @override
  String get mealPlannerEditMeal => 'Modifica Pasto';

  @override
  String get mealPlannerDeleteMeal => 'Rimuovi pasto';

  @override
  String get mealPlannerMealDeleted => 'Pasto rimosso';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porzioni',
      one: '$count porzione',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porzioni';

  @override
  String get mealPlannerNoteLabel => 'Nota (opzionale)';

  @override
  String get mealPlannerSelectRecipe => 'Seleziona una ricetta';

  @override
  String get mealPlannerSearchRecipes => 'Cerca ricette...';

  @override
  String get mealPlannerNoRecipesFound => 'Nessuna ricetta trovata';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea prima delle ricette nella scheda Ricette';

  @override
  String get mealPlannerSave => 'Aggiungi al piano';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count di $total pasti pianificati';
  }

  @override
  String get mealPlannerGenerateList => 'Genera lista della spesa';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Aggiungere tutti gli ingredienti dei pasti pianificati per questa settimana alla lista della spesa?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredienti aggiunti alla tua lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nessun ingrediente da aggiungere. Pianifica prima dei pasti con ricette.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea prima una lista della spesa.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Colazione';

  @override
  String get mealPlannerMealTypeLunch => 'Pranzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'Nulla di pianificato per questa settimana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tocca un giorno qualsiasi per iniziare a pianificare i tuoi pasti!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
