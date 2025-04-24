import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/item/data/dto/request/create_item_request.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/request/update_item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/data/dto/response/low_stock_item_response.dart';

abstract interface class IItemRepository {
  Future<ApiResponse<PaginatedResponse<ItemResponse>>> getItems(
    ItemRequest request,
  );

  Future<ApiResponse<ItemResponse>> createItem(CreateItemRequest request);

  Future<ApiResponse<ItemResponse>> getItemById(String itemId);

  Future<ApiResponse<ItemResponse>> updateItem(
    String itemId,
    UpdateItemRequest request,
  );

  Future<ApiResponse<void>> deleteItem(String itemId);

  Future<ApiResponse<List<LowStockItemResponse>>> getLowStockItems();
}
