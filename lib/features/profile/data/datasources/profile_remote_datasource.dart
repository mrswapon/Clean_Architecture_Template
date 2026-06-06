import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<ProfileModel> updateProfile({String? name, String? phone});
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiClient _client;
  ProfileRemoteDataSourceImpl(this._client);

  @override
  Future<ProfileModel> getProfile() async {
    final response = await _client.get(ApiConstants.profile);
    return ProfileModel.fromJson(response.data['data']);
  }

  @override
  Future<ProfileModel> updateProfile({String? name, String? phone}) async {
    final response = await _client.put(
      ApiConstants.profile,
      data: {
        if (name != null) 'name': name,
        if (phone != null) 'phone': phone,
      },
    );
    return ProfileModel.fromJson(response.data['data']);
  }
}
