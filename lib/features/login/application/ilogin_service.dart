import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/api_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';

abstract interface class ILoginService {
  Future<Result<ApiResponse<LoginData>, Failure>> login(
    LoginRequest loginRequest,
  );
}
