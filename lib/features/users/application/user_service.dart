import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/users/application/iuser_service.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';
import 'package:stockify/features/users/data/repository/iuser_repository.dart';
import 'package:stockify/features/users/data/repository/user_repository.dart';

final userServiceProvider = Provider.autoDispose<IUserService>((ref) {
  final repository = ref.watch(userRepositoryProvider);
  return UserService(repository);
});

class UserService implements IUserService {
  final IUserRepository _repository;

  UserService(this._repository);

  @override
  Future<Result<PaginatedResponse<UserResponse>, Failure>> getUsers({
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await _repository.getUsers(page: page, limit: limit);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<UserResponse, Failure>> createUser(
    CreateUserRequest request,
  ) async {
    try {
      final response = await _repository.createUser(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<UserResponse, Failure>> updateUser(
    String userId,
    UpdateUserRequest request,
  ) async {
    try {
      final response = await _repository.updateUser(userId, request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<void, Failure>> deleteUser(String userId) async {
    try {
      final response = await _repository.deleteUser(userId);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
