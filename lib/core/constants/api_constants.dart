class ApiConstants {
  ApiConstants._();

  /// Override: `flutter run --dart-define=BASE_URL=...`
  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://api.example.com/api/v1',
  );

  static const connectTimeout = Duration(seconds: 30);
  static const receiveTimeout = Duration(seconds: 30);

  // Auth
  static const login  = '/auth/login';
  static const logout = '/auth/logout';
  static const me     = '/auth/me';

  // Profile
  static const profile = '/profile';
}
