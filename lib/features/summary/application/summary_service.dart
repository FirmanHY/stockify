import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/features/summary/data/dto/summary_response.dart';
import 'package:stockify/features/summary/data/repository/isummary_repository.dart';

class SummaryService {
  final ISummaryRepository repo;

  SummaryService(this.repo);

  Future<ApiResponse<SummaryResponse>> getSummary() => repo.getSummary();
}
