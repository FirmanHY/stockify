import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/transactions/data/dto/request/transaction_list_request.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';
import 'package:stockify/features/transactions/data/repository/itransaction_repository.dart';
import 'package:stockify/features/transactions/data/source/remote/transaction_api.dart';

final transactionRepositoryProvider =
    Provider.autoDispose<ITransactionRepository>((ref) {
      final api = ref.watch(transactionApiProvider);
      return TransactionRepository(api);
    });

class TransactionRepository implements ITransactionRepository {
  final TransactionApi _api;

  TransactionRepository(this._api);

  @override
  Future<ApiResponse<PaginatedResponse<TransactionResponse>>> getTransactions(
    TransactionListRequest request,
  ) async {
    return await _api.getTransactions(request);
  }
}
