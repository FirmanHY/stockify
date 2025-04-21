import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/master_data/application/item_type_service.dart';
import 'package:stockify/features/master_data/presentation/state/item_type_state.dart';

final itemTypeControllerProvider =
    StateNotifierProvider.autoDispose<ItemTypeController, ItemTypeState>(
      (ref) => ItemTypeController(ref),
    );

class ItemTypeController extends StateNotifier<ItemTypeState> {
  final Ref ref;
  Timer? _debounceTimer;
  final KeepAliveLink _keepAliveLink;

  ItemTypeController(this.ref)
    : _keepAliveLink = ref.keepAlive(),
      super(const ItemTypeState());

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _keepAliveLink.close();

    super.dispose();
  }

  Future<void> loadItemTypes({bool isLoadMore = false}) async {
    try {
      final pageToRequest = isLoadMore ? state.currentPage + 1 : 1;
      state = state.copyWith(isLoading: !isLoadMore, error: null);

      final result = await ref
          .read(itemTypeServiceProvider)
          .getItemTypes(
            page: pageToRequest,
            limit: state.limit,
            search: state.searchQuery,
          );

      result.when(
        (success) {
          state = state.copyWith(
            itemTypes:
                isLoadMore
                    ? [...state.itemTypes, ...(success.data ?? [])]
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

  Future<void> loadInitialData() async {
    state = state.copyWith(
      isInitialLoading: true,
      currentPage: 1,
      itemTypes: [],
    );
    await loadItemTypes();
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.pagination == null ||
        state.currentPage >= state.pagination!.totalPages) {
      return;
    }
    await loadItemTypes(isLoadMore: true);
  }

  Future<void> refreshData() async {
    state = state.copyWith(
      isInitialLoading: true,
      currentPage: 1,
      itemTypes: [],
    );
    await loadItemTypes();
  }

  void updateSearchQuery(String query) {
    final trimmedQuery = query.trim();
    state = state.copyWith(
      searchQuery: trimmedQuery,
      itemTypes: [],
      isLoading: true,
    );
    _debounceTimer?.cancel();
    if (trimmedQuery.isEmpty || trimmedQuery.length >= 3) {
      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        if (trimmedQuery.length >= 3) {
          loadItemTypes();
        } else if (trimmedQuery.isEmpty) {
          loadInitialData();
        }
      });
    } else {
      state = state.copyWith(currentPage: 1, error: null);
    }
  }

  Future<void> createItemType(String typeName) async {
    state = state.copyWith(isCreating: true, createError: null);
    final result = await ref
        .read(itemTypeServiceProvider)
        .createItemType(typeName);
    result.when(
      (success) {
        state = state.copyWith(
          isCreating: false,
          itemTypes: [success, ...state.itemTypes],
        );
      },
      (error) {
        state = state.copyWith(isCreating: false, createError: error.message);
      },
    );
  }

  Future<void> updateItemType(String id, String typeName) async {
    state = state.copyWith(isUpdating: true, updateError: null);
    final result = await ref
        .read(itemTypeServiceProvider)
        .updateItemType(id, typeName);
    result.when(
      (success) {
        state = state.copyWith(
          isUpdating: false,
          itemTypes:
              state.itemTypes
                  .map((item) => item.typeId == id ? success : item)
                  .toList(),
        );
      },
      (error) {
        state = state.copyWith(isUpdating: false, updateError: error.message);
      },
    );
  }

  Future<void> deleteItemType(String id) async {
    state = state.copyWith(isDeleting: true, deleteError: null);
    final result = await ref.read(itemTypeServiceProvider).deleteItemType(id);
    result.when(
      (success) {
        state = state.copyWith(
          isDeleting: false,
          itemTypes:
              state.itemTypes.where((item) => item.typeId != id).toList(),
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
}
