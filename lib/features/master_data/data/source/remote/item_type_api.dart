import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/master_data/data/dto/request/create_item_type_request.dart';
import 'package:stockify/features/master_data/data/dto/request/item_type_request.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';

part 'item_type_api.g.dart';

final itemTypeApiProvider = Provider.autoDispose<ItemTypeApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ItemTypeApi(dio);
});

@RestApi()
abstract class ItemTypeApi {
  factory ItemTypeApi(Dio dio) => _ItemTypeApi(dio);

  @GET(itemTypesEndPoint)
  Future<ApiResponse<PaginatedResponse<ItemTypeResponse>>> getItemTypes(
    @Queries() ItemTypeRequest request,
  );

  @POST(itemTypesEndPoint)
  Future<ApiResponse<ItemTypeResponse>> createItemType(
    @Body() CreateItemTypeRequest request,
  );
  @PUT('$itemTypesEndPoint/{id}')
  Future<ApiResponse<ItemTypeResponse>> updateItemType(
    @Path('id') String id,
    @Body() CreateItemTypeRequest request,
  );

  @DELETE('$itemTypesEndPoint/{id}')
  Future<ApiResponse<void>> deleteItemType(@Path('id') String id);
}
