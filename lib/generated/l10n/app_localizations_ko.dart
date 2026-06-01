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
  String get settingsAppBar => '설정';

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
  String chatError(String error) {
    return '채팅 로딩 오류: $error';
  }

  @override
  String get listHelp => '목록에 대해 무엇을 도와드릴까요?';

  @override
  String get generalHelp => '오늘 쇼핑에 대해 무엇을 도와드릴까요?';

  @override
  String get chatSubtitle => '항목 제안, 레시피 또는 절약 팁을 물어보세요.';

  @override
  String get aiError => '죄송합니다. 요청 처리 중 오류가 발생했습니다. 연결을 확인하거나 나중에 다시 시도해 주세요.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '로그인하여 프리미엄\n기능을 잠금 해제하세요';

  @override
  String get signInGoogle => 'Google로 로그인';

  @override
  String get signInApple => 'Apple로 로그인';

  @override
  String get continueAsGuest => '게스트로 계속';

  @override
  String get onboardingWelcomeTitle => 'Lista Plus에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeDesc => '쇼핑을 정리하고 비용을 절약하는 가장 현명한 방법입니다.';

  @override
  String get onboardingSetupTitle => '경험을 개인화하세요';

  @override
  String get onboardingSetupDesc => 'Lista Plus의 모양과 작동 방식을 선택하세요.';

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
  String get paywallTitle => 'Lista Plus 프리미엄';

  @override
  String get premiumUpgrade => '업그레이드하여 잠금 해제';

  @override
  String get itemRemoved => '항목이 제거됨';

  @override
  String get undo => '실행 취소';

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
      '자연스럽게 말하여 목록을 관리하세요!\n\n예시:\n• \'빵, 치즈, 햄 추가\'\n• \'세탁 세제 제거\'\n• \'테마를 파란색으로 변경\'\n\n이것은 Lista Plus 프리미엄의 독점 기능입니다.';

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
      '귀하의 피드백을 접수했으며 모든 사용자를 위해 Lista Plus를 개선하는 데 도움이 됩니다.';

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
  String get shareAppDescription => 'Lista Plus를 사용하도록 친구를 초대하세요';

  @override
  String shareReferralText(Object url) {
    return '저는 Lista Plus를 사용하여 쇼핑을 정리하고 있습니다! 내 링크를 통해 다운로드하면 우리 둘 다 7일간 프리미엄을 무료로 받을 수 있습니다: $url';
  }

  @override
  String get shareReferralSubject => 'Lista Plus Premium을 7일 동안 이용해보세요!';
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
  String get settingsAppBar => '설정';

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
  String chatError(String error) {
    return '채팅 로딩 오류: $error';
  }

  @override
  String get listHelp => '목록에 대해 무엇을 도와드릴까요?';

  @override
  String get generalHelp => '오늘 쇼핑에 대해 무엇을 도와드릴까요?';

  @override
  String get chatSubtitle => '항목 제안, 레시피 또는 절약 팁을 물어보세요.';

  @override
  String get aiError => '죄송합니다. 요청 처리 중 오류가 발생했습니다. 연결을 확인하거나 나중에 다시 시도해 주세요.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '로그인하여 프리미엄\n기능을 잠금 해제하세요';

  @override
  String get signInGoogle => 'Google로 로그인';

  @override
  String get signInApple => 'Apple로 로그인';

  @override
  String get continueAsGuest => '게스트로 계속';

  @override
  String get onboardingWelcomeTitle => 'Lista Plus에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeDesc => '쇼핑을 정리하고 비용을 절약하는 가장 현명한 방법입니다.';

  @override
  String get onboardingSetupTitle => '경험을 개인화하세요';

  @override
  String get onboardingSetupDesc => 'Lista Plus의 모양과 작동 방식을 선택하세요.';

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
  String get paywallTitle => 'Lista Plus 프리미엄';

  @override
  String get premiumUpgrade => '업그레이드하여 잠금 해제';

  @override
  String get itemRemoved => '항목이 제거됨';

  @override
  String get undo => '실행 취소';

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
      '자연스럽게 말하여 목록을 관리하세요!\n\n예시:\n• \'빵, 치즈, 햄 추가\'\n• \'세탁 세제 제거\'\n• \'테마를 파란색으로 변경\'\n\n이것은 Lista Plus 프리미엄의 독점 기능입니다.';

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
      '피드백이 접수되었으며 모두를 위한 Lista Plus 개선에 도움이 됩니다.';

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
  String get shareAppDescription => 'Lista Plus를 사용하도록 친구를 초대하세요';

  @override
  String shareReferralText(Object url) {
    return '저는 Lista Plus를 사용하여 쇼핑을 정리하고 있습니다! 내 링크를 통해 다운로드하면 우리 둘 다 7일간 프리미엄을 무료로 받을 수 있습니다: $url';
  }

  @override
  String get shareReferralSubject => 'Lista Plus Premium을 7일 동안 이용해보세요!';
}
