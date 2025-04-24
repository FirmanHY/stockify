import 'package:dio/dio.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/features/summary/data/dto/summary_response.dart';
import 'package:stockify/features/summary/data/source/remote/summary_api.dart';
import 'isummary_repository.dart';

class SummaryRepository with DioExceptionMapper implements ISummaryRepository {
  final SummaryApi _api;

  SummaryRepository(this._api);

  @override
  Future<ApiResponse<SummaryResponse>> getSummary() async {
    try {
      return await _api.getSummary();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
