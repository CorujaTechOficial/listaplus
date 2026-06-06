// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'รายการช้อปปิ้ง';

  @override
  String get lists => 'รายการ';

  @override
  String get pantry => 'ตู้กับข้าว';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get create => 'สร้าง';

  @override
  String get add => 'เพิ่ม';

  @override
  String get remove => 'ลบออก';

  @override
  String get delete => 'ลบ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get copy => 'คัดลอก';

  @override
  String get next => 'ต่อไป';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get regenerate => 'สร้างใหม่';

  @override
  String get copiedToClipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get close => 'ปิด';

  @override
  String get import => 'นำเข้า';

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get upgrade => 'อัปเกรด';

  @override
  String get clear => 'ล้าง';

  @override
  String error(String message) {
    return 'ข้อผิดพลาด: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ข้อผิดพลาด: $message';
  }

  @override
  String get purchaseError =>
      'เกิดข้อผิดพลาดในการดำเนินการซื้อ กรุณาลองอีกครั้ง';

  @override
  String get restoreError =>
      'เกิดข้อผิดพลาดในการกู้คืนการซื้อ กรุณาลองอีกครั้ง';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get fieldRequired => 'จำเป็นต้องกรอก';

  @override
  String get addedFeedback => 'เพิ่มแล้ว!';

  @override
  String selectedItems(int count) {
    return 'เลือก $count รายการ';
  }

  @override
  String get estimated => 'ประมาณการ';

  @override
  String get alreadyPurchased => 'ซื้อแล้ว';

  @override
  String get clearList => 'ล้างรายการ';

  @override
  String get clearPurchased => 'ล้างที่ซื้อแล้ว';

  @override
  String get share => 'แชร์';

  @override
  String get shareViaCode => 'แชร์ผ่านโค้ด';

  @override
  String get importViaCode => 'นำเข้าผ่านโค้ด';

  @override
  String get listAssistant => 'ผู้ช่วยรายการ';

  @override
  String get globalAssistant => 'ผู้ช่วยทั่วไป';

  @override
  String get becomePremium => 'เป็นพรีเมียม';

  @override
  String get manageSubscription => 'จัดการการสมัครสมาชิก';

  @override
  String get completePurchase => 'ดำเนินการซื้อให้เสร็จ';

  @override
  String get confirmClearList => 'ลบรายการทั้งหมด?';

  @override
  String get shareListTitle => 'แชร์รายการ';

  @override
  String get shareThisCode => 'แชร์โค้ดนี้:';

  @override
  String get validForLimitedTime => 'ใช้ได้ภายในเวลาที่กำหนด';

  @override
  String get importListTitle => 'นำเข้ารายการ';

  @override
  String get enterCodeHint => 'ป้อนโค้ด';

  @override
  String get confirmArchiveTitle => 'ดำเนินการซื้อให้เสร็จ';

  @override
  String get confirmArchiveContent => 'ดำเนินการซื้อนี้และเก็บรายการ?';

  @override
  String get complete => 'เสร็จสิ้น';

  @override
  String get listArchived => 'เก็บรายการสำเร็จแล้ว!';

  @override
  String listAdded(String listName) {
    return 'เพิ่ม $listName แล้ว!';
  }

  @override
  String get buy => 'ซื้อ';

  @override
  String get unmark => 'ยกเลิกเครื่องหมาย';

  @override
  String confirmDeleteItems(int count) {
    return 'ลบ $count รายการ?';
  }

  @override
  String get confirmDeleteTitle => 'ยืนยัน';

  @override
  String confirmContent(int count) {
    return 'ลบ $count รายการ?';
  }

  @override
  String get archiveList => 'เก็บรายการ';

  @override
  String get pantryAppBar => 'ตู้กับข้าว';

  @override
  String get generateShoppingList => 'สร้างรายการช้อปปิ้ง';

  @override
  String get pantryEmpty => 'ตู้กับข้าวว่าง';

  @override
  String get pantryEmptySubtitle => 'เพิ่มสินค้าที่คุณต้องการมีไว้ที่บ้าน';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'ต้องซื้อ $deficit รายการ';
  }

  @override
  String get noItemsToBuy => 'ไม่มีรายการที่ต้องซื้อ';

  @override
  String get newPantryList => 'ช้อปปิ้งในตู้กับข้าว';

  @override
  String get newListTitle => 'รายการช้อปปิ้งใหม่';

  @override
  String itemsWillBeAdded(int count) {
    return 'จะเพิ่ม $count รายการ';
  }

  @override
  String get listNameLabel => 'ชื่อรายการ';

  @override
  String listCreated(String name, int count) {
    return 'สร้างรายการ \"$name\" พร้อม $count รายการแล้ว';
  }

  @override
  String get noTracking => 'ไม่ติดตาม';

  @override
  String get markAsPurchased => 'ทำเครื่องหมายว่าซื้อแล้ว';

  @override
  String editPantryItem(String name) {
    return 'แก้ไข $name';
  }

  @override
  String get idealQuantity => 'ปริมาณที่เหมาะสม';

  @override
  String get currentQuantity => 'ปริมาณปัจจุบัน';

  @override
  String get consumed => 'บริโภคแล้ว';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'เติม $name เป็น $quantity $unit แล้ว';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ลบ \"$name\" ออกจากตู้กับข้าว?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'แก้ไข $name';
  }

  @override
  String get settingsAppBar => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get languagePortuguese => 'โปรตุเกส (บราซิล)';

  @override
  String get languageEnglish => 'ภาษาอังกฤษ';

  @override
  String get languageSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get chooseLanguage => 'เลือกภาษา';

  @override
  String get searchLanguage => 'ค้นหาภาษา...';

  @override
  String get currency => 'สกุลเงิน';

  @override
  String get chooseCurrency => 'เลือกสกุลเงิน';

  @override
  String get searchCurrency => 'ค้นหาสกุลเงิน...';

  @override
  String get appearance => 'ลักษณะ';

  @override
  String get light => 'สว่าง';

  @override
  String get system => 'ระบบ';

  @override
  String get dark => 'มืด';

  @override
  String get themeColor => 'สีธีม';

  @override
  String get dynamicColors => 'สีแบบไดนามิก';

  @override
  String get dynamicColorsSubtitle => 'ใช้สีตามวอลเปเปอร์ของคุณ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ปิดใช้งานสีไดนามิกเพื่อให้สีของธีมมีผล';

  @override
  String get finance => 'การเงิน';

  @override
  String get monthlyBudgetNav => 'งบประมาณรายเดือน';

  @override
  String get budgetSubtitle => 'ติดตามค่าใช้จ่ายรายเดือนของคุณ';

  @override
  String get data => 'ข้อมูล';

  @override
  String get backupNav => 'สำรองข้อมูล';

  @override
  String get backupSubtitle => 'ส่งออกหรือนำเข้าข้อมูลของคุณ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get privacy => 'ความเป็นส่วนตัว';

  @override
  String get termsOfUse => 'ข้อกำหนดในการใช้งาน';

  @override
  String get backupTitle => 'สำรองข้อมูล';

  @override
  String get backupPremiumDescription =>
      'การสำรองและส่งออกข้อมูลเป็นฟีเจอร์พรีเมียม';

  @override
  String get exportData => 'ส่งออกข้อมูล';

  @override
  String get exportDataSubtitle => 'บันทึกรายการทั้งหมดเป็น JSON';

  @override
  String get importData => 'นำเข้าข้อมูล';

  @override
  String get importDataSubtitle => 'กู้คืนรายการจาก JSON';

  @override
  String get importJsonTitle => 'นำเข้า JSON';

  @override
  String get importJsonHint => 'วาง JSON ที่สำรองไว้ที่นี่...';

  @override
  String get backupExported => 'ส่งออกข้อมูลสำรองแล้ว!';

  @override
  String get budgetAppBar => 'งบประมาณรายเดือน';

  @override
  String get budgetPremiumLocked => 'งบประมาณรายเดือนโดยรวมเป็นฟีเจอร์พรีเมียม';

  @override
  String get budgetUpgradePrompt => 'อัปเกรดเพื่อปลดล็อก';

  @override
  String get noBudgetDefined => 'ไม่ได้ตั้งงบประมาณ';

  @override
  String totalEstimated(String amount) {
    return 'ประมาณการรวม: $amount';
  }

  @override
  String get setBudgetButton => 'ตั้งงบประมาณ';

  @override
  String get budgetLists => 'รายการ';

  @override
  String get budgetValueLabel => 'จำนวนเงิน';

  @override
  String get setBudgetTitle => 'งบประมาณรายเดือน';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterPending => 'รอดำเนินการ';

  @override
  String get filterPurchased => 'ซื้อแล้ว';

  @override
  String get sortName => 'ชื่อ';

  @override
  String get sortCategory => 'หมวดหมู่';

  @override
  String get sortDate => 'วันที่';

  @override
  String get sortManual => 'ด้วยตนเอง';

  @override
  String get addItem => 'เพิ่มรายการ';

  @override
  String get itemName => 'ชื่อรายการ';

  @override
  String get quantityShort => 'จำนวน';

  @override
  String get unit => 'หน่วย';

  @override
  String get category => 'หมวดหมู่';

  @override
  String get estimatedPrice => 'ราคาประมาณ';

  @override
  String get addItemPrice => 'ราคาประมาณ';

  @override
  String get editItem => 'แก้ไขรายการ';

  @override
  String get quantityFull => 'ปริมาณ';

  @override
  String get editItemPrice => 'ราคาประมาณ';

  @override
  String get addToPantry => 'เพิ่มในตู้กับข้าว';

  @override
  String addToPantryPrompt(String name) {
    return 'เพิ่ม \"$name\" ในตู้กับข้าวของคุณ?';
  }

  @override
  String get yes => 'ใช่';

  @override
  String get productName => 'ชื่อสินค้า';

  @override
  String get idealQty => 'ปริมาณที่เหมาะสม';

  @override
  String get currentQty => 'ปริมาณปัจจุบัน';

  @override
  String get trackStock => 'ติดตามสต็อก';

  @override
  String get trackStockActive => 'แสดงในคำแนะนำการช้อปปิ้ง';

  @override
  String get trackStockInactive => 'ไม่สร้างคำแนะนำการช้อปปิ้ง';

  @override
  String get createListDialog => 'สร้างรายการ';

  @override
  String get renameListDialog => 'เปลี่ยนชื่อรายการ';

  @override
  String get listHistory => 'ประวัติรายการ';

  @override
  String get myLists => 'รายการของฉัน';

  @override
  String get viewActive => 'ดูที่ใช้งานอยู่';

  @override
  String get viewHistory => 'ดูประวัติ';

  @override
  String get noArchivedLists => 'ไม่มีรายการที่เก็บแล้ว';

  @override
  String get noActiveLists => 'ไม่มีรายการที่ใช้งานอยู่';

  @override
  String completedOn(String date) {
    return 'เสร็จสิ้นเมื่อ $date';
  }

  @override
  String get sharedLabel => 'แชร์แล้ว';

  @override
  String get restore => 'กู้คืน';

  @override
  String get removeSharedTooltip => 'ลบออก';

  @override
  String get deleteListTitle => 'ลบรายการ';

  @override
  String deleteListContent(String name) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$name\"? รายการทั้งหมดจะถูกลบออก';
  }

  @override
  String get removeSharedListTitle => 'ลบรายการที่แชร์';

  @override
  String removeSharedListContent(String name) {
    return 'ลบ \"$name\" ออกจากรายการของคุณ? รายการต้นฉบับจะไม่ได้รับผลกระทบ';
  }

  @override
  String get createNewList => 'สร้างรายการใหม่';

  @override
  String get aiAssistant => 'ผู้ช่วย AI';

  @override
  String get aiAssistantDescription =>
      'รับคำแนะนำอัจฉริยะ สูตรอาหาร และเคล็ดลับส่วนตัวกับผู้ช่วย AI ของเรา';

  @override
  String get generalAssistant => 'ผู้ช่วยทั่วไป';

  @override
  String get newChat => 'แชทใหม่';

  @override
  String get noHistory => 'ไม่มีประวัติการแชท';

  @override
  String get deleteSession => 'ลบแชท';

  @override
  String get deleteSessionConfirm =>
      'คุณแน่ใจหรือไม่ว่าต้องการลบการแชทนี้ ข้อความจะหายไปอย่างถาวร';

  @override
  String get clearHistory => 'ล้างประวัติ';

  @override
  String get clearHistoryConfirm => 'ล้างข้อความทั้งหมดในเซสชันนี้?';

  @override
  String get chatHint => 'พิมพ์ข้อความของคุณ...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'ข้อผิดพลาดในการโหลดแชท: $error';
  }

  @override
  String get listHelp => 'จะช่วยคุณเกี่ยวกับรายการของคุณได้อย่างไร?';

  @override
  String get generalHelp => 'วันนี้จะช่วยคุณเกี่ยวกับการช้อปปิ้งได้อย่างไร?';

  @override
  String get chatSubtitle =>
      'สอบถามคำแนะนำรายการ สูตรอาหาร หรือเคล็ดลับประหยัดเงิน';

  @override
  String get aiError =>
      'ขออภัย เกิดข้อผิดพลาดในการประมวลผลคำขอของคุณ โปรดตรวจสอบการเชื่อมต่อของคุณหรือลองอีกครั้งในภายหลัง';

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
  String get loginPrompt => 'เข้าสู่ระบบเพื่อปลดล็อก\nฟีเจอร์พรีเมียม';

  @override
  String get signInGoogle => 'เข้าสู่ระบบด้วย Google';

  @override
  String get signInApple => 'เข้าสู่ระบบด้วย Apple';

  @override
  String get continueAsGuest => 'ดำเนินการต่อในฐานะแขก';

  @override
  String get onboardingWelcomeTitle => 'ยินดีต้อนรับสู่KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'วิธีที่ชาญฉลาดที่สุดในการจัดระเบียบการซื้อของและประหยัดเงิน';

  @override
  String get onboardingSetupTitle => 'ปรับแต่งประสบการณ์ของคุณ';

  @override
  String get onboardingSetupDesc =>
      'เลือกว่าคุณต้องการให้ KipiList มีลักษณะและทำงานอย่างไรสำหรับคุณ';

  @override
  String get onboardingLoginTitle => 'บันทึกทุกอย่างไว้บนคลาวด์';

  @override
  String get onboardingLoginDesc => 'ข้อมูลของคุณซิงค์กับทุกอุปกรณ์ของคุณ';

  @override
  String get onboardingShareTitle => 'แบ่งปันกับคนที่คุณรัก';

  @override
  String get onboardingShareDesc =>
      'ซิงค์รายการกับครอบครัวและเพื่อน ๆ แบบเรียลไทม์';

  @override
  String get onboardingPremiumTitle => 'ปลดล็อคคุณสมบัติทั้งหมด';

  @override
  String get onboardingPremiumSubtitle =>
      'ใช้ประโยชน์สูงสุดจากรายการช้อปปิ้งของคุณ';

  @override
  String get onboardingAnnualBadge => 'คุ้มค่าที่สุด';

  @override
  String get onboardingMonthlyLabel => 'รายเดือน';

  @override
  String get onboardingAnnualLabel => 'ประจำปี';

  @override
  String get onboardingViewAllPlans => 'ดูแผนทั้งหมด';

  @override
  String get onboardingSubscribeCta => 'สมัครสมาชิก';

  @override
  String get onboardingCancelAnytime => 'ยกเลิกได้ตลอดเวลา ไม่มีความมุ่งมั่น';

  @override
  String get onboardingContinueAsGuest => 'ดำเนินการต่อในฐานะแขก';

  @override
  String get onboardingRestore => 'คืนค่าการซื้อ';

  @override
  String get onboardingRestoreDesc => 'สมัครสมาชิกแล้ว? แตะที่นี่เพื่อกู้คืน';

  @override
  String get onboardingExit => 'ออก';

  @override
  String get onboardingPersonalizationTitle => 'มาทำความรู้จักกันเถอะ';

  @override
  String get onboardingPersonalizationDesc =>
      'เราจะใช้ข้อมูลนี้เพื่อปรับเปลี่ยนคำแนะนำของคุณและทำให้การช้อปปิ้งชาญฉลาดยิ่งขึ้น';

  @override
  String get onboardingPersonalizationFoodLabel => 'อาหารที่คุณชื่นชอบคืออะไร?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'เช่น พิซซ่า ซูชิ ลาซานญ่า...';

  @override
  String get onboardingPersonalizationCta => 'ดำเนินการต่อ';

  @override
  String get onboardingPersonalizationSkip => 'ข้ามไปก่อน';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'บอกอาหารที่คุณชื่นชอบเพื่อดำเนินการต่อ';

  @override
  String get settingsDefaultScreen => 'หน้าจอหลักเริ่มต้น';

  @override
  String get settingsDefaultScreenSubtitle =>
      'เลือกระหว่างรายการช้อปปิ้งหรือการแชท AI';

  @override
  String get settingsScreenList => 'รายการช้อปปิ้ง';

  @override
  String get settingsScreenChat => 'เอไอ แชท';

  @override
  String loginError(String error) {
    return 'ข้อผิดพลาดในการเข้าสู่ระบบ: $error';
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
  String get paywallCtaTrial => 'Start My Free Trial';

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
  String get premiumUpgrade => 'อัปเกรดเพื่อปลดล็อก';

  @override
  String get itemRemoved => 'ลบรายการแล้ว';

  @override
  String get undo => 'เลิกทำ';

  @override
  String get emptyListTitle => 'รายการของคุณว่างเปล่า';

  @override
  String get emptyListSubtitle => 'เพิ่มรายการเพื่อเริ่มต้น';

  @override
  String get noListFoundTitle => 'ไม่พบรายการ';

  @override
  String get noListFoundSubtitle => 'สร้างรายการแรกของคุณเพื่อเริ่มต้น';

  @override
  String get createFirstList => 'สร้างรายการแรก';

  @override
  String get listBudgetTitle => 'งบประมาณรายการ';

  @override
  String get budgetAmountLabel => 'วงเงินงบประมาณ';

  @override
  String get removeBudget => 'ลบออก';

  @override
  String get prefUnlimitedLists => 'รายการไม่จำกัด';

  @override
  String get prefSharing => 'แชร์รายการ';

  @override
  String get prefFullHistory => 'ประวัติทั้งหมด';

  @override
  String get prefExportData => 'ส่งออกข้อมูล';

  @override
  String get prefCustomThemes => 'ธีมที่กำหนดเอง';

  @override
  String get prefMonthlyBudget => 'งบประมาณรายเดือนโดยรวม';

  @override
  String get prefAIAssistant => 'ผู้ช่วย AI ส่วนตัว';

  @override
  String get prefUnlimitedPantry => 'ตู้กับข้าวไม่จำกัด';

  @override
  String get prefInteractiveArtifacts => 'สิ่งประดิษฐ์ AI แบบโต้ตอบ';

  @override
  String get themeGreen => 'เขียว';

  @override
  String get themeBlue => 'น้ำเงิน';

  @override
  String get themePurple => 'ม่วง';

  @override
  String get themeRed => 'แดง';

  @override
  String get themeOrange => 'ส้ม';

  @override
  String get themePink => 'ชมพู';

  @override
  String get themeIndigo => 'คราม';

  @override
  String get themeAmber => 'อำพัน';

  @override
  String get themeTeal => 'ทีล';

  @override
  String get themeBrown => 'น้ำตาล';

  @override
  String get catFruits => 'ผลไม้';

  @override
  String get catCleaning => 'ทำความสะอาด';

  @override
  String get catBeverages => 'เครื่องดื่ม';

  @override
  String get catBakery => 'เบเกอรี่';

  @override
  String get catOthers => 'อื่นๆ';

  @override
  String get unitPack => 'แพ็ค';

  @override
  String get shareSubject => 'รายการช้อปปิ้ง';

  @override
  String get monthlyBudgetTitle => 'งบประมาณรายเดือน';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ลบรายการ';

  @override
  String get pantryItemRemoved => 'ลบรายการแล้ว';

  @override
  String deficitItems(int deficit) {
    return 'ต้องซื้อ $deficit รายการ';
  }

  @override
  String get cartTotal => 'ยอดรวมตะกร้า';

  @override
  String get restockLabel => 'เติมสต็อก';

  @override
  String get advancedFeatures => 'ฟีเจอร์ขั้นสูง';

  @override
  String get selectAll => 'เลือกทั้งหมด';

  @override
  String get deselectAll => 'ยกเลิกการเลือกทั้งหมด';

  @override
  String get monthlyBudgetAppBar => 'งบประมาณรายเดือน';

  @override
  String get budgetEditTitle => 'งบประมาณรายเดือน';

  @override
  String get budgetDashboardTitle => 'แดชบอร์ด';

  @override
  String get selectListForDashboard => 'เลือกรายการเพื่อดูแดชบอร์ด';

  @override
  String get spendingAnalysis => 'การวิเคราะห์ค่าใช้จ่าย';

  @override
  String get noItemsToAnalyze => 'ไม่มีรายการในรายการที่ต้องวิเคราะห์';

  @override
  String get markItemsToSeeAnalysis =>
      'ทำเครื่องหมายรายการว่าซื้อแล้วเพื่อดูการวิเคราะห์';

  @override
  String get totalSpending => 'ค่าใช้จ่ายทั้งหมด';

  @override
  String get spendingByCategory => 'ค่าใช้จ่ายตามหมวดหมู่';

  @override
  String get achievements => 'ความสำเร็จ';

  @override
  String get exportPdfExcel => 'ส่งออก PDF/Excel';

  @override
  String get exportPdf => 'ส่งออกเป็น PDF';

  @override
  String get exportExcel => 'ส่งออกเป็น Excel';

  @override
  String get organizingAi => 'กำลังจัดระเบียบด้วย AI...';

  @override
  String get yesLabel => 'ใช่';

  @override
  String get noLabel => 'ไม่';

  @override
  String get shareListText => 'รายการช้อปปิ้งของฉัน';

  @override
  String get emptyListAddItems =>
      'รายการของคุณว่างเปล่า! โปรดเพิ่มรายการก่อน ℹ️';

  @override
  String get listOrganizedMagic =>
      'จัดระเบียบรายการตามหมวดหมู่อย่างมหัศจรรย์! ✨';

  @override
  String get shoppingMode => 'โหมดช้อปปิ้ง';

  @override
  String get smartOrganization => 'การจัดระเบียบอัจฉริยะ';

  @override
  String get savings => 'การประหยัด';

  @override
  String get shoppingModeHeader => 'โหมดช้อปปิ้ง';

  @override
  String get shareAsText => 'ส่งรายการเป็นข้อความที่จัดรูปแบบแล้ว';

  @override
  String get shareRealtime => 'ซิงค์แบบเรียลไทม์กับผู้อื่น';

  @override
  String get quickRecipe => 'สูตรด่วน';

  @override
  String get quickRecipePrompt => 'แนะนำสูตรอาหารด้วยรายการจากรายการของฉัน';

  @override
  String get economyTips => 'เคล็ดลับประหยัด';

  @override
  String get economyTipsPrompt =>
      'ฉันจะประหยัดเงินในการซื้อครั้งนี้ได้อย่างไร?';

  @override
  String get organizeAisles => 'จัดเรียงตามโซน';

  @override
  String get organizeAislesPrompt => 'จัดเรียงตามโซนในร้าน';

  @override
  String get recipeSuggestion => 'คำแนะนำสูตรอาหาร';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'เหลือ $remaining เครดิต';
  }

  @override
  String get addAllToList => 'เพิ่มทั้งหมดในรายการ';

  @override
  String get organizeByAisles => 'จัดเรียงตามโซน';

  @override
  String get voiceTranscriptionTooltip => 'พิมพ์ด้วยเสียง (ฟรี)';

  @override
  String get aiVoiceCommandTooltip => 'คำสั่งเสียง AI (พรีเมียม)';

  @override
  String get voiceCommandTitle => 'คำสั่งเสียง AI';

  @override
  String get voiceCommandContent =>
      'พูดอย่างเป็นธรรมชาติเพื่อจัดการรายการของคุณ!\n\nตัวอย่าง:\n• \'เพิ่มขนมปัง ชีส และแฮม\'\n• \'ลบน้ำยาซักผ้า\'\n• \'เปลี่ยนธีมเป็นสีน้ำเงิน\'\n\nนี่คือฟีเจอร์พิเศษของ KipiList Premium';

  @override
  String get voiceCommandPlanBtn => 'ดูแผน';

  @override
  String get itemsAddedSuccess => 'เพิ่มรายการในรายการสำเร็จแล้ว!';

  @override
  String get viewList => 'ดูรายการ';

  @override
  String get feedbackTitle => 'ส่งความคิดเห็น';

  @override
  String get feedbackPrompt => 'คุณต้องการแบ่งปันอะไร?';

  @override
  String get feedbackTypeBug => 'รายงานข้อบกพร่อง';

  @override
  String get feedbackTypeBugHint => 'มีบางอย่างทำงานไม่ถูกต้อง';

  @override
  String get feedbackTypeSuggestion => 'ข้อเสนอแนะ';

  @override
  String get feedbackTypeSuggestionHint => 'ไอเดียในการปรับปรุงแอป';

  @override
  String get feedbackTypeTranslation => 'ปัญหาการแปล';

  @override
  String get feedbackTypeTranslationHint =>
      'การแปลที่ไม่ถูกต้องหรือไม่เป็นธรรมชาติ';

  @override
  String get feedbackTypeFeature => 'ขอคุณสมบัติ';

  @override
  String get feedbackTypeFeatureHint => 'คุณสมบัติที่คุณอยากให้มี';

  @override
  String get feedbackTypeOther => 'อื่นๆ';

  @override
  String get feedbackTypeOtherHint => 'ความคิดเห็นประเภทอื่น';

  @override
  String get feedbackHint => 'อธิบายความคิดเห็นของคุณโดยละเอียด...';

  @override
  String get feedbackSend => 'ส่งความคิดเห็น';

  @override
  String get feedbackSending => 'กำลังส่ง...';

  @override
  String get feedbackThankYou => 'ขอบคุณ!';

  @override
  String get feedbackThankYouMessage =>
      'ความคิดเห็นของคุณได้รับแล้วและช่วยให้เราปรับปรุง KipiList สำหรับทุกคน';

  @override
  String get feedbackBack => 'กลับ';

  @override
  String feedbackError(String error) {
    return 'ข้อผิดพลาดในการส่ง: $error';
  }

  @override
  String get feedbackRetry => 'ลองอีกครั้ง';

  @override
  String get feedbackSettingsTitle => 'ส่งความคิดเห็น';

  @override
  String get feedbackSettingsSubtitle =>
      'รายงานข้อบกพร่อง แนะนำการปรับปรุง หรือแก้ไขการแปล';

  @override
  String get aiEnergy => 'พลังงานเอไอ';

  @override
  String get searchInConversation => 'ค้นหาในการสนทนา...';

  @override
  String get noMessagesFound => 'ไม่พบข้อความ';

  @override
  String get suggestedQuestions => 'คำถามที่แนะนำ:';

  @override
  String get shoppingAssistant => 'ผู้ช่วยชอปปิ้ง';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased จาก $total ที่ซื้อ';
  }

  @override
  String get estimatedCost => 'โดยประมาณ';

  @override
  String get viewItems => 'ดูรายการ';

  @override
  String get noItemsInList => 'ไม่มีรายการในรายการ';

  @override
  String get longHistoryWarning =>
      'ประวัติอันยาวนาน: ผู้ช่วยมุ่งเน้นไปที่ข้อความล่าสุดเพื่อประสิทธิภาพที่ดีขึ้น';

  @override
  String get listening => 'การฟัง...';

  @override
  String get addDirectToList => 'เพิ่มลงในรายการโดยตรง';

  @override
  String get unlockFullResponse => 'ปลดล็อคการตอบสนองแบบเต็ม';

  @override
  String get switchList => 'สลับรายการ';

  @override
  String get marketMode => 'โหมดการตลาด';

  @override
  String get backToChat => 'กลับไปที่แชท';

  @override
  String get finishShopping => 'ช้อปปิ้งให้เสร็จ';

  @override
  String get welcomeAiAssistant => 'ยินดีต้อนรับสู่ผู้ช่วย AI';

  @override
  String get createListToStartAi =>
      'สร้างรายการช้อปปิ้งเพื่อเริ่มใช้แชทอัจฉริยะ';

  @override
  String get howCanIHelp => 'ฉันจะช่วยได้อย่างไร?';

  @override
  String get chatSubtitleShort => 'สอบถามราคา สูตร การจัดเรียง...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ซื้อแล้ว';
  }

  @override
  String get quickReplies => 'ตอบกลับด่วน:';

  @override
  String get voiceProFeature =>
      'คำสั่งเสียงขั้นสูงเป็นแบบ Pro กำลังเปิดใช้งานการเขียนตามคำบอกพื้นฐาน...';

  @override
  String get viewPro => 'ดูโปร';

  @override
  String get errorLoadingChat => 'อ๊ะ! เกิดข้อผิดพลาดในการโหลดแชท';

  @override
  String get errorLoadingChatSubtitle =>
      'ตรวจสอบการเชื่อมต่อของคุณหรือลองอีกครั้งในภายหลัง';

  @override
  String get errorOscillation =>
      'สิ่งนี้อาจเกิดขึ้นเนื่องจากการสั่นของเครือข่ายหรือความไม่พร้อมใช้งานชั่วคราว โปรดลองอีกครั้ง';

  @override
  String get activeListening => 'การฟังอย่างกระตือรือร้น';

  @override
  String get whatToDoWithItem => 'คุณต้องการทำอะไรกับรายการนี้?';

  @override
  String get viewDetails => 'ดูรายละเอียด';

  @override
  String get openMenu => 'เปิดเมนู';

  @override
  String get viewRecipe => 'ดูสูตร';

  @override
  String get recipeCreated => 'สร้างสูตรแล้ว!';

  @override
  String get editRecipe => 'แก้ไข';

  @override
  String get deleteRecipe => 'ลบ';

  @override
  String get deleteRecipeConfirm => 'ลบสูตรนี้ใช่ไหม';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$recipeName\" การดำเนินการนี้ไม่สามารถยกเลิกได้';
  }

  @override
  String get ingredients => 'วัตถุดิบ';

  @override
  String get instructions => 'คำแนะนำ';

  @override
  String get prepTime => 'เวลาเตรียมตัว';

  @override
  String get recipeSaved => 'บันทึกสูตรแล้ว!';

  @override
  String get noRecipesSaved => 'ไม่มีสูตรที่บันทึกไว้';

  @override
  String get noRecipesSavedHint =>
      'สร้างสูตรอาหารที่คุณกำหนดเองสูตรแรกโดยแตะปุ่มด้านล่าง';

  @override
  String get myRecipes => 'สูตรอาหารของฉัน';

  @override
  String get newRecipe => 'สูตรใหม่';

  @override
  String get loadingRecipes => 'กำลังโหลดสูตรอาหารของคุณ...';

  @override
  String get errorLoadingRecipes => 'เกิดข้อผิดพลาดในการโหลดสูตรอาหาร';

  @override
  String get addIngredient => 'เพิ่มส่วนผสม';

  @override
  String get saveRecipe => 'บันทึก';

  @override
  String get recipeName => 'ชื่อสูตร';

  @override
  String get shortDescription => 'คำอธิบายสั้น ๆ';

  @override
  String get prepTimeMinutes => 'เวลาเตรียม (นาที)';

  @override
  String get instructionsHint => 'พิมพ์หนึ่งขั้นตอนต่อบรรทัด...';

  @override
  String get addPhoto => 'เพิ่มรูปภาพ';

  @override
  String get imageUrlPlaceholder => 'หรือวาง URL รูปภาพ';

  @override
  String get tags => 'แท็ก';

  @override
  String get recipeTags => 'แท็กสูตร';

  @override
  String get suggestedTags => 'แนะนำ';

  @override
  String get searchRecipes => 'ค้นหาสูตรอาหาร...';

  @override
  String get filterByTag => 'กรองตามแท็ก';

  @override
  String get allTags => 'ทั้งหมด';

  @override
  String get recipeDeleted => 'ลบสูตรแล้ว';

  @override
  String get saveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get editRecipeTitle => 'แก้ไขสูตร';

  @override
  String get newRecipeTitle => 'สูตรใหม่';

  @override
  String get requiredField => 'ที่จำเป็น';

  @override
  String get chooseImageSource => 'เลือกแหล่งที่มาของภาพ';

  @override
  String get gallery => 'แกลเลอรี่';

  @override
  String get enterUrl => 'ป้อน URL';

  @override
  String get recipeImage => 'รูปภาพสูตรอาหาร';

  @override
  String get removeImage => 'ลบรูปภาพ';

  @override
  String get mealPlannerTitle => 'วางแผนมื้ออาหาร';

  @override
  String get mealPlannerViewMonthly => 'มุมมองรายเดือน';

  @override
  String get mealPlannerViewWeekly => 'มุมมองรายสัปดาห์';

  @override
  String get mealPlannerNoMeals => 'ไม่มีการวางแผนมื้ออาหาร';

  @override
  String get mealPlannerNoMealsHint => 'แตะวันเพื่อเพิ่มมื้ออาหาร';

  @override
  String get mealPlannerLoading => 'กำลังโหลดแผนอาหาร...';

  @override
  String get mealPlannerError => 'เกิดข้อผิดพลาดในการโหลดแผนอาหาร';

  @override
  String get mealPlannerAddMeal => 'เพิ่มมื้ออาหาร';

  @override
  String get mealPlannerEditMeal => 'แก้ไขมื้ออาหาร';

  @override
  String get mealPlannerDeleteMeal => 'ลบมื้ออาหาร';

  @override
  String get mealPlannerMealDeleted => 'อาหารถูกลบออก';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count เสิร์ฟ',
      one: '$count เสิร์ฟ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'เสิร์ฟ';

  @override
  String get mealPlannerNoteLabel => 'หมายเหตุ (ไม่บังคับ)';

  @override
  String get mealPlannerSelectRecipe => 'เลือกสูตร';

  @override
  String get mealPlannerSearchRecipes => 'ค้นหาสูตรอาหาร...';

  @override
  String get mealPlannerNoRecipesFound => 'ไม่พบสูตร';

  @override
  String get mealPlannerNoRecipesHint => 'สร้างสูตรอาหารในแท็บสูตรอาหารก่อน';

  @override
  String get mealPlannerSave => 'เพิ่มลงในแผน';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count จาก $total มื้อที่วางแผนไว้';
  }

  @override
  String get mealPlannerGenerateList => 'สร้างรายการช้อปปิ้ง';

  @override
  String get mealPlannerGenerateListConfirm =>
      'เพิ่มส่วนผสมทั้งหมดจากมื้ออาหารที่วางแผนไว้สัปดาห์นี้ลงในรายการช้อปปิ้งของคุณหรือไม่?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count เพิ่มส่วนผสมในรายการของคุณแล้ว!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ไม่มีส่วนผสมที่ต้องเติม วางแผนมื้ออาหารด้วยสูตรอาหารก่อน';

  @override
  String get mealPlannerGenerateListNoList => 'สร้างรายการช็อปปิ้งก่อน';

  @override
  String get mealPlannerMealTypeBreakfast => 'อาหารเช้า';

  @override
  String get mealPlannerMealTypeLunch => 'อาหารกลางวัน';

  @override
  String get mealPlannerMealTypeDinner => 'อาหารเย็น';

  @override
  String get mealPlannerMealTypeSnack => 'อาหารว่าง';

  @override
  String get mealPlannerDateLabel => 'วันที่';

  @override
  String get mealPlannerWeekEmpty => 'ไม่มีการวางแผนสำหรับสัปดาห์นี้';

  @override
  String get mealPlannerWeekEmptyHint =>
      'แตะวันใดก็ได้เพื่อเริ่มวางแผนมื้ออาหารของคุณ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes นาที';
  }

  @override
  String get inviteToList => 'เชิญลงรายการ';

  @override
  String get shareApp => 'แชร์แอป';

  @override
  String get shareAppDescription => 'ชวนเพื่อนมาใช้ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'ฉันใช้ KipiList เพื่อจัดการช็อปปิ้งของฉัน! ดาวน์โหลดผ่านลิงก์ของฉันและเราทั้งคู่จะได้รับพรีเมี่ยมฟรี 7 วัน: $url';
  }

  @override
  String get shareReferralSubject => 'รับ KipiList Premium 7 วัน!';
}
