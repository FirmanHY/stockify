import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/master_data/presentation/controller/item_type_controller.dart';

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

    return RefreshIndicator(
      color: AppColors.primaryColor,
      onRefresh: () => controller.refreshData(),
      child: CustomScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: StickySearchBarDelegate(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(kMedium),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Cari Tipe Barang'.hardcoded,
                    suffixIcon: const Icon(Icons.search),
                  ),
                  onChanged: controller.updateSearchQuery,
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
                          message: 'Masukkan minimal 3 karakter untuk mencari.',
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
                          onTap: () {},
                          onPressedActionIcon: () {},
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
    );
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
