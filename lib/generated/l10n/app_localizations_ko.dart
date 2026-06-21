// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '쇼핑 목록';

  @override
  String get lists => '목록';

  @override
  String get pantry => '식료품 저장실';

  @override
  String get navChat => '채팅';

  @override
  String get navRecipes => '조리법';

  @override
  String get navLists => '목록';

  @override
  String get navMealPlanner => '메뉴';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get create => '만들기';

  @override
  String get add => '추가';

  @override
  String get remove => '제거';

  @override
  String get delete => '삭제';

  @override
  String get edit => '편집';

  @override
  String get copy => '복사';

  @override
  String get next => '다음';

  @override
  String get retry => '재시도';

  @override
  String get regenerate => '재생성';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get confirm => '확인';

  @override
  String get close => '닫기';

  @override
  String get import => '가져오기';

  @override
  String get rename => '이름 바꾸기';

  @override
  String get upgrade => '업그레이드';

  @override
  String get clear => '지우기';

  @override
  String error(String message) {
    return '오류: $message';
  }

  @override
  String errorGeneric(String message) {
    return '오류: $message';
  }

  @override
  String get purchaseError => '구매 처리 중 오류가 발생했습니다. 다시 시도하세요.';

  @override
  String get restoreError => '구매 복원 중 오류가 발생했습니다. 다시 시도하세요.';

  @override
  String get loading => '로딩 중...';

  @override
  String get fieldRequired => '필수 입력 항목';

  @override
  String get addedFeedback => '추가됨!';

  @override
  String get profile => '윤곽';

  @override
  String get exitShoppingMode => '쇼핑 모드 종료';

  @override
  String get exit => '출구';

  @override
  String selectedItems(int count) {
    return '선택된 $count개';
  }

  @override
  String get estimated => '예상';

  @override
  String get alreadyPurchased => '이미 구매함';

  @override
  String get clearList => '목록 지우기';

  @override
  String get clearPurchased => '구매 항목 지우기';

  @override
  String get share => '공유';

  @override
  String get shareViaCode => '코드로 공유';

  @override
  String get importViaCode => '코드로 가져오기';

  @override
  String get listAssistant => '목록 어시스턴트';

  @override
  String get globalAssistant => '글로벌 어시스턴트';

  @override
  String get becomePremium => '프리미엄 가입';

  @override
  String get manageSubscription => '구독 관리';

  @override
  String get completePurchase => '구매 완료';

  @override
  String get confirmClearList => '모든 항목을 제거하시겠습니까?';

  @override
  String get shareListTitle => '목록 공유';

  @override
  String get shareThisCode => '이 코드를 공유하세요:';

  @override
  String get validForLimitedTime => '제한된 시간 동안 유효';

  @override
  String get importListTitle => '목록 가져오기';

  @override
  String get enterCodeHint => '코드 입력';

  @override
  String get confirmArchiveTitle => '구매 완료';

  @override
  String get confirmArchiveContent => '이 구매를 완료하고 목록을 보관 처리하시겠습니까?';

  @override
  String get complete => '완료';

  @override
  String get listArchived => '목록이 보관되었습니다!';

  @override
  String listAdded(String listName) {
    return '$listName 추가됨!';
  }

  @override
  String get buy => '구매';

  @override
  String get unmark => '표시 해제';

  @override
  String confirmDeleteItems(int count) {
    return '$count개 항목을 제거하시겠습니까?';
  }

  @override
  String get confirmDeleteTitle => '확인';

  @override
  String confirmContent(int count) {
    return '$count개 항목을 제거하시겠습니까?';
  }

  @override
  String get archiveList => '목록 보관';

  @override
  String get pantryAppBar => '식료품 저장실';

  @override
  String get generateShoppingList => '쇼핑 목록 생성';

  @override
  String get pantryEmpty => '저장실이 비어 있음';

  @override
  String get pantryEmptySubtitle => '집에 두고 싶은 제품을 추가하세요';

  @override
  String itemsNeedPurchase(int deficit) {
    return '구매가 필요한 항목: $deficit개';
  }

  @override
  String get noItemsToBuy => '구매할 항목이 없습니다';

  @override
  String pantryDeficitCount(int count, String unit) {
    return '$count$unit 없음';
  }

  @override
  String get newPantryList => '저장실 쇼핑';

  @override
  String get newListTitle => '새 쇼핑 목록';

  @override
  String itemsWillBeAdded(int count) {
    return '$count개 항목이 추가됩니다';
  }

  @override
  String get listNameLabel => '목록 이름';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" 목록이 $count개 항목으로 생성됨';
  }

  @override
  String get noTracking => '추적 안 함';

  @override
  String get markAsPurchased => '구매 완료로 표시';

  @override
  String editPantryItem(String name) {
    return '$name 편집';
  }

  @override
  String get idealQuantity => '이상 수량';

  @override
  String get currentQuantity => '현재 수량';

  @override
  String get consumed => '소비됨';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name이(가) $quantity$unit(으)로 재입고됨';
  }

  @override
  String confirmRemovePantry(String name) {
    return '저장실에서 \"$name\"을(를) 제거하시겠습니까?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name 편집';
  }

  @override
  String get scanProductTitle => '제품 스캔';

  @override
  String get positionBarcodeCenter => '바코드를 중앙에 위치시키세요';

  @override
  String get product => '제품';

  @override
  String get settingsAppBar => '설정';

  @override
  String get preferencesSection => '환경설정';

  @override
  String get aiSection => 'AI 어시스턴트';

  @override
  String get language => '언어';

  @override
  String get languagePortuguese => '포르투갈어(브라질)';

  @override
  String get languageEnglish => '영어';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get chooseLanguage => '언어 선택';

  @override
  String get searchLanguage => '언어 검색...';

  @override
  String get currency => '통화';

  @override
  String get chooseCurrency => '통화 선택';

  @override
  String get searchCurrency => '통화 검색...';

  @override
  String get appearance => '테마';

  @override
  String get themeMode => '테마 모드';

  @override
  String get chooseThemeMode => '테마 모드 선택';

  @override
  String get light => '라이트';

  @override
  String get system => '시스템';

  @override
  String get dark => '다크';

  @override
  String get themeColor => '테마 색상';

  @override
  String get dynamicColors => '다이내믹 색상';

  @override
  String get dynamicColorsSubtitle => '배경화면 기반 색상 사용';

  @override
  String get dynamicColorsEnabledWarning => '테마 색상을 적용하려면 동적 색상을 비활성화하세요.';

  @override
  String get finance => '재정';

  @override
  String get monthlyBudgetNav => '월 예산';

  @override
  String get budgetSubtitle => '월별 지출 추적';

  @override
  String get data => '데이터';

  @override
  String get backupNav => '백업';

  @override
  String get backupSubtitle => '데이터 내보내기 또는 가져오기';

  @override
  String get about => '정보';

  @override
  String get version => '버전';

  @override
  String get privacy => '개인정보 처리방침';

  @override
  String get termsOfUse => '이용약관';

  @override
  String get myAchievements => '내 성과';

  @override
  String get itemsPurchased => '구매한 품목';

  @override
  String get totalSavings => '총 절감액';

  @override
  String get currentStreak => '현재 연속';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '$count일',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => '잠금 해제된 배지';

  @override
  String get badgeBeginner => '초보자';

  @override
  String get badgeOrganized => '정리됨';

  @override
  String get badgeSavingMaster => '마스터 저장';

  @override
  String get badgeSuperPlanner => '슈퍼플래너';

  @override
  String get backupTitle => '백업';

  @override
  String get backupPremiumDescription => '백업 및 내보내기는 프리미엄 기능입니다';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get exportDataSubtitle => '모든 목록을 JSON으로 저장';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get importDataSubtitle => 'JSON에서 목록 복원';

  @override
  String get importJsonTitle => 'JSON 가져오기';

  @override
  String get importJsonHint => '백업 JSON을 여기에 붙여넣으세요...';

  @override
  String get backupExported => '백업이 내보내졌습니다!';

  @override
  String get budgetAppBar => '월 예산';

  @override
  String get budgetPremiumLocked => '글로벌 월 예산은 프리미엄 기능입니다';

  @override
  String get budgetUpgradePrompt => '업그레이드하여 잠금 해제';

  @override
  String get noBudgetDefined => '설정된 예산 없음';

  @override
  String totalEstimated(String amount) {
    return '총 예상: $amount';
  }

  @override
  String get setBudgetButton => '예산 설정';

  @override
  String get budgetLists => '목록';

  @override
  String get budgetValueLabel => '금액';

  @override
  String get setBudgetTitle => '월 예산';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '전체';

  @override
  String get filterPending => '미구매';

  @override
  String get filterPurchased => '구매 완료';

  @override
  String get sortName => '이름';

  @override
  String get sortCategory => '카테고리';

  @override
  String get sortDate => '날짜';

  @override
  String get sortManual => '수동';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total 항목 중 $purchased개';
  }

  @override
  String progressBudget(String amount) {
    return '예산: $amount';
  }

  @override
  String progressTotal(String amount) {
    return '합계: $amount';
  }

  @override
  String get addItem => '항목 추가';

  @override
  String get itemName => '항목 이름';

  @override
  String get quantityShort => '수량';

  @override
  String get unit => '단위';

  @override
  String get category => '카테고리';

  @override
  String get estimatedPrice => '예상 가격';

  @override
  String get addItemPrice => '예상 가격';

  @override
  String get editItem => '항목 편집';

  @override
  String get quantityFull => '수량';

  @override
  String get editItemPrice => '예상 가격';

  @override
  String get addToPantry => '저장실에 추가';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"을(를) 저장실에 추가하시겠습니까?';
  }

  @override
  String get yes => '예';

  @override
  String get productName => '제품 이름';

  @override
  String get idealQty => '이상 수량';

  @override
  String get currentQty => '현재 수량';

  @override
  String get trackStock => '재고 추적';

  @override
  String get trackStockActive => '쇼핑 제안에 표시됨';

  @override
  String get trackStockInactive => '쇼핑 제안을 생성하지 않음';

  @override
  String get keepAdding => '계속 추가하세요';

  @override
  String get keepAddingSubtitle => '여러 항목을 추가하려면 시트를 열어 두세요.';

  @override
  String get createListDialog => '목록 만들기';

  @override
  String get renameListDialog => '목록 이름 바꾸기';

  @override
  String get listHistory => '목록 기록';

  @override
  String get myLists => '내 목록';

  @override
  String get viewActive => '활성 목록 보기';

  @override
  String get viewHistory => '기록 보기';

  @override
  String get noArchivedLists => '보관된 목록이 없습니다';

  @override
  String get noActiveLists => '활성 목록이 없습니다';

  @override
  String completedOn(String date) {
    return '$date에 완료됨';
  }

  @override
  String get sharedLabel => '공유 중';

  @override
  String get restore => '복원';

  @override
  String get removeSharedTooltip => '제거';

  @override
  String get deleteListTitle => '목록 삭제';

  @override
  String deleteListContent(String name) {
    return '\"$name\"을(를) 삭제하시겠습니까? 모든 항목이 제거됩니다.';
  }

  @override
  String get removeSharedListTitle => '공유 목록 제거';

  @override
  String removeSharedListContent(String name) {
    return '목록에서 \"$name\"을(를) 제거하시겠습니까? 원본 목록에는 영향을 미치지 않습니다.';
  }

  @override
  String get createNewList => '새 목록 만들기';

  @override
  String get aiAssistant => 'AI 어시스턴트';

  @override
  String get aiAssistantDescription => 'AI 어시스턴트로 스마트한 제안, 레시피 및 맞춤 팁을 받아보세요.';

  @override
  String get generalAssistant => '일반 어시스턴트';

  @override
  String get newChat => '새 채팅';

  @override
  String get noHistory => '채팅 기록 없음';

  @override
  String get deleteSession => '채팅 삭제';

  @override
  String get deleteSessionConfirm => '정말로 이 채팅을 삭제하시겠습니까? 메시지는 영구적으로 손실됩니다.';

  @override
  String get clearHistory => '기록 지우기';

  @override
  String get clearHistoryConfirm => '이 세션의 모든 메시지를 지우시겠습니까?';

  @override
  String get chatHint => '메시지를 입력하세요...';

  @override
  String get chatHintBlocked => '채팅을 위해 AI 잠금 해제';

  @override
  String get chatEmptySubtitle => '시작하려면 항목 제안, 레시피 또는 저장 팁을 요청하세요.';

  @override
  String get chatEmptyTitle => '채팅 내용이 비어 있습니다.';

  @override
  String chatError(String error) {
    return '채팅 로딩 오류: $error';
  }

  @override
  String get goodResponse => '좋은 반응';

  @override
  String get badResponse => '나쁜 반응';

  @override
  String get scrollToBottom => '맨 아래로 스크롤';

  @override
  String get somethingWentWrong => '문제가 발생했습니다.';

  @override
  String get editMessage => '메시지 편집';

  @override
  String get searchConversations => '대화 검색';

  @override
  String get dateGroupToday => '오늘';

  @override
  String get dateGroupYesterday => '어제';

  @override
  String get dateGroupPrevious7Days => '지난 7일';

  @override
  String get dateGroupOlder => '이전';

  @override
  String get aiAssistantTitle => 'AI 어시스턴트';

  @override
  String get closeSheet => '닫다';

  @override
  String get scanBarcodeTitle => '바코드 스캔';

  @override
  String get listHelp => '목록에 대해 무엇을 도와드릴까요?';

  @override
  String get generalHelp => '오늘 쇼핑에 대해 무엇을 도와드릴까요?';

  @override
  String get chatSubtitle => '항목 제안, 레시피 또는 절약 팁을 물어보세요.';

  @override
  String get aiError => '죄송합니다. 요청 처리 중 오류가 발생했습니다. 연결을 확인하거나 나중에 다시 시도해 주세요.';

  @override
  String get aiLimitAlmostReached => 'AI 메시지가 거의 부족함';

  @override
  String get unlockAi => '무제한 AI 잠금 해제';

  @override
  String get aiTeaserFallback =>
      '프리미엄을 구독하면 전체 응답을 받고 쇼핑에 대한 무제한 AI 팁을 얻을 수 있습니다...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining 이번 달 남은 AI 작업 — 무제한으로 업그레이드';
  }

  @override
  String get aiUsageExhausted => '월별 AI 한도에 도달했습니다. 무제한으로 Pro로 업그레이드 →';

  @override
  String get undo => '실행 취소';

  @override
  String get newChatStarted => 'New chat started';

  @override
  String get quickAddToList => 'Add to list';

  @override
  String get aiCapabilitiesTitle => 'What can I do?';

  @override
  String get aiCapabilitiesLists => 'Shopping Lists';

  @override
  String get aiCapabilitiesBudget => 'Budget & Prices';

  @override
  String get aiCapabilitiesRecipes => 'Recipes & Menus';

  @override
  String get aiCapabilitiesOrganize => 'Organization';

  @override
  String get marketModeDescription => 'Check off items as you shop';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '로그인하여 프리미엄\n기능을 잠금 해제하세요';

  @override
  String get signInGoogle => 'Google로 로그인';

  @override
  String get signInApple => 'Apple로 로그인';

  @override
  String get continueAsGuest => '게스트로 계속';

  @override
  String get onboardingWelcomeTitle => 'KipiList에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeDesc => '쇼핑을 정리하고 비용을 절약하는 가장 현명한 방법입니다.';

  @override
  String get onboardingSetupTitle => '경험을 개인화하세요';

  @override
  String get onboardingSetupDesc => 'KipiList의 모양과 작동 방식을 선택하세요.';

  @override
  String get onboardingLoginTitle => '모든 것을 클라우드에 저장하세요';

  @override
  String get onboardingLoginDesc => '모든 기기에서 데이터가 동기화됩니다.';

  @override
  String get onboardingShareTitle => '사랑하는 사람들과 공유하세요';

  @override
  String get onboardingShareDesc => '가족, 친구와 목록을 실시간으로 동기화하세요';

  @override
  String get onboardingPremiumTitle => '모든 기능 잠금 해제';

  @override
  String get onboardingPremiumSubtitle => '쇼핑 목록을 최대한 활용하세요';

  @override
  String get onboardingAnnualBadge => '최고의 가치';

  @override
  String get onboardingMonthlyLabel => '월간 간행물';

  @override
  String get onboardingAnnualLabel => '연간';

  @override
  String get onboardingViewAllPlans => '모든 플랜 보기';

  @override
  String get onboardingSubscribeCta => '구독하다';

  @override
  String get onboardingCancelAnytime => '언제든지 취소하세요. 헌신이 없습니다.';

  @override
  String get onboardingContinueAsGuest => '게스트로 계속';

  @override
  String get onboardingRestore => '복원하다';

  @override
  String get onboardingRestoreDesc => '이미 구독하고 계십니까? 복원하려면 여기를 탭하세요.';

  @override
  String get onboardingMaybeLater => '어쩌면 나중에';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return '$name님, 올바른 방법으로 쇼핑을 정리하세요.';
  }

  @override
  String get onboardingSlide1Title => '스마트 쇼핑 목록';

  @override
  String get onboardingSlide1Body =>
      '즉시 목록을 만들고 공유하세요. Kipi는 습관에 따라 자동으로 항목을 추가합니다.';

  @override
  String get onboardingSlide2Title => '키피를 만나보세요';

  @override
  String get onboardingSlide2Body =>
      '무엇이든 물어보세요. 목록 만들기, 레시피 찾기, 식품 저장실 추적, 일주일 계획 세우기 등이 가능합니다.';

  @override
  String get onboardingSlide3Title => '식료품 저장실 및 식사 계획';

  @override
  String get onboardingSlide3Body =>
      '가지고 있는 음식을 추적하고, 식사를 계획하고, 쇼핑 목록을 자동으로 생성하세요.';

  @override
  String get onboardingExit => '출구';

  @override
  String get onboardingPersonalizationTitle => '당신을 알아가자';

  @override
  String get onboardingPersonalizationDesc =>
      '이 정보는 귀하의 제안을 개인화하고 더욱 스마트한 쇼핑을 만드는 데 사용됩니다.';

  @override
  String get onboardingPersonalizationFoodLabel => '당신이 가장 좋아하는 음식은 무엇입니까?';

  @override
  String get onboardingPersonalizationFoodHint => '예를 들어 피자, 스시, 라자냐...';

  @override
  String get onboardingPersonalizationCta => '계속하다';

  @override
  String get onboardingPersonalizationSkip => '지금은 건너뛰기';

  @override
  String get onboardingPersonalizationFoodRequired => '계속하려면 좋아하는 음식을 알려주세요.';

  @override
  String get settingsDefaultScreen => '기본 홈 화면';

  @override
  String get settingsDefaultScreenSubtitle => '쇼핑 목록 또는 AI 채팅 중 선택';

  @override
  String get settingsScreenList => '쇼핑 목록';

  @override
  String get settingsScreenChat => 'AI채팅';

  @override
  String loginError(String error) {
    return '로그인 오류: $error';
  }

  @override
  String get paywallTitle => 'KipiList 프리미엄';

  @override
  String get paywallLoadingError => '쿠폰을 로드하는 중에 오류가 발생했습니다. 다시 시도해 보세요.';

  @override
  String get paywallPurchaseError => '구매를 완료할 수 없습니다. 다시 시도해 보세요.';

  @override
  String get paywallRestoreError => '복원할 활성 구독이 없습니다.';

  @override
  String paywallTrialDays(Object days) {
    return '$days일 무료';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count주 무료',
      one: '$count주 무료',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월 무료',
      one: '$count개월 무료',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro를 7일 동안 무료로 사용해 보세요';

  @override
  String get paywallTrialSubtitle => '언제든지 취소하세요. 오늘은 요금이 부과되지 않습니다.';

  @override
  String get paywallTrialCta => '무료 평가판 시작';

  @override
  String get recipeAddToList => '쇼핑 목록에 추가';

  @override
  String get recipeAddError => '목록에 추가할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get recipeTapToCheck => '요리하는 동안 재료를 탭하여 확인하세요.';

  @override
  String get recipeIngredientInPantry => '식료품 저장실에';

  @override
  String get recipeIngredientLowPantry => '식료품 저장실이 적음';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$listName에 $count 재료가 추가되었습니다.';
  }

  @override
  String get noListSelected => '선택된 목록이 없습니다. 먼저 목록을 엽니다.';

  @override
  String get paywallFeaturesTitle => '필요한 모든 것:';

  @override
  String get paywallFeatureDescAssistant => 'AI가 자동으로 목록을 정리합니다.';

  @override
  String get paywallFeatureDescUnlimitedLists => '필요한 만큼 목록을 만드세요.';

  @override
  String get paywallFeatureDescSharing => '실시간으로 함께 쇼핑하세요';

  @override
  String get paywallFeatureDescPantry => '집에 있는 물건을 추적하세요';

  @override
  String get paywallFeatureDescBudget => '매달 예산을 유지하세요';

  @override
  String get paywallFeatureUnlimitedLists => '무제한 목록';

  @override
  String get paywallFeatureSmartAI => '스마트 AI';

  @override
  String get paywallFeatureExpenseControl => '비용 통제';

  @override
  String get paywallFeatureSharing => '공유';

  @override
  String get paywallBeforeAfterTitle => 'AI 이전과 이후:';

  @override
  String get paywallLabelCommon => '흔한';

  @override
  String get paywallLabelPro => '키피리스트 PRO';

  @override
  String get paywallBeforeItem1 => '쌀';

  @override
  String get paywallBeforeItem2 => '비누';

  @override
  String get paywallBeforeItem3 => '고기';

  @override
  String get paywallBeforeItem4 => '빵';

  @override
  String get paywallAfterItem1 => '작살';

  @override
  String get paywallAfterItem2 => '청소';

  @override
  String get paywallAfterItem3 => '고기';

  @override
  String get paywallAfterItem4 => '빵집';

  @override
  String get paywallTestimonialsTitle => '사용자 의견:';

  @override
  String get paywallTestimonial1Name => '앤 S.';

  @override
  String get paywallTestimonial1Text =>
      'AI는 내 쇼핑을 몇 초 만에 정리합니다. 나는 시장 여행당 20분을 절약한다.';

  @override
  String get paywallTestimonial2Name => '찰스 M.';

  @override
  String get paywallTestimonial2Text =>
      '나는 다시는 목록 항목을 잊어버린 적이 없습니다. AI 채팅이 놀랍습니다!';

  @override
  String get paywallSocialProof => '+2,400 가족이 사용합니다.';

  @override
  String get paywallCtaUnlock => 'PRO 잠금 해제';

  @override
  String get paywallBestValue => '최고의 가치';

  @override
  String get paywallMostPopular => '가장 인기 있는';

  @override
  String get paywallProLabel => '찬성';

  @override
  String get paywallSafeCheckout => '안전한 결제';

  @override
  String get paywallSelectPlan => '계획을 선택하세요:';

  @override
  String paywallSavePercent(int percent) {
    return '$percent% 저장';
  }

  @override
  String paywallPricePerMonth(String price) {
    return '단 $price/월';
  }

  @override
  String get paywallPackageAnnual => '연간 요금제';

  @override
  String get paywallPackageMonthly => '월간 요금제';

  @override
  String get paywallPackageLifetime => '평생 액세스';

  @override
  String get paywallCancelAnytime => '언제든지 취소하세요. 헌신이 없습니다.';

  @override
  String paywallTrialInCard(int days) {
    return '처음 $days일은 무료';
  }

  @override
  String get paywallSecuredByStore => 'Google Play로 보호됨 · 언제든지 취소 가능';

  @override
  String get paywallPolicy => '개인 정보 보호 정책';

  @override
  String get paywallTerms => '이용약관';

  @override
  String get paywallRestore => '복원하다';

  @override
  String get paywallTimelineToday => '오늘';

  @override
  String get paywallTimelineTodayDesc => '즉시 전체 액세스 잠금 해제';

  @override
  String paywallTimelineDay(int day) {
    return '일 $day';
  }

  @override
  String get paywallTimelineReminderDesc => '평가판이 종료되기 전에 알려드립니다.';

  @override
  String get paywallTimelineChargeDesc => '구독이 시작됩니다 - 언제든지 취소하세요';

  @override
  String get paywallHeroFeatureTitle => 'AI 쇼핑 도우미';

  @override
  String get paywallHeroFeatureDesc =>
      '전체 목록을 말하거나 붙여넣으세요. AI가 몇 초 만에 목록을 정렬, 분류하고 예산을 책정합니다.';

  @override
  String get paywallBasedOnAnswers => '귀하의 답변을 바탕으로 개인화됨';

  @override
  String get paywallHeroHeadline => 'Kipi AI는 항상 당신 곁에 있습니다.';

  @override
  String get paywallHeroSubtitle => '주머니 속의 AI로 항목을 추가하고, 목록을 정리하고, 시간을 절약하세요';

  @override
  String get paywallBenefit1Desc => '연중무휴 24시간 항목 추가, 정리, 제안';

  @override
  String get paywallBenefit2Desc => '3개 목록 제한 없음';

  @override
  String get paywallBenefit3Desc => '비용 추적 및 가족 목록';

  @override
  String get paywallPackageMonthlyDesc => '완전한 유연성';

  @override
  String get paywallWelcomeOfferBadge => '🎁 환영 혜택';

  @override
  String paywallCtaTrialDays(int days) {
    return '무료로 시작 — $days일';
  }

  @override
  String get premiumUpgrade => '업그레이드하여 잠금 해제';

  @override
  String get itemRemoved => '항목이 제거됨';

  @override
  String get emptyListTitle => '목록이 비어 있습니다';

  @override
  String get emptyListSubtitle => '항목을 추가하여 시작하세요';

  @override
  String get noListFoundTitle => '목록을 찾을 수 없음';

  @override
  String get noListFoundSubtitle => '첫 번째 목록을 만들어 시작하세요';

  @override
  String get createFirstList => '첫 번째 목록 만들기';

  @override
  String get listBudgetTitle => '목록 예산';

  @override
  String get budgetAmountLabel => '예산 금액';

  @override
  String get removeBudget => '제거';

  @override
  String get prefUnlimitedLists => '무제한 목록';

  @override
  String get prefSharing => '목록 공유';

  @override
  String get prefFullHistory => '전체 기록';

  @override
  String get prefExportData => '데이터 내보내기';

  @override
  String get prefCustomThemes => '커스텀 테마';

  @override
  String get prefMonthlyBudget => '글로벌 월 예산';

  @override
  String get prefAIAssistant => '개인 AI 어시스턴트';

  @override
  String get prefUnlimitedPantry => '무제한 저장실';

  @override
  String get prefInteractiveArtifacts => '대화형 AI 아티팩트';

  @override
  String get themeGreen => '그린';

  @override
  String get themeBlue => '블루';

  @override
  String get themePurple => '퍼플';

  @override
  String get themeRed => '레드';

  @override
  String get themeOrange => '오렌지';

  @override
  String get themePink => '핑크';

  @override
  String get themeIndigo => '인디고';

  @override
  String get themeAmber => '앰버';

  @override
  String get themeTeal => '틸';

  @override
  String get themeBrown => '브라운';

  @override
  String get catFruits => '과일';

  @override
  String get catCleaning => '청소용품';

  @override
  String get catBeverages => '음료';

  @override
  String get catBakery => '베이커리';

  @override
  String get catOthers => '기타';

  @override
  String get unitPack => '팩';

  @override
  String get shareSubject => '쇼핑 목록';

  @override
  String get monthlyBudgetTitle => '월 예산';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '목록 삭제';

  @override
  String get pantryItemRemoved => '항목이 제거됨';

  @override
  String get pantryItemAdded => '항목이 추가됨';

  @override
  String deficitItems(int deficit) {
    return '구매가 필요한 항목: $deficit개';
  }

  @override
  String get cartTotal => '장바구니 합계';

  @override
  String get restockLabel => '재입고';

  @override
  String get advancedFeatures => '고급 기능';

  @override
  String get selectAll => '모두 선택';

  @override
  String get deselectAll => '모두 선택 해제';

  @override
  String get monthlyBudgetAppBar => '월 예산';

  @override
  String get budgetEditTitle => '월 예산';

  @override
  String get budgetDashboardTitle => '대시보드';

  @override
  String get selectListForDashboard => '대시보드를 보려면 목록을 선택하세요.';

  @override
  String get spendingAnalysis => '지출 분석';

  @override
  String get noItemsToAnalyze => '분석할 항목이 목록에 없습니다.';

  @override
  String get markItemsToSeeAnalysis => '항목을 구매 완료로 표시하면 분석을 볼 수 있습니다.';

  @override
  String get totalSpending => '총 지출';

  @override
  String get spendingByCategory => '카테고리별 지출';

  @override
  String get achievements => '업적';

  @override
  String get exportPdfExcel => 'PDF/Excel 내보내기';

  @override
  String get exportPdf => 'PDF로 내보내기';

  @override
  String get exportExcel => 'Excel로 내보내기';

  @override
  String get organizingAi => 'AI로 정리 중...';

  @override
  String get yesLabel => '예';

  @override
  String get noLabel => '아니요';

  @override
  String get shareListText => '내 쇼핑 목록';

  @override
  String get emptyListAddItems => '목록이 비어 있습니다! 먼저 항목을 추가하세요. ℹ️';

  @override
  String get listOrganizedMagic => '목록이 마법처럼 카테고리별로 정리되었습니다! ✨';

  @override
  String get shoppingMode => '쇼핑 모드';

  @override
  String get smartOrganization => '스마트 정리';

  @override
  String get savings => '절약';

  @override
  String get shoppingModeHeader => '쇼핑 모드';

  @override
  String get shareAsText => '서식이 지정된 텍스트로 항목 보내기';

  @override
  String get shareRealtime => '다른 사람과 실시간 동기화';

  @override
  String get quickRecipe => '빠른 레시피';

  @override
  String get quickRecipePrompt => '내 목록에 있는 항목으로 레시피를 추천해 주세요.';

  @override
  String get economyTips => '절약 팁';

  @override
  String get economyTipsPrompt => '이 구매에서 비용을 어떻게 절약할 수 있나요?';

  @override
  String get organizeAisles => '매대별로 정리';

  @override
  String get organizeAislesPrompt => '마켓 매대별로 정리해 주세요.';

  @override
  String get recipeSuggestion => '레시피 추천';

  @override
  String aiCreditsRemaining(int remaining) {
    return '남은 크레딧: $remaining';
  }

  @override
  String get addAllToList => '모두 목록에 추가';

  @override
  String get organizeByAisles => '매대별로 정리';

  @override
  String get voiceTranscriptionTooltip => '음성 입력 (무료)';

  @override
  String get aiVoiceCommandTooltip => 'AI 음성 명령 (프리미엄)';

  @override
  String get voiceCommandTitle => 'AI 음성 명령';

  @override
  String get voiceCommandContent =>
      '자연스럽게 말하여 목록을 관리하세요!\n\n예시:\n• \'빵, 치즈, 햄 추가\'\n• \'세탁 세제 제거\'\n• \'테마를 파란색으로 변경\'\n\n이것은 KipiList 프리미엄의 독점 기능입니다.';

  @override
  String get voiceCommandPlanBtn => '요금제 보기';

  @override
  String get itemsAddedSuccess => '항목이 목록에 성공적으로 추가되었습니다!';

  @override
  String get viewList => '목록 보기';

  @override
  String get feedbackTitle => '피드백 보내기';

  @override
  String get feedbackPrompt => '무엇을 공유하시겠습니까?';

  @override
  String get feedbackTypeBug => '버그 신고';

  @override
  String get feedbackTypeBugHint => '무언가 작동하지 않습니다';

  @override
  String get feedbackTypeSuggestion => '제안';

  @override
  String get feedbackTypeSuggestionHint => '앱 개선 아이디어';

  @override
  String get feedbackTypeTranslation => '번역 문제';

  @override
  String get feedbackTypeTranslationHint => '부정확하거나 어색한 번역';

  @override
  String get feedbackTypeFeature => '기능 요청';

  @override
  String get feedbackTypeFeatureHint => '보고 싶은 기능';

  @override
  String get feedbackTypeOther => '기타';

  @override
  String get feedbackTypeOtherHint => '기타 유형의 피드백';

  @override
  String get feedbackHint => '피드백을 자세히 설명해 주세요...';

  @override
  String get feedbackSend => '피드백 보내기';

  @override
  String get feedbackSending => '보내는 중...';

  @override
  String get feedbackThankYou => '감사합니다!';

  @override
  String get feedbackThankYouMessage =>
      '귀하의 피드백을 접수했으며 모든 사용자를 위해 KipiList를 개선하는 데 도움이 됩니다.';

  @override
  String get feedbackBack => '뒤로';

  @override
  String feedbackError(String error) {
    return '보내기 오류: $error';
  }

  @override
  String get feedbackRetry => '다시 시도';

  @override
  String get feedbackSettingsTitle => '피드백 보내기';

  @override
  String get feedbackSettingsSubtitle => '버그 신고, 개선 제안 또는 번역 수정';

  @override
  String get aiEnergy => 'AI 에너지';

  @override
  String get searchInConversation => '대화에서 검색...';

  @override
  String get noMessagesFound => '메시지를 찾을 수 없습니다.';

  @override
  String get suggestedQuestions => '제안된 질문:';

  @override
  String get shoppingAssistant => '쇼핑 도우미';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total 중 $purchased 구매함';
  }

  @override
  String get estimatedCost => '추정된';

  @override
  String get viewItems => '항목 보기';

  @override
  String get noItemsInList => '목록에 항목이 없습니다';

  @override
  String get longHistoryWarning => '오랜 역사: 어시스턴트는 더 나은 성능을 위해 최신 메시지에 중점을 둡니다.';

  @override
  String get listening => '청취...';

  @override
  String get addDirectToList => '목록에 직접 추가';

  @override
  String get unlockFullResponse => '전체 응답 잠금 해제';

  @override
  String get switchList => '목록 전환';

  @override
  String get marketMode => '시장 모드';

  @override
  String get backToChat => '채팅으로 돌아가기';

  @override
  String get finishShopping => '쇼핑 마무리';

  @override
  String get welcomeAiAssistant => 'AI 어시스턴트에 오신 것을 환영합니다';

  @override
  String get createListToStartAi => '스마트 채팅을 시작하려면 쇼핑 목록을 만드세요.';

  @override
  String get howCanIHelp => '어떻게 도와드릴까요?';

  @override
  String get chatSubtitleShort => '가격, 레시피, 구성 등에 대해 물어보세요...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total 구매함';
  }

  @override
  String get quickReplies => '빠른 답변:';

  @override
  String get voiceProFeature => '고급 음성 명령은 Pro입니다. 기본 받아쓰기를 사용 설정하는 중...';

  @override
  String get viewPro => '프로 보기';

  @override
  String get errorLoadingChat => '이런! 채팅을 로드하는 중에 문제가 발생했습니다.';

  @override
  String get errorLoadingChatSubtitle => '연결을 확인하거나 나중에 다시 시도하세요.';

  @override
  String get errorOscillation =>
      '이는 네트워크 변동 또는 일시적인 사용 불가로 인해 발생할 수 있습니다. 다시 시도해 주세요.';

  @override
  String get activeListening => '적극적 경청';

  @override
  String get whatToDoWithItem => '이 아이템으로 무엇을 하고 싶으신가요?';

  @override
  String get viewDetails => '세부정보 보기';

  @override
  String get openMenu => '메뉴 열기';

  @override
  String get viewRecipe => '레시피 보기';

  @override
  String get recipeCreated => '레시피가 생성되었습니다!';

  @override
  String get editRecipe => '편집';

  @override
  String get deleteRecipe => '삭제';

  @override
  String get deleteRecipeConfirm => '이 레시피를 삭제하시겠습니까?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\"을(를) 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';
  }

  @override
  String get ingredients => '재료';

  @override
  String get instructions => '조리법';

  @override
  String get prepTime => '조리 시간';

  @override
  String get recipeSaved => '레시피가 저장되었습니다!';

  @override
  String get noRecipesSaved => '저장된 레시피 없음';

  @override
  String get noRecipesSavedHint => '아래 버튼을 눌러 첫 번째 커스텀 레시피를 만드세요.';

  @override
  String get myRecipes => '내 레시피';

  @override
  String get newRecipe => '새 레시피';

  @override
  String get loadingRecipes => '레시피를 로드하는 중...';

  @override
  String get errorLoadingRecipes => '레시피 로드 오류';

  @override
  String get addIngredient => '재료 추가';

  @override
  String get saveRecipe => '저장';

  @override
  String get recipeName => '레시피 이름';

  @override
  String get shortDescription => '짧은 설명';

  @override
  String get prepTimeMinutes => '조리 시간 (분)';

  @override
  String get recipeYieldServings => '제공량';

  @override
  String get recipeManualTotalCost => '수동 총 비용';

  @override
  String get recipeManualTotalCostHint => '재료 가격을 추정하려면 비워 두세요.';

  @override
  String get recipeEstimatedTotalCost => '예상 총 비용';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / 제공';
  }

  @override
  String recipeServesCount(int count) {
    return '$count 제공';
  }

  @override
  String get recipeEstimatePartial => '가격이 포함된 재료를 기준으로 한 부분 견적입니다.';

  @override
  String get instructionsHint => '한 줄에 한 단계씩 입력하세요...';

  @override
  String get addPhoto => '사진 추가';

  @override
  String get imageUrlPlaceholder => '또는 이미지 URL 붙여넣기';

  @override
  String get tags => '태그';

  @override
  String get recipeTags => '레시피 태그';

  @override
  String get suggestedTags => '추천';

  @override
  String get searchRecipes => '레시피 검색...';

  @override
  String get filterByTag => '태그로 필터링';

  @override
  String get allTags => '전체';

  @override
  String get recipeDeleted => '레시피가 삭제되었습니다';

  @override
  String get saveChanges => '변경 사항 저장';

  @override
  String get editRecipeTitle => '레시피 편집';

  @override
  String get newRecipeTitle => '새 레시피';

  @override
  String get requiredField => '필수';

  @override
  String get chooseImageSource => '이미지 소스 선택';

  @override
  String get gallery => '갤러리';

  @override
  String get enterUrl => 'URL 입력';

  @override
  String get recipeImage => '레시피 이미지';

  @override
  String get removeImage => '이미지 제거';

  @override
  String get mealPlannerTitle => '식단 플래너';

  @override
  String get mealPlannerViewMonthly => '월간 보기';

  @override
  String get mealPlannerViewWeekly => '주간 보기';

  @override
  String get mealPlannerNoMeals => '계획된 식사 없음';

  @override
  String get mealPlannerNoMealsHint => '식사를 추가하려면 날짜를 탭하세요';

  @override
  String get mealPlannerLoading => '식사 계획을 로드하는 중...';

  @override
  String get mealPlannerError => '식사 계획 로드 오류';

  @override
  String get mealPlannerAddMeal => '식사 추가';

  @override
  String get mealPlannerEditMeal => '식사 편집';

  @override
  String get mealPlannerDeleteMeal => '식사 제거';

  @override
  String get mealPlannerMealDeleted => '식사가 제거됨';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count인분',
      one: '$count인분',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '인분';

  @override
  String get mealPlannerNoteLabel => '메모 (선택 사항)';

  @override
  String get mealPlannerSelectRecipe => '레시피 선택';

  @override
  String get mealPlannerSearchRecipes => '레시피 검색...';

  @override
  String get mealPlannerNoRecipesFound => '레시피를 찾을 수 없음';

  @override
  String get mealPlannerNoRecipesHint => '먼저 레시피 탭에서 레시피를 만드세요';

  @override
  String get mealPlannerSave => '계획에 추가';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total 식사 계획됨';
  }

  @override
  String get mealPlannerEstimatePartial => '부분 가격 데이터가 포함된 레시피를 기반으로 추정합니다.';

  @override
  String get mealPlannerGenerateList => '쇼핑 목록 생성';

  @override
  String get mealPlannerGenerateListConfirm =>
      '이번 주 계획된 식사의 모든 재료를 쇼핑 목록에 추가하시겠습니까?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count개의 재료가 목록에 추가되었습니다!';
  }

  @override
  String get mealPlannerGenerateListEmpty => '추가할 재료가 없습니다. 먼저 레시피로 식사를 계획하세요.';

  @override
  String get mealPlannerGenerateListNoList => '먼저 쇼핑 목록을 만드세요.';

  @override
  String get mealPlannerMealTypeBreakfast => '아침';

  @override
  String get mealPlannerMealTypeLunch => '점심';

  @override
  String get mealPlannerMealTypeDinner => '저녁';

  @override
  String get mealPlannerMealTypeSnack => '간식';

  @override
  String get mealPlannerDateLabel => '날짜';

  @override
  String get mealPlannerWeekEmpty => '이번 주에 계획된 항목이 없습니다';

  @override
  String get mealPlannerWeekEmptyHint => '식사 계획을 시작하려면 아무 날짜나 탭하세요!';

  @override
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Month: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Week: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Today: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Remove goal';

  @override
  String get mealPlannerBudgetGoalNav => 'Meal planner budget';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Monthly spending goal for meal planning';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes분';
  }

  @override
  String get inviteToList => '목록에 초대';

  @override
  String get shareApp => '앱 공유';

  @override
  String get shareAppDescription => 'KipiList를 사용하도록 친구를 초대하세요';

  @override
  String shareReferralText(String url) {
    return '저는 KipiList를 사용하여 쇼핑을 정리하고 있습니다! 내 링크를 통해 다운로드하면 우리 둘 다 7일간 프리미엄을 무료로 받을 수 있습니다: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium을 7일 동안 이용해보세요!';

  @override
  String get gestureHint => '길게 눌러 선택 • 스와이프하여 삭제';

  @override
  String get catalogTitle => '목록';

  @override
  String get catalogMyFrequents => '나의 자주 방문하는 곳';

  @override
  String get catalogSearchGlobal => '어떤 제품이든 검색해보세요...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category에서 검색하세요...';
  }

  @override
  String get catalogSortPopular => '가장 인기있는';

  @override
  String get catalogSortAZ => 'A~Z';

  @override
  String get catalogFilterNational => '국민';

  @override
  String get catalogRareSection => '귀하의 국가에서는 덜 일반적입니다';

  @override
  String get catalogRareBadge => '희귀한';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 추가 →';
  }

  @override
  String get catalogProductNotFound => '제품을 찾을 수 없습니다. 이름을 입력하세요.';

  @override
  String get catalogBrowse => '카탈로그 찾아보기';

  @override
  String get catalogCategories => '카테고리';

  @override
  String get offlineBanner => '귀하는 오프라인 상태입니다';

  @override
  String get consentTitle => '개인정보 보호 및 분석';

  @override
  String get consentBody =>
      'KipiList는 Firebase Analytics를 사용하여 사용자 경험을 개선합니다. 귀하의 데이터는 당사의 개인정보 보호정책에 따라 처리됩니다.';

  @override
  String get consentAccept => '수용하다';

  @override
  String get consentDecline => '아니요, 감사합니다';

  @override
  String get mealPlannerPantryAllAvailable => '재고 있음';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 누락된 항목',
      one: '$count 누락된 항목',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => '식사 유형 관리';

  @override
  String get mealPlannerAddType => '식사 유형 추가';

  @override
  String get mealPlannerEditType => '식사 유형 수정';

  @override
  String get mealPlannerTypeName => '이름';

  @override
  String get mealPlannerTypeColor => '색상';

  @override
  String get mealPlannerTypeIcon => '상';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      '이 식사 유형을 삭제하시겠습니까? 이 유형의 계획된 식사는 그대로 유지됩니다.';

  @override
  String get mealPlannerTypeNameEmpty => '이름은 비워둘 수 없습니다.';

  @override
  String get mealPlannerTypeDeleteError => '이 식사 유형을 삭제할 수 없습니다.';

  @override
  String get mealPlannerCustomTypeLabel => '맞춤 유형';

  @override
  String get mealPlannerDefaultTypeLabel => '기본 유형';

  @override
  String get expirationDate => '만료일';

  @override
  String get notInformed => '정보가 없음';

  @override
  String get skip => '건너뛰다';

  @override
  String get onboardingAiTitle => '키피와 채팅';

  @override
  String get onboardingAiGreeting => '안녕! 여러분의 개인 쇼핑 도우미 키피입니다! 🛒';

  @override
  String get onboardingAiAskName => '이름이 뭐에요?';

  @override
  String get onboardingAiNameHint => '이름을 입력하세요...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '만나서 반가워요, $name님! 🎉';
  }

  @override
  String get onboardingAiAskFood => '당신이 가장 좋아하는 음식은 무엇입니까?';

  @override
  String get onboardingAiFoodHint => '예를 들어 피자, 스시...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '훌륭한 선택입니다! 귀하의 목록에 추가할 내용은 다음과 같습니다.\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => '이거 괜찮아 보이는데? 다른 것을 입력해 보세요!';

  @override
  String get onboardingAiReady => '엄청난! 이제 시작할 준비가 되었습니다. 계정을 설정해 보세요!';

  @override
  String get onboardingAiContinue => '계속 →';

  @override
  String get connectionError => '연결 오류';

  @override
  String connectionErrorDesc(String error) {
    return '오류: $error';
  }

  @override
  String get errorLoadingLists => '목록을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get errorLoadingItems => '항목을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get noListsFound => '목록을 찾을 수 없습니다';

  @override
  String get backToToday => '오늘로 돌아가기';

  @override
  String get quickSuggestions => '빠른 제안';

  @override
  String get aiEnergyLow => '낮은 AI 에너지';

  @override
  String get aiUnlockUnlimited => '무제한 AI 잠금 해제';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '오늘 $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => '무제한 AI 구독';

  @override
  String get unlockWithAd => '광고로 잠금 해제';

  @override
  String get conversationHistoryTitle => '대화 기록';

  @override
  String get noConversationsFound => '대화를 찾을 수 없습니다.';

  @override
  String get errorLoadingHistory => '기록을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get deleteConversationTitle => '대화 삭제';

  @override
  String get deleteConversationConfirm => '이 작업은 취소할 수 없습니다.';

  @override
  String get deleteConversation => '삭제';

  @override
  String get subscription => '신청';

  @override
  String get kipiListProActive => 'KipiList 프로 액티브';

  @override
  String get unlockPremiumTitle => '프리미엄 잠금 해제';

  @override
  String get loadingSubscription => '구독 로드 중...';

  @override
  String get errorLoadingSubscription => '구독을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get profileSection => '윤곽';

  @override
  String get myProfile => '내 프로필';

  @override
  String get profileSubtitle => '귀하의 프로필 정보';

  @override
  String get customizeAiAssistant => 'AI 어시스턴트 사용자 정의';

  @override
  String get assistantHistory => '어시스턴트 기록';

  @override
  String get assistantHistorySubtitle => '대화 기록 보기';

  @override
  String get manageCategories => '카테고리 관리';

  @override
  String get manageCategoriesSubtitle => '카테고리 추가, 편집 또는 제거';

  @override
  String get customizeAssistant => '사용자 정의';

  @override
  String get assistantName => '어시스턴트 이름';

  @override
  String get chooseIcon => '아이콘 선택';

  @override
  String get profileSaved => '프로필이 저장되었습니다';

  @override
  String get errorSavingProfile => '프로필을 저장하는 중에 오류가 발생했습니다.';

  @override
  String get userProfile => '사용자 프로필';

  @override
  String get profileDescription => '프로필 설명';

  @override
  String get preferredMarket => '선호하는 시장';

  @override
  String get preferredMarketHint => '주로 어디서 쇼핑하시나요?';

  @override
  String get dietaryRestrictions => '식이 제한';

  @override
  String get dietaryRestrictionsHint => '식단 제한이 있나요?';

  @override
  String get marketsToAvoid => '피해야 할 시장';

  @override
  String get marketsToAvoidHint => '쇼핑하고 싶지 않은 시장';

  @override
  String get observations => '관찰';

  @override
  String get observationsHint => '추가 메모가 있나요?';

  @override
  String get saveProfile => '프로필 저장';

  @override
  String get everythingReady => '모든 준비가 완료되었습니다!';

  @override
  String get youCompletedList => '목록을 완성했습니다!';

  @override
  String get selectCheaperAlternative => '더 저렴한 대안을 선택하세요';

  @override
  String get suggestedItems => '추천상품';

  @override
  String get swapped => '교환됨';

  @override
  String get swap => '교환';

  @override
  String get chooseThemeColor => '테마 색상 선택';

  @override
  String get manageCategoriesTitle => '카테고리 관리';

  @override
  String get categoryLimitReached => '카테고리 한도에 도달했습니다.';

  @override
  String get deleteCategoryTitle => '카테고리 삭제';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\"의 항목은 \"기타\"로 이동됩니다.\n계속하다?';
  }

  @override
  String get deleteCategory => '삭제';

  @override
  String get newCategoryDialog => '새로운 카테고리';

  @override
  String get editCategoryDialog => '카테고리 수정';

  @override
  String get categoryName => '카테고리 이름';

  @override
  String get categoryNameHint => '카테고리 이름을 입력하세요';

  @override
  String get categoryColorLabel => '색상';

  @override
  String get categoryIconLabel => '상';

  @override
  String itemAddedSnack(String name) {
    return '$name 추가됨';
  }

  @override
  String get kipiQuickBarHint => '무엇을 사야 합니까?';

  @override
  String replaceItem(String item) {
    return '$item 바꾸기';
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
  String get onboardingHookHeadline => '다시는 식료품을 잊지 마세요';

  @override
  String get onboardingGoalSaveMoney => '돈을 절약';

  @override
  String get onboardingGoalNeverForget => '절대 잊지 마세요';

  @override
  String get onboardingGoalFaster => '더 빠르게 쇼핑하세요';

  @override
  String get onboardingGoalFamily => '가족 쇼핑 정리하기';

  @override
  String get onboardingGoalRecipes => '레시피를 찾아보세요';

  @override
  String get onboardingGoalPantry => '트랙 식료품 저장실';

  @override
  String get onboardingCommitmentsTitle => '당신에게 중요한 것은 무엇입니까?';

  @override
  String get onboardingCommitmentsSubtitle => '목표를 선택하여 KipiList를 개인화하세요';

  @override
  String get onboardingCommitmentsCta => '갑시다!';

  @override
  String get onboardingPersonalizationNameLabel => '당신의 이름';

  @override
  String get onboardingPersonalizationNameHint => '이름을 입력하세요';

  @override
  String get onboardingPersonalizationCategoryTitle => '당신은 무엇을 쇼핑합니까?';

  @override
  String get onboardingPersonalizationGroupTitle => '누구를 위해 쇼핑하시나요?';

  @override
  String get onboardingCategoryGrocery => '식료 잡화류';

  @override
  String get onboardingCategoryPharmacy => '약국';

  @override
  String get onboardingCategoryRecipes => '조리법';

  @override
  String get onboardingCategoryHome => '집';

  @override
  String get onboardingCategoryPet => '애완 동물';

  @override
  String get onboardingGroupSolo => '나만';

  @override
  String get onboardingGroupCouple => '커플';

  @override
  String get onboardingGroupFamily => '가족';

  @override
  String get onboardingLoadingTitle => '체험을 준비 중입니다...';

  @override
  String get onboardingLoadingStep1 => '선호도 분석 중...';

  @override
  String get onboardingLoadingStep2 => 'AI 어시스턴트 설정 중...';

  @override
  String get onboardingLoadingStep3 => '거의 준비됐어요...';

  @override
  String get onboardingLoadingStat1Label => '카탈로그에 등록된 항목';

  @override
  String get onboardingLoadingStat2Label => '도움을 준 사용자';

  @override
  String get onboardingLoadingStat3Label => '분 절약';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, 여행할 때마다 할인 받으세요!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, 아이템을 절대 잊지 마세요!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, 쇼핑 시간을 절반으로 단축하세요!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, 가족 쇼핑을 준비하세요!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, 새로운 레시피를 발견해보세요!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, 식료품 저장실을 완벽하게 추적하세요!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '여행할 때마다 할인 받으세요!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => '아이템을 절대 잊지 마세요!';

  @override
  String get paywallGoalHeadlineNoNameFaster => '쇼핑 시간을 절반으로 단축하세요!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '가족 쇼핑을 정리해보세요!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '새로운 요리법을 발견해보세요!';

  @override
  String get paywallGoalHeadlineNoNamePantry => '식료품 저장실을 완벽하게 추적하세요!';

  @override
  String paywallPricePerDay(String price) {
    return '$price/일 — 커피 한 잔 미만';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => '지금은 건너뛰세요';

  @override
  String get paywallTestimonial => 'AI는 내 쇼핑을 몇 초 만에 정리합니다. 나는 여행당 20분을 절약한다.';

  @override
  String get paywallTestimonialAuthor => '앤 S.';

  @override
  String get paywallTrialDisclaimer =>
      '언제든지 취소하세요 · 평가판이 종료될 때까지 요금이 부과되지 않습니다.';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return '안녕하세요 $name! 어떤 $category이 필요합니까?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '어떤 $category이 필요합니까?';
  }

  @override
  String get onboardingAiDemoYes => '예!';

  @override
  String get onboardingAiDemoReaction => '멋진!';

  @override
  String get onboardingAiDemoChange => '항목 변경';

  @override
  String get onboardingAiDemoOffer => '다른 것을 입력해 보세요!';

  @override
  String get onboardingAiDemoContinue => '계속하다';

  @override
  String get onboardingAiDemoSlideHeadline => '이제 AI로 쇼핑 목록을 확인하세요';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi가 몇 초 만에 전체 목록을 작성하는 방법을 알아보세요.';

  @override
  String get onboardingAiDemoSlideCta => '나는 이것을 원한다! →';

  @override
  String get onboardingAiDemoSlideUserMsg => '바비큐를 주최해요 🔥';

  @override
  String get onboardingAiDemoSlideReady => '준비가 된! 필요한 모든 것은 다음과 같습니다.';

  @override
  String get onboardingAiDemoSlideDone => '몇 초 만에 전체 목록을 완성하세요 ✨';

  @override
  String get onboardingPainTitle => '당신을 가장 좌절시키는 것은 무엇입니까?';

  @override
  String get onboardingPainSubtitle => '솔직하게 말씀해 주세요. 하나하나 고쳐드리겠습니다.';

  @override
  String get onboardingPainCta => '예, 이 문제를 해결해 주세요 →';

  @override
  String get onboardingPainForget => '가게에서 물건을 잊어버렸어요';

  @override
  String get onboardingPainFamily => '우리 가족은 목록을 전혀 볼 수 없습니다';

  @override
  String get onboardingPainOverspend => '난 항상 예산을 초과해';

  @override
  String get onboardingPainRepeat => '한 번의 여행으로는 충분하지 않습니다';

  @override
  String get aiWelcomeContent =>
      '안녕하세요! 👋 저는 당신의 개인 쇼핑 및 레시피 도우미 **키피** 입니다!\n\n나는 당신을 돕기 위해 여기 있습니다:\n🛒 자동으로 카테고리별로 쇼핑을 **정리**하세요\n💰 예산을 **추적**하고 비용 절감 팁을 알려드립니다.\n🍲 이미 가지고 있는 음식으로 맛있는 요리법을 **제안**하세요.\n\n오늘은 무엇을 도와드릴까요? 첫 번째 목록을 만드는 것부터 시작할 수 있습니다!';

  @override
  String get aiWelcomeSuggestCreateList => '내 첫 번째 목록 만들기';

  @override
  String get aiWelcomeSuggestCreateListPrompt => 'Kipi, 내 첫 쇼핑 목록 작성을 도와주세요';

  @override
  String get aiWelcomeSuggestSave => '돈을 절약하는 방법?';

  @override
  String get aiWelcomeSuggestSavePrompt => '키피야, 식료품비를 절약하는 데 어떻게 도와줄 수 있니?';

  @override
  String get suggestionMilk => '우유';

  @override
  String get suggestionBread => '빵';

  @override
  String get suggestionEggs => '계란';

  @override
  String get suggestionCoffee => '커피';

  @override
  String get suggestionRice => '쌀';

  @override
  String get suggestionFruits => '과일';

  @override
  String get recipeIngredientSingular => '성분 1개';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count 재료';
  }

  @override
  String get pantryAvailabilityAll => '모두 설정되었습니다!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount 식료품 저장실에 있음';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$total의 $current 단계';
  }

  @override
  String get onboardingDemoHeadline => '무엇을 계획하고 있는지 알려주세요. Kipi가 목록을 작성합니다.';

  @override
  String get onboardingDemoSubtitle => '몇 초 만에 정리된 항목을 가져옵니다.';

  @override
  String get onboardingPersonalizationEffect =>
      '이는 Kipi가 보다 관련성 높은 품목과 수량을 제안하는 데 도움이 됩니다.';

  @override
  String get onboardingPersonalizeWithName => '내 이름으로 맞춤 설정';

  @override
  String get onboardingCreateFirstList => '내 첫 번째 목록 만들기';

  @override
  String get onboardingPromptWeekly => '나의 주간 필수품 계획하기';

  @override
  String get onboardingPromptEvent => '특별한 걸 준비하고 있어';

  @override
  String get onboardingPromptEssentials => '나에게 필요한 필수품을 제안해보세요';

  @override
  String get onboardingFallbackGrocery => '🍚 쌀|🫘 콩|🥛 우유|🥚 계란|🍞 빵|🍎 과일';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 접착 붕대|🌡️ 온도계|🧴 방부제|😷 안면 마스크|🧼 손 소독제';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 토마토|🧅 양파|🧄 마늘|🥚 계란|🧀 치즈|🌿 신선한 허브';

  @override
  String get onboardingFallbackHome =>
      '🧻 종이 타월|🧽 스폰지|🧴 세제|🗑️ 쓰레기 봉투|🧹 청소용 천';

  @override
  String get onboardingFallbackPet =>
      '🥣 애완동물 사료|🦴 간식|🧼 애완동물 샴푸|🧸 장난감|🧻 폐기물 봉투';

  @override
  String get onboardingListSaveFailed =>
      '항목을 준비했는데 목록을 저장할 수 없습니다. 앱에 보관하려면 다시 시도해 보세요.';

  @override
  String onboardingListCreated(int count) {
    return '귀하의 목록이 준비되었습니다: $count 항목이 귀하를 위해 정리되었습니다.';
  }

  @override
  String get onboardingContinueToOffer => '계속하다';

  @override
  String onboardingPaywallListReady(int count) {
    return '첫 번째 목록이 준비되었습니다 · $count 항목';
  }

  @override
  String get paywallContinueFree => '무료 버전으로 계속하기';

  @override
  String get paywallPurchasePending =>
      '귀하의 결제가 승인 대기 중입니다. 확인 후 자동으로 접근권한이 해제됩니다.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return '오늘: 무료입니다. 그런 다음 $days일 후에 $price/년입니다. 언제든지 취소하세요.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return '오늘: 무료입니다. 그런 다음 $days일 후에 $price/월입니다. 언제든지 취소하세요.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/년. 언제든지 취소하세요.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/월. 언제든지 취소하세요.';
  }

  @override
  String get obHookTitle => '스마트한 쇼핑은 여기서 시작됩니다';

  @override
  String get obHookSubtitle => '모든 여행에서 시간과 비용을 절약해주는 AI 기반 목록입니다.';

  @override
  String get obHookSocial => '전 세계 수천 명의 쇼핑객이 신뢰하는 제품';

  @override
  String get obHookCta => '시작하기';

  @override
  String get obQuizHouseholdTitle => '누구를 위해 쇼핑하시나요?';

  @override
  String get obQuizHouseholdSolo => '나만';

  @override
  String get obQuizHouseholdCouple => '나와 내 파트너';

  @override
  String get obQuizHouseholdFamilySmall => '3~4인 가족';

  @override
  String get obQuizHouseholdFamilyLarge => '5인 이상 가족';

  @override
  String get obQuizFrequencyTitle => '얼마나 자주 식료품을 사시나요?';

  @override
  String get obQuizFrequencyDaily => '거의 매일';

  @override
  String get obQuizFrequencyWeekly => '일주일에 한 번';

  @override
  String get obQuizFrequencyBiweekly => '2주마다';

  @override
  String get obQuizFrequencyMonthly => '월별 큰 수확량';

  @override
  String get obQuizPainTitle => '쇼핑할 때 가장 불만스러운 점은 무엇입니까?';

  @override
  String get obQuizPainForget => '나는 항상 물건을 잊어버린다.';

  @override
  String get obQuizPainOverspend => '계획보다 돈을 더 많이 쓴다';

  @override
  String get obQuizPainWaste => '음식은 집에서 낭비됩니다';

  @override
  String get obQuizPainTime => '시간이 너무 많이 걸려요';

  @override
  String get obQuizSavingsTitle => '매달 얼마를 저축하시겠습니까?';

  @override
  String get obQuizSavingsSmall => '약간 - 모든 비트가 중요함';

  @override
  String get obQuizSavingsMedium => '내 식료품비의 약 10%';

  @override
  String get obQuizSavingsLarge => '가능한 한';

  @override
  String get obQuizMethodTitle => '오늘은 쇼핑 목록을 어떻게 작성하시나요?';

  @override
  String get obQuizMethodPaper => '펜과 종이';

  @override
  String get obQuizMethodNotes => '메모 앱';

  @override
  String get obQuizMethodMemory => '머리속에 간직하고 있어요';

  @override
  String get obQuizMethodNone => '나는 목록을 만들지 않는다';

  @override
  String get obSocialTitle => '당신은 좋은 회사에 있어요';

  @override
  String get obSocialSubtitle => '귀하와 같은 쇼핑객은 이미 KipiList를 통해 비용을 절감하고 있습니다.';

  @override
  String get obSocialQuote1 => '나는 더 이상 아무것도 잊지 않습니다. AI는 몇 초 안에 내 목록을 작성합니다.';

  @override
  String get obSocialQuote2 => '우리는 첫 달에 식료품 비용을 눈에 띄게 삭감했습니다.';

  @override
  String get obSocialQuote3 => '파트너와 목록을 공유함으로써 쇼핑 혼란이 끝났습니다.';

  @override
  String get obLoadingTitle => '나만의 계획을 세우세요...';

  @override
  String get obLoadingStepProfile => '귀하의 가구에 맞게 조정';

  @override
  String get obLoadingStepHabits => '쇼핑 루틴에 맞춰 조정하기';

  @override
  String get obLoadingStepSavings => '저축 전략 최적화';

  @override
  String get obLoadingStepLists => '스마트 목록 준비하기';

  @override
  String get obRevealTitle => '계획이 준비되었습니다!';

  @override
  String get obRevealSubtitle => 'KipiList가 작동하는 방식은 다음과 같습니다.';

  @override
  String get obRevealSavingsCaption => 'KipiList를 통한 예상 절감액';

  @override
  String obRevealMonth(int n) {
    return '월 $n';
  }

  @override
  String get obRevealFeatureAi => 'AI가 목록을 작성하고 정리합니다.';

  @override
  String get obRevealFeatureBudget => '목표 대비 지출 추적';

  @override
  String get obRevealFeaturePantry => '식료품 저장실 추적으로 음식물 쓰레기가 줄어듭니다.';

  @override
  String get obRevealFeatureShare => '가족과 실시간 공유';

  @override
  String get obPaywallTitle => '계획을 잠금 해제하세요';

  @override
  String get obPaywallRetry => '다시 시도하세요';

  @override
  String get obLoginTitle => '계획을 저장하세요';

  @override
  String get obLoginSubtitle => '목록이 여러 기기에서 동기화되도록 로그인하세요.';

  @override
  String get obLoginGoogle => 'Google로 계속하기';

  @override
  String get obLoginApple => 'Apple과 함께 계속하세요';

  @override
  String get obLoginSkip => '지금은 아님';

  @override
  String get obLoginError => '로그인에 실패했습니다. 다시 시도하거나 지금은 건너뛰세요.';

  @override
  String get searchMessages => '메시지 검색...';

  @override
  String get deletedList => '삭제된 목록';

  @override
  String get openConversation => '대화 열기';

  @override
  String get userRole => '너';

  @override
  String get assistantRole => '어시스턴트';

  @override
  String get agentActionsRunning => '작업 실행 중...';

  @override
  String get agentActionsFailed => '작업을 실행하지 못했습니다.';

  @override
  String get agentActionsPremium => '작업에는 프리미엄이 필요합니다';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => '변경사항 취소';

  @override
  String premiumStepDescription(String description) {
    return '$description (프리미엄)';
  }

  @override
  String get itemAddedToList => '목록에 항목이 추가되었습니다.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return '이전 상태: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt => '자동 작업을 잠금 해제하려면 프리미엄을 구독하세요.';

  @override
  String get viewPlans => '계획 보기';

  @override
  String get artifactSynced => '동기화됨';

  @override
  String get artifactBudgetLabel => '예산:';

  @override
  String get totalEstimatedLabel => '예상 총액';

  @override
  String get quickActionPantry => '식료품 저장실 보기';

  @override
  String get quickActionAi => '키피와 채팅';

  @override
  String aiApiError(int statusCode) {
    return 'AI 서비스에서 오류($statusCode)를 반환했습니다.';
  }

  @override
  String get aiTimeoutError => '요청이 너무 오래 걸렸습니다. 다시 시도해 주세요.';

  @override
  String get aiConnectionError => 'AI 서비스에 연결할 수 없습니다. 연결을 확인하세요.';

  @override
  String get aiEmptyResponseError => 'AI 서비스가 빈 응답을 반환했습니다.';

  @override
  String get aiInvalidResponseError => 'AI 서비스가 잘못된 응답을 반환했습니다.';

  @override
  String get categoryFruits => '과일';

  @override
  String get categoryCleaning => '청소';

  @override
  String get categoryBeverages => '음료수';

  @override
  String get categoryBakery => '빵집';

  @override
  String get categoryMeat => '고기';

  @override
  String get categoryDairy => '낙농';

  @override
  String get categoryVegetables => '채소';

  @override
  String get categoryGrains => '곡물 및 시리얼';

  @override
  String get categoryHygiene => '개인 관리';

  @override
  String get categoryFrozen => '냉동식품';

  @override
  String get categoryCanned => '통조림';

  @override
  String get categorySeasonings => '조미료';

  @override
  String get categorySweets => '과자와 디저트';

  @override
  String get categoryAlcohol => '주류';

  @override
  String get categoryFish => '물고기';

  @override
  String get categoryColdCuts => '냉햄';

  @override
  String get categoryUtilities => '생활용품';

  @override
  String get categoryPet => '애완동물 용품';

  @override
  String get categoryBaby => '아기';

  @override
  String get categoryOthers => '다른';

  @override
  String chatEmptyGreeting(String name) {
    return '안녕하세요 $name, 저는 키피입니다 👋';
  }

  @override
  String get chatEmptyGreetingNoName => '안녕하세요 키피입니다👋';

  @override
  String get chatEmptyPitch =>
      '목록을 작성하고, 레시피를 제안하고, 저장할 위치를 찾습니다. 어디서부터 시작할까요?';

  @override
  String get aiWelcomeSuggestBarbecue => '바비큐를 계획해보세요';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi님, 저는 바비큐를 주최할 예정입니다. 쇼핑 목록 작성을 도와주세요';

  @override
  String get aiRateLimitError => '짧은 시간에 메시지가 너무 많습니다. 몇 초간 기다렸다가 다시 시도해 보세요.';

  @override
  String get chatHistoryErrorTitle => '이 대화를 로드할 수 없습니다.';

  @override
  String get chatHistoryErrorBody => '문제가 발생했습니다. 다시 시도하려면 재시도를 탭하세요.';

  @override
  String get chatHistoryOfflineTitle => '오프라인 상태입니다';

  @override
  String get chatHistoryOfflineBody => '인터넷 연결을 확인하고 다시 시도하세요.';

  @override
  String get aiGeneratingResponse => '응답 생성 중…';
}

/// The translations for Korean, as used in Republic of Korea (`ko_KR`).
class AppLocalizationsKoKr extends AppLocalizationsKo {
  AppLocalizationsKoKr() : super('ko_KR');

  @override
  String get appTitle => '쇼핑 목록';

  @override
  String get lists => '목록';

  @override
  String get pantry => '식료품 저장실';

  @override
  String get navChat => '채팅';

  @override
  String get navRecipes => '조리법';

  @override
  String get navLists => '목록';

  @override
  String get navMealPlanner => '메뉴';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get create => '만들기';

  @override
  String get add => '추가';

  @override
  String get remove => '제거';

  @override
  String get delete => '삭제';

  @override
  String get edit => '편집';

  @override
  String get copy => '복사';

  @override
  String get next => '다음';

  @override
  String get retry => '재시도';

  @override
  String get regenerate => '재생성';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get confirm => '확인';

  @override
  String get close => '닫기';

  @override
  String get import => '가져오기';

  @override
  String get rename => '이름 바꾸기';

  @override
  String get upgrade => '업그레이드';

  @override
  String get clear => '지우기';

  @override
  String error(String message) {
    return '오류: $message';
  }

  @override
  String errorGeneric(String message) {
    return '오류: $message';
  }

  @override
  String get purchaseError => '구매 처리 중 오류가 발생했습니다. 다시 시도하세요.';

  @override
  String get restoreError => '구매 복원 중 오류가 발생했습니다. 다시 시도하세요.';

  @override
  String get loading => '로딩 중...';

  @override
  String get fieldRequired => '필수 입력 항목';

  @override
  String get addedFeedback => '추가됨!';

  @override
  String get profile => '윤곽';

  @override
  String get exitShoppingMode => '쇼핑 모드 종료';

  @override
  String get exit => '출구';

  @override
  String selectedItems(int count) {
    return '선택된 $count개';
  }

  @override
  String get estimated => '예상';

  @override
  String get alreadyPurchased => '이미 구매함';

  @override
  String get clearList => '목록 지우기';

  @override
  String get clearPurchased => '구매 항목 지우기';

  @override
  String get share => '공유';

  @override
  String get shareViaCode => '코드로 공유';

  @override
  String get importViaCode => '코드로 가져오기';

  @override
  String get listAssistant => '목록 어시스턴트';

  @override
  String get globalAssistant => '글로벌 어시스턴트';

  @override
  String get becomePremium => '프리미엄 가입';

  @override
  String get manageSubscription => '구독 관리';

  @override
  String get completePurchase => '구매 완료';

  @override
  String get confirmClearList => '모든 항목을 제거하시겠습니까?';

  @override
  String get shareListTitle => '목록 공유';

  @override
  String get shareThisCode => '이 코드를 공유하세요:';

  @override
  String get validForLimitedTime => '제한된 시간 동안 유효';

  @override
  String get importListTitle => '목록 가져오기';

  @override
  String get enterCodeHint => '코드 입력';

  @override
  String get confirmArchiveTitle => '구매 완료';

  @override
  String get confirmArchiveContent => '이 구매를 완료하고 목록을 보관 처리하시겠습니까?';

  @override
  String get complete => '완료';

  @override
  String get listArchived => '목록이 보관되었습니다!';

  @override
  String listAdded(String listName) {
    return '$listName 추가됨!';
  }

  @override
  String get buy => '구매';

  @override
  String get unmark => '표시 해제';

  @override
  String confirmDeleteItems(int count) {
    return '$count개 항목을 제거하시겠습니까?';
  }

  @override
  String get confirmDeleteTitle => '확인';

  @override
  String confirmContent(int count) {
    return '$count개 항목을 제거하시겠습니까?';
  }

  @override
  String get archiveList => '목록 보관';

  @override
  String get pantryAppBar => '식료품 저장실';

  @override
  String get generateShoppingList => '쇼핑 목록 생성';

  @override
  String get pantryEmpty => '저장실이 비어 있음';

  @override
  String get pantryEmptySubtitle => '집에 두고 싶은 제품을 추가하세요';

  @override
  String itemsNeedPurchase(int deficit) {
    return '구매가 필요한 항목: $deficit개';
  }

  @override
  String get noItemsToBuy => '구매할 항목이 없습니다';

  @override
  String pantryDeficitCount(int count, String unit) {
    return '$count$unit 없음';
  }

  @override
  String get newPantryList => '저장실 쇼핑';

  @override
  String get newListTitle => '새 쇼핑 목록';

  @override
  String itemsWillBeAdded(int count) {
    return '$count개 항목이 추가됩니다';
  }

  @override
  String get listNameLabel => '목록 이름';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" 목록이 $count개 항목으로 생성됨';
  }

  @override
  String get noTracking => '추적 안 함';

  @override
  String get markAsPurchased => '구매 완료로 표시';

  @override
  String editPantryItem(String name) {
    return '$name 편집';
  }

  @override
  String get idealQuantity => '이상 수량';

  @override
  String get currentQuantity => '현재 수량';

  @override
  String get consumed => '소비됨';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name이(가) $quantity$unit(으)로 재입고됨';
  }

  @override
  String confirmRemovePantry(String name) {
    return '저장실에서 \"$name\"을(를) 제거하시겠습니까?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name 편집';
  }

  @override
  String get scanProductTitle => '제품 스캔';

  @override
  String get positionBarcodeCenter => '바코드를 중앙에 위치시키세요';

  @override
  String get product => '제품';

  @override
  String get settingsAppBar => '설정';

  @override
  String get preferencesSection => '환경설정';

  @override
  String get aiSection => 'AI 어시스턴트';

  @override
  String get language => '언어';

  @override
  String get languagePortuguese => '포르투갈어(브라질)';

  @override
  String get languageEnglish => '영어';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get chooseLanguage => '언어 선택';

  @override
  String get searchLanguage => '언어 검색...';

  @override
  String get currency => '통화';

  @override
  String get chooseCurrency => '통화 선택';

  @override
  String get searchCurrency => '통화 검색...';

  @override
  String get appearance => '테마';

  @override
  String get themeMode => '테마 모드';

  @override
  String get chooseThemeMode => '테마 모드 선택';

  @override
  String get light => '라이트';

  @override
  String get system => '시스템';

  @override
  String get dark => '다크';

  @override
  String get themeColor => '테마 색상';

  @override
  String get dynamicColors => '다이내믹 색상';

  @override
  String get dynamicColorsSubtitle => '배경화면 기반 색상 사용';

  @override
  String get dynamicColorsEnabledWarning => '테마 색상을 적용하려면 동적 색상을 비활성화하세요.';

  @override
  String get finance => '재정';

  @override
  String get monthlyBudgetNav => '월 예산';

  @override
  String get budgetSubtitle => '월별 지출 추적';

  @override
  String get data => '데이터';

  @override
  String get backupNav => '백업';

  @override
  String get backupSubtitle => '데이터 내보내기 또는 가져오기';

  @override
  String get about => '정보';

  @override
  String get version => '버전';

  @override
  String get privacy => '개인정보 처리방침';

  @override
  String get termsOfUse => '이용약관';

  @override
  String get myAchievements => '내 성과';

  @override
  String get itemsPurchased => '구매한 품목';

  @override
  String get totalSavings => '총 절감액';

  @override
  String get currentStreak => '현재 연속';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '$count일',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => '잠금 해제된 배지';

  @override
  String get badgeBeginner => '초보자';

  @override
  String get badgeOrganized => '정리됨';

  @override
  String get badgeSavingMaster => '마스터 저장';

  @override
  String get badgeSuperPlanner => '슈퍼플래너';

  @override
  String get backupTitle => '백업';

  @override
  String get backupPremiumDescription => '백업 및 내보내기는 프리미엄 기능입니다';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get exportDataSubtitle => '모든 목록을 JSON으로 저장';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get importDataSubtitle => 'JSON에서 목록 복원';

  @override
  String get importJsonTitle => 'JSON 가져오기';

  @override
  String get importJsonHint => '백업 JSON을 여기에 붙여넣으세요...';

  @override
  String get backupExported => '백업이 내보내졌습니다!';

  @override
  String get budgetAppBar => '월 예산';

  @override
  String get budgetPremiumLocked => '글로벌 월 예산은 프리미엄 기능입니다';

  @override
  String get budgetUpgradePrompt => '업그레이드하여 잠금 해제';

  @override
  String get noBudgetDefined => '설정된 예산 없음';

  @override
  String totalEstimated(String amount) {
    return '총 예상: $amount';
  }

  @override
  String get setBudgetButton => '예산 설정';

  @override
  String get budgetLists => '목록';

  @override
  String get budgetValueLabel => '금액';

  @override
  String get setBudgetTitle => '월 예산';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '전체';

  @override
  String get filterPending => '미구매';

  @override
  String get filterPurchased => '구매 완료';

  @override
  String get sortName => '이름';

  @override
  String get sortCategory => '카테고리';

  @override
  String get sortDate => '날짜';

  @override
  String get sortManual => '수동';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total 항목 중 $purchased개';
  }

  @override
  String progressBudget(String amount) {
    return '예산: $amount';
  }

  @override
  String progressTotal(String amount) {
    return '합계: $amount';
  }

  @override
  String get addItem => '항목 추가';

  @override
  String get itemName => '항목 이름';

  @override
  String get quantityShort => '수량';

  @override
  String get unit => '단위';

  @override
  String get category => '카테고리';

  @override
  String get estimatedPrice => '예상 가격';

  @override
  String get addItemPrice => '예상 가격';

  @override
  String get editItem => '항목 편집';

  @override
  String get quantityFull => '수량';

  @override
  String get editItemPrice => '예상 가격';

  @override
  String get addToPantry => '저장실에 추가';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"을(를) 저장실에 추가하시겠습니까?';
  }

  @override
  String get yes => '예';

  @override
  String get productName => '제품 이름';

  @override
  String get idealQty => '이상 수량';

  @override
  String get currentQty => '현재 수량';

  @override
  String get trackStock => '재고 추적';

  @override
  String get trackStockActive => '쇼핑 제안에 표시됨';

  @override
  String get trackStockInactive => '쇼핑 제안을 생성하지 않음';

  @override
  String get keepAdding => '계속 추가하세요';

  @override
  String get keepAddingSubtitle => '여러 항목을 추가하려면 시트를 열어 두세요.';

  @override
  String get createListDialog => '목록 만들기';

  @override
  String get renameListDialog => '목록 이름 바꾸기';

  @override
  String get listHistory => '목록 기록';

  @override
  String get myLists => '내 목록';

  @override
  String get viewActive => '활성 목록 보기';

  @override
  String get viewHistory => '기록 보기';

  @override
  String get noArchivedLists => '보관된 목록이 없습니다';

  @override
  String get noActiveLists => '활성 목록이 없습니다';

  @override
  String completedOn(String date) {
    return '$date에 완료됨';
  }

  @override
  String get sharedLabel => '공유 중';

  @override
  String get restore => '복원';

  @override
  String get removeSharedTooltip => '제거';

  @override
  String get deleteListTitle => '목록 삭제';

  @override
  String deleteListContent(String name) {
    return '\"$name\"을(를) 삭제하시겠습니까? 모든 항목이 제거됩니다.';
  }

  @override
  String get removeSharedListTitle => '공유 목록 제거';

  @override
  String removeSharedListContent(String name) {
    return '목록에서 \"$name\"을(를) 제거하시겠습니까? 원본 목록에는 영향을 미치지 않습니다.';
  }

  @override
  String get createNewList => '새 목록 만들기';

  @override
  String get aiAssistant => 'AI 어시스턴트';

  @override
  String get aiAssistantDescription => 'AI 어시스턴트로 스마트한 제안, 레시피 및 맞춤 팁을 받아보세요.';

  @override
  String get generalAssistant => '일반 어시스턴트';

  @override
  String get newChat => '새 채팅';

  @override
  String get noHistory => '채팅 기록 없음';

  @override
  String get deleteSession => '채팅 삭제';

  @override
  String get deleteSessionConfirm => '정말로 이 채팅을 삭제하시겠습니까? 메시지는 영구적으로 손실됩니다.';

  @override
  String get clearHistory => '기록 지우기';

  @override
  String get clearHistoryConfirm => '이 세션의 모든 메시지를 지우시겠습니까?';

  @override
  String get chatHint => '메시지를 입력하세요...';

  @override
  String get chatHintBlocked => '채팅을 위해 AI 잠금 해제';

  @override
  String get chatEmptySubtitle => '시작하려면 항목 제안, 레시피 또는 저장 팁을 요청하세요.';

  @override
  String get chatEmptyTitle => '채팅 내용이 비어 있습니다.';

  @override
  String chatError(String error) {
    return '채팅 로딩 오류: $error';
  }

  @override
  String get goodResponse => '좋은 반응';

  @override
  String get badResponse => '나쁜 반응';

  @override
  String get scrollToBottom => '맨 아래로 스크롤';

  @override
  String get somethingWentWrong => '문제가 발생했습니다.';

  @override
  String get editMessage => '메시지 편집';

  @override
  String get searchConversations => '대화 검색';

  @override
  String get dateGroupToday => '오늘';

  @override
  String get dateGroupYesterday => '어제';

  @override
  String get dateGroupPrevious7Days => '지난 7일';

  @override
  String get dateGroupOlder => '이전';

  @override
  String get aiAssistantTitle => 'AI 어시스턴트';

  @override
  String get closeSheet => '닫다';

  @override
  String get scanBarcodeTitle => '바코드 스캔';

  @override
  String get listHelp => '목록에 대해 무엇을 도와드릴까요?';

  @override
  String get generalHelp => '오늘 쇼핑에 대해 무엇을 도와드릴까요?';

  @override
  String get chatSubtitle => '항목 제안, 레시피 또는 절약 팁을 물어보세요.';

  @override
  String get aiError => '죄송합니다. 요청 처리 중 오류가 발생했습니다. 연결을 확인하거나 나중에 다시 시도해 주세요.';

  @override
  String get aiLimitAlmostReached => 'AI 메시지가 거의 부족함';

  @override
  String get unlockAi => '무제한 AI 잠금 해제';

  @override
  String get aiTeaserFallback =>
      '프리미엄을 구독하면 전체 응답을 받고 쇼핑에 대한 무제한 AI 팁을 얻을 수 있습니다...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining 이번 달 남은 AI 작업 — 무제한으로 업그레이드';
  }

  @override
  String get aiUsageExhausted => '월별 AI 한도에 도달했습니다. 무제한으로 Pro로 업그레이드 →';

  @override
  String get undo => '실행 취소';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '로그인하여 프리미엄\n기능을 잠금 해제하세요';

  @override
  String get signInGoogle => 'Google로 로그인';

  @override
  String get signInApple => 'Apple로 로그인';

  @override
  String get continueAsGuest => '게스트로 계속';

  @override
  String get onboardingWelcomeTitle => 'KipiList에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeDesc => '쇼핑을 정리하고 비용을 절약하는 가장 현명한 방법입니다.';

  @override
  String get onboardingSetupTitle => '경험을 개인화하세요';

  @override
  String get onboardingSetupDesc => 'KipiList의 모양과 작동 방식을 선택하세요.';

  @override
  String get onboardingLoginTitle => '모든 것을 클라우드에 저장하세요';

  @override
  String get onboardingLoginDesc => '모든 기기에서 데이터가 동기화됩니다.';

  @override
  String get onboardingShareTitle => '사랑하는 사람들과 공유하세요';

  @override
  String get onboardingShareDesc => '가족, 친구와 목록을 실시간으로 동기화하세요';

  @override
  String get onboardingPremiumTitle => '모든 기능 잠금 해제';

  @override
  String get onboardingPremiumSubtitle => '쇼핑 목록을 최대한 활용하세요';

  @override
  String get onboardingAnnualBadge => '최고의 가치';

  @override
  String get onboardingMonthlyLabel => '월간 간행물';

  @override
  String get onboardingAnnualLabel => '연간';

  @override
  String get onboardingViewAllPlans => '모든 플랜 보기';

  @override
  String get onboardingSubscribeCta => '구독하다';

  @override
  String get onboardingCancelAnytime => '언제든지 취소하세요. 헌신이 없습니다.';

  @override
  String get onboardingContinueAsGuest => '게스트로 계속';

  @override
  String get onboardingRestore => '복원하다';

  @override
  String get onboardingRestoreDesc => '이미 구독하고 계십니까? 복원하려면 여기를 탭하세요.';

  @override
  String get onboardingMaybeLater => '어쩌면 나중에';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return '$name님, 올바른 방법으로 쇼핑을 정리하세요.';
  }

  @override
  String get onboardingSlide1Title => '스마트 쇼핑 목록';

  @override
  String get onboardingSlide1Body =>
      '즉시 목록을 만들고 공유하세요. Kipi는 습관에 따라 자동으로 항목을 추가합니다.';

  @override
  String get onboardingSlide2Title => '키피를 만나보세요';

  @override
  String get onboardingSlide2Body =>
      '무엇이든 물어보세요. 목록 만들기, 레시피 찾기, 식품 저장실 추적, 일주일 계획 세우기 등이 가능합니다.';

  @override
  String get onboardingSlide3Title => '식료품 저장실 및 식사 계획';

  @override
  String get onboardingSlide3Body =>
      '가지고 있는 음식을 추적하고, 식사를 계획하고, 쇼핑 목록을 자동으로 생성하세요.';

  @override
  String get onboardingExit => '출구';

  @override
  String get onboardingPersonalizationTitle => '당신을 알아가자';

  @override
  String get onboardingPersonalizationDesc =>
      '이 정보는 귀하의 제안을 개인화하고 더욱 스마트한 쇼핑을 만드는 데 사용됩니다.';

  @override
  String get onboardingPersonalizationFoodLabel => '당신이 가장 좋아하는 음식은 무엇입니까?';

  @override
  String get onboardingPersonalizationFoodHint => '예를 들어 피자, 스시, 라자냐...';

  @override
  String get onboardingPersonalizationCta => '계속하다';

  @override
  String get onboardingPersonalizationSkip => '지금은 건너뛰기';

  @override
  String get onboardingPersonalizationFoodRequired => '계속하려면 좋아하는 음식을 알려주세요.';

  @override
  String get settingsDefaultScreen => '기본 홈 화면';

  @override
  String get settingsDefaultScreenSubtitle => '쇼핑 목록 또는 AI 채팅 중 선택';

  @override
  String get settingsScreenList => '쇼핑 목록';

  @override
  String get settingsScreenChat => 'AI채팅';

  @override
  String loginError(String error) {
    return '로그인 오류: $error';
  }

  @override
  String get paywallTitle => 'KipiList 프리미엄';

  @override
  String get paywallLoadingError => '쿠폰을 로드하는 중에 오류가 발생했습니다. 다시 시도해 보세요.';

  @override
  String get paywallPurchaseError => '구매를 완료할 수 없습니다. 다시 시도해 보세요.';

  @override
  String get paywallRestoreError => '복원할 활성 구독이 없습니다.';

  @override
  String paywallTrialDays(Object days) {
    return '$days일 무료';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count주 무료',
      one: '$count주 무료',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월 무료',
      one: '$count개월 무료',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro를 7일 동안 무료로 사용해 보세요';

  @override
  String get paywallTrialSubtitle => '언제든지 취소하세요. 오늘은 요금이 부과되지 않습니다.';

  @override
  String get paywallTrialCta => '무료 평가판 시작';

  @override
  String get recipeAddToList => '쇼핑 목록에 추가';

  @override
  String get recipeAddError => '목록에 추가할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get recipeTapToCheck => '요리하는 동안 재료를 탭하여 확인하세요.';

  @override
  String get recipeIngredientInPantry => '식료품 저장실에';

  @override
  String get recipeIngredientLowPantry => '식료품 저장실이 적음';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$listName에 $count 재료가 추가되었습니다.';
  }

  @override
  String get noListSelected => '선택된 목록이 없습니다. 먼저 목록을 엽니다.';

  @override
  String get paywallFeaturesTitle => '필요한 모든 것:';

  @override
  String get paywallFeatureDescAssistant => 'AI가 자동으로 목록을 정리합니다.';

  @override
  String get paywallFeatureDescUnlimitedLists => '필요한 만큼 목록을 만드세요.';

  @override
  String get paywallFeatureDescSharing => '실시간으로 함께 쇼핑하세요';

  @override
  String get paywallFeatureDescPantry => '집에 있는 물건을 추적하세요';

  @override
  String get paywallFeatureDescBudget => '매달 예산을 유지하세요';

  @override
  String get paywallFeatureUnlimitedLists => '무제한 목록';

  @override
  String get paywallFeatureSmartAI => '스마트 AI';

  @override
  String get paywallFeatureExpenseControl => '비용 통제';

  @override
  String get paywallFeatureSharing => '공유';

  @override
  String get paywallBeforeAfterTitle => 'AI 이전과 이후:';

  @override
  String get paywallLabelCommon => '흔한';

  @override
  String get paywallLabelPro => '키피리스트 PRO';

  @override
  String get paywallBeforeItem1 => '쌀';

  @override
  String get paywallBeforeItem2 => '비누';

  @override
  String get paywallBeforeItem3 => '고기';

  @override
  String get paywallBeforeItem4 => '빵';

  @override
  String get paywallAfterItem1 => '작살';

  @override
  String get paywallAfterItem2 => '청소';

  @override
  String get paywallAfterItem3 => '고기';

  @override
  String get paywallAfterItem4 => '빵집';

  @override
  String get paywallTestimonialsTitle => '사용자 의견:';

  @override
  String get paywallTestimonial1Name => '앤 S.';

  @override
  String get paywallTestimonial1Text =>
      'AI는 내 쇼핑을 몇 초 만에 정리합니다. 나는 시장 여행당 20분을 절약한다.';

  @override
  String get paywallTestimonial2Name => '찰스 M.';

  @override
  String get paywallTestimonial2Text =>
      '나는 다시는 목록 항목을 잊어버린 적이 없습니다. AI 채팅이 놀랍습니다!';

  @override
  String get paywallSocialProof => '+2,400 가족이 사용합니다.';

  @override
  String get paywallCtaUnlock => 'PRO 잠금 해제';

  @override
  String get paywallBestValue => '최고의 가치';

  @override
  String get paywallMostPopular => '가장 인기 있는';

  @override
  String get paywallProLabel => '찬성';

  @override
  String get paywallSafeCheckout => '안전한 결제';

  @override
  String get paywallSelectPlan => '계획을 선택하세요:';

  @override
  String paywallSavePercent(int percent) {
    return '$percent% 저장';
  }

  @override
  String paywallPricePerMonth(String price) {
    return '단 $price/월';
  }

  @override
  String get paywallPackageAnnual => '연간 요금제';

  @override
  String get paywallPackageMonthly => '월간 요금제';

  @override
  String get paywallPackageLifetime => '평생 액세스';

  @override
  String get paywallCancelAnytime => '언제든지 취소하세요. 헌신이 없습니다.';

  @override
  String paywallTrialInCard(int days) {
    return '처음 $days일은 무료';
  }

  @override
  String get paywallSecuredByStore => 'Google Play로 보호됨 · 언제든지 취소 가능';

  @override
  String get paywallPolicy => '개인 정보 보호 정책';

  @override
  String get paywallTerms => '이용약관';

  @override
  String get paywallRestore => '복원하다';

  @override
  String get paywallTimelineToday => '오늘';

  @override
  String get paywallTimelineTodayDesc => '즉시 전체 액세스 잠금 해제';

  @override
  String paywallTimelineDay(int day) {
    return '일 $day';
  }

  @override
  String get paywallTimelineReminderDesc => '평가판이 종료되기 전에 알려드립니다.';

  @override
  String get paywallTimelineChargeDesc => '구독이 시작됩니다 - 언제든지 취소하세요';

  @override
  String get paywallHeroFeatureTitle => 'AI 쇼핑 도우미';

  @override
  String get paywallHeroFeatureDesc =>
      '전체 목록을 말하거나 붙여넣으세요. AI가 몇 초 만에 목록을 정렬, 분류하고 예산을 책정합니다.';

  @override
  String get paywallBasedOnAnswers => '귀하의 답변을 바탕으로 개인화됨';

  @override
  String get paywallHeroHeadline => 'Kipi AI는 항상 당신 곁에 있습니다.';

  @override
  String get paywallHeroSubtitle => '주머니 속의 AI로 항목을 추가하고, 목록을 정리하고, 시간을 절약하세요';

  @override
  String get paywallBenefit1Desc => '연중무휴 24시간 항목 추가, 정리, 제안';

  @override
  String get paywallBenefit2Desc => '3개 목록 제한 없음';

  @override
  String get paywallBenefit3Desc => '비용 추적 및 가족 목록';

  @override
  String get paywallPackageMonthlyDesc => '완전한 유연성';

  @override
  String get paywallWelcomeOfferBadge => '🎁 환영 혜택';

  @override
  String paywallCtaTrialDays(int days) {
    return '무료로 시작 — $days일';
  }

  @override
  String get premiumUpgrade => '업그레이드하여 잠금 해제';

  @override
  String get itemRemoved => '항목이 제거됨';

  @override
  String get emptyListTitle => '목록이 비어 있습니다';

  @override
  String get emptyListSubtitle => '항목을 추가하여 시작하세요';

  @override
  String get noListFoundTitle => '목록을 찾을 수 없음';

  @override
  String get noListFoundSubtitle => '첫 번째 목록을 만들어 시작하세요';

  @override
  String get createFirstList => '첫 번째 목록 만들기';

  @override
  String get listBudgetTitle => '목록 예산';

  @override
  String get budgetAmountLabel => '예산 금액';

  @override
  String get removeBudget => '제거';

  @override
  String get prefUnlimitedLists => '무제한 목록';

  @override
  String get prefSharing => '목록 공유';

  @override
  String get prefFullHistory => '전체 기록';

  @override
  String get prefExportData => '데이터 내보내기';

  @override
  String get prefCustomThemes => '커스텀 테마';

  @override
  String get prefMonthlyBudget => '글로벌 월 예산';

  @override
  String get prefAIAssistant => '개인 AI 어시스턴트';

  @override
  String get prefUnlimitedPantry => '무제한 저장실';

  @override
  String get prefInteractiveArtifacts => '대화형 AI 아티팩트';

  @override
  String get themeGreen => '그린';

  @override
  String get themeBlue => '블루';

  @override
  String get themePurple => '퍼플';

  @override
  String get themeRed => '레드';

  @override
  String get themeOrange => '오렌지';

  @override
  String get themePink => '핑크';

  @override
  String get themeIndigo => '인디고';

  @override
  String get themeAmber => '앰버';

  @override
  String get themeTeal => '틸';

  @override
  String get themeBrown => '브라운';

  @override
  String get catFruits => '과일';

  @override
  String get catCleaning => '청소용품';

  @override
  String get catBeverages => '음료';

  @override
  String get catBakery => '베이커리';

  @override
  String get catOthers => '기타';

  @override
  String get unitPack => '팩';

  @override
  String get shareSubject => '쇼핑 목록';

  @override
  String get monthlyBudgetTitle => '월 예산';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '목록 삭제';

  @override
  String get pantryItemRemoved => '항목이 제거됨';

  @override
  String get pantryItemAdded => '항목이 추가됨';

  @override
  String deficitItems(int deficit) {
    return '구매가 필요한 항목: $deficit개';
  }

  @override
  String get cartTotal => '장바구니 합계';

  @override
  String get restockLabel => '재입고';

  @override
  String get advancedFeatures => '고급 기능';

  @override
  String get selectAll => '모두 선택';

  @override
  String get deselectAll => '모두 선택 해제';

  @override
  String get monthlyBudgetAppBar => '월 예산';

  @override
  String get budgetEditTitle => '월 예산';

  @override
  String get budgetDashboardTitle => '대시보드';

  @override
  String get selectListForDashboard => '대시보드를 보려면 목록을 선택하세요.';

  @override
  String get spendingAnalysis => '지출 분석';

  @override
  String get noItemsToAnalyze => '분석할 항목이 목록에 없습니다.';

  @override
  String get markItemsToSeeAnalysis => '항목을 구매 완료로 표시하면 분석을 볼 수 있습니다.';

  @override
  String get totalSpending => '총 지출';

  @override
  String get spendingByCategory => '카테고리별 지출';

  @override
  String get achievements => '업적';

  @override
  String get exportPdfExcel => 'PDF/Excel 내보내기';

  @override
  String get exportPdf => 'PDF로 내보내기';

  @override
  String get exportExcel => 'Excel로 내보내기';

  @override
  String get organizingAi => 'AI로 정리 중...';

  @override
  String get yesLabel => '예';

  @override
  String get noLabel => '아니요';

  @override
  String get shareListText => '내 쇼핑 목록';

  @override
  String get emptyListAddItems => '목록이 비어 있습니다! 먼저 항목을 추가하세요. ℹ️';

  @override
  String get listOrganizedMagic => '목록이 마법처럼 카테고리별로 정리되었습니다! ✨';

  @override
  String get shoppingMode => '쇼핑 모드';

  @override
  String get smartOrganization => '스마트 정리';

  @override
  String get savings => '절약';

  @override
  String get shoppingModeHeader => '쇼핑 모드';

  @override
  String get shareAsText => '서식이 지정된 텍스트로 항목 보내기';

  @override
  String get shareRealtime => '다른 사람과 실시간 동기화';

  @override
  String get quickRecipe => '빠른 레시피';

  @override
  String get quickRecipePrompt => '내 목록에 있는 항목으로 레시피를 추천해 주세요.';

  @override
  String get economyTips => '절약 팁';

  @override
  String get economyTipsPrompt => '이 구매에서 비용을 어떻게 절약할 수 있나요?';

  @override
  String get organizeAisles => '매대별로 정리';

  @override
  String get organizeAislesPrompt => '마켓 매대별로 정리해 주세요.';

  @override
  String get recipeSuggestion => '레시피 추천';

  @override
  String aiCreditsRemaining(int remaining) {
    return '남은 크레딧: $remaining';
  }

  @override
  String get addAllToList => '모두 목록에 추가';

  @override
  String get organizeByAisles => '매대별로 정리';

  @override
  String get voiceTranscriptionTooltip => '음성 입력 (무료)';

  @override
  String get aiVoiceCommandTooltip => 'AI 음성 명령 (프리미엄)';

  @override
  String get voiceCommandTitle => 'AI 음성 명령';

  @override
  String get voiceCommandContent =>
      '자연스럽게 말하여 목록을 관리하세요!\n\n예시:\n• \'빵, 치즈, 햄 추가\'\n• \'세탁 세제 제거\'\n• \'테마를 파란색으로 변경\'\n\n이것은 KipiList 프리미엄의 독점 기능입니다.';

  @override
  String get voiceCommandPlanBtn => '요금제 보기';

  @override
  String get itemsAddedSuccess => '항목이 목록에 성공적으로 추가되었습니다!';

  @override
  String get viewList => '목록 보기';

  @override
  String get feedbackTitle => '피드백 보내기';

  @override
  String get feedbackPrompt => '무엇을 공유하시겠습니까?';

  @override
  String get feedbackTypeBug => '버그 신고';

  @override
  String get feedbackTypeBugHint => '무언가 작동하지 않음';

  @override
  String get feedbackTypeSuggestion => '제안';

  @override
  String get feedbackTypeSuggestionHint => '앱 개선 아이디어';

  @override
  String get feedbackTypeTranslation => '번역 문제';

  @override
  String get feedbackTypeTranslationHint => '올바르지 않거나 어색한 번역';

  @override
  String get feedbackTypeFeature => '기능 요청';

  @override
  String get feedbackTypeFeatureHint => '보고 싶은 기능';

  @override
  String get feedbackTypeOther => '기타';

  @override
  String get feedbackTypeOtherHint => '기타 유형의 피드백';

  @override
  String get feedbackHint => '피드백을 자세히 설명해 주세요...';

  @override
  String get feedbackSend => '피드백 보내기';

  @override
  String get feedbackSending => '보내는 중...';

  @override
  String get feedbackThankYou => '감사합니다!';

  @override
  String get feedbackThankYouMessage =>
      '피드백이 접수되었으며 모두를 위한 KipiList 개선에 도움이 됩니다.';

  @override
  String get feedbackBack => '뒤로';

  @override
  String feedbackError(String error) {
    return '보내기 오류: $error';
  }

  @override
  String get feedbackRetry => '다시 시도';

  @override
  String get feedbackSettingsTitle => '피드백 보내기';

  @override
  String get feedbackSettingsSubtitle => '버그 신고, 개선 제안 또는 번역 수정';

  @override
  String get aiEnergy => 'AI 에너지';

  @override
  String get searchInConversation => '대화에서 검색...';

  @override
  String get noMessagesFound => '메시지를 찾을 수 없습니다.';

  @override
  String get suggestedQuestions => '제안된 질문:';

  @override
  String get shoppingAssistant => '쇼핑 도우미';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total 중 $purchased 구매함';
  }

  @override
  String get estimatedCost => '추정된';

  @override
  String get viewItems => '항목 보기';

  @override
  String get noItemsInList => '목록에 항목이 없습니다';

  @override
  String get longHistoryWarning => '오랜 역사: 어시스턴트는 더 나은 성능을 위해 최신 메시지에 중점을 둡니다.';

  @override
  String get listening => '청취...';

  @override
  String get addDirectToList => '목록에 직접 추가';

  @override
  String get unlockFullResponse => '전체 응답 잠금 해제';

  @override
  String get switchList => '목록 전환';

  @override
  String get marketMode => '시장 모드';

  @override
  String get backToChat => '채팅으로 돌아가기';

  @override
  String get finishShopping => '쇼핑 마무리';

  @override
  String get welcomeAiAssistant => 'AI 어시스턴트에 오신 것을 환영합니다';

  @override
  String get createListToStartAi => '스마트 채팅을 시작하려면 쇼핑 목록을 만드세요.';

  @override
  String get howCanIHelp => '어떻게 도와드릴까요?';

  @override
  String get chatSubtitleShort => '가격, 레시피, 구성 등에 대해 물어보세요...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total 구매함';
  }

  @override
  String get quickReplies => '빠른 답변:';

  @override
  String get voiceProFeature => '고급 음성 명령은 Pro입니다. 기본 받아쓰기를 사용 설정하는 중...';

  @override
  String get viewPro => '프로 보기';

  @override
  String get errorLoadingChat => '이런! 채팅을 로드하는 중에 문제가 발생했습니다.';

  @override
  String get errorLoadingChatSubtitle => '연결을 확인하거나 나중에 다시 시도하세요.';

  @override
  String get errorOscillation =>
      '이는 네트워크 변동 또는 일시적인 사용 불가로 인해 발생할 수 있습니다. 다시 시도해 주세요.';

  @override
  String get activeListening => '적극적 경청';

  @override
  String get whatToDoWithItem => '이 아이템으로 무엇을 하고 싶으신가요?';

  @override
  String get viewDetails => '세부정보 보기';

  @override
  String get openMenu => '메뉴 열기';

  @override
  String get viewRecipe => '레시피 보기';

  @override
  String get recipeCreated => '레시피가 생성되었습니다!';

  @override
  String get editRecipe => '편집';

  @override
  String get deleteRecipe => '삭제';

  @override
  String get deleteRecipeConfirm => '이 레시피를 삭제하시겠습니까?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\"을(를) 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';
  }

  @override
  String get ingredients => '재료';

  @override
  String get instructions => '조리법';

  @override
  String get prepTime => '조리 시간';

  @override
  String get recipeSaved => '레시피가 저장되었습니다!';

  @override
  String get noRecipesSaved => '저장된 레시피 없음';

  @override
  String get noRecipesSavedHint => '아래 버튼을 눌러 첫 번째 커스텀 레시피를 만드세요.';

  @override
  String get myRecipes => '내 레시피';

  @override
  String get newRecipe => '새 레시피';

  @override
  String get loadingRecipes => '레시피를 로드하는 중...';

  @override
  String get errorLoadingRecipes => '레시피 로드 오류';

  @override
  String get addIngredient => '재료 추가';

  @override
  String get saveRecipe => '저장';

  @override
  String get recipeName => '레시피 이름';

  @override
  String get shortDescription => '짧은 설명';

  @override
  String get prepTimeMinutes => '조리 시간 (분)';

  @override
  String get recipeYieldServings => '제공량';

  @override
  String get recipeManualTotalCost => '수동 총 비용';

  @override
  String get recipeManualTotalCostHint => '재료 가격을 추정하려면 비워 두세요.';

  @override
  String get recipeEstimatedTotalCost => '예상 총 비용';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / 제공';
  }

  @override
  String recipeServesCount(int count) {
    return '$count 제공';
  }

  @override
  String get recipeEstimatePartial => '가격이 포함된 재료를 기준으로 한 부분 견적입니다.';

  @override
  String get instructionsHint => '한 줄에 한 단계씩 입력하세요...';

  @override
  String get addPhoto => '사진 추가';

  @override
  String get imageUrlPlaceholder => '또는 이미지 URL 붙여넣기';

  @override
  String get tags => '태그';

  @override
  String get recipeTags => '레시피 태그';

  @override
  String get suggestedTags => '추천';

  @override
  String get searchRecipes => '레시피 검색...';

  @override
  String get filterByTag => '태그로 필터링';

  @override
  String get allTags => '전체';

  @override
  String get recipeDeleted => '레시피가 삭제되었습니다';

  @override
  String get saveChanges => '변경 사항 저장';

  @override
  String get editRecipeTitle => '레시피 편집';

  @override
  String get newRecipeTitle => '새 레시피';

  @override
  String get requiredField => '필수';

  @override
  String get chooseImageSource => '이미지 소스 선택';

  @override
  String get gallery => '갤러리';

  @override
  String get enterUrl => 'URL 입력';

  @override
  String get recipeImage => '레시피 이미지';

  @override
  String get removeImage => '이미지 제거';

  @override
  String get mealPlannerTitle => '식단 플래너';

  @override
  String get mealPlannerViewMonthly => '월간 보기';

  @override
  String get mealPlannerViewWeekly => '주간 보기';

  @override
  String get mealPlannerNoMeals => '계획된 식사 없음';

  @override
  String get mealPlannerNoMealsHint => '식사를 추가하려면 날짜를 탭하세요';

  @override
  String get mealPlannerLoading => '식사 계획을 로드하는 중...';

  @override
  String get mealPlannerError => '식사 계획 로드 오류';

  @override
  String get mealPlannerAddMeal => '식사 추가';

  @override
  String get mealPlannerEditMeal => '식사 편집';

  @override
  String get mealPlannerDeleteMeal => '식사 제거';

  @override
  String get mealPlannerMealDeleted => '식사가 제거됨';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count인분',
      one: '$count인분',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '인분';

  @override
  String get mealPlannerNoteLabel => '메모 (선택 사항)';

  @override
  String get mealPlannerSelectRecipe => '레시피 선택';

  @override
  String get mealPlannerSearchRecipes => '레시피 검색...';

  @override
  String get mealPlannerNoRecipesFound => '레시피를 찾을 수 없음';

  @override
  String get mealPlannerNoRecipesHint => '먼저 레시피 탭에서 레시피를 만드세요';

  @override
  String get mealPlannerSave => '계획에 추가';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total 식사 계획됨';
  }

  @override
  String get mealPlannerEstimatePartial => '부분 가격 데이터가 포함된 레시피를 기반으로 추정합니다.';

  @override
  String get mealPlannerGenerateList => '쇼핑 목록 생성';

  @override
  String get mealPlannerGenerateListConfirm =>
      '이번 주 계획된 식사의 모든 재료를 쇼핑 목록에 추가하시겠습니까?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count개의 재료가 목록에 추가되었습니다!';
  }

  @override
  String get mealPlannerGenerateListEmpty => '추가할 재료가 없습니다. 먼저 레시피로 식사를 계획하세요.';

  @override
  String get mealPlannerGenerateListNoList => '먼저 쇼핑 목록을 만드세요.';

  @override
  String get mealPlannerMealTypeBreakfast => '아침';

  @override
  String get mealPlannerMealTypeLunch => '점심';

  @override
  String get mealPlannerMealTypeDinner => '저녁';

  @override
  String get mealPlannerMealTypeSnack => '간식';

  @override
  String get mealPlannerDateLabel => '날짜';

  @override
  String get mealPlannerWeekEmpty => '이번 주에 계획된 항목이 없습니다';

  @override
  String get mealPlannerWeekEmptyHint => '식사 계획을 시작하려면 아무 날짜나 탭하세요!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes분';
  }

  @override
  String get inviteToList => '목록에 초대';

  @override
  String get shareApp => '앱 공유';

  @override
  String get shareAppDescription => 'KipiList를 사용하도록 친구를 초대하세요';

  @override
  String shareReferralText(String url) {
    return '저는 KipiList를 사용하여 쇼핑을 정리하고 있습니다! 내 링크를 통해 다운로드하면 우리 둘 다 7일간 프리미엄을 무료로 받을 수 있습니다: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium을 7일 동안 이용해보세요!';

  @override
  String get gestureHint => '길게 눌러 선택 • 스와이프하여 삭제';

  @override
  String get catalogTitle => '목록';

  @override
  String get catalogMyFrequents => '나의 자주 방문하는 곳';

  @override
  String get catalogSearchGlobal => '어떤 제품이든 검색해보세요...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category에서 검색하세요...';
  }

  @override
  String get catalogSortPopular => '가장 인기있는';

  @override
  String get catalogSortAZ => 'A~Z';

  @override
  String get catalogFilterNational => '국민';

  @override
  String get catalogRareSection => '귀하의 국가에서는 덜 일반적입니다';

  @override
  String get catalogRareBadge => '희귀한';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 추가 →';
  }

  @override
  String get catalogProductNotFound => '제품을 찾을 수 없습니다. 이름을 입력하세요.';

  @override
  String get catalogBrowse => '카탈로그 찾아보기';

  @override
  String get catalogCategories => '카테고리';

  @override
  String get offlineBanner => '귀하는 오프라인 상태입니다';

  @override
  String get consentTitle => '개인정보 보호 및 분석';

  @override
  String get consentBody =>
      'KipiList는 Firebase Analytics를 사용하여 사용자 경험을 개선합니다. 귀하의 데이터는 당사의 개인정보 보호정책에 따라 처리됩니다.';

  @override
  String get consentAccept => '수용하다';

  @override
  String get consentDecline => '아니요, 감사합니다';

  @override
  String get mealPlannerPantryAllAvailable => '재고 있음';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 누락된 항목',
      one: '$count 누락된 항목',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => '식사 유형 관리';

  @override
  String get mealPlannerAddType => '식사 유형 추가';

  @override
  String get mealPlannerEditType => '식사 유형 수정';

  @override
  String get mealPlannerTypeName => '이름';

  @override
  String get mealPlannerTypeColor => '색상';

  @override
  String get mealPlannerTypeIcon => '상';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      '이 식사 유형을 삭제하시겠습니까? 이 유형의 계획된 식사는 그대로 유지됩니다.';

  @override
  String get mealPlannerTypeNameEmpty => '이름은 비워둘 수 없습니다.';

  @override
  String get mealPlannerTypeDeleteError => '이 식사 유형을 삭제할 수 없습니다.';

  @override
  String get mealPlannerCustomTypeLabel => '맞춤 유형';

  @override
  String get mealPlannerDefaultTypeLabel => '기본 유형';

  @override
  String get expirationDate => '만료일';

  @override
  String get notInformed => '정보가 없음';

  @override
  String get skip => '건너뛰다';

  @override
  String get onboardingAiTitle => '키피와 채팅';

  @override
  String get onboardingAiGreeting => '안녕! 여러분의 개인 쇼핑 도우미 키피입니다! 🛒';

  @override
  String get onboardingAiAskName => '이름이 뭐에요?';

  @override
  String get onboardingAiNameHint => '이름을 입력하세요...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '만나서 반가워요, $name님! 🎉';
  }

  @override
  String get onboardingAiAskFood => '당신이 가장 좋아하는 음식은 무엇입니까?';

  @override
  String get onboardingAiFoodHint => '예를 들어 피자, 스시...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '훌륭한 선택입니다! 귀하의 목록에 추가할 내용은 다음과 같습니다.\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => '이거 괜찮아 보이는데? 다른 것을 입력해 보세요!';

  @override
  String get onboardingAiReady => '엄청난! 이제 시작할 준비가 되었습니다. 계정을 설정해 보세요!';

  @override
  String get onboardingAiContinue => '계속 →';

  @override
  String get connectionError => '연결 오류';

  @override
  String connectionErrorDesc(String error) {
    return '오류: $error';
  }

  @override
  String get errorLoadingLists => '목록을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get errorLoadingItems => '항목을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get noListsFound => '목록을 찾을 수 없습니다';

  @override
  String get backToToday => '오늘로 돌아가기';

  @override
  String get quickSuggestions => '빠른 제안';

  @override
  String get aiEnergyLow => '낮은 AI 에너지';

  @override
  String get aiUnlockUnlimited => '무제한 AI 잠금 해제';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '오늘 $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => '무제한 AI 구독';

  @override
  String get unlockWithAd => '광고로 잠금 해제';

  @override
  String get conversationHistoryTitle => '대화 기록';

  @override
  String get noConversationsFound => '대화를 찾을 수 없습니다.';

  @override
  String get errorLoadingHistory => '기록을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get deleteConversationTitle => '대화 삭제';

  @override
  String get deleteConversationConfirm => '이 작업은 취소할 수 없습니다.';

  @override
  String get deleteConversation => '삭제';

  @override
  String get subscription => '신청';

  @override
  String get kipiListProActive => 'KipiList 프로 액티브';

  @override
  String get unlockPremiumTitle => '프리미엄 잠금 해제';

  @override
  String get loadingSubscription => '구독 로드 중...';

  @override
  String get errorLoadingSubscription => '구독을 로드하는 중에 오류가 발생했습니다.';

  @override
  String get profileSection => '윤곽';

  @override
  String get myProfile => '내 프로필';

  @override
  String get profileSubtitle => '귀하의 프로필 정보';

  @override
  String get customizeAiAssistant => 'AI 어시스턴트 사용자 정의';

  @override
  String get assistantHistory => '어시스턴트 기록';

  @override
  String get assistantHistorySubtitle => '대화 기록 보기';

  @override
  String get manageCategories => '카테고리 관리';

  @override
  String get manageCategoriesSubtitle => '카테고리 추가, 편집 또는 제거';

  @override
  String get customizeAssistant => '사용자 정의';

  @override
  String get assistantName => '어시스턴트 이름';

  @override
  String get chooseIcon => '아이콘 선택';

  @override
  String get profileSaved => '프로필이 저장되었습니다';

  @override
  String get errorSavingProfile => '프로필을 저장하는 중에 오류가 발생했습니다.';

  @override
  String get userProfile => '사용자 프로필';

  @override
  String get profileDescription => '프로필 설명';

  @override
  String get preferredMarket => '선호하는 시장';

  @override
  String get preferredMarketHint => '주로 어디서 쇼핑하시나요?';

  @override
  String get dietaryRestrictions => '식이 제한';

  @override
  String get dietaryRestrictionsHint => '식단 제한이 있나요?';

  @override
  String get marketsToAvoid => '피해야 할 시장';

  @override
  String get marketsToAvoidHint => '쇼핑하고 싶지 않은 시장';

  @override
  String get observations => '관찰';

  @override
  String get observationsHint => '추가 메모가 있나요?';

  @override
  String get saveProfile => '프로필 저장';

  @override
  String get everythingReady => '모든 준비가 완료되었습니다!';

  @override
  String get youCompletedList => '목록을 완성했습니다!';

  @override
  String get selectCheaperAlternative => '더 저렴한 대안을 선택하세요';

  @override
  String get suggestedItems => '추천상품';

  @override
  String get swapped => '교환됨';

  @override
  String get swap => '교환';

  @override
  String get chooseThemeColor => '테마 색상 선택';

  @override
  String get manageCategoriesTitle => '카테고리 관리';

  @override
  String get categoryLimitReached => '카테고리 한도에 도달했습니다.';

  @override
  String get deleteCategoryTitle => '카테고리 삭제';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\"의 항목은 \"기타\"로 이동됩니다.\n계속하다?';
  }

  @override
  String get deleteCategory => '삭제';

  @override
  String get newCategoryDialog => '새로운 카테고리';

  @override
  String get editCategoryDialog => '카테고리 수정';

  @override
  String get categoryName => '카테고리 이름';

  @override
  String get categoryNameHint => '카테고리 이름을 입력하세요';

  @override
  String get categoryColorLabel => '색상';

  @override
  String get categoryIconLabel => '상';

  @override
  String itemAddedSnack(String name) {
    return '$name 추가됨';
  }

  @override
  String get kipiQuickBarHint => '무엇을 사야 합니까?';

  @override
  String replaceItem(String item) {
    return '$item 바꾸기';
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
  String get onboardingHookHeadline => '다시는 식료품을 잊지 마세요';

  @override
  String get onboardingGoalSaveMoney => '돈을 절약';

  @override
  String get onboardingGoalNeverForget => '절대 잊지 마세요';

  @override
  String get onboardingGoalFaster => '더 빠르게 쇼핑하세요';

  @override
  String get onboardingGoalFamily => '가족 쇼핑 정리하기';

  @override
  String get onboardingGoalRecipes => '레시피를 찾아보세요';

  @override
  String get onboardingGoalPantry => '트랙 식료품 저장실';

  @override
  String get onboardingCommitmentsTitle => '당신에게 중요한 것은 무엇입니까?';

  @override
  String get onboardingCommitmentsSubtitle => '목표를 선택하여 KipiList를 개인화하세요';

  @override
  String get onboardingCommitmentsCta => '갑시다!';

  @override
  String get onboardingPersonalizationNameLabel => '당신의 이름';

  @override
  String get onboardingPersonalizationNameHint => '이름을 입력하세요';

  @override
  String get onboardingPersonalizationCategoryTitle => '당신은 무엇을 쇼핑합니까?';

  @override
  String get onboardingPersonalizationGroupTitle => '누구를 위해 쇼핑하시나요?';

  @override
  String get onboardingCategoryGrocery => '식료 잡화류';

  @override
  String get onboardingCategoryPharmacy => '약국';

  @override
  String get onboardingCategoryRecipes => '조리법';

  @override
  String get onboardingCategoryHome => '집';

  @override
  String get onboardingCategoryPet => '애완 동물';

  @override
  String get onboardingGroupSolo => '나만';

  @override
  String get onboardingGroupCouple => '커플';

  @override
  String get onboardingGroupFamily => '가족';

  @override
  String get onboardingLoadingTitle => '체험을 준비 중입니다...';

  @override
  String get onboardingLoadingStep1 => '선호도 분석 중...';

  @override
  String get onboardingLoadingStep2 => 'AI 어시스턴트 설정 중...';

  @override
  String get onboardingLoadingStep3 => '거의 준비됐어요...';

  @override
  String get onboardingLoadingStat1Label => '카탈로그에 등록된 항목';

  @override
  String get onboardingLoadingStat2Label => '도움을 준 사용자';

  @override
  String get onboardingLoadingStat3Label => '분 절약';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, 여행할 때마다 할인 받으세요!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, 아이템을 절대 잊지 마세요!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, 쇼핑 시간을 절반으로 단축하세요!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, 가족 쇼핑을 준비하세요!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, 새로운 레시피를 발견해보세요!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, 식료품 저장실을 완벽하게 추적하세요!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '여행할 때마다 할인 받으세요!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => '아이템을 절대 잊지 마세요!';

  @override
  String get paywallGoalHeadlineNoNameFaster => '쇼핑 시간을 절반으로 단축하세요!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '가족 쇼핑을 정리해보세요!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '새로운 요리법을 발견해보세요!';

  @override
  String get paywallGoalHeadlineNoNamePantry => '식료품 저장실을 완벽하게 추적하세요!';

  @override
  String paywallPricePerDay(String price) {
    return '$price/일 — 커피 한 잔 미만';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => '지금은 건너뛰세요';

  @override
  String get paywallTestimonial => 'AI는 내 쇼핑을 몇 초 만에 정리합니다. 나는 여행당 20분을 절약한다.';

  @override
  String get paywallTestimonialAuthor => '앤 S.';

  @override
  String get paywallTrialDisclaimer =>
      '언제든지 취소하세요 · 평가판이 종료될 때까지 요금이 부과되지 않습니다.';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return '안녕하세요 $name! 어떤 $category이 필요합니까?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '어떤 $category이 필요합니까?';
  }

  @override
  String get onboardingAiDemoYes => '예!';

  @override
  String get onboardingAiDemoReaction => '멋진!';

  @override
  String get onboardingAiDemoChange => '항목 변경';

  @override
  String get onboardingAiDemoOffer => '다른 것을 입력해 보세요!';

  @override
  String get onboardingAiDemoContinue => '계속하다';

  @override
  String get onboardingAiDemoSlideHeadline => '이제 AI로 쇼핑 목록을 확인하세요';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi가 몇 초 만에 전체 목록을 작성하는 방법을 알아보세요.';

  @override
  String get onboardingAiDemoSlideCta => '나는 이것을 원한다! →';

  @override
  String get onboardingAiDemoSlideUserMsg => '바비큐를 주최해요 🔥';

  @override
  String get onboardingAiDemoSlideReady => '준비가 된! 필요한 모든 것은 다음과 같습니다.';

  @override
  String get onboardingAiDemoSlideDone => '몇 초 만에 전체 목록을 완성하세요 ✨';

  @override
  String get onboardingPainTitle => '당신을 가장 좌절시키는 것은 무엇입니까?';

  @override
  String get onboardingPainSubtitle => '솔직하게 말씀해 주세요. 하나하나 고쳐드리겠습니다.';

  @override
  String get onboardingPainCta => '예, 이 문제를 해결해 주세요 →';

  @override
  String get onboardingPainForget => '가게에서 물건을 잊어버렸어요';

  @override
  String get onboardingPainFamily => '우리 가족은 목록을 전혀 볼 수 없습니다';

  @override
  String get onboardingPainOverspend => '난 항상 예산을 초과해';

  @override
  String get onboardingPainRepeat => '한 번의 여행으로는 충분하지 않습니다';

  @override
  String get aiWelcomeContent =>
      '안녕하세요! 👋 저는 당신의 개인 쇼핑 및 레시피 도우미 **키피** 입니다!\n\n나는 당신을 돕기 위해 여기 있습니다:\n🛒 자동으로 카테고리별로 쇼핑을 **정리**하세요\n💰 예산을 **추적**하고 비용 절감 팁을 알려드립니다.\n🍲 이미 가지고 있는 음식으로 맛있는 요리법을 **제안**하세요.\n\n오늘은 무엇을 도와드릴까요? 첫 번째 목록을 만드는 것부터 시작할 수 있습니다!';

  @override
  String get aiWelcomeSuggestCreateList => '내 첫 번째 목록 만들기';

  @override
  String get aiWelcomeSuggestCreateListPrompt => 'Kipi, 내 첫 쇼핑 목록 작성을 도와주세요';

  @override
  String get aiWelcomeSuggestSave => '돈을 절약하는 방법?';

  @override
  String get aiWelcomeSuggestSavePrompt => '키피야, 식료품비를 절약하는 데 어떻게 도와줄 수 있니?';

  @override
  String get suggestionMilk => '우유';

  @override
  String get suggestionBread => '빵';

  @override
  String get suggestionEggs => '계란';

  @override
  String get suggestionCoffee => '커피';

  @override
  String get suggestionRice => '쌀';

  @override
  String get suggestionFruits => '과일';

  @override
  String get recipeIngredientSingular => '성분 1개';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count 재료';
  }

  @override
  String get pantryAvailabilityAll => '모두 설정되었습니다!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount 식료품 저장실에 있음';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$total의 $current 단계';
  }

  @override
  String get onboardingDemoHeadline => '무엇을 계획하고 있는지 알려주세요. Kipi가 목록을 작성합니다.';

  @override
  String get onboardingDemoSubtitle => '몇 초 만에 정리된 항목을 가져옵니다.';

  @override
  String get onboardingPersonalizationEffect =>
      '이는 Kipi가 보다 관련성 높은 품목과 수량을 제안하는 데 도움이 됩니다.';

  @override
  String get onboardingPersonalizeWithName => '내 이름으로 맞춤 설정';

  @override
  String get onboardingCreateFirstList => '내 첫 번째 목록 만들기';

  @override
  String get onboardingPromptWeekly => '나의 주간 필수품 계획하기';

  @override
  String get onboardingPromptEvent => '특별한 걸 준비하고 있어';

  @override
  String get onboardingPromptEssentials => '나에게 필요한 필수품을 제안해보세요';

  @override
  String get onboardingFallbackGrocery => '🍚 쌀|🫘 콩|🥛 우유|🥚 계란|🍞 빵|🍎 과일';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 접착 붕대|🌡️ 온도계|🧴 방부제|😷 안면 마스크|🧼 손 소독제';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 토마토|🧅 양파|🧄 마늘|🥚 계란|🧀 치즈|🌿 신선한 허브';

  @override
  String get onboardingFallbackHome =>
      '🧻 종이 타월|🧽 스폰지|🧴 세제|🗑️ 쓰레기 봉투|🧹 청소용 천';

  @override
  String get onboardingFallbackPet =>
      '🥣 애완동물 사료|🦴 간식|🧼 애완동물 샴푸|🧸 장난감|🧻 폐기물 봉투';

  @override
  String get onboardingListSaveFailed =>
      '항목을 준비했는데 목록을 저장할 수 없습니다. 앱에 보관하려면 다시 시도해 보세요.';

  @override
  String onboardingListCreated(int count) {
    return '귀하의 목록이 준비되었습니다: $count 항목이 귀하를 위해 정리되었습니다.';
  }

  @override
  String get onboardingContinueToOffer => '계속하다';

  @override
  String onboardingPaywallListReady(int count) {
    return '첫 번째 목록이 준비되었습니다 · $count 항목';
  }

  @override
  String get paywallContinueFree => '무료 버전으로 계속하기';

  @override
  String get paywallPurchasePending =>
      '귀하의 결제가 승인 대기 중입니다. 확인 후 자동으로 접근권한이 해제됩니다.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return '오늘: 무료입니다. 그런 다음 $days일 후에 $price/년입니다. 언제든지 취소하세요.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return '오늘: 무료입니다. 그런 다음 $days일 후에 $price/월입니다. 언제든지 취소하세요.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/년. 언제든지 취소하세요.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/월. 언제든지 취소하세요.';
  }

  @override
  String get obHookTitle => '스마트한 쇼핑은 여기서 시작됩니다';

  @override
  String get obHookSubtitle => '모든 여행에서 시간과 비용을 절약해주는 AI 기반 목록입니다.';

  @override
  String get obHookSocial => '전 세계 수천 명의 쇼핑객이 신뢰하는 제품';

  @override
  String get obHookCta => '시작하기';

  @override
  String get obQuizHouseholdTitle => '누구를 위해 쇼핑하시나요?';

  @override
  String get obQuizHouseholdSolo => '나만';

  @override
  String get obQuizHouseholdCouple => '나와 내 파트너';

  @override
  String get obQuizHouseholdFamilySmall => '3~4인 가족';

  @override
  String get obQuizHouseholdFamilyLarge => '5인 이상 가족';

  @override
  String get obQuizFrequencyTitle => '얼마나 자주 식료품을 사시나요?';

  @override
  String get obQuizFrequencyDaily => '거의 매일';

  @override
  String get obQuizFrequencyWeekly => '일주일에 한 번';

  @override
  String get obQuizFrequencyBiweekly => '2주마다';

  @override
  String get obQuizFrequencyMonthly => '월별 큰 수확량';

  @override
  String get obQuizPainTitle => '쇼핑할 때 가장 불만스러운 점은 무엇입니까?';

  @override
  String get obQuizPainForget => '나는 항상 물건을 잊어버린다.';

  @override
  String get obQuizPainOverspend => '계획보다 돈을 더 많이 쓴다';

  @override
  String get obQuizPainWaste => '음식은 집에서 낭비됩니다';

  @override
  String get obQuizPainTime => '시간이 너무 많이 걸려요';

  @override
  String get obQuizSavingsTitle => '매달 얼마를 저축하시겠습니까?';

  @override
  String get obQuizSavingsSmall => '약간 - 모든 비트가 중요함';

  @override
  String get obQuizSavingsMedium => '내 식료품비의 약 10%';

  @override
  String get obQuizSavingsLarge => '가능한 한';

  @override
  String get obQuizMethodTitle => '오늘은 쇼핑 목록을 어떻게 작성하시나요?';

  @override
  String get obQuizMethodPaper => '펜과 종이';

  @override
  String get obQuizMethodNotes => '메모 앱';

  @override
  String get obQuizMethodMemory => '머리속에 간직하고 있어요';

  @override
  String get obQuizMethodNone => '나는 목록을 만들지 않는다';

  @override
  String get obSocialTitle => '당신은 좋은 회사에 있어요';

  @override
  String get obSocialSubtitle => '귀하와 같은 쇼핑객은 이미 KipiList를 통해 비용을 절감하고 있습니다.';

  @override
  String get obSocialQuote1 => '나는 더 이상 아무것도 잊지 않습니다. AI는 몇 초 안에 내 목록을 작성합니다.';

  @override
  String get obSocialQuote2 => '우리는 첫 달에 식료품 비용을 눈에 띄게 삭감했습니다.';

  @override
  String get obSocialQuote3 => '파트너와 목록을 공유함으로써 쇼핑 혼란이 끝났습니다.';

  @override
  String get obLoadingTitle => '나만의 계획을 세우세요...';

  @override
  String get obLoadingStepProfile => '귀하의 가구에 맞게 조정';

  @override
  String get obLoadingStepHabits => '쇼핑 루틴에 맞춰 조정하기';

  @override
  String get obLoadingStepSavings => '저축 전략 최적화';

  @override
  String get obLoadingStepLists => '스마트 목록 준비하기';

  @override
  String get obRevealTitle => '계획이 준비되었습니다!';

  @override
  String get obRevealSubtitle => 'KipiList가 작동하는 방식은 다음과 같습니다.';

  @override
  String get obRevealSavingsCaption => 'KipiList를 통한 예상 절감액';

  @override
  String obRevealMonth(int n) {
    return '월 $n';
  }

  @override
  String get obRevealFeatureAi => 'AI가 목록을 작성하고 정리합니다.';

  @override
  String get obRevealFeatureBudget => '목표 대비 지출 추적';

  @override
  String get obRevealFeaturePantry => '식료품 저장실 추적으로 음식물 쓰레기가 줄어듭니다.';

  @override
  String get obRevealFeatureShare => '가족과 실시간 공유';

  @override
  String get obPaywallTitle => '계획을 잠금 해제하세요';

  @override
  String get obPaywallRetry => '다시 시도하세요';

  @override
  String get obLoginTitle => '계획을 저장하세요';

  @override
  String get obLoginSubtitle => '목록이 여러 기기에서 동기화되도록 로그인하세요.';

  @override
  String get obLoginGoogle => 'Google로 계속하기';

  @override
  String get obLoginApple => 'Apple과 함께 계속하세요';

  @override
  String get obLoginSkip => '지금은 아님';

  @override
  String get obLoginError => '로그인에 실패했습니다. 다시 시도하거나 지금은 건너뛰세요.';

  @override
  String get searchMessages => '메시지 검색...';

  @override
  String get deletedList => '삭제된 목록';

  @override
  String get openConversation => '대화 열기';

  @override
  String get userRole => '너';

  @override
  String get assistantRole => '어시스턴트';

  @override
  String get agentActionsRunning => '작업 실행 중...';

  @override
  String get agentActionsFailed => '작업을 실행하지 못했습니다.';

  @override
  String get agentActionsPremium => '작업에는 프리미엄이 필요합니다';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => '변경사항 취소';

  @override
  String premiumStepDescription(String description) {
    return '$description (프리미엄)';
  }

  @override
  String get itemAddedToList => '목록에 항목이 추가되었습니다.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return '이전 상태: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt => '자동 작업을 잠금 해제하려면 프리미엄을 구독하세요.';

  @override
  String get viewPlans => '계획 보기';

  @override
  String get artifactSynced => '동기화됨';

  @override
  String get artifactBudgetLabel => '예산:';

  @override
  String get totalEstimatedLabel => '예상 총액';

  @override
  String get quickActionPantry => '식료품 저장실 보기';

  @override
  String get quickActionAi => '키피와 채팅';

  @override
  String aiApiError(int statusCode) {
    return 'AI 서비스에서 오류($statusCode)를 반환했습니다.';
  }

  @override
  String get aiTimeoutError => '요청이 너무 오래 걸렸습니다. 다시 시도해 주세요.';

  @override
  String get aiConnectionError => 'AI 서비스에 연결할 수 없습니다. 연결을 확인하세요.';

  @override
  String get aiEmptyResponseError => 'AI 서비스가 빈 응답을 반환했습니다.';

  @override
  String get aiInvalidResponseError => 'AI 서비스가 잘못된 응답을 반환했습니다.';

  @override
  String get categoryFruits => '과일';

  @override
  String get categoryCleaning => '청소';

  @override
  String get categoryBeverages => '음료수';

  @override
  String get categoryBakery => '빵집';

  @override
  String get categoryMeat => '고기';

  @override
  String get categoryDairy => '낙농';

  @override
  String get categoryVegetables => '채소';

  @override
  String get categoryGrains => '곡물 및 시리얼';

  @override
  String get categoryHygiene => '개인 관리';

  @override
  String get categoryFrozen => '냉동식품';

  @override
  String get categoryCanned => '통조림';

  @override
  String get categorySeasonings => '조미료';

  @override
  String get categorySweets => '과자와 디저트';

  @override
  String get categoryAlcohol => '주류';

  @override
  String get categoryFish => '물고기';

  @override
  String get categoryColdCuts => '냉햄';

  @override
  String get categoryUtilities => '생활용품';

  @override
  String get categoryPet => '애완동물 용품';

  @override
  String get categoryBaby => '아기';

  @override
  String get categoryOthers => '다른';

  @override
  String chatEmptyGreeting(String name) {
    return '안녕하세요 $name, 저는 키피입니다 👋';
  }

  @override
  String get chatEmptyGreetingNoName => '안녕하세요 키피입니다👋';

  @override
  String get chatEmptyPitch =>
      '목록을 작성하고, 레시피를 제안하고, 저장할 위치를 찾습니다. 어디서부터 시작할까요?';

  @override
  String get aiWelcomeSuggestBarbecue => '바비큐를 계획해보세요';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi님, 저는 바비큐를 주최할 예정입니다. 쇼핑 목록 작성을 도와주세요';

  @override
  String get aiRateLimitError => '짧은 시간에 메시지가 너무 많습니다. 몇 초간 기다렸다가 다시 시도해 보세요.';

  @override
  String get chatHistoryErrorTitle => '이 대화를 로드할 수 없습니다.';

  @override
  String get chatHistoryErrorBody => '문제가 발생했습니다. 다시 시도하려면 재시도를 탭하세요.';

  @override
  String get chatHistoryOfflineTitle => '오프라인 상태입니다';

  @override
  String get chatHistoryOfflineBody => '인터넷 연결을 확인하고 다시 시도하세요.';

  @override
  String get aiGeneratingResponse => '응답 생성 중…';
}
