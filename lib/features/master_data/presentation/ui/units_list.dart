import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/dialog_service.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/master_data/presentation/controller/unit_controller.dart';
import 'package:stockify/features/master_data/presentation/state/unit_state.dart';
import 'package:stockify/features/master_data/presentation/ui/widget/create_master_data_bottomsheet.dart';

class UnitsList extends ConsumerStatefulWidget {
  const UnitsList({super.key});

  @override
  ConsumerState<UnitsList> createState() => _UnitsListState();
}

class _UnitsListState extends ConsumerState<UnitsList> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(unitControllerProvider);
      if (state.units.isEmpty && !state.isLoading) {
        ref.read(unitControllerProvider.notifier).loadInitialData();
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
    final state = ref.watch(unitControllerProvider);
    final controller = ref.read(unitControllerProvider.notifier);
    _setupListener();
    return LoadingOverlay(
      isLoading: state.isCreating || state.isUpdating || state.isDeleting,
      message: "Menambahkan Satuan Barang",
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
                          labelText: 'Cari Satuan'.hardcoded,
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
                                  title: 'Tambah Satuan',
                                  hintText: 'Masukkan nama satuan',
                                  submitText: "Tambah",
                                  minLength: 2,
                                  onSubmit: (name) {
                                    ref
                                        .read(unitControllerProvider.notifier)
                                        .createUnit(name);
                                  },
                                ),
                          );
                        },
                        icon: const Icon(Icons.add),
                        label: Text(
                          'Tambah Satuan',
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
            state.isLoading && state.units.isEmpty
                ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => const SizedBox(
                      height: 60,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    childCount: 6,
                  ),
                )
                : state.units.isEmpty
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
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index == state.units.length && state.isLoading) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(kMedium),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    final unit = state.units[index];
                    return Column(
                      children: [
                        EntityTile(
                          title: unit.unitName,
                          leadingIcon: Icons.straighten, // Icon buat uni
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
                                              title: 'Edit Satuan Barang',
                                              hintText:
                                                  'Masukkan nama satuan barang',
                                              submitText: "Edit",
                                              minLength: 3,

                                              initialValue: unit.unitName,
                                              onSubmit: (name) {
                                                ref
                                                    .read(
                                                      unitControllerProvider
                                                          .notifier,
                                                    )
                                                    .updateUnit(
                                                      unit.unitId,
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
                                            title: 'Hapus Satuan Barang',
                                            content:
                                                'Apakah kamu yakin ingin menghapus satuan barang ini?',
                                            confirmText: 'Hapus',
                                            cancelText: 'Batal',
                                            confirmColor: AppColors.dangerColor,
                                            confirmIcon: Icons.delete_forever,
                                          );
                                      if (confirmed == true) {
                                        ref
                                            .read(
                                              unitControllerProvider.notifier,
                                            )
                                            .deleteUnit(unit.unitId);
                                      }
                                    },
                                  ),
                            );
                          },
                        ),
                        if (index < state.units.length - 1)
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: AppColors.borderColor,
                          ),
                      ],
                    );
                  }, childCount: state.units.length + (state.isLoading ? 1 : 0)),
                ),
          ],
        ),
      ),
    );
  }

  void _setupListener() {
    ref.listen<UnitState>(unitControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);
      final notifier = ref.read(unitControllerProvider.notifier);
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
    final state = ref.read(unitControllerProvider);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      if (!state.isLoading &&
          state.pagination != null &&
          state.currentPage < state.pagination!.totalPages) {
        _isLoadingMore = true;
        ref.read(unitControllerProvider.notifier).loadMore().then((_) {
          _isLoadingMore = false;
        });
      }
    }
  }
}
