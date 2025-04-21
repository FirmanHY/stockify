import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/master_data/data/dto/request/create_unit_request.dart';
import 'package:stockify/features/master_data/data/dto/request/unit_request.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

part 'unit_api.g.dart';

final unitApiProvider = Provider.autoDispose<UnitApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return UnitApi(dio);
});

@RestApi()
abstract class UnitApi {
  factory UnitApi(Dio dio) => _UnitApi(dio);

  @GET(unitsEndPoint)
  Future<ApiResponse<PaginatedResponse<UnitResponse>>> getUnits(
    @Queries() UnitRequest request,
  );

  @POST(unitsEndPoint)
  Future<ApiResponse<UnitResponse>> createUnit(
    @Body() CreateUnitRequest request,
  );

  @PUT('$unitsEndPoint/{id}')
  Future<ApiResponse<UnitResponse>> updateUnit(
    @Path('id') String id,
    @Body() CreateUnitRequest request,
  );

  @DELETE('$unitsEndPoint/{id}')
  Future<ApiResponse<void>> deleteUnit(@Path('id') String id);
}
