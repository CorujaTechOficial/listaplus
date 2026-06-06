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
  String get next => 'Suivant';

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
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

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
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

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
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

  @override
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
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
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
  }

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
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

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
      'Votre avis a bien été reçu et nous aide à améliorer KipiList pour tout le monde.';

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
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

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
  String get tags => 'Balises';

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
  String get mealPlannerMealTypeSnack => 'Collation';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutes';
  }

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';
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
  String get next => 'Suivant';

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
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

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
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

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
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

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
  String get kipiListTitle => 'KipiList';

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
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

  @override
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

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
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

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
      'Votre commentaire a été reçu et nous aide à améliorer KipiList pour tous.';

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
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

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
  String get tags => 'Balises';

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
  String get mealPlannerMealTypeSnack => 'Collation';

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

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';
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
  String get next => 'Suivant';

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
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

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
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

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
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

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
  String get kipiListTitle => 'KipiList';

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
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

  @override
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

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
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

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
      'Votre commentaire a été reçu et nous aide à améliorer KipiList pour tous.';

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
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

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
  String get tags => 'Balises';

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
  String get mealPlannerMealTypeSnack => 'Collation';

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

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';
}
