import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/features/summary/data/dto/summary_response.dart';

part 'summary_api.g.dart';

final summaryApiProvider = Provider.autoDispose<SummaryApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return SummaryApi(dio);
});

@RestApi()
abstract class SummaryApi {
  factory SummaryApi(Dio dio) = _SummaryApi;

  @GET(summaryInventoryEndPoint)
  Future<ApiResponse<SummaryResponse>> getSummary();
}
