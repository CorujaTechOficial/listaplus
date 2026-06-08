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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'สูตรอาหาร';

  @override
  String get navLists => 'รายการ';

  @override
  String get navMealPlanner => 'เมนู';

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
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Exit Shopping Mode';

  @override
  String get exit => 'Exit';

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
  String get chatHintBlocked => 'ปลดล็อค AI เพื่อแชท';

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
  String get aiLimitAlmostReached => 'ข้อความ AI เกือบหมด';

  @override
  String get unlockAi => 'ปลดล็อค AI ไม่จำกัด';

  @override
  String get aiTeaserFallback =>
      'สมัครสมาชิก Premium เพื่อปลดล็อกการตอบสนองเต็มรูปแบบและรับเคล็ดลับ AI แบบไม่จำกัดสำหรับการช็อปปิ้งของคุณ...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get paywallTitle => 'KipiList พรีเมี่ยม';

  @override
  String get paywallLoadingError =>
      'เกิดข้อผิดพลาดในการโหลดข้อเสนอ ลองอีกครั้ง';

  @override
  String get paywallPurchaseError =>
      'ไม่สามารถดำเนินการซื้อให้เสร็จสิ้นได้ ลองอีกครั้ง';

  @override
  String get paywallRestoreError =>
      'ไม่พบการสมัครสมาชิกที่ใช้งานอยู่เพื่อกู้คืน';

  @override
  String paywallTrialDays(Object days) {
    return '$days วันฟรี';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ฟรีสัปดาห์',
      one: '$count ฟรีสัปดาห์',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ฟรีเดือน',
      one: '$count เดือนฟรี',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'ทุกสิ่งที่คุณต้องการ:';

  @override
  String get paywallFeatureUnlimitedLists => 'รายการไม่จำกัด';

  @override
  String get paywallFeatureSmartAI => 'เอไออัจฉริยะ';

  @override
  String get paywallFeatureExpenseControl => 'การควบคุมค่าใช้จ่าย';

  @override
  String get paywallFeatureSharing => 'การแบ่งปัน';

  @override
  String get paywallBeforeAfterTitle => 'AI ก่อนและหลัง:';

  @override
  String get paywallLabelCommon => 'ทั่วไป';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ข้าว';

  @override
  String get paywallBeforeItem2 => 'สบู่';

  @override
  String get paywallBeforeItem3 => 'เนื้อ';

  @override
  String get paywallBeforeItem4 => 'ขนมปัง';

  @override
  String get paywallAfterItem1 => 'ธัญพืช';

  @override
  String get paywallAfterItem2 => 'การทำความสะอาด';

  @override
  String get paywallAfterItem3 => 'เนื้อสัตว์';

  @override
  String get paywallAfterItem4 => 'เบเกอรี่';

  @override
  String get paywallTestimonialsTitle => 'ผู้ใช้ของเราพูดว่าอย่างไร:';

  @override
  String get paywallTestimonial1Name => 'แอน เอส.';

  @override
  String get paywallTestimonial1Text =>
      'AI จัดการช้อปปิ้งของฉันในไม่กี่วินาที ฉันประหยัดเวลาได้ 20 นาทีต่อการเที่ยวตลาดแต่ละครั้ง';

  @override
  String get paywallTestimonial2Name => 'ชาร์ลส์ เอ็ม.';

  @override
  String get paywallTestimonial2Text =>
      'ฉันไม่เคยลืมรายการอีกเลย แชท AI สุดเร้าใจ!';

  @override
  String get paywallSocialProof => '+2,400 ครอบครัวใช้มัน';

  @override
  String get paywallCtaUnlock => 'ปลดล็อคโปร';

  @override
  String get paywallBestValue => 'คุ้มค่าที่สุด';

  @override
  String get paywallMostPopular => 'ยอดนิยมที่สุด';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'การชำระเงินที่ปลอดภัย';

  @override
  String get paywallSelectPlan => 'เลือกแผนของคุณ:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ประหยัด $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'เพียง $price/เดือน';
  }

  @override
  String get paywallPackageAnnual => 'แผนรายปี';

  @override
  String get paywallPackageMonthly => 'แผนรายเดือน';

  @override
  String get paywallPackageLifetime => 'การเข้าถึงตลอดชีวิต';

  @override
  String get paywallCancelAnytime => 'ยกเลิกได้ตลอดเวลา ไม่มีความมุ่งมั่น';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get paywallTerms => 'เงื่อนไขการใช้งาน';

  @override
  String get paywallRestore => 'คืนค่า';

  @override
  String get paywallHeroHeadline => 'Kipi AI อยู่เคียงข้างคุณเสมอ';

  @override
  String get paywallHeroSubtitle =>
      'เพิ่มรายการ จัดระเบียบรายการ และประหยัดเวลาด้วย AI ในกระเป๋าของคุณ';

  @override
  String get paywallBenefit1Desc =>
      'เพิ่ม จัดระเบียบ และแนะนำรายการต่างๆ ทุกวันตลอด 24 ชั่วโมง';

  @override
  String get paywallBenefit2Desc => 'ไม่มีขีดจำกัด 3 รายการ';

  @override
  String get paywallBenefit3Desc => 'การติดตามค่าใช้จ่ายและรายชื่อครอบครัว';

  @override
  String get paywallPackageMonthlyDesc => 'มีความยืดหยุ่นเต็มที่';

  @override
  String paywallCtaTrialDays(int days) {
    return 'เริ่มฟรี — $days วัน';
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

  @override
  String get gestureHint => 'Hold to select • Swipe to remove';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'My Frequents';

  @override
  String get catalogSearchGlobal => 'Search any product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Search in $category...';
  }

  @override
  String get catalogSortPopular => 'Most popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'less common in your country';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Add $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Product not found, type the name';

  @override
  String get catalogBrowse => 'Browse Catalog';

  @override
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';

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
  String get manageCategoriesTitle => 'Manage Categories';

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
  String get sortAZ => 'A-Z';

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
  String get backToToday => 'Back to today';

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
