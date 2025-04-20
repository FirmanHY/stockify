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
}
