import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/users/application/user_service.dart';
import 'package:stockify/features/users/data/dto/request/create_user_request.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/presentation/ui/state/user_state.dart';

final userControllerProvider =
    StateNotifierProvider.autoDispose<UserController, UserState>(
      (ref) => UserController(ref),
    );

class UserController extends StateNotifier<UserState> {
  final Ref ref;
  Timer? _debounceTimer;
  final KeepAliveLink _keepAliveLink;

  UserController(this.ref)
    : _keepAliveLink = ref.keepAlive(),
      super(const UserState());

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _keepAliveLink.close();
    super.dispose();
  }

  Future<void> loadUsers({bool isLoadMore = false}) async {
    try {
      final pageToRequest = isLoadMore ? state.currentPage + 1 : 1;
      state = state.copyWith(isLoading: !isLoadMore, error: null);

      final result = await ref
          .read(userServiceProvider)
          .getUsers(page: pageToRequest, limit: state.limit);

      result.when(
        (success) {
          state = state.copyWith(
            users:
                isLoadMore
                    ? [...state.users, ...(success.data ?? [])]
                    : success.data ?? [],
            pagination: success.pagination,
            currentPage: pageToRequest,
            isLoading: false,
            isInitialLoading: false,
            error: null,
          );
        },
        (error) {
          state = state.copyWith(
            error: error.message,
            isLoading: false,
            isInitialLoading: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
        isInitialLoading: false,
      );
    }
  }

  Future<void> createUser(CreateUserRequest request) async {
    state = state.copyWith(isCreating: true, createError: null);
    debugPrint('ini request ${request.toJson()}');
    final result = await ref.read(userServiceProvider).createUser(request);

    result.when(
      (success) {
        state = state.copyWith(
          users: [success, ...state.users],
          isCreating: false,
          pagination:
              state.pagination != null
                  ? state.pagination!.copyWith(
                    totalData: state.pagination!.totalData + 1,
                  )
                  : null,
        );
      },
      (error) {
        state = state.copyWith(isCreating: false, createError: error.message);
      },
    );
  }

  Future<void> updateUser(String userId, UpdateUserRequest request) async {
    state = state.copyWith(isUpdating: true, updateError: null);
    final result = await ref
        .read(userServiceProvider)
        .updateUser(userId, request);
    result.when(
      (success) {
        final updatedUsers =
            state.users.map((user) {
              if (user.id == userId) {
                return success;
              }
              return user;
            }).toList();
        state = state.copyWith(users: updatedUsers, isUpdating: false);
      },
      (error) {
        state = state.copyWith(isUpdating: false, updateError: error.message);
      },
    );
  }

  Future<void> deleteUser(String userId) async {
    state = state.copyWith(isDeleting: true, deleteError: null);
    final result = await ref.read(userServiceProvider).deleteUser(userId);
    result.when(
      (success) {
        state = state.copyWith(
          users: state.users.where((user) => user.id != userId).toList(),
          isDeleting: false,
        );
      },
      (error) {
        state = state.copyWith(isDeleting: false, deleteError: error.message);
      },
    );
  }

  void clearCreateError() {
    state = state.copyWith(createError: null);
  }

  void clearUpdateError() {
    state = state.copyWith(updateError: null);
  }

  void clearDeleteError() {
    state = state.copyWith(deleteError: null);
  }

  Future<void> loadInitialData() async {
    state = state.copyWith(isInitialLoading: true, currentPage: 1, users: []);
    await loadUsers();
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.pagination == null ||
        state.currentPage >= state.pagination!.totalPages) {
      return;
    }
    await loadUsers(isLoadMore: true);
  }

  Future<void> refreshData() async {
    state = state.copyWith(isInitialLoading: true, currentPage: 1, users: []);
    await loadUsers();
  }
}
