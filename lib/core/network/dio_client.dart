import 'package:adeeb/core/network/api_endpoints.dart';
import 'package:dio/dio.dart';

class DioClient {
  DioClient({Dio? dio})
    : dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: ApiEndpoints.baseUrl,
              connectTimeout: const Duration(seconds: 12),
              receiveTimeout: const Duration(seconds: 12),
              sendTimeout: const Duration(seconds: 12),
              headers: const {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
              },
            ),
          );

  final Dio dio;
}
