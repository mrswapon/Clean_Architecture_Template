import '../l10n/app_strings.dart';
import 'exceptions.dart';
import 'failures.dart';

/// Maps thrown API exceptions to [Failure] for repositories.
class ExceptionMapper {
  ExceptionMapper._();

  static Failure toFailure(Object e) {
    if (e is ValidationException) {
      return ValidationFailure(e.message, e.errors);
    }
    if (e is NetworkException) {
      return NetworkFailure(e.message);
    }
    if (e is UnauthorizedException) {
      return UnauthorizedFailure(e.message);
    }
    if (e is ForbiddenException) {
      return ForbiddenFailure(e.message);
    }
    if (e is ServerException) {
      return ServerFailure(e.message);
    }
    if (e is CacheException) {
      return CacheFailure(e.message);
    }
    return ServerFailure(AppStrings.t.somethingWentWrong);
  }
}
