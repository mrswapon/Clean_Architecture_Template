import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/usecases/get_profile_usecase.dart';
import '../../domain/usecases/update_profile_usecase.dart';
import '../../../../core/errors/failure_message_mapper.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileUseCase    _getProfile;
  final UpdateProfileUseCase _updateProfile;

  ProfileCubit(this._getProfile, this._updateProfile) : super(ProfileInitial());

  Future<void> load() async {
    emit(ProfileLoading());
    final result = await _getProfile();
    result.fold(
      (failure) => emit(ProfileError(FailureMessageMapper.from(failure))),
      (profile) => emit(ProfileLoaded(profile)),
    );
  }

  Future<void> update({String? name, String? phone}) async {
    emit(ProfileLoading());
    final result = await _updateProfile(name: name, phone: phone);
    result.fold(
      (failure) => emit(ProfileError(FailureMessageMapper.from(failure))),
      (profile) => emit(ProfileLoaded(profile)),
    );
  }
}
