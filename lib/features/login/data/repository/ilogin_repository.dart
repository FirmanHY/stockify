import 'package:stockify/common/dtos/api_response.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';

abstract interface class ILoginRepository {
  Future<ApiResponse<LoginData>> login(LoginRequest loginRequest);
}
