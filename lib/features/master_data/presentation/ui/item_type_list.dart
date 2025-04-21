import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/dialog_service.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/master_data/presentation/controller/item_type_controller.dart';
import 'package:stockify/features/master_data/presentation/state/item_type_state.dart';
import 'package:stockify/features/master_data/presentation/ui/widget/create_master_data_bottomsheet.dart';

class ItemTypesList extends ConsumerStatefulWidget {
  const ItemTypesList({super.key});

  @override
  ConsumerState<ItemTypesList> createState() => _ItemTypesListState();
}

class _ItemTypesListState extends ConsumerState<ItemTypesList> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(itemTypeControllerProvider);
      if (state.itemTypes.isEmpty && !state.isLoading) {
        ref.read(itemTypeControllerProvider.notifier).loadInitialData();
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
    final state = ref.watch(itemTypeControllerProvider);
    final controller = ref.read(itemTypeControllerProvider.notifier);
    _setupListener();
    return LoadingOverlay(
      isLoading: state.isCreating || state.isUpdating || state.isDeleting,
      message: "Menambahkan Tipe Barang",
      child: RefreshIndicator(
        color: AppColors.primaryColor,
        onRefresh: () => controller.refreshData(),
        child: CustomScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: StickySearchBarDelegate(
                height: 140,
                child: Padding(
                  padding: const EdgeInsets.all(kMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Cari Tipe Barang'.hardcoded,
                          suffixIcon: const Icon(Icons.search),
                        ),
                        onChanged: controller.updateSearchQuery,
                      ),
                      const SizedBox(height: kSmall),
                      ElevatedButton.icon(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder:
                                (context) => CreateMasterDataBottomSheet(
                                  title: 'Tambah Tipe Barang',
                                  submitText: "Tambah",
                                  hintText: 'Masukkan nama tipe barang',
                                  minLength: 3,
                                  onSubmit: (name) {
                                    ref
                                        .read(
                                          itemTypeControllerProvider.notifier,
                                        )
                                        .createItemType(name);
                                  },
                                ),
                          );
                        },
                        icon: const Icon(Icons.add),
                        label: Text(
                          'Tipe Barang',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        style: Theme.of(
                          context,
                        ).elevatedButtonTheme.style?.copyWith(
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: kMedium),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            state.isLoading && state.itemTypes.isEmpty
                ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => const EntityTileShimmer(),
                    childCount: 6,
                  ),
                )
                : state.itemTypes.isEmpty
                ? SliverToBoxAdapter(
                  child:
                      state.error != null
                          ? ErrorStateWidget(
                            message: state.error!,
                            onRetry: controller.loadInitialData,
                            buttonText: 'Coba Lagi',
                          )
                          : state.searchQuery != null &&
                              state.searchQuery!.isNotEmpty &&
                              state.searchQuery!.length < 3
                          ? const EmptyStateWidget(
                            title: 'Pencarian tidak valid',
                            message:
                                'Masukkan minimal 3 karakter untuk mencari.',
                          )
                          : const EmptyStateWidget(
                            title: 'Tidak ada data',
                            message: 'Coba ubah kata kunci pencarian.',
                          ),
                )
                : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == state.itemTypes.length && state.isLoading) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(kMedium),
                            child: EntityTileShimmer(),
                          ),
                        );
                      }
                      final itemType = state.itemTypes[index];
                      return Column(
                        children: [
                          EntityTile(
                            title: itemType.typeName,
                            leadingIcon: Icons.category, // Icon buat item type

                            onPressedActionIcon: () {
                              showModalBottomSheet(
                                context: context,
                                builder:
                                    (context) => OptionBottomSheetWidget(
                                      onEdit: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder:
                                              (
                                                context,
                                              ) => CreateMasterDataBottomSheet(
                                                title: 'Edit Tipe Barang',
                                                hintText:
                                                    'Masukkan nama tipe barang',
                                                minLength: 3,
                                                initialValue: itemType.typeName,
                                                submitText: "Edit",
                                                onSubmit: (name) {
                                                  ref
                                                      .read(
                                                        itemTypeControllerProvider
                                                            .notifier,
                                                      )
                                                      .updateItemType(
                                                        itemType.typeId,
                                                        name,
                                                      );
                                                },
                                              ),
                                        );
                                      },
                                      onDelete: () async {
                                        Navigator.pop(context);
                                        final confirmed = await ref
                                            .read(dialogServiceProvider)
                                            .showConfirmationDialog(
                                              context: context,
                                              title: 'Hapus Tipe Barang',
                                              content:
                                                  'Apakah kamu yakin ingin menghapus tipe barang ini?',
                                              confirmText: 'Hapus',
                                              cancelText: 'Batal',
                                              confirmColor:
                                                  AppColors.dangerColor,
                                              confirmIcon: Icons.delete_forever,
                                            );

                                        if (confirmed == true) {
                                          ref
                                              .read(
                                                itemTypeControllerProvider
                                                    .notifier,
                                              )
                                              .deleteItemType(itemType.typeId);
                                        }
                                      },
                                    ),
                              );
                            },
                          ),
                          if (index < state.itemTypes.length - 1)
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: AppColors.borderColor,
                            ),
                        ],
                      );
                    },
                    childCount:
                        state.itemTypes.length + (state.isLoading ? 1 : 0),
                  ),
                ),
          ],
        ),
      ),
    );
  }

  void _setupListener() {
    ref.listen<ItemTypeState>(itemTypeControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);
      final notifier = ref.read(itemTypeControllerProvider.notifier);

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
        'Tipe barang berhasil ditambahkan',
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
        'Tipe barang berhasil di update',
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
        'Tipe barang berhasil di hapus',
      );
    });
  }

  void _handleScroll() {
    final state = ref.read(itemTypeControllerProvider);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      if (!state.isLoading &&
          state.pagination != null &&
          state.currentPage < state.pagination!.totalPages) {
        _isLoadingMore = true;
        ref.read(itemTypeControllerProvider.notifier).loadMore().then((_) {
          _isLoadingMore = false;
        });
      }
    }
  }
}
