import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/data/remote/network_service_interceptor.dart';

final networkServiceProvider = Provider<Dio>((ref) {
  final baseUrl = dotenv.env['BASE_URL'] ?? '';
  final options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 60),
  );
  final dio = Dio(options);
  final networkInterceptorProvider = ref.watch(
    networkServiceInterceptorProvider(dio),
  );
  dio.interceptors.add(networkInterceptorProvider);

  return dio;
});
