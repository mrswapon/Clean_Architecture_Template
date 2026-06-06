import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../constants/app_constants.dart';

class SecureStorage {
  final FlutterSecureStorage _storage;
  SecureStorage(this._storage);

  Future<void> saveToken(String token) =>
      _storage.write(key: AppConstants.tokenKey, value: token);

  Future<String?> getToken() =>
      _storage.read(key: AppConstants.tokenKey);

  Future<void> deleteToken() =>
      _storage.delete(key: AppConstants.tokenKey);

  Future<bool> hasToken() async =>
      (await getToken()) != null;

  Future<void> clearAll() => _storage.deleteAll();
}
