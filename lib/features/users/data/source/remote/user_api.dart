import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';

part 'user_api.g.dart';

final userApiProvider = Provider.autoDispose<UserApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return UserApi(dio);
});

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dio) => _UserApi(dio);

  @GET(usersEndPoint)
  Future<ApiResponse<PaginatedResponse<UserResponse>>> getUsers({
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @POST(usersEndPoint)
  Future<ApiResponse<UserResponse>> createUser(
    @Body() CreateUserRequest request,
  );

  @PUT('$usersEndPoint/{userId}')
  Future<ApiResponse<UserResponse>> updateUser(
    @Path('userId') String userId,
    @Body() UpdateUserRequest request,
  );

  @DELETE('$usersEndPoint/{userId}')
  Future<ApiResponse<void>> deleteUser(@Path('userId') String userId);
}
