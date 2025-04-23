import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/features/summary/data/dto/summary_response.dart';

abstract class ISummaryRepository {
  Future<ApiResponse<SummaryResponse>> getSummary();
}
