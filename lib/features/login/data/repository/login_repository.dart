import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';
import 'package:stockify/features/login/data/repository/ilogin_repository.dart';
import 'package:stockify/features/login/data/source/local/itoken_storage.dart';
import 'package:stockify/features/login/data/source/local/token_storage.dart';
import 'package:stockify/features/login/data/source/remote/signin_api.dart';

final loginRepositoryProvider = Provider.autoDispose<ILoginRepository>((ref) {
  final loginApi = ref.watch(signInApiProvider);
  final tokenStorage = ref.watch(tokenStorageProvider);

  return LoginRepository(loginApi, tokenStorage);
});

final class LoginRepository
    with DioExceptionMapper
    implements ILoginRepository {
  final SignInApi _signApi;
  final ITokenStorage _tokenStorage;

  LoginRepository(this._signApi, this._tokenStorage);

  @override
  Future<ApiResponse<LoginData>> login(LoginRequest loginRequest) async {
    try {
      // api call
      final response = await _signApi.signIn(loginRequest);
      // get access token and refresh token from response
      final accessToken = response.data.token;
      // store in secure storage
      await _tokenStorage.storeToken(accessToken);

      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        statusCode: 500,
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
