import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';

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
}
