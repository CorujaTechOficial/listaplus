// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer\nles fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un avis';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bug';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Problème de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type d\'avis';

  @override
  String get feedbackHint => 'Décrivez votre avis en détail...';

  @override
  String get feedbackSend => 'Envoyer l\'avis';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre avis a bien été reçu et nous aide à améliorer Lista Plus pour tout le monde.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un avis';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bugs, suggérer des améliorations ou corriger des traductions';

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
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer les fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un commentaire';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bogue';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Erreur de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type de commentaire';

  @override
  String get feedbackHint => 'Décrivez votre commentaire en détail...';

  @override
  String get feedbackSend => 'Envoyer le commentaire';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre commentaire a été reçu et nous aide à améliorer Lista Plus pour tous.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un commentaire';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bogues, suggérer des améliorations ou corriger des traductions';

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
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}

/// The translations for French, as used in France (`fr_FR`).
class AppLocalizationsFrFr extends AppLocalizationsFr {
  AppLocalizationsFrFr() : super('fr_FR');

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer les fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un commentaire';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bogue';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Erreur de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type de commentaire';

  @override
  String get feedbackHint => 'Décrivez votre commentaire en détail...';

  @override
  String get feedbackSend => 'Envoyer le commentaire';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre commentaire a été reçu et nous aide à améliorer Lista Plus pour tous.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un commentaire';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bogues, suggérer des améliorations ou corriger des traductions';

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
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
