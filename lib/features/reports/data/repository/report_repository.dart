import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/reports/data/repository/ireport_repository.dart';

final reportRepositoryProvider = Provider.autoDispose<IReportRepository>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ReportRepository(dio);
});

class ReportRepository implements IReportRepository {
  final Dio _dio;

  ReportRepository(this._dio);

  @override
  Future<ResponseBody> generateTransactionReport({
    required String type,
    required String startDate,
    required String endDate,
  }) async {
    final response = await _dio.get(
      reportTransactionEndPoint,
      queryParameters: {
        'type': type,
        'start_date': startDate,
        'end_date': endDate,
      },
      options: Options(responseType: ResponseType.stream),
    );
    return response.data as ResponseBody;
  }

  @override
  Future<ResponseBody> generateItemReport({
    required String lowStockOnly,
  }) async {
    final response = await _dio.get(
      reportItemEndPoint,
      queryParameters: {'low_stock_only': lowStockOnly},
      options: Options(responseType: ResponseType.stream),
    );
    return response.data as ResponseBody;
  }
}
