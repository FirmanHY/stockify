import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/summary/data/dto/summary_response.dart';
import 'package:stockify/features/summary/data/source/remote/summary_api.dart';

final summaryRepositoryProvider = Provider.autoDispose<SummaryRepository>((ref) {
  final dio = ref.watch(networkServiceProvider);
  final api = SummaryApi(dio);
  return SummaryRepository(api);
});

final summaryDataProvider = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(summaryRepositoryProvider);
  return repo.getSummary();
});

class SummaryRepository with DioExceptionMapper {
  final SummaryApi _api;

  SummaryRepository(this._api);

  Future<ApiResponse<SummaryResponse>> getSummary() async {
    try {
      return await _api.getSummary();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
