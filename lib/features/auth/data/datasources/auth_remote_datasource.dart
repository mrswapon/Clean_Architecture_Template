import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<(String token, UserModel user)> login({
    required String email,
    required String password,
  });
  Future<void> logout();
  Future<UserModel> getMe();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient _client;
  AuthRemoteDataSourceImpl(this._client);

  @override
  Future<(String token, UserModel user)> login({
    required String email,
    required String password,
  }) async {
    final response = await _client.post(
      ApiConstants.login,
      data: {'email': email, 'password': password},
    );
    final data  = response.data['data'];
    final token = data['token'] as String;
    final user  = UserModel.fromJson(data['user']);
    return (token, user);
  }

  @override
  Future<void> logout() async {
    await _client.post(ApiConstants.logout);
  }

  @override
  Future<UserModel> getMe() async {
    final response = await _client.get(ApiConstants.me);
    return UserModel.fromJson(response.data['data']);
  }
}
