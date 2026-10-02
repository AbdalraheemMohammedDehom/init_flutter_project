import 'dart:developer';

import 'package:dio/dio.dart';

import '../enums/api_endpoint.dart';
import 'token_storge.dart';

class ApiClient {
  ApiClient._internal() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'apikey': kSupabaseAnonKey,
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final endpoint = options.extra['endpoint'] as ApiEndpoint?;

          if (endpoint != null && endpoint.requiresAuth) {
            final token = (await TokenStorage.instance.getToken())?.trim();
            if (token == null || token.isEmpty) {
              log('ApiClient auth request: ${endpoint.name}, token: no');
              handler.reject(
                DioException(
                  requestOptions: options,
                  error: 'لا يوجد توكن، يرجى تسجيل الدخول',
                  type: DioExceptionType.cancel,
                ),
              );
              return;
            }

            options.headers['Authorization'] = 'Bearer $token';
            log('ApiClient auth request: ${endpoint.name}, token: yes');
          }

          handler.next(options);
        },
        onError: (error, handler) {
          final endpoint =
              error.requestOptions.extra['endpoint'] as ApiEndpoint?;

          if (error.response?.statusCode == 401) {
            log(
              'ApiClient 401 from ${endpoint?.name ?? error.requestOptions.path}; token kept',
            );
          }

          handler.next(error);
        },
      ),
    );
  }

  static final ApiClient instance = ApiClient._internal();

  late final Dio _dio;

  Dio get dio => _dio;

  Future<Response<dynamic>> post(
    ApiEndpoint endpoint, {
    Map<String, dynamic>? body,
  }) {
    return _dio.post(
      endpoint.url,
      data: body,
      options: Options(extra: {'endpoint': endpoint}),
    );
  }

  Future<Response<dynamic>> get(
    ApiEndpoint endpoint, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get(
      endpoint.url,
      queryParameters: queryParameters,
      options: Options(extra: {'endpoint': endpoint}),
    );
  }
}
