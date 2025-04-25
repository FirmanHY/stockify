import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/features/transactions/application/itransaction_service.dart';
import 'package:stockify/features/transactions/data/dto/request/transaction_list_request.dart';
import 'package:stockify/features/transactions/data/dto/request/create_transaction_request.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';
import 'package:stockify/features/transactions/data/repository/itransaction_repository.dart';
import 'package:stockify/features/transactions/data/repository/transaction_repository.dart';

final transactionServiceProvider = Provider.autoDispose<ITransactionService>((
  ref,
) {
  final repository = ref.watch(transactionRepositoryProvider);
  return TransactionService(repository);
});

class TransactionService implements ITransactionService {
  final ITransactionRepository _repository;

  TransactionService(this._repository);

  @override
  Future<Result<PaginatedResponse<TransactionResponse>, Failure>>
  getTransactions({
    int page = 1,
    int limit = 10,
    String? search,
    DateTime? startDate,
    DateTime? endDate,
    String? typeFilter,
  }) async {
    try {
      final request = TransactionListRequest(
        page: page,
        limit: limit,
        search: search,
        startDate: startDate?.toIso8601String().split('T')[0],
        endDate: endDate?.toIso8601String().split('T')[0],
        typeFilter: typeFilter,
      );
      final response = await _repository.getTransactions(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<TransactionResponse, Failure>> createTransaction({
    required String itemId,
    required DateTime date,
    required int quantity,
    required TransactionType transactionType,
    String? description,
  }) async {
    try {
      final request = CreateTransactionRequest(
        itemId: itemId,
        date: date.toUtc(),
        quantity: quantity,
        transactionType: transactionType.toValue(),
        description: description,
      );

      final response = await _repository.createTransaction(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<void, Failure>> deleteTransaction(String transactionId) async {
    try {
      final response = await _repository.deleteTransaction(transactionId);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
