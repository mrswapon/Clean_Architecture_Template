import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Farm Manager'**
  String get appTitle;

  /// No description provided for @farmManager.
  ///
  /// In en, this message translates to:
  /// **'Farm Manager'**
  String get farmManager;

  /// No description provided for @unitManagementSystem.
  ///
  /// In en, this message translates to:
  /// **'Unit Management System'**
  String get unitManagementSystem;

  /// No description provided for @farmUnitManagementV.
  ///
  /// In en, this message translates to:
  /// **'Farm Unit Management System v1.0'**
  String get farmUnitManagementV;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInToAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your account'**
  String get signInToAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @validEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get validEmail;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @minPassword.
  ///
  /// In en, this message translates to:
  /// **'Minimum 6 characters'**
  String get minPassword;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @bangla.
  ///
  /// In en, this message translates to:
  /// **'বাংলা'**
  String get bangla;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @units.
  ///
  /// In en, this message translates to:
  /// **'Units'**
  String get units;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @configs.
  ///
  /// In en, this message translates to:
  /// **'Configs'**
  String get configs;

  /// No description provided for @scanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan QR'**
  String get scanQr;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @quickNavigation.
  ///
  /// In en, this message translates to:
  /// **'Quick Navigation'**
  String get quickNavigation;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get goodMorning;

  /// No description provided for @goodAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get goodAfternoon;

  /// No description provided for @goodEvening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get goodEvening;

  /// No description provided for @haveProductiveDay.
  ///
  /// In en, this message translates to:
  /// **'Have a productive day at the farm!'**
  String get haveProductiveDay;

  /// No description provided for @helloName.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}'**
  String helloName(String name);

  /// No description provided for @welcomeName.
  ///
  /// In en, this message translates to:
  /// **'Welcome, {name}'**
  String welcomeName(String name);

  /// No description provided for @accountFrozen.
  ///
  /// In en, this message translates to:
  /// **'Account Frozen'**
  String get accountFrozen;

  /// No description provided for @accountFrozenBanner.
  ///
  /// In en, this message translates to:
  /// **'Your account has been frozen. Please contact an administrator.'**
  String get accountFrozenBanner;

  /// No description provided for @accountFrozenDetail.
  ///
  /// In en, this message translates to:
  /// **'Your account has been frozen by an administrator. You cannot perform any actions until your account is unfrozen.'**
  String get accountFrozenDetail;

  /// No description provided for @contactAdmin.
  ///
  /// In en, this message translates to:
  /// **'Please contact an administrator.'**
  String get contactAdmin;

  /// No description provided for @totalUnits.
  ///
  /// In en, this message translates to:
  /// **'Total Units'**
  String get totalUnits;

  /// No description provided for @todaysEntries.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Entries'**
  String get todaysEntries;

  /// No description provided for @activeUsers.
  ///
  /// In en, this message translates to:
  /// **'Active Users'**
  String get activeUsers;

  /// No description provided for @viewUnits.
  ///
  /// In en, this message translates to:
  /// **'View Units'**
  String get viewUnits;

  /// No description provided for @viewAllUnits.
  ///
  /// In en, this message translates to:
  /// **'View All Units →'**
  String get viewAllUnits;

  /// No description provided for @farmUnits.
  ///
  /// In en, this message translates to:
  /// **'Farm Units'**
  String get farmUnits;

  /// No description provided for @farmUnitsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'View and manage units'**
  String get farmUnitsSubtitle;

  /// No description provided for @usersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage system users'**
  String get usersSubtitle;

  /// No description provided for @fieldConfigs.
  ///
  /// In en, this message translates to:
  /// **'Field Configs'**
  String get fieldConfigs;

  /// No description provided for @fieldConfigsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure checklist fields'**
  String get fieldConfigsSubtitle;

  /// No description provided for @addEntry.
  ///
  /// In en, this message translates to:
  /// **'Add Entry'**
  String get addEntry;

  /// No description provided for @addEntrySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Quick checklist entry'**
  String get addEntrySubtitle;

  /// No description provided for @findingUnit.
  ///
  /// In en, this message translates to:
  /// **'Finding unit...'**
  String get findingUnit;

  /// No description provided for @noUnitsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No units available.'**
  String get noUnitsAvailable;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCode;

  /// No description provided for @alignQrFrame.
  ///
  /// In en, this message translates to:
  /// **'Align QR code within the frame'**
  String get alignQrFrame;

  /// No description provided for @administrator.
  ///
  /// In en, this message translates to:
  /// **'Administrator'**
  String get administrator;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @superAdmin.
  ///
  /// In en, this message translates to:
  /// **'Super Admin'**
  String get superAdmin;

  /// No description provided for @superAdminBadge.
  ///
  /// In en, this message translates to:
  /// **'SUPER ADMIN'**
  String get superAdminBadge;

  /// No description provided for @systemManagement.
  ///
  /// In en, this message translates to:
  /// **'System Management'**
  String get systemManagement;

  /// No description provided for @manageUsers.
  ///
  /// In en, this message translates to:
  /// **'Manage Users'**
  String get manageUsers;

  /// No description provided for @adminsAndUsers.
  ///
  /// In en, this message translates to:
  /// **'Admins & Users'**
  String get adminsAndUsers;

  /// No description provided for @allUnits.
  ///
  /// In en, this message translates to:
  /// **'All units'**
  String get allUnits;

  /// No description provided for @fieldBuilder.
  ///
  /// In en, this message translates to:
  /// **'Field builder'**
  String get fieldBuilder;

  /// No description provided for @addAdmin.
  ///
  /// In en, this message translates to:
  /// **'Add Admin'**
  String get addAdmin;

  /// No description provided for @createAdminAccount.
  ///
  /// In en, this message translates to:
  /// **'Create admin account'**
  String get createAdminAccount;

  /// No description provided for @rolePermissions.
  ///
  /// In en, this message translates to:
  /// **'Role Permissions'**
  String get rolePermissions;

  /// No description provided for @roleSuperAdmin.
  ///
  /// In en, this message translates to:
  /// **'Super Admin'**
  String get roleSuperAdmin;

  /// No description provided for @roleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get roleAdmin;

  /// No description provided for @roleUser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get roleUser;

  /// No description provided for @roleFrozenUser.
  ///
  /// In en, this message translates to:
  /// **'Frozen User'**
  String get roleFrozenUser;

  /// No description provided for @permCreateManageAdmins.
  ///
  /// In en, this message translates to:
  /// **'Create & manage Admins and Users'**
  String get permCreateManageAdmins;

  /// No description provided for @permSwitchRoles.
  ///
  /// In en, this message translates to:
  /// **'Switch any user\'s role'**
  String get permSwitchRoles;

  /// No description provided for @permFreezeAny.
  ///
  /// In en, this message translates to:
  /// **'Freeze / unfreeze any account'**
  String get permFreezeAny;

  /// No description provided for @permFullAccess.
  ///
  /// In en, this message translates to:
  /// **'Full access to all features'**
  String get permFullAccess;

  /// No description provided for @permCreateManageUsers.
  ///
  /// In en, this message translates to:
  /// **'Create & manage Users only'**
  String get permCreateManageUsers;

  /// No description provided for @permFreezeUsers.
  ///
  /// In en, this message translates to:
  /// **'Freeze / unfreeze user accounts'**
  String get permFreezeUsers;

  /// No description provided for @permManageUnitsChecklist.
  ///
  /// In en, this message translates to:
  /// **'Manage farm units & checklist'**
  String get permManageUnitsChecklist;

  /// No description provided for @permViewReports.
  ///
  /// In en, this message translates to:
  /// **'View all reports'**
  String get permViewReports;

  /// No description provided for @permViewAssignedUnits.
  ///
  /// In en, this message translates to:
  /// **'View assigned farm units'**
  String get permViewAssignedUnits;

  /// No description provided for @permAddTodaysEntries.
  ///
  /// In en, this message translates to:
  /// **'Add today\'s checklist entries'**
  String get permAddTodaysEntries;

  /// No description provided for @permEditOwnToday.
  ///
  /// In en, this message translates to:
  /// **'Edit own entries (today only)'**
  String get permEditOwnToday;

  /// No description provided for @permCannotLogin.
  ///
  /// In en, this message translates to:
  /// **'Cannot log in or perform actions'**
  String get permCannotLogin;

  /// No description provided for @permAccountSuspended.
  ///
  /// In en, this message translates to:
  /// **'Account suspended by admin'**
  String get permAccountSuspended;

  /// No description provided for @userManagement.
  ///
  /// In en, this message translates to:
  /// **'User Management'**
  String get userManagement;

  /// No description provided for @addUser.
  ///
  /// In en, this message translates to:
  /// **'Add User'**
  String get addUser;

  /// No description provided for @roleLabel.
  ///
  /// In en, this message translates to:
  /// **'Role:'**
  String get roleLabel;

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status:'**
  String get statusLabel;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'all'**
  String get filterAll;

  /// No description provided for @filterActive.
  ///
  /// In en, this message translates to:
  /// **'active'**
  String get filterActive;

  /// No description provided for @filterFrozen.
  ///
  /// In en, this message translates to:
  /// **'frozen'**
  String get filterFrozen;

  /// No description provided for @frozen.
  ///
  /// In en, this message translates to:
  /// **'Frozen'**
  String get frozen;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @unfreeze.
  ///
  /// In en, this message translates to:
  /// **'Unfreeze'**
  String get unfreeze;

  /// No description provided for @freeze.
  ///
  /// In en, this message translates to:
  /// **'Freeze'**
  String get freeze;

  /// No description provided for @deleteUser.
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get deleteUser;

  /// No description provided for @deleteUserConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this user? This action cannot be undone.'**
  String get deleteUserConfirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @noUsersFound.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsersFound;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @pullToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh'**
  String get pullToRefresh;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @userCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'User created successfully.'**
  String get userCreatedSuccess;

  /// No description provided for @userUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'User updated successfully.'**
  String get userUpdatedSuccess;

  /// No description provided for @userDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'User deleted successfully.'**
  String get userDeletedSuccess;

  /// No description provided for @userFrozenSuccess.
  ///
  /// In en, this message translates to:
  /// **'User frozen successfully.'**
  String get userFrozenSuccess;

  /// No description provided for @userUnfrozenSuccess.
  ///
  /// In en, this message translates to:
  /// **'User unfrozen successfully.'**
  String get userUnfrozenSuccess;

  /// No description provided for @createUser.
  ///
  /// In en, this message translates to:
  /// **'Create User'**
  String get createUser;

  /// No description provided for @editUser.
  ///
  /// In en, this message translates to:
  /// **'Edit User'**
  String get editUser;

  /// No description provided for @userInformation.
  ///
  /// In en, this message translates to:
  /// **'User Information'**
  String get userInformation;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @selectRole.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get selectRole;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameRequired;

  /// No description provided for @addUnit.
  ///
  /// In en, this message translates to:
  /// **'Add Unit'**
  String get addUnit;

  /// No description provided for @noUnitsFound.
  ///
  /// In en, this message translates to:
  /// **'No units found'**
  String get noUnitsFound;

  /// No description provided for @noUnitsMatchFilter.
  ///
  /// In en, this message translates to:
  /// **'No units match your search or filter.'**
  String get noUnitsMatchFilter;

  /// No description provided for @searchUnitsHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name, code, or location'**
  String get searchUnitsHint;

  /// No description provided for @unitAlertNoQueen.
  ///
  /// In en, this message translates to:
  /// **'No queen'**
  String get unitAlertNoQueen;

  /// No description provided for @unitAlertLowEggs.
  ///
  /// In en, this message translates to:
  /// **'Low/no eggs'**
  String get unitAlertLowEggs;

  /// No description provided for @unitAlertMites.
  ///
  /// In en, this message translates to:
  /// **'Mites found'**
  String get unitAlertMites;

  /// No description provided for @unitFilterByLabel.
  ///
  /// In en, this message translates to:
  /// **'Filter by issue:'**
  String get unitFilterByLabel;

  /// No description provided for @unitPrioritySectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Why listed first'**
  String get unitPrioritySectionTitle;

  /// No description provided for @unitSortedTopLabel.
  ///
  /// In en, this message translates to:
  /// **'Sorted to top because:'**
  String get unitSortedTopLabel;

  /// No description provided for @unitPriorityRank1.
  ///
  /// In en, this message translates to:
  /// **'1. No queen'**
  String get unitPriorityRank1;

  /// No description provided for @unitPriorityRank2.
  ///
  /// In en, this message translates to:
  /// **'2. Low/no eggs'**
  String get unitPriorityRank2;

  /// No description provided for @unitPriorityRank3.
  ///
  /// In en, this message translates to:
  /// **'3. Mites found'**
  String get unitPriorityRank3;

  /// No description provided for @unitPriorityReasonNoQueen.
  ///
  /// In en, this message translates to:
  /// **'Latest entry reports the queen is missing. This unit needs urgent attention.'**
  String get unitPriorityReasonNoQueen;

  /// No description provided for @unitPriorityReasonLowEggs.
  ///
  /// In en, this message translates to:
  /// **'Latest entry shows low or no egg/brood activity. Check the hive soon.'**
  String get unitPriorityReasonLowEggs;

  /// No description provided for @unitPriorityReasonMites.
  ///
  /// In en, this message translates to:
  /// **'Latest entry detected mites. Treatment or follow-up may be needed.'**
  String get unitPriorityReasonMites;

  /// No description provided for @unitPriorityAlso.
  ///
  /// In en, this message translates to:
  /// **'Also: {issues}'**
  String unitPriorityAlso(String issues);

  /// No description provided for @addUnitHint.
  ///
  /// In en, this message translates to:
  /// **'Add a new unit to get started.'**
  String get addUnitHint;

  /// No description provided for @unitCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Unit created successfully.'**
  String get unitCreatedSuccess;

  /// No description provided for @unitUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Unit updated successfully.'**
  String get unitUpdatedSuccess;

  /// No description provided for @unitDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Unit deleted successfully.'**
  String get unitDeletedSuccess;

  /// No description provided for @unitNotFound.
  ///
  /// In en, this message translates to:
  /// **'Unit not found.'**
  String get unitNotFound;

  /// No description provided for @createUnit.
  ///
  /// In en, this message translates to:
  /// **'Create Unit'**
  String get createUnit;

  /// No description provided for @editUnit.
  ///
  /// In en, this message translates to:
  /// **'Edit Unit'**
  String get editUnit;

  /// No description provided for @unitDetails.
  ///
  /// In en, this message translates to:
  /// **'Unit Details'**
  String get unitDetails;

  /// No description provided for @unitInformation.
  ///
  /// In en, this message translates to:
  /// **'Unit Information'**
  String get unitInformation;

  /// No description provided for @unitName.
  ///
  /// In en, this message translates to:
  /// **'Unit Name'**
  String get unitName;

  /// No description provided for @unitCode.
  ///
  /// In en, this message translates to:
  /// **'Unit Code'**
  String get unitCode;

  /// No description provided for @unitStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get unitStatus;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @createdBy.
  ///
  /// In en, this message translates to:
  /// **'Created By'**
  String get createdBy;

  /// No description provided for @qrCode.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qrCode;

  /// No description provided for @viewChecklistEntries.
  ///
  /// In en, this message translates to:
  /// **'View Checklist Entries'**
  String get viewChecklistEntries;

  /// No description provided for @deleteUnit.
  ///
  /// In en, this message translates to:
  /// **'Delete Unit'**
  String get deleteUnit;

  /// No description provided for @deleteUnitConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this unit?'**
  String get deleteUnitConfirm;

  /// No description provided for @checklistEntries.
  ///
  /// In en, this message translates to:
  /// **'Checklist Entries'**
  String get checklistEntries;

  /// No description provided for @noEntriesYet.
  ///
  /// In en, this message translates to:
  /// **'No entries yet'**
  String get noEntriesYet;

  /// No description provided for @addEntryHint.
  ///
  /// In en, this message translates to:
  /// **'Tap the button below to add a checklist entry.'**
  String get addEntryHint;

  /// No description provided for @deleteEntry.
  ///
  /// In en, this message translates to:
  /// **'Delete Entry'**
  String get deleteEntry;

  /// No description provided for @deleteEntryConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this entry?'**
  String get deleteEntryConfirm;

  /// No description provided for @entryCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Entry created successfully.'**
  String get entryCreatedSuccess;

  /// No description provided for @entryUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Entry updated successfully.'**
  String get entryUpdatedSuccess;

  /// No description provided for @entryDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Entry deleted successfully.'**
  String get entryDeletedSuccess;

  /// No description provided for @editEntry.
  ///
  /// In en, this message translates to:
  /// **'Edit Entry'**
  String get editEntry;

  /// No description provided for @newEntry.
  ///
  /// In en, this message translates to:
  /// **'New Entry'**
  String get newEntry;

  /// No description provided for @issueFound.
  ///
  /// In en, this message translates to:
  /// **'Issue Found'**
  String get issueFound;

  /// No description provided for @maintenanceRequired.
  ///
  /// In en, this message translates to:
  /// **'Maintenance Required'**
  String get maintenanceRequired;

  /// No description provided for @issueFoundSwitch.
  ///
  /// In en, this message translates to:
  /// **'Issue found'**
  String get issueFoundSwitch;

  /// No description provided for @maintenanceRequiredSwitch.
  ///
  /// In en, this message translates to:
  /// **'Maintenance required'**
  String get maintenanceRequiredSwitch;

  /// No description provided for @configCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Config created successfully.'**
  String get configCreatedSuccess;

  /// No description provided for @configUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Config updated successfully.'**
  String get configUpdatedSuccess;

  /// No description provided for @configDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Config deleted successfully.'**
  String get configDeletedSuccess;

  /// No description provided for @configOrderSavedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Order saved.'**
  String get configOrderSavedSuccess;

  /// No description provided for @checklistConfig.
  ///
  /// In en, this message translates to:
  /// **'Checklist Config'**
  String get checklistConfig;

  /// No description provided for @addField.
  ///
  /// In en, this message translates to:
  /// **'Add Field'**
  String get addField;

  /// No description provided for @editFieldConfig.
  ///
  /// In en, this message translates to:
  /// **'Edit Field Config'**
  String get editFieldConfig;

  /// No description provided for @newFieldConfig.
  ///
  /// In en, this message translates to:
  /// **'New Field Config'**
  String get newFieldConfig;

  /// No description provided for @selectOptionsRequired.
  ///
  /// In en, this message translates to:
  /// **'Please add at least one option for select fields.'**
  String get selectOptionsRequired;

  /// No description provided for @noConfigsFound.
  ///
  /// In en, this message translates to:
  /// **'No field configs yet'**
  String get noConfigsFound;

  /// No description provided for @addConfigHint.
  ///
  /// In en, this message translates to:
  /// **'Add custom fields for checklist entries.'**
  String get addConfigHint;

  /// No description provided for @dragToReorder.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder fields'**
  String get dragToReorder;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// No description provided for @healthy.
  ///
  /// In en, this message translates to:
  /// **'Healthy'**
  String get healthy;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get critical;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @unknownShort.
  ///
  /// In en, this message translates to:
  /// **'?'**
  String get unknownShort;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @notDone.
  ///
  /// In en, this message translates to:
  /// **'Not done'**
  String get notDone;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @veryLow.
  ///
  /// In en, this message translates to:
  /// **'Very low'**
  String get veryLow;

  /// No description provided for @low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// No description provided for @normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// No description provided for @selectImage.
  ///
  /// In en, this message translates to:
  /// **'Select image'**
  String get selectImage;

  /// No description provided for @changeImage.
  ///
  /// In en, this message translates to:
  /// **'Change image'**
  String get changeImage;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @additionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Additional notes...'**
  String get additionalNotes;

  /// No description provided for @customFields.
  ///
  /// In en, this message translates to:
  /// **'Custom fields'**
  String get customFields;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @condition.
  ///
  /// In en, this message translates to:
  /// **'Condition:'**
  String get condition;

  /// No description provided for @dateTime.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get dateTime;

  /// No description provided for @entryDate.
  ///
  /// In en, this message translates to:
  /// **'Entry date'**
  String get entryDate;

  /// No description provided for @entryTime.
  ///
  /// In en, this message translates to:
  /// **'Entry time'**
  String get entryTime;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get selectDate;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get selectTime;

  /// No description provided for @hiveInspection.
  ///
  /// In en, this message translates to:
  /// **'Hive inspection'**
  String get hiveInspection;

  /// No description provided for @queenBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Queen birth date'**
  String get queenBirthDate;

  /// No description provided for @selectDateOptional.
  ///
  /// In en, this message translates to:
  /// **'Select date (optional)'**
  String get selectDateOptional;

  /// No description provided for @queenLayingEggs.
  ///
  /// In en, this message translates to:
  /// **'Queen laying eggs?'**
  String get queenLayingEggs;

  /// No description provided for @queenPresent.
  ///
  /// In en, this message translates to:
  /// **'Queen present?'**
  String get queenPresent;

  /// No description provided for @queenMated.
  ///
  /// In en, this message translates to:
  /// **'Queen mated?'**
  String get queenMated;

  /// No description provided for @mitesPresent.
  ///
  /// In en, this message translates to:
  /// **'Mites present?'**
  String get mitesPresent;

  /// No description provided for @sealedBrood.
  ///
  /// In en, this message translates to:
  /// **'Sealed brood'**
  String get sealedBrood;

  /// No description provided for @pollen.
  ///
  /// In en, this message translates to:
  /// **'Pollen'**
  String get pollen;

  /// No description provided for @queenCells.
  ///
  /// In en, this message translates to:
  /// **'Queen cells?'**
  String get queenCells;

  /// No description provided for @queenCellAge.
  ///
  /// In en, this message translates to:
  /// **'Queen cell age'**
  String get queenCellAge;

  /// No description provided for @queenCellAgeHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. days'**
  String get queenCellAgeHint;

  /// No description provided for @queenCellAgeRequired.
  ///
  /// In en, this message translates to:
  /// **'Age is required when queen cells = Yes'**
  String get queenCellAgeRequired;

  /// No description provided for @pleaseSelectOption.
  ///
  /// In en, this message translates to:
  /// **'Please select an option'**
  String get pleaseSelectOption;

  /// No description provided for @ageRequired.
  ///
  /// In en, this message translates to:
  /// **'Age is required'**
  String get ageRequired;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @submitEntry.
  ///
  /// In en, this message translates to:
  /// **'Submit entry'**
  String get submitEntry;

  /// No description provided for @enterFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Enter {name}...'**
  String enterFieldHint(String name);

  /// No description provided for @beeQueen.
  ///
  /// In en, this message translates to:
  /// **'Queen'**
  String get beeQueen;

  /// No description provided for @beeEggs.
  ///
  /// In en, this message translates to:
  /// **'Eggs'**
  String get beeEggs;

  /// No description provided for @beeMites.
  ///
  /// In en, this message translates to:
  /// **'Mites'**
  String get beeMites;

  /// No description provided for @beeBrood.
  ///
  /// In en, this message translates to:
  /// **'Brood'**
  String get beeBrood;

  /// No description provided for @noInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get noInternet;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Network error. Please try again.'**
  String get networkError;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get somethingWentWrong;

  /// No description provided for @checkInput.
  ///
  /// In en, this message translates to:
  /// **'Please check your input and try again.'**
  String get checkInput;

  /// No description provided for @validationFailed.
  ///
  /// In en, this message translates to:
  /// **'validation failed'**
  String get validationFailed;

  /// No description provided for @roleSuperAdminLabel.
  ///
  /// In en, this message translates to:
  /// **'super_admin'**
  String get roleSuperAdminLabel;

  /// No description provided for @roleAdminLabel.
  ///
  /// In en, this message translates to:
  /// **'admin'**
  String get roleAdminLabel;

  /// No description provided for @roleUserLabel.
  ///
  /// In en, this message translates to:
  /// **'user'**
  String get roleUserLabel;

  /// No description provided for @passwordLeaveBlankKeep.
  ///
  /// In en, this message translates to:
  /// **'Password (leave blank to keep)'**
  String get passwordLeaveBlankKeep;

  /// No description provided for @passwordMinEight.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordMinEight;

  /// No description provided for @unitNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Unit name is required'**
  String get unitNameRequired;

  /// No description provided for @unitCodeRequired.
  ///
  /// In en, this message translates to:
  /// **'Unit code is required'**
  String get unitCodeRequired;

  /// No description provided for @fieldConfiguration.
  ///
  /// In en, this message translates to:
  /// **'Field Configuration'**
  String get fieldConfiguration;

  /// No description provided for @checklistFieldName.
  ///
  /// In en, this message translates to:
  /// **'Field Name'**
  String get checklistFieldName;

  /// No description provided for @fieldKeySnakeCase.
  ///
  /// In en, this message translates to:
  /// **'Field Key (snake_case)'**
  String get fieldKeySnakeCase;

  /// No description provided for @fieldKeyInvalid.
  ///
  /// In en, this message translates to:
  /// **'Use lowercase letters, numbers, and underscores only'**
  String get fieldKeyInvalid;

  /// No description provided for @fieldNameRequiredGeneric.
  ///
  /// In en, this message translates to:
  /// **'Field name is required'**
  String get fieldNameRequiredGeneric;

  /// No description provided for @fieldKeyRequiredGeneric.
  ///
  /// In en, this message translates to:
  /// **'Field key is required'**
  String get fieldKeyRequiredGeneric;

  /// No description provided for @fieldType.
  ///
  /// In en, this message translates to:
  /// **'Field Type'**
  String get fieldType;

  /// No description provided for @optionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get optionsLabel;

  /// No description provided for @addOptionPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Add an option...'**
  String get addOptionPlaceholder;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @requiredFieldHint.
  ///
  /// In en, this message translates to:
  /// **'User must fill this field'**
  String get requiredFieldHint;

  /// No description provided for @activeFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Show this field in the checklist form'**
  String get activeFieldHint;

  /// No description provided for @createField.
  ///
  /// In en, this message translates to:
  /// **'Create Field'**
  String get createField;

  /// No description provided for @deleteFieldConfig.
  ///
  /// In en, this message translates to:
  /// **'Delete Field Config'**
  String get deleteFieldConfig;

  /// No description provided for @deleteFieldConfigConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this field config?'**
  String get deleteFieldConfigConfirm;

  /// No description provided for @fieldRequiredNamed.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} is required'**
  String fieldRequiredNamed(String fieldName);

  /// No description provided for @routeNotFound.
  ///
  /// In en, this message translates to:
  /// **'Route not found: {path}'**
  String routeNotFound(String path);

  /// No description provided for @deleteUnitConfirmFull.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this unit? This action cannot be undone.'**
  String get deleteUnitConfirmFull;

  /// No description provided for @phoneOptional.
  ///
  /// In en, this message translates to:
  /// **'Phone (optional)'**
  String get phoneOptional;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enterPassword;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['bn', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
