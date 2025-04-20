import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/master_data/data/dto/request/item_type_request.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/repository/iitem_type_repository.dart';
import 'package:stockify/features/master_data/data/source/remote/item_type_api.dart';

final itemTypeRepositoryProvider = Provider.autoDispose<IItemTypeRepository>((
  ref,
) {
  final itemTypeApi = ref.watch(itemTypeApiProvider);
  return ItemTypeRepository(itemTypeApi);
});

class ItemTypeRepository
    with DioExceptionMapper
    implements IItemTypeRepository {
  final ItemTypeApi _itemTypeApi;

  ItemTypeRepository(this._itemTypeApi);

  @override
  Future<ApiResponse<PaginatedResponse<ItemTypeResponse>>> getItemTypes(
    ItemTypeRequest request,
  ) async {
    try {
      return await _itemTypeApi.getItemTypes(request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
