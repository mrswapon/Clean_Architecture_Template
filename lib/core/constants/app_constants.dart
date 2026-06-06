class AppConstants {
  AppConstants._();

  static const appName     = 'Farm Manager';
  static const tokenKey    = 'auth_token';
  static const userKey     = 'auth_user';
  static const roleAdmin   = 'admin';
  static const roleUser    = 'user';

  static const defaultPerPage = 15;

  // Status values
  static const statusGood     = 'good';
  static const statusWarning  = 'warning';
  static const statusCritical = 'critical';

  static const statusActive   = 'active';
  static const statusInactive = 'inactive';

  // Field types
  static const fieldText    = 'text';
  static const fieldNumber  = 'number';
  static const fieldBoolean = 'boolean';
  static const fieldSelect  = 'select';
}
