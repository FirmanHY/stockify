import '../data/dto/request/transaction_request.dart';
import '../data/dto/response/transaction_response.dart';
import '../data/repository/transaction_repository.dart';

class TransactionService {
  final TransactionRepository repo;

  TransactionService(this.repo);

  Future<void> create(TransactionRequest request) {
    return repo.createTransaction(request);
  }

  Future<List<TransactionResponse>> getBarangMasuk() async {
    final all = await repo.getAllTransactions();
    return all.where((t) => t.transactionType == 'in').toList();
  }

  Future<List<TransactionResponse>> getBarangKeluar() async {
    final all = await repo.getAllTransactions();
    return all.where((t) => t.transactionType == 'out').toList();
  }
}
