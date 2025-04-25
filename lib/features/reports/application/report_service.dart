import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/reports/application/ireport_service.dart';
import 'package:stockify/features/reports/data/repository/ireport_repository.dart';
import 'package:stockify/features/reports/data/repository/report_repository.dart';

final reportServiceProvider = Provider.autoDispose<IReportService>((ref) {
  final repository = ref.watch(reportRepositoryProvider);
  return ReportService(repository);
});

class ReportService implements IReportService {
  final IReportRepository _repository;

  ReportService(this._repository);
  @override
  Future<Result<String, Failure>> generateTransactionReport({
    required String type,
    required String startDate,
    required String endDate,
  }) async {
    try {
      final response = await _repository.generateTransactionReport(
        type: type,
        startDate: startDate,
        endDate: endDate,
      );

      final bytes = await response.stream.fold<List<int>>(
        [],
        (prev, element) => prev..addAll(element),
      );

      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/transaction_report.xlsx';
      final file = File(filePath);
      await file.writeAsBytes(bytes);

      return Success(filePath);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<String, Failure>> generateItemReport({
    required String lowStockOnly,
  }) async {
    try {
      final response = await _repository.generateItemReport(
        lowStockOnly: lowStockOnly,
      );

      final bytes = await response.stream.fold<List<int>>(
        [],
        (prev, element) => prev..addAll(element),
      );

      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/item_report.xlsx';
      final file = File(filePath);
      await file.writeAsBytes(bytes);

      return Success(filePath);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
