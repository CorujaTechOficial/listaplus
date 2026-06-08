// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Danh sách mua sắm';

  @override
  String get lists => 'Danh sách';

  @override
  String get pantry => 'Phòng đựng thức ăn';

  @override
  String get navChat => 'Trò chuyện';

  @override
  String get navRecipes => 'Công thức';

  @override
  String get navLists => 'Danh sách';

  @override
  String get navMealPlanner => 'Thực đơn';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get create => 'Tạo';

  @override
  String get add => 'Thêm';

  @override
  String get remove => 'Xóa';

  @override
  String get delete => 'Xóa';

  @override
  String get edit => 'Sửa';

  @override
  String get copy => 'Sao chép';

  @override
  String get next => 'Kế tiếp';

  @override
  String get retry => 'Thử lại';

  @override
  String get regenerate => 'Tạo lại';

  @override
  String get copiedToClipboard => 'Đã sao chép vào clipboard';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get close => 'Đóng';

  @override
  String get import => 'Nhập';

  @override
  String get rename => 'Đổi tên';

  @override
  String get upgrade => 'Nâng cấp';

  @override
  String get clear => 'Xóa';

  @override
  String error(String message) {
    return 'Lỗi: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Lỗi: $message';
  }

  @override
  String get purchaseError => 'Lỗi khi xử lý giao dịch. Vui lòng thử lại.';

  @override
  String get restoreError => 'Lỗi khi khôi phục giao dịch. Vui lòng thử lại.';

  @override
  String get loading => 'Đang tải...';

  @override
  String get fieldRequired => 'Trường bắt buộc';

  @override
  String get addedFeedback => 'Đã thêm!';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get exitShoppingMode => 'Thoát chế độ mua sắm';

  @override
  String get exit => 'Ra';

  @override
  String selectedItems(int count) {
    return 'Đã chọn $count';
  }

  @override
  String get estimated => 'Ước tính';

  @override
  String get alreadyPurchased => 'Đã mua';

  @override
  String get clearList => 'Xóa danh sách';

  @override
  String get clearPurchased => 'Xóa đã mua';

  @override
  String get share => 'Chia sẻ';

  @override
  String get shareViaCode => 'Chia sẻ qua mã';

  @override
  String get importViaCode => 'Nhập qua mã';

  @override
  String get listAssistant => 'Trợ lý danh sách';

  @override
  String get globalAssistant => 'Trợ lý chung';

  @override
  String get becomePremium => 'Trở thành Premium';

  @override
  String get manageSubscription => 'Quản lý đăng ký';

  @override
  String get completePurchase => 'Hoàn tất mua hàng';

  @override
  String get confirmClearList => 'Xóa tất cả mục?';

  @override
  String get shareListTitle => 'Chia sẻ danh sách';

  @override
  String get shareThisCode => 'Chia sẻ mã này:';

  @override
  String get validForLimitedTime => 'Có hiệu lực trong thời gian giới hạn';

  @override
  String get importListTitle => 'Nhập danh sách';

  @override
  String get enterCodeHint => 'Nhập mã';

  @override
  String get confirmArchiveTitle => 'Hoàn tất mua hàng';

  @override
  String get confirmArchiveContent =>
      'Hoàn tất giao dịch này và lưu trữ danh sách?';

  @override
  String get complete => 'Hoàn tất';

  @override
  String get listArchived => 'Đã lưu trữ danh sách thành công!';

  @override
  String listAdded(String listName) {
    return 'Đã thêm $listName!';
  }

  @override
  String get buy => 'Mua';

  @override
  String get unmark => 'Bỏ đánh dấu';

  @override
  String confirmDeleteItems(int count) {
    return 'Xóa $count mục?';
  }

  @override
  String get confirmDeleteTitle => 'Xác nhận';

  @override
  String confirmContent(int count) {
    return 'Xóa $count mục?';
  }

  @override
  String get archiveList => 'Lưu trữ danh sách';

  @override
  String get pantryAppBar => 'Phòng đựng thức ăn';

  @override
  String get generateShoppingList => 'Tạo danh sách mua sắm';

  @override
  String get pantryEmpty => 'Phòng đựng thức ăn trống';

  @override
  String get pantryEmptySubtitle => 'Thêm sản phẩm bạn muốn có ở nhà';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'Cần mua $deficit mục';
  }

  @override
  String get noItemsToBuy => 'Không có mục nào cần mua';

  @override
  String get newPantryList => 'Mua sắm từ phòng đựng thức ăn';

  @override
  String get newListTitle => 'Danh sách mua sắm mới';

  @override
  String itemsWillBeAdded(int count) {
    return 'Sẽ thêm $count mục';
  }

  @override
  String get listNameLabel => 'Tên danh sách';

  @override
  String listCreated(String name, int count) {
    return 'Danh sách \"$name\" đã được tạo với $count mục';
  }

  @override
  String get noTracking => 'Không theo dõi';

  @override
  String get markAsPurchased => 'Đánh dấu đã mua';

  @override
  String editPantryItem(String name) {
    return 'Sửa $name';
  }

  @override
  String get idealQuantity => 'Số lượng lý tưởng';

  @override
  String get currentQuantity => 'Số lượng hiện tại';

  @override
  String get consumed => 'Đã tiêu thụ';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Đã bổ sung $name lên $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Xóa \"$name\" khỏi phòng đựng thức ăn?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Sửa $name';
  }

  @override
  String get settingsAppBar => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languagePortuguese => 'Người Bồ Đào Nha (Brasil)';

  @override
  String get languageEnglish => 'Tiếng Anh';

  @override
  String get languageSystem => 'Mặc định hệ thống';

  @override
  String get chooseLanguage => 'Chọn ngôn ngữ';

  @override
  String get searchLanguage => 'Tìm kiếm ngôn ngữ...';

  @override
  String get currency => 'Tiền tệ';

  @override
  String get chooseCurrency => 'Chọn tiền tệ';

  @override
  String get searchCurrency => 'Tìm kiếm tiền tệ...';

  @override
  String get appearance => 'Giao diện';

  @override
  String get light => 'Sáng';

  @override
  String get system => 'Hệ thống';

  @override
  String get dark => 'Tối';

  @override
  String get themeColor => 'Màu chủ đề';

  @override
  String get dynamicColors => 'Màu sắc năng động';

  @override
  String get dynamicColorsSubtitle =>
      'Sử dụng màu sắc dựa trên hình nền của bạn';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tắt màu động để màu chủ đề có hiệu lực';

  @override
  String get finance => 'Tài chính';

  @override
  String get monthlyBudgetNav => 'Ngân sách hàng tháng';

  @override
  String get budgetSubtitle => 'Theo dõi chi tiêu hàng tháng của bạn';

  @override
  String get data => 'Dữ liệu';

  @override
  String get backupNav => 'Sao lưu';

  @override
  String get backupSubtitle => 'Xuất hoặc nhập dữ liệu của bạn';

  @override
  String get about => 'Giới thiệu';

  @override
  String get version => 'Phiên bản';

  @override
  String get privacy => 'Quyền riêng tư';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get backupTitle => 'Sao lưu';

  @override
  String get backupPremiumDescription =>
      'Sao lưu và xuất dữ liệu là tính năng cao cấp';

  @override
  String get exportData => 'Xuất dữ liệu';

  @override
  String get exportDataSubtitle => 'Lưu tất cả danh sách dưới dạng JSON';

  @override
  String get importData => 'Nhập dữ liệu';

  @override
  String get importDataSubtitle => 'Khôi phục danh sách từ JSON';

  @override
  String get importJsonTitle => 'Nhập JSON';

  @override
  String get importJsonHint => 'Dán JSON sao lưu vào đây...';

  @override
  String get backupExported => 'Đã xuất bản sao lưu!';

  @override
  String get budgetAppBar => 'Ngân sách hàng tháng';

  @override
  String get budgetPremiumLocked =>
      'Ngân sách hàng tháng tổng thể là tính năng cao cấp';

  @override
  String get budgetUpgradePrompt => 'Nâng cấp để mở khóa';

  @override
  String get noBudgetDefined => 'Chưa đặt ngân sách';

  @override
  String totalEstimated(String amount) {
    return 'Tổng ước tính: $amount';
  }

  @override
  String get setBudgetButton => 'Đặt ngân sách';

  @override
  String get budgetLists => 'Danh sách';

  @override
  String get budgetValueLabel => 'Số tiền';

  @override
  String get setBudgetTitle => 'Ngân sách hàng tháng';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterPending => 'Đang chờ';

  @override
  String get filterPurchased => 'Đã mua';

  @override
  String get sortName => 'Tên';

  @override
  String get sortCategory => 'Danh mục';

  @override
  String get sortDate => 'Ngày';

  @override
  String get sortManual => 'Thủ công';

  @override
  String get addItem => 'Thêm mục';

  @override
  String get itemName => 'Tên mục';

  @override
  String get quantityShort => 'SL';

  @override
  String get unit => 'Đơn vị';

  @override
  String get category => 'Danh mục';

  @override
  String get estimatedPrice => 'Giá ước tính';

  @override
  String get addItemPrice => 'Giá ước tính';

  @override
  String get editItem => 'Sửa mục';

  @override
  String get quantityFull => 'Số lượng';

  @override
  String get editItemPrice => 'Giá ước tính';

  @override
  String get addToPantry => 'Thêm vào phòng đựng thức ăn';

  @override
  String addToPantryPrompt(String name) {
    return 'Thêm \"$name\" vào phòng đựng thức ăn?';
  }

  @override
  String get yes => 'Có';

  @override
  String get productName => 'Tên sản phẩm';

  @override
  String get idealQty => 'SL lý tưởng';

  @override
  String get currentQty => 'SL hiện tại';

  @override
  String get trackStock => 'Theo dõi tồn kho';

  @override
  String get trackStockActive => 'Xuất hiện trong gợi ý mua sắm';

  @override
  String get trackStockInactive => 'Không tạo gợi ý mua sắm';

  @override
  String get createListDialog => 'Tạo danh sách';

  @override
  String get renameListDialog => 'Đổi tên danh sách';

  @override
  String get listHistory => 'Lịch sử danh sách';

  @override
  String get myLists => 'Danh sách của tôi';

  @override
  String get viewActive => 'Xem đang hoạt động';

  @override
  String get viewHistory => 'Xem lịch sử';

  @override
  String get noArchivedLists => 'Không có danh sách đã lưu trữ';

  @override
  String get noActiveLists => 'Không có danh sách đang hoạt động';

  @override
  String completedOn(String date) {
    return 'Hoàn thành vào $date';
  }

  @override
  String get sharedLabel => 'Đã chia sẻ';

  @override
  String get restore => 'Khôi phục';

  @override
  String get removeSharedTooltip => 'Xóa';

  @override
  String get deleteListTitle => 'Xóa danh sách';

  @override
  String deleteListContent(String name) {
    return 'Bạn có chắc chắn muốn xóa \"$name\"? Tất cả mục sẽ bị xóa.';
  }

  @override
  String get removeSharedListTitle => 'Xóa danh sách đã chia sẻ';

  @override
  String removeSharedListContent(String name) {
    return 'Xóa \"$name\" khỏi danh sách của bạn? Danh sách gốc sẽ không bị ảnh hưởng.';
  }

  @override
  String get createNewList => 'Tạo danh sách mới';

  @override
  String get aiAssistant => 'Trợ lý AI';

  @override
  String get aiAssistantDescription =>
      'Nhận đề xuất thông minh, công thức nấu ăn và mẹo cá nhân hóa với trợ lý AI của chúng tôi.';

  @override
  String get generalAssistant => 'Trợ lý chung';

  @override
  String get newChat => 'Trò chuyện mới';

  @override
  String get noHistory => 'Không có lịch sử trò chuyện';

  @override
  String get deleteSession => 'Xóa cuộc trò chuyện';

  @override
  String get deleteSessionConfirm =>
      'Bạn có chắc chắn muốn xóa cuộc trò chuyện này không? Các tin nhắn sẽ bị mất vĩnh viễn.';

  @override
  String get clearHistory => 'Xóa lịch sử';

  @override
  String get clearHistoryConfirm => 'Xóa tất cả tin nhắn trong phiên này?';

  @override
  String get chatHint => 'Nhập tin nhắn của bạn...';

  @override
  String get chatHintBlocked => 'Mở khóa AI để trò chuyện';

  @override
  String chatError(String error) {
    return 'Lỗi khi tải trò chuyện: $error';
  }

  @override
  String get listHelp => 'Tôi có thể giúp gì với danh sách của bạn?';

  @override
  String get generalHelp =>
      'Hôm nay tôi có thể giúp gì cho việc mua sắm của bạn?';

  @override
  String get chatSubtitle =>
      'Yêu cầu đề xuất mục, công thức nấu ăn hoặc mẹo tiết kiệm.';

  @override
  String get aiError =>
      'Xin lỗi, đã xảy ra lỗi khi xử lý yêu cầu của bạn. Kiểm tra kết nối hoặc thử lại sau.';

  @override
  String get aiLimitAlmostReached => 'Gần hết tin nhắn AI';

  @override
  String get unlockAi => 'Mở khóa AI không giới hạn';

  @override
  String get aiTeaserFallback =>
      'Đăng ký Premium để nhận được phản hồi đầy đủ và nhận các mẹo AI không giới hạn cho hoạt động mua sắm của bạn...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'KipiDanh sách';

  @override
  String get loginPrompt => 'Đăng nhập để mở khóa\ntính năng cao cấp';

  @override
  String get signInGoogle => 'Đăng nhập bằng Google';

  @override
  String get signInApple => 'Đăng nhập bằng Apple';

  @override
  String get continueAsGuest => 'Tiếp tục với tư cách khách';

  @override
  String get onboardingWelcomeTitle => 'Chào mừng đến với KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cách thông minh nhất để tổ chức mua sắm của bạn và tiết kiệm tiền.';

  @override
  String get onboardingSetupTitle => 'Cá nhân hóa trải nghiệm của bạn';

  @override
  String get onboardingSetupDesc =>
      'Chọn cách bạn muốn KipiList trông và hoạt động cho bạn.';

  @override
  String get onboardingLoginTitle => 'Lưu mọi thứ vào đám mây';

  @override
  String get onboardingLoginDesc =>
      'Dữ liệu của bạn được đồng bộ hóa trên tất cả các thiết bị của bạn';

  @override
  String get onboardingShareTitle => 'Chia sẻ với những người bạn yêu thương';

  @override
  String get onboardingShareDesc =>
      'Đồng bộ danh sách với gia đình và bạn bè trong thời gian thực';

  @override
  String get onboardingPremiumTitle => 'Mở khóa tất cả các tính năng';

  @override
  String get onboardingPremiumSubtitle =>
      'Tận dụng tối đa danh sách mua sắm của bạn';

  @override
  String get onboardingAnnualBadge => 'Giá trị tốt nhất';

  @override
  String get onboardingMonthlyLabel => 'hàng tháng';

  @override
  String get onboardingAnnualLabel => 'Hàng năm';

  @override
  String get onboardingViewAllPlans => 'Xem tất cả các kế hoạch';

  @override
  String get onboardingSubscribeCta => 'Đặt mua';

  @override
  String get onboardingCancelAnytime =>
      'Hủy bỏ bất cứ lúc nào. Không có cam kết.';

  @override
  String get onboardingContinueAsGuest => 'Tiếp tục làm khách';

  @override
  String get onboardingRestore => 'Khôi phục';

  @override
  String get onboardingRestoreDesc =>
      'Đã có đăng ký? Nhấn vào đây để khôi phục nó.';

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
  String get onboardingExit => 'Ra';

  @override
  String get onboardingPersonalizationTitle => 'Hãy làm quen với bạn';

  @override
  String get onboardingPersonalizationDesc =>
      'Chúng tôi sẽ sử dụng điều này để cá nhân hóa các đề xuất của bạn và giúp việc mua sắm trở nên thông minh hơn.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Món ăn yêu thích của bạn là gì?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ví dụ. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Tiếp tục';

  @override
  String get onboardingPersonalizationSkip => 'Bỏ qua bây giờ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Hãy cho chúng tôi biết món ăn yêu thích của bạn để tiếp tục';

  @override
  String get settingsDefaultScreen => 'Màn hình chính mặc định';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Chọn giữa danh sách mua sắm hoặc trò chuyện AI';

  @override
  String get settingsScreenList => 'Danh sách mua sắm';

  @override
  String get settingsScreenChat => 'Trò chuyện AI';

  @override
  String loginError(String error) {
    return 'Lỗi đăng nhập: $error';
  }

  @override
  String get paywallTitle => 'KipiList cao cấp';

  @override
  String get paywallLoadingError => 'Lỗi tải phiếu mua hàng. Hãy thử lại.';

  @override
  String get paywallPurchaseError =>
      'Không thể hoàn tất việc mua hàng. Hãy thử lại.';

  @override
  String get paywallRestoreError =>
      'Không tìm thấy đăng ký hoạt động nào để khôi phục.';

  @override
  String paywallTrialDays(Object days) {
    return '$days NGÀY MIỄN PHÍ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TUẦN MIỄN PHÍ',
      one: '$count TUẦN MIỄN PHÍ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count THÁNG MIỄN PHÍ',
      one: '$count THÁNG MIỄN PHÍ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Dùng thử KipiList Pro miễn phí trong 7 ngày';

  @override
  String get paywallTrialSubtitle =>
      'Hủy bỏ bất cứ lúc nào. Hôm nay không tính phí.';

  @override
  String get paywallTrialCta => 'Bắt đầu dùng thử miễn phí';

  @override
  String get recipeAddToList => 'Thêm vào danh sách mua sắm';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count thành phần được thêm vào $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Mọi thứ bạn cần:';

  @override
  String get paywallFeatureUnlimitedLists => 'Danh sách không giới hạn';

  @override
  String get paywallFeatureSmartAI => 'AI thông minh';

  @override
  String get paywallFeatureExpenseControl => 'Kiểm soát chi phí';

  @override
  String get paywallFeatureSharing => 'Chia sẻ';

  @override
  String get paywallBeforeAfterTitle => 'AI trước và sau:';

  @override
  String get paywallLabelCommon => 'Chung';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'cơm';

  @override
  String get paywallBeforeItem2 => 'xà phòng';

  @override
  String get paywallBeforeItem3 => 'thịt';

  @override
  String get paywallBeforeItem4 => 'bánh mỳ';

  @override
  String get paywallAfterItem1 => 'Ngũ cốc';

  @override
  String get paywallAfterItem2 => 'Vệ sinh';

  @override
  String get paywallAfterItem3 => 'Thịt';

  @override
  String get paywallAfterItem4 => 'tiệm bánh';

  @override
  String get paywallTestimonialsTitle => 'Người dùng của chúng tôi nói gì:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI tổ chức việc mua sắm của tôi trong vài giây. Tôi tiết kiệm được 20 phút cho mỗi chuyến đi chợ.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Tôi không bao giờ quên một mục danh sách nữa. Trò chuyện AI thật giật gân!';

  @override
  String get paywallSocialProof => '+2.400 gia đình sử dụng';

  @override
  String get paywallCtaUnlock => 'Mở khóa CHUYÊN NGHIỆP';

  @override
  String get paywallBestValue => 'GIÁ TRỊ TỐT NHẤT';

  @override
  String get paywallMostPopular => 'PHỔ BIẾN NHẤT';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Thanh toán an toàn';

  @override
  String get paywallSelectPlan => 'Chọn kế hoạch của bạn:';

  @override
  String paywallSavePercent(Object percent) {
    return 'TIẾT KIỆM $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Chỉ $price/tháng';
  }

  @override
  String get paywallPackageAnnual => 'Gói hàng năm';

  @override
  String get paywallPackageMonthly => 'Gói hàng tháng';

  @override
  String get paywallPackageLifetime => 'Truy cập trọn đời';

  @override
  String get paywallCancelAnytime => 'Hủy bỏ bất cứ lúc nào. Không có cam kết.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Chính sách bảo mật';

  @override
  String get paywallTerms => 'Điều khoản sử dụng';

  @override
  String get paywallRestore => 'Khôi phục';

  @override
  String get paywallHeroHeadline => 'Kipi AI luôn bên cạnh bạn';

  @override
  String get paywallHeroSubtitle =>
      'Thêm mục, sắp xếp danh sách và tiết kiệm thời gian với AI trong túi của bạn';

  @override
  String get paywallBenefit1Desc => 'Thêm, sắp xếp và đề xuất các mục 24/7';

  @override
  String get paywallBenefit2Desc => 'Không giới hạn 3 danh sách';

  @override
  String get paywallBenefit3Desc => 'Theo dõi chi phí và danh sách gia đình';

  @override
  String get paywallPackageMonthlyDesc => 'Hoàn toàn linh hoạt';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Bắt đầu miễn phí — $days ngày';
  }

  @override
  String get premiumUpgrade => 'Nâng cấp để mở khóa';

  @override
  String get itemRemoved => 'Đã xóa mục';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get emptyListTitle => 'Danh sách của bạn trống';

  @override
  String get emptyListSubtitle => 'Thêm mục để bắt đầu';

  @override
  String get noListFoundTitle => 'Không tìm thấy danh sách';

  @override
  String get noListFoundSubtitle => 'Tạo danh sách đầu tiên của bạn để bắt đầu';

  @override
  String get createFirstList => 'Tạo danh sách đầu tiên';

  @override
  String get listBudgetTitle => 'Ngân sách danh sách';

  @override
  String get budgetAmountLabel => 'Số tiền ngân sách';

  @override
  String get removeBudget => 'Xóa';

  @override
  String get prefUnlimitedLists => 'Danh sách không giới hạn';

  @override
  String get prefSharing => 'Chia sẻ danh sách';

  @override
  String get prefFullHistory => 'Lịch sử đầy đủ';

  @override
  String get prefExportData => 'Xuất dữ liệu';

  @override
  String get prefCustomThemes => 'Chủ đề tùy chỉnh';

  @override
  String get prefMonthlyBudget => 'Ngân sách hàng tháng tổng thể';

  @override
  String get prefAIAssistant => 'Trợ lý AI cá nhân';

  @override
  String get prefUnlimitedPantry => 'Phòng đựng thức ăn không giới hạn';

  @override
  String get prefInteractiveArtifacts => 'Tạo phẩm AI tương tác';

  @override
  String get themeGreen => 'Xanh lá';

  @override
  String get themeBlue => 'Xanh dương';

  @override
  String get themePurple => 'Tím';

  @override
  String get themeRed => 'Đỏ';

  @override
  String get themeOrange => 'Cam';

  @override
  String get themePink => 'Hồng';

  @override
  String get themeIndigo => 'Chàm';

  @override
  String get themeAmber => 'Hổ phách';

  @override
  String get themeTeal => 'Xanh mòng két';

  @override
  String get themeBrown => 'Nâu';

  @override
  String get catFruits => 'Trái cây';

  @override
  String get catCleaning => 'Vệ sinh';

  @override
  String get catBeverages => 'Đồ uống';

  @override
  String get catBakery => 'Bánh mì';

  @override
  String get catOthers => 'Khác';

  @override
  String get unitPack => 'gói';

  @override
  String get shareSubject => 'Danh sách mua sắm';

  @override
  String get monthlyBudgetTitle => 'Ngân sách hàng tháng';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Xóa danh sách';

  @override
  String get pantryItemRemoved => 'Đã xóa mục';

  @override
  String deficitItems(int deficit) {
    return 'Cần mua $deficit mục';
  }

  @override
  String get cartTotal => 'Tổng giỏ hàng';

  @override
  String get restockLabel => 'Bổ sung';

  @override
  String get advancedFeatures => 'Tính năng nâng cao';

  @override
  String get selectAll => 'Chọn tất cả';

  @override
  String get deselectAll => 'Bỏ chọn tất cả';

  @override
  String get monthlyBudgetAppBar => 'Ngân sách hàng tháng';

  @override
  String get budgetEditTitle => 'Ngân sách hàng tháng';

  @override
  String get budgetDashboardTitle => 'Bảng điều khiển';

  @override
  String get selectListForDashboard =>
      'Chọn một danh sách để xem bảng điều khiển.';

  @override
  String get spendingAnalysis => 'Phân tích chi tiêu';

  @override
  String get noItemsToAnalyze =>
      'Không có mục nào trong danh sách để phân tích.';

  @override
  String get markItemsToSeeAnalysis => 'Đánh dấu mục đã mua để xem phân tích.';

  @override
  String get totalSpending => 'Tổng chi tiêu';

  @override
  String get spendingByCategory => 'Chi tiêu theo danh mục';

  @override
  String get achievements => 'Thành tích';

  @override
  String get exportPdfExcel => 'Xuất PDF/Excel';

  @override
  String get exportPdf => 'Xuất dưới dạng PDF';

  @override
  String get exportExcel => 'Xuất dưới dạng Excel';

  @override
  String get organizingAi => 'ĐANG SẮP XẾP VỚI AI...';

  @override
  String get yesLabel => 'Có';

  @override
  String get noLabel => 'Không';

  @override
  String get shareListText => 'Danh sách mua sắm của tôi';

  @override
  String get emptyListAddItems =>
      'Danh sách của bạn trống! Vui lòng thêm mục trước. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Danh sách đã được sắp xếp kỳ diệu theo danh mục! ✨';

  @override
  String get shoppingMode => 'Chế độ mua sắm';

  @override
  String get smartOrganization => 'Sắp xếp thông minh';

  @override
  String get savings => 'Tiết kiệm';

  @override
  String get shoppingModeHeader => 'CHẾ ĐỘ MUA SẮM';

  @override
  String get shareAsText => 'Gửi mục dưới dạng văn bản đã định dạng';

  @override
  String get shareRealtime => 'Đồng bộ thời gian thực với người khác';

  @override
  String get quickRecipe => 'Công thức nhanh';

  @override
  String get quickRecipePrompt =>
      'Đề xuất công thức nấu ăn với các mục từ danh sách của tôi.';

  @override
  String get economyTips => 'Mẹo tiết kiệm';

  @override
  String get economyTipsPrompt =>
      'Làm thế nào tôi có thể tiết kiệm tiền cho lần mua này?';

  @override
  String get organizeAisles => 'Sắp xếp theo lối đi';

  @override
  String get organizeAislesPrompt => 'Sắp xếp theo lối đi trong siêu thị.';

  @override
  String get recipeSuggestion => 'Gợi ý công thức';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Còn $remaining tín dụng';
  }

  @override
  String get addAllToList => 'Thêm tất cả vào danh sách';

  @override
  String get organizeByAisles => 'Sắp xếp theo lối đi';

  @override
  String get voiceTranscriptionTooltip => 'Nhập liệu bằng giọng nói (Miễn phí)';

  @override
  String get aiVoiceCommandTooltip => 'Lệnh thoại AI (Cao cấp)';

  @override
  String get voiceCommandTitle => 'Lệnh thoại AI';

  @override
  String get voiceCommandContent =>
      'Nói tự nhiên để quản lý danh sách của bạn!\n\nVí dụ:\n• \'Thêm bánh mì, phô mai và giăm bông\'\n• \'Xóa bột giặt\'\n• \'Đổi chủ đề thành xanh dương\'\n\nĐây là tính năng độc quyền của KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Xem gói';

  @override
  String get itemsAddedSuccess => 'Đã thêm mục vào danh sách thành công!';

  @override
  String get viewList => 'Xem danh sách';

  @override
  String get feedbackTitle => 'Gửi phản hồi';

  @override
  String get feedbackPrompt => 'Bạn muốn chia sẻ điều gì?';

  @override
  String get feedbackTypeBug => 'Báo lỗi';

  @override
  String get feedbackTypeBugHint => 'Có điều gì đó không hoạt động';

  @override
  String get feedbackTypeSuggestion => 'Góp ý';

  @override
  String get feedbackTypeSuggestionHint => 'Ý tưởng cải thiện ứng dụng';

  @override
  String get feedbackTypeTranslation => 'Vấn đề bản dịch';

  @override
  String get feedbackTypeTranslationHint =>
      'Bản dịch không chính xác hoặc gượng ép';

  @override
  String get feedbackTypeFeature => 'Yêu cầu tính năng';

  @override
  String get feedbackTypeFeatureHint => 'Tính năng bạn muốn thấy';

  @override
  String get feedbackTypeOther => 'Khác';

  @override
  String get feedbackTypeOtherHint => 'Loại phản hồi khác';

  @override
  String get feedbackHint => 'Mô tả chi tiết phản hồi của bạn...';

  @override
  String get feedbackSend => 'Gửi phản hồi';

  @override
  String get feedbackSending => 'Đang gửi...';

  @override
  String get feedbackThankYou => 'Cảm ơn bạn!';

  @override
  String get feedbackThankYouMessage =>
      'Phản hồi của bạn đã được nhận và giúp chúng tôi cải thiện KipiList cho mọi người.';

  @override
  String get feedbackBack => 'Quay lại';

  @override
  String feedbackError(String error) {
    return 'Lỗi gửi: $error';
  }

  @override
  String get feedbackRetry => 'Thử lại';

  @override
  String get feedbackSettingsTitle => 'Gửi phản hồi';

  @override
  String get feedbackSettingsSubtitle =>
      'Báo lỗi, đề xuất cải tiến hoặc sửa bản dịch';

  @override
  String get aiEnergy => 'Năng lượng AI';

  @override
  String get searchInConversation => 'Tìm kiếm trong cuộc trò chuyện...';

  @override
  String get noMessagesFound => 'Không tìm thấy tin nhắn nào';

  @override
  String get suggestedQuestions => 'Các câu hỏi gợi ý:';

  @override
  String get shoppingAssistant => 'Trợ lý mua sắm';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased trong tổng số $total đã mua';
  }

  @override
  String get estimatedCost => 'Ước lượng';

  @override
  String get viewItems => 'Xem các mục';

  @override
  String get noItemsInList => 'Không có mục nào trong danh sách';

  @override
  String get longHistoryWarning =>
      'Lịch sử lâu dài: trợ lý tập trung vào các tin nhắn mới nhất để có hiệu suất tốt hơn.';

  @override
  String get listening => 'Đang nghe...';

  @override
  String get addDirectToList => 'Thêm trực tiếp vào danh sách';

  @override
  String get unlockFullResponse => 'Mở khóa phản hồi đầy đủ';

  @override
  String get switchList => 'Chuyển đổi danh sách';

  @override
  String get marketMode => 'Chế độ thị trường';

  @override
  String get backToChat => 'Quay lại Trò chuyện';

  @override
  String get finishShopping => 'Kết thúc mua sắm';

  @override
  String get welcomeAiAssistant => 'Chào mừng bạn đến với Trợ lý AI';

  @override
  String get createListToStartAi =>
      'Tạo danh sách mua sắm để bắt đầu sử dụng tính năng trò chuyện thông minh.';

  @override
  String get howCanIHelp => 'Tôi có thể giúp gì?';

  @override
  String get chatSubtitleShort =>
      'Hỏi về giá cả, công thức nấu ăn, cách tổ chức...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total đã mua';
  }

  @override
  String get quickReplies => 'Trả lời nhanh:';

  @override
  String get voiceProFeature =>
      'Lệnh thoại nâng cao là Pro. Đang bật tính năng đọc chính tả cơ bản...';

  @override
  String get viewPro => 'Xem chuyên nghiệp';

  @override
  String get errorLoadingChat => 'Ối! Đã xảy ra lỗi khi tải cuộc trò chuyện.';

  @override
  String get errorLoadingChatSubtitle =>
      'Hãy kiểm tra kết nối của bạn hoặc thử lại sau.';

  @override
  String get errorOscillation =>
      'Điều này có thể xảy ra do dao động mạng hoặc tạm thời không có sẵn. Vui lòng thử lại.';

  @override
  String get activeListening => 'Lắng nghe tích cực';

  @override
  String get whatToDoWithItem => 'Bạn muốn làm gì với mặt hàng này?';

  @override
  String get viewDetails => 'Xem chi tiết';

  @override
  String get openMenu => 'Mở trình đơn';

  @override
  String get viewRecipe => 'Xem công thức';

  @override
  String get recipeCreated => 'Công thức đã được tạo!';

  @override
  String get editRecipe => 'Biên tập';

  @override
  String get deleteRecipe => 'Xóa bỏ';

  @override
  String get deleteRecipeConfirm => 'Xóa công thức này?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Bạn có chắc chắn muốn xóa \"$recipeName\" không? Không thể hoàn tác hành động này.';
  }

  @override
  String get ingredients => 'Thành phần';

  @override
  String get instructions => 'Hướng dẫn';

  @override
  String get prepTime => 'thời gian chuẩn bị';

  @override
  String get recipeSaved => 'Đã lưu công thức!';

  @override
  String get noRecipesSaved => 'Không có công thức nấu ăn nào được lưu';

  @override
  String get noRecipesSavedHint =>
      'Tạo công thức tùy chỉnh đầu tiên của bạn bằng cách nhấn vào nút bên dưới.';

  @override
  String get myRecipes => 'Bí quyết của tôi';

  @override
  String get newRecipe => 'Công thức mới';

  @override
  String get loadingRecipes => 'Đang tải công thức nấu ăn của bạn...';

  @override
  String get errorLoadingRecipes => 'Lỗi tải công thức nấu ăn';

  @override
  String get addIngredient => 'Thêm thành phần';

  @override
  String get saveRecipe => 'Cứu';

  @override
  String get recipeName => 'Tên công thức';

  @override
  String get shortDescription => 'Mô tả ngắn';

  @override
  String get prepTimeMinutes => 'Thời gian chuẩn bị (phút)';

  @override
  String get instructionsHint => 'Nhập một bước trên mỗi dòng...';

  @override
  String get addPhoto => 'Thêm ảnh';

  @override
  String get imageUrlPlaceholder => 'Hoặc dán URL hình ảnh';

  @override
  String get tags => 'Thẻ';

  @override
  String get recipeTags => 'Thẻ công thức';

  @override
  String get suggestedTags => 'được đề xuất';

  @override
  String get searchRecipes => 'Tìm kiếm công thức nấu ăn...';

  @override
  String get filterByTag => 'Lọc theo thẻ';

  @override
  String get allTags => 'Tất cả';

  @override
  String get recipeDeleted => 'Đã xóa công thức';

  @override
  String get saveChanges => 'Lưu thay đổi';

  @override
  String get editRecipeTitle => 'Chỉnh sửa công thức';

  @override
  String get newRecipeTitle => 'Công thức mới';

  @override
  String get requiredField => 'Yêu cầu';

  @override
  String get chooseImageSource => 'Chọn nguồn hình ảnh';

  @override
  String get gallery => 'Phòng trưng bày';

  @override
  String get enterUrl => 'Nhập URL';

  @override
  String get recipeImage => 'Hình ảnh công thức';

  @override
  String get removeImage => 'Xóa hình ảnh';

  @override
  String get mealPlannerTitle => 'Kế hoạch bữa ăn';

  @override
  String get mealPlannerViewMonthly => 'Lượt xem hàng tháng';

  @override
  String get mealPlannerViewWeekly => 'Xem hàng tuần';

  @override
  String get mealPlannerNoMeals => 'Không có kế hoạch bữa ăn';

  @override
  String get mealPlannerNoMealsHint => 'Nhấn vào một ngày để thêm bữa ăn';

  @override
  String get mealPlannerLoading => 'Đang tải kế hoạch bữa ăn...';

  @override
  String get mealPlannerError => 'Lỗi tải kế hoạch bữa ăn';

  @override
  String get mealPlannerAddMeal => 'Thêm bữa ăn';

  @override
  String get mealPlannerEditMeal => 'Chỉnh sửa bữa ăn';

  @override
  String get mealPlannerDeleteMeal => 'Bỏ bữa ăn';

  @override
  String get mealPlannerMealDeleted => 'Đã bỏ bữa ăn';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count khẩu phần',
      one: '$count khẩu phần',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Khẩu phần';

  @override
  String get mealPlannerNoteLabel => 'Lưu ý (tùy chọn)';

  @override
  String get mealPlannerSelectRecipe => 'Chọn một công thức';

  @override
  String get mealPlannerSearchRecipes => 'Tìm kiếm công thức nấu ăn...';

  @override
  String get mealPlannerNoRecipesFound => 'Không tìm thấy công thức nấu ăn nào';

  @override
  String get mealPlannerNoRecipesHint =>
      'Tạo công thức nấu ăn trong tab Công thức nấu ăn trước tiên';

  @override
  String get mealPlannerSave => 'Thêm vào kế hoạch';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count trong số $total bữa ăn được lên kế hoạch';
  }

  @override
  String get mealPlannerGenerateList => 'Tạo danh sách mua sắm';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Thêm tất cả nguyên liệu từ các bữa ăn đã lên kế hoạch trong tuần này vào danh sách mua sắm của bạn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count thành phần đã được thêm vào danh sách của bạn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Không có thành phần để thêm vào. Lên kế hoạch cho một số bữa ăn với công thức nấu ăn trước tiên.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Tạo một danh sách mua sắm đầu tiên.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Bữa sáng';

  @override
  String get mealPlannerMealTypeLunch => 'Bữa trưa';

  @override
  String get mealPlannerMealTypeDinner => 'Bữa tối';

  @override
  String get mealPlannerMealTypeSnack => 'Đồ ăn vặt';

  @override
  String get mealPlannerDateLabel => 'Ngày';

  @override
  String get mealPlannerWeekEmpty => 'Không có kế hoạch gì cho tuần này';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Nhấn vào bất kỳ ngày nào để bắt đầu lên kế hoạch cho bữa ăn của bạn!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes phút';
  }

  @override
  String get inviteToList => 'Mời liệt kê';

  @override
  String get shareApp => 'Chia sẻ ứng dụng';

  @override
  String get shareAppDescription => 'Mời bạn bè sử dụng KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Tôi đang sử dụng KipiList để sắp xếp việc mua sắm của mình! Tải xuống qua liên kết của tôi và cả hai chúng ta đều nhận được 7 ngày dùng Premium miễn phí: $url';
  }

  @override
  String get shareReferralSubject => 'Nhận 7 ngày sử dụng KipiList Premium!';

  @override
  String get gestureHint => 'Giữ để chọn • Vuốt để xóa';

  @override
  String get catalogTitle => 'Danh mục';

  @override
  String get catalogMyFrequents => 'Người thường xuyên của tôi';

  @override
  String get catalogSearchGlobal => 'Tìm kiếm bất kỳ sản phẩm...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Tìm kiếm trong $category...';
  }

  @override
  String get catalogSortPopular => 'Phổ biến nhất';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Quốc tịch';

  @override
  String get catalogRareSection => 'ít phổ biến hơn ở nước bạn';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Thêm $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Không tìm thấy sản phẩm, gõ tên';

  @override
  String get catalogBrowse => 'Duyệt danh mục';

  @override
  String get offlineBanner => 'Bạn đang ngoại tuyến';

  @override
  String get consentTitle => 'Quyền riêng tư & Phân tích';

  @override
  String get consentBody =>
      'KipiList sử dụng Firebase Analytics để cải thiện trải nghiệm của bạn. Dữ liệu của bạn được xử lý theo Chính sách quyền riêng tư của chúng tôi.';

  @override
  String get consentAccept => 'Chấp nhận';

  @override
  String get consentDecline => 'Không, cảm ơn';

  @override
  String get mealPlannerPantryAllAvailable => 'Còn hàng';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục bị thiếu',
      one: '$count mục bị thiếu',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Ngày hết hạn';

  @override
  String get notInformed => 'Không được thông báo';

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
  String get manageCategoriesTitle => 'Quản lý danh mục';

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
  String get sortAZ => 'A–Z';

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
  String get backToToday => 'Trở lại hôm nay';

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
