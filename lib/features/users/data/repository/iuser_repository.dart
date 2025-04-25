import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';

abstract interface class IUserRepository {
  Future<ApiResponse<PaginatedResponse<UserResponse>>> getUsers({
    int? page,
    int? limit,
  });

  Future<ApiResponse<UserResponse>> createUser(CreateUserRequest request);

  Future<ApiResponse<UserResponse>> updateUser(
    String userId,
    UpdateUserRequest request,
  );

  Future<ApiResponse<void>> deleteUser(String userId);
}
