import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

class UpdateProfileUseCase {
  final ProfileRepository _repository;
  UpdateProfileUseCase(this._repository);

  Future<Either<Failure, ProfileEntity>> call({
    String? name,
    String? phone,
  }) =>
      _repository.updateProfile(name: name, phone: phone);
}
