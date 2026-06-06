import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _datasource;
  final SecureStorage _storage;

  AuthRepositoryImpl(this._datasource, this._storage);

  @override
  Future<Either<Failure, (String, UserEntity)>> login({
    required String email,
    required String password,
  }) async {
    try {
      final (token, user) = await _datasource.login(email: email, password: password);
      await _storage.saveToken(token);
      return Right((token, user));
    } on ValidationException catch (e) {
      return Left(ValidationFailure(e.message, e.errors));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _datasource.logout();
      await _storage.clearAll();
      return const Right(null);
    } catch (_) {
      await _storage.clearAll();
      return const Right(null);
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getMe() async {
    try {
      final user = await _datasource.getMe();
      return Right(user);
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
