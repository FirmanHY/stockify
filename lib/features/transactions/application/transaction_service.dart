import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/transactions/application/itransaction_service.dart';
import 'package:stockify/features/transactions/data/dto/request/transaction_list_request.dart';
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
        startDate:
            startDate?.toIso8601String().split('T')[0], // Format: "2006-01-02"
        endDate: endDate?.toIso8601String().split('T')[0],
        typeFilter: typeFilter,
      );
      final response = await _repository.getTransactions(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
