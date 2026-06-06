import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/usecases/get_me_usecase.dart';
import '../../../../core/errors/failure_message_mapper.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase  _login;
  final LogoutUseCase _logout;
  final GetMeUseCase  _getMe;

  AuthCubit(this._login, this._logout, this._getMe) : super(AuthInitial());

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    final result = await _login(email: email, password: password);
    result.fold(
      (failure) => emit(AuthError(FailureMessageMapper.from(failure))),
      (data) {
        final (_, user) = data;
        emit(AuthAuthenticated(user));
      },
    );
  }

  Future<void> logout() async {
    await _logout();
    emit(AuthUnauthenticated());
  }

  Future<void> checkAuth() async {
    emit(AuthLoading());
    final result = await _getMe();
    result.fold(
      (_) => emit(AuthUnauthenticated()),
      (user) => emit(AuthAuthenticated(user)),
    );
  }
}
