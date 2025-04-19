import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/api_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/login/application/ilogin_service.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';
import 'package:stockify/features/login/data/repository/ilogin_repository.dart';
import 'package:stockify/features/login/data/repository/login_repository.dart';

final loginServiceProvider = Provider.autoDispose<ILoginService>((ref) {
  final loginRepository = ref.watch(loginRepositoryProvider);

  return LoginService(loginRepository);
});

final class LoginService implements ILoginService {
  final ILoginRepository _loginRepository;

  LoginService(this._loginRepository);

  @override
  Future<Result<ApiResponse<LoginData>, Failure>> login(
    LoginRequest loginRequest,
  ) async {
    try {
      final response = await _loginRepository.login(loginRequest);
      return Success(response);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          statusCode: 500,
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
