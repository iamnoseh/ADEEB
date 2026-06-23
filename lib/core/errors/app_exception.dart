sealed class AppException implements Exception {
  const AppException(this.message, {this.code});

  final String message;
  final String? code;

  @override
  String toString() => code == null ? message : '$code: $message';
}

final class NetworkException extends AppException {
  const NetworkException(super.message, {super.code});
}

final class ServerException extends AppException {
  const ServerException(super.message, {super.code});
}

final class CacheException extends AppException {
  const CacheException(super.message, {super.code});
}
