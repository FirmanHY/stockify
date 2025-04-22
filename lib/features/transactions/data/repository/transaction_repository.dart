import '../dto/request/transaction_request.dart';
import '../dto/response/transaction_response.dart';
import '../source/remote/transaction_api.dart';

class TransactionRepository {
  final TransactionApi api;

  TransactionRepository(this.api);

  Future<void> createTransaction(TransactionRequest request) {
    return api.create(request);
  }

  Future<List<TransactionResponse>> getAllTransactions() {
    return api.getAll();
  }
}
