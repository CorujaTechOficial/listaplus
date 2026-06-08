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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => '必要なものすべて:';

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
  String get paywallProLabel => 'PRO';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
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
  String get manageCategoriesTitle => 'カテゴリの管理';

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
  String get sortAZ => 'A ～ Z';

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
  String get backToToday => '今日に戻る';

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
  String get paywallFeaturesTitle => '必要なものすべて:';

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
  String shareReferralText(Object url) {
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
  String get manageCategoriesTitle => 'カテゴリの管理';

  @override
  String get sortAZ => 'A ～ Z';

  @override
  String get backToToday => '今日に戻る';
}
