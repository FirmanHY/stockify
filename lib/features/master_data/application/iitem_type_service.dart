import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';

abstract interface class IItemTypeService {
  Future<Result<PaginatedResponse<ItemTypeResponse>, Failure>> getItemTypes({
    int page,
    int limit,
    String? search,
  });

  Future<Result<ItemTypeResponse, Failure>> createItemType(String typeName);
  Future<Result<ItemTypeResponse, Failure>> updateItemType(
    String id,
    String typeName,
  );

  Future<Result<void, Failure>> deleteItemType(String id);
}
