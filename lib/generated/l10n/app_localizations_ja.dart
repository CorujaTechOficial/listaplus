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
  String get navChat => 'チャット';

  @override
  String get navRecipes => 'レシピ';

  @override
  String get navLists => 'リスト';

  @override
  String get navMealPlanner => 'メニュー';

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
  String get next => '次';

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
  String get profile => 'プロフィール';

  @override
  String get exitShoppingMode => 'ショッピングモードを終了する';

  @override
  String get exit => '出口';

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
  String get scanProductTitle => 'スキャン製品';

  @override
  String get positionBarcodeCenter => 'バーコードを中央に配置します';

  @override
  String get product => '製品';

  @override
  String get settingsAppBar => '設定';

  @override
  String get language => '言語';

  @override
  String get languagePortuguese => 'ポルトガル語 (ブラジル)';

  @override
  String get languageEnglish => '英語';

  @override
  String get languageSystem => 'システムデフォルト';

  @override
  String get chooseLanguage => '言語を選択';

  @override
  String get searchLanguage => '言語を検索...';

  @override
  String get currency => '通貨';

  @override
  String get chooseCurrency => '通貨の選択';

  @override
  String get searchCurrency => '通貨を検索...';

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
  String get dynamicColorsEnabledWarning => 'テーマカラーを有効にするには動的カラーを無効にします';

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
  String get myAchievements => '私の業績';

  @override
  String get itemsPurchased => '購入したアイテム';

  @override
  String get totalSavings => '総節約額';

  @override
  String get currentStreak => '現在の連続数';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 日',
      one: '$count 日',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'ロック解除されたバッジ';

  @override
  String get badgeBeginner => '初心者';

  @override
  String get badgeOrganized => '整頓された';

  @override
  String get badgeSavingMaster => '保存マスター';

  @override
  String get badgeSuperPlanner => 'スーパープランナー';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased/$total 個のアイテム';
  }

  @override
  String progressBudget(String amount) {
    return '予算: $amount';
  }

  @override
  String progressTotal(String amount) {
    return '合計: $amount';
  }

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
  String get newChat => '新しいチャット';

  @override
  String get noHistory => 'チャット履歴がありません';

  @override
  String get deleteSession => 'チャットの削除';

  @override
  String get deleteSessionConfirm => 'このチャットを削除してもよろしいですか?メッセージは永久に失われます。';

  @override
  String get clearHistory => '履歴をクリア';

  @override
  String get clearHistoryConfirm => 'このセッションのすべてのメッセージを削除しますか？';

  @override
  String get chatHint => 'メッセージを入力...';

  @override
  String get chatHintBlocked => 'AI のロックを解除してチャットできるようにする';

  @override
  String chatError(String error) {
    return 'チャットの読み込みエラー: $error';
  }

  @override
  String get aiAssistantTitle => 'AIアシスタント';

  @override
  String get closeSheet => '近い';

  @override
  String get scanBarcodeTitle => 'バーコードをスキャンする';

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
  String get aiLimitAlmostReached => 'AI メッセージがほぼなくなりました';

  @override
  String get unlockAi => '無制限の AI をアンロックする';

  @override
  String get aiTeaserFallback =>
      'プレミアムに登録すると、完全な回答が得られ、ショッピングに関する AI ヒントを無制限に入手できます...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining 今月残っている AI アクション — 無制限にアップグレード';
  }

  @override
  String get aiUsageExhausted => '毎月の AI 制限に達しました。無制限で Pro にアップグレード →';

  @override
  String get kipiListTitle => 'キピリスト';

  @override
  String get loginPrompt => 'ログインして\nプレミアム機能を解除';

  @override
  String get signInGoogle => 'Googleでサインイン';

  @override
  String get signInApple => 'Appleでサインイン';

  @override
  String get continueAsGuest => 'ゲストとして続ける';

  @override
  String get onboardingWelcomeTitle => 'KipiListへようこそ';

  @override
  String get onboardingWelcomeDesc => '買い物を整理してお金を節約する最も賢い方法。';

  @override
  String get onboardingSetupTitle => 'エクスペリエンスをパーソナライズする';

  @override
  String get onboardingSetupDesc => 'KipiList の外観と機能を選択してください。';

  @override
  String get onboardingLoginTitle => 'すべてをクラウドに保存';

  @override
  String get onboardingLoginDesc => 'データはすべてのデバイス間で同期されます';

  @override
  String get onboardingShareTitle => '愛する人と共有しましょう';

  @override
  String get onboardingShareDesc => 'リストを家族や友人とリアルタイムで同期';

  @override
  String get onboardingPremiumTitle => 'すべての機能のロックを解除する';

  @override
  String get onboardingPremiumSubtitle => 'ショッピングリストを最大限に活用しましょう';

  @override
  String get onboardingAnnualBadge => 'ベストバリュー';

  @override
  String get onboardingMonthlyLabel => '毎月';

  @override
  String get onboardingAnnualLabel => '年間';

  @override
  String get onboardingViewAllPlans => 'すべてのプランを見る';

  @override
  String get onboardingSubscribeCta => '購読する';

  @override
  String get onboardingCancelAnytime => 'いつでもキャンセルできます。約束はありません。';

  @override
  String get onboardingContinueAsGuest => 'ゲストとして続行';

  @override
  String get onboardingRestore => '復元する';

  @override
  String get onboardingRestoreDesc => 'すでにサブスクリプションをお持ちですか?復元するにはここをタップしてください。';

  @override
  String get onboardingMaybeLater => 'たぶん後で';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return '$name さん、買い物を正しい方法で整理してください。';
  }

  @override
  String get onboardingSlide1Title => 'スマートショッピングリスト';

  @override
  String get onboardingSlide1Body =>
      'リストを即座に作成して共有します。 Kipi はあなたの習慣に基づいてアイテムを自動的に追加します。';

  @override
  String get onboardingSlide2Title => 'キピに会いましょう';

  @override
  String get onboardingSlide2Body => 'リストの作成、レシピの検索、食料庫の追跡、週の計画など、何でも質問してください。';

  @override
  String get onboardingSlide3Title => 'パントリーと食事の計画';

  @override
  String get onboardingSlide3Body => '何を持っているかを追跡し、食事を計画し、買い物リストを自動的に生成します。';

  @override
  String get onboardingExit => '出口';

  @override
  String get onboardingPersonalizationTitle => 'あなたを知りましょう';

  @override
  String get onboardingPersonalizationDesc =>
      'これは、あなたの提案をパーソナライズし、ショッピングをよりスマートにするために使用されます。';

  @override
  String get onboardingPersonalizationFoodLabel => '好きな食べ物は何ですか？';

  @override
  String get onboardingPersonalizationFoodHint => '例えばピザ、寿司、ラザニア...';

  @override
  String get onboardingPersonalizationCta => '続く';

  @override
  String get onboardingPersonalizationSkip => '今のところスキップしてください';

  @override
  String get onboardingPersonalizationFoodRequired => '続けて好きな食べ物を教えてください';

  @override
  String get settingsDefaultScreen => 'デフォルトのホーム画面';

  @override
  String get settingsDefaultScreenSubtitle => '買い物リストかAIチャットのどちらかを選択';

  @override
  String get settingsScreenList => '買い物リスト';

  @override
  String get settingsScreenChat => 'AIチャット';

  @override
  String loginError(String error) {
    return 'ログインエラー: $error';
  }

  @override
  String get paywallTitle => 'KipiList プレミアム';

  @override
  String get paywallLoadingError => 'オファーの読み込み中にエラーが発生しました。もう一度やり直してください。';

  @override
  String get paywallPurchaseError => '購入を完了できませんでした。もう一度やり直してください。';

  @override
  String get paywallRestoreError => '復元するアクティブなサブスクリプションが見つかりません。';

  @override
  String paywallTrialDays(Object days) {
    return '$days日間無料';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 週間無料',
      one: '$count 週間無料',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count か月無料',
      one: '$count か月無料',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro を 7 日間無料でお試しください';

  @override
  String get paywallTrialSubtitle => 'いつでもキャンセルできます。今日は無課金です。';

  @override
  String get paywallTrialCta => '無料トライアルを開始する';

  @override
  String get recipeAddToList => '買い物リストに追加する';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count 成分が $listName に追加されました';
  }

  @override
  String get noListSelected => 'リストが選択されていません。まずリストを開きます。';

  @override
  String get paywallFeaturesTitle => '必要なものすべて:';

  @override
  String get paywallFeatureDescAssistant => 'AI がリストを自動的に整理します';

  @override
  String get paywallFeatureDescUnlimitedLists => '必要な数のリストを作成します';

  @override
  String get paywallFeatureDescSharing => 'リアルタイムで一緒に買い物をする';

  @override
  String get paywallFeatureDescPantry => '家にあるものを追跡する';

  @override
  String get paywallFeatureDescBudget => '毎月の予算内で維持する';

  @override
  String get paywallFeatureUnlimitedLists => '無制限のリスト';

  @override
  String get paywallFeatureSmartAI => 'スマートAI';

  @override
  String get paywallFeatureExpenseControl => '経費管理';

  @override
  String get paywallFeatureSharing => '共有';

  @override
  String get paywallBeforeAfterTitle => 'AI の導入前と導入後:';

  @override
  String get paywallLabelCommon => '一般';

  @override
  String get paywallLabelPro => 'キピリストプロ';

  @override
  String get paywallBeforeItem1 => '米';

  @override
  String get paywallBeforeItem2 => '石鹸';

  @override
  String get paywallBeforeItem3 => '肉';

  @override
  String get paywallBeforeItem4 => 'パン';

  @override
  String get paywallAfterItem1 => '穀物';

  @override
  String get paywallAfterItem2 => 'クリーニング';

  @override
  String get paywallAfterItem3 => '肉';

  @override
  String get paywallAfterItem4 => 'ベーカリー';

  @override
  String get paywallTestimonialsTitle => 'ユーザーの声:';

  @override
  String get paywallTestimonial1Name => 'アン S.';

  @override
  String get paywallTestimonial1Text =>
      'AI が私の買い物を数秒で整理してくれます。市場訪問ごとに 20 分節約できます。';

  @override
  String get paywallTestimonial2Name => 'チャールズ M.';

  @override
  String get paywallTestimonial2Text => 'もうリスト項目を忘れることはありません。 AIチャットがセンセーショナル！';

  @override
  String get paywallSocialProof => '+2,400 家族が使用しています';

  @override
  String get paywallCtaUnlock => 'プロのロックを解除する';

  @override
  String get paywallBestValue => 'ベストバリュー';

  @override
  String get paywallMostPopular => '最も人気のある';

  @override
  String get paywallProLabel => 'プロ';

  @override
  String get paywallSafeCheckout => '安全な支払い';

  @override
  String get paywallSelectPlan => 'プランを選択してください:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% 節約';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'わずか$price/月';
  }

  @override
  String get paywallPackageAnnual => '年間計画';

  @override
  String get paywallPackageMonthly => '月額プラン';

  @override
  String get paywallPackageLifetime => '生涯アクセス';

  @override
  String get paywallCancelAnytime => 'いつでもキャンセルできます。約束はありません。';

  @override
  String paywallTrialInCard(int days) {
    return '最初の$days日間は無料';
  }

  @override
  String get paywallSecuredByStore => 'Google Play で保護 · いつでもキャンセル可能';

  @override
  String get paywallPolicy => 'プライバシーポリシー';

  @override
  String get paywallTerms => '利用規約';

  @override
  String get paywallRestore => '復元する';

  @override
  String get paywallHeroHeadline => 'Kipi AIはいつもあなたのそばに';

  @override
  String get paywallHeroSubtitle => 'AI をポケットに入れて項目を追加し、リストを整理し、時間を節約します';

  @override
  String get paywallBenefit1Desc => '年中無休でアイテムを追加、整理、提案します';

  @override
  String get paywallBenefit2Desc => '3 リスト制限なし';

  @override
  String get paywallBenefit3Desc => '支出の追跡と家族リスト';

  @override
  String get paywallPackageMonthlyDesc => '完全な柔軟性';

  @override
  String paywallCtaTrialDays(int days) {
    return '無料で始める — $days 日';
  }

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
      '自然に話してリストを管理！\n\n例：\n• 「パン、チーズ、ハムを追加して」\n• 「洗濯洗剤を削除して」\n• 「テーマを青に変更して」\n\nこれはKipiListプレミアムの特別な機能です。';

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
      'フィードバックを受け取りました。KipiListをより良くするために役立てます。';

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
  String get aiEnergy => 'AIエネルギー';

  @override
  String get searchInConversation => '会話内で検索...';

  @override
  String get noMessagesFound => 'メッセージが見つかりませんでした';

  @override
  String get suggestedQuestions => '推奨される質問:';

  @override
  String get shoppingAssistant => 'ショッピングアシスタント';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total中$purchasedを購入しました';
  }

  @override
  String get estimatedCost => '推定';

  @override
  String get viewItems => 'アイテムを見る';

  @override
  String get noItemsInList => 'リストに項目がありません';

  @override
  String get longHistoryWarning =>
      '長い歴史: アシスタントはパフォーマンスを向上させるために最新のメッセージに焦点を当てます。';

  @override
  String get listening => 'リスニング...';

  @override
  String get addDirectToList => 'リストに直接追加';

  @override
  String get unlockFullResponse => '完全な応答のロックを解除する';

  @override
  String get switchList => 'スイッチリスト';

  @override
  String get marketMode => 'マーケットモード';

  @override
  String get backToChat => 'チャットに戻る';

  @override
  String get finishShopping => 'ショッピングを終了する';

  @override
  String get welcomeAiAssistant => 'AI アシスタントへようこそ';

  @override
  String get createListToStartAi => 'スマート チャットの使用を開始するには、買い物リストを作成します。';

  @override
  String get howCanIHelp => 'どうすれば助けられますか?';

  @override
  String get chatSubtitleShort => '価格、レシピ、構成について質問してください...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total を購入しました';
  }

  @override
  String get quickReplies => 'クイック返信:';

  @override
  String get voiceProFeature => '高度な音声コマンドは Pro です。基本的なディクテーションを有効にしています...';

  @override
  String get viewPro => 'プロを見る';

  @override
  String get errorLoadingChat => 'おっと！チャットの読み込み中に問題が発生しました。';

  @override
  String get errorLoadingChatSubtitle => '接続を確認するか、後でもう一度試してください。';

  @override
  String get errorOscillation =>
      'これは、ネットワークの不安定または一時的な利用不能によって発生する可能性があります。もう一度試してください。';

  @override
  String get activeListening => 'アクティブリスニング';

  @override
  String get whatToDoWithItem => 'このアイテムを使って何をしたいですか?';

  @override
  String get viewDetails => '詳細を見る';

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
  String get inviteToList => 'リストに招待する';

  @override
  String get shareApp => 'アプリを共有する';

  @override
  String get shareAppDescription => '友達を招待して KipiList を使用する';

  @override
  String shareReferralText(String url) {
    return 'KipiListを使って買い物を整理しています！私のリンクからダウンロードすると、二人とも 7 日間無料で Premium を利用できます: $url';
  }

  @override
  String get shareReferralSubject => 'KipiListプレミアムを7日間プレゼント！';

  @override
  String get gestureHint => '押し続けて選択 • スワイプして削除';

  @override
  String get catalogTitle => 'カタログ';

  @override
  String get catalogMyFrequents => '私のよく行く人';

  @override
  String get catalogSearchGlobal => '任意の製品を検索...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category で検索...';
  }

  @override
  String get catalogSortPopular => '最も人気のある';

  @override
  String get catalogSortAZ => 'A ～ Z';

  @override
  String get catalogFilterNational => 'ナショナルズ';

  @override
  String get catalogRareSection => 'あなたの国ではあまり一般的ではありません';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 を追加 →';
  }

  @override
  String get catalogProductNotFound => '製品が見つかりません。名前を入力してください';

  @override
  String get catalogBrowse => 'カタログを閲覧する';

  @override
  String get offlineBanner => 'あなたはオフラインです';

  @override
  String get consentTitle => 'プライバシーと分析';

  @override
  String get consentBody =>
      'KipiList は Firebase Analytics を使用してエクスペリエンスを向上させます。あなたのデータは当社のプライバシーポリシーに従って処理されます。';

  @override
  String get consentAccept => '受け入れる';

  @override
  String get consentDecline => '結構です';

  @override
  String get mealPlannerPantryAllAvailable => '在庫あり';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 欠品アイテム',
      one: '$count 欠品アイテム',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => '有効期限';

  @override
  String get notInformed => '知らされていない';

  @override
  String get skip => 'スキップ';

  @override
  String get onboardingAiTitle => 'キピとチャット';

  @override
  String get onboardingAiGreeting => 'こんにちは！私はあなたのパーソナルショッピングアシスタントのキピです！ 🛒';

  @override
  String get onboardingAiAskName => 'あなたの名前は何ですか？';

  @override
  String get onboardingAiNameHint => '名前を入力してください...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '$name さん、はじめまして！ 🎉';
  }

  @override
  String get onboardingAiAskFood => '好きな食べ物は何ですか？';

  @override
  String get onboardingAiFoodHint => '例えばピザ、寿司...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '素晴らしい選択ですね！あなたのリストに追加したいものは次のとおりです。\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'これは良さそうですか？別の文字を入力してみてください。';

  @override
  String get onboardingAiReady => '素晴らしい！始める準備ができました。アカウントを設定しましょう!';

  @override
  String get onboardingAiContinue => '続き→';

  @override
  String get connectionError => '接続エラー';

  @override
  String connectionErrorDesc(String error) {
    return 'エラー: $error';
  }

  @override
  String get errorLoadingLists => 'リストのロード中にエラーが発生しました';

  @override
  String get noListsFound => 'リストが見つかりません';

  @override
  String get backToToday => '今日に戻る';

  @override
  String get quickSuggestions => '簡単な提案';

  @override
  String get aiEnergyLow => 'AI エネルギーが低い';

  @override
  String get aiUnlockUnlimited => '無制限の AI をアンロックする';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '今日は$remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => '無制限の AI を購読する';

  @override
  String get unlockWithAd => '広告でロックを解除する';

  @override
  String get conversationHistoryTitle => '会話履歴';

  @override
  String get noConversationsFound => '会話が見つかりませんでした';

  @override
  String get errorLoadingHistory => '履歴の読み込みエラー';

  @override
  String get deleteConversationTitle => '会話を削除する';

  @override
  String get deleteConversationConfirm => 'この操作は元に戻すことができません。';

  @override
  String get deleteConversation => '消去';

  @override
  String get subscription => 'サブスクリプション';

  @override
  String get kipiListProActive => 'KipiList プロアクティブ';

  @override
  String get unlockPremiumTitle => 'プレミアムのロックを解除する';

  @override
  String get loadingSubscription => 'サブスクリプションを読み込んでいます...';

  @override
  String get errorLoadingSubscription => 'サブスクリプションの読み込みエラー';

  @override
  String get profileSection => 'プロフィール';

  @override
  String get myProfile => '私のプロフィール';

  @override
  String get profileSubtitle => 'あなたのプロフィール情報';

  @override
  String get customizeAiAssistant => 'AIアシスタントをカスタマイズする';

  @override
  String get assistantHistory => 'アシスタントの歴史';

  @override
  String get assistantHistorySubtitle => '会話履歴を表示する';

  @override
  String get manageCategories => 'カテゴリの管理';

  @override
  String get manageCategoriesSubtitle => 'カテゴリを追加、編集、削除する';

  @override
  String get customizeAssistant => 'カスタマイズ';

  @override
  String get assistantName => 'アシスタント名';

  @override
  String get chooseIcon => 'アイコンを選択';

  @override
  String get profileSaved => 'プロファイルが保存されました';

  @override
  String get errorSavingProfile => 'プロファイルの保存中にエラーが発生しました';

  @override
  String get userProfile => 'ユーザープロフィール';

  @override
  String get profileDescription => 'プロフィールの説明';

  @override
  String get preferredMarket => '優先市場';

  @override
  String get preferredMarketHint => 'いつもどこで買い物をしますか？';

  @override
  String get dietaryRestrictions => '食事制限';

  @override
  String get dietaryRestrictionsHint => '食事制限はありますか？';

  @override
  String get marketsToAvoid => '避けるべき市場';

  @override
  String get marketsToAvoidHint => '買い物をしたくない市場';

  @override
  String get observations => '観察';

  @override
  String get observationsHint => '追加の注意事項はありますか?';

  @override
  String get saveProfile => 'プロファイルの保存';

  @override
  String get everythingReady => '準備万端！';

  @override
  String get youCompletedList => 'リストが完成しました！';

  @override
  String get selectCheaperAlternative => 'より安価な代替品を選択する';

  @override
  String get suggestedItems => 'おすすめアイテム';

  @override
  String get swapped => '交換されました';

  @override
  String get swap => 'スワップ';

  @override
  String get chooseThemeColor => 'テーマカラーを選択してください';

  @override
  String get manageCategoriesTitle => 'カテゴリの管理';

  @override
  String get categoryLimitReached => 'カテゴリ制限に達しました';

  @override
  String get deleteCategoryTitle => 'カテゴリの削除';

  @override
  String deleteCategoryConfirm(String category) {
    return '「$category」内の項目は「その他」に移動します。\n続く？';
  }

  @override
  String get deleteCategory => '消去';

  @override
  String get newCategoryDialog => '新しいカテゴリー';

  @override
  String get editCategoryDialog => 'カテゴリを編集する';

  @override
  String get categoryName => 'カテゴリ名';

  @override
  String get categoryNameHint => 'カテゴリ名を入力してください';

  @override
  String get categoryColorLabel => '色';

  @override
  String get categoryIconLabel => 'アイコン';

  @override
  String itemAddedSnack(String name) {
    return '$name が追加されました';
  }

  @override
  String get kipiQuickBarHint => '何を買う必要がありますか?';

  @override
  String replaceItem(String item) {
    return '$item を置き換えます';
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
  String get onboardingHookHeadline => 'もう食料品を忘れることはありません';

  @override
  String get onboardingGoalSaveMoney => 'お金を節約する';

  @override
  String get onboardingGoalNeverForget => 'アイテムを決して忘れないでください';

  @override
  String get onboardingGoalFaster => 'より早く買い物をする';

  @override
  String get onboardingGoalFamily => '家族の買い物を整理する';

  @override
  String get onboardingGoalRecipes => 'レシピを発見する';

  @override
  String get onboardingGoalPantry => 'パントリーを追跡する';

  @override
  String get onboardingCommitmentsTitle => 'あなたにとって何が重要ですか?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList をパーソナライズするための目標を選択してください';

  @override
  String get onboardingCommitmentsCta => 'さあ行こう！';

  @override
  String get onboardingPersonalizationNameLabel => 'あなたの名前';

  @override
  String get onboardingPersonalizationNameHint => 'あなたの名前を入力してください';

  @override
  String get onboardingPersonalizationCategoryTitle => '何のために買い物をしますか？';

  @override
  String get onboardingPersonalizationGroupTitle => '誰のために買い物をしますか？';

  @override
  String get onboardingCategoryGrocery => '食料品';

  @override
  String get onboardingCategoryPharmacy => '薬局';

  @override
  String get onboardingCategoryRecipes => 'レシピ';

  @override
  String get onboardingCategoryHome => '家';

  @override
  String get onboardingCategoryPet => 'ペット';

  @override
  String get onboardingGroupSolo => '私だけ';

  @override
  String get onboardingGroupCouple => 'カップル';

  @override
  String get onboardingGroupFamily => '家族';

  @override
  String get onboardingLoadingTitle => '体験を準備しています...';

  @override
  String get onboardingLoadingStep1 => 'あなたの好みを分析しています...';

  @override
  String get onboardingLoadingStep2 => 'AI アシスタントを設定しています...';

  @override
  String get onboardingLoadingStep3 => 'ほぼ準備完了です...';

  @override
  String get onboardingLoadingStat1Label => 'カタログ化されたアイテム';

  @override
  String get onboardingLoadingStat2Label => 'ユーザーが助けてくれました';

  @override
  String get onboardingLoadingStat3Label => '時間の節約';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name、すべての旅行を節約しましょう!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name、アイテムを忘れないでください。';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name、半分の時間で買い物ができます!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name、家族の買い物を計画してください!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name、新しいレシピを発見してください!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name、食料庫を完璧に追跡してください!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'あらゆる旅行を節約しましょう！';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => '忘れ物は絶対にありません！';

  @override
  String get paywallGoalHeadlineNoNameFaster => '半分の時間でお買い物！';

  @override
  String get paywallGoalHeadlineNoNameFamily => '家族の買い物を整理しましょう！';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '新しいレシピを発見してください！';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'パントリーを完璧に追跡しましょう！';

  @override
  String paywallPricePerDay(String price) {
    return '1 日あたりわずか $price — コーヒー 1 杯未満';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => '今のところスキップしてください';

  @override
  String get paywallTestimonial => 'AI が私の買い物を数秒で整理してくれます。 1回の移動につき20分節約できます。';

  @override
  String get paywallTestimonialAuthor => 'アン S.';

  @override
  String get paywallTrialDisclaimer => 'いつでもキャンセル可能 · トライアルが終了するまで料金はかかりません';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'こんにちは$name!どの$categoryが必要ですか?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'どの$categoryが必要ですか?';
  }

  @override
  String get onboardingAiDemoYes => 'はい！';

  @override
  String get onboardingAiDemoReaction => 'ニース！';

  @override
  String get onboardingAiDemoChange => '項目変更';

  @override
  String get onboardingAiDemoOffer => '別の文字を入力してみてください。';

  @override
  String get onboardingAiDemoContinue => '続く';

  @override
  String get onboardingAiDemoSlideHeadline => 'あなたの買い物リストが AI に';

  @override
  String get onboardingAiDemoSlideSubtitle => 'Kipi が完全なリストを数秒で作成する方法をご覧ください';

  @override
  String get onboardingAiDemoSlideCta => 'これが欲しい！ →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'バーベキューを開催します🔥';

  @override
  String get onboardingAiDemoSlideReady => '準備ができて！必要なものはすべてここにあります:';

  @override
  String get onboardingAiDemoSlideDone => '数秒でリストが完成します✨';

  @override
  String get onboardingPainTitle => 'あなたを最もイライラさせるものは何ですか?';

  @override
  String get onboardingPainSubtitle => '正直に言ってください - それぞれを修正します';

  @override
  String get onboardingPainCta => 'はい、これを修正してください →';

  @override
  String get onboardingPainForget => 'お店に商品を忘れてしまう';

  @override
  String get onboardingPainFamily => '私の家族はリストを見たことがない';

  @override
  String get onboardingPainOverspend => 'いつも予算をオーバーしてしまう';

  @override
  String get onboardingPainRepeat => '一度の旅では決して十分ではありません';

  @override
  String get aiWelcomeContent =>
      'こんにちは！ 👋 私はあなたのパーソナルショッピングとレシピアシスタントの**Kipi**です！\n\n私はあなたを助けるためにここにいます：\n🛒 **ショッピングをカテゴリ別に自動的に整理**\n💰 **予算を追跡**し、節約のヒントを提供します\n🍲 すでにあるものを使ったおいしいレシピを **提案**\n\n今日はどのようにお手伝いできますか?最初のリストを作成することから始めることができます。';

  @override
  String get aiWelcomeSuggestCreateList => '最初のリストを作成する';

  @override
  String get aiWelcomeSuggestCreateListPrompt => 'キピ、初めての買い物リストの作成を手伝って';

  @override
  String get aiWelcomeSuggestSave => 'お金を節約するにはどうすればいいですか？';

  @override
  String get aiWelcomeSuggestSavePrompt => 'キピ、食料品のお金を節約するにはどうすればいいですか?';

  @override
  String get suggestionMilk => '牛乳';

  @override
  String get suggestionBread => 'パン';

  @override
  String get suggestionEggs => '卵';

  @override
  String get suggestionCoffee => 'コーヒー';

  @override
  String get suggestionRice => '米';

  @override
  String get suggestionFruits => '果物';
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
  String get navChat => 'チャット';

  @override
  String get navRecipes => 'レシピ';

  @override
  String get navLists => 'リスト';

  @override
  String get navMealPlanner => 'メニュー';

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
  String get next => '次';

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
  String get profile => 'プロフィール';

  @override
  String get exitShoppingMode => 'ショッピングモードを終了する';

  @override
  String get exit => '出口';

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
  String get scanProductTitle => 'スキャン製品';

  @override
  String get positionBarcodeCenter => 'バーコードを中央に配置します';

  @override
  String get product => '製品';

  @override
  String get settingsAppBar => '設定';

  @override
  String get language => '言語';

  @override
  String get languagePortuguese => 'ポルトガル語 (ブラジル)';

  @override
  String get languageEnglish => '英語';

  @override
  String get languageSystem => 'システムデフォルト';

  @override
  String get chooseLanguage => '言語を選択';

  @override
  String get searchLanguage => '言語を検索...';

  @override
  String get currency => '通貨';

  @override
  String get chooseCurrency => '通貨の選択';

  @override
  String get searchCurrency => '通貨を検索...';

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
  String get dynamicColorsEnabledWarning => 'テーマカラーを有効にするには動的カラーを無効にします';

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
  String get myAchievements => '私の業績';

  @override
  String get itemsPurchased => '購入したアイテム';

  @override
  String get totalSavings => '総節約額';

  @override
  String get currentStreak => '現在の連続数';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 日',
      one: '$count 日',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'ロック解除されたバッジ';

  @override
  String get badgeBeginner => '初心者';

  @override
  String get badgeOrganized => '整頓された';

  @override
  String get badgeSavingMaster => '保存マスター';

  @override
  String get badgeSuperPlanner => 'スーパープランナー';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased/$total 個のアイテム';
  }

  @override
  String progressBudget(String amount) {
    return '予算: $amount';
  }

  @override
  String progressTotal(String amount) {
    return '合計: $amount';
  }

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
  String get newChat => '新しいチャット';

  @override
  String get noHistory => 'チャット履歴がありません';

  @override
  String get deleteSession => 'チャットの削除';

  @override
  String get deleteSessionConfirm => 'このチャットを削除してもよろしいですか?メッセージは永久に失われます。';

  @override
  String get clearHistory => '履歴をクリア';

  @override
  String get clearHistoryConfirm => 'このセッションのすべてのメッセージを削除しますか？';

  @override
  String get chatHint => 'メッセージを入力...';

  @override
  String get chatHintBlocked => 'AI のロックを解除してチャットできるようにする';

  @override
  String chatError(String error) {
    return 'チャットの読み込みエラー: $error';
  }

  @override
  String get aiAssistantTitle => 'AIアシスタント';

  @override
  String get closeSheet => '近い';

  @override
  String get scanBarcodeTitle => 'バーコードをスキャンする';

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
  String get aiLimitAlmostReached => 'AI メッセージがほぼなくなりました';

  @override
  String get unlockAi => '無制限の AI をアンロックする';

  @override
  String get aiTeaserFallback =>
      'プレミアムに登録すると、完全な回答が得られ、ショッピングに関する AI ヒントを無制限に入手できます...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining 今月残っている AI アクション — 無制限にアップグレード';
  }

  @override
  String get aiUsageExhausted => '毎月の AI 制限に達しました。無制限で Pro にアップグレード →';

  @override
  String get kipiListTitle => 'キピリスト';

  @override
  String get loginPrompt => 'ログインして\nプレミアム機能を解除';

  @override
  String get signInGoogle => 'Googleでサインイン';

  @override
  String get signInApple => 'Appleでサインイン';

  @override
  String get continueAsGuest => 'ゲストとして続ける';

  @override
  String get onboardingWelcomeTitle => 'KipiListへようこそ';

  @override
  String get onboardingWelcomeDesc => '買い物を整理してお金を節約する最も賢い方法。';

  @override
  String get onboardingSetupTitle => 'エクスペリエンスをパーソナライズする';

  @override
  String get onboardingSetupDesc => 'KipiList の外観と機能を選択してください。';

  @override
  String get onboardingLoginTitle => 'すべてをクラウドに保存';

  @override
  String get onboardingLoginDesc => 'データはすべてのデバイス間で同期されます';

  @override
  String get onboardingShareTitle => '愛する人と共有しましょう';

  @override
  String get onboardingShareDesc => 'リストを家族や友人とリアルタイムで同期';

  @override
  String get onboardingPremiumTitle => 'すべての機能のロックを解除する';

  @override
  String get onboardingPremiumSubtitle => 'ショッピングリストを最大限に活用しましょう';

  @override
  String get onboardingAnnualBadge => 'ベストバリュー';

  @override
  String get onboardingMonthlyLabel => '毎月';

  @override
  String get onboardingAnnualLabel => '年間';

  @override
  String get onboardingViewAllPlans => 'すべてのプランを見る';

  @override
  String get onboardingSubscribeCta => '購読する';

  @override
  String get onboardingCancelAnytime => 'いつでもキャンセルできます。約束はありません。';

  @override
  String get onboardingContinueAsGuest => 'ゲストとして続行';

  @override
  String get onboardingRestore => '復元する';

  @override
  String get onboardingRestoreDesc => 'すでにサブスクリプションをお持ちですか?復元するにはここをタップしてください。';

  @override
  String get onboardingMaybeLater => 'たぶん後で';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return '$name さん、買い物を正しい方法で整理してください。';
  }

  @override
  String get onboardingSlide1Title => 'スマートショッピングリスト';

  @override
  String get onboardingSlide1Body =>
      'リストを即座に作成して共有します。 Kipi はあなたの習慣に基づいてアイテムを自動的に追加します。';

  @override
  String get onboardingSlide2Title => 'キピに会いましょう';

  @override
  String get onboardingSlide2Body => 'リストの作成、レシピの検索、食料庫の追跡、週の計画など、何でも質問してください。';

  @override
  String get onboardingSlide3Title => 'パントリーと食事の計画';

  @override
  String get onboardingSlide3Body => '何を持っているかを追跡し、食事を計画し、買い物リストを自動的に生成します。';

  @override
  String get onboardingExit => '出口';

  @override
  String get onboardingPersonalizationTitle => 'あなたを知りましょう';

  @override
  String get onboardingPersonalizationDesc =>
      'これは、あなたの提案をパーソナライズし、ショッピングをよりスマートにするために使用されます。';

  @override
  String get onboardingPersonalizationFoodLabel => '好きな食べ物は何ですか？';

  @override
  String get onboardingPersonalizationFoodHint => '例えばピザ、寿司、ラザニア...';

  @override
  String get onboardingPersonalizationCta => '続く';

  @override
  String get onboardingPersonalizationSkip => '今のところスキップしてください';

  @override
  String get onboardingPersonalizationFoodRequired => '続けて好きな食べ物を教えてください';

  @override
  String get settingsDefaultScreen => 'デフォルトのホーム画面';

  @override
  String get settingsDefaultScreenSubtitle => '買い物リストかAIチャットのどちらかを選択';

  @override
  String get settingsScreenList => '買い物リスト';

  @override
  String get settingsScreenChat => 'AIチャット';

  @override
  String loginError(String error) {
    return 'ログインエラー: $error';
  }

  @override
  String get paywallTitle => 'KipiList プレミアム';

  @override
  String get paywallLoadingError => 'オファーの読み込み中にエラーが発生しました。もう一度やり直してください。';

  @override
  String get paywallPurchaseError => '購入を完了できませんでした。もう一度やり直してください。';

  @override
  String get paywallRestoreError => '復元するアクティブなサブスクリプションが見つかりません。';

  @override
  String paywallTrialDays(Object days) {
    return '$days日間無料';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 週間無料',
      one: '$count 週間無料',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count か月無料',
      one: '$count か月無料',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro を 7 日間無料でお試しください';

  @override
  String get paywallTrialSubtitle => 'いつでもキャンセルできます。今日は無課金です。';

  @override
  String get paywallTrialCta => '無料トライアルを開始する';

  @override
  String get recipeAddToList => '買い物リストに追加する';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count 成分が $listName に追加されました';
  }

  @override
  String get noListSelected => 'リストが選択されていません。まずリストを開きます。';

  @override
  String get paywallFeaturesTitle => '必要なものすべて:';

  @override
  String get paywallFeatureDescAssistant => 'AI がリストを自動的に整理します';

  @override
  String get paywallFeatureDescUnlimitedLists => '必要な数のリストを作成します';

  @override
  String get paywallFeatureDescSharing => 'リアルタイムで一緒に買い物をする';

  @override
  String get paywallFeatureDescPantry => '家にあるものを追跡する';

  @override
  String get paywallFeatureDescBudget => '毎月の予算を守り続ける';

  @override
  String get paywallFeatureUnlimitedLists => '無制限のリスト';

  @override
  String get paywallFeatureSmartAI => 'スマートAI';

  @override
  String get paywallFeatureExpenseControl => '経費管理';

  @override
  String get paywallFeatureSharing => '共有';

  @override
  String get paywallBeforeAfterTitle => 'AI の導入前と導入後:';

  @override
  String get paywallLabelCommon => '一般';

  @override
  String get paywallLabelPro => 'キピリストプロ';

  @override
  String get paywallBeforeItem1 => '米';

  @override
  String get paywallBeforeItem2 => '石鹸';

  @override
  String get paywallBeforeItem3 => '肉';

  @override
  String get paywallBeforeItem4 => 'パン';

  @override
  String get paywallAfterItem1 => '穀物';

  @override
  String get paywallAfterItem2 => 'クリーニング';

  @override
  String get paywallAfterItem3 => '肉';

  @override
  String get paywallAfterItem4 => 'ベーカリー';

  @override
  String get paywallTestimonialsTitle => 'ユーザーの声:';

  @override
  String get paywallTestimonial1Name => 'アン S.';

  @override
  String get paywallTestimonial1Text =>
      'AI が私の買い物を数秒で整理してくれます。市場訪問ごとに 20 分節約できます。';

  @override
  String get paywallTestimonial2Name => 'チャールズ M.';

  @override
  String get paywallTestimonial2Text => 'もうリスト項目を忘れることはありません。 AIチャットがセンセーショナル！';

  @override
  String get paywallSocialProof => '+2,400 家族が使用しています';

  @override
  String get paywallCtaUnlock => 'プロのロックを解除する';

  @override
  String get paywallBestValue => 'ベストバリュー';

  @override
  String get paywallMostPopular => '最も人気のある';

  @override
  String get paywallProLabel => 'プロ';

  @override
  String get paywallSafeCheckout => '安全な支払い';

  @override
  String get paywallSelectPlan => 'プランを選択してください:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% 節約';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'わずか$price/月';
  }

  @override
  String get paywallPackageAnnual => '年間計画';

  @override
  String get paywallPackageMonthly => '月額プラン';

  @override
  String get paywallPackageLifetime => '生涯アクセス';

  @override
  String get paywallCancelAnytime => 'いつでもキャンセルできます。約束はありません。';

  @override
  String paywallTrialInCard(int days) {
    return '最初の$days日間は無料';
  }

  @override
  String get paywallSecuredByStore => 'Google Play で保護 · いつでもキャンセル可能';

  @override
  String get paywallPolicy => 'プライバシーポリシー';

  @override
  String get paywallTerms => '利用規約';

  @override
  String get paywallRestore => '復元する';

  @override
  String get paywallHeroHeadline => 'Kipi AIはいつもあなたのそばに';

  @override
  String get paywallHeroSubtitle => 'AI をポケットに入れて項目を追加し、リストを整理し、時間を節約します';

  @override
  String get paywallBenefit1Desc => '年中無休でアイテムを追加、整理、提案します';

  @override
  String get paywallBenefit2Desc => '3 リスト制限なし';

  @override
  String get paywallBenefit3Desc => '支出の追跡と家族リスト';

  @override
  String get paywallPackageMonthlyDesc => '完全な柔軟性';

  @override
  String paywallCtaTrialDays(int days) {
    return '無料で始める — $days 日';
  }

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
      '自然に話してリストを管理！\n\n例：\n• 「パン、チーズ、ハムを追加して」\n• 「洗濯洗剤を削除して」\n• 「テーマを青に変更して」\n\nこれはKipiListプレミアムの特別な機能です。';

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
      'フィードバックを受け取りました。皆様により良いKipiListを提供するために役立てます。';

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
  String get aiEnergy => 'AIエネルギー';

  @override
  String get searchInConversation => '会話内で検索...';

  @override
  String get noMessagesFound => 'メッセージが見つかりませんでした';

  @override
  String get suggestedQuestions => '推奨される質問:';

  @override
  String get shoppingAssistant => 'ショッピングアシスタント';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total中$purchasedを購入しました';
  }

  @override
  String get estimatedCost => '推定';

  @override
  String get viewItems => 'アイテムを見る';

  @override
  String get noItemsInList => 'リストに項目がありません';

  @override
  String get longHistoryWarning =>
      '長い歴史: アシスタントはパフォーマンスを向上させるために最新のメッセージに焦点を当てます。';

  @override
  String get listening => 'リスニング...';

  @override
  String get addDirectToList => 'リストに直接追加';

  @override
  String get unlockFullResponse => '完全な応答のロックを解除する';

  @override
  String get switchList => 'スイッチリスト';

  @override
  String get marketMode => 'マーケットモード';

  @override
  String get backToChat => 'チャットに戻る';

  @override
  String get finishShopping => 'ショッピングを終了する';

  @override
  String get welcomeAiAssistant => 'AI アシスタントへようこそ';

  @override
  String get createListToStartAi => 'スマート チャットの使用を開始するには、買い物リストを作成します。';

  @override
  String get howCanIHelp => 'どうすれば助けられますか?';

  @override
  String get chatSubtitleShort => '価格、レシピ、構成について質問してください...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total を購入しました';
  }

  @override
  String get quickReplies => 'クイック返信:';

  @override
  String get voiceProFeature => '高度な音声コマンドは Pro です。基本的なディクテーションを有効にしています...';

  @override
  String get viewPro => 'プロを見る';

  @override
  String get errorLoadingChat => 'おっと！チャットの読み込み中に問題が発生しました。';

  @override
  String get errorLoadingChatSubtitle => '接続を確認するか、後でもう一度試してください。';

  @override
  String get errorOscillation =>
      'これは、ネットワークの不安定または一時的な利用不能によって発生する可能性があります。もう一度試してください。';

  @override
  String get activeListening => 'アクティブリスニング';

  @override
  String get whatToDoWithItem => 'このアイテムを使って何をしたいですか?';

  @override
  String get viewDetails => '詳細を見る';

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
  String get inviteToList => 'リストに招待する';

  @override
  String get shareApp => 'アプリを共有する';

  @override
  String get shareAppDescription => '友達を招待して KipiList を使用する';

  @override
  String shareReferralText(String url) {
    return 'KipiListを使って買い物を整理しています！私のリンクからダウンロードすると、二人とも 7 日間無料で Premium を利用できます: $url';
  }

  @override
  String get shareReferralSubject => 'KipiListプレミアムを7日間プレゼント！';

  @override
  String get gestureHint => '押し続けて選択 • スワイプして削除';

  @override
  String get catalogTitle => 'カタログ';

  @override
  String get catalogMyFrequents => '私のよく行く人';

  @override
  String get catalogSearchGlobal => '任意の製品を検索...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category で検索...';
  }

  @override
  String get catalogSortPopular => '最も人気のある';

  @override
  String get catalogSortAZ => 'A ～ Z';

  @override
  String get catalogFilterNational => 'ナショナルズ';

  @override
  String get catalogRareSection => 'あなたの国ではあまり一般的ではありません';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 を追加 →';
  }

  @override
  String get catalogProductNotFound => '製品が見つかりません。名前を入力してください';

  @override
  String get catalogBrowse => 'カタログを閲覧する';

  @override
  String get offlineBanner => 'あなたはオフラインです';

  @override
  String get consentTitle => 'プライバシーと分析';

  @override
  String get consentBody =>
      'KipiList は Firebase Analytics を使用してエクスペリエンスを向上させます。あなたのデータは当社のプライバシーポリシーに従って処理されます。';

  @override
  String get consentAccept => '受け入れる';

  @override
  String get consentDecline => '結構です';

  @override
  String get mealPlannerPantryAllAvailable => '在庫あり';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 欠品アイテム',
      one: '$count 欠品アイテム',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => '有効期限';

  @override
  String get notInformed => '知らされていない';

  @override
  String get skip => 'スキップ';

  @override
  String get onboardingAiTitle => 'キピとチャット';

  @override
  String get onboardingAiGreeting => 'こんにちは！私はあなたのパーソナルショッピングアシスタントのキピです！ 🛒';

  @override
  String get onboardingAiAskName => 'あなたの名前は何ですか？';

  @override
  String get onboardingAiNameHint => '名前を入力してください...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '$name さん、はじめまして！ 🎉';
  }

  @override
  String get onboardingAiAskFood => '好きな食べ物は何ですか？';

  @override
  String get onboardingAiFoodHint => '例えばピザ、寿司...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '素晴らしい選択ですね！あなたのリストに追加したいものは次のとおりです。\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'これは良さそうですか？別の文字を入力してみてください。';

  @override
  String get onboardingAiReady => '素晴らしい！始める準備ができました。アカウントを設定しましょう!';

  @override
  String get onboardingAiContinue => '続き→';

  @override
  String get connectionError => '接続エラー';

  @override
  String connectionErrorDesc(String error) {
    return 'エラー: $error';
  }

  @override
  String get errorLoadingLists => 'リストのロード中にエラーが発生しました';

  @override
  String get noListsFound => 'リストが見つかりません';

  @override
  String get backToToday => '今日に戻る';

  @override
  String get quickSuggestions => '簡単な提案';

  @override
  String get aiEnergyLow => 'AI エネルギーが低い';

  @override
  String get aiUnlockUnlimited => '無制限の AI をアンロックする';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '今日は$remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => '無制限の AI を購読する';

  @override
  String get unlockWithAd => '広告でロックを解除する';

  @override
  String get conversationHistoryTitle => '会話履歴';

  @override
  String get noConversationsFound => '会話が見つかりませんでした';

  @override
  String get errorLoadingHistory => '履歴の読み込みエラー';

  @override
  String get deleteConversationTitle => '会話を削除する';

  @override
  String get deleteConversationConfirm => 'この操作は元に戻すことができません。';

  @override
  String get deleteConversation => '消去';

  @override
  String get subscription => 'サブスクリプション';

  @override
  String get kipiListProActive => 'KipiList プロアクティブ';

  @override
  String get unlockPremiumTitle => 'プレミアムのロックを解除する';

  @override
  String get loadingSubscription => 'サブスクリプションを読み込んでいます...';

  @override
  String get errorLoadingSubscription => 'サブスクリプションの読み込みエラー';

  @override
  String get profileSection => 'プロフィール';

  @override
  String get myProfile => '私のプロフィール';

  @override
  String get profileSubtitle => 'あなたのプロフィール情報';

  @override
  String get customizeAiAssistant => 'AIアシスタントをカスタマイズする';

  @override
  String get assistantHistory => 'アシスタントの歴史';

  @override
  String get assistantHistorySubtitle => '会話履歴を表示する';

  @override
  String get manageCategories => 'カテゴリの管理';

  @override
  String get manageCategoriesSubtitle => 'カテゴリを追加、編集、削除する';

  @override
  String get customizeAssistant => 'カスタマイズ';

  @override
  String get assistantName => 'アシスタント名';

  @override
  String get chooseIcon => 'アイコンを選択';

  @override
  String get profileSaved => 'プロファイルが保存されました';

  @override
  String get errorSavingProfile => 'プロファイルの保存中にエラーが発生しました';

  @override
  String get userProfile => 'ユーザープロフィール';

  @override
  String get profileDescription => 'プロフィールの説明';

  @override
  String get preferredMarket => '優先市場';

  @override
  String get preferredMarketHint => 'いつもどこで買い物をしますか？';

  @override
  String get dietaryRestrictions => '食事制限';

  @override
  String get dietaryRestrictionsHint => '食事制限はありますか？';

  @override
  String get marketsToAvoid => '避けるべき市場';

  @override
  String get marketsToAvoidHint => '買い物をしたくない市場';

  @override
  String get observations => '観察';

  @override
  String get observationsHint => '追加の注意事項はありますか?';

  @override
  String get saveProfile => 'プロファイルの保存';

  @override
  String get everythingReady => '準備万端！';

  @override
  String get youCompletedList => 'リストが完成しました！';

  @override
  String get selectCheaperAlternative => 'より安価な代替品を選択する';

  @override
  String get suggestedItems => 'おすすめアイテム';

  @override
  String get swapped => '交換されました';

  @override
  String get swap => 'スワップ';

  @override
  String get chooseThemeColor => 'テーマカラーを選択してください';

  @override
  String get manageCategoriesTitle => 'カテゴリの管理';

  @override
  String get categoryLimitReached => 'カテゴリ制限に達しました';

  @override
  String get deleteCategoryTitle => 'カテゴリの削除';

  @override
  String deleteCategoryConfirm(String category) {
    return '「$category」内の項目は「その他」に移動します。\n続く？';
  }

  @override
  String get deleteCategory => '消去';

  @override
  String get newCategoryDialog => '新しいカテゴリー';

  @override
  String get editCategoryDialog => 'カテゴリを編集する';

  @override
  String get categoryName => 'カテゴリ名';

  @override
  String get categoryNameHint => 'カテゴリ名を入力してください';

  @override
  String get categoryColorLabel => '色';

  @override
  String get categoryIconLabel => 'アイコン';

  @override
  String itemAddedSnack(String name) {
    return '$name が追加されました';
  }

  @override
  String get kipiQuickBarHint => '何を買う必要がありますか?';

  @override
  String replaceItem(String item) {
    return '$item を置き換えます';
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
  String get onboardingHookHeadline => 'もう食料品を忘れることはありません';

  @override
  String get onboardingGoalSaveMoney => 'お金を節約する';

  @override
  String get onboardingGoalNeverForget => 'アイテムを決して忘れないでください';

  @override
  String get onboardingGoalFaster => 'より早く買い物をする';

  @override
  String get onboardingGoalFamily => '家族の買い物を整理する';

  @override
  String get onboardingGoalRecipes => 'レシピを発見する';

  @override
  String get onboardingGoalPantry => 'パントリーを追跡する';

  @override
  String get onboardingCommitmentsTitle => 'あなたにとって何が重要ですか?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList をパーソナライズするための目標を選択してください';

  @override
  String get onboardingCommitmentsCta => 'さあ行こう！';

  @override
  String get onboardingPersonalizationNameLabel => 'あなたの名前';

  @override
  String get onboardingPersonalizationNameHint => 'あなたの名前を入力してください';

  @override
  String get onboardingPersonalizationCategoryTitle => '何のために買い物をしますか？';

  @override
  String get onboardingPersonalizationGroupTitle => '誰のために買い物をしますか？';

  @override
  String get onboardingCategoryGrocery => '食料品';

  @override
  String get onboardingCategoryPharmacy => '薬局';

  @override
  String get onboardingCategoryRecipes => 'レシピ';

  @override
  String get onboardingCategoryHome => '家';

  @override
  String get onboardingCategoryPet => 'ペット';

  @override
  String get onboardingGroupSolo => '私だけ';

  @override
  String get onboardingGroupCouple => 'カップル';

  @override
  String get onboardingGroupFamily => '家族';

  @override
  String get onboardingLoadingTitle => '体験を準備しています...';

  @override
  String get onboardingLoadingStep1 => 'あなたの好みを分析しています...';

  @override
  String get onboardingLoadingStep2 => 'AI アシスタントを設定しています...';

  @override
  String get onboardingLoadingStep3 => 'ほぼ準備完了です...';

  @override
  String get onboardingLoadingStat1Label => 'カタログ化されたアイテム';

  @override
  String get onboardingLoadingStat2Label => 'ユーザーが助けてくれました';

  @override
  String get onboardingLoadingStat3Label => '時間の節約';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name、すべての旅行を節約しましょう!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name、アイテムを忘れないでください。';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name、半分の時間で買い物ができます!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name、家族の買い物を計画してください!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name、新しいレシピを発見してください!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name、食料庫を完璧に追跡してください!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'あらゆる旅行を節約しましょう！';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => '忘れ物は絶対にありません！';

  @override
  String get paywallGoalHeadlineNoNameFaster => '半分の時間でお買い物！';

  @override
  String get paywallGoalHeadlineNoNameFamily => '家族の買い物を整理しましょう！';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '新しいレシピを発見してください！';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'パントリーを完璧に追跡しましょう！';

  @override
  String paywallPricePerDay(String price) {
    return '1 日あたりわずか $price — コーヒー 1 杯未満';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => '今のところスキップしてください';

  @override
  String get paywallTestimonial => 'AI が私の買い物を数秒で整理してくれます。 1回の移動につき20分節約できます。';

  @override
  String get paywallTestimonialAuthor => 'アン S.';

  @override
  String get paywallTrialDisclaimer => 'いつでもキャンセル可能 · トライアルが終了するまで料金はかかりません';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'こんにちは$name!どの$categoryが必要ですか?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'どの$categoryが必要ですか?';
  }

  @override
  String get onboardingAiDemoYes => 'はい！';

  @override
  String get onboardingAiDemoReaction => 'ニース！';

  @override
  String get onboardingAiDemoChange => '項目変更';

  @override
  String get onboardingAiDemoOffer => '別の文字を入力してみてください。';

  @override
  String get onboardingAiDemoContinue => '続く';

  @override
  String get onboardingAiDemoSlideHeadline => 'あなたの買い物リストが AI に';

  @override
  String get onboardingAiDemoSlideSubtitle => 'Kipi が完全なリストを数秒で作成する方法をご覧ください';

  @override
  String get onboardingAiDemoSlideCta => 'これが欲しい！ →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'バーベキューを開催します🔥';

  @override
  String get onboardingAiDemoSlideReady => '準備ができて！必要なものはすべてここにあります:';

  @override
  String get onboardingAiDemoSlideDone => '数秒でリストが完成します✨';

  @override
  String get onboardingPainTitle => 'あなたを最もイライラさせるものは何ですか?';

  @override
  String get onboardingPainSubtitle => '正直に言ってください - それぞれを修正します';

  @override
  String get onboardingPainCta => 'はい、これを修正してください →';

  @override
  String get onboardingPainForget => 'お店に商品を忘れてしまう';

  @override
  String get onboardingPainFamily => '私の家族はリストを見たことがない';

  @override
  String get onboardingPainOverspend => 'いつも予算をオーバーしてしまう';

  @override
  String get onboardingPainRepeat => '一度の旅では決して十分ではありません';

  @override
  String get aiWelcomeContent =>
      'こんにちは！ 👋 私はあなたのパーソナルショッピングとレシピアシスタントの**Kipi**です！\n\n私はあなたを助けるためにここにいます：\n🛒 **ショッピングをカテゴリ別に自動的に整理**\n💰 **予算を追跡**し、節約のヒントを提供します\n🍲 すでにあるものを使ったおいしいレシピを **提案**\n\n今日はどのようにお手伝いできますか?最初のリストを作成することから始めることができます。';

  @override
  String get aiWelcomeSuggestCreateList => '最初のリストを作成する';

  @override
  String get aiWelcomeSuggestCreateListPrompt => 'キピ、初めての買い物リストの作成を手伝って';

  @override
  String get aiWelcomeSuggestSave => 'お金を節約するにはどうすればいいですか？';

  @override
  String get aiWelcomeSuggestSavePrompt => 'キピ、食料品のお金を節約するにはどうすればいいですか?';

  @override
  String get suggestionMilk => '牛乳';

  @override
  String get suggestionBread => 'パン';

  @override
  String get suggestionEggs => '卵';

  @override
  String get suggestionCoffee => 'コーヒー';

  @override
  String get suggestionRice => '米';

  @override
  String get suggestionFruits => '果物';
}
