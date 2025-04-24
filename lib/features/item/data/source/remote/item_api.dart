import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/data/dto/response/low_stock_item_response.dart';

part 'item_api.g.dart';

final itemApiProvider = Provider.autoDispose<ItemApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ItemApi(dio);
});

@RestApi()
abstract class ItemApi {
  factory ItemApi(Dio dio) => _ItemApi(dio);

  @GET(itemsEndPoint)
  Future<ApiResponse<PaginatedResponse<ItemResponse>>> getItems(
    @Queries() ItemRequest request,
  );

  @POST(itemsEndPoint)
  @MultiPart()
  Future<ApiResponse<ItemResponse>> createItem(@Body() FormData formData);

  @GET('$itemsEndPoint/{itemId}')
  Future<ApiResponse<ItemResponse>> getItemById(@Path('itemId') String itemId);

  @PUT('$itemsEndPoint/{itemId}')
  @MultiPart()
  Future<ApiResponse<ItemResponse>> updateItem(
    @Path('itemId') String itemId,
    @Body() FormData formData,
  );

  @DELETE('$itemsEndPoint/{itemId}')
  Future<ApiResponse<void>> deleteItem(@Path('itemId') String itemId);

  @GET('$itemsEndPoint/low-stock')
  Future<ApiResponse<List<LowStockItemResponse>>> getLowStockItems();
}
