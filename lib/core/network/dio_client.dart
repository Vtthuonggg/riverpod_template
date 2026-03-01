import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/api_constants.dart';
import '../utils/logger.dart';

// Dio Provider
final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        headers: ApiConstants.defaultHeaders,
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
    );

    _dio.interceptors.add(_loggingInterceptor());
    _dio.interceptors.add(_errorInterceptor());
    // _dio.interceptors.add(_authInterceptor()); // Uncomment when auth ready
  }

  Dio get dio => _dio;

  // Logging Interceptor
  Interceptor _loggingInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        Logger.api(
          options.uri.toString(),
          method: options.method,
          data: options.data,
        );
        handler.next(options);
      },
      onResponse: (response, handler) {
        Logger.debug(
          '✅ Response [${response.statusCode}] ${response.requestOptions.uri}',
          tag: 'API',
        );
        handler.next(response);
      },
      onError: (error, handler) {
        Logger.error(
          '❌ Error [${error.response?.statusCode}] ${error.requestOptions.uri}',
          tag: 'API',
          error: error.message,
        );
        handler.next(error);
      },
    );
  }

  // Error Handling Interceptor
  Interceptor _errorInterceptor() {
    return InterceptorsWrapper(
      onError: (error, handler) {
        if (error.type == DioExceptionType.connectionTimeout ||
            error.type == DioExceptionType.receiveTimeout) {
          handler.reject(
            DioException(
              requestOptions: error.requestOptions,
              error:
                  'Connection timeout. Please check your internet connection.',
              type: error.type,
            ),
          );
        } else if (error.type == DioExceptionType.unknown) {
          handler.reject(
            DioException(
              requestOptions: error.requestOptions,
              error: 'No internet connection',
              type: error.type,
            ),
          );
        } else {
          handler.next(error);
        }
      },
    );
  }

  // Auth Interceptor (commented - implement when ready)
  // Interceptor _authInterceptor() {
  //   return InterceptorsWrapper(
  //     onRequest: (options, handler) async {
  //       final token = await _getToken();
  //       if (token != null) {
  //         options.headers['Authorization'] = 'Bearer $token';
  //       }
  //       handler.next(options);
  //     },
  //   );
  // }

  // GET Request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.get(path, queryParameters: queryParameters, options: options);
  }

  // POST Request
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  // PUT Request
  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  // DELETE Request
  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
