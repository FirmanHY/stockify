import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';
import 'package:stockify/features/users/data/repository/iuser_repository.dart';
import 'package:stockify/features/users/data/source/remote/user_api.dart';

final userRepositoryProvider = Provider.autoDispose<IUserRepository>((ref) {
  final userApi = ref.watch(userApiProvider);
  return UserRepository(userApi);
});

class UserRepository with DioExceptionMapper implements IUserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  @override
  Future<ApiResponse<PaginatedResponse<UserResponse>>> getUsers({
    int? page,
    int? limit,
  }) async {
    try {
      return await _userApi.getUsers(page: page, limit: limit);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<UserResponse>> createUser(
    CreateUserRequest request,
  ) async {
    try {
      return await _userApi.createUser(request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<UserResponse>> updateUser(
    String userId,
    UpdateUserRequest request,
  ) async {
    try {
      return await _userApi.updateUser(userId, request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<void>> deleteUser(String userId) async {
    try {
      return await _userApi.deleteUser(userId);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
