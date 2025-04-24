import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/item/data/dto/request/create_item_request.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/request/update_item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/data/repository/iitem_repository.dart';
import 'package:stockify/features/item/data/source/remote/item_api.dart';
import 'package:stockify/features/item/data/dto/response/low_stock_item_response.dart';

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

  @override
  Future<ApiResponse<ItemResponse>> createItem(
    CreateItemRequest request,
  ) async {
    try {
      final formData = request.toFormData();
      return await _itemApi.createItem(formData);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<ItemResponse>> getItemById(String itemId) async {
    try {
      return await _itemApi.getItemById(itemId);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<ItemResponse>> updateItem(
    String itemId,
    UpdateItemRequest request,
  ) async {
    try {
      final formData = request.toFormData();
      return await _itemApi.updateItem(itemId, formData);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<void>> deleteItem(String itemId) async {
    try {
      return await _itemApi.deleteItem(itemId);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<List<LowStockItemResponse>>> getLowStockItems() async {
    try {
      return await _itemApi.getLowStockItems();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
