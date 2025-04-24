import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/features/transactions/application/transaction_service.dart';
import 'package:stockify/features/transactions/presentation/state/transaction_state.dart';

final transactionControllerProvider =
    StateNotifierProvider.autoDispose<TransactionController, TransactionState>(
      (ref) => TransactionController(ref),
    );

class TransactionController extends StateNotifier<TransactionState> {
  final Ref ref;
  Timer? _debounceTimer;
  final KeepAliveLink _keepAliveLink;

  TransactionController(this.ref)
    : _keepAliveLink = ref.keepAlive(),
      super(const TransactionState());

  Future<void> loadTransactions({bool isLoadMore = false}) async {
    try {
      final pageToRequest = isLoadMore ? state.currentPage + 1 : 1;
      state = state.copyWith(isLoading: !isLoadMore, error: null);

      final result = await ref
          .read(transactionServiceProvider)
          .getTransactions(
            page: pageToRequest,
            limit: state.limit,
            search: state.searchQuery,
            startDate: state.startDate,
            endDate: state.endDate,
            typeFilter: state.typeFilter,
          );

      result.when(
        (success) {
          state = state.copyWith(
            transactions:
                isLoadMore
                    ? [...state.transactions, ...(success.data ?? [])]
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
      searchQuery: null,
      startDate: null,
      endDate: null,
      typeFilter: TransactionType.IN.toValue(),
      transactions: [],
    );
    await loadTransactions();
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.pagination == null ||
        state.currentPage >= state.pagination!.totalPages) {
      return;
    }
    await loadTransactions(isLoadMore: true);
  }

  Future<void> refreshData() async {
    state = state.copyWith(
      isInitialLoading: true,
      currentPage: 1,
      transactions: [],
    );
    await loadTransactions();
  }

  void updateSearchQuery(String query) {
    final trimmedQuery = query.trim();
    state = state.copyWith(
      searchQuery: trimmedQuery,
      transactions: [],
      isLoading: true,
    );
    _debounceTimer?.cancel();
    if (trimmedQuery.isEmpty || trimmedQuery.length >= 3) {
      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        if (trimmedQuery.length >= 3) {
          loadTransactions();
        } else if (trimmedQuery.isEmpty) {
          loadInitialData();
        }
      });
    } else {
      state = state.copyWith(currentPage: 1, error: null);
    }
  }

  void updateDateRange(DateTime? start, DateTime? end) {
    state = state.copyWith(
      startDate: start,
      endDate: end,
      currentPage: 1,
      transactions: [],
    );
    loadTransactions();
  }

  void updateTypeFilter(String? type) {
    state = state.copyWith(typeFilter: type, currentPage: 1, transactions: []);
    loadTransactions();
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _keepAliveLink.close();
    super.dispose();
  }
}
