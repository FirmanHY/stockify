import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';

abstract interface class IItemService {
  Future<Result<PaginatedResponse<ItemResponse>, Failure>> getItems({
    int page,
    int limit,
    String? search,
    bool? lowStockOnly,
  });
}
