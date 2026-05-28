// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ショッピングリスト';

  @override
  String get lists => 'リスト';

  @override
  String get pantry => 'パントリー';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get create => '作成';

  @override
  String get add => '追加';

  @override
  String get remove => '削除';

  @override
  String get delete => '削除';

  @override
  String get edit => '編集';

  @override
  String get copy => 'コピー';

  @override
  String get retry => '再試行';

  @override
  String get regenerate => '再生成';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get confirm => '確認';

  @override
  String get close => '閉じる';

  @override
  String get import => 'インポート';

  @override
  String get rename => '名前を変更';

  @override
  String get upgrade => 'アップグレード';

  @override
  String get clear => 'クリア';

  @override
  String error(String message) {
    return 'エラー: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'エラー: $message';
  }

  @override
  String get purchaseError => '購入処理中にエラーが発生しました。もう一度お試しください。';

  @override
  String get restoreError => '購入の復元中にエラーが発生しました。もう一度お試しください。';

  @override
  String get loading => '読み込み中...';

  @override
  String get fieldRequired => '必須項目';

  @override
  String get addedFeedback => '追加しました！';

  @override
  String selectedItems(int count) {
    return '$count個選択中';
  }

  @override
  String get estimated => '推定';

  @override
  String get alreadyPurchased => '購入済み';

  @override
  String get clearList => 'リストをクリア';

  @override
  String get clearPurchased => '購入済みを消去';

  @override
  String get share => '共有';

  @override
  String get shareViaCode => 'コードで共有';

  @override
  String get importViaCode => 'コードでインポート';

  @override
  String get listAssistant => 'リストアシスタント';

  @override
  String get globalAssistant => 'グローバルアシスタント';

  @override
  String get becomePremium => 'プレミアムに登録';

  @override
  String get manageSubscription => 'サブスクリプション管理';

  @override
  String get completePurchase => '購入を完了';

  @override
  String get confirmClearList => 'すべてのアイテムを削除しますか？';

  @override
  String get shareListTitle => 'リストを共有';

  @override
  String get shareThisCode => 'このコードを共有：';

  @override
  String get validForLimitedTime => '期間限定で有効';

  @override
  String get importListTitle => 'リストをインポート';

  @override
  String get enterCodeHint => 'コードを入力';

  @override
  String get confirmArchiveTitle => '購入を完了';

  @override
  String get confirmArchiveContent => 'この購入を完了してリストをアーカイブしますか？';

  @override
  String get complete => '完了';

  @override
  String get listArchived => 'リストをアーカイブしました！';

  @override
  String listAdded(String listName) {
    return '$listNameを追加しました！';
  }

  @override
  String get buy => '購入';

  @override
  String get unmark => 'マーク解除';

  @override
  String confirmDeleteItems(int count) {
    return '$count個のアイテムを削除しますか？';
  }

  @override
  String get confirmDeleteTitle => '確認';

  @override
  String confirmContent(int count) {
    return '$count個のアイテムを削除しますか？';
  }

  @override
  String get archiveList => 'リストをアーカイブ';

  @override
  String get pantryAppBar => 'パントリー';

  @override
  String get generateShoppingList => '買い物リストを生成';

  @override
  String get pantryEmpty => 'パントリーは空です';

  @override
  String get pantryEmptySubtitle => '家に置いておきたい商品を追加';

  @override
  String itemsNeedPurchase(int deficit) {
    return '購入が必要なアイテム: $deficit';
  }

  @override
  String get noItemsToBuy => '購入が必要なアイテムはありません';

  @override
  String get newPantryList => 'パントリーの買い物';

  @override
  String get newListTitle => '新しい買い物リスト';

  @override
  String itemsWillBeAdded(int count) {
    return '$count個のアイテムが追加されます';
  }

  @override
  String get listNameLabel => 'リスト名';

  @override
  String listCreated(String name, int count) {
    return 'リスト「$name」を$count個のアイテムで作成しました';
  }

  @override
  String get noTracking => '追跡なし';

  @override
  String get markAsPurchased => '購入済みにする';

  @override
  String editPantryItem(String name) {
    return '$nameを編集';
  }

  @override
  String get idealQuantity => '理想の数量';

  @override
  String get currentQuantity => '現在の数量';

  @override
  String get consumed => '消費済み';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$nameを$quantity$unitに補充しました';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'パントリーから「$name」を削除しますか？';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameを編集';
  }

  @override
  String get settingsAppBar => '設定';

  @override
  String get language => '言語';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'システムデフォルト';

  @override
  String get chooseLanguage => '言語を選択';

  @override
  String get searchLanguage => '言語を検索...';

  @override
  String get appearance => '外観';

  @override
  String get light => 'ライト';

  @override
  String get system => 'システム';

  @override
  String get dark => 'ダーク';

  @override
  String get themeColor => 'テーマカラー';

  @override
  String get dynamicColors => 'ダイナミックカラー';

  @override
  String get dynamicColorsSubtitle => '壁紙に基づいた色を使用する';

  @override
  String get finance => '財務';

  @override
  String get monthlyBudgetNav => '月間予算';

  @override
  String get budgetSubtitle => '月々の支出を追跡';

  @override
  String get data => 'データ';

  @override
  String get backupNav => 'バックアップ';

  @override
  String get backupSubtitle => 'データのエクスポートまたはインポート';

  @override
  String get about => 'このアプリについて';

  @override
  String get version => 'バージョン';

  @override
  String get privacy => 'プライバシー';

  @override
  String get termsOfUse => '利用規約';

  @override
  String get backupTitle => 'バックアップ';

  @override
  String get backupPremiumDescription => 'バックアップとエクスポートはプレミアム機能です';

  @override
  String get exportData => 'データをエクスポート';

  @override
  String get exportDataSubtitle => 'すべてのリストをJSONとして保存';

  @override
  String get importData => 'データをインポート';

  @override
  String get importDataSubtitle => 'JSONからリストを復元';

  @override
  String get importJsonTitle => 'JSONをインポート';

  @override
  String get importJsonHint => 'バックアップJSONをここに貼り付け...';

  @override
  String get backupExported => 'バックアップをエクスポートしました！';

  @override
  String get budgetAppBar => '月間予算';

  @override
  String get budgetPremiumLocked => 'グローバル月間予算はプレミアム機能です';

  @override
  String get budgetUpgradePrompt => 'アップグレードして解除';

  @override
  String get noBudgetDefined => '予算が設定されていません';

  @override
  String totalEstimated(String amount) {
    return '推定合計: $amount';
  }

  @override
  String get setBudgetButton => '予算を設定';

  @override
  String get budgetLists => 'リスト';

  @override
  String get budgetValueLabel => '金額';

  @override
  String get setBudgetTitle => '月間予算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'すべて';

  @override
  String get filterPending => '保留中';

  @override
  String get filterPurchased => '購入済み';

  @override
  String get sortName => '名前';

  @override
  String get sortCategory => 'カテゴリ';

  @override
  String get sortDate => '日付';

  @override
  String get sortManual => '手動';

  @override
  String get addItem => 'アイテムを追加';

  @override
  String get itemName => 'アイテム名';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '単位';

  @override
  String get category => 'カテゴリ';

  @override
  String get estimatedPrice => '推定価格';

  @override
  String get addItemPrice => '推定価格';

  @override
  String get editItem => 'アイテムを編集';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '推定価格';

  @override
  String get addToPantry => 'パントリーに追加';

  @override
  String addToPantryPrompt(String name) {
    return '「$name」をパントリーに追加しますか？';
  }

  @override
  String get yes => 'はい';

  @override
  String get productName => '商品名';

  @override
  String get idealQty => '理想の数';

  @override
  String get currentQty => '現在の数';

  @override
  String get trackStock => '在庫を追跡';

  @override
  String get trackStockActive => '買い物提案に表示';

  @override
  String get trackStockInactive => '買い物提案を生成しない';

  @override
  String get createListDialog => 'リストを作成';

  @override
  String get renameListDialog => 'リストの名前を変更';

  @override
  String get listHistory => 'リスト履歴';

  @override
  String get myLists => 'マイリスト';

  @override
  String get viewActive => 'アクティブを表示';

  @override
  String get viewHistory => '履歴を表示';

  @override
  String get noArchivedLists => 'アーカイブされたリストはありません';

  @override
  String get noActiveLists => 'アクティブなリストはありません';

  @override
  String completedOn(String date) {
    return '$dateに完了';
  }

  @override
  String get sharedLabel => '共有中';

  @override
  String get restore => '復元';

  @override
  String get removeSharedTooltip => '削除';

  @override
  String get deleteListTitle => 'リストを削除';

  @override
  String deleteListContent(String name) {
    return '「$name」を削除してもよろしいですか？すべてのアイテムが削除されます。';
  }

  @override
  String get removeSharedListTitle => '共有リストを削除';

  @override
  String removeSharedListContent(String name) {
    return '「$name」をリストから削除しますか？元のリストは影響を受けません。';
  }

  @override
  String get createNewList => '新しいリストを作成';

  @override
  String get aiAssistant => 'AIアシスタント';

  @override
  String get aiAssistantDescription => 'AIアシスタントでスマートな提案、レシピ、パーソナライズされたヒントを入手。';

  @override
  String get generalAssistant => '一般アシスタント';

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
  String get clearHistory => '履歴をクリア';

  @override
  String get clearHistoryConfirm => 'このセッションのすべてのメッセージを削除しますか？';

  @override
  String get chatHint => 'メッセージを入力...';

  @override
  String chatError(String error) {
    return 'チャットの読み込みエラー: $error';
  }

  @override
  String get listHelp => 'リストについてどう支援しましょうか？';

  @override
  String get generalHelp => '今日のお買い物についてどう支援しましょうか？';

  @override
  String get chatSubtitle => 'アイテムの提案、レシピ、節約のコツを尋ねてください。';

  @override
  String get aiError =>
      '申し訳ございません、リクエストの処理中にエラーが発生しました。接続を確認するか、後でもう一度お試しください。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'ログインして\nプレミアム機能を解除';

  @override
  String get signInGoogle => 'Googleでサインイン';

  @override
  String get signInApple => 'Appleでサインイン';

  @override
  String get continueAsGuest => 'ゲストとして続ける';

  @override
  String loginError(String error) {
    return 'ログインエラー: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus プレミアム';

  @override
  String get premiumUpgrade => 'アップグレードして解除';

  @override
  String get itemRemoved => 'アイテムを削除しました';

  @override
  String get undo => '元に戻す';

  @override
  String get emptyListTitle => 'リストは空です';

  @override
  String get emptyListSubtitle => 'アイテムを追加して開始';

  @override
  String get noListFoundTitle => 'リストが見つかりません';

  @override
  String get noListFoundSubtitle => '最初のリストを作成して開始';

  @override
  String get createFirstList => '最初のリストを作成';

  @override
  String get listBudgetTitle => 'リスト予算';

  @override
  String get budgetAmountLabel => '予算額';

  @override
  String get removeBudget => '削除';

  @override
  String get prefUnlimitedLists => '無制限のリスト';

  @override
  String get prefSharing => 'リストを共有';

  @override
  String get prefFullHistory => '完全な履歴';

  @override
  String get prefExportData => 'データをエクスポート';

  @override
  String get prefCustomThemes => 'カスタムテーマ';

  @override
  String get prefMonthlyBudget => 'グローバル月間予算';

  @override
  String get prefAIAssistant => 'パーソナルAIアシスタント';

  @override
  String get prefUnlimitedPantry => '無制限のパントリー';

  @override
  String get prefInteractiveArtifacts => 'インタラクティブAIアーティファクト';

  @override
  String get themeGreen => '緑';

  @override
  String get themeBlue => '青';

  @override
  String get themePurple => '紫';

  @override
  String get themeRed => '赤';

  @override
  String get themeOrange => 'オレンジ';

  @override
  String get themePink => 'ピンク';

  @override
  String get themeIndigo => 'インジゴ';

  @override
  String get themeAmber => '琥珀';

  @override
  String get themeTeal => 'ティール';

  @override
  String get themeBrown => '茶';

  @override
  String get catFruits => '果物';

  @override
  String get catCleaning => '掃除用品';

  @override
  String get catBeverages => '飲料';

  @override
  String get catBakery => 'パン・焼き菓子';

  @override
  String get catOthers => 'その他';

  @override
  String get unitPack => 'パック';

  @override
  String get shareSubject => 'ショッピングリスト';

  @override
  String get monthlyBudgetTitle => '月間予算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'リストを削除';

  @override
  String get pantryItemRemoved => 'アイテムを削除しました';

  @override
  String deficitItems(int deficit) {
    return '購入が必要なアイテム: $deficit';
  }

  @override
  String get cartTotal => 'カート合計';

  @override
  String get restockLabel => '補充';

  @override
  String get advancedFeatures => '高度な機能';

  @override
  String get selectAll => 'すべて選択';

  @override
  String get deselectAll => 'すべて解除';

  @override
  String get monthlyBudgetAppBar => '月間予算';

  @override
  String get budgetEditTitle => '月間予算';

  @override
  String get budgetDashboardTitle => 'ダッシュボード';

  @override
  String get selectListForDashboard => 'ダッシュボードを表示するリストを選択してください。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '分析するアイテムがリストにありません。';

  @override
  String get markItemsToSeeAnalysis => 'アイテムを購入済みとしてマークすると分析が表示されます。';

  @override
  String get totalSpending => '総支出';

  @override
  String get spendingByCategory => 'カテゴリ別支出';

  @override
  String get achievements => '実績';

  @override
  String get exportPdfExcel => 'PDF/Excelにエクスポート';

  @override
  String get exportPdf => 'PDFとしてエクスポート';

  @override
  String get exportExcel => 'Excelとしてエクスポート';

  @override
  String get organizingAi => 'AIで整理中...';

  @override
  String get yesLabel => 'はい';

  @override
  String get noLabel => 'いいえ';

  @override
  String get shareListText => 'マイショッピングリスト';

  @override
  String get emptyListAddItems => 'リストは空です！先にアイテムを追加してください。ℹ️';

  @override
  String get listOrganizedMagic => 'リストが魔法のようにカテゴリごとに整理されました！✨';

  @override
  String get shoppingMode => 'ショッピングモード';

  @override
  String get smartOrganization => 'スマート整理';

  @override
  String get savings => '節約';

  @override
  String get shoppingModeHeader => 'ショッピングモード';

  @override
  String get shareAsText => '整形テキストとしてアイテムを送信';

  @override
  String get shareRealtime => '他の人とリアルタイム同期';

  @override
  String get quickRecipe => 'クイックレシピ';

  @override
  String get quickRecipePrompt => 'リストのアイテムを使ったレシピを提案してください。';

  @override
  String get economyTips => '節約のコツ';

  @override
  String get economyTipsPrompt => 'この買い物でどうすれば節約できますか？';

  @override
  String get organizeAisles => '売り場順に整理';

  @override
  String get organizeAislesPrompt => 'スーパーの売り場順に整理してください。';

  @override
  String get recipeSuggestion => 'レシピ提案';

  @override
  String aiCreditsRemaining(int remaining) {
    return '残り$remainingクレジット';
  }

  @override
  String get addAllToList => 'すべてをリストに追加';

  @override
  String get organizeByAisles => '売り場順に整理';

  @override
  String get voiceTranscriptionTooltip => '音声入力（無料）';

  @override
  String get aiVoiceCommandTooltip => 'AI音声コマンド（プレミアム）';

  @override
  String get voiceCommandTitle => 'AI音声コマンド';

  @override
  String get voiceCommandContent =>
      '自然に話してリストを管理！\n\n例：\n• 「パン、チーズ、ハムを追加して」\n• 「洗濯洗剤を削除して」\n• 「テーマを青に変更して」\n\nこれはLista Plusプレミアムの特別な機能です。';

  @override
  String get voiceCommandPlanBtn => 'プランを見る';

  @override
  String get itemsAddedSuccess => 'アイテムをリストに追加しました！';

  @override
  String get viewList => 'リストを見る';

  @override
  String get feedbackTitle => 'フィードバックを送信';

  @override
  String get feedbackPrompt => '何を共有しますか？';

  @override
  String get feedbackTypeBug => 'バグを報告';

  @override
  String get feedbackTypeBugHint => '何かが動作していません';

  @override
  String get feedbackTypeSuggestion => '提案';

  @override
  String get feedbackTypeSuggestionHint => 'アプリを改善するアイデア';

  @override
  String get feedbackTypeTranslation => '翻訳の問題';

  @override
  String get feedbackTypeTranslationHint => '不正確または不自然な翻訳';

  @override
  String get feedbackTypeFeature => '機能リクエスト';

  @override
  String get feedbackTypeFeatureHint => '追加してほしい機能';

  @override
  String get feedbackTypeOther => 'その他';

  @override
  String get feedbackTypeOtherHint => 'その他のフィードバック';

  @override
  String get feedbackHint => 'フィードバックを詳しく説明してください...';

  @override
  String get feedbackSend => 'フィードバックを送信';

  @override
  String get feedbackSending => '送信中...';

  @override
  String get feedbackThankYou => 'ありがとうございます！';

  @override
  String get feedbackThankYouMessage =>
      'フィードバックを受け取りました。Lista Plusをより良くするために役立てます。';

  @override
  String get feedbackBack => '戻る';

  @override
  String feedbackError(String error) {
    return '送信エラー: $error';
  }

  @override
  String get feedbackRetry => '再試行';

  @override
  String get feedbackSettingsTitle => 'フィードバックを送信';

  @override
  String get feedbackSettingsSubtitle => 'バグの報告、改善の提案、翻訳の修正';

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
  String get openMenu => 'メニューを開く';

  @override
  String get viewRecipe => 'レシピを見る';

  @override
  String get recipeCreated => 'レシピを作成しました！';

  @override
  String get editRecipe => '編集';

  @override
  String get deleteRecipe => '削除';

  @override
  String get deleteRecipeConfirm => 'このレシピを削除しますか？';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '「$recipeName」を削除してもよろしいですか？この操作は取り消せません。';
  }

  @override
  String get ingredients => '材料';

  @override
  String get instructions => '作り方';

  @override
  String get prepTime => '調理時間';

  @override
  String get recipeSaved => 'レシピを保存しました！';

  @override
  String get noRecipesSaved => '保存されたレシピはありません';

  @override
  String get noRecipesSavedHint => '下のボタンをタップして、最初のカスタムレシピを作成しましょう。';

  @override
  String get myRecipes => 'マイレシピ';

  @override
  String get newRecipe => '新しいレシピ';

  @override
  String get loadingRecipes => 'レシピを読み込み中...';

  @override
  String get errorLoadingRecipes => 'レシピの読み込みエラー';

  @override
  String get addIngredient => '材料を追加';

  @override
  String get saveRecipe => '保存';

  @override
  String get recipeName => 'レシピ名';

  @override
  String get shortDescription => '短い説明';

  @override
  String get prepTimeMinutes => '調理時間（分）';

  @override
  String get instructionsHint => '1行に1ステップずつ入力...';

  @override
  String get addPhoto => '写真を追加';

  @override
  String get imageUrlPlaceholder => 'または画像のURLを貼り付け';

  @override
  String get tags => 'タグ';

  @override
  String get recipeTags => 'レシピのタグ';

  @override
  String get suggestedTags => 'おすすめ';

  @override
  String get searchRecipes => 'レシピを検索...';

  @override
  String get filterByTag => 'タグで絞り込む';

  @override
  String get allTags => 'すべて';

  @override
  String get recipeDeleted => 'レシピを削除しました';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get editRecipeTitle => 'レシピを編集';

  @override
  String get newRecipeTitle => '新しいレシピ';

  @override
  String get requiredField => '必須';

  @override
  String get chooseImageSource => '画像ソースを選択';

  @override
  String get gallery => 'ギャラリー';

  @override
  String get enterUrl => 'URLを入力';

  @override
  String get recipeImage => 'レシピ画像';

  @override
  String get removeImage => '画像を削除';

  @override
  String get mealPlannerTitle => '献立プランナー';

  @override
  String get mealPlannerViewMonthly => '月間表示';

  @override
  String get mealPlannerViewWeekly => '週間表示';

  @override
  String get mealPlannerNoMeals => '食事の予定なし';

  @override
  String get mealPlannerNoMealsHint => '日付をタップして食事を追加';

  @override
  String get mealPlannerLoading => '食事プランを読み込み中...';

  @override
  String get mealPlannerError => '食事プランの読み込みエラー';

  @override
  String get mealPlannerAddMeal => '食事を追加';

  @override
  String get mealPlannerEditMeal => '食事を編集';

  @override
  String get mealPlannerDeleteMeal => '食事を削除';

  @override
  String get mealPlannerMealDeleted => '食事を削除しました';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count人分',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '分量（人分）';

  @override
  String get mealPlannerNoteLabel => 'メモ（任意）';

  @override
  String get mealPlannerSelectRecipe => 'レシピを選択';

  @override
  String get mealPlannerSearchRecipes => 'レシピを検索...';

  @override
  String get mealPlannerNoRecipesFound => 'レシピが見つかりません';

  @override
  String get mealPlannerNoRecipesHint => 'まず「レシピ」タブでレシピを作成してください';

  @override
  String get mealPlannerSave => 'プランに追加';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total食中$count食を計画済み';
  }

  @override
  String get mealPlannerGenerateList => '買い物リストを生成';

  @override
  String get mealPlannerGenerateListConfirm =>
      '今週の予定された食事のすべての材料を買い物リストに追加しますか？';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count個の材料をリストに追加しました！';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      '追加する材料がありません。まずレシピを含む食事を計画してください。';

  @override
  String get mealPlannerGenerateListNoList => '買い物リストを先に作成してください。';

  @override
  String get mealPlannerMealTypeBreakfast => '朝食';

  @override
  String get mealPlannerMealTypeLunch => '昼食';

  @override
  String get mealPlannerMealTypeDinner => '夕食';

  @override
  String get mealPlannerMealTypeSnack => '間食';

  @override
  String get mealPlannerDateLabel => '日付';

  @override
  String get mealPlannerWeekEmpty => '今週の予定はありません';

  @override
  String get mealPlannerWeekEmptyHint => '日付をタップして食事の計画を始めましょう！';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes分';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';
}

/// The translations for Japanese, as used in Japan (`ja_JP`).
class AppLocalizationsJaJp extends AppLocalizationsJa {
  AppLocalizationsJaJp() : super('ja_JP');

  @override
  String get appTitle => 'ショッピングリスト';

  @override
  String get lists => 'リスト';

  @override
  String get pantry => 'パントリー';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get create => '作成';

  @override
  String get add => '追加';

  @override
  String get remove => '削除';

  @override
  String get delete => '削除';

  @override
  String get edit => '編集';

  @override
  String get copy => 'コピー';

  @override
  String get retry => '再試行';

  @override
  String get regenerate => '再生成';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get confirm => '確認';

  @override
  String get close => '閉じる';

  @override
  String get import => 'インポート';

  @override
  String get rename => '名前を変更';

  @override
  String get upgrade => 'アップグレード';

  @override
  String get clear => 'クリア';

  @override
  String error(String message) {
    return 'エラー: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'エラー: $message';
  }

  @override
  String get purchaseError => '購入処理中にエラーが発生しました。もう一度お試しください。';

  @override
  String get restoreError => '購入の復元中にエラーが発生しました。もう一度お試しください。';

  @override
  String get loading => '読み込み中...';

  @override
  String get fieldRequired => '必須項目';

  @override
  String get addedFeedback => '追加しました！';

  @override
  String selectedItems(int count) {
    return '$count個選択中';
  }

  @override
  String get estimated => '推定';

  @override
  String get alreadyPurchased => '購入済み';

  @override
  String get clearList => 'リストをクリア';

  @override
  String get clearPurchased => '購入済みを消去';

  @override
  String get share => '共有';

  @override
  String get shareViaCode => 'コードで共有';

  @override
  String get importViaCode => 'コードでインポート';

  @override
  String get listAssistant => 'リストアシスタント';

  @override
  String get globalAssistant => 'グローバルアシスタント';

  @override
  String get becomePremium => 'プレミアムに登録';

  @override
  String get manageSubscription => 'サブスクリプション管理';

  @override
  String get completePurchase => '購入を完了';

  @override
  String get confirmClearList => 'すべてのアイテムを削除しますか？';

  @override
  String get shareListTitle => 'リストを共有';

  @override
  String get shareThisCode => 'このコードを共有：';

  @override
  String get validForLimitedTime => '期間限定で有効';

  @override
  String get importListTitle => 'リストをインポート';

  @override
  String get enterCodeHint => 'コードを入力';

  @override
  String get confirmArchiveTitle => '購入を完了';

  @override
  String get confirmArchiveContent => 'この購入を完了してリストをアーカイブしますか？';

  @override
  String get complete => '完了';

  @override
  String get listArchived => 'リストをアーカイブしました！';

  @override
  String listAdded(String listName) {
    return '$listNameを追加しました！';
  }

  @override
  String get buy => '購入';

  @override
  String get unmark => 'マーク解除';

  @override
  String confirmDeleteItems(int count) {
    return '$count個のアイテムを削除しますか？';
  }

  @override
  String get confirmDeleteTitle => '確認';

  @override
  String confirmContent(int count) {
    return '$count個のアイテムを削除しますか？';
  }

  @override
  String get archiveList => 'リストをアーカイブ';

  @override
  String get pantryAppBar => 'パントリー';

  @override
  String get generateShoppingList => '買い物リストを生成';

  @override
  String get pantryEmpty => 'パントリーは空です';

  @override
  String get pantryEmptySubtitle => '家に置いておきたい商品を追加';

  @override
  String itemsNeedPurchase(int deficit) {
    return '購入が必要なアイテム: $deficit';
  }

  @override
  String get noItemsToBuy => '購入が必要なアイテムはありません';

  @override
  String get newPantryList => 'パントリーの買い物';

  @override
  String get newListTitle => '新しい買い物リスト';

  @override
  String itemsWillBeAdded(int count) {
    return '$count個のアイテムが追加されます';
  }

  @override
  String get listNameLabel => 'リスト名';

  @override
  String listCreated(String name, int count) {
    return 'リスト「$name」を$count個のアイテムで作成しました';
  }

  @override
  String get noTracking => '追跡なし';

  @override
  String get markAsPurchased => '購入済みにする';

  @override
  String editPantryItem(String name) {
    return '$nameを編集';
  }

  @override
  String get idealQuantity => '理想の数量';

  @override
  String get currentQuantity => '現在の数量';

  @override
  String get consumed => '消費済み';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$nameを$quantity$unitに補充しました';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'パントリーから「$name」を削除しますか？';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameを編集';
  }

  @override
  String get settingsAppBar => '設定';

  @override
  String get language => '言語';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'システムデフォルト';

  @override
  String get chooseLanguage => '言語を選択';

  @override
  String get searchLanguage => '言語を検索...';

  @override
  String get appearance => '外観';

  @override
  String get light => 'ライト';

  @override
  String get system => 'システム';

  @override
  String get dark => 'ダーク';

  @override
  String get themeColor => 'テーマカラー';

  @override
  String get dynamicColors => 'ダイナミックカラー';

  @override
  String get dynamicColorsSubtitle => '壁紙に基づいた色を使用する';

  @override
  String get finance => '財務';

  @override
  String get monthlyBudgetNav => '月間予算';

  @override
  String get budgetSubtitle => '月々の支出を追跡';

  @override
  String get data => 'データ';

  @override
  String get backupNav => 'バックアップ';

  @override
  String get backupSubtitle => 'データのエクスポートまたはインポート';

  @override
  String get about => 'このアプリについて';

  @override
  String get version => 'バージョン';

  @override
  String get privacy => 'プライバシー';

  @override
  String get termsOfUse => '利用規約';

  @override
  String get backupTitle => 'バックアップ';

  @override
  String get backupPremiumDescription => 'バックアップとエクスポートはプレミアム機能です';

  @override
  String get exportData => 'データをエクスポート';

  @override
  String get exportDataSubtitle => 'すべてのリストをJSONとして保存';

  @override
  String get importData => 'データをインポート';

  @override
  String get importDataSubtitle => 'JSONからリストを復元';

  @override
  String get importJsonTitle => 'JSONをインポート';

  @override
  String get importJsonHint => 'バックアップJSONをここに貼り付け...';

  @override
  String get backupExported => 'バックアップをエクスポートしました！';

  @override
  String get budgetAppBar => '月間予算';

  @override
  String get budgetPremiumLocked => 'グローバル月間予算はプレミアム機能です';

  @override
  String get budgetUpgradePrompt => 'アップグレードして解除';

  @override
  String get noBudgetDefined => '予算が設定されていません';

  @override
  String totalEstimated(String amount) {
    return '推定合計: $amount';
  }

  @override
  String get setBudgetButton => '予算を設定';

  @override
  String get budgetLists => 'リスト';

  @override
  String get budgetValueLabel => '金額';

  @override
  String get setBudgetTitle => '月間予算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'すべて';

  @override
  String get filterPending => '保留中';

  @override
  String get filterPurchased => '購入済み';

  @override
  String get sortName => '名前';

  @override
  String get sortCategory => 'カテゴリ';

  @override
  String get sortDate => '日付';

  @override
  String get sortManual => '手動';

  @override
  String get addItem => 'アイテムを追加';

  @override
  String get itemName => 'アイテム名';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '単位';

  @override
  String get category => 'カテゴリ';

  @override
  String get estimatedPrice => '推定価格';

  @override
  String get addItemPrice => '推定価格';

  @override
  String get editItem => 'アイテムを編集';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '推定価格';

  @override
  String get addToPantry => 'パントリーに追加';

  @override
  String addToPantryPrompt(String name) {
    return '「$name」をパントリーに追加しますか？';
  }

  @override
  String get yes => 'はい';

  @override
  String get productName => '商品名';

  @override
  String get idealQty => '理想の数';

  @override
  String get currentQty => '現在の数';

  @override
  String get trackStock => '在庫を追跡';

  @override
  String get trackStockActive => '買い物提案に表示';

  @override
  String get trackStockInactive => '買い物提案を生成しない';

  @override
  String get createListDialog => 'リストを作成';

  @override
  String get renameListDialog => 'リストの名前を変更';

  @override
  String get listHistory => 'リスト履歴';

  @override
  String get myLists => 'マイリスト';

  @override
  String get viewActive => 'アクティブを表示';

  @override
  String get viewHistory => '履歴を表示';

  @override
  String get noArchivedLists => 'アーカイブされたリストはありません';

  @override
  String get noActiveLists => 'アクティブなリストはありません';

  @override
  String completedOn(String date) {
    return '$dateに完了';
  }

  @override
  String get sharedLabel => '共有中';

  @override
  String get restore => '復元';

  @override
  String get removeSharedTooltip => '削除';

  @override
  String get deleteListTitle => 'リストを削除';

  @override
  String deleteListContent(String name) {
    return '「$name」を削除してもよろしいですか？すべてのアイテムが削除されます。';
  }

  @override
  String get removeSharedListTitle => '共有リストを削除';

  @override
  String removeSharedListContent(String name) {
    return '「$name」をリストから削除しますか？元のリストは影響を受けません。';
  }

  @override
  String get createNewList => '新しいリストを作成';

  @override
  String get aiAssistant => 'AIアシスタント';

  @override
  String get aiAssistantDescription => 'AIアシスタントでスマートな提案、レシピ、パーソナライズされたヒントを入手。';

  @override
  String get generalAssistant => '一般アシスタント';

  @override
  String get clearHistory => '履歴をクリア';

  @override
  String get clearHistoryConfirm => 'このセッションのすべてのメッセージを削除しますか？';

  @override
  String get chatHint => 'メッセージを入力...';

  @override
  String chatError(String error) {
    return 'チャットの読み込みエラー: $error';
  }

  @override
  String get listHelp => 'リストについてどう支援しましょうか？';

  @override
  String get generalHelp => '今日のお買い物についてどう支援しましょうか？';

  @override
  String get chatSubtitle => 'アイテムの提案、レシピ、節約のコツを尋ねてください。';

  @override
  String get aiError =>
      '申し訳ございません、リクエストの処理中にエラーが発生しました。接続を確認するか、後でもう一度お試しください。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'ログインして\nプレミアム機能を解除';

  @override
  String get signInGoogle => 'Googleでサインイン';

  @override
  String get signInApple => 'Appleでサインイン';

  @override
  String get continueAsGuest => 'ゲストとして続ける';

  @override
  String loginError(String error) {
    return 'ログインエラー: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus プレミアム';

  @override
  String get premiumUpgrade => 'アップグレードして解除';

  @override
  String get itemRemoved => 'アイテムを削除しました';

  @override
  String get undo => '元に戻す';

  @override
  String get emptyListTitle => 'リストは空です';

  @override
  String get emptyListSubtitle => 'アイテムを追加して開始';

  @override
  String get noListFoundTitle => 'リストが見つかりません';

  @override
  String get noListFoundSubtitle => '最初のリストを作成して開始';

  @override
  String get createFirstList => '最初のリストを作成';

  @override
  String get listBudgetTitle => 'リスト予算';

  @override
  String get budgetAmountLabel => '予算額';

  @override
  String get removeBudget => '削除';

  @override
  String get prefUnlimitedLists => '無制限のリスト';

  @override
  String get prefSharing => 'リストを共有';

  @override
  String get prefFullHistory => '完全な履歴';

  @override
  String get prefExportData => 'データをエクスポート';

  @override
  String get prefCustomThemes => 'カスタムテーマ';

  @override
  String get prefMonthlyBudget => 'グローバル月間予算';

  @override
  String get prefAIAssistant => 'パーソナルAIアシスタント';

  @override
  String get prefUnlimitedPantry => '無制限のパントリー';

  @override
  String get prefInteractiveArtifacts => 'インタラクティブAIアーティファクト';

  @override
  String get themeGreen => '緑';

  @override
  String get themeBlue => '青';

  @override
  String get themePurple => '紫';

  @override
  String get themeRed => '赤';

  @override
  String get themeOrange => 'オレンジ';

  @override
  String get themePink => 'ピンク';

  @override
  String get themeIndigo => 'インジゴ';

  @override
  String get themeAmber => '琥珀';

  @override
  String get themeTeal => 'ティール';

  @override
  String get themeBrown => '茶';

  @override
  String get catFruits => '果物';

  @override
  String get catCleaning => '掃除用品';

  @override
  String get catBeverages => '飲料';

  @override
  String get catBakery => 'パン・焼き菓子';

  @override
  String get catOthers => 'その他';

  @override
  String get unitPack => 'パック';

  @override
  String get shareSubject => 'ショッピングリスト';

  @override
  String get monthlyBudgetTitle => '月間予算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'リストを削除';

  @override
  String get pantryItemRemoved => 'アイテムを削除しました';

  @override
  String deficitItems(int deficit) {
    return '購入が必要なアイテム: $deficit';
  }

  @override
  String get cartTotal => 'カート合計';

  @override
  String get restockLabel => '補充';

  @override
  String get advancedFeatures => '高度な機能';

  @override
  String get selectAll => 'すべて選択';

  @override
  String get deselectAll => 'すべて解除';

  @override
  String get monthlyBudgetAppBar => '月間予算';

  @override
  String get budgetEditTitle => '月間予算';

  @override
  String get budgetDashboardTitle => 'ダッシュボード';

  @override
  String get selectListForDashboard => 'ダッシュボードを表示するリストを選択してください。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '分析するアイテムがリストにありません。';

  @override
  String get markItemsToSeeAnalysis => 'アイテムを購入済みとしてマークすると分析が表示されます。';

  @override
  String get totalSpending => '総支出';

  @override
  String get spendingByCategory => 'カテゴリ別支出';

  @override
  String get achievements => '実績';

  @override
  String get exportPdfExcel => 'PDF/Excelにエクスポート';

  @override
  String get exportPdf => 'PDFとしてエクスポート';

  @override
  String get exportExcel => 'Excelとしてエクスポート';

  @override
  String get organizingAi => 'AIで整理中...';

  @override
  String get yesLabel => 'はい';

  @override
  String get noLabel => 'いいえ';

  @override
  String get shareListText => 'マイショッピングリスト';

  @override
  String get emptyListAddItems => 'リストは空です！先にアイテムを追加してください。ℹ️';

  @override
  String get listOrganizedMagic => 'リストが魔法のようにカテゴリごとに整理されました！✨';

  @override
  String get shoppingMode => 'ショッピングモード';

  @override
  String get smartOrganization => 'スマート整理';

  @override
  String get savings => '節約';

  @override
  String get shoppingModeHeader => 'ショッピングモード';

  @override
  String get shareAsText => '整形テキストとしてアイテムを送信';

  @override
  String get shareRealtime => '他の人とリアルタイム同期';

  @override
  String get quickRecipe => 'クイックレシピ';

  @override
  String get quickRecipePrompt => 'リストのアイテムを使ったレシピを提案してください。';

  @override
  String get economyTips => '節約のコツ';

  @override
  String get economyTipsPrompt => 'この買い物でどうすれば節約できますか？';

  @override
  String get organizeAisles => '売り場順に整理';

  @override
  String get organizeAislesPrompt => 'スーパーの売り場順に整理してください。';

  @override
  String get recipeSuggestion => 'レシピ提案';

  @override
  String aiCreditsRemaining(int remaining) {
    return '残り$remainingクレジット';
  }

  @override
  String get addAllToList => 'すべてをリストに追加';

  @override
  String get organizeByAisles => '売り場順に整理';

  @override
  String get voiceTranscriptionTooltip => '音声入力（無料）';

  @override
  String get aiVoiceCommandTooltip => 'AI音声コマンド（プレミアム）';

  @override
  String get voiceCommandTitle => 'AI音声コマンド';

  @override
  String get voiceCommandContent =>
      '自然に話してリストを管理！\n\n例：\n• 「パン、チーズ、ハムを追加して」\n• 「洗濯洗剤を削除して」\n• 「テーマを青に変更して」\n\nこれはLista Plusプレミアムの特別な機能です。';

  @override
  String get voiceCommandPlanBtn => 'プランを見る';

  @override
  String get itemsAddedSuccess => 'アイテムをリストに追加しました！';

  @override
  String get viewList => 'リストを見る';

  @override
  String get feedbackTitle => 'フィードバックを送信';

  @override
  String get feedbackPrompt => '何を共有しますか？';

  @override
  String get feedbackTypeBug => 'バグを報告';

  @override
  String get feedbackTypeBugHint => '何かが動作しない';

  @override
  String get feedbackTypeSuggestion => '提案';

  @override
  String get feedbackTypeSuggestionHint => 'アプリを改善するアイデア';

  @override
  String get feedbackTypeTranslation => '翻訳の問題';

  @override
  String get feedbackTypeTranslationHint => '不正確または不自然な翻訳';

  @override
  String get feedbackTypeFeature => '機能リクエスト';

  @override
  String get feedbackTypeFeatureHint => '追加してほしい機能';

  @override
  String get feedbackTypeOther => 'その他';

  @override
  String get feedbackTypeOtherHint => 'その他のフィードバック';

  @override
  String get feedbackHint => 'フィードバックを詳しく説明してください...';

  @override
  String get feedbackSend => 'フィードバックを送信';

  @override
  String get feedbackSending => '送信中...';

  @override
  String get feedbackThankYou => 'ありがとうございます！';

  @override
  String get feedbackThankYouMessage =>
      'フィードバックを受け取りました。皆様により良いLista Plusを提供するために役立てます。';

  @override
  String get feedbackBack => '戻る';

  @override
  String feedbackError(String error) {
    return '送信エラー: $error';
  }

  @override
  String get feedbackRetry => '再試行';

  @override
  String get feedbackSettingsTitle => 'フィードバックを送信';

  @override
  String get feedbackSettingsSubtitle => 'バグの報告、改善の提案、翻訳の修正';

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
  String get openMenu => 'メニューを開く';

  @override
  String get viewRecipe => 'レシピを見る';

  @override
  String get recipeCreated => 'レシピを作成しました！';

  @override
  String get editRecipe => '編集';

  @override
  String get deleteRecipe => '削除';

  @override
  String get deleteRecipeConfirm => 'このレシピを削除しますか？';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '「$recipeName」を削除してもよろしいですか？この操作は取り消せません。';
  }

  @override
  String get ingredients => '材料';

  @override
  String get instructions => '作り方';

  @override
  String get prepTime => '調理時間';

  @override
  String get recipeSaved => 'レシピを保存しました！';

  @override
  String get noRecipesSaved => '保存されたレシピはありません';

  @override
  String get noRecipesSavedHint => '下のボタンをタップして、最初のカスタムレシピを作成しましょう。';

  @override
  String get myRecipes => 'マイレシピ';

  @override
  String get newRecipe => '新しいレシピ';

  @override
  String get loadingRecipes => 'レシピを読み込み中...';

  @override
  String get errorLoadingRecipes => 'レシピの読み込みエラー';

  @override
  String get addIngredient => '材料を追加';

  @override
  String get saveRecipe => '保存';

  @override
  String get recipeName => 'レシピ名';

  @override
  String get shortDescription => '短い説明';

  @override
  String get prepTimeMinutes => '調理時間（分）';

  @override
  String get instructionsHint => '1行に1ステップずつ入力...';

  @override
  String get addPhoto => '写真を追加';

  @override
  String get imageUrlPlaceholder => 'または画像のURLを貼り付け';

  @override
  String get tags => 'タグ';

  @override
  String get recipeTags => 'レシピのタグ';

  @override
  String get suggestedTags => 'おすすめ';

  @override
  String get searchRecipes => 'レシピを検索...';

  @override
  String get filterByTag => 'タグで絞り込む';

  @override
  String get allTags => 'すべて';

  @override
  String get recipeDeleted => 'レシピを削除しました';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get editRecipeTitle => 'レシピを編集';

  @override
  String get newRecipeTitle => '新しいレシピ';

  @override
  String get requiredField => '必須';

  @override
  String get chooseImageSource => '画像ソースを選択';

  @override
  String get gallery => 'ギャラリー';

  @override
  String get enterUrl => 'URLを入力';

  @override
  String get recipeImage => 'レシピ画像';

  @override
  String get removeImage => '画像を削除';

  @override
  String get mealPlannerTitle => '献立プランナー';

  @override
  String get mealPlannerViewMonthly => '月間表示';

  @override
  String get mealPlannerViewWeekly => '週間表示';

  @override
  String get mealPlannerNoMeals => '食事の予定なし';

  @override
  String get mealPlannerNoMealsHint => '日付をタップして食事を追加';

  @override
  String get mealPlannerLoading => '食事プランを読み込み中...';

  @override
  String get mealPlannerError => '食事プランの読み込みエラー';

  @override
  String get mealPlannerAddMeal => '食事を追加';

  @override
  String get mealPlannerEditMeal => '食事を編集';

  @override
  String get mealPlannerDeleteMeal => '食事を削除';

  @override
  String get mealPlannerMealDeleted => '食事を削除しました';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count人分',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '分量（人分）';

  @override
  String get mealPlannerNoteLabel => 'メモ（任意）';

  @override
  String get mealPlannerSelectRecipe => 'レシピを選択';

  @override
  String get mealPlannerSearchRecipes => 'レシピを検索...';

  @override
  String get mealPlannerNoRecipesFound => 'レシピが見つかりません';

  @override
  String get mealPlannerNoRecipesHint => 'まず「レシピ」タブでレシピを作成してください';

  @override
  String get mealPlannerSave => 'プランに追加';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total食中$count食を計画済み';
  }

  @override
  String get mealPlannerGenerateList => '買い物リストを生成';

  @override
  String get mealPlannerGenerateListConfirm =>
      '今週の予定された食事のすべての材料を買い物リストに追加しますか？';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count個の材料をリストに追加しました！';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      '追加する材料がありません。まずレシピを含む食事を計画してください。';

  @override
  String get mealPlannerGenerateListNoList => '買い物リストを先に作成してください。';

  @override
  String get mealPlannerMealTypeBreakfast => '朝食';

  @override
  String get mealPlannerMealTypeLunch => '昼食';

  @override
  String get mealPlannerMealTypeDinner => '夕食';

  @override
  String get mealPlannerMealTypeSnack => '間食';

  @override
  String get mealPlannerDateLabel => '日付';

  @override
  String get mealPlannerWeekEmpty => '今週の予定はありません';

  @override
  String get mealPlannerWeekEmptyHint => '日付をタップして食事の計画を始めましょう！';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes分';
  }
}
