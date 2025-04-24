import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/item/data/dto/request/create_item_request.dart';
import 'package:stockify/features/item/data/dto/request/update_item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';

abstract interface class IItemService {
  Future<Result<PaginatedResponse<ItemResponse>, Failure>> getItems({
    int page,
    int limit,
    String? search,
    bool? lowStockOnly,
  });

  Future<Result<ItemResponse, Failure>> createItem(CreateItemRequest request);

  Future<Result<ItemResponse, Failure>> getItemById(String itemId);

  Future<Result<ItemResponse, Failure>> updateItem(
    String itemId,
    UpdateItemRequest request,
  );

  Future<Result<void, Failure>> deleteItem(String itemId);
}
