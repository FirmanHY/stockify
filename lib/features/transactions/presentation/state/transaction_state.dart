import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';

part 'transaction_state.freezed.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default([]) List<TransactionResponse> transactions,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(10) int limit,
    String? searchQuery,
    DateTime? startDate,
    DateTime? endDate,
    String? typeFilter,
    Pagination? pagination,
  }) = _TransactionState;
}
