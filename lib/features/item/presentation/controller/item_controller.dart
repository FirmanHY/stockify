import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/item/application/item_service.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/presentation/state/item_state.dart';

final itemControllerProvider =
    StateNotifierProvider.autoDispose<ItemController, ItemState>(
      (ref) => ItemController(ref),
    );

class ItemController extends StateNotifier<ItemState> {
  final Ref ref;
  Timer? _debounceTimer;
  final KeepAliveLink _keepAliveLink;

  ItemController(this.ref)
    : _keepAliveLink = ref.keepAlive(),
      super(const ItemState());

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _keepAliveLink.close();

    super.dispose();
  }

  Future<void> loadItems({bool isLoadMore = false}) async {
    try {
      final pageToRequest = isLoadMore ? state.currentPage + 1 : 1;
      state = state.copyWith(isLoading: !isLoadMore, error: null);

      final result = await ref
          .read(itemServiceProvider)
          .getItems(
            page: pageToRequest,
            limit: state.limit,
            search: state.searchQuery,
            lowStockOnly: state.lowStockOnly,
          );

      result.when(
        (success) {
          state = state.copyWith(
            items:
                isLoadMore
                    ? [...state.items, ...(success.data ?? [])]
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

  Future<void> deleteItem(String itemId) async {
    state = state.copyWith(isDeleting: true, deleteError: null);
    final result = await ref.read(itemServiceProvider).deleteItem(itemId);
    result.when(
      (success) {
        state = state.copyWith(
          items: state.items.where((item) => item.itemId != itemId).toList(),
          isDeleting: false,
        );
      },
      (error) {
        state = state.copyWith(isDeleting: false, deleteError: error.message);
      },
    );
  }

  void clearDeleteError() {
    state = state.copyWith(deleteError: null);
  }

  Future<void> loadInitialData() async {
    state = state.copyWith(
      isInitialLoading: true,
      currentPage: 1,
      searchQuery: null,
      lowStockOnly: null,
      items: [],
    );
    await loadItems();
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.pagination == null ||
        state.currentPage >= state.pagination!.totalPages) {
      return;
    }
    await loadItems(isLoadMore: true);
  }

  Future<void> refreshData() async {
    state = state.copyWith(isInitialLoading: true, currentPage: 1, items: []);
    await loadItems();
  }

  void updateSearchQuery(String query) {
    final trimmedQuery = query.trim();
    state = state.copyWith(
      searchQuery: trimmedQuery,
      items: [],
      isLoading: true,
    );
    _debounceTimer?.cancel();
    if (trimmedQuery.isEmpty || trimmedQuery.length >= 3) {
      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        if (trimmedQuery.length >= 3) {
          loadItems();
        } else if (trimmedQuery.isEmpty) {
          loadInitialData();
        }
      });
    } else {
      state = state.copyWith(currentPage: 1, error: null);
    }
  }

  void toggleLowStockFilter(bool selected) {
    state = state.copyWith(
      lowStockOnly: selected ? true : null,
      currentPage: 1,
      items: [],
    );
    loadItems();
  }

  void addNewItem(ItemResponse newItem) {
    state = state.copyWith(
      items: [newItem, ...state.items],
      pagination:
          state.pagination != null
              ? state.pagination!.copyWith(
                totalData: state.pagination!.totalData + 1,
              )
              : null,
    );
  }

  void updateExistingItem(ItemResponse updatedItem) {
    final updatedItems =
        state.items.map((item) {
          if (item.itemId == updatedItem.itemId) {
            return updatedItem;
          }
          return item;
        }).toList();
    state = state.copyWith(items: updatedItems);
  }
}
