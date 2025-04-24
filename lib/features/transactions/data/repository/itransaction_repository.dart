import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/transactions/data/dto/request/transaction_list_request.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';

abstract interface class ITransactionRepository {
  Future<ApiResponse<PaginatedResponse<TransactionResponse>>> getTransactions(
    TransactionListRequest request,
  );
}
