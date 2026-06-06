import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_remote_datasource.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _datasource;
  ProfileRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final profile = await _datasource.getProfile();
      return Right(profile);
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile({
    String? name,
    String? phone,
  }) async {
    try {
      final profile = await _datasource.updateProfile(name: name, phone: phone);
      return Right(profile);
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
}
