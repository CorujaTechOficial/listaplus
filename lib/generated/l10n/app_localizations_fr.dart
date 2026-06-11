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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

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
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

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
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

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
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining actions IA restantes ce mois-ci – mise à niveau illimitée';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensuelle d\'IA atteinte. Passez à Pro pour un accès illimité →';

  @override
  String get kipiListTitle => 'Liste Kipi';

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
  String get onboardingMaybeLater => 'Peut-être plus tard';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organise tes courses de la bonne manière.';
  }

  @override
  String get onboardingSlide1Title => 'Listes de courses intelligentes';

  @override
  String get onboardingSlide1Body =>
      'Créez et partagez des listes instantanément. Kipi ajoute automatiquement des éléments en fonction de vos habitudes.';

  @override
  String get onboardingSlide2Title => 'Rencontrez Kipi';

  @override
  String get onboardingSlide2Body =>
      'Demandez n\'importe quoi : créez des listes, trouvez des recettes, suivez votre garde-manger, planifiez votre semaine.';

  @override
  String get onboardingSlide3Title => 'Garde-manger et planification des repas';

  @override
  String get onboardingSlide3Body =>
      'Suivez ce que vous avez, planifiez vos repas et générez automatiquement des listes de courses.';

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
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get noListSelected =>
      'Aucune liste sélectionnée. Ouvrez d\'abord une liste.';

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureDescAssistant =>
      'L\'IA organise automatiquement votre liste';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Créez autant de listes que nécessaire';

  @override
  String get paywallFeatureDescSharing => 'Achetez ensemble en temps réel';

  @override
  String get paywallFeatureDescPantry => 'Suivez ce que vous avez à la maison';

  @override
  String get paywallFeatureDescBudget => 'Respectez votre budget chaque mois';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String paywallTrialInCard(int days) {
    return 'Premiers $days jours GRATUITS';
  }

  @override
  String get paywallSecuredByStore =>
      'Sécurisé par Google Play · Annulez à tout moment';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
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
  String shareReferralText(String url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

  @override
  String get skip => 'Sauter';

  @override
  String get onboardingAiTitle => 'Discutez avec Kipi';

  @override
  String get onboardingAiGreeting =>
      'Salut! Je m\'appelle Kipi, votre assistante commerciale personnelle ! 🛒';

  @override
  String get onboardingAiAskName => 'Quel est ton nom?';

  @override
  String get onboardingAiNameHint => 'Tapez votre nom...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Ravi de vous rencontrer, $name ! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Quel est votre plat préféré ?';

  @override
  String get onboardingAiFoodHint => 'par ex. Pizzas, Sushis...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Excellents choix ! Voici ce que j\'ajouterais à votre liste :\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Est-ce que ça a l\'air bien ? Essayez de taper autre chose !';

  @override
  String get onboardingAiReady =>
      'Super! Vous êtes prêt à commencer. Créons votre compte !';

  @override
  String get onboardingAiContinue => 'Continuer →';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String connectionErrorDesc(String error) {
    return 'Erreur : $error';
  }

  @override
  String get errorLoadingLists => 'Erreur lors du chargement des listes';

  @override
  String get noListsFound => 'Aucune liste trouvée';

  @override
  String get backToToday => 'Retour à aujourd\'hui';

  @override
  String get quickSuggestions => 'Suggestions rapides';

  @override
  String get aiEnergyLow => 'Faible énergie de l\'IA';

  @override
  String get aiUnlockUnlimited => 'Débloquez une IA illimitée';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 aujourd\'hui';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonnez-vous pour une IA illimitée';

  @override
  String get unlockWithAd => 'Débloquer avec une annonce';

  @override
  String get conversationHistoryTitle => 'Historique des conversations';

  @override
  String get noConversationsFound => 'Aucune conversation trouvée';

  @override
  String get errorLoadingHistory => 'Erreur de chargement de l\'historique';

  @override
  String get deleteConversationTitle => 'Supprimer la conversation';

  @override
  String get deleteConversationConfirm =>
      'Cette action ne peut pas être annulée.';

  @override
  String get deleteConversation => 'Supprimer';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Actif';

  @override
  String get unlockPremiumTitle => 'Débloquez la prime';

  @override
  String get loadingSubscription => 'Chargement de l\'abonnement...';

  @override
  String get errorLoadingSubscription =>
      'Erreur lors du chargement de l\'abonnement';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Mon profil';

  @override
  String get profileSubtitle => 'Informations sur votre profil';

  @override
  String get customizeAiAssistant => 'Personnaliser l\'assistant IA';

  @override
  String get assistantHistory => 'Historique des assistants';

  @override
  String get assistantHistorySubtitle =>
      'Afficher l\'historique de vos conversations';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get manageCategoriesSubtitle =>
      'Ajouter, modifier ou supprimer des catégories';

  @override
  String get customizeAssistant => 'Personnaliser';

  @override
  String get assistantName => 'Nom de l\'assistant';

  @override
  String get chooseIcon => 'Choisir l\'icône';

  @override
  String get profileSaved => 'Profil enregistré';

  @override
  String get errorSavingProfile => 'Erreur lors de l\'enregistrement du profil';

  @override
  String get userProfile => 'Profil utilisateur';

  @override
  String get profileDescription => 'Description du profil';

  @override
  String get preferredMarket => 'Marché préféré';

  @override
  String get preferredMarketHint =>
      'Où faites-vous habituellement vos achats ?';

  @override
  String get dietaryRestrictions => 'Restrictions alimentaires';

  @override
  String get dietaryRestrictionsHint => 'Des restrictions alimentaires ?';

  @override
  String get marketsToAvoid => 'Marchés à éviter';

  @override
  String get marketsToAvoidHint =>
      'Les marchés sur lesquels vous préférez ne pas faire vos achats';

  @override
  String get observations => 'Observations';

  @override
  String get observationsHint => 'Des notes supplémentaires ?';

  @override
  String get saveProfile => 'Enregistrer le profil';

  @override
  String get everythingReady => 'Tout est prêt !';

  @override
  String get youCompletedList => 'Vous avez complété la liste !';

  @override
  String get selectCheaperAlternative =>
      'Sélectionnez une alternative moins chère';

  @override
  String get suggestedItems => 'Articles suggérés';

  @override
  String get swapped => 'Échangé';

  @override
  String get swap => 'Échanger';

  @override
  String get chooseThemeColor => 'Choisissez la couleur du thème';

  @override
  String get manageCategoriesTitle => 'Gérer les catégories';

  @override
  String get categoryLimitReached => 'Limite de catégorie atteinte';

  @override
  String get deleteCategoryTitle => 'Supprimer la catégorie';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Les éléments dans « $category » seront déplacés vers « Autres ».\nContinuer?';
  }

  @override
  String get deleteCategory => 'Supprimer';

  @override
  String get newCategoryDialog => 'Nouvelle catégorie';

  @override
  String get editCategoryDialog => 'Modifier la catégorie';

  @override
  String get categoryName => 'Nom de la catégorie';

  @override
  String get categoryNameHint => 'Entrez le nom de la catégorie';

  @override
  String get categoryColorLabel => 'Couleur';

  @override
  String get categoryIconLabel => 'Icône';

  @override
  String itemAddedSnack(String name) {
    return '$name ajouté';
  }

  @override
  String get kipiQuickBarHint => 'Que devez-vous acheter ?';

  @override
  String replaceItem(String item) {
    return 'Remplacer $item';
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
  String get onboardingHookHeadline =>
      'N\'oubliez plus jamais un article d\'épicerie';

  @override
  String get onboardingGoalSaveMoney => 'Économisez de l\'argent';

  @override
  String get onboardingGoalNeverForget => 'N\'oubliez jamais les articles';

  @override
  String get onboardingGoalFaster => 'Achetez plus rapidement';

  @override
  String get onboardingGoalFamily => 'Organiser les courses en famille';

  @override
  String get onboardingGoalRecipes => 'Découvrez des recettes';

  @override
  String get onboardingGoalPantry => 'Garde-manger sur rail';

  @override
  String get onboardingCommitmentsTitle => 'Qu\'est-ce qui compte pour vous ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choisissez vos objectifs pour personnaliser KipiList';

  @override
  String get onboardingCommitmentsCta => 'Allons-y!';

  @override
  String get onboardingPersonalizationNameLabel => 'Votre nom';

  @override
  String get onboardingPersonalizationNameHint => 'Entrez votre nom';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Que magasinez-vous ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Pour qui faites-vous vos achats ?';

  @override
  String get onboardingCategoryGrocery => 'Épiceries';

  @override
  String get onboardingCategoryPharmacy => 'Pharmacie';

  @override
  String get onboardingCategoryRecipes => 'Recettes';

  @override
  String get onboardingCategoryHome => 'Maison';

  @override
  String get onboardingCategoryPet => 'Animal de compagnie';

  @override
  String get onboardingGroupSolo => 'Juste moi';

  @override
  String get onboardingGroupCouple => 'Couple';

  @override
  String get onboardingGroupFamily => 'Famille';

  @override
  String get onboardingLoadingTitle => 'Préparez votre expérience...';

  @override
  String get onboardingLoadingStep1 => 'Analyser vos préférences...';

  @override
  String get onboardingLoadingStep2 => 'Configuration de l\'assistant IA...';

  @override
  String get onboardingLoadingStep3 => 'Presque prêt...';

  @override
  String get onboardingLoadingStat1Label => 'Articles catalogués';

  @override
  String get onboardingLoadingStat2Label => 'Les utilisateurs ont aidé';

  @override
  String get onboardingLoadingStat3Label => 'Minutes économisées';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, économisez sur chaque voyage !';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, n\'oubliez jamais un article !';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, faites vos achats en deux fois moins de temps !';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organisez les courses en famille !';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, découvrez de nouvelles recettes !';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, suivez parfaitement votre garde-manger !';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Économisez sur chaque voyage !';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'N\'oubliez jamais un article !';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Achetez en deux fois moins de temps !';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organisez vos courses en famille !';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Découvrez de nouvelles recettes !';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Suivez parfaitement votre garde-manger !';

  @override
  String paywallPricePerDay(String price) {
    return 'Seulement $price/jour – moins qu\'un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Passer pour l\'instant';

  @override
  String get paywallTestimonial =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par trajet.';

  @override
  String get paywallTestimonialAuthor => 'Anne S.';

  @override
  String get paywallTrialDisclaimer =>
      'Annulez à tout moment · Sans frais jusqu\'à la fin de votre essai';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hé $name ! De quoi $category avez-vous besoin ?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De quoi $category avez-vous besoin ?';
  }

  @override
  String get onboardingAiDemoYes => 'Oui!';

  @override
  String get onboardingAiDemoReaction => 'Bon!';

  @override
  String get onboardingAiDemoChange => 'Changer l\'article';

  @override
  String get onboardingAiDemoOffer => 'Essayez de taper autre chose !';

  @override
  String get onboardingAiDemoContinue => 'Continuer';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Votre liste de courses, maintenant avec l\'IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Découvrez comment Kipi crée votre liste complète en quelques secondes';

  @override
  String get onboardingAiDemoSlideCta => 'Je veux ça ! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'J\'organise un barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Prêt! Voici tout ce dont vous avez besoin :';

  @override
  String get onboardingAiDemoSlideDone =>
      'Liste complète en quelques secondes ✨';

  @override
  String get onboardingPainTitle => 'Qu\'est-ce qui vous frustre le plus ?';

  @override
  String get onboardingPainSubtitle =>
      'Soyez honnête : nous réparerons chacun d\'entre eux';

  @override
  String get onboardingPainCta => 'Oui, répare ça pour moi →';

  @override
  String get onboardingPainForget => 'J\'oublie des articles au magasin';

  @override
  String get onboardingPainFamily => 'Ma famille ne voit jamais la liste';

  @override
  String get onboardingPainOverspend => 'Je dépasse toujours le budget';

  @override
  String get onboardingPainRepeat => 'Un voyage ne suffit jamais';
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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

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
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

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
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining actions IA restantes ce mois-ci – mise à niveau illimitée';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensuelle d\'IA atteinte. Passez à Pro pour un accès illimité →';

  @override
  String get kipiListTitle => 'Liste Kipi';

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
  String get onboardingMaybeLater => 'Peut-être plus tard';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organise tes courses de la bonne manière.';
  }

  @override
  String get onboardingSlide1Title => 'Listes de courses intelligentes';

  @override
  String get onboardingSlide1Body =>
      'Créez et partagez des listes instantanément. Kipi ajoute automatiquement des éléments en fonction de vos habitudes.';

  @override
  String get onboardingSlide2Title => 'Rencontrez Kipi';

  @override
  String get onboardingSlide2Body =>
      'Demandez n\'importe quoi : créez des listes, trouvez des recettes, suivez votre garde-manger, planifiez votre semaine.';

  @override
  String get onboardingSlide3Title => 'Garde-manger et planification des repas';

  @override
  String get onboardingSlide3Body =>
      'Suivez ce que vous avez, planifiez vos repas et générez automatiquement des listes de courses.';

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
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get noListSelected =>
      'Aucune liste sélectionnée. Ouvrez d\'abord une liste.';

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureDescAssistant =>
      'L\'IA organise automatiquement votre liste';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Créez autant de listes que nécessaire';

  @override
  String get paywallFeatureDescSharing => 'Achetez ensemble en temps réel';

  @override
  String get paywallFeatureDescPantry => 'Suivez ce que vous avez à la maison';

  @override
  String get paywallFeatureDescBudget => 'Respectez votre budget chaque mois';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String paywallTrialInCard(int days) {
    return 'Premiers $days jours GRATUITS';
  }

  @override
  String get paywallSecuredByStore =>
      'Sécurisé par Google Play · Annulez à tout moment';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
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
  String shareReferralText(String url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

  @override
  String get skip => 'Sauter';

  @override
  String get onboardingAiTitle => 'Discutez avec Kipi';

  @override
  String get onboardingAiGreeting =>
      'Salut! Je m\'appelle Kipi, votre assistante commerciale personnelle ! 🛒';

  @override
  String get onboardingAiAskName => 'Quel est ton nom?';

  @override
  String get onboardingAiNameHint => 'Tapez votre nom...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Ravi de vous rencontrer, $name ! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Quel est votre plat préféré ?';

  @override
  String get onboardingAiFoodHint => 'par ex. Pizzas, Sushis...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Excellents choix ! Voici ce que j\'ajouterais à votre liste :\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Est-ce que ça a l\'air bien ? Essayez de taper autre chose !';

  @override
  String get onboardingAiReady =>
      'Super! Vous êtes prêt à commencer. Créons votre compte !';

  @override
  String get onboardingAiContinue => 'Continuer →';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String connectionErrorDesc(String error) {
    return 'Erreur : $error';
  }

  @override
  String get errorLoadingLists => 'Erreur lors du chargement des listes';

  @override
  String get noListsFound => 'Aucune liste trouvée';

  @override
  String get backToToday => 'Retour à aujourd\'hui';

  @override
  String get quickSuggestions => 'Suggestions rapides';

  @override
  String get aiEnergyLow => 'Faible énergie de l\'IA';

  @override
  String get aiUnlockUnlimited => 'Débloquez une IA illimitée';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 aujourd\'hui';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonnez-vous pour une IA illimitée';

  @override
  String get unlockWithAd => 'Débloquer avec une annonce';

  @override
  String get conversationHistoryTitle => 'Historique des conversations';

  @override
  String get noConversationsFound => 'Aucune conversation trouvée';

  @override
  String get errorLoadingHistory => 'Erreur de chargement de l\'historique';

  @override
  String get deleteConversationTitle => 'Supprimer la conversation';

  @override
  String get deleteConversationConfirm =>
      'Cette action ne peut pas être annulée.';

  @override
  String get deleteConversation => 'Supprimer';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Actif';

  @override
  String get unlockPremiumTitle => 'Débloquez la prime';

  @override
  String get loadingSubscription => 'Chargement de l\'abonnement...';

  @override
  String get errorLoadingSubscription =>
      'Erreur lors du chargement de l\'abonnement';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Mon profil';

  @override
  String get profileSubtitle => 'Informations sur votre profil';

  @override
  String get customizeAiAssistant => 'Personnaliser l\'assistant IA';

  @override
  String get assistantHistory => 'Historique des assistants';

  @override
  String get assistantHistorySubtitle =>
      'Afficher l\'historique de vos conversations';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get manageCategoriesSubtitle =>
      'Ajouter, modifier ou supprimer des catégories';

  @override
  String get customizeAssistant => 'Personnaliser';

  @override
  String get assistantName => 'Nom de l\'assistant';

  @override
  String get chooseIcon => 'Choisir l\'icône';

  @override
  String get profileSaved => 'Profil enregistré';

  @override
  String get errorSavingProfile => 'Erreur lors de l\'enregistrement du profil';

  @override
  String get userProfile => 'Profil utilisateur';

  @override
  String get profileDescription => 'Description du profil';

  @override
  String get preferredMarket => 'Marché préféré';

  @override
  String get preferredMarketHint =>
      'Où faites-vous habituellement vos achats ?';

  @override
  String get dietaryRestrictions => 'Restrictions alimentaires';

  @override
  String get dietaryRestrictionsHint => 'Des restrictions alimentaires ?';

  @override
  String get marketsToAvoid => 'Marchés à éviter';

  @override
  String get marketsToAvoidHint =>
      'Les marchés sur lesquels vous préférez ne pas faire vos achats';

  @override
  String get observations => 'Observations';

  @override
  String get observationsHint => 'Des notes supplémentaires ?';

  @override
  String get saveProfile => 'Enregistrer le profil';

  @override
  String get everythingReady => 'Tout est prêt !';

  @override
  String get youCompletedList => 'Vous avez complété la liste !';

  @override
  String get selectCheaperAlternative =>
      'Sélectionnez une alternative moins chère';

  @override
  String get suggestedItems => 'Articles suggérés';

  @override
  String get swapped => 'Échangé';

  @override
  String get swap => 'Échanger';

  @override
  String get chooseThemeColor => 'Choisissez la couleur du thème';

  @override
  String get manageCategoriesTitle => 'Gérer les catégories';

  @override
  String get categoryLimitReached => 'Limite de catégorie atteinte';

  @override
  String get deleteCategoryTitle => 'Supprimer la catégorie';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Les éléments dans « $category » seront déplacés vers « Autres ».\nContinuer?';
  }

  @override
  String get deleteCategory => 'Supprimer';

  @override
  String get newCategoryDialog => 'Nouvelle catégorie';

  @override
  String get editCategoryDialog => 'Modifier la catégorie';

  @override
  String get categoryName => 'Nom de la catégorie';

  @override
  String get categoryNameHint => 'Entrez le nom de la catégorie';

  @override
  String get categoryColorLabel => 'Couleur';

  @override
  String get categoryIconLabel => 'Icône';

  @override
  String itemAddedSnack(String name) {
    return '$name ajouté';
  }

  @override
  String get kipiQuickBarHint => 'Que devez-vous acheter ?';

  @override
  String replaceItem(String item) {
    return 'Remplacer $item';
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
  String get onboardingHookHeadline =>
      'N\'oubliez plus jamais un article d\'épicerie';

  @override
  String get onboardingGoalSaveMoney => 'Économisez de l\'argent';

  @override
  String get onboardingGoalNeverForget => 'N\'oubliez jamais les articles';

  @override
  String get onboardingGoalFaster => 'Achetez plus rapidement';

  @override
  String get onboardingGoalFamily => 'Organiser les courses en famille';

  @override
  String get onboardingGoalRecipes => 'Découvrez des recettes';

  @override
  String get onboardingGoalPantry => 'Garde-manger sur rail';

  @override
  String get onboardingCommitmentsTitle => 'Qu\'est-ce qui compte pour vous ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choisissez vos objectifs pour personnaliser KipiList';

  @override
  String get onboardingCommitmentsCta => 'Allons-y!';

  @override
  String get onboardingPersonalizationNameLabel => 'Votre nom';

  @override
  String get onboardingPersonalizationNameHint => 'Entrez votre nom';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Que magasinez-vous ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Pour qui faites-vous vos achats ?';

  @override
  String get onboardingCategoryGrocery => 'Épiceries';

  @override
  String get onboardingCategoryPharmacy => 'Pharmacie';

  @override
  String get onboardingCategoryRecipes => 'Recettes';

  @override
  String get onboardingCategoryHome => 'Maison';

  @override
  String get onboardingCategoryPet => 'Animal de compagnie';

  @override
  String get onboardingGroupSolo => 'Juste moi';

  @override
  String get onboardingGroupCouple => 'Couple';

  @override
  String get onboardingGroupFamily => 'Famille';

  @override
  String get onboardingLoadingTitle => 'Préparez votre expérience...';

  @override
  String get onboardingLoadingStep1 => 'Analyser vos préférences...';

  @override
  String get onboardingLoadingStep2 => 'Configuration de l\'assistant IA...';

  @override
  String get onboardingLoadingStep3 => 'Presque prêt...';

  @override
  String get onboardingLoadingStat1Label => 'Articles catalogués';

  @override
  String get onboardingLoadingStat2Label => 'Les utilisateurs ont aidé';

  @override
  String get onboardingLoadingStat3Label => 'Minutes économisées';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, économisez sur chaque voyage !';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, n\'oubliez jamais un article !';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, faites vos achats en deux fois moins de temps !';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organisez les courses en famille !';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, découvrez de nouvelles recettes !';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, suivez parfaitement votre garde-manger !';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Économisez sur chaque voyage !';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'N\'oubliez jamais un article !';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Achetez en deux fois moins de temps !';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organisez vos courses en famille !';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Découvrez de nouvelles recettes !';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Suivez parfaitement votre garde-manger !';

  @override
  String paywallPricePerDay(String price) {
    return 'Seulement $price/jour – moins qu\'un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Passer pour l\'instant';

  @override
  String get paywallTestimonial =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par trajet.';

  @override
  String get paywallTestimonialAuthor => 'Anne S.';

  @override
  String get paywallTrialDisclaimer =>
      'Annulez à tout moment · Sans frais jusqu\'à la fin de votre essai';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hé $name ! De quoi $category avez-vous besoin ?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De quoi $category avez-vous besoin ?';
  }

  @override
  String get onboardingAiDemoYes => 'Oui!';

  @override
  String get onboardingAiDemoReaction => 'Bon!';

  @override
  String get onboardingAiDemoChange => 'Changer l\'article';

  @override
  String get onboardingAiDemoOffer => 'Essayez de taper autre chose !';

  @override
  String get onboardingAiDemoContinue => 'Continuer';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Votre liste de courses, maintenant avec l\'IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Découvrez comment Kipi crée votre liste complète en quelques secondes';

  @override
  String get onboardingAiDemoSlideCta => 'Je veux ça ! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'J\'organise un barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Prêt! Voici tout ce dont vous avez besoin :';

  @override
  String get onboardingAiDemoSlideDone =>
      'Liste complète en quelques secondes ✨';

  @override
  String get onboardingPainTitle => 'Qu\'est-ce qui vous frustre le plus ?';

  @override
  String get onboardingPainSubtitle =>
      'Soyez honnête : nous réparerons chacun d\'entre eux';

  @override
  String get onboardingPainCta => 'Oui, répare ça pour moi →';

  @override
  String get onboardingPainForget => 'J\'oublie des articles au magasin';

  @override
  String get onboardingPainFamily => 'Ma famille ne voit jamais la liste';

  @override
  String get onboardingPainOverspend => 'Je dépasse toujours le budget';

  @override
  String get onboardingPainRepeat => 'Un voyage ne suffit jamais';
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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

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
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

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
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining actions IA restantes ce mois-ci – mise à niveau illimitée';
  }

  @override
  String get aiUsageExhausted =>
      'Limite mensuelle d\'IA atteinte. Passez à Pro pour un accès illimité →';

  @override
  String get kipiListTitle => 'Liste Kipi';

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
  String get onboardingMaybeLater => 'Peut-être plus tard';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organise tes courses de la bonne manière.';
  }

  @override
  String get onboardingSlide1Title => 'Listes de courses intelligentes';

  @override
  String get onboardingSlide1Body =>
      'Créez et partagez des listes instantanément. Kipi ajoute automatiquement des éléments en fonction de vos habitudes.';

  @override
  String get onboardingSlide2Title => 'Rencontrez Kipi';

  @override
  String get onboardingSlide2Body =>
      'Demandez n\'importe quoi : créez des listes, trouvez des recettes, suivez votre garde-manger, planifiez votre semaine.';

  @override
  String get onboardingSlide3Title => 'Garde-manger et planification des repas';

  @override
  String get onboardingSlide3Body =>
      'Suivez ce que vous avez, planifiez vos repas et générez automatiquement des listes de courses.';

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
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get noListSelected =>
      'Aucune liste sélectionnée. Ouvrez d\'abord une liste.';

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureDescAssistant =>
      'L\'IA organise automatiquement votre liste';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Créez autant de listes que nécessaire';

  @override
  String get paywallFeatureDescSharing => 'Achetez ensemble en temps réel';

  @override
  String get paywallFeatureDescPantry => 'Suivez ce que vous avez à la maison';

  @override
  String get paywallFeatureDescBudget => 'Respectez votre budget chaque mois';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String paywallTrialInCard(int days) {
    return 'Premiers $days jours GRATUITS';
  }

  @override
  String get paywallSecuredByStore =>
      'Sécurisé par Google Play · Annulez à tout moment';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
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
  String shareReferralText(String url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

  @override
  String get skip => 'Sauter';

  @override
  String get onboardingAiTitle => 'Discutez avec Kipi';

  @override
  String get onboardingAiGreeting =>
      'Salut! Je m\'appelle Kipi, votre assistante commerciale personnelle ! 🛒';

  @override
  String get onboardingAiAskName => 'Quel est ton nom?';

  @override
  String get onboardingAiNameHint => 'Tapez votre nom...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Ravi de vous rencontrer, $name ! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Quel est votre plat préféré ?';

  @override
  String get onboardingAiFoodHint => 'par ex. Pizzas, Sushis...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Excellents choix ! Voici ce que j\'ajouterais à votre liste :\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Est-ce que ça a l\'air bien ? Essayez de taper autre chose !';

  @override
  String get onboardingAiReady =>
      'Super! Vous êtes prêt à commencer. Créons votre compte !';

  @override
  String get onboardingAiContinue => 'Continuer →';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String connectionErrorDesc(String error) {
    return 'Erreur : $error';
  }

  @override
  String get errorLoadingLists => 'Erreur lors du chargement des listes';

  @override
  String get noListsFound => 'Aucune liste trouvée';

  @override
  String get backToToday => 'Retour à aujourd\'hui';

  @override
  String get quickSuggestions => 'Suggestions rapides';

  @override
  String get aiEnergyLow => 'Faible énergie de l\'IA';

  @override
  String get aiUnlockUnlimited => 'Débloquez une IA illimitée';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 aujourd\'hui';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonnez-vous pour une IA illimitée';

  @override
  String get unlockWithAd => 'Débloquer avec une annonce';

  @override
  String get conversationHistoryTitle => 'Historique des conversations';

  @override
  String get noConversationsFound => 'Aucune conversation trouvée';

  @override
  String get errorLoadingHistory => 'Erreur de chargement de l\'historique';

  @override
  String get deleteConversationTitle => 'Supprimer la conversation';

  @override
  String get deleteConversationConfirm =>
      'Cette action ne peut pas être annulée.';

  @override
  String get deleteConversation => 'Supprimer';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Actif';

  @override
  String get unlockPremiumTitle => 'Débloquez la prime';

  @override
  String get loadingSubscription => 'Chargement de l\'abonnement...';

  @override
  String get errorLoadingSubscription =>
      'Erreur lors du chargement de l\'abonnement';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Mon profil';

  @override
  String get profileSubtitle => 'Informations sur votre profil';

  @override
  String get customizeAiAssistant => 'Personnaliser l\'assistant IA';

  @override
  String get assistantHistory => 'Historique des assistants';

  @override
  String get assistantHistorySubtitle =>
      'Afficher l\'historique de vos conversations';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get manageCategoriesSubtitle =>
      'Ajouter, modifier ou supprimer des catégories';

  @override
  String get customizeAssistant => 'Personnaliser';

  @override
  String get assistantName => 'Nom de l\'assistant';

  @override
  String get chooseIcon => 'Choisir l\'icône';

  @override
  String get profileSaved => 'Profil enregistré';

  @override
  String get errorSavingProfile => 'Erreur lors de l\'enregistrement du profil';

  @override
  String get userProfile => 'Profil utilisateur';

  @override
  String get profileDescription => 'Description du profil';

  @override
  String get preferredMarket => 'Marché préféré';

  @override
  String get preferredMarketHint =>
      'Où faites-vous habituellement vos achats ?';

  @override
  String get dietaryRestrictions => 'Restrictions alimentaires';

  @override
  String get dietaryRestrictionsHint => 'Des restrictions alimentaires ?';

  @override
  String get marketsToAvoid => 'Marchés à éviter';

  @override
  String get marketsToAvoidHint =>
      'Les marchés sur lesquels vous préférez ne pas faire vos achats';

  @override
  String get observations => 'Observations';

  @override
  String get observationsHint => 'Des notes supplémentaires ?';

  @override
  String get saveProfile => 'Enregistrer le profil';

  @override
  String get everythingReady => 'Tout est prêt !';

  @override
  String get youCompletedList => 'Vous avez complété la liste !';

  @override
  String get selectCheaperAlternative =>
      'Sélectionnez une alternative moins chère';

  @override
  String get suggestedItems => 'Articles suggérés';

  @override
  String get swapped => 'Échangé';

  @override
  String get swap => 'Échanger';

  @override
  String get chooseThemeColor => 'Choisissez la couleur du thème';

  @override
  String get manageCategoriesTitle => 'Gérer les catégories';

  @override
  String get categoryLimitReached => 'Limite de catégorie atteinte';

  @override
  String get deleteCategoryTitle => 'Supprimer la catégorie';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Les éléments dans « $category » seront déplacés vers « Autres ».\nContinuer?';
  }

  @override
  String get deleteCategory => 'Supprimer';

  @override
  String get newCategoryDialog => 'Nouvelle catégorie';

  @override
  String get editCategoryDialog => 'Modifier la catégorie';

  @override
  String get categoryName => 'Nom de la catégorie';

  @override
  String get categoryNameHint => 'Entrez le nom de la catégorie';

  @override
  String get categoryColorLabel => 'Couleur';

  @override
  String get categoryIconLabel => 'Icône';

  @override
  String itemAddedSnack(String name) {
    return '$name ajouté';
  }

  @override
  String get kipiQuickBarHint => 'Que devez-vous acheter ?';

  @override
  String replaceItem(String item) {
    return 'Remplacer $item';
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
  String get onboardingHookHeadline =>
      'N\'oubliez plus jamais un article d\'épicerie';

  @override
  String get onboardingGoalSaveMoney => 'Économisez de l\'argent';

  @override
  String get onboardingGoalNeverForget => 'N\'oubliez jamais les articles';

  @override
  String get onboardingGoalFaster => 'Achetez plus rapidement';

  @override
  String get onboardingGoalFamily => 'Organiser les courses en famille';

  @override
  String get onboardingGoalRecipes => 'Découvrez des recettes';

  @override
  String get onboardingGoalPantry => 'Garde-manger sur rail';

  @override
  String get onboardingCommitmentsTitle => 'Qu\'est-ce qui compte pour vous ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choisissez vos objectifs pour personnaliser KipiList';

  @override
  String get onboardingCommitmentsCta => 'Allons-y!';

  @override
  String get onboardingPersonalizationNameLabel => 'Votre nom';

  @override
  String get onboardingPersonalizationNameHint => 'Entrez votre nom';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Que magasinez-vous ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Pour qui faites-vous vos achats ?';

  @override
  String get onboardingCategoryGrocery => 'Épiceries';

  @override
  String get onboardingCategoryPharmacy => 'Pharmacie';

  @override
  String get onboardingCategoryRecipes => 'Recettes';

  @override
  String get onboardingCategoryHome => 'Maison';

  @override
  String get onboardingCategoryPet => 'Animal de compagnie';

  @override
  String get onboardingGroupSolo => 'Juste moi';

  @override
  String get onboardingGroupCouple => 'Couple';

  @override
  String get onboardingGroupFamily => 'Famille';

  @override
  String get onboardingLoadingTitle => 'Préparez votre expérience...';

  @override
  String get onboardingLoadingStep1 => 'Analyser vos préférences...';

  @override
  String get onboardingLoadingStep2 => 'Configuration de l\'assistant IA...';

  @override
  String get onboardingLoadingStep3 => 'Presque prêt...';

  @override
  String get onboardingLoadingStat1Label => 'Articles catalogués';

  @override
  String get onboardingLoadingStat2Label => 'Les utilisateurs ont aidé';

  @override
  String get onboardingLoadingStat3Label => 'Minutes économisées';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, économisez sur chaque voyage !';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, n\'oubliez jamais un article !';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, faites vos achats en deux fois moins de temps !';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organisez les courses en famille !';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, découvrez de nouvelles recettes !';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, suivez parfaitement votre garde-manger !';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Économisez sur chaque voyage !';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'N\'oubliez jamais un article !';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Achetez en deux fois moins de temps !';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organisez vos courses en famille !';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Découvrez de nouvelles recettes !';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Suivez parfaitement votre garde-manger !';

  @override
  String paywallPricePerDay(String price) {
    return 'Seulement $price/jour – moins qu\'un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Passer pour l\'instant';

  @override
  String get paywallTestimonial =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par trajet.';

  @override
  String get paywallTestimonialAuthor => 'Anne S.';

  @override
  String get paywallTrialDisclaimer =>
      'Annulez à tout moment · Sans frais jusqu\'à la fin de votre essai';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hé $name ! De quoi $category avez-vous besoin ?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De quoi $category avez-vous besoin ?';
  }

  @override
  String get onboardingAiDemoYes => 'Oui!';

  @override
  String get onboardingAiDemoReaction => 'Bon!';

  @override
  String get onboardingAiDemoChange => 'Changer l\'article';

  @override
  String get onboardingAiDemoOffer => 'Essayez de taper autre chose !';

  @override
  String get onboardingAiDemoContinue => 'Continuer';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Votre liste de courses, maintenant avec l\'IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Découvrez comment Kipi crée votre liste complète en quelques secondes';

  @override
  String get onboardingAiDemoSlideCta => 'Je veux ça ! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'J\'organise un barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Prêt! Voici tout ce dont vous avez besoin :';

  @override
  String get onboardingAiDemoSlideDone =>
      'Liste complète en quelques secondes ✨';

  @override
  String get onboardingPainTitle => 'Qu\'est-ce qui vous frustre le plus ?';

  @override
  String get onboardingPainSubtitle =>
      'Soyez honnête : nous réparerons chacun d\'entre eux';

  @override
  String get onboardingPainCta => 'Oui, répare ça pour moi →';

  @override
  String get onboardingPainForget => 'J\'oublie des articles au magasin';

  @override
  String get onboardingPainFamily => 'Ma famille ne voit jamais la liste';

  @override
  String get onboardingPainOverspend => 'Je dépasse toujours le budget';

  @override
  String get onboardingPainRepeat => 'Un voyage ne suffit jamais';
}
