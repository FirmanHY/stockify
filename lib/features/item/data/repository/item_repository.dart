import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/data/repository/iitem_repository.dart';
import 'package:stockify/features/item/data/source/remote/item_api.dart';

final itemRepositoryProvider = Provider.autoDispose<IItemRepository>((ref) {
  final itemApi = ref.watch(itemApiProvider);
  return ItemRepository(itemApi);
});

class ItemRepository with DioExceptionMapper implements IItemRepository {
  final ItemApi _itemApi;

  ItemRepository(this._itemApi);

  @override
  Future<ApiResponse<PaginatedResponse<ItemResponse>>> getItems(
    ItemRequest request,
  ) async {
    try {
      return await _itemApi.getItems(request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
