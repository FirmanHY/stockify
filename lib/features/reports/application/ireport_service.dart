import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/exception/failure.dart';

abstract interface class IReportService {
  Future<Result<String, Failure>> generateTransactionReport({
    required String type,
    required String startDate,
    required String endDate,
  });

  Future<Result<String, Failure>> generateItemReport({
    required String lowStockOnly,
  });
}
