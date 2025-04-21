import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/master_data/application/unit_service.dart';
import 'package:stockify/features/master_data/presentation/state/unit_state.dart';

final unitControllerProvider =
    StateNotifierProvider.autoDispose<UnitController, UnitState>(
      (ref) => UnitController(ref),
    );

class UnitController extends StateNotifier<UnitState> {
  final Ref ref;
  Timer? _debounceTimer;
  final KeepAliveLink _keepAliveLink;

  UnitController(this.ref)
    : _keepAliveLink = ref.keepAlive(),
      super(const UnitState());

  Future<void> loadUnits({bool isLoadMore = false}) async {
    try {
      final pageToRequest = isLoadMore ? state.currentPage + 1 : 1;
      state = state.copyWith(isLoading: !isLoadMore, error: null);

      final result = await ref
          .read(unitServiceProvider)
          .getUnits(
            page: pageToRequest,
            limit: state.limit,
            search: state.searchQuery,
          );

      result.when(
        (success) {
          state = state.copyWith(
            units:
                isLoadMore
                    ? [...state.units, ...(success.data ?? [])]
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
    state = state.copyWith(isInitialLoading: true, currentPage: 1, units: []);
    await loadUnits();
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.pagination == null ||
        state.currentPage >= state.pagination!.totalPages) {
      return;
    }
    await loadUnits(isLoadMore: true);
  }

  Future<void> refreshData() async {
    state = state.copyWith(isInitialLoading: true, currentPage: 1, units: []);
    await loadUnits();
  }

  void updateSearchQuery(String query) {
    final trimmedQuery = query.trim();
    state = state.copyWith(
      searchQuery: trimmedQuery,
      units: [],
      isLoading: true,
    );
    _debounceTimer?.cancel();
    if (trimmedQuery.isEmpty || trimmedQuery.length >= 3) {
      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        if (trimmedQuery.length >= 3) {
          loadUnits();
        } else if (trimmedQuery.isEmpty) {
          loadInitialData();
        }
      });
    } else {
      state = state.copyWith(currentPage: 1, error: null);
    }
  }

  Future<void> createUnit(String unitName) async {
    state = state.copyWith(isCreating: true, createError: null);
    final result = await ref.read(unitServiceProvider).createUnit(unitName);
    result.when(
      (success) {
        state = state.copyWith(
          isCreating: false,
          units: [success, ...state.units],
        );
      },
      (error) {
        state = state.copyWith(isCreating: false, createError: error.message);
      },
    );
  }

  Future<void> updateUnit(String id, String unitName) async {
    state = state.copyWith(isUpdating: true, updateError: null);
    final result = await ref.read(unitServiceProvider).updateUnit(id, unitName);
    result.when(
      (success) {
        state = state.copyWith(
          isUpdating: false,
          units:
              state.units
                  .map((unit) => unit.unitId == id ? success : unit)
                  .toList(),
        );
      },
      (error) {
        state = state.copyWith(isUpdating: false, updateError: error.message);
      },
    );
  }

  Future<void> deleteUnit(String id) async {
    state = state.copyWith(isDeleting: true, deleteError: null);
    final result = await ref.read(unitServiceProvider).deleteUnit(id);
    result.when(
      (success) {
        state = state.copyWith(
          isDeleting: false,
          units: state.units.where((unit) => unit.unitId != id).toList(),
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

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _keepAliveLink.close();
    super.dispose();
  }
}
