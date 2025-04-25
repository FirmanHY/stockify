import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default([]) List<UserResponse> users,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(10) int limit,
    Pagination? pagination,
    @Default(false) bool isCreating,
    String? createError,
    @Default(false) bool isUpdating,
    String? updateError,
    @Default(false) bool isDeleting,
    String? deleteError,
  }) = _UserState;

  const UserState._();
}
