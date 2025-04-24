import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/transactions/application/transaction_service.dart';
import 'package:stockify/features/transactions/data/repository/transaction_repository.dart';
import 'package:stockify/features/transactions/data/source/remote/transaction_api.dart';

// Provider untuk TransactionApi
final transactionApiProvider = Provider<TransactionApi>((ref) {
  final dio = ref.watch(networkServiceProvider); 
  return TransactionApi(dio);
});

// Provider untuk Repository
final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  final api = ref.watch(transactionApiProvider);
  return TransactionRepository(api);
});

// Provider untuk Service
final transactionServiceProvider = Provider<TransactionService>((ref) {
  final repo = ref.watch(transactionRepositoryProvider);
  return TransactionService(repo);
});

// Provider barang masuk
final barangMasukProvider = FutureProvider((ref) {
  final service = ref.watch(transactionServiceProvider);
  return service.getBarangMasuk();
});

// Provider barang keluar
final barangKeluarProvider = FutureProvider((ref) {
  final service = ref.watch(transactionServiceProvider);
  return service.getBarangKeluar();
});
