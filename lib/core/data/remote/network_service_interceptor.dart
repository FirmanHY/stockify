import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/data/remote/token/itoken_service.dart';
import 'package:stockify/core/data/remote/token/token_service.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final tokenService = ref.watch(tokenServiceProvider(dio));
      return NetworkServiceInterceptor(tokenService);
    });

class NetworkServiceInterceptor extends Interceptor {
  final ITokenService _tokenService;

  NetworkServiceInterceptor(this._tokenService);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenService.getAccessToken();

    if (options.data is! FormData) {
      options.headers['Content-Type'] = 'application/json';
    }
    options.headers['Accept'] = 'application/json';
    if (accessToken != null) {
      options.headers['Authorization'] = accessToken;
    }

    super.onRequest(options, handler);
  }
}
