import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';

abstract interface class IUserService {
  Future<Result<PaginatedResponse<UserResponse>, Failure>> getUsers({
    int page,
    int limit,
  });

  Future<Result<UserResponse, Failure>> createUser(CreateUserRequest request);

  Future<Result<UserResponse, Failure>> updateUser(
    String userId,
    UpdateUserRequest request,
  );

  Future<Result<void, Failure>> deleteUser(String userId);
}
