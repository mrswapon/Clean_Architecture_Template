class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? errors;
  const ServerException({required this.message, this.statusCode, this.errors});
}

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException({this.message = 'Unauthenticated. Please login.'});
}

class ForbiddenException implements Exception {
  final String message;
  const ForbiddenException({this.message = 'Access denied.'});
}

class NetworkException implements Exception {
  final String message;
  const NetworkException({this.message = 'No internet connection.'});
}

class CacheException implements Exception {
  final String message;
  const CacheException({this.message = 'Cache error.'});
}

class ValidationException implements Exception {
  final String message;
  final Map<String, dynamic> errors;
  const ValidationException({required this.message, required this.errors});
}
