import 'package:dio/dio.dart';

abstract interface class IReportRepository {
  Future<ResponseBody> generateTransactionReport({
    required String type,
    required String startDate,
    required String endDate,
  });

  Future<ResponseBody> generateItemReport({required String lowStockOnly});
}
