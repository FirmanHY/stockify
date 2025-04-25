import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/enums/role.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/users/presentation/presentation/user_controller.dart';
import 'package:stockify/features/users/presentation/ui/state/user_state.dart';
import 'package:stockify/features/users/presentation/ui/widget/create_user_bottomsheet.dart';
import 'package:stockify/features/users/presentation/ui/widget/edit_user_bottmsheet.dart';

class UsersScreen extends ConsumerStatefulWidget {
  const UsersScreen({super.key});

  @override
  ConsumerState<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends ConsumerState<UsersScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(userControllerProvider);
      if (state.users.isEmpty && !state.isLoading) {
        ref.read(userControllerProvider.notifier).loadInitialData();
      }
    });
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _setupListener();
    final state = ref.watch(userControllerProvider);
    final controller = ref.read(userControllerProvider.notifier);
    final role = ref.watch(authProvider.select((a) => a.role));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        actions: [
          if (role == Role.admin)
            AddButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder:
                      (context) => CreateUserBottomSheet(
                        onSubmit: (request) {
                          controller.createUser(request);
                        },
                      ),
                );
              },
            ),
          const SizedBox(width: kSmall),
        ],
      ),
      body: LoadingOverlay(
        isLoading: state.isCreating || state.isUpdating || state.isDeleting,
        message:
            state.isCreating
                ? "Menambahkan User"
                : state.isUpdating
                ? "Memperbarui User"
                : "Menghapus User",
        child: RefreshIndicator(
          color: AppColors.primaryColor,
          onRefresh: () => controller.refreshData(),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index == state.users.length && state.isLoading) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(kMedium),
                        child: EntityTileShimmer(),
                      ),
                    );
                  }
                  final user = state.users[index];
                  return Column(
                    children: [
                      EntityTile(
                        title: user.username,
                        subtitle: user.role,
                        actionIcon: Icons.edit,
                        leadingIcon: Icons.person,
                        onPressedActionIcon:
                            (role == Role.admin)
                                ? () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder:
                                        (context) => EditUserBottomSheet(
                                          initialUser: user,
                                          onSubmit: (request) {
                                            controller.updateUser(
                                              user.id,
                                              request,
                                            );
                                          },
                                        ),
                                  );
                                }
                                : null,
                      ),
                      if (index < state.users.length - 1)
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.borderColor,
                        ),
                    ],
                  );
                }, childCount: state.users.length + (state.isLoading ? 1 : 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setupListener() {
    ref.listen<UserState>(userControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);
      final notifier = ref.read(userControllerProvider.notifier);

      void handleError(
        String? currentError,
        String? prevError,
        VoidCallback clearError,
      ) {
        if (currentError != null && currentError != prevError) {
          snackBarService.showError(context, currentError);
          clearError();
        }
      }

      void handleSuccess(
        bool wasLoading,
        bool isLoading,
        String? error,
        String message,
      ) {
        if (wasLoading && !isLoading && error == null) {
          snackBarService.showSuccess(context, message);
        }
      }

      handleError(
        next.createError,
        prev?.createError,
        notifier.clearCreateError,
      );
      handleSuccess(
        prev?.isCreating == true,
        next.isCreating,
        next.createError,
        'User berhasil ditambahkan',
      );

      handleError(
        next.updateError,
        prev?.updateError,
        notifier.clearUpdateError,
      );
      handleSuccess(
        prev?.isUpdating == true,
        next.isUpdating,
        next.updateError,
        'User berhasil diperbarui',
      );

      handleError(
        next.deleteError,
        prev?.deleteError,
        notifier.clearDeleteError,
      );
      handleSuccess(
        prev?.isDeleting == true,
        next.isDeleting,
        next.deleteError,
        'User berhasil dihapus',
      );
    });
  }

  void _handleScroll() {
    final state = ref.read(userControllerProvider);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      if (!state.isLoading &&
          state.pagination != null &&
          state.currentPage < state.pagination!.totalPages) {
        _isLoadingMore = true;
        ref.read(userControllerProvider.notifier).loadMore().then((_) {
          _isLoadingMore = false;
        });
      }
    }
  }
}
