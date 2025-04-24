import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/dialog_service.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/item/presentation/controller/item_controller.dart';
import 'package:stockify/features/item/presentation/state/item_state.dart';

class ItemsScreen extends ConsumerStatefulWidget {
  const ItemsScreen({super.key});

  @override
  ConsumerState<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends ConsumerState<ItemsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(itemControllerProvider);
      if (state.items.isEmpty && !state.isLoading) {
        ref.read(itemControllerProvider.notifier).loadInitialData();
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
    final state = ref.watch(itemControllerProvider);
    final controller = ref.read(itemControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Barang"),
        actions: [
          ReportButton(onPressed: () {}),
          AddButton(onPressed: () => context.pushNamed(RouteName.createItem)),
          const SizedBox(width: kSmall),
        ],
      ),
      body: LoadingOverlay(
        isLoading: state.isDeleting,
        message: "Menghapus Barang",
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
                            labelText: 'Cari Barang'.hardcoded,
                            suffixIcon: const Icon(Icons.search),
                          ),
                          onChanged: controller.updateSearchQuery,
                        ),
                        const SizedBox(height: kSmall),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Filter By'.hardcoded,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(width: kSmall),
                            FilterChip(
                              label: Text(
                                'Stok Rendah',
                                style: const TextStyle(fontSize: kFontSizeXXS),
                              ),
                              selected: state.lowStockOnly ?? false,
                              onSelected: (selected) {
                                controller.toggleLowStockFilter(selected);
                              },
                              selectedColor: AppColors.primaryColor30,
                              checkmarkColor: AppColors.primaryColor,
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color:
                                      state.lowStockOnly ?? false
                                          ? AppColors.primaryColor
                                          : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              state.isLoading && state.items.isEmpty
                  ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const InventoryItemShimmer(),
                      childCount: 6,
                    ),
                  )
                  : state.items.isEmpty
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
                              message:
                                  'Coba ubah kata kunci pencarian atau filter.',
                            ),
                  )
                  : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index == state.items.length && state.isLoading) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(kMedium),
                              child: InventoryItemShimmer(),
                            ),
                          );
                        }
                        final item = state.items[index];
                        return Column(
                          children: [
                            InventoryItem(
                              imageUrl: item.image,
                              itemName: item.itemName,
                              quantityLabel: item.unitName,
                              categoryLabel: item.typeName,
                              stock: item.stock,
                              minStock: item.minimumStock,
                              onPressedActionIcon: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder:
                                      (context) => OptionBottomSheetWidget(
                                        onEdit: () {
                                          Navigator.pop(context);
                                          context.pushNamed(
                                            RouteName.editItem,
                                            pathParameters: {
                                              'itemId': item.itemId,
                                            },
                                          );
                                        },
                                        onDelete: () async {
                                          Navigator.pop(
                                            context,
                                          ); // Tutup bottom sheet
                                          final confirmed = await ref
                                              .read(dialogServiceProvider)
                                              .showConfirmationDialog(
                                                context: context,
                                                title: 'Hapus Barang',
                                                content:
                                                    'Apakah kamu yakin ingin menghapus barang ini?',
                                                confirmText: 'Hapus',
                                                cancelText: 'Batal',
                                                confirmColor:
                                                    AppColors.dangerColor,
                                                confirmIcon:
                                                    Icons.delete_forever,
                                              );
                                          if (confirmed == true) {
                                            ref
                                                .read(
                                                  itemControllerProvider
                                                      .notifier,
                                                )
                                                .deleteItem(item.itemId);
                                          }
                                        },
                                      ),
                                );
                              },
                              onTapTile: () {
                                debugPrint('jos gandos onTap tile');
                              },
                            ),
                            if (index < state.items.length - 1)
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: AppColors.borderColor,
                              ),
                          ],
                        );
                      },
                      childCount:
                          state.items.length + (state.isLoading ? 1 : 0),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  void _setupListener() {
    ref.listen<ItemState>(itemControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);
      final notifier = ref.read(itemControllerProvider.notifier);

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
        next.deleteError,
        prev?.deleteError,
        notifier.clearDeleteError,
      );
      handleSuccess(
        prev?.isDeleting == true,
        next.isDeleting,
        next.deleteError,
        'Barang berhasil dihapus',
      );
    });
  }

  void _handleScroll() {
    final state = ref.read(itemControllerProvider);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      if (!state.isLoading &&
          state.pagination != null &&
          state.currentPage < state.pagination!.totalPages) {
        _isLoadingMore = true;
        ref.read(itemControllerProvider.notifier).loadMore().then((_) {
          _isLoadingMore = false;
        });
      }
    }
  }
}
