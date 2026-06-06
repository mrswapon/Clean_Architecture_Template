// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Farm Manager';

  @override
  String get farmManager => 'Farm Manager';

  @override
  String get unitManagementSystem => 'Unit Management System';

  @override
  String get farmUnitManagementV => 'Farm Unit Management System v1.0';

  @override
  String get signIn => 'Sign In';

  @override
  String get signInToAccount => 'Sign in to your account';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get validEmail => 'Enter a valid email';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get minPassword => 'Minimum 6 characters';

  @override
  String get logout => 'Logout';

  @override
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get bangla => 'বাংলা';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get units => 'Units';

  @override
  String get users => 'Users';

  @override
  String get configs => 'Configs';

  @override
  String get scanQr => 'Scan QR';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get quickNavigation => 'Quick Navigation';

  @override
  String get goodMorning => 'Good Morning';

  @override
  String get goodAfternoon => 'Good Afternoon';

  @override
  String get goodEvening => 'Good Evening';

  @override
  String get haveProductiveDay => 'Have a productive day at the farm!';

  @override
  String helloName(String name) {
    return 'Hello, $name';
  }

  @override
  String welcomeName(String name) {
    return 'Welcome, $name';
  }

  @override
  String get accountFrozen => 'Account Frozen';

  @override
  String get accountFrozenBanner =>
      'Your account has been frozen. Please contact an administrator.';

  @override
  String get accountFrozenDetail =>
      'Your account has been frozen by an administrator. You cannot perform any actions until your account is unfrozen.';

  @override
  String get contactAdmin => 'Please contact an administrator.';

  @override
  String get totalUnits => 'Total Units';

  @override
  String get todaysEntries => 'Today\'s Entries';

  @override
  String get activeUsers => 'Active Users';

  @override
  String get viewUnits => 'View Units';

  @override
  String get viewAllUnits => 'View All Units →';

  @override
  String get farmUnits => 'Farm Units';

  @override
  String get farmUnitsSubtitle => 'View and manage units';

  @override
  String get usersSubtitle => 'Manage system users';

  @override
  String get fieldConfigs => 'Field Configs';

  @override
  String get fieldConfigsSubtitle => 'Configure checklist fields';

  @override
  String get addEntry => 'Add Entry';

  @override
  String get addEntrySubtitle => 'Quick checklist entry';

  @override
  String get findingUnit => 'Finding unit...';

  @override
  String get noUnitsAvailable => 'No units available.';

  @override
  String get scanQrCode => 'Scan QR Code';

  @override
  String get alignQrFrame => 'Align QR code within the frame';

  @override
  String get administrator => 'Administrator';

  @override
  String get admin => 'Admin';

  @override
  String get user => 'User';

  @override
  String get superAdmin => 'Super Admin';

  @override
  String get superAdminBadge => 'SUPER ADMIN';

  @override
  String get systemManagement => 'System Management';

  @override
  String get manageUsers => 'Manage Users';

  @override
  String get adminsAndUsers => 'Admins & Users';

  @override
  String get allUnits => 'All units';

  @override
  String get fieldBuilder => 'Field builder';

  @override
  String get addAdmin => 'Add Admin';

  @override
  String get createAdminAccount => 'Create admin account';

  @override
  String get rolePermissions => 'Role Permissions';

  @override
  String get roleSuperAdmin => 'Super Admin';

  @override
  String get roleAdmin => 'Admin';

  @override
  String get roleUser => 'User';

  @override
  String get roleFrozenUser => 'Frozen User';

  @override
  String get permCreateManageAdmins => 'Create & manage Admins and Users';

  @override
  String get permSwitchRoles => 'Switch any user\'s role';

  @override
  String get permFreezeAny => 'Freeze / unfreeze any account';

  @override
  String get permFullAccess => 'Full access to all features';

  @override
  String get permCreateManageUsers => 'Create & manage Users only';

  @override
  String get permFreezeUsers => 'Freeze / unfreeze user accounts';

  @override
  String get permManageUnitsChecklist => 'Manage farm units & checklist';

  @override
  String get permViewReports => 'View all reports';

  @override
  String get permViewAssignedUnits => 'View assigned farm units';

  @override
  String get permAddTodaysEntries => 'Add today\'s checklist entries';

  @override
  String get permEditOwnToday => 'Edit own entries (today only)';

  @override
  String get permCannotLogin => 'Cannot log in or perform actions';

  @override
  String get permAccountSuspended => 'Account suspended by admin';

  @override
  String get userManagement => 'User Management';

  @override
  String get addUser => 'Add User';

  @override
  String get roleLabel => 'Role:';

  @override
  String get statusLabel => 'Status:';

  @override
  String get filterAll => 'all';

  @override
  String get filterActive => 'active';

  @override
  String get filterFrozen => 'frozen';

  @override
  String get frozen => 'Frozen';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get unfreeze => 'Unfreeze';

  @override
  String get freeze => 'Freeze';

  @override
  String get deleteUser => 'Delete User';

  @override
  String get deleteUserConfirm =>
      'Are you sure you want to delete this user? This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get noUsersFound => 'No users found';

  @override
  String get retry => 'Retry';

  @override
  String get pullToRefresh => 'Pull to refresh';

  @override
  String get unknown => 'Unknown';

  @override
  String get userCreatedSuccess => 'User created successfully.';

  @override
  String get userUpdatedSuccess => 'User updated successfully.';

  @override
  String get userDeletedSuccess => 'User deleted successfully.';

  @override
  String get userFrozenSuccess => 'User frozen successfully.';

  @override
  String get userUnfrozenSuccess => 'User unfrozen successfully.';

  @override
  String get createUser => 'Create User';

  @override
  String get editUser => 'Edit User';

  @override
  String get userInformation => 'User Information';

  @override
  String get fullName => 'Full Name';

  @override
  String get phone => 'Phone';

  @override
  String get selectRole => 'Role';

  @override
  String get nameRequired => 'Name is required';

  @override
  String get addUnit => 'Add Unit';

  @override
  String get noUnitsFound => 'No units found';

  @override
  String get noUnitsMatchFilter => 'No units match your search or filter.';

  @override
  String get searchUnitsHint => 'Search by name, code, or location';

  @override
  String get unitAlertNoQueen => 'No queen';

  @override
  String get unitAlertLowEggs => 'Low/no eggs';

  @override
  String get unitAlertMites => 'Mites found';

  @override
  String get unitFilterByLabel => 'Filter by issue:';

  @override
  String get unitPrioritySectionTitle => 'Why listed first';

  @override
  String get unitSortedTopLabel => 'Sorted to top because:';

  @override
  String get unitPriorityRank1 => '1. No queen';

  @override
  String get unitPriorityRank2 => '2. Low/no eggs';

  @override
  String get unitPriorityRank3 => '3. Mites found';

  @override
  String get unitPriorityReasonNoQueen =>
      'Latest entry reports the queen is missing. This unit needs urgent attention.';

  @override
  String get unitPriorityReasonLowEggs =>
      'Latest entry shows low or no egg/brood activity. Check the hive soon.';

  @override
  String get unitPriorityReasonMites =>
      'Latest entry detected mites. Treatment or follow-up may be needed.';

  @override
  String unitPriorityAlso(String issues) {
    return 'Also: $issues';
  }

  @override
  String get addUnitHint => 'Add a new unit to get started.';

  @override
  String get unitCreatedSuccess => 'Unit created successfully.';

  @override
  String get unitUpdatedSuccess => 'Unit updated successfully.';

  @override
  String get unitDeletedSuccess => 'Unit deleted successfully.';

  @override
  String get unitNotFound => 'Unit not found.';

  @override
  String get createUnit => 'Create Unit';

  @override
  String get editUnit => 'Edit Unit';

  @override
  String get unitDetails => 'Unit Details';

  @override
  String get unitInformation => 'Unit Information';

  @override
  String get unitName => 'Unit Name';

  @override
  String get unitCode => 'Unit Code';

  @override
  String get unitStatus => 'Status';

  @override
  String get location => 'Location';

  @override
  String get notes => 'Notes';

  @override
  String get created => 'Created';

  @override
  String get createdBy => 'Created By';

  @override
  String get qrCode => 'QR Code';

  @override
  String get viewChecklistEntries => 'View Checklist Entries';

  @override
  String get deleteUnit => 'Delete Unit';

  @override
  String get deleteUnitConfirm => 'Are you sure you want to delete this unit?';

  @override
  String get checklistEntries => 'Checklist Entries';

  @override
  String get noEntriesYet => 'No entries yet';

  @override
  String get addEntryHint => 'Tap the button below to add a checklist entry.';

  @override
  String get deleteEntry => 'Delete Entry';

  @override
  String get deleteEntryConfirm =>
      'Are you sure you want to delete this entry?';

  @override
  String get entryCreatedSuccess => 'Entry created successfully.';

  @override
  String get entryUpdatedSuccess => 'Entry updated successfully.';

  @override
  String get entryDeletedSuccess => 'Entry deleted successfully.';

  @override
  String get editEntry => 'Edit Entry';

  @override
  String get newEntry => 'New Entry';

  @override
  String get issueFound => 'Issue Found';

  @override
  String get maintenanceRequired => 'Maintenance Required';

  @override
  String get issueFoundSwitch => 'Issue found';

  @override
  String get maintenanceRequiredSwitch => 'Maintenance required';

  @override
  String get configCreatedSuccess => 'Config created successfully.';

  @override
  String get configUpdatedSuccess => 'Config updated successfully.';

  @override
  String get configDeletedSuccess => 'Config deleted successfully.';

  @override
  String get configOrderSavedSuccess => 'Order saved.';

  @override
  String get checklistConfig => 'Checklist Config';

  @override
  String get addField => 'Add Field';

  @override
  String get editFieldConfig => 'Edit Field Config';

  @override
  String get newFieldConfig => 'New Field Config';

  @override
  String get selectOptionsRequired =>
      'Please add at least one option for select fields.';

  @override
  String get noConfigsFound => 'No field configs yet';

  @override
  String get addConfigHint => 'Add custom fields for checklist entries.';

  @override
  String get dragToReorder => 'Drag to reorder fields';

  @override
  String get required => 'Required';

  @override
  String get optional => 'Optional';

  @override
  String get active => 'Active';

  @override
  String get inactive => 'Inactive';

  @override
  String get healthy => 'Healthy';

  @override
  String get warning => 'Warning';

  @override
  String get critical => 'Critical';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get unknownShort => '?';

  @override
  String get done => 'Done';

  @override
  String get notDone => 'Not done';

  @override
  String get none => 'None';

  @override
  String get veryLow => 'Very low';

  @override
  String get low => 'Low';

  @override
  String get normal => 'Normal';

  @override
  String get ok => 'OK';

  @override
  String get photo => 'Photo';

  @override
  String get selectImage => 'Select image';

  @override
  String get changeImage => 'Change image';

  @override
  String get comments => 'Comments';

  @override
  String get additionalNotes => 'Additional notes...';

  @override
  String get customFields => 'Custom fields';

  @override
  String get status => 'Status';

  @override
  String get condition => 'Condition:';

  @override
  String get dateTime => 'Date & Time';

  @override
  String get entryDate => 'Entry date';

  @override
  String get entryTime => 'Entry time';

  @override
  String get selectDate => 'Select date';

  @override
  String get selectTime => 'Select time';

  @override
  String get hiveInspection => 'Hive inspection';

  @override
  String get queenBirthDate => 'Queen birth date';

  @override
  String get selectDateOptional => 'Select date (optional)';

  @override
  String get queenLayingEggs => 'Queen laying eggs?';

  @override
  String get queenPresent => 'Queen present?';

  @override
  String get queenMated => 'Queen mated?';

  @override
  String get mitesPresent => 'Mites present?';

  @override
  String get sealedBrood => 'Sealed brood';

  @override
  String get pollen => 'Pollen';

  @override
  String get queenCells => 'Queen cells?';

  @override
  String get queenCellAge => 'Queen cell age';

  @override
  String get queenCellAgeHint => 'e.g. days';

  @override
  String get queenCellAgeRequired => 'Age is required when queen cells = Yes';

  @override
  String get pleaseSelectOption => 'Please select an option';

  @override
  String get ageRequired => 'Age is required';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get submitEntry => 'Submit entry';

  @override
  String enterFieldHint(String name) {
    return 'Enter $name...';
  }

  @override
  String get beeQueen => 'Queen';

  @override
  String get beeEggs => 'Eggs';

  @override
  String get beeMites => 'Mites';

  @override
  String get beeBrood => 'Brood';

  @override
  String get noInternet => 'No internet connection.';

  @override
  String get networkError => 'Network error. Please try again.';

  @override
  String get somethingWentWrong => 'Something went wrong. Please try again.';

  @override
  String get checkInput => 'Please check your input and try again.';

  @override
  String get validationFailed => 'validation failed';

  @override
  String get roleSuperAdminLabel => 'super_admin';

  @override
  String get roleAdminLabel => 'admin';

  @override
  String get roleUserLabel => 'user';

  @override
  String get passwordLeaveBlankKeep => 'Password (leave blank to keep)';

  @override
  String get passwordMinEight => 'Password must be at least 8 characters';

  @override
  String get unitNameRequired => 'Unit name is required';

  @override
  String get unitCodeRequired => 'Unit code is required';

  @override
  String get fieldConfiguration => 'Field Configuration';

  @override
  String get checklistFieldName => 'Field Name';

  @override
  String get fieldKeySnakeCase => 'Field Key (snake_case)';

  @override
  String get fieldKeyInvalid =>
      'Use lowercase letters, numbers, and underscores only';

  @override
  String get fieldNameRequiredGeneric => 'Field name is required';

  @override
  String get fieldKeyRequiredGeneric => 'Field key is required';

  @override
  String get fieldType => 'Field Type';

  @override
  String get optionsLabel => 'Options';

  @override
  String get addOptionPlaceholder => 'Add an option...';

  @override
  String get add => 'Add';

  @override
  String get requiredFieldHint => 'User must fill this field';

  @override
  String get activeFieldHint => 'Show this field in the checklist form';

  @override
  String get createField => 'Create Field';

  @override
  String get deleteFieldConfig => 'Delete Field Config';

  @override
  String get deleteFieldConfigConfirm =>
      'Are you sure you want to delete this field config?';

  @override
  String fieldRequiredNamed(String fieldName) {
    return '$fieldName is required';
  }

  @override
  String routeNotFound(String path) {
    return 'Route not found: $path';
  }

  @override
  String get deleteUnitConfirmFull =>
      'Are you sure you want to delete this unit? This action cannot be undone.';

  @override
  String get phoneOptional => 'Phone (optional)';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get enterPassword => 'Enter password';

  @override
  String get save => 'Save';
}
