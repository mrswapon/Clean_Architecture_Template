// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'ফার্ম ম্যানেজার';

  @override
  String get farmManager => 'ফার্ম ম্যানেজার';

  @override
  String get unitManagementSystem => 'ইউনিট ম্যানেজমেন্ট সিস্টেম';

  @override
  String get farmUnitManagementV => 'ফার্ম ইউনিট ম্যানেজমেন্ট সিস্টেম v1.0';

  @override
  String get signIn => 'সাইন ইন';

  @override
  String get signInToAccount => 'আপনার অ্যাকাউন্টে সাইন ইন করুন';

  @override
  String get email => 'ইমেইল';

  @override
  String get password => 'পাসওয়ার্ড';

  @override
  String get emailRequired => 'ইমেইল প্রয়োজন';

  @override
  String get validEmail => 'সঠিক ইমেইল লিখুন';

  @override
  String get passwordRequired => 'পাসওয়ার্ড প্রয়োজন';

  @override
  String get minPassword => 'কমপক্ষে ৬ অক্ষর';

  @override
  String get logout => 'লগআউট';

  @override
  String get language => 'ভাষা';

  @override
  String get english => 'English';

  @override
  String get bangla => 'বাংলা';

  @override
  String get dashboard => 'ড্যাশবোর্ড';

  @override
  String get units => 'ইউনিট';

  @override
  String get users => 'ব্যবহারকারী';

  @override
  String get configs => 'কনফিগ';

  @override
  String get scanQr => 'QR স্ক্যান';

  @override
  String get quickActions => 'দ্রুত কাজ';

  @override
  String get quickNavigation => 'দ্রুত নেভিগেশন';

  @override
  String get goodMorning => 'সুপ্রভাত';

  @override
  String get goodAfternoon => 'শুভ অপরাহ্ন';

  @override
  String get goodEvening => 'শুভ সন্ধ্যা';

  @override
  String get haveProductiveDay => 'খামারে আপনার দিনটি শুভ হোক!';

  @override
  String helloName(String name) {
    return 'হ্যালো, $name';
  }

  @override
  String welcomeName(String name) {
    return 'স্বাগতম, $name';
  }

  @override
  String get accountFrozen => 'অ্যাকাউন্ট ফ্রোজন';

  @override
  String get accountFrozenBanner =>
      'আপনার অ্যাকাউন্ট ফ্রোজন করা হয়েছে। অনুগ্রহ করে প্রশাসকের সাথে যোগাযোগ করুন।';

  @override
  String get accountFrozenDetail =>
      'আপনার অ্যাকাউন্ট একজন প্রশাসক ফ্রোজন করেছেন। অ্যাকাউন্ট আনফ্রোজ না হওয়া পর্যন্ত আপনি কোনো কাজ করতে পারবেন না।';

  @override
  String get contactAdmin => 'অনুগ্রহ করে প্রশাসকের সাথে যোগাযোগ করুন।';

  @override
  String get totalUnits => 'মোট ইউনিট';

  @override
  String get todaysEntries => 'আজকের এন্ট্রি';

  @override
  String get activeUsers => 'সক্রিয় ব্যবহারকারী';

  @override
  String get viewUnits => 'ইউনিট দেখুন';

  @override
  String get viewAllUnits => 'সব ইউনিট দেখুন →';

  @override
  String get farmUnits => 'ফার্ম ইউনিট';

  @override
  String get farmUnitsSubtitle => 'ইউনিট দেখুন ও পরিচালনা করুন';

  @override
  String get usersSubtitle => 'সিস্টেম ব্যবহারকারী পরিচালনা';

  @override
  String get fieldConfigs => 'ফিল্ড কনফিগ';

  @override
  String get fieldConfigsSubtitle => 'চেকলিস্ট ফিল্ড সেটআপ';

  @override
  String get addEntry => 'এন্ট্রি যোগ';

  @override
  String get addEntrySubtitle => 'দ্রুত চেকলিস্ট এন্ট্রি';

  @override
  String get findingUnit => 'ইউনিট খোঁজা হচ্ছে...';

  @override
  String get noUnitsAvailable => 'কোনো ইউনিট নেই।';

  @override
  String get scanQrCode => 'QR কোড স্ক্যান';

  @override
  String get alignQrFrame => 'ফ্রেমের মধ্যে QR কোড রাখুন';

  @override
  String get administrator => 'প্রশাসক';

  @override
  String get admin => 'অ্যাডমিন';

  @override
  String get user => 'ব্যবহারকারী';

  @override
  String get superAdmin => 'সুপার অ্যাডমিন';

  @override
  String get superAdminBadge => 'সুপার অ্যাডমিন';

  @override
  String get systemManagement => 'সিস্টেম ম্যানেজমেন্ট';

  @override
  String get manageUsers => 'ব্যবহারকারী পরিচালনা';

  @override
  String get adminsAndUsers => 'অ্যাডমিন ও ব্যবহারকারী';

  @override
  String get allUnits => 'সব ইউনিট';

  @override
  String get fieldBuilder => 'ফিল্ড বিল্ডার';

  @override
  String get addAdmin => 'অ্যাডমিন যোগ';

  @override
  String get createAdminAccount => 'অ্যাডমিন অ্যাকাউন্ট তৈরি';

  @override
  String get rolePermissions => 'ভূমিকা অনুমতি';

  @override
  String get roleSuperAdmin => 'সুপার অ্যাডমিন';

  @override
  String get roleAdmin => 'অ্যাডমিন';

  @override
  String get roleUser => 'ব্যবহারকারী';

  @override
  String get roleFrozenUser => 'ফ্রোজন ব্যবহারকারী';

  @override
  String get permCreateManageAdmins => 'অ্যাডমিন ও ব্যবহারকারী তৈরি ও পরিচালনা';

  @override
  String get permSwitchRoles => 'যেকোনো ব্যবহারকারীর ভূমিকা পরিবর্তন';

  @override
  String get permFreezeAny => 'যেকোনো অ্যাকাউন্ট ফ্রোজ/আনফ্রোজ';

  @override
  String get permFullAccess => 'সব ফিচারে পূর্ণ অ্যাক্সেস';

  @override
  String get permCreateManageUsers => 'শুধু ব্যবহারকারী তৈরি ও পরিচালনা';

  @override
  String get permFreezeUsers => 'ব্যবহারকারী অ্যাকাউন্ট ফ্রোজ/আনফ্রোজ';

  @override
  String get permManageUnitsChecklist => 'ফার্ম ইউনিট ও চেকলিস্ট পরিচালনা';

  @override
  String get permViewReports => 'সব রিপোর্ট দেখুন';

  @override
  String get permViewAssignedUnits => 'নির্ধারিত ফার্ম ইউনিট দেখুন';

  @override
  String get permAddTodaysEntries => 'আজকের চেকলিস্ট এন্ট্রি যোগ';

  @override
  String get permEditOwnToday => 'নিজের এন্ট্রি সম্পাদনা (শুধু আজ)';

  @override
  String get permCannotLogin => 'লগইন বা কাজ করতে পারবেন না';

  @override
  String get permAccountSuspended => 'অ্যাডমিন অ্যাকাউন্ট স্থগিত করেছেন';

  @override
  String get userManagement => 'ব্যবহারকারী পরিচালনা';

  @override
  String get addUser => 'ব্যবহারকারী যোগ';

  @override
  String get roleLabel => 'ভূমিকা:';

  @override
  String get statusLabel => 'অবস্থা:';

  @override
  String get filterAll => 'সব';

  @override
  String get filterActive => 'সক্রিয়';

  @override
  String get filterFrozen => 'ফ্রোজন';

  @override
  String get frozen => 'ফ্রোজন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get delete => 'মুছুন';

  @override
  String get unfreeze => 'আনফ্রোজ';

  @override
  String get freeze => 'ফ্রোজ';

  @override
  String get deleteUser => 'ব্যবহারকারী মুছুন';

  @override
  String get deleteUserConfirm =>
      'আপনি কি এই ব্যবহারকারী মুছতে চান? এটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get cancel => 'বাতিল';

  @override
  String get noUsersFound => 'কোনো ব্যবহারকারী পাওয়া যায়নি';

  @override
  String get retry => 'আবার চেষ্টা';

  @override
  String get pullToRefresh => 'রিফ্রেশ করতে টানুন';

  @override
  String get unknown => 'অজানা';

  @override
  String get userCreatedSuccess => 'ব্যবহারকারী সফলভাবে তৈরি হয়েছে।';

  @override
  String get userUpdatedSuccess => 'ব্যবহারকারী সফলভাবে আপডেট হয়েছে।';

  @override
  String get userDeletedSuccess => 'ব্যবহারকারী সফলভাবে মুছে ফেলা হয়েছে।';

  @override
  String get userFrozenSuccess => 'ব্যবহারকারী সফলভাবে ফ্রোজ করা হয়েছে।';

  @override
  String get userUnfrozenSuccess => 'ব্যবহারকারী সফলভাবে আনফ্রোজ করা হয়েছে।';

  @override
  String get createUser => 'ব্যবহারকারী তৈরি';

  @override
  String get editUser => 'ব্যবহারকারী সম্পাদনা';

  @override
  String get userInformation => 'ব্যবহারকারীর তথ্য';

  @override
  String get fullName => 'পূর্ণ নাম';

  @override
  String get phone => 'ফোন';

  @override
  String get selectRole => 'ভূমিকা';

  @override
  String get nameRequired => 'নাম প্রয়োজন';

  @override
  String get addUnit => 'ইউনিট যোগ';

  @override
  String get noUnitsFound => 'কোনো ইউনিট পাওয়া যায়নি';

  @override
  String get noUnitsMatchFilter =>
      'আপনার অনুসন্ধান বা ফিল্টারের সাথে কোনো ইউনিট মিলছে না।';

  @override
  String get searchUnitsHint => 'নাম, কোড বা অবস্থান দিয়ে খুঁজুন';

  @override
  String get unitAlertNoQueen => 'রাণী নেই';

  @override
  String get unitAlertLowEggs => 'ডিম কম বা নেই';

  @override
  String get unitAlertMites => 'মাইট আছে';

  @override
  String get unitFilterByLabel => 'সমস্যা অনুযায়ী:';

  @override
  String get unitPrioritySectionTitle => 'কেন উপরে দেখাচ্ছে';

  @override
  String get unitSortedTopLabel => 'উপরে সাজানো কারণ:';

  @override
  String get unitPriorityRank1 => '১. রাণী নেই';

  @override
  String get unitPriorityRank2 => '২. ডিম কম বা নেই';

  @override
  String get unitPriorityRank3 => '৩. মাইট আছে';

  @override
  String get unitPriorityReasonNoQueen =>
      'সর্বশেষ এন্ট্রিতে রাণী নেই। এই ইউনিটে দ্রুত ব্যবস্থা নিন।';

  @override
  String get unitPriorityReasonLowEggs =>
      'সর্বশেষ এন্ট্রিতে ডিম/ব্রুড কম বা নেই। শীঘ্রই খোঁজ নিন।';

  @override
  String get unitPriorityReasonMites =>
      'সর্বশেষ এন্ট্রিতে মাইট পাওয়া গেছে। চিকিৎসা বা ফলো-আপ দরকার হতে পারে।';

  @override
  String unitPriorityAlso(String issues) {
    return 'আরও: $issues';
  }

  @override
  String get addUnitHint => 'শুরু করতে একটি নতুন ইউনিট যোগ করুন।';

  @override
  String get unitCreatedSuccess => 'ইউনিট সফলভাবে তৈরি হয়েছে।';

  @override
  String get unitUpdatedSuccess => 'ইউনিট সফলভাবে আপডেট হয়েছে।';

  @override
  String get unitDeletedSuccess => 'ইউনিট সফলভাবে মুছে ফেলা হয়েছে।';

  @override
  String get unitNotFound => 'ইউনিট পাওয়া যায়নি।';

  @override
  String get createUnit => 'ইউনিট তৈরি';

  @override
  String get editUnit => 'ইউনিট সম্পাদনা';

  @override
  String get unitDetails => 'ইউনিট বিবরণ';

  @override
  String get unitInformation => 'ইউনিট তথ্য';

  @override
  String get unitName => 'ইউনিটের নাম';

  @override
  String get unitCode => 'ইউনিট কোড';

  @override
  String get unitStatus => 'অবস্থা';

  @override
  String get location => 'অবস্থান';

  @override
  String get notes => 'নোট';

  @override
  String get created => 'তৈরির তারিখ';

  @override
  String get createdBy => 'তৈরি করেছেন';

  @override
  String get qrCode => 'QR কোড';

  @override
  String get viewChecklistEntries => 'চেকলিস্ট এন্ট্রি দেখুন';

  @override
  String get deleteUnit => 'ইউনিট মুছুন';

  @override
  String get deleteUnitConfirm => 'আপনি কি এই ইউনিট মুছতে চান?';

  @override
  String get checklistEntries => 'চেকলিস্ট এন্ট্রি';

  @override
  String get noEntriesYet => 'এখনো কোনো এন্ট্রি নেই';

  @override
  String get addEntryHint =>
      'চেকলিস্ট এন্ট্রি যোগ করতে নিচের বোতামে ট্যাপ করুন।';

  @override
  String get deleteEntry => 'এন্ট্রি মুছুন';

  @override
  String get deleteEntryConfirm => 'আপনি কি এই এন্ট্রি মুছতে চান?';

  @override
  String get entryCreatedSuccess => 'এন্ট্রি সফলভাবে তৈরি হয়েছে।';

  @override
  String get entryUpdatedSuccess => 'এন্ট্রি সফলভাবে আপডেট হয়েছে।';

  @override
  String get entryDeletedSuccess => 'এন্ট্রি সফলভাবে মুছে ফেলা হয়েছে।';

  @override
  String get editEntry => 'এন্ট্রি সম্পাদনা';

  @override
  String get newEntry => 'নতুন এন্ট্রি';

  @override
  String get issueFound => 'সমস্যা পাওয়া গেছে';

  @override
  String get maintenanceRequired => 'রক্ষণাবেক্ষণ প্রয়োজন';

  @override
  String get issueFoundSwitch => 'সমস্যা পাওয়া গেছে';

  @override
  String get maintenanceRequiredSwitch => 'রক্ষণাবেক্ষণ প্রয়োজন';

  @override
  String get configCreatedSuccess => 'কনফিগ সফলভাবে তৈরি হয়েছে।';

  @override
  String get configUpdatedSuccess => 'কনফিগ সফলভাবে আপডেট হয়েছে।';

  @override
  String get configDeletedSuccess => 'কনফিগ সফলভাবে মুছে ফেলা হয়েছে।';

  @override
  String get configOrderSavedSuccess => 'ক্রম সংরক্ষিত হয়েছে।';

  @override
  String get checklistConfig => 'চেকলিস্ট কনফিগ';

  @override
  String get addField => 'ফিল্ড যোগ';

  @override
  String get editFieldConfig => 'ফিল্ড কনফিগ সম্পাদনা';

  @override
  String get newFieldConfig => 'নতুন ফিল্ড কনফিগ';

  @override
  String get selectOptionsRequired =>
      'সিলেক্ট ফিল্ডের জন্য কমপক্ষে একটি অপশন যোগ করুন।';

  @override
  String get noConfigsFound => 'এখনো কোনো ফিল্ড কনফিগ নেই';

  @override
  String get addConfigHint => 'চেকলিস্ট এন্ট্রির জন্য কাস্টম ফিল্ড যোগ করুন।';

  @override
  String get dragToReorder => 'ফিল্ড সাজাতে টেনে আনুন';

  @override
  String get required => 'আবশ্যক';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get active => 'সক্রিয়';

  @override
  String get inactive => 'নিষ্ক্রিয়';

  @override
  String get healthy => 'সুস্থ';

  @override
  String get warning => 'সতর্কতা';

  @override
  String get critical => 'জরুরি';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get unknownShort => '?';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get notDone => 'সম্পন্ন নয়';

  @override
  String get none => 'কিছু নেই';

  @override
  String get veryLow => 'খুব কম';

  @override
  String get low => 'কম';

  @override
  String get normal => 'স্বাভাবিক';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get photo => 'ছবি';

  @override
  String get selectImage => 'ছবি নির্বাচন';

  @override
  String get changeImage => 'ছবি পরিবর্তন';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get additionalNotes => 'অতিরিক্ত নোট...';

  @override
  String get customFields => 'কাস্টম ফিল্ড';

  @override
  String get status => 'অবস্থা';

  @override
  String get condition => 'অবস্থা:';

  @override
  String get dateTime => 'তারিখ ও সময়';

  @override
  String get entryDate => 'এন্ট্রি তারিখ';

  @override
  String get entryTime => 'এন্ট্রি সময়';

  @override
  String get selectDate => 'তারিখ নির্বাচন';

  @override
  String get selectTime => 'সময় নির্বাচন';

  @override
  String get hiveInspection => 'খোঁয়াড় পরিদর্শন';

  @override
  String get queenBirthDate => 'রানীর জন্ম তারিখ';

  @override
  String get selectDateOptional => 'তারিখ নির্বাচন (ঐচ্ছিক)';

  @override
  String get queenLayingEggs => 'রানী ডিম পাচ্ছে?';

  @override
  String get queenPresent => 'রানী আছে?';

  @override
  String get queenMated => 'রানী মেটিং হয়েছে?';

  @override
  String get mitesPresent => 'মাইট আছে?';

  @override
  String get sealedBrood => 'সিল করা ব্রুড';

  @override
  String get pollen => 'পরাগ';

  @override
  String get queenCells => 'রানী কক্ষ?';

  @override
  String get queenCellAge => 'রানী কক্ষের বয়স';

  @override
  String get queenCellAgeHint => 'যেমন: দিন';

  @override
  String get queenCellAgeRequired => 'রানী কক্ষ = হ্যাঁ হলে বয়স প্রয়োজন';

  @override
  String get pleaseSelectOption => 'একটি অপশন নির্বাচন করুন';

  @override
  String get ageRequired => 'বয়স প্রয়োজন';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ';

  @override
  String get submitEntry => 'এন্ট্রি জমা দিন';

  @override
  String enterFieldHint(String name) {
    return '$name লিখুন...';
  }

  @override
  String get beeQueen => 'রানী';

  @override
  String get beeEggs => 'ডিম';

  @override
  String get beeMites => 'মাইট';

  @override
  String get beeBrood => 'ব্রুড';

  @override
  String get noInternet => 'ইন্টারনেট সংযোগ নেই।';

  @override
  String get networkError => 'নেটওয়ার্ক ত্রুটি। আবার চেষ্টা করুন।';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get checkInput => 'আপনার ইনপুট পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get validationFailed => 'validation failed';

  @override
  String get roleSuperAdminLabel => 'super_admin';

  @override
  String get roleAdminLabel => 'admin';

  @override
  String get roleUserLabel => 'user';

  @override
  String get passwordLeaveBlankKeep =>
      'পাসওয়ার্ড (অপরিবর্তিত রাখতে খালি রাখুন)';

  @override
  String get passwordMinEight => 'পাসওয়ার্ড কমপক্ষে ৮ অক্ষরের হতে হবে';

  @override
  String get unitNameRequired => 'ইউনিটের নাম প্রয়োজন';

  @override
  String get unitCodeRequired => 'ইউনিট কোড প্রয়োজন';

  @override
  String get fieldConfiguration => 'ফিল্ড কনফিগারেশন';

  @override
  String get checklistFieldName => 'ফিল্ডের নাম';

  @override
  String get fieldKeySnakeCase => 'ফিল্ড কি (স্নেক_কেস)';

  @override
  String get fieldKeyInvalid =>
      'ছোট হাতের অক্ষর, সংখ্যা ও আন্ডারস্কোর ব্যবহার করুন';

  @override
  String get fieldNameRequiredGeneric => 'ফিল্ডের নাম প্রয়োজন';

  @override
  String get fieldKeyRequiredGeneric => 'ফিল্ড কি প্রয়োজন';

  @override
  String get fieldType => 'ফিল্ডের ধরন';

  @override
  String get optionsLabel => 'অপশন';

  @override
  String get addOptionPlaceholder => 'একটি অপশন যোগ করুন...';

  @override
  String get add => 'যোগ';

  @override
  String get requiredFieldHint => 'ব্যবহারকারীকে এই ফিল্ড পূরণ করতে হবে';

  @override
  String get activeFieldHint => 'চেকলিস্ট ফর্মে এই ফিল্ড দেখান';

  @override
  String get createField => 'ফিল্ড তৈরি';

  @override
  String get deleteFieldConfig => 'ফিল্ড কনফিগ মুছুন';

  @override
  String get deleteFieldConfigConfirm => 'আপনি কি এই ফিল্ড কনফিগ মুছতে চান?';

  @override
  String fieldRequiredNamed(String fieldName) {
    return '$fieldName প্রয়োজন';
  }

  @override
  String routeNotFound(String path) {
    return 'রুট পাওয়া যায়নি: $path';
  }

  @override
  String get deleteUnitConfirmFull =>
      'আপনি কি এই ইউনিট মুছতে চান? এটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get phoneOptional => 'ফোন (ঐচ্ছিক)';

  @override
  String get emailAddress => 'ইমেইল ঠিকানা';

  @override
  String get enterPassword => 'পাসওয়ার্ড লিখুন';

  @override
  String get save => 'সংরক্ষণ';
}
