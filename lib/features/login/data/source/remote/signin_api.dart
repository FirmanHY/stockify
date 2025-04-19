import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';
part 'signin_api.g.dart';

final signInApiProvider = Provider.autoDispose<SignInApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return SignInApi(dio);
});

@RestApi()
abstract class SignInApi {
  factory SignInApi(Dio dio) => _SignInApi(dio);

  @POST(loginEndPoint)
  Future<ApiResponse<LoginData>> signIn(@Body() LoginRequest data);
}
