import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';

abstract interface class ITransactionService {
  Future<Result<PaginatedResponse<TransactionResponse>, Failure>>
  getTransactions({
    int page,
    int limit,
    String? search,
    DateTime? startDate,
    DateTime? endDate,
    String? typeFilter,
  });

  Future<Result<TransactionResponse, Failure>> createTransaction({
    required String itemId,
    required DateTime date,
    required int quantity,
    required TransactionType transactionType,
    String? description,
  });

  Future<Result<void, Failure>> deleteTransaction(String transactionId);
}
