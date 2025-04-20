import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/master_data/data/dto/request/item_type_request.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';

abstract interface class IItemTypeRepository {
  Future<ApiResponse<PaginatedResponse<ItemTypeResponse>>> getItemTypes(
    ItemTypeRequest request,
  );
}
